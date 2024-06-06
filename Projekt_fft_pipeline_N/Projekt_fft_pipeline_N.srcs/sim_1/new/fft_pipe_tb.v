`timescale 1ns / 1ps

module fft_pipe_tb;
`include "config.v"
parameter WIDTH =24;
//parameter N = 8;
parameter N = 8;
reg clk, reset;
reg [15:0] start;
wire ready;
reg signed [WIDTH-1:0] R0_in;
reg signed [WIDTH-1:0] R1_in;
reg signed [WIDTH-1:0] R2_in;
reg signed [WIDTH-1:0] R3_in;
reg signed [WIDTH-1:0] R4_in;
reg signed [WIDTH-1:0] R5_in;
reg signed [WIDTH-1:0] R6_in;
reg signed [WIDTH-1:0] R7_in;
reg signed [WIDTH-1:0] R8_in;
reg signed [WIDTH-1:0] R9_in;
reg signed [WIDTH-1:0] R10_in;
reg signed [WIDTH-1:0] R11_in;
reg signed [WIDTH-1:0] R12_in;
reg signed [WIDTH-1:0] R13_in;
reg signed [WIDTH-1:0] R14_in;
reg signed [WIDTH-1:0] R15_in;
reg signed [WIDTH-1:0] I0_in;
reg signed [WIDTH-1:0] I1_in;
reg signed [WIDTH-1:0] I2_in;
reg signed [WIDTH-1:0] I3_in;
reg signed [WIDTH-1:0] I4_in;
reg signed [WIDTH-1:0] I5_in;
reg signed [WIDTH-1:0] I6_in;
reg signed [WIDTH-1:0] I7_in;
reg signed [WIDTH-1:0] I8_in;
reg signed [WIDTH-1:0] I9_in;
reg signed [WIDTH-1:0] I10_in;
reg signed [WIDTH-1:0] I11_in;
reg signed [WIDTH-1:0] I12_in;
reg signed [WIDTH-1:0] I13_in;
reg signed [WIDTH-1:0] I14_in;
reg signed [WIDTH-1:0] I15_in;

reg signed [WIDTH-1:0] R0_out;
reg signed [WIDTH-1:0] R1_out;
reg signed [WIDTH-1:0] R2_out;
reg signed [WIDTH-1:0] R3_out;
reg signed [WIDTH-1:0] R4_out;
reg signed [WIDTH-1:0] R5_out;
reg signed [WIDTH-1:0] R6_out;
reg signed [WIDTH-1:0] R7_out;
reg signed [WIDTH-1:0] R8_out;
reg signed [WIDTH-1:0] R9_out;
reg signed [WIDTH-1:0] R10_out;
reg signed [WIDTH-1:0] R11_out;
reg signed [WIDTH-1:0] R12_out;
reg signed [WIDTH-1:0] R13_out;
reg signed [WIDTH-1:0] R14_out;
reg signed [WIDTH-1:0] R15_out;
reg signed [WIDTH-1:0] I0_out;
reg signed [WIDTH-1:0] I1_out;
reg signed [WIDTH-1:0] I2_out;
reg signed [WIDTH-1:0] I3_out;
reg signed [WIDTH-1:0] I4_out;
reg signed [WIDTH-1:0] I5_out;
reg signed [WIDTH-1:0] I6_out;
reg signed [WIDTH-1:0] I7_out;
reg signed [WIDTH-1:0] I8_out;
reg signed [WIDTH-1:0] I9_out;
reg signed [WIDTH-1:0] I10_out;
reg signed [WIDTH-1:0] I11_out;
reg signed [WIDTH-1:0] I12_out;
reg signed [WIDTH-1:0] I13_out;
reg signed [WIDTH-1:0] I14_out;
reg signed [WIDTH-1:0] I15_out;

/*
fft_p #(.FFT_SIZE(N),.FFT_SIZE_LOG(4), .WIDTH(WIDTH)) FFT_COUNT (clk, reset, start, 
                {R0_in,R1_in,R2_in,R3_in,R4_in,R5_in,R6_in,R7_in,R8_in,R9_in,R10_in,R11_in,R12_in,R13_in,R14_in,R15_in},
                {I0_in,I1_in,I2_in,I3_in,I4_in,I5_in,I6_in,I7_in,I8_in,I9_in,I10_in,I11_in,I12_in,I13_in,I14_in,I15_in},
                {R0_out,R1_out,R2_out,R3_out,R4_out,R5_out,R6_out,R7_out,R8_out,R9_out,R10_out,R11_out,R12_out,R13_out,R14_out,R15_out},
                {I0_out,I1_out,I2_out,I3_out,I4_out,I5_out,I6_out,I7_out,I8_out,I9_out,I10_out,I11_out,I12_out,I13_out,I14_out,I15_out},
                ready);
*/
fft_p #(.FFT_SIZE(N),.FFT_SIZE_LOG(3), .WIDTH(WIDTH)) FFT_COUNT (clk, reset, start[3:0], 
                {R0_in,R1_in,R2_in,R3_in,R4_in,R5_in,R6_in,R7_in},
                {I0_in,I1_in,I2_in,I3_in,I4_in,I5_in,I6_in,I7_in},
                {R0_out,R1_out,R2_out,R3_out,R4_out,R5_out,R6_out,R7_out},
                {I0_out,I1_out,I2_out,I3_out,I4_out,I5_out,I6_out,I7_out},
                ready);
                
                
//Clock generator
initial
    clk <= 1'b1;
always
    #1 clk <= ~clk;
  
initial 
begin
/*
    R0_in <= 1.0 * `SCALE;
    R1_in <= 0.7071 * `SCALE;
    R2_in <= 1.0 * `SCALE;
    R3_in <= -0.7071 * `SCALE;
    R4_in <= 1.0 * `SCALE;
    R5_in <= 0 * `SCALE;
    R6_in <= 1.0 * `SCALE;
    R7_in <= 0.7071 * `SCALE;
    
    R8_in <= 1.0 * `SCALE;
    R9_in <= -0.7071 * `SCALE;
    R10_in <= 1.0 * `SCALE;
    R11_in <= 0 * `SCALE;
    R12_in <= 1.0 * `SCALE;
    R13_in <= -0.7071 * `SCALE;
    R14_in <= 1.0 * `SCALE;
    R15_in <= 0 * `SCALE;
  */
    /*
    R0_in <= 1;
    R1_in <= 2;
    R2_in <= 3;
    R3_in <= 4;
    R4_in <= 5;
    R5_in <= 6;
    R6_in <= 7;
    R7_in <= 8;
    */
    
    /*
    R8_in <= 1.0 * `SCALE;
    R9_in <= -0.7071 * `SCALE;
    R10_in <= 1.0 * `SCALE;
    R11_in <= 0 * `SCALE;
    R12_in <= 1.0 * `SCALE;
    R13_in <= -0.7071 * `SCALE;
    R14_in <= 1.0 * `SCALE;
    R15_in <= 0 * `SCALE;
    */
    
  /*
    R0_in <= 1.0 * `SCALE;
    R1_in <= -1.0 * `SCALE;
    R2_in <= 0 * `SCALE;
    R3_in <= 0 * `SCALE;
    R4_in <= 0.7071 * `SCALE;
    R5_in <= -0.7071 * `SCALE;
    R6_in <= -0.7071 * `SCALE;
    R7_in <= 0.7071 * `SCALE;
    R8_in <= 1.0 * `SCALE;
    R9_in <= -1.0 * `SCALE;
    R10_in <= 0 * `SCALE;
    R11_in <= 0 * `SCALE;
    R12_in <= 0.7071 * `SCALE;
    R13_in <= -0.7071 * `SCALE;
    R14_in <= -0.7071 * `SCALE;
    R15_in <= 0.7071 * `SCALE;
    */
    R0_in <= 187;
    R1_in <= 959;
    R2_in <= 958;
    R3_in <= 894;
    R4_in <= 889;
    R5_in <= 609;
    R6_in <= 104;
    R7_in <= 308;
    I0_in <= 502;
    I1_in <= 651;
    I2_in <= 395;
    I3_in <= 71;
    I4_in <= 937;
    I5_in <= 973;
    I6_in <= 511;
    I7_in <= 254;
    /*
    R0_in <= 1.0 * `SCALE;
    R1_in <= 0.7071 * `SCALE;
    R2_in <= 0 * `SCALE;
    R3_in <= -0.7071 * `SCALE;
    R4_in <= -1.0 * `SCALE;
    R5_in <= -0.7071 * `SCALE;
    R6_in <= 0 * `SCALE;
    R7_in <= 0.7071 * `SCALE;
    
    I0_in <= 1.0 * `SCALE;
    I1_in <= 1.0 * `SCALE;
    I2_in <= 1.0 * `SCALE;
    I3_in <= 1.0 * `SCALE;
    I4_in <= 1.0 * `SCALE;
    I5_in <= 1.0 * `SCALE;
    I6_in <= 1.0 * `SCALE;
    I7_in <= 1.0 * `SCALE;
    I8_in <= 1.0 * `SCALE;
    I9_in <= 1.0 * `SCALE;
    I10_in <= 1.0 * `SCALE;
    I11_in <= 1.0 * `SCALE;
    I12_in <= 1.0 * `SCALE;
    I13_in <= 1.0 * `SCALE;
    I14_in <= 1.0 * `SCALE;
    I15_in <= 1.0 * `SCALE;
    */
    reset <= 1'b1;
    //start <= 16'b0000000000000000;
    start <= 4'b0000;
    #5 reset <= 1'b0; 
    #10 start = 4'b1111;
    //#10 start = 16'b1111111111111111;  
end



endmodule
