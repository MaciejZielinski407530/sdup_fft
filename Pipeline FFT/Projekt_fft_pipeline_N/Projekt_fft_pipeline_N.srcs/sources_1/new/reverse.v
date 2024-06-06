`timescale 1ns / 1ps

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



