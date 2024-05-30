`timescale 1ns / 1ps

module fft_pipe_tb;
`include "config.v"
parameter WIDTH =18;
reg clk, reset;
reg [3:0] start;
wire ready;
reg signed [WIDTH-1:0] R0_in;
reg signed [WIDTH-1:0] R1_in;
reg signed [WIDTH-1:0] R2_in;
reg signed [WIDTH-1:0] R3_in;
reg signed [WIDTH-1:0] R4_in;
reg signed [WIDTH-1:0] R5_in;
reg signed [WIDTH-1:0] R6_in;
reg signed [WIDTH-1:0] R7_in;
reg signed [WIDTH-1:0] I0_in;
reg signed [WIDTH-1:0] I1_in;
reg signed [WIDTH-1:0] I2_in;
reg signed [WIDTH-1:0] I3_in;
reg signed [WIDTH-1:0] I4_in;
reg signed [WIDTH-1:0] I5_in;
reg signed [WIDTH-1:0] I6_in;
reg signed [WIDTH-1:0] I7_in;

reg signed [WIDTH-1:0] R0_out;
reg signed [WIDTH-1:0] R1_out;
reg signed [WIDTH-1:0] R2_out;
reg signed [WIDTH-1:0] R3_out;
reg signed [WIDTH-1:0] R4_out;
reg signed [WIDTH-1:0] R5_out;
reg signed [WIDTH-1:0] R6_out;
reg signed [WIDTH-1:0] R7_out;
reg signed [WIDTH-1:0] I0_out;
reg signed [WIDTH-1:0] I1_out;
reg signed [WIDTH-1:0] I2_out;
reg signed [WIDTH-1:0] I3_out;
reg signed [WIDTH-1:0] I4_out;
reg signed [WIDTH-1:0] I5_out;
reg signed [WIDTH-1:0] I6_out;
reg signed [WIDTH-1:0] I7_out;


fft_p FFT_COUNT (clk, reset, start, {R0_in,R1_in,R2_in,R3_in,R4_in,R5_in,R6_in,R7_in},{I0_in,I1_in,I2_in,I3_in,I4_in,I5_in,I6_in,I7_in},
                {R0_out,R1_out,R2_out,R3_out,R4_out,R5_out,R6_out,R7_out},{I0_out,I1_out,I2_out,I3_out,I4_out,I5_out,I6_out,I7_out},ready);

//Clock generator
initial
    clk <= 1'b1;
always
    #1 clk <= ~clk;
  
initial 
begin
    R0_in <= 1.0 * `SCALE;
    R1_in <= 0.7071 * `SCALE;
    R2_in <= 0 * `SCALE;
    R3_in <= -0.7071 * `SCALE;
    R4_in <= -1.0 * `SCALE;
    R5_in <= -0.7071 * `SCALE;
    R6_in <= 0 * `SCALE;
    R7_in <= 0.7071 * `SCALE;
    I0_in <= 1.0 * `SCALE;
    I1_in <= 1.0 * `SCALE;
    I2_in <= 1.0 * `SCALE;
    I3_in <= 1.0 * `SCALE;
    I4_in <= 1.0 * `SCALE;
    I5_in <= 1.0 * `SCALE;
    I6_in <= 1.0 * `SCALE;
    I7_in <= 1.0 * `SCALE;
    reset <= 1'b1;
    start <= 4'b0000;
    #5 reset <= 1'b0; 
    #10 start = 4'b1111;  
end



endmodule
