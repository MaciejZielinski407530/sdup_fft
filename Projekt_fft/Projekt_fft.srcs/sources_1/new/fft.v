`timescale 1ns / 1ps


module fft(clk, reset, start, ready, data_clk, data_in, data_out);

`include "config.v"

localparam PI = 3.14159265359;

input clk;
input start;
input reset;
input data_clk;
output reg ready;
input signed [`W-1:0] data_in;
output reg signed [`W-1:0] data_out;

reg [3:0] state; //current coprocessor state
parameter IDLE = 0, CLOCKING_IN = 1, CALCULATING = 2, CLOCKING_OUT = 3;
reg [`r-1:0] idx; //index for clocking samples
wire [`r-1:0] idxreversed;
reg [`r:0] outIdx;
reg signed [`W-1:0] dataI[0:`N-1], dataQ[0:`N-1]; //data buffer
reg signed [`W-1:0] tempI, tempQ;
reg signed [`W-1:0] twiddleI[0:`N-2], twiddleQ[0:`N-2]; //I and Q twiddles
reg [`r+1:0] bottomIdx;
reg [`r:0] topIdx, shift;

reverse #(`r) reverser(idx, idxreversed); //bit reverser instance

reg signed [`W-1:0] mul1I, mul1Q, mul2I, mul2Q;
reg signed [2*`W-1:0] mulOutI, mulOutQ;
//cplxmul #(`W) mul(mul1I, mul1Q, mul2I, mul2Q, mulOutI, mulOutQ);

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
            if(topIdx < (bottomIdx >> 1)) begin
                //actual FFT calculation
                tempI = dataI[shift + topIdx];
                tempQ = dataQ[shift + topIdx];
                
                mul1I = dataI[shift + (bottomIdx >> 1) + topIdx];
                mul1Q = dataQ[shift + (bottomIdx >> 1) + topIdx];
                mul2I = twiddleI[(bottomIdx >> 1) + topIdx - 1];
                mul2Q = twiddleQ[(bottomIdx >> 1) + topIdx - 1];
                
                mulOutI = (mul1I * mul2I) - (mul1Q * mul2Q);
                mulOutQ = (mul1I * mul2Q) + (mul1Q * mul2I);
                
                dataI[shift + (bottomIdx >> 1) + topIdx] = mulOutI >>> `D;
                dataQ[shift + (bottomIdx >> 1) + topIdx] = mulOutQ >>> `D;
                
                dataI[shift + topIdx] = dataI[shift + topIdx] + dataI[shift + (bottomIdx >> 1) + topIdx];
                dataQ[shift + topIdx] = dataQ[shift + topIdx] + dataQ[shift + (bottomIdx >> 1) + topIdx];
                
                dataI[shift + (bottomIdx >> 1) + topIdx] = tempI - dataI[shift + (bottomIdx >> 1) + topIdx];
                dataQ[shift + (bottomIdx >> 1) + topIdx] = tempQ - dataQ[shift + (bottomIdx >> 1) + topIdx];
                
                topIdx <= topIdx + 1;
            end 
            else begin
                shift = shift + bottomIdx;
                if(shift < `N) begin
                    topIdx <= 0;
                end
                else begin
                    bottomIdx = bottomIdx << 1;
                    if(bottomIdx <= `N) begin
                        shift <= 0;
                        topIdx <= 0;
                    end
                    else begin
                        ready <= 1;
                        outIdx <= 0;
                        state <= CLOCKING_OUT;
                     end
                end
            end
        end
    endcase
end

//data shift operations on data clock edge
always @(posedge data_clk)
begin
    case(state)
        CLOCKING_IN: begin
           dataI[idxreversed] <= data_in;
           dataQ[idxreversed] <= 0;
           if(idx == `N - 1)
           begin
                state <= CALCULATING;
                bottomIdx <= 2;
                topIdx <= 0;
                shift <= 0;
           end
           else
                idx = idx + 1; 
        end
        CLOCKING_OUT: begin
           if(outIdx & 1)
                data_out = dataQ[outIdx >> 1];
           else
                data_out = dataI[outIdx >> 1];
           if(outIdx == (2*`N) - 1) begin
                state <= IDLE;
                ready <= 0;
           end
           else
                outIdx = outIdx + 1; 
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
