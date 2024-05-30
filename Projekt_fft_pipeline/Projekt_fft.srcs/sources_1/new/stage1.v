`timescale 1ns / 1ps
`include "config.v"
module stage1 #(parameter FFT_SIZE = 8, parameter FFT_SIZE_LOG = 3, parameter WIDTH = 18, parameter DECIMAL = 10)(
input clk,
input [(FFT_SIZE/2)-1:0] start,
input wire signed [WIDTH-1:0] R0_in,
input wire signed [WIDTH-1:0] R1_in,
input wire signed [WIDTH-1:0] R2_in,
input wire signed [WIDTH-1:0] R3_in,
input wire signed [WIDTH-1:0] R4_in,
input wire signed [WIDTH-1:0] R5_in,
input wire signed [WIDTH-1:0] R6_in,
input wire signed [WIDTH-1:0] R7_in,
input wire signed [WIDTH-1:0] I0_in,
input wire signed [WIDTH-1:0] I1_in,
input wire signed [WIDTH-1:0] I2_in,
input wire signed [WIDTH-1:0] I3_in,
input wire signed [WIDTH-1:0] I4_in,
input wire signed [WIDTH-1:0] I5_in,
input wire signed [WIDTH-1:0] I6_in,
input wire signed [WIDTH-1:0] I7_in,
output reg signed [WIDTH-1:0] R0_out,
output reg signed [WIDTH-1:0] R1_out,
output reg signed [WIDTH-1:0] R2_out,
output reg signed [WIDTH-1:0] R3_out,
output reg signed [WIDTH-1:0] R4_out,
output reg signed [WIDTH-1:0] R5_out,
output reg signed [WIDTH-1:0] R6_out,
output reg signed [WIDTH-1:0] R7_out,
output reg signed [WIDTH-1:0] I0_out,
output reg signed [WIDTH-1:0] I1_out,
output reg signed [WIDTH-1:0] I2_out,
output reg signed [WIDTH-1:0] I3_out,
output reg signed [WIDTH-1:0] I4_out,
output reg signed [WIDTH-1:0] I5_out,
output reg signed [WIDTH-1:0] I6_out,
output reg signed [WIDTH-1:0] I7_out,
output wire [(FFT_SIZE/2)-1:0] ready
    );

reg signed [WIDTH-1:0] twiddle_R [0:(FFT_SIZE/2)-1] =  {1.0*`SCALE, 0.71 *`SCALE, 0*`SCALE, -0.71*`SCALE};
reg signed [WIDTH-1:0] twiddle_I [0:(FFT_SIZE/2)-1] =  {0, -0.71 *`SCALE, -1.0*`SCALE, -0.71*`SCALE};

butterfly #(.WIDTH(WIDTH), .DECIMAL(DECIMAL), .MAX_FFT_SIZE(FFT_SIZE), .MAX_FFT_SIZE_LOG(FFT_SIZE_LOG))
    butterfly_0(clk, start[0], ready[0], R0_in, I0_in, R2_in, I2_in,twiddle_R[0], twiddle_I[0] ,R0_out, I0_out, R2_out, I2_out);

butterfly #(.WIDTH(WIDTH), .DECIMAL(DECIMAL), .MAX_FFT_SIZE(FFT_SIZE), .MAX_FFT_SIZE_LOG(FFT_SIZE_LOG))
    butterfly_1(clk, start[1], ready[1], R1_in, I1_in, R3_in, I3_in, twiddle_R[0], twiddle_I[0] ,R1_out, I1_out, R3_out, I3_out);
    
butterfly #(.WIDTH(WIDTH), .DECIMAL(DECIMAL), .MAX_FFT_SIZE(FFT_SIZE), .MAX_FFT_SIZE_LOG(FFT_SIZE_LOG))
    butterfly_2(clk, start[2], ready[2], R4_in, I4_in, R6_in, I6_in, twiddle_R[2], twiddle_I[2] ,R4_out, I4_out, R6_out, I6_out);
    
butterfly #(.WIDTH(WIDTH), .DECIMAL(DECIMAL), .MAX_FFT_SIZE(FFT_SIZE), .MAX_FFT_SIZE_LOG(FFT_SIZE_LOG))
    butterfly_3(clk, start[3], ready[3], R5_in, I5_in, R7_in, I7_in, twiddle_R[2], twiddle_I[2] ,R5_out, I5_out, R7_out, I7_out);

    
endmodule
