`timescale 1ns / 1ps

module calculating #(parameter FFT_SIZE = 8, parameter FFT_SIZE_LOG = 3, parameter WIDTH = 18, parameter DECIMAL = 10)(
    input clk,
    input in_start,
    output reg in_ready,
    output reg out_start,
    input out_ready,
    input [(FFT_SIZE*WIDTH)-1:0] data_in_R,
    input [(FFT_SIZE*WIDTH)-1:0] data_in_I,
    output reg [(FFT_SIZE*WIDTH)-1:0] data_out_R,
    output reg [(FFT_SIZE*WIDTH)-1:0] data_out_I
    );
    
localparam PI = 3.14159265359;
integer i, k, j;  
reg signed [WIDTH-1:0] twiddleI[0:FFT_SIZE-2], twiddleQ[0:FFT_SIZE-2]; //I and Q twiddles
reg [7:0] partialFftSizeBit; //partial FFT size bit shift = r, where 2**r=N
wire [FFT_SIZE_LOG+1:0] partialFftSize; //partial FFT size (N)
wire [FFT_SIZE_LOG-1:0] partialFftSizeHalved, partialFftSizeHalvedMask; //partial FFT size / 2 and partial (FFT size / 2) - 1
assign partialFftSize = 1 << partialFftSizeBit;
assign partialFftSizeHalved = partialFftSize >> 1;
assign partialFftSizeHalvedMask = partialFftSizeHalved - 1;

reg signed [WIDTH-1:0] but1I[0:FFT_SIZE/2-1], but1Q[0:FFT_SIZE/2-1], but2I[0:FFT_SIZE/2-1], but2Q[0:FFT_SIZE/2-1]; //butterfly inputs
reg signed [WIDTH-1:0] butTwiddleI[0:FFT_SIZE/2-1], butTwiddleQ[0:FFT_SIZE/2-1];
wire signed [WIDTH-1:0] but1I_out[0:FFT_SIZE/2-1], but1Q_out[0:FFT_SIZE/2-1], but2I_out[0:FFT_SIZE/2-1], but2Q_out[0:FFT_SIZE/2-1]; //butterfly outputs
reg butterflyStart, butterflyStarted; //butterfly start signal and previous state
wire butterflyReady[0:FFT_SIZE/2-1]; //butterfly ready output
reg butterflyPreviousReady; //previous butterfly ready state
reg [FFT_SIZE_LOG:0] inputIdx;

reg [(FFT_SIZE*WIDTH)-1:0] dataR;
reg [(FFT_SIZE*WIDTH)-1:0] dataI;

reg started, buffer_free, previous_in_start;

genvar m;
generate
    for(m = 0; m < (FFT_SIZE / 2); m = m + 1) begin : butterfly_generator
        butterfly #(.WIDTH(WIDTH), .DECIMAL(DECIMAL), .MAX_FFT_SIZE(FFT_SIZE), .MAX_FFT_SIZE_LOG(FFT_SIZE_LOG))
            butterfly(clk, butterflyStart, butterflyReady[m], but1I[m], but1Q[m], but2I[m], but2Q[m], 
            butTwiddleI[m], butTwiddleQ[m], but1I_out[m], but1Q_out[m], but2I_out[m], but2Q_out[m]);
    end
endgenerate  

initial begin
    partialFftSizeBit = 1;
    previous_in_start = 0;
    buffer_free = 1;
    started = 0;
    in_ready = 1;
    out_start = 0;
    butterflyStart = 1'b0;
    butterflyStarted = 1'b0;
    butterflyPreviousReady = 1'b0;
    k = 0;
    for(i = 2; i <= FFT_SIZE; i = i << 1) begin
        for(j = 0; j < (i / 2); j = j + 1) begin
            twiddleI[k] = $cos(2.0 * PI * j / i) * (2**DECIMAL);
            twiddleQ[k] = -$sin(2.0 * PI * j / i) * (2**DECIMAL);
            k = k + 1;
        end
    end
end
 
    
always @(posedge clk)
begin
    //check if buffers are not free, that is, we are waiting for the next block to become free
    if(buffer_free == 0) begin
        //if buffers are not free and the next block is ready, then shift data out
        if(out_ready) begin
            data_out_R <= dataR;
            data_out_I <= dataI;
            out_start <= 1;
            in_ready <= 1;
            buffer_free <= 1;
         end
    end
    else if(in_start && !previous_in_start) begin //if buffers are free and there is a start request
        dataR = data_in_R;
        dataI = data_in_I;
        partialFftSizeBit <= 1;
        in_ready = 0;
        started <= 1;
        out_start <= 0;
    end
    
    if(started) begin
        if(butterflyStarted == 1'b0)
            begin
                    
            //loop for all butterflies
            for(i = 0; i < (FFT_SIZE / 2); i = i + 1) 
            begin
                //assume n is the partial FFT size and i is the butterfly index (starting from 0)
                //then the input shift within each substage is i % (n / 2), so basically we wrap the butterfly index around
                //also, there is an additional shift depended on current substage
                //this shift is given as (i / (n / 2)) * n, because there are n/2 butterflies in each substage
                //look at the butterfly diagram to understand it better
                //since n is always a power of 2, the code is optimized to use bit manipulation instead of integer arithmetics
                inputIdx = (i & partialFftSizeHalvedMask) + ((i >> (partialFftSizeBit - 1)) << partialFftSizeBit);
                            
                but1I[i] <= dataR[(inputIdx*WIDTH)+:WIDTH];
                but1Q[i] <= dataI[(inputIdx*WIDTH)+:WIDTH];
                but2I[i] <= dataR[((inputIdx + partialFftSizeHalved)*WIDTH)+:WIDTH];
                but2Q[i] <= dataI[((inputIdx + partialFftSizeHalved)*WIDTH)+:WIDTH];
                            
                butTwiddleI[i] <= twiddleI[partialFftSizeHalvedMask + (i & partialFftSizeHalvedMask)];
                butTwiddleQ[i] <= twiddleQ[partialFftSizeHalvedMask + (i & partialFftSizeHalvedMask)];
            end
                      
                butterflyStart <= 1'b1;
                butterflyStarted <= 1'b1;
       end
       else if((butterflyReady[0] == 1'b1) && (butterflyPreviousReady == 1'b0)) //butterflyStarted == 1 and butterflyReady = 1 and butterflyPreviousReady = 0
            begin
                butterflyStart <= 1'b0;
                butterflyStarted <= 1'b0;            
                       
                //loop for all butterflies
                for(i = 0; i < (FFT_SIZE / 2); i = i + 1) 
                begin
                    inputIdx = (i & partialFftSizeHalvedMask) + ((i >> (partialFftSizeBit - 1)) << partialFftSizeBit);
                    
                    dataR[(inputIdx*WIDTH)+:WIDTH] <= but1I_out[i];
                    dataI[(inputIdx*WIDTH)+:WIDTH] <= but1Q_out[i];
                    dataR[((inputIdx + partialFftSizeHalved)*WIDTH)+:WIDTH] <= but2I_out[i];
                    dataI[((inputIdx + partialFftSizeHalved)*WIDTH)+:WIDTH] <= but2Q_out[i];
                end
                    
                partialFftSizeBit = partialFftSizeBit + 1;
                if(partialFftSizeBit > FFT_SIZE_LOG) begin
                    started <= 0;
                    buffer_free <= 0;
                end
       end
       butterflyPreviousReady <= butterflyReady[0];
   end

   previous_in_start <= in_start;

   
end    
    
endmodule
