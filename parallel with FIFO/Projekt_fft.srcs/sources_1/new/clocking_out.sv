`timescale 1ns / 1ps

module clocking_out #(parameter FFT_SIZE = 8, parameter FFT_SIZE_LOG = 3, parameter WIDTH = 18, parameter DECIMAL = 10)(
    input clk,
    input ce,
    //input tvalid,
    output reg out_ok,
    input signed [(FFT_SIZE*WIDTH)-1:0] data_in_R,
    input signed [(FFT_SIZE*WIDTH)-1:0] data_in_I,
    output reg signed [WIDTH-1:0] data_out_R,
    output reg signed [WIDTH-1:0] data_out_I
    );

localparam PIPE_LATENCY = 21 + 7*((FFT_SIZE/8)-1);    

reg [FFT_SIZE_LOG:0] outIdx; //index when clocking samples out
reg [7:0] cycles_count;
reg ce_prev;
reg test=0;

    
initial begin
    outIdx <= 0;
    cycles_count <= PIPE_LATENCY;
    ce_prev <= 0;
    out_ok<= 0;
end  
    
always @(posedge clk)
begin
    
    if(ce == 1) begin   
        if(out_ok == 0 && test == 0)begin
         out_ok = 1;
         test <= 1;
        end 
        if (outIdx == FFT_SIZE) out_ok <= 0;
        if(ce_prev == 0) ce_prev <= 1;
        if(outIdx < FFT_SIZE) begin
            data_out_R <= data_in_R[(outIdx*WIDTH)+:WIDTH];
            data_out_I <= data_in_I[(outIdx*WIDTH)+:WIDTH];
            outIdx = outIdx + 1; 
        end
        
    end
    if(ce_prev == 1) cycles_count <= cycles_count - 1;
               
    if (cycles_count == 0)begin
        outIdx <= 0;      
        //ready <= 0;
        cycles_count <= PIPE_LATENCY;
        ce_prev <=  0;
        out_ok <=0;
        test<=0;
    end
end
endmodule     
