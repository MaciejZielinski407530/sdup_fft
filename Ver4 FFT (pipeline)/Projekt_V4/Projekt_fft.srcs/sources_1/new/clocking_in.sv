`timescale 1ns / 1ps

module clocking_in #(parameter FFT_SIZE = 8, parameter FFT_SIZE_LOG = 3, parameter WIDTH = 18, parameter DECIMAL = 10)(
    input clk,
    input dma_tvalid, //tvalid signal from DMA
    output reg dma_tready, //tready signal to DMA
    input dma_tlast, //tlast signal from DMA
    output reg start, //next stage start
    input ready, //next stage ready
    input signed [(WIDTH)-1:0] data_in_R,
    input signed [(WIDTH)-1:0] data_in_I,
    output reg [(FFT_SIZE*WIDTH)-1:0] data_out_R,
    output reg [(FFT_SIZE*WIDTH)-1:0] data_out_I,
    output reg [7:0] sample_count
    );

reg [FFT_SIZE_LOG:0] idx; //index when clocking samples in 
wire [FFT_SIZE_LOG-1:0] idx_reversed; //bit-reversed index input
reg [(FFT_SIZE*WIDTH)-1:0] dataR;
reg [(FFT_SIZE*WIDTH)-1:0] dataI;
reg shift_to_output;
reg [7:0] count;

reverse #(FFT_SIZE_LOG) reverser(idx[FFT_SIZE_LOG-1:0], idx_reversed); //bit reverser instance 

initial begin
    idx = 0;
    start = 0;
    dma_tready = 1;
    sample_count = 0;
    count = 0;
    shift_to_output = 0;
end  
    
always @(posedge clk)
begin
    start <= 0;
    
    if(!dma_tready || shift_to_output) begin
        if(ready) begin
            data_out_R <= dataR;
            data_out_I <= dataI;
            start <= 1;
            dma_tready <= 1;
            shift_to_output <= 0;
        end
    end
    
    if(dma_tready && dma_tvalid) begin
        dataR[(idx_reversed*WIDTH)+:WIDTH] <= data_in_R;
        dataI[(idx_reversed*WIDTH)+:WIDTH] <= data_in_I;
        if(idx == (FFT_SIZE - 1)) begin
            shift_to_output <= 1;
            if(!ready) begin
                dma_tready <= 0;
            end
            idx <= 0;
        end else
            idx <= idx + 1;
        
        count = count + 1;
            
        if(dma_tlast) begin
            sample_count <= count;
            count <= 0;
        end
    end

end


endmodule
