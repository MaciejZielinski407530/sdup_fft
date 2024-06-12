`timescale 1ns / 1ps

module clocking_in #(parameter FFT_SIZE = 8, parameter FFT_SIZE_LOG = 3, parameter WIDTH = 18, parameter DECIMAL = 10)(
    input clk,
    input ce,
    output reg in_ok,
    output reg ce_out,
    input signed [(WIDTH)-1:0] data_in_R,
    input signed [(WIDTH)-1:0] data_in_I,
    output reg signed [(FFT_SIZE*WIDTH)-1:0] data_out_R,
    output reg signed [(FFT_SIZE*WIDTH)-1:0] data_out_I
    );
localparam PIPE_LATENCY = 21 + 7*((FFT_SIZE/8)-1);
reg [FFT_SIZE_LOG-1:0] idx; //index when clocking samples in 
wire [FFT_SIZE_LOG-1:0] idxreversed; //bit-reversed index input
reg signed [(FFT_SIZE*WIDTH)-1:0] dataR;
reg signed [(FFT_SIZE*WIDTH)-1:0] dataI;
reg [7:0] cycles_count;
reg ce_prev;

 
reverse #(FFT_SIZE_LOG) reverser(idx, idxreversed); //bit reverser instance 


initial begin
    in_ok <= 1;
    idx <= 0;
    cycles_count <= PIPE_LATENCY;
    ce_out <= 0;
    ce_prev <= 0;
end  
    
always @(posedge clk)
begin
    
    if(ce == 1 && in_ok == 1) begin
        if (idx == FFT_SIZE-1) in_ok <= 0;
        if(ce_prev == 0) ce_prev <= 1;
        if(idx <FFT_SIZE) begin
            dataR[(idxreversed*WIDTH)+:WIDTH] <= data_in_R;
            dataI[(idxreversed*WIDTH)+:WIDTH] <= data_in_I;
            idx = idx + 1;          
        end
    end
    if(ce_prev == 1) cycles_count <= cycles_count - 1;
               
    if (cycles_count == 0)begin
        data_out_R <= dataR;         
        data_out_I <= dataI;
        ce_out <= 1;
        idx <= 0; 
        cycles_count <= PIPE_LATENCY;
        ce_prev <=  0;
        in_ok <= 1;
    end
      
end


endmodule
