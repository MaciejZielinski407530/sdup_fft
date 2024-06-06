`timescale 1ns / 1ps
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

