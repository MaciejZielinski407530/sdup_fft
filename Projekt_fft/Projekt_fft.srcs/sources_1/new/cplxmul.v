`timescale 1ns / 1ps

//complex fixed-point multiplier
module cplxmul #(parameter WIDTH = 12, parameter DECIMAL = 10)(
    input clk,
    input start,
    input signed [WIDTH-1:0] in1r, input signed [WIDTH-1:0] in1i,
    input signed [WIDTH-1:0] in2r, input signed [WIDTH-1:0] in2i,
    output reg ready,
    output reg signed [WIDTH-1:0] outr, output reg signed [WIDTH-1:0] outi
    );

//idea from here: https://docs.amd.com/r/en-US/ug901-vivado-synthesis/Complex-Multiplier-Verilog-Example
//reduce number of multiplications by calculating the common term first
//when two input number are a+jb and c+jd, then the common term is k=d(a-b)
//then the output is [k+a(c-d)]+j[k+b(c+d)]
//3 multiplications instead of 4

//TODO: might do additions and subtractions asynchronously with "assign" (though more register will be used)

reg lastStartState;
reg [3:0] state;
localparam IDLE = 0, COMMON_MUL = 1, REAL_SUM = 2, REAL_MUL = 3, REAL_SHIFT = 4, IMAG_SUM = 5, IMAG_MUL = 6, IMAG_SHIFT = 7, IMAG_OUT = 8;

reg signed [WIDTH-1:0] sum, mulShifted;
reg signed [2*WIDTH-1:0] mul;
reg signed [WIDTH-1:0] common;

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
                //calculate a-b for common term
                sum <= in1r - in1i;
                state <= COMMON_MUL;
                ready <= 1'b0;
            end
        end
        COMMON_MUL: begin
            //multiply (a-b) by d
            mul <= sum * in2i;
            state <= REAL_SUM;
        end
        REAL_SUM: begin
           //shift output to get common term
           common <= mul >>> DECIMAL;
           //calculate (c-d) for real part
           sum <= in2r - in2i;
           state <= REAL_MUL;
        end
        REAL_MUL: begin  
            //multiply (c-d) by a
            mul <= sum * in1r;
            state <= REAL_SHIFT;
        end
        REAL_SHIFT: begin
            //shift output
            mulShifted <= mul >>> DECIMAL;
            state <= IMAG_SUM;
        end
        IMAG_SUM: begin
            //add common part to get real part
            outr <= mulShifted + common;
            //calculate (c+d) for imaginary part 
            sum <= in2r + in2i;
            state <= IMAG_MUL;
        end
        IMAG_MUL: begin
            //multiply (c+d) by b
            mul <= sum * in1i;
            state <= IMAG_SHIFT;
        end
        IMAG_SHIFT: begin
            //shift output
            mulShifted <= mul >>> DECIMAL;
            state <= IMAG_OUT;
        end
        IMAG_OUT: begin
            //add common part to get imaginary part
            outi <= mulShifted + common;
            state <= IDLE;
            ready <= 1'b1;
        end
    endcase
    lastStartState <= start;
end
    
    
endmodule
