`timescale 1ns / 1ps

module stageN#(parameter FFT_SIZE = 8, parameter FFT_SIZE_LOG = 3, parameter WIDTH = 18, parameter DECIMAL = 10, parameter STAGE = 0)(
input clk,
input [(FFT_SIZE/2)-1:0] start,
input signed [(WIDTH*FFT_SIZE-1):0] data_in_R,
input signed [(WIDTH*FFT_SIZE-1):0] data_in_I,
output reg signed [(WIDTH*FFT_SIZE-1):0] data_out_R,
output reg signed [(WIDTH*FFT_SIZE-1):0] data_out_I,
output wire [(FFT_SIZE/2)-1:0] ready
    );
reg signed [(WIDTH*(1 << (STAGE+1))-1):0] twiddle_R;
reg signed [(WIDTH*(1 << (STAGE+1))-1):0] twiddle_I;

twiddle # (.FFT_SIZE(FFT_SIZE),.WIDTH(WIDTH), .STAGE(STAGE)) twid (twiddle_R, twiddle_I);


genvar i, j;
generate 
    for (i = 0; i < (FFT_SIZE >> (STAGE + 1)); i = i + 1) begin
        for (j = 0; j < (1 << STAGE); j = j + 1) begin
            localparam integer m = j + (i << (STAGE +1));
            localparam integer n = m + (1 << STAGE);
            
            butterfly #(.WIDTH(WIDTH), .DECIMAL(DECIMAL), .MAX_FFT_SIZE(FFT_SIZE), .MAX_FFT_SIZE_LOG(FFT_SIZE_LOG))
                butterfly (
                    clk, 
                    start[0], 
                    ready[i], 
                    data_in_R[((FFT_SIZE-m)*WIDTH)-1 -:WIDTH], 
                    data_in_I[((FFT_SIZE-m)*WIDTH)-1 -:WIDTH],
                    data_in_R[((FFT_SIZE-n)*WIDTH)-1 -:WIDTH],
                    data_in_I[((FFT_SIZE-n)*WIDTH)-1 -:WIDTH],
                    twiddle_R[((j+1)*WIDTH)-1 -:WIDTH],
                    twiddle_I[((j+1)*WIDTH)-1 -:WIDTH],
                    data_out_R[((FFT_SIZE-m)*WIDTH)-1 -:WIDTH],
                    data_out_I[((FFT_SIZE-m)*WIDTH)-1 -:WIDTH],
                    data_out_R[((FFT_SIZE-n)*WIDTH)-1 -:WIDTH],
                    data_out_I[((FFT_SIZE-n)*WIDTH)-1 -:WIDTH]
                    );
        end
    end
endgenerate
    
    
endmodule
