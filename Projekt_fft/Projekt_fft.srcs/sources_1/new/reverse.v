`timescale 1ns / 1ps

`include "config.v"

module reverse(input [`r-1:0] in, output [`r-1:0] out);
    genvar i;
    generate
        for(i = 0; i < `r; i = i + 1)
        begin
            assign out[i] = in[`r - i - 1];
        end
    endgenerate
endmodule
