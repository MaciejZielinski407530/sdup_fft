`timescale 1ns / 1ps


module fft #(parameter FFT_SIZE = 8, parameter FFT_SIZE_LOG = 3, parameter WIDTH = 12, parameter DECIMAL = 10)(
input clk, 
input reset, 
input start, 
output reg ready, 
input data_clk, 
input signed [WIDTH-1:0] data_in, 
output reg signed [WIDTH-1:0] data_out);

localparam PI = 3.14159265359;

reg [3:0] state; //current coprocessor state
localparam IDLE = 0, CLOCKING_IN = 1, CALCULATING = 2, CLOCKING_OUT = 3;
reg [FFT_SIZE_LOG-1:0] idx; //index when clocking samples in
wire [FFT_SIZE_LOG-1:0] idxreversed; //bit-reversed index input
reg [FFT_SIZE_LOG:0] outIdx; //index when clocking samples out
reg signed [WIDTH-1:0] dataI[0:FFT_SIZE-1], dataQ[0:FFT_SIZE-1]; //data buffer
reg signed [WIDTH-1:0] tempI, tempQ; //temporary buffer when multiplying
reg signed [WIDTH-1:0] twiddleI[0:FFT_SIZE-2], twiddleQ[0:FFT_SIZE-2]; //I and Q twiddles
reg [FFT_SIZE_LOG+1:0] bottomIdx; //bottom twiddle idx aka partial FFT size
reg [FFT_SIZE_LOG:0] topIdx, shift; //top twiddle index and shift in current stage
reg [FFT_SIZE_LOG:0] topBranchIdx, bottomBranchIdx, twiddleIdx; //top and bottom branch buffer indices and twiddle buffer index

reg signed [WIDTH-1:0] mul1I, mul1Q, mul2I, mul2Q; //complex multiplier inputs
wire signed [WIDTH-1:0] mulOutI, mulOutQ; //complex multiplier output
reg mulStart, mulStarted; //multiplier start signal and previous state
wire mulReady; //multiplier ready output
reg mulPreviousReady; //previous multiplier ready state

reverse #(FFT_SIZE_LOG) reverser(idx, idxreversed); //bit reverser instance
cplxmul #(.WIDTH(WIDTH), .DECIMAL(DECIMAL)) mul(clk, mulStart, mul1I, mul1Q, mul2I, mul2Q, mulReady, mulOutI, mulOutQ);


//butterfly #(.WIDTH(WIDTH), .DECIMAL(DECIMAL), .MAX_FFT_SIZE(FFT_SIZE), .MAX_FFT_SIZE_LOG(FFT_SIZE_LOG))
//    butterfly(clk, mulStart, mulReady, mul1I, mul1Q, mul2I, mul2Q, twiddleI, twiddleQ, topBranchIdx, bottomBranchIdx);

//calculate twiddles
integer i, j, k;
initial begin
    mulStart = 1'b0;
    mulStarted = 1'b0;
    mulPreviousReady = 1'b0;
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
            if(start == 1)
            begin
                state <= CLOCKING_IN;
            end
        end
        CALCULATING: begin
            if(topIdx < (bottomIdx >> 1)) begin
                //actual FFT calculation

                topBranchIdx = shift + topIdx;
                bottomBranchIdx = shift + (bottomIdx >> 1) + topIdx; 
                
                if(mulStarted == 1'b0)
                begin
                    twiddleIdx = (bottomIdx >> 1) + topIdx - 1;
                    //store top branch values
                    tempI <= dataI[topBranchIdx];
                    tempQ <= dataQ[topBranchIdx];
                    
                    //multiply bottom branch by twiddle
                    mul1I <= dataI[bottomBranchIdx];
                    mul1Q <= dataQ[bottomBranchIdx];
                    mul2I <= twiddleI[twiddleIdx];
                    mul2Q <= twiddleQ[twiddleIdx];

//                    mul1I <= dataI[topBranchIdx];
//                    mul1Q <= dataQ[topBranchIdx];
//                    mul2I <= dataI[bottomBranchIdx];
//                    mul2Q <= dataQ[bottomBranchIdx];

                    mulStart <= 1'b1;
                    mulStarted <= 1'b1;
                 end
                 else if((mulReady == 1'b1) && (mulPreviousReady == 1'b0)) //mulStarted == 1 and mulReady = 1 and mulPreviousReady = 0
                 begin
                    mulStart <= 1'b0;
                    mulStarted <= 1'b0;
                    
                    //replace bottom branch values after multiplication
                    dataI[bottomBranchIdx] = mulOutI;
                    dataQ[bottomBranchIdx] = mulOutQ;
                    
                    //add bottom branch to top branch
                    dataI[topBranchIdx] <= dataI[topBranchIdx] + dataI[bottomBranchIdx];
                    dataQ[topBranchIdx] <= dataQ[topBranchIdx] + dataQ[bottomBranchIdx];
                    
                    //negate bottom branch and add the original top branch to it
                    dataI[bottomBranchIdx] <= tempI - dataI[bottomBranchIdx];
                    dataQ[bottomBranchIdx] <= tempQ - dataQ[bottomBranchIdx];
                    
//                    dataI[topBranchIdx] <= mul1I;
//                    dataQ[topBranchIdx] <= mul1Q;
//                    dataI[bottomBranchIdx] <= mul2I;
//                    dataQ[bottomBranchIdx] <= mul2Q;
                    
                    topIdx <= topIdx + 1;
                 end
                 mulPreviousReady <= mulReady;
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
           if(idx == FFT_SIZE - 1)
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
           if(outIdx == (2*FFT_SIZE) - 1) begin
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
