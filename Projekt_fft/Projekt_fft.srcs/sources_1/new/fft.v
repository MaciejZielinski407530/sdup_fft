`timescale 1ns / 1ps


module fft #(parameter FFT_SIZE = 8, parameter FFT_SIZE_LOG = 3, parameter WIDTH = 18, parameter DECIMAL = 10)(
input clk, 
input reset, 
input start, 
output reg ready, 
input signed [(FFT_SIZE*WIDTH)-1:0] data_in_R,
input signed [(FFT_SIZE*WIDTH)-1:0] data_in_I, 
output reg signed [(FFT_SIZE*WIDTH)-1:0] data_out_R,
output reg signed [(FFT_SIZE*WIDTH)-1:0] data_out_I
);
localparam PI = 3.14159265359;

reg [3:0] state; //current coprocessor state
localparam IDLE = 0, CLOCKING_IN = 1, CALCULATING = 2, CLOCKING_OUT = 3;
reg [FFT_SIZE_LOG-1:0] idx; //index when clocking samples in
reg [FFT_SIZE_LOG:0] idx_dec; 
wire [FFT_SIZE_LOG-1:0] idxreversed; //bit-reversed index input
reg [FFT_SIZE_LOG:0] outIdx; //index when clocking samples out
reg signed [WIDTH-1:0] dataI[0:FFT_SIZE-1], dataQ[0:FFT_SIZE-1]; //data buffer
reg signed [WIDTH-1:0] tempI, tempQ; //temporary buffer when multiplying
reg signed [WIDTH-1:0] twiddleI[0:FFT_SIZE-2], twiddleQ[0:FFT_SIZE-2]; //I and Q twiddles
reg [FFT_SIZE_LOG+1:0] bottomIdx; //bottom twiddle idx aka partial FFT size
reg [FFT_SIZE_LOG:0] topIdx, shift; //top twiddle index and shift in current stage
reg [FFT_SIZE_LOG:0] topBranchIdx, bottomBranchIdx, twiddleIdx; //top and bottom branch buffer indices and twiddle buffer index


reg signed [WIDTH-1:0] mul1I, mul1Q, mul2I, mul2Q; //butterfly inputs
wire signed [WIDTH-1:0] mul1I_out, mul1Q_out, mul2I_out, mul2Q_out; //butterfly outputs

reg butterflyStart, butterflyStarted; //multiplier start signal and previous state
wire butterflyReady; //multiplier ready output
reg butterflyPreviousReady; //previous multiplier ready state

reverse #(FFT_SIZE_LOG) reverser(idx, idxreversed); //bit reverser instance

butterfly #(.WIDTH(WIDTH), .DECIMAL(DECIMAL), .MAX_FFT_SIZE(FFT_SIZE), .MAX_FFT_SIZE_LOG(FFT_SIZE_LOG))
    butterfly(clk, butterflyStart, butterflyReady, mul1I, mul1Q, mul2I, mul2Q, twiddleI[twiddleIdx], twiddleQ[twiddleIdx],mul1I_out, mul1Q_out, mul2I_out, mul2Q_out);

//calculate twiddles
integer i, j, k;
initial begin
    butterflyStart = 1'b0;
    butterflyStarted = 1'b0;
    butterflyPreviousReady = 1'b0;
    state = IDLE;

    k = 0;
    for(i = 2; i <= FFT_SIZE; i = i << 1) begin
        for(j = 0; j < (i / 2); j = j + 1) begin
            twiddleI[k] = $cos(2.0 * PI * j / i) * (2**DECIMAL);
            twiddleQ[k] = -$sin(2.0 * PI * j / i) * (2**DECIMAL);
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
            idx_dec <= FFT_SIZE;
            if(start == 1)
            begin
                state <= CLOCKING_IN;
            end
        end
        CLOCKING_IN: begin
           dataI[idxreversed] <= data_in_R[(idx_dec*WIDTH-1)-:WIDTH];
           dataQ[idxreversed] <= data_in_I[(idx_dec*WIDTH-1)-:WIDTH];
           if(idx == FFT_SIZE - 1)
           begin
                state <= CALCULATING;
                bottomIdx <= 2;
                topIdx <= 0;
                shift <= 0;
           end
           else
                idx = idx + 1;
                idx_dec = idx_dec - 1; 
        end
        CALCULATING: begin
            if(topIdx < (bottomIdx >> 1)) begin
                //actual FFT calculation

                topBranchIdx = shift + topIdx;
                bottomBranchIdx = shift + (bottomIdx >> 1) + topIdx; 
                
                if(butterflyStarted == 1'b0)
                begin
                    twiddleIdx = (bottomIdx >> 1) + topIdx - 1;

                    mul1I <= dataI[topBranchIdx];
                    mul1Q <= dataQ[topBranchIdx];
                    mul2I <= dataI[bottomBranchIdx];
                    mul2Q <= dataQ[bottomBranchIdx];

                    butterflyStart <= 1'b1;
                    butterflyStarted <= 1'b1;
                 end
                 else if((butterflyReady == 1'b1) && (butterflyPreviousReady == 1'b0)) //butterflyStarted == 1 and butterflyReady = 1 and butterflyPreviousReady = 0
                 begin
                    butterflyStart <= 1'b0;
                    butterflyStarted <= 1'b0;               
                    
                    dataI[topBranchIdx] <= mul1I_out;
                    dataQ[topBranchIdx] <= mul1Q_out;
                    dataI[bottomBranchIdx] <= mul2I_out;
                    dataQ[bottomBranchIdx] <= mul2Q_out;
                    
                    topIdx <= topIdx + 1;
                 end
                 butterflyPreviousReady <= butterflyReady;
            end 
            else begin
                shift = shift + bottomIdx;
                if(shift < FFT_SIZE) begin
                    topIdx <= 0;
                end
                else begin
                    bottomIdx = bottomIdx << 1;
                    if(bottomIdx <= FFT_SIZE) begin
                        shift <= 0;
                        topIdx <= 0;
                    end
                    else begin
                        ready <= 1;
                        outIdx <= 0;
                        idx_dec <= FFT_SIZE;
                        state <= CLOCKING_OUT;
                     end
                end
            end
        end
        CLOCKING_OUT: begin
           data_out_R[(idx_dec*WIDTH-1)-:WIDTH] = dataI[outIdx];
           data_out_I[(idx_dec*WIDTH-1)-:WIDTH] = dataQ[outIdx];
           
           if(outIdx == (2*FFT_SIZE) - 1) begin
                state <= IDLE;
                ready <= 0;
           end
           else
                outIdx = outIdx + 1;
                idx_dec = idx_dec - 1; 
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
