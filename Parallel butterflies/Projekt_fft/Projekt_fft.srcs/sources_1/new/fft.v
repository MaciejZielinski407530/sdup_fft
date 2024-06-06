`timescale 1ns / 1ps


module fft #(parameter FFT_SIZE = 8, parameter FFT_SIZE_LOG = 3, parameter WIDTH = 18, parameter DECIMAL = 10)(
input clk, 
input reset, 
input start, 
input data_en,
output reg ready, 
input signed [(WIDTH)-1:0] data_in_R,
input signed [(WIDTH)-1:0] data_in_I, 
output reg signed [(WIDTH)-1:0] data_out_R,
output reg signed [(WIDTH)-1:0] data_out_I
);
localparam PI = 3.14159265359;

reg lastStartState, last_data_en_state = 0;
reg [3:0] state; //current coprocessor state
localparam IDLE = 0, CLOCKING_IN = 1, CALCULATING = 2, CLOCKING_OUT = 3;
reg [FFT_SIZE_LOG-1:0] idx; //index when clocking samples in 
wire [FFT_SIZE_LOG-1:0] idxreversed; //bit-reversed index input
reg [FFT_SIZE_LOG:0] outIdx; //index when clocking samples out
reg signed [WIDTH-1:0] dataI[0:FFT_SIZE-1], dataQ[0:FFT_SIZE-1]; //data buffer
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

reverse #(FFT_SIZE_LOG) reverser(idx, idxreversed); //bit reverser instance

genvar m;
generate
    for(m = 0; m < (FFT_SIZE / 2); m = m + 1) begin : butterfly_generator
        butterfly #(.WIDTH(WIDTH), .DECIMAL(DECIMAL), .MAX_FFT_SIZE(FFT_SIZE), .MAX_FFT_SIZE_LOG(FFT_SIZE_LOG))
            butterfly(clk, butterflyStart, butterflyReady[m], but1I[m], but1Q[m], but2I[m], but2Q[m], 
            butTwiddleI[m], butTwiddleQ[m], but1I_out[m], but1Q_out[m], but2I_out[m], but2Q_out[m]);
    end
endgenerate


//calculate twiddles
integer i, j, k;
initial begin
    state = IDLE;
    butterflyStart = 1'b0;
    butterflyStarted = 1'b0;
    butterflyPreviousReady = 1'b0;
    lastStartState = 1'b0;
    ready = 1'b0;
    k = 0;
    for(i = 2; i <= FFT_SIZE; i = i << 1) begin
        for(j = 0; j < (i / 2); j = j + 1) begin
            twiddleI[k] = $cos(2.0 * PI * j / i) * (2**DECIMAL);
            twiddleQ[k] = -$sin(2.0 * PI * j / i) * (2**DECIMAL);
            k = k + 1;
        end
    end
end

//internal operations on clock edge
always @(posedge clk)
begin
    if(reset == 1'b1)begin
        state <= IDLE;
        ready <= 0;
        idx <= 0;
    end
    case(state)
        IDLE: begin
            idx <= 0;
            if((start == 1'b1) && (lastStartState == 1'b0))
            begin
                ready <= 1'b0;
                state <= CLOCKING_IN;
            end
        end
        CLOCKING_IN: begin
            if(data_en == 1'b0)
                   last_data_en_state = 1'b0;
            if(data_en == 1'b1 && last_data_en_state ==1'b0)begin
                   last_data_en_state = 1'b1; 
                   dataI[idxreversed] = data_in_R;
                   dataQ[idxreversed] = data_in_I;
                   if(idx == FFT_SIZE - 1)
                   begin
                        state <= CALCULATING;
                        partialFftSizeBit <= 1;
                   end
                   else
                        idx = idx + 1;
                end
               end
        CALCULATING: begin
            //actual FFT calculation 
            
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
                    
                    but1I[i] <= dataI[inputIdx];
                    but1Q[i] <= dataQ[inputIdx];
                    but2I[i] <= dataI[inputIdx + partialFftSizeHalved];
                    but2Q[i] <= dataQ[inputIdx + partialFftSizeHalved];
                    
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
                
                    dataI[inputIdx] <= but1I_out[i];
                    dataQ[inputIdx] <= but1Q_out[i];
                    dataI[inputIdx + partialFftSizeHalved] <= but2I_out[i];
                    dataQ[inputIdx + partialFftSizeHalved] <= but2Q_out[i];
                end
                
                partialFftSizeBit = partialFftSizeBit + 1;
                if(partialFftSizeBit > FFT_SIZE_LOG) begin
                    ready <= 1;
                    outIdx <= 0;                   
                    state <= CLOCKING_OUT;
                 end
             end
             butterflyPreviousReady <= butterflyReady[0];
        end
        CLOCKING_OUT: begin
            if(data_en == 1'b0)
               last_data_en_state = 1'b0;
            if(data_en == 1'b1 && last_data_en_state ==1'b0)begin
               last_data_en_state = 1'b1; 
               data_out_R = dataI[outIdx];
               data_out_I = dataQ[outIdx];
               
               if(outIdx == (FFT_SIZE - 1)) begin
                    state <= IDLE;
               end
               else
                    outIdx = outIdx + 1; 
              end
        end
    endcase
    lastStartState <= start;
end

endmodule
