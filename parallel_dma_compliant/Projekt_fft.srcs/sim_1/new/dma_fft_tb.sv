`timescale 1ns / 1ps

module dma_fft_tb;

`include "config.v"
//reg signed [`W-1:0] data_R[0:(3*`N)-1] = {`SCALE, `SCALE, `SCALE, `SCALE, `SCALE, `SCALE, `SCALE, `SCALE,
//    1.0 * `SCALE, 0.7071 * `SCALE, 0, -0.7071 * `SCALE, -1.0 * `SCALE, -0.7071 * `SCALE, 0, 0.7071 * `SCALE,
//    0.5 * `SCALE, 0.5 * `SCALE, 0.5 * `SCALE, 0.5 * `SCALE, 0.5 * `SCALE, 0.5 * `SCALE, 0.5 * `SCALE, 0.5 * `SCALE};
//reg signed [`W-1:0] data_I[0:(3*`N)-1] = {0, 0, 0, 0, 0, 0, 0, 0,
//    1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE,
//    0, 0, 0, 0, 0, 0, 0, 0};

//reg signed [`W-1:0] data_R[0:`N-1] = {`SCALE, `SCALE, `SCALE, `SCALE, `SCALE, `SCALE, `SCALE, `SCALE};
//reg signed [`W-1:0] data_I[0:`N-1] = {0, 0, 0, 0, 0, 0, 0, 0};
//reg signed [`W-1:0] data_R[0:`N-1] = {1.0 * `SCALE, 0.7071 * `SCALE, 0, -0.7071 * `SCALE, -1.0 * `SCALE, -0.7071 * `SCALE, 0, 0.7071 * `SCALE};
//reg signed [`W-1:0] data_I[0:`N-1] = {1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE};

//reg signed [`W-1:0] data_R[0:(2*`N)-1] = {1.0 * `SCALE, 0.7071 * `SCALE, 0, -0.7071 * `SCALE, -1.0 * `SCALE, -0.7071 * `SCALE, 0, 0.7071 * `SCALE,
//                                        0 * `SCALE, 0.7071 * `SCALE, 0, -0.7071 * `SCALE, -1.0 * `SCALE, -0.7071 * `SCALE, 0, 0.7071 * `SCALE};
//reg signed [`W-1:0] data_I[0:(2*`N)-1] = {1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE,
//                                        0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE};

//reg signed [`W-1:0] data_R[0:`N-1] = {1.0 * `SCALE, 0.7071 * `SCALE, 0, -0.7071 * `SCALE, -1.0 * `SCALE, -0.7071 * `SCALE, 0, 0.7071 * `SCALE,1.0 * `SCALE, 0.7071 * `SCALE, 0, -0.7071 * `SCALE, -1.0 * `SCALE, -0.7071 * `SCALE, 0, 0.7071 * `SCALE,
 //                                       1.0 * `SCALE, 0.7071 * `SCALE, 0, -0.7071 * `SCALE, -1.0 * `SCALE, -0.7071 * `SCALE, 0, 0.7071 * `SCALE,1.0 * `SCALE, 0.7071 * `SCALE, 0, -0.7071 * `SCALE, -1.0 * `SCALE, -0.7071 * `SCALE, 0, 0.7071 * `SCALE};
//reg signed [`W-1:0] data_I[0:`N-1] = {1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE,1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE,
 //                                       1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE,1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE, 1.0 * `SCALE};



//reg signed [`W-1:0] data_R[0:`N-1] = {1.0 * `SCALE, 0.7071 * `SCALE, 0, -0.7071 * `SCALE, -1.0 * `SCALE, -0.7071 * `SCALE, 0, 0.7071 * `SCALE};
//reg signed [`W-1:0] data_I[0:`N-1] = {0, 0, 0, 0, 0, 0, 0, 0};

reg signed [`W-1:0] data_R[0:(3*`N)-1] = {0, 1, 2, 3, 4, 5, 6, 7, 10, 11, 12, 13, 14, 15, 16, 17, 20, 21, 22, 23, 24, 25, 26, 27};
reg signed [`W-1:0] data_I[0:(3*`N)-1] = {30, 31, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 47, 50, 51, 52, 53, 54, 55, 56, 57};

reg signed [`W-1:0] data_out_R[0:(3*`N)-1];
reg signed [`W-1:0] data_out_I[0:(3*`N)-1];

reg signed [`W-1:0] outbuffer_R;
reg signed [`W-1:0] outbuffer_I;
reg signed [`W-1:0] inbuffer_R;
reg signed [`W-1:0] inbuffer_I;

reg clk, reset;
reg master_tvalid, slave_tready, master_tlast;
wire master_tready, slave_tvalid, slave_tlast;

fft #(.FFT_SIZE(`N), .FFT_SIZE_LOG(`r), .WIDTH(`W), .DECIMAL(`D)) 
    fft (clk, master_tvalid, master_tready, master_tlast, slave_tvalid, slave_tready, slave_tlast, inbuffer_R, inbuffer_I, outbuffer_R, outbuffer_I);

//Clock generator
initial
begin
    clk = 1'b1;
end

always
    #1 clk <= ~clk;

//Reset signal
initial
begin 
    slave_tready <= 0;
    master_tvalid <= 0;
    master_tlast = 0;
end

integer i = 0, k = 0;

always @(posedge clk)
begin
    if(master_tready) begin
        if(i < (3 * `N)) begin
            master_tvalid <= 1;
            if(i == ((3 * `N) - 1)) begin
                master_tlast <= 1;
            end
            inbuffer_R <= data_R[i];
            inbuffer_I <= data_I[i];
            i = i + 1;
        end
        else begin
            master_tvalid <= 0;
            master_tlast <= 0;
        end
    end
    
    if(slave_tvalid) begin
        if(slave_tready) begin
            if(k < (3 * `N)) begin
                data_out_R[k] <= outbuffer_R;
                data_out_I[k] <= outbuffer_I;
                k = k + 1;
            end
            else begin
                slave_tready <= 0;
            end
        end else
            slave_tready <= 1;
    end
end

endmodule
