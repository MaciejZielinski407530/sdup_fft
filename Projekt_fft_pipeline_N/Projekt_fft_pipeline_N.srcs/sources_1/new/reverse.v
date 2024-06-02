`timescale 1ns / 1ps

module reverse #(parameter WIDTH = 8) (
input [WIDTH-1:0] in, 
output [WIDTH-1:0] out);

    genvar i;
    generate
        for(i = 0; i < WIDTH; i = i + 1)
        begin
            assign out[i] = in[WIDTH - i - 1];
        end
    endgenerate
endmodule
