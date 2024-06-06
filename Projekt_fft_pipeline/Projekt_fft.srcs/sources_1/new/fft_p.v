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
    
    
reg signed [WIDTH-1:0] s0_in_R [FFT_SIZE-1:0];
reg signed [WIDTH-1:0] s0_in_I [FFT_SIZE-1:0];
reg signed [WIDTH-1:0] s0_out_R [FFT_SIZE-1:0];
reg signed [WIDTH-1:0] s0_out_I [FFT_SIZE-1:0];
/*
reg signed [WIDTH-1:0] s1_out_R [FFT_SIZE-1:0];
reg signed [WIDTH-1:0] s1_out_I [FFT_SIZE-1:0];
reg signed [WIDTH-1:0] s2_out_R [FFT_SIZE-1:0];
reg signed [WIDTH-1:0] s2_out_I [FFT_SIZE-1:0];  
*/
wire [(FFT_SIZE/2)-1:0] stage0_ready, stage1_ready, stage2_ready;
/*
stage0 first (clk, start, s0_in_R[0],s0_in_R[1],s0_in_R[2],s0_in_R[3],s0_in_R[4],s0_in_R[5],s0_in_R[6],s0_in_R[7],s0_in_I[0],s0_in_I[1],s0_in_I[2],s0_in_I[3],s0_in_I[4],s0_in_I[5],s0_in_I[6],s0_in_I[7],
            s0_out_R[0],s0_out_R[1],s0_out_R[2],s0_out_R[3],s0_out_R[4],s0_out_R[5],s0_out_R[6],s0_out_R[7],s0_out_I[0],s0_out_I[1],s0_out_I[2],s0_out_I[3],s0_out_I[4],s0_out_I[5],s0_out_I[6],s0_out_I[7],stage0_ready);

stage1 second (clk, stage0_ready, s0_out_R[0],s0_out_R[1],s0_out_R[2],s0_out_R[3],s0_out_R[4],s0_out_R[5],s0_out_R[6],s0_out_R[7],s0_out_I[0],s0_out_I[1],s0_out_I[2],s0_out_I[3],s0_out_I[4],s0_out_I[5],s0_out_I[6],s0_out_I[7],
            s1_out_R[0],s1_out_R[1],s1_out_R[2],s1_out_R[3],s1_out_R[4],s1_out_R[5],s1_out_R[6],s1_out_R[7],s1_out_I[0],s1_out_I[1],s1_out_I[2],s1_out_I[3],s1_out_I[4],s1_out_I[5],s1_out_I[6],s1_out_I[7],stage1_ready);

stage2 third (clk, stage1_ready, s1_out_R[0],s1_out_R[1],s1_out_R[2],s1_out_R[3],s1_out_R[4],s1_out_R[5],s1_out_R[6],s1_out_R[7],s1_out_I[0],s1_out_I[1],s1_out_I[2],s1_out_I[3],s1_out_I[4],s1_out_I[5],s1_out_I[6],s1_out_I[7],
            s2_out_R[0],s2_out_R[1],s2_out_R[2],s2_out_R[3],s2_out_R[4],s2_out_R[5],s2_out_R[6],s2_out_R[7],s2_out_I[0],s2_out_I[1],s2_out_I[2],s2_out_I[3],s2_out_I[4],s2_out_I[5],s2_out_I[6],s2_out_I[7],stage2_ready);
*/
stage0 first (clk, start, s0_in_R[0],s0_in_R[1],s0_in_R[2],s0_in_R[3],s0_in_R[4],s0_in_R[5],s0_in_R[6],s0_in_R[7],s0_in_I[0],s0_in_I[1],s0_in_I[2],s0_in_I[3],s0_in_I[4],s0_in_I[5],s0_in_I[6],s0_in_I[7],
            s0_out_R[0],s0_out_R[1],s0_out_R[2],s0_out_R[3],s0_out_R[4],s0_out_R[5],s0_out_R[6],s0_out_R[7],s0_out_I[0],s0_out_I[1],s0_out_I[2],s0_out_I[3],s0_out_I[4],s0_out_I[5],s0_out_I[6],s0_out_I[7],stage0_ready);

stage1 second (clk, stage0_ready, s0_out_R[0],s0_out_R[1],s0_out_R[2],s0_out_R[3],s0_out_R[4],s0_out_R[5],s0_out_R[6],s0_out_R[7],s0_out_I[0],s0_out_I[1],s0_out_I[2],s0_out_I[3],s0_out_I[4],s0_out_I[5],s0_out_I[6],s0_out_I[7],
            s0_in_R[0],s0_in_R[1],s0_in_R[2],s0_in_R[3],s0_in_R[4],s0_in_R[5],s0_in_R[6],s0_in_R[7],s0_in_I[0],s0_in_I[1],s0_in_I[2],s0_in_I[3],s0_in_I[4],s0_in_I[5],s0_in_I[6],s0_in_I[7],stage1_ready);

stage2 third (clk, stage1_ready, s0_in_R[0],s0_in_R[1],s0_in_R[2],s0_in_R[3],s0_in_R[4],s0_in_R[5],s0_in_R[6],s0_in_R[7],s0_in_I[0],s0_in_I[1],s0_in_I[2],s0_in_I[3],s0_in_I[4],s0_in_I[5],s0_in_I[6],s0_in_I[7],
            s0_out_R[0],s0_out_R[1],s0_out_R[2],s0_out_R[3],s0_out_R[4],s0_out_R[5],s0_out_R[6],s0_out_R[7],s0_out_I[0],s0_out_I[1],s0_out_I[2],s0_out_I[3],s0_out_I[4],s0_out_I[5],s0_out_I[6],s0_out_I[7],stage2_ready);


assign s0_in_R[0] = data_in_R[(8*WIDTH-1):(7*WIDTH)]; assign s0_in_I[0] = data_in_I[(8*WIDTH-1):(7*WIDTH)];
assign s0_in_R[1] = data_in_R[(7*WIDTH-1):(6*WIDTH)]; assign s0_in_I[1] = data_in_I[(7*WIDTH-1):(6*WIDTH)];
assign s0_in_R[2] = data_in_R[(6*WIDTH-1):(5*WIDTH)]; assign s0_in_I[2] = data_in_I[(6*WIDTH-1):(5*WIDTH)];
assign s0_in_R[3] = data_in_R[(5*WIDTH-1):(4*WIDTH)]; assign s0_in_I[3] = data_in_I[(5*WIDTH-1):(4*WIDTH)];
assign s0_in_R[4] = data_in_R[(4*WIDTH-1):(3*WIDTH)]; assign s0_in_I[4] = data_in_I[(4*WIDTH-1):(3*WIDTH)];
assign s0_in_R[5] = data_in_R[(3*WIDTH-1):(2*WIDTH)]; assign s0_in_I[5] = data_in_I[(3*WIDTH-1):(2*WIDTH)];
assign s0_in_R[6] = data_in_R[(2*WIDTH-1):WIDTH]; assign s0_in_I[6] = data_in_I[(2*WIDTH-1):WIDTH];
assign s0_in_R[7] = data_in_R[WIDTH-1:0]; assign s0_in_I[7] = data_in_I[WIDTH-1:0];

assign data_out_R[(8*WIDTH-1):(7*WIDTH)] = s0_out_R[0];    assign data_out_I[(8*WIDTH-1):(7*WIDTH)] = s0_out_I[0];
assign data_out_R[(7*WIDTH-1):(6*WIDTH)] = s0_out_R[4];    assign data_out_I[(7*WIDTH-1):(6*WIDTH)] = s0_out_I[4];
assign data_out_R[(6*WIDTH-1):(5*WIDTH)] = s0_out_R[2];    assign data_out_I[(6*WIDTH-1):(5*WIDTH)] = s0_out_I[2];
assign data_out_R[(5*WIDTH-1):(4*WIDTH)] = s0_out_R[6];    assign data_out_I[(5*WIDTH-1):(4*WIDTH)] = s0_out_I[6];
assign data_out_R[(4*WIDTH-1):(3*WIDTH)] = s0_out_R[1];    assign data_out_I[(4*WIDTH-1):(3*WIDTH)] = s0_out_I[1];
assign data_out_R[(3*WIDTH-1):(2*WIDTH)] = s0_out_R[5];    assign data_out_I[(3*WIDTH-1):(2*WIDTH)] = s0_out_I[5];
assign data_out_R[(2*WIDTH-1):WIDTH] = s0_out_R[3];        assign data_out_I[(2*WIDTH-1):WIDTH] = s0_out_I[3];
assign data_out_R[WIDTH-1:0] = s0_out_R[7];                assign data_out_I[WIDTH-1:0] = s0_out_I[7];
/*
assign data_out_R[(8*WIDTH-1):(7*WIDTH)] = s2_out_R[0];    assign data_out_I[(8*WIDTH-1):(7*WIDTH)] = s2_out_I[0];
assign data_out_R[(7*WIDTH-1):(6*WIDTH)] = s2_out_R[4];    assign data_out_I[(7*WIDTH-1):(6*WIDTH)] = s2_out_I[4];
assign data_out_R[(6*WIDTH-1):(5*WIDTH)] = s2_out_R[2];    assign data_out_I[(6*WIDTH-1):(5*WIDTH)] = s2_out_I[2];
assign data_out_R[(5*WIDTH-1):(4*WIDTH)] = s2_out_R[6];    assign data_out_I[(5*WIDTH-1):(4*WIDTH)] = s2_out_I[6];
assign data_out_R[(4*WIDTH-1):(3*WIDTH)] = s2_out_R[1];    assign data_out_I[(4*WIDTH-1):(3*WIDTH)] = s2_out_I[1];
assign data_out_R[(3*WIDTH-1):(2*WIDTH)] = s2_out_R[5];    assign data_out_I[(3*WIDTH-1):(2*WIDTH)] = s2_out_I[5];
assign data_out_R[(2*WIDTH-1):WIDTH] = s2_out_R[3];        assign data_out_I[(2*WIDTH-1):WIDTH] = s2_out_I[3];
assign data_out_R[WIDTH-1:0] = s2_out_R[7];                assign data_out_I[WIDTH-1:0] = s2_out_I[7];
*/
endmodule

