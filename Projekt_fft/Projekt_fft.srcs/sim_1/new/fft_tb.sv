`timescale 1ns / 1ps

module fft_tb;

`include "config.v"

reg clk, reset, start;
wire ready;
reg signed [`W-1:0] data_R[0:`N-1] = {1.0 * `SCALE, 0.7071 * `SCALE, 0, -0.7071 * `SCALE, -1.0 * `SCALE, -0.7071 * `SCALE, 0, 0.7071 * `SCALE,1.0 * `SCALE, 0.7071 * `SCALE, 0, -0.7071 * `SCALE, -1.0 * `SCALE, -0.7071 * `SCALE, 0, 0.7071 * `SCALE};
reg signed [`W-1:0] data_I[0:`N-1] = {1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE};
//reg signed [`W-1:0] data_R[0:`N-1] = {1.0 * `SCALE, 0.7071 * `SCALE, 0, -0.7071 * `SCALE, -1.0 * `SCALE, -0.7071 * `SCALE, 0, 0.7071 * `SCALE};
//reg signed [`W-1:0] data_I[0:`N-1] = {0, 0, 0, 0, 0, 0, 0, 0};

reg signed [`W-1:0] data_out_R[0:`N-1];
reg signed [`W-1:0] data_out_I[0:`N-1];

reg signed [(`N*`W)-1:0] outbuffer_R;
reg signed [(`N*`W)-1:0] outbuffer_I;
reg signed [(`N*`W)-1:0] inbuffer_R;
reg signed [(`N*`W)-1:0] inbuffer_I;

integer i;

fft #(.FFT_SIZE(`N), .FFT_SIZE_LOG(`r), .WIDTH(`W), .DECIMAL(`D)) fft (clk, reset, start, ready, inbuffer_R, inbuffer_I, outbuffer_R, outbuffer_I);

//Clock generator
initial
    clk <= 1'b1;
always
    #1 clk <= ~clk;
//Reset signal
initial
begin
    integer i;
    for(i = 0; i<`N; i = i+1)begin
        inbuffer_R[(`N-i)*`W-1-:`W] = data_R[i];
        inbuffer_I[(`N-i)*`W-1-:`W] = data_I[i]; 
    end
    
    reset <= 1'b1;
    start <= 0;
    #5 reset <= 1'b0;
    #10 start <= 1;
end
always @(posedge clk)
begin
    if(ready == 1'b1) begin
        for(i = 0; i<`N; i = i+1)begin
            data_out_R[i] = outbuffer_R[(`N-i)*`W-1-:`W];
            data_out_I[i] = outbuffer_I[(`N-i)*`W-1-:`W]; 
        end
    
    end
end

endmodule
