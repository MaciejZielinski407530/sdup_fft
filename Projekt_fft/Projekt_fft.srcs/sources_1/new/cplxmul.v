`timescale 1ns / 1ps

module cplxmul #(WIDTH = 12) (in1R, in1I, in2R, in2I, outR, outI);

input signed [WIDTH-1:0] in1R, in1I, in2R, in2I;
output reg signed [2*WIDTH-1:0] outR, outI;

always_comb
begin
outR = (in1R * in2R) - (in1I * in2I);
outI = (in1R * in2I) + (in1I * in2R);
end

endmodule
