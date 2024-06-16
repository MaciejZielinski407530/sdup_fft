
`timescale 1 ns / 1 ps

	module fft_parallel_ip_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 6
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface S00_AXI
		input wire  s00_axi_aclk,
		input wire  s00_axi_aresetn,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
		input wire [2 : 0] s00_axi_awprot,
		input wire  s00_axi_awvalid,
		output wire  s00_axi_awready,
		input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
		input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
		input wire  s00_axi_wvalid,
		output wire  s00_axi_wready,
		output wire [1 : 0] s00_axi_bresp,
		output wire  s00_axi_bvalid,
		input wire  s00_axi_bready,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
		input wire [2 : 0] s00_axi_arprot,
		input wire  s00_axi_arvalid,
		output wire  s00_axi_arready,
		output wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
		output wire [1 : 0] s00_axi_rresp,
		output wire  s00_axi_rvalid,
		input wire  s00_axi_rready
	);
// Instantiation of Axi Bus Interface S00_AXI
	fft_parallel_ip_v1_0_S00_AXI # ( 
		.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH)
	) fft_parallel_ip_v1_0_S00_AXI_inst (
		.S_AXI_ACLK(s00_axi_aclk),
		.S_AXI_ARESETN(s00_axi_aresetn),
		.S_AXI_AWADDR(s00_axi_awaddr),
		.S_AXI_AWPROT(s00_axi_awprot),
		.S_AXI_AWVALID(s00_axi_awvalid),
		.S_AXI_AWREADY(s00_axi_awready),
		.S_AXI_WDATA(s00_axi_wdata),
		.S_AXI_WSTRB(s00_axi_wstrb),
		.S_AXI_WVALID(s00_axi_wvalid),
		.S_AXI_WREADY(s00_axi_wready),
		.S_AXI_BRESP(s00_axi_bresp),
		.S_AXI_BVALID(s00_axi_bvalid),
		.S_AXI_BREADY(s00_axi_bready),
		.S_AXI_ARADDR(s00_axi_araddr),
		.S_AXI_ARPROT(s00_axi_arprot),
		.S_AXI_ARVALID(s00_axi_arvalid),
		.S_AXI_ARREADY(s00_axi_arready),
		.S_AXI_RDATA(s00_axi_rdata),
		.S_AXI_RRESP(s00_axi_rresp),
		.S_AXI_RVALID(s00_axi_rvalid),
		.S_AXI_RREADY(s00_axi_rready)
	);

	// Add user logic here

	// User logic ends

	endmodule
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
    if(reset == 1)begin
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

module reverse #(parameter WIDTH = 8) (input [WIDTH-1:0] in, output [WIDTH-1:0] out);
    genvar i;
    generate
        for(i = 0; i < WIDTH; i = i + 1)
        begin
            assign out[i] = in[WIDTH - i - 1];
        end
    endgenerate
endmodule


