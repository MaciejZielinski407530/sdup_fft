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
    output reg signed [WIDTH-1:0] data_out_I
    );

//localparam PIPE_LATENCY = 21 + 7*((FFT_SIZE/8)-1);    

reg [FFT_SIZE_LOG:0] outIdx; //index when clocking samples out
reg started;
reg previous_start;
    
initial begin
    outIdx = 0;
    ready = 1;
    dma_tvalid = 0;
    started = 0;
    previous_start = 0;
    dma_tlast = 0;
end  
    
always @(posedge clk)
begin
    if(start && !previous_start) begin
        outIdx = 0;
        started <= 1; 
        dma_tvalid <= 1;
        ready = 0;
    end
    if(dma_tready && started) begin
        if(outIdx == (FFT_SIZE - 1)) begin
            started <= 0;
            dma_tvalid = 0;
            ready <= 1;
            dma_tlast <= 0;
        end 
        else begin
            outIdx = outIdx + 1;
            if(outIdx == (FFT_SIZE - 1))
                dma_tlast <= 1;
        end
    end
    
    data_out_R = data_in_R[(outIdx*WIDTH)+:WIDTH];
    data_out_I = data_in_I[(outIdx*WIDTH)+:WIDTH];
    previous_start <= start;

end

endmodule     
