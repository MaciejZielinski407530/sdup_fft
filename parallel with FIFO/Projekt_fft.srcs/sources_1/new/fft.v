`timescale 1ns / 1ps


module fft #(parameter FFT_SIZE = 8, parameter FFT_SIZE_LOG = 3, parameter WIDTH = 18, parameter DECIMAL = 10)(
    input clk, 
    //input reset, 
    input ce,               // tvalid for DMA->FFT
    output reg in_ok,       // tready for DMA->FFT
    //input out_tvalid,           // tready for FFT -> DMA
    output reg ready,       // tvalid for FFT -> DMA
    input signed [(WIDTH)-1:0] data_in_R,
    input signed [(WIDTH)-1:0] data_in_I, 
    output reg signed [(WIDTH)-1:0] data_out_R,
    output reg signed [(WIDTH)-1:0] data_out_I
);


wire signed [(FFT_SIZE*WIDTH)-1:0] data_R;
wire signed [(FFT_SIZE*WIDTH)-1:0] data_I;
wire signed [(FFT_SIZE*WIDTH)-1:0] data_R2;
wire signed [(FFT_SIZE*WIDTH)-1:0] data_I2;

wire ce2, ce3;


clocking_in # (.FFT_SIZE(FFT_SIZE), .FFT_SIZE_LOG(FFT_SIZE_LOG), .WIDTH(WIDTH), .DECIMAL(DECIMAL))
    data_in (clk, 
    ce,
    in_ok, 
    ce2,
    data_in_R,
    data_in_I,
    data_R,
    data_I
    );

calculating # (.FFT_SIZE(FFT_SIZE), .FFT_SIZE_LOG(FFT_SIZE_LOG), .WIDTH(WIDTH), .DECIMAL(DECIMAL))
    calc (clk, 
       ce2,
       ce3,
       data_R,
       data_I,
       data_R2,
       data_I2         
       );
 
 clocking_out # (.FFT_SIZE(FFT_SIZE), .FFT_SIZE_LOG(FFT_SIZE_LOG), .WIDTH(WIDTH), .DECIMAL(DECIMAL))
    data_out (clk, 
       ce3,
       //out_tvalid,
       ready,
       data_R2,
       data_I2,
       data_out_R,
       data_out_I       
       );
        

endmodule
