
`timescale 1 ns / 1 ps

	module fft_dma_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXIS
		parameter integer C_S00_AXIS_TDATA_WIDTH	= 32,

		// Parameters of Axi Master Bus Interface M00_AXIS
		parameter integer C_M00_AXIS_TDATA_WIDTH	= 32,
		parameter integer C_M00_AXIS_START_COUNT	= 32
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface S00_AXIS
		input wire  s00_axis_aclk,
		input wire  s00_axis_aresetn,
		output wire  s00_axis_tready,
		input wire [C_S00_AXIS_TDATA_WIDTH-1 : 0] s00_axis_tdata,
		input wire [(C_S00_AXIS_TDATA_WIDTH/8)-1 : 0] s00_axis_tstrb,
		input wire  s00_axis_tlast,
		input wire  s00_axis_tvalid,

		// Ports of Axi Master Bus Interface M00_AXIS
		input wire  m00_axis_aclk,
		input wire  m00_axis_aresetn,
		output wire  m00_axis_tvalid,
		output wire [C_M00_AXIS_TDATA_WIDTH-1 : 0] m00_axis_tdata,
		output wire [(C_M00_AXIS_TDATA_WIDTH/8)-1 : 0] m00_axis_tstrb,
		output wire  m00_axis_tlast,
		input wire  m00_axis_tready
	);
// Instantiation of Axi Bus Interface S00_AXIS
//	fft_dma_v1_0_S00_AXIS # ( 
//		.C_S_AXIS_TDATA_WIDTH(C_S00_AXIS_TDATA_WIDTH)
//	) fft_dma_v1_0_S00_AXIS_inst (
//		.S_AXIS_ACLK(s00_axis_aclk),
//		.S_AXIS_ARESETN(s00_axis_aresetn),
//		.S_AXIS_TREADY(s00_axis_tready),
//		.S_AXIS_TDATA(s00_axis_tdata),
//		.S_AXIS_TSTRB(s00_axis_tstrb),
//		.S_AXIS_TLAST(s00_axis_tlast),
//		.S_AXIS_TVALID(s00_axis_tvalid)
//	);

//// Instantiation of Axi Bus Interface M00_AXIS
//	fft_dma_v1_0_M00_AXIS # ( 
//		.C_M_AXIS_TDATA_WIDTH(C_M00_AXIS_TDATA_WIDTH),
//		.C_M_START_COUNT(C_M00_AXIS_START_COUNT)
//	) fft_dma_v1_0_M00_AXIS_inst (
//		.M_AXIS_ACLK(m00_axis_aclk),
//		.M_AXIS_ARESETN(m00_axis_aresetn),
//		.M_AXIS_TVALID(m00_axis_tvalid),
//		.M_AXIS_TDATA(m00_axis_tdata),
//		.M_AXIS_TSTRB(m00_axis_tstrb),
//		.M_AXIS_TLAST(m00_axis_tlast),
//		.M_AXIS_TREADY(m00_axis_tready)
//	);

	// Add user logic here
    assign m00_axis_tstrb = {C_M00_AXIS_TDATA_WIDTH/8{1'b1}};
    
    fft #(.FFT_SIZE(8), .FFT_SIZE_LOG(3), .WIDTH(16), .DECIMAL(6)) 
        fft_inst(
            s00_axis_aclk,
            s00_axis_tvalid,
            s00_axis_tready,
            s00_axis_tlast,
            m00_axis_tvalid,
            m00_axis_tready,
            m00_axis_tlast,
            s00_axis_tdata[15:0],
            s00_axis_tdata[31:16],
            m00_axis_tdata[15:0],
            m00_axis_tdata[31:16]
        );
	// User logic ends

	endmodule


module fft #(parameter FFT_SIZE = 8, parameter FFT_SIZE_LOG = 3, parameter WIDTH = 18, parameter DECIMAL = 10)(
    input clk, 
    input in_tvalid,               // tvalid for DMA->FFT
    output in_tready,       // tready for DMA->FFT
    input in_tlast,
    output out_tvalid,       // tvalid for FFT -> DMA
    input out_tready,           // tready for FFT -> DMA
    output out_tlast, //tlast for FFT -> DMA
    input signed [(WIDTH)-1:0] data_in_R,
    input signed [(WIDTH)-1:0] data_in_I, 
    output signed [(WIDTH)-1:0] data_out_R,
    output signed [(WIDTH)-1:0] data_out_I
);


wire [(FFT_SIZE*WIDTH)-1:0] data_R;
wire [(FFT_SIZE*WIDTH)-1:0] data_I;
wire [(FFT_SIZE*WIDTH)-1:0] data_R2;
wire [(FFT_SIZE*WIDTH)-1:0] data_I2;

wire fft_start, fft_ready, clocker_start, clocker_ready;
wire [7:0] count;

clocking_in # (.FFT_SIZE(FFT_SIZE), .FFT_SIZE_LOG(FFT_SIZE_LOG), .WIDTH(WIDTH), .DECIMAL(DECIMAL))
    data_in (
    clk, 
    in_tvalid,
    in_tready, 
    in_tlast,
    fft_start,
    fft_ready,
    data_in_R,
    data_in_I,
    data_R,
    data_I,
    count
    );

calculating # (.FFT_SIZE(FFT_SIZE), .FFT_SIZE_LOG(FFT_SIZE_LOG), .WIDTH(WIDTH), .DECIMAL(DECIMAL))
    calc (
        clk, 
       fft_start,
       fft_ready,
       clocker_start,
       clocker_ready,
       data_R,
       data_I,
       data_R2,
       data_I2         
       );
 
 clocking_out # (.FFT_SIZE(FFT_SIZE), .FFT_SIZE_LOG(FFT_SIZE_LOG), .WIDTH(WIDTH), .DECIMAL(DECIMAL))
    data_out (clk, 
       clocker_start,
       clocker_ready,
       out_tready,
       out_tvalid,
       out_tlast,
       data_R2,
       data_I2,
       data_out_R,
       data_out_I,
       count    
       );
        

endmodule

module clocking_out #(parameter FFT_SIZE = 8, parameter FFT_SIZE_LOG = 3, parameter WIDTH = 18, parameter DECIMAL = 10)(
    input clk,
    input start,
    output reg ready,
    input dma_tready,
    output reg dma_tvalid,
    output reg dma_tlast,
    input [(FFT_SIZE*WIDTH)-1:0] data_in_R,
    input [(FFT_SIZE*WIDTH)-1:0] data_in_I,
    output reg signed [WIDTH-1:0] data_out_R,
    output reg signed [WIDTH-1:0] data_out_I,
    input [7:0] sample_count
    );  

reg [FFT_SIZE_LOG:0] idx; //index when clocking samples out
reg started;
reg previous_start;
reg [7:0] count;
    
initial begin
    idx = 0;
    ready = 1;
    dma_tvalid = 0;
    started = 0;
    previous_start = 0;
    dma_tlast = 0;
    count = 1;
end  
    
always @(posedge clk)
begin

    if(dma_tlast)
        dma_tlast <= 0;

    if(start && !previous_start) begin
        idx <= 1;
        started <= 1; 
        dma_tvalid <= 1;
        ready <= 0;
        data_out_R <= data_in_R[0+:WIDTH];
        data_out_I <= data_in_I[0+:WIDTH];
    end
    
    if(dma_tready && dma_tvalid) begin
        data_out_R <= data_in_R[(idx*WIDTH)+:WIDTH];
        data_out_I <= data_in_I[(idx*WIDTH)+:WIDTH];
        
        if(idx == FFT_SIZE) begin
            dma_tvalid <= 0;
            ready <= 1;
        end 
        else begin
            idx <= idx + 1;
        end
        
        count <= count + 1;
        
        if(count == (sample_count - 1))
        begin
            dma_tlast <= 1;
            count <= 1;
        end
    end

    previous_start <= start;
end

endmodule       


module clocking_in #(parameter FFT_SIZE = 8, parameter FFT_SIZE_LOG = 3, parameter WIDTH = 18, parameter DECIMAL = 10)(
    input clk,
    input dma_tvalid, //tvalid signal from DMA
    output reg dma_tready, //tready signal to DMA
    input dma_tlast, //tlast signal from DMA
    output reg start, //next stage start
    input ready, //next stage ready
    input signed [(WIDTH)-1:0] data_in_R,
    input signed [(WIDTH)-1:0] data_in_I,
    output reg [(FFT_SIZE*WIDTH)-1:0] data_out_R,
    output reg [(FFT_SIZE*WIDTH)-1:0] data_out_I,
    output reg [7:0] sample_count
    );

reg [FFT_SIZE_LOG:0] idx; //index when clocking samples in 
wire [FFT_SIZE_LOG-1:0] idx_reversed; //bit-reversed index input
reg [(FFT_SIZE*WIDTH)-1:0] dataR;
reg [(FFT_SIZE*WIDTH)-1:0] dataI;
reg shift_to_output;
reg [7:0] count;

reverse #(FFT_SIZE_LOG) reverser(idx[FFT_SIZE_LOG-1:0], idx_reversed); //bit reverser instance 

initial begin
    idx = 0;
    start = 0;
    dma_tready = 1;
    sample_count = 0;
    count = 0;
    shift_to_output = 0;
end  
    
always @(posedge clk)
begin
    start <= 0;
    
    if(!dma_tready || shift_to_output) begin
        if(ready) begin
            data_out_R <= dataR;
            data_out_I <= dataI;
            start <= 1;
            dma_tready <= 1;
            shift_to_output <= 0;
        end
    end
    
    if(dma_tready && dma_tvalid) begin
        dataR[(idx_reversed*WIDTH)+:WIDTH] <= data_in_R;
        dataI[(idx_reversed*WIDTH)+:WIDTH] <= data_in_I;
        if(idx == (FFT_SIZE - 1)) begin
            shift_to_output <= 1;
            if(!ready) begin
                dma_tready <= 0;
            end
            idx <= 0;
        end else
            idx <= idx + 1;
        
        count = count + 1;
            
        if(dma_tlast) begin
            sample_count <= count;
            count <= 0;
        end
    end

end


endmodule


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

module reverse #(parameter WIDTH = 8) (input [WIDTH-1:0] in, output [WIDTH-1:0] out);
    genvar i;
    generate
        for(i = 0; i < WIDTH; i = i + 1)
        begin
            assign out[i] = in[WIDTH - i - 1];
        end
    endgenerate
endmodule

module butterfly #(parameter MAX_FFT_SIZE = 8, parameter MAX_FFT_SIZE_LOG = 3, parameter WIDTH = 18, parameter DECIMAL = 10)(
input clk, 
input start, 
output reg ready, 
input signed [WIDTH-1:0] topR,
input signed [WIDTH-1:0] topI,
input signed [WIDTH-1:0] bottomR,
input signed [WIDTH-1:0] bottomI,
input wire signed [WIDTH-1:0] twiddleR,
input wire signed [WIDTH-1:0] twiddleI,
output reg signed [WIDTH-1:0] topR_out,
output reg signed [WIDTH-1:0] topI_out,
output reg signed [WIDTH-1:0] bottomR_out,
output reg signed [WIDTH-1:0] bottomI_out
);

reg signed [WIDTH-1:0] tempR, tempI; //temporary buffer when multiplying
reg signed [WIDTH-1:0] mul1R, mul1I, mul2R, mul2I; //complex multiplier inputs
wire signed [WIDTH-1:0] mulOutR, mulOutI; //complex multiplier output
reg mulStart; //multiplier start signal
wire mulReady; //multiplier ready output
reg mulPreviousReady; //previous multiplier ready state
reg lastStartState;

cplxmul #(.WIDTH(WIDTH), .DECIMAL(DECIMAL)) mul(clk, mulStart, mul1R, mul1I, mul2R, mul2I, mulReady, mulOutR, mulOutI);

initial
begin
    ready = 1'b0;
    mulStart = 1'b0;
    mulPreviousReady = 1'b0;
    lastStartState = 1'b0;
end

always @(posedge clk)
begin
    if((start == 1'b1) && (lastStartState == 1'b0))
    begin
        ready <= 1'b0;   
    
        //store top branch values
        tempR <= topR;
        tempI <= topI;
        
        //multiply bottom branch by twiddle
        mul1R <= bottomR;
        mul1I <= bottomI;

        mul2R <= twiddleR;
        mul2I <= twiddleI;

        mulStart <= 1'b1;
     end
     else if((mulReady == 1'b1) && (mulPreviousReady == 1'b0)) //mulStarted == 1 and mulReady = 1 and mulPreviousReady = 0
     begin
        mulStart <= 1'b0;
        
        //replace bottom branch values after multiplication
        bottomR_out = mulOutR;
        bottomI_out = mulOutI;
        
        //add bottom branch to top branch
        topR_out <= topR + bottomR_out;
        topI_out <= topI + bottomI_out;
        
        //negate bottom branch and add the original top branch to it
        bottomR_out <= tempR - bottomR_out;
        bottomI_out <= tempI - bottomI_out;
        
        ready <= 1'b1;
     end
     mulPreviousReady <= mulReady;
     lastStartState <= start;

end

endmodule

//complex fixed-point multiplier
module cplxmul #(parameter WIDTH = 18, parameter DECIMAL = 10)(
    input clk,
    input start,
    input signed [WIDTH-1:0] in1r, input signed [WIDTH-1:0] in1i,
    input signed [WIDTH-1:0] in2r, input signed [WIDTH-1:0] in2i,
    output reg ready,
    output wire signed [WIDTH-1:0] outr, output wire signed [WIDTH-1:0] outi
    );

//idea from here: https://docs.amd.com/r/en-US/ug901-vivado-synthesis/Complex-Multiplier-Verilog-Example
//reduce number of multiplications by calculating the common term first
//when two input number are a+jb and c+jd, then the common term is k=d(a-b)
//then the output is [k+a(c-d)]+j[k+b(c+d)]
//3 multiplications instead of 4

reg lastStartState;
reg [1:0] state;
localparam IDLE = 0, REAL_MUL = 1, IMAG_MUL = 2, FINISH = 3;

wire signed [WIDTH-1:0] aMinusB, cMinusD, cPlusD;
reg signed [2*WIDTH-1:0] aMinusBtimesD, cMinusDtimesA, cPlusDtimesB;
wire signed [WIDTH-1:0] common;

assign aMinusB = in1r - in1i;
assign cMinusD = in2r - in2i;
assign cPlusD = in2r + in2i;

assign common = aMinusBtimesD >>> DECIMAL;

assign outr = (cMinusDtimesA >>> DECIMAL) + common; 
assign outi = (cPlusDtimesB >>> DECIMAL) + common;

initial
begin
    ready = 1'b0;
    lastStartState = 1'b0;
    state = IDLE;
end
    

always @(posedge clk)
begin
    case(state)
        IDLE: begin
            if((start == 1'b1) && (lastStartState == 1'b0)) begin //require rising edge on start
                //multiply (a-b) by d for the common torm
                aMinusBtimesD <= aMinusB * in2i;
                state <= REAL_MUL;
                ready <= 1'b0;
            end
        end
        REAL_MUL: begin  
            //multiply (c-d) by a
            cMinusDtimesA <= cMinusD * in1r;
            state <= IMAG_MUL;
        end
        IMAG_MUL: begin
            //multiply (c+d) by b
            cPlusDtimesB <= cPlusD * in1i;
            ready <= 1'b1;
            state <= IDLE;
        end
    endcase
    lastStartState <= start;
end
    
    
endmodule