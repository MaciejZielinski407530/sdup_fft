`timescale 1ns / 1ps

module clocking_out #(parameter FFT_SIZE = 8, parameter FFT_SIZE_LOG = 3, parameter WIDTH = 18, parameter DECIMAL = 10)(
    input clk,
    input start,
    output reg ready,
    input dma_tready,
    output reg dma_tvalid,
    output reg dma_tlast,
    input [(FFT_SIZE*WIDTH)-1:0] data_in_R,
    input [(FFT_SIZE*WIDTH)-1:0] data_in_I,
    output reg signed [WIDTH-1:0] data_out_R,
    output reg signed [WIDTH-1:0] data_out_I,
    input [7:0] sample_count
    );  

reg [FFT_SIZE_LOG:0] idx; //index when clocking samples out
reg started;
reg previous_start;
reg [7:0] count;
    
initial begin
    idx = 0;
    ready = 1;
    dma_tvalid = 0;
    started = 0;
    previous_start = 0;
    dma_tlast = 0;
    count = 1;
end  
    
always @(posedge clk)
begin

    if(dma_tlast)
        dma_tlast <= 0;

    if(start && !previous_start) begin
        idx <= 1;
        started <= 1; 
        dma_tvalid <= 1;
        ready <= 0;
        data_out_R <= data_in_R[0+:WIDTH];
        data_out_I <= data_in_I[0+:WIDTH];
    end
    
    if(dma_tready && dma_tvalid) begin
        data_out_R <= data_in_R[(idx*WIDTH)+:WIDTH];
        data_out_I <= data_in_I[(idx*WIDTH)+:WIDTH];
        
        if(idx == FFT_SIZE) begin
            dma_tvalid <= 0;
            ready <= 1;
        end 
        else begin
            idx <= idx + 1;
        end
        
        count <= count + 1;
        
        if(count == (sample_count - 1))
        begin
            dma_tlast <= 1;
            count <= 1;
        end
    end

    previous_start <= start;
end

endmodule     
