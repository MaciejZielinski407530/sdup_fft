`timescale 1ns / 1ps

module fft_tb;

`include "config.v"

reg clk, reset, start, data_clk;
wire ready;
reg signed [`W-1:0] data_R[0:`N-1] = {1.0 * `SCALE, 0.7071 * `SCALE, 0, -0.7071 * `SCALE, -1.0 * `SCALE, -0.7071 * `SCALE, 0, 0.7071 * `SCALE};
reg signed [`W-1:0] data_I[0:`N-1] = {1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE};

//reg signed [`W-1:0] data_R[0:`N-1] = {1.0 * `SCALE, 2.0 * `SCALE, 3.0 * `SCALE, 4.0 * `SCALE};
reg signed [`W-1:0] dataOut[0:2*`N-1];
wire signed [`W-1:0] outbuffer;
reg signed [`W-1:0] inbuffer_R;
reg signed [`W-1:0] inbuffer_I;

integer i, j;

fft #(.FFT_SIZE(`N), .FFT_SIZE_LOG(`r), .WIDTH(`W), .DECIMAL(`D)) fft (clk, reset, start, ready, data_clk, inbuffer_R, inbuffer_I, outbuffer);

//Clock generator
initial
    clk <= 1'b1;
always
    #1 clk <= ~clk;
//Reset signal
initial
begin
    data_clk <= 0;
    reset <= 1'b1;
    start <= 0;
    #5 reset <= 1'b0;
    
end

initial
begin
    #10 start <= 1;
    for(i = 0; i < `N; i = i + 1)
    begin
        inbuffer_R <= data_R[i];
        inbuffer_I <= data_I[i];
        #5 data_clk <= 1;
        #5 data_clk <= 0;
    end  
end

always @(posedge ready)
begin
    for(j = 0; j < (2*`N); j = j + 1)
    begin
        #5 data_clk = 1;
        #5 data_clk = 0;
        dataOut[j] = outbuffer;
    end  
end

endmodule
