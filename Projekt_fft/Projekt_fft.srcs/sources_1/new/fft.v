`timescale 1ns / 1ps


module fft(clk, reset, start, ready, data_clk, data_in, data_out);

`include "config.v"

localparam PI = 3.14159265359;

input clk;
input start;
input reset;
input data_clk;
output reg ready;
input [`W-1:0] data_in;
output reg [`W-1:0] data_out;

reg [3:0] state; //current coprocessor state
parameter IDLE = 0, CLOCKING_IN = 1, CALCULATING = 2, READY_WAITING = 3, CLOCKING_OUT = 4;
reg [`r-1:0] idx; //index for clocking samples
wire [`r-1:0] idxreversed;
reg [`W-1:0] data[0:`N-1]; //data buffer

reg signed [`W-1:0] twiddleI[0:`N-2], twiddleQ[0:`N-2]; //I and Q twiddles

reverse reverser(idx, idxreversed); //bit reverser instance

//calculate twiddles
integer i, j, k;
initial begin
    k = 0;
    for(i = 2; i <= `N; i = i << 1) begin
        for(j = 0; j < (i / 2); j = j + 1) begin
            twiddleI[k] = $cos(2.0 * PI * j / i) * `SCALE;
            twiddleQ[k] = -$sin(2.0 * PI * j / i) * `SCALE;
            k = k + 1;
        end
    end

end

//internal operations on clock edge
always @(posedge clk)
begin
    case(state)
        IDLE: begin
            ready <= 0;
            idx <= 0;
            if(start == 1)
            begin
                state <= CLOCKING_IN;
            end
        end
        CALCULATING: begin
            //calculate
            #10;
            idx <= 0;
            ready <= 1;
            state <= CLOCKING_OUT;
        end
    endcase
end

//data shift operations on data clock edge
always @(posedge data_clk)
begin
    case(state)
        CLOCKING_IN: begin
           data[idxreversed] <= data_in;
           if(idx == `N - 1)
                state <= CALCULATING;
           else
                idx = idx + 1; 
        end
        CLOCKING_OUT: begin
           data_out <= data[idx];
           if(idx == `N - 1) begin
                state <= IDLE;
                ready <= 0;
           end
           else
                idx = idx + 1; 
        end
    endcase
end



always @(posedge reset)
begin
    state <= IDLE;
    ready <= 0;
    idx <= 0;
end

endmodule
