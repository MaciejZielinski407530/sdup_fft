`timescale 1ns / 1ps

module fft_tb;

`include "config.v"

reg clk, reset, start;
reg data_en = 1'b1;
wire ready;
reg signed [`W-1:0] data_R[0:`N-1] = {1.0 * `SCALE, 0.7071 * `SCALE, 0, -0.7071 * `SCALE, -1.0 * `SCALE, -0.7071 * `SCALE, 0, 0.7071 * `SCALE};
reg signed [`W-1:0] data_I[0:`N-1] = {1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE};
//reg signed [`W-1:0] data_R[0:`N-1] = {1.0 * `SCALE, 0.7071 * `SCALE, 0, -0.7071 * `SCALE, -1.0 * `SCALE, -0.7071 * `SCALE, 0, 0.7071 * `SCALE,1.0 * `SCALE, 0.7071 * `SCALE, 0, -0.7071 * `SCALE, -1.0 * `SCALE, -0.7071 * `SCALE, 0, 0.7071 * `SCALE,
 //                                       1.0 * `SCALE, 0.7071 * `SCALE, 0, -0.7071 * `SCALE, -1.0 * `SCALE, -0.7071 * `SCALE, 0, 0.7071 * `SCALE,1.0 * `SCALE, 0.7071 * `SCALE, 0, -0.7071 * `SCALE, -1.0 * `SCALE, -0.7071 * `SCALE, 0, 0.7071 * `SCALE};
//reg signed [`W-1:0] data_I[0:`N-1] = {1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE,1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE,
 //                                       1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE,1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE};



//reg signed [`W-1:0] data_R[0:`N-1] = {1.0 * `SCALE, 0.7071 * `SCALE, 0, -0.7071 * `SCALE, -1.0 * `SCALE, -0.7071 * `SCALE, 0, 0.7071 * `SCALE};
//reg signed [`W-1:0] data_I[0:`N-1] = {0, 0, 0, 0, 0, 0, 0, 0};

reg signed [`W-1:0] data_out_R[0:`N-1];
reg signed [`W-1:0] data_out_I[0:`N-1];

reg signed [`W-1:0] outbuffer_R;
reg signed [`W-1:0] outbuffer_I;
reg signed [`W-1:0] inbuffer_R;
reg signed [`W-1:0] inbuffer_I;

integer i=0, k=0, data_loaded = 0, m=0;

fft #(.FFT_SIZE(`N), .FFT_SIZE_LOG(`r), .WIDTH(`W), .DECIMAL(`D)) fft (clk, reset, start, ready, inbuffer_R, inbuffer_I, outbuffer_R, outbuffer_I);

//Clock generator
initial
begin
    clk <= 1'b1;
end
always
    #1 clk <= ~clk;
//Reset signal
initial
begin 
    inbuffer_R = data_R[0];
    inbuffer_I = data_I[0];
    reset <= 1'b1;
    start <= 0;
    #5 reset <= 1'b0;
    #10 start <= 1;

end

always @(posedge clk)
begin
    //#50 data_en = ~data_en;
    if(start == 1'b1)begin      
        if(i < `N)begin
            inbuffer_R = data_R[i];
            inbuffer_I = data_I[i];
            i = i+1;
        end  
        if(i==`N+1) start = 0'b0;
        if(i==`N) i = i+1;              
    end
    if(ready == 1'b1)begin              
        //data_en = ~data_en;
        
            if(k <`N)begin
                data_out_R[k] = outbuffer_R;
                data_out_I[k] = outbuffer_I;
                k = k+1;
            end 
                         
    end
end

endmodule
