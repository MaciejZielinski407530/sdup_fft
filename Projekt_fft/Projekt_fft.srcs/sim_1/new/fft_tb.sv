`timescale 1ns / 1ps

module fft_tb;

`include "config.v"

reg clk, reset, start;
wire ready;
//reg signed [`W-1:0] data_R[0:`N-1] = {1.0 * `SCALE, 0.7071 * `SCALE, 0, -0.7071 * `SCALE, -1.0 * `SCALE, -0.7071 * `SCALE, 0, 0.7071 * `SCALE,1.0 * `SCALE, 0.7071 * `SCALE, 0, -0.7071 * `SCALE, -1.0 * `SCALE, -0.7071 * `SCALE, 0, 0.7071 * `SCALE};
//reg signed [`W-1:0] data_I[0:`N-1] = {1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE};
reg signed [`W-1:0] data_R[0:`N-1];// = {1.0 * `SCALE, 0.7071 * `SCALE, 0, -0.7071 * `SCALE, -1.0 * `SCALE, -0.7071 * `SCALE, 0, 0.7071 * `SCALE};
reg signed [`W-1:0] data_I[0:`N-1];// = {0, 0, 0, 0, 0, 0, 0, 0};

reg signed [`W-1:0] data_out_R[0:`N-1];
reg signed [`W-1:0] data_out_I[0:`N-1];

reg signed [`W-1:0] inR, inI;
wire signed [`W-1:0] outR, outI;

reg [`r:0] idx;

fft #(.FFT_SIZE(`N), .FFT_SIZE_LOG(`r), .WIDTH(`W), .DECIMAL(`D)) fft (clk, reset, start, ready, inR, inI, outR, outI);

integer i;
initial begin
    for(i = 0; i < `N; i = i + 1) begin
        data_R[i] = $cos(10 * 2 * 3.1416 * i / `N) * `SCALE;
        data_I[i] = 0;
    end
end

//Clock generator
initial
    clk <= 1'b1;
    
always
    #1 clk <= ~clk;

//Reset signal
initial
begin
    idx <= 0;
    inR <= 0;
    inI <= 0;
    reset <= 1'b1;
    start <= 0;
    #5 reset <= 1'b0;
    #10 start <= 1'b1;
end

always @(posedge clk)
begin
    if(start == 1) begin
        if(idx < `N) begin
            inR <= data_R[idx];
            inI <= data_I[idx];
            idx <= idx + 1;
        end
        else begin
            start <= 0;
            idx <= 0;
        end
    end
    
    if(ready == 1) begin
        if(idx < `N) begin
            data_out_R[idx] <= outR;
            data_out_I[idx] <= outI;
            idx <= idx + 1;
        end
    end
end

endmodule
