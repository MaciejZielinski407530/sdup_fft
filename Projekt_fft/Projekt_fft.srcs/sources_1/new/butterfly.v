`timescale 1ns / 1ps

module butterfly #(parameter MAX_FFT_SIZE = 8, parameter MAX_FFT_SIZE_LOG = 3, parameter WIDTH = 12, parameter DECIMAL = 10)(
input clk, 
input start, 
output reg ready, 
inout signed [WIDTH-1:0] topR,
inout signed [WIDTH-1:0] topI,
inout signed [WIDTH-1:0] bottomR,
inout signed [WIDTH-1:0] bottomI,
input wire signed [WIDTH-1:0] twiddleR,
input wire signed [WIDTH-1:0] twiddleI,
input [MAX_FFT_SIZE_LOG-1:0] index,
input [MAX_FFT_SIZE_LOG:0] fftSize
);

reg signed [WIDTH-1:0] _topR;
reg signed [WIDTH-1:0] _topI;
reg signed [WIDTH-1:0] _bottomR;
reg signed [WIDTH-1:0] _bottomI;

assign topR = _topR;
assign topI = _topI;
assign bottomR = _bottomR;
assign bottomI = _bottomI;

reg signed [WIDTH-1:0] tempR, tempI; //temporary buffer when multiplying
reg signed [WIDTH-1:0] mul1R, mul1I, mul2R, mul2I; //complex multiplier inputs
wire signed [WIDTH-1:0] mulOutR, mulOutI; //complex multiplier output
reg mulStart; //multiplier start signal
wire mulReady; //multiplier ready output
reg mulPreviousReady; //previous multiplier ready state
reg signed [MAX_FFT_SIZE-1:0] twiddleIdx;

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
    
        twiddleIdx = (fftSize >> 1) + index - 1;
        //store top branch values
        tempR <= topR;
        tempI <= topI;
        
        //multiply bottom branch by twiddle
        mul1R <= bottomR;
        mul1I <= bottomI;
        mul2R <= twiddleR[twiddleIdx];
        mul2I <= twiddleI[twiddleIdx];
        mulStart <= 1'b1;
     end
     else if((mulReady == 1'b1) && (mulPreviousReady == 1'b0)) //mulStarted == 1 and mulReady = 1 and mulPreviousReady = 0
     begin
        mulStart <= 1'b0;
        
        //replace bottom branch values after multiplication
        _bottomR = mulOutR;
        _bottomI = mulOutI;
        
        //add bottom branch to top branch
        _topR <= topR + bottomR;
        _topI <= topI + bottomI;
        
        //negate bottom branch and add the original top branch to it
        _bottomR <= tempR - bottomR;
        _bottomI <= tempI - bottomI;
        
        ready <= 1'b1;
     end
     mulPreviousReady <= mulReady;
     lastStartState <= start;

end

endmodule
