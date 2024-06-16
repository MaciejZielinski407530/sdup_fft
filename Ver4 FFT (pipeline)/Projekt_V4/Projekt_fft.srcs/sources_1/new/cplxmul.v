`timescale 1ns / 1ps

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
