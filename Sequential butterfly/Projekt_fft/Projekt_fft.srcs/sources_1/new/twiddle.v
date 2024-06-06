`timescale 1ns / 1ps

module twiddle #(parameter MAX_FFT_SIZE = 8, parameter MAX_FFT_SIZE_LOG = 3, parameter WIDTH = 12, parameter DECIMAL = 10)
(
    input [MAX_FFT_SIZE_LOG-1:0] index,
    output reg [WIDTH-1:0] valueR,
    output reg [WIDTH-1:0] valueI
);

localparam PI = 3.14159265359;

reg [WIDTH-1:0] lutR[0:MAX_FFT_SIZE-2];
reg [WIDTH-1:0] lutI[0:MAX_FFT_SIZE-2];

//calculate twiddles
integer i, j, k;
initial begin

    k = 0;
    for(i = 2; i <= MAX_FFT_SIZE; i = i << 1) begin
        for(j = 0; j < (i / 2); j = j + 1) begin
            lutR[k] = $cos(2.0 * PI * j / i) * (2**DECIMAL);
            lutI[k] = -$sin(2.0 * PI * j / i) * (2**DECIMAL);
            k = k + 1;
        end
    end
end

always @*
begin
    valueR = lutR[index];
    valueI = lutI[index]; 
end


endmodule

