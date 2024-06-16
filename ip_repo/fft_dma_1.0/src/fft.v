`timescale 1ns / 1ps


module fft #(parameter FFT_SIZE = 8, parameter FFT_SIZE_LOG = 3, parameter WIDTH = 18, parameter DECIMAL = 10)(
    input clk, 
    input in_tvalid,               // tvalid for DMA->FFT
    output in_tready,       // tready for DMA->FFT
    output out_tvalid,       // tvalid for FFT -> DMA
    input out_tready,           // tready for FFT -> DMA
    output out_tlast, //tlast for FFT -> DMA
    input signed [(WIDTH)-1:0] data_in_R,
    input signed [(WIDTH)-1:0] data_in_I, 
    output signed [(WIDTH)-1:0] data_out_R,
    output signed [(WIDTH)-1:0] data_out_I
);


wire [(FFT_SIZE*WIDTH)-1:0] data_R;
wire [(FFT_SIZE*WIDTH)-1:0] data_I;
wire [(FFT_SIZE*WIDTH)-1:0] data_R2;
wire [(FFT_SIZE*WIDTH)-1:0] data_I2;

wire fft_start, fft_ready, clocker_start, clocker_ready;


clocking_in # (.FFT_SIZE(FFT_SIZE), .FFT_SIZE_LOG(FFT_SIZE_LOG), .WIDTH(WIDTH), .DECIMAL(DECIMAL))
    data_in (
    clk, 
    in_tvalid,
    in_tready, 
    fft_start,
    fft_ready,
    data_in_R,
    data_in_I,
    data_R,
    data_I
    );

calculating # (.FFT_SIZE(FFT_SIZE), .FFT_SIZE_LOG(FFT_SIZE_LOG), .WIDTH(WIDTH), .DECIMAL(DECIMAL))
    calc (
        clk, 
       fft_start,
       fft_ready,
       clocker_start,
       clocker_ready,
       data_R,
       data_I,
       data_R2,
       data_I2         
       );
 
 clocking_out # (.FFT_SIZE(FFT_SIZE), .FFT_SIZE_LOG(FFT_SIZE_LOG), .WIDTH(WIDTH), .DECIMAL(DECIMAL))
    data_out (clk, 
       clocker_start,
       clocker_ready,
       out_tready,
       out_tvalid,
       out_tlast,
       data_R2,
       data_I2,
       data_out_R,
       data_out_I       
       );
        

endmodule
