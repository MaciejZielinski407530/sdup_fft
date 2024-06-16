
`timescale 1 ns / 1 ps

	module fft_pipe_N8_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 8
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
	fft_pipe_N8_v1_0_S00_AXI # ( 
		.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH)
	) fft_pipe_N8_v1_0_S00_AXI_inst (
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
module fft_p #(parameter FFT_SIZE = 8, parameter FFT_SIZE_LOG = 3, parameter WIDTH = 18, parameter DECIMAL = 10)(
input clk, 
input reset,
input wire [(FFT_SIZE/2)-1:0] start, 
input signed [(WIDTH*FFT_SIZE-1):0] data_in_R,
input signed [(WIDTH*FFT_SIZE-1):0] data_in_I,
output reg signed [(WIDTH*FFT_SIZE-1):0] data_out_R,
output reg signed [(WIDTH*FFT_SIZE-1):0] data_out_I,
output wire ready
    );
reg signed [(WIDTH*FFT_SIZE-1):0] stage_in_out_R [0:FFT_SIZE_LOG];
reg signed [(WIDTH*FFT_SIZE-1):0] stage_in_out_I [0:FFT_SIZE_LOG];
wire [(FFT_SIZE/2)-1:0] stage_ready [0:FFT_SIZE_LOG];


// Reverse data
reverse #(.FFT_SIZE(FFT_SIZE),.FFT_SIZE_LOG(FFT_SIZE_LOG), .WIDTH(WIDTH)) reverse(clk, start,data_in_R, data_in_I,stage_in_out_R[0],stage_in_out_I[0],stage_ready[0]);


// Stage 0 .. FFT_SIZE_LOG-1
genvar i;
generate 
    for (i = 0; i < FFT_SIZE_LOG; i = i+1)begin
        stageN #(.FFT_SIZE(FFT_SIZE),.FFT_SIZE_LOG(FFT_SIZE_LOG), .WIDTH(WIDTH), .STAGE(i)) stage (clk, stage_ready[i], stage_in_out_R[i], stage_in_out_I[i], stage_in_out_R[i+1], stage_in_out_I[i+1], stage_ready[i+1]);
        
    end
endgenerate
assign ready = stage_ready[FFT_SIZE_LOG];
assign data_out_R = stage_in_out_R[FFT_SIZE_LOG];
assign data_out_I = stage_in_out_I[FFT_SIZE_LOG];

endmodule

module stageN#(parameter FFT_SIZE = 8, parameter FFT_SIZE_LOG = 3, parameter WIDTH = 18, parameter DECIMAL = 10, parameter STAGE = 0)(
input clk,
input [(FFT_SIZE/2)-1:0] start,
input signed [(WIDTH*FFT_SIZE-1):0] data_in_R,
input signed [(WIDTH*FFT_SIZE-1):0] data_in_I,
output reg signed [(WIDTH*FFT_SIZE-1):0] data_out_R,
output reg signed [(WIDTH*FFT_SIZE-1):0] data_out_I,
output wire [(FFT_SIZE/2)-1:0] ready
    );
reg signed [(WIDTH*(1 << (STAGE+1))-1):0] twiddle_R;
reg signed [(WIDTH*(1 << (STAGE+1))-1):0] twiddle_I;

twiddle # (.WIDTH(WIDTH), .STAGE(STAGE)) twid (twiddle_R, twiddle_I);


genvar i, j;
generate 
    
    for (i = 0; i < (FFT_SIZE >> (STAGE + 1)); i = i + 1) begin
        for (j = 0; j < (1 << STAGE); j = j + 1) begin
            localparam integer m = j + (i << (STAGE +1));
            localparam integer n = m + (1 << STAGE);
            localparam integer butterfly_index = i+j;
            butterfly #(.WIDTH(WIDTH), .DECIMAL(DECIMAL), .MAX_FFT_SIZE(FFT_SIZE), .MAX_FFT_SIZE_LOG(FFT_SIZE_LOG))
                butterfly (
                    clk, 
                    start[0], 
                    ready[butterfly_index], 
                    data_in_R[((FFT_SIZE-m)*WIDTH)-1 -:WIDTH], 
                    data_in_I[((FFT_SIZE-m)*WIDTH)-1 -:WIDTH],
                    data_in_R[((FFT_SIZE-n)*WIDTH)-1 -:WIDTH],
                    data_in_I[((FFT_SIZE-n)*WIDTH)-1 -:WIDTH],
                    twiddle_R[((j+1)*WIDTH)-1 -:WIDTH],
                    twiddle_I[((j+1)*WIDTH)-1 -:WIDTH],
                    data_out_R[((FFT_SIZE-m)*WIDTH)-1 -:WIDTH],
                    data_out_I[((FFT_SIZE-m)*WIDTH)-1 -:WIDTH],
                    data_out_R[((FFT_SIZE-n)*WIDTH)-1 -:WIDTH],
                    data_out_I[((FFT_SIZE-n)*WIDTH)-1 -:WIDTH]
                    );
                
        end
    end
endgenerate
     
endmodule

module reverse #(parameter FFT_SIZE = 8, parameter FFT_SIZE_LOG = 3, parameter WIDTH = 18) (
input clk,
input [(FFT_SIZE/2)-1:0]start,
input signed [(WIDTH*FFT_SIZE-1):0] in_R,
input signed [(WIDTH*FFT_SIZE-1):0] in_I,  
output reg signed [(WIDTH*FFT_SIZE-1):0] out_R,
output reg signed [(WIDTH*FFT_SIZE-1):0] out_I,
output reg ready
);
initial
begin
    ready = 1'b0;
end

function integer calc_bit_reversed_index;
        input integer index;
        integer i;
        begin
            calc_bit_reversed_index = 0;
            for (i = 0; i < FFT_SIZE_LOG; i = i + 1) begin
                calc_bit_reversed_index = (calc_bit_reversed_index << 1) | (index & 1);
                index = index >> 1;
            end
        end
    endfunction

integer i;
integer reversed_index;
always @(posedge clk) begin
    if(start == 1'b1) begin
        for (i = 0; i < FFT_SIZE; i = i + 1) begin
            reversed_index = calc_bit_reversed_index(i);
            out_R[reversed_index*WIDTH +: WIDTH] = in_R[i*WIDTH +: WIDTH];
            out_I[reversed_index*WIDTH +: WIDTH] = in_I[i*WIDTH +: WIDTH];
        end
        ready <= 4'b1111;
    end
 end 
endmodule


module twiddle #(parameter WIDTH = 18, parameter DECIMAL = 10, parameter STAGE = 0)
(
    output reg [((1<<(STAGE+1))*WIDTH)-1:0] valueR,
    output reg [((1<<(STAGE+1))*WIDTH)-1:0] valueI
   
);

localparam PI = 3.14159265359;
//calculate twiddles
integer i, k, N;
initial begin
    N = 1<<(STAGE+1);
    k = 0;
    for(i = 0; i < N; i = i + 1) begin
        valueR[((k+1)*WIDTH-1)-:WIDTH] = $cos(2.0 * PI * i / N) * (2**DECIMAL);
        valueI[((k+1)*WIDTH-1)-:WIDTH] = -$sin(2.0 * PI * i / N) * (2**DECIMAL);
        k = k + 1;
    end
   
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
        
        ready = 1'b1;
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

//TODO: might do additions and subtractions asynchronously with "assign" (though more register will be used)

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
