`timescale 1ns / 1ps

module twiddle #(parameter WIDTH = 18, parameter DECIMAL = 10, parameter STAGE = 0)
(
    output reg [((1<<(STAGE+1))*WIDTH)-1:0] valueR,
    output reg [((1<<(STAGE+1))*WIDTH)-1:0] valueI
   
);

localparam PI = 3.14159265359;
//calculate twiddles
integer i, k, N;
initial begin
    N = 1<<(STAGE+1);
    k = 0;
    for(i = 0; i <= N; i = i + 1) begin
        valueR[((k+1)*WIDTH-1)-:WIDTH] = $cos(2.0 * PI * i / N) * (2**DECIMAL);
        valueI[((k+1)*WIDTH-1)-:WIDTH] = -$sin(2.0 * PI * i / N) * (2**DECIMAL);
        k = k + 1;
    end
   
end


endmodule

