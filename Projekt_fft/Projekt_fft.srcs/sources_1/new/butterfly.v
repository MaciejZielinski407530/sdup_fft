`timescale 1ns / 1ps

module butterfly #(parameter MAX_FFT_SIZE = 8, parameter MAX_FFT_SIZE_LOG = 3, parameter WIDTH = 12, parameter DECIMAL = 10)(
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
