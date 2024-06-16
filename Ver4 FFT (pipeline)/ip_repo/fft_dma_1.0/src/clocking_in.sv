`timescale 1ns / 1ps

module clocking_in #(parameter FFT_SIZE = 8, parameter FFT_SIZE_LOG = 3, parameter WIDTH = 18, parameter DECIMAL = 10)(
    input clk,
    input dma_tvalid, //tvalid signal from DMA
    output reg dma_tready, //tready signal to DMA
    output reg start, //next stage start
    input ready, //next stage ready
    input signed [(WIDTH)-1:0] data_in_R,
    input signed [(WIDTH)-1:0] data_in_I,
    output reg [(FFT_SIZE*WIDTH)-1:0] data_out_R,
    output reg [(FFT_SIZE*WIDTH)-1:0] data_out_I
    );

reg [FFT_SIZE_LOG:0] _idx;
wire [FFT_SIZE_LOG-1:0] idx; //index when clocking samples in 
assign idx = _idx[FFT_SIZE_LOG-1:0];
wire [FFT_SIZE_LOG-1:0] idx_reversed; //bit-reversed index input
reg [(FFT_SIZE*WIDTH)-1:0] dataR;
reg [(FFT_SIZE*WIDTH)-1:0] dataI;
reg buffer_free;

reverse #(FFT_SIZE_LOG) reverser(idx, idx_reversed); //bit reverser instance 

initial begin
    _idx = 0;
    buffer_free = 1;
    start = 0;
    dma_tready = 0;
end  
    
always @(posedge clk)
begin
    start <= 0;
    if(_idx == FFT_SIZE) begin
        _idx = 0;
        //end of data shift
        //check if the next stage is ready
        if(ready) begin
            data_out_R <= dataR;
            data_out_I <= dataI;
            start <= 1;
        end
        else begin
            //next stage is not ready
            buffer_free = 0;
            dma_tready = 0;
        end
    end 

    //check if buffer is not free, that is, if we are waiting for the next stage to become ready
    if(buffer_free == 0) begin
        //check if the next stage is ready
        if(ready) begin
            data_out_R <= dataR;
            data_out_I <= dataI;
            start <= 1;
            buffer_free <= 1;
        end
    end
    else if(dma_tvalid) //buffer is free and data from DMA is valid
    begin
        //shift data in
        dataR[(idx_reversed*WIDTH)+:WIDTH] <= data_in_R;
        dataI[(idx_reversed*WIDTH)+:WIDTH] <= data_in_I;
        _idx <= _idx + 1;
        dma_tready <= 1; //notify DMA that we are ready
    end    

end


endmodule
