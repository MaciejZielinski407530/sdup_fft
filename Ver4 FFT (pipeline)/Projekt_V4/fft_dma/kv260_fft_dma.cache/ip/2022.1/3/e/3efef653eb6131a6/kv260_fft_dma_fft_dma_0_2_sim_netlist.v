// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Sun Jun 16 08:13:00 2024
// Host        : HAX00R running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ kv260_fft_dma_fft_dma_0_2_sim_netlist.v
// Design      : kv260_fft_dma_fft_dma_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clocking_in
   (fft_start,
    dma_tready_reg_0,
    idx0,
    D,
    \idx_reg[2]_0 ,
    S,
    \sample_count_reg[2]_0 ,
    \sample_count_reg[6]_0 ,
    s00_axis_aclk,
    s00_axis_tvalid,
    s00_axis_tdata,
    fft_ready,
    s00_axis_tlast,
    previous_start,
    Q,
    dma_tlast1,
    dma_tlast0_carry);
  output fft_start;
  output dma_tready_reg_0;
  output idx0;
  output [15:0]D;
  output [15:0]\idx_reg[2]_0 ;
  output [6:0]S;
  output [2:0]\sample_count_reg[2]_0 ;
  output [2:0]\sample_count_reg[6]_0 ;
  input s00_axis_aclk;
  input s00_axis_tvalid;
  input [31:0]s00_axis_tdata;
  input fft_ready;
  input s00_axis_tlast;
  input previous_start;
  input [3:0]Q;
  input dma_tlast1;
  input [4:0]dma_tlast0_carry;

  wire [15:0]D;
  wire [3:0]Q;
  wire [6:0]S;
  wire [7:3]count;
  wire count_0;
  wire [7:0]count_reg;
  wire [127:0]dataI;
  wire \dataI[100]_i_1_n_0 ;
  wire \dataI[101]_i_1_n_0 ;
  wire \dataI[102]_i_1_n_0 ;
  wire \dataI[103]_i_1_n_0 ;
  wire \dataI[104]_i_1_n_0 ;
  wire \dataI[105]_i_1_n_0 ;
  wire \dataI[106]_i_1_n_0 ;
  wire \dataI[107]_i_1_n_0 ;
  wire \dataI[108]_i_1_n_0 ;
  wire \dataI[109]_i_1_n_0 ;
  wire \dataI[110]_i_1_n_0 ;
  wire \dataI[111]_i_1_n_0 ;
  wire \dataI[112]_i_1_n_0 ;
  wire \dataI[113]_i_1_n_0 ;
  wire \dataI[114]_i_1_n_0 ;
  wire \dataI[115]_i_1_n_0 ;
  wire \dataI[116]_i_1_n_0 ;
  wire \dataI[117]_i_1_n_0 ;
  wire \dataI[118]_i_1_n_0 ;
  wire \dataI[119]_i_1_n_0 ;
  wire \dataI[120]_i_1_n_0 ;
  wire \dataI[121]_i_1_n_0 ;
  wire \dataI[122]_i_1_n_0 ;
  wire \dataI[123]_i_1_n_0 ;
  wire \dataI[124]_i_1_n_0 ;
  wire \dataI[125]_i_1_n_0 ;
  wire \dataI[126]_i_1_n_0 ;
  wire \dataI[127]_i_1_n_0 ;
  wire \dataI[64]_i_1_n_0 ;
  wire \dataI[65]_i_1_n_0 ;
  wire \dataI[66]_i_1_n_0 ;
  wire \dataI[67]_i_1_n_0 ;
  wire \dataI[68]_i_1_n_0 ;
  wire \dataI[69]_i_1_n_0 ;
  wire \dataI[70]_i_1_n_0 ;
  wire \dataI[71]_i_1_n_0 ;
  wire \dataI[72]_i_1_n_0 ;
  wire \dataI[73]_i_1_n_0 ;
  wire \dataI[74]_i_1_n_0 ;
  wire \dataI[75]_i_1_n_0 ;
  wire \dataI[76]_i_1_n_0 ;
  wire \dataI[77]_i_1_n_0 ;
  wire \dataI[78]_i_1_n_0 ;
  wire \dataI[79]_i_1_n_0 ;
  wire \dataI[80]_i_1_n_0 ;
  wire \dataI[81]_i_1_n_0 ;
  wire \dataI[82]_i_1_n_0 ;
  wire \dataI[83]_i_1_n_0 ;
  wire \dataI[84]_i_1_n_0 ;
  wire \dataI[85]_i_1_n_0 ;
  wire \dataI[86]_i_1_n_0 ;
  wire \dataI[87]_i_1_n_0 ;
  wire \dataI[88]_i_1_n_0 ;
  wire \dataI[89]_i_1_n_0 ;
  wire \dataI[90]_i_1_n_0 ;
  wire \dataI[91]_i_1_n_0 ;
  wire \dataI[92]_i_1_n_0 ;
  wire \dataI[93]_i_1_n_0 ;
  wire \dataI[94]_i_1_n_0 ;
  wire \dataI[95]_i_1_n_0 ;
  wire \dataI[96]_i_1_n_0 ;
  wire \dataI[97]_i_1_n_0 ;
  wire \dataI[98]_i_1_n_0 ;
  wire \dataI[99]_i_1_n_0 ;
  wire [127:15]dataR;
  wire \dataR[100]_i_1_n_0 ;
  wire \dataR[101]_i_1_n_0 ;
  wire \dataR[102]_i_1_n_0 ;
  wire \dataR[103]_i_1_n_0 ;
  wire \dataR[104]_i_1_n_0 ;
  wire \dataR[105]_i_1_n_0 ;
  wire \dataR[106]_i_1_n_0 ;
  wire \dataR[107]_i_1_n_0 ;
  wire \dataR[108]_i_1_n_0 ;
  wire \dataR[109]_i_1_n_0 ;
  wire \dataR[110]_i_1_n_0 ;
  wire \dataR[111]_i_2_n_0 ;
  wire \dataR[112]_i_1_n_0 ;
  wire \dataR[113]_i_1_n_0 ;
  wire \dataR[114]_i_1_n_0 ;
  wire \dataR[115]_i_1_n_0 ;
  wire \dataR[116]_i_1_n_0 ;
  wire \dataR[117]_i_1_n_0 ;
  wire \dataR[118]_i_1_n_0 ;
  wire \dataR[119]_i_1_n_0 ;
  wire \dataR[120]_i_1_n_0 ;
  wire \dataR[121]_i_1_n_0 ;
  wire \dataR[122]_i_1_n_0 ;
  wire \dataR[123]_i_1_n_0 ;
  wire \dataR[124]_i_1_n_0 ;
  wire \dataR[125]_i_1_n_0 ;
  wire \dataR[126]_i_1_n_0 ;
  wire \dataR[127]_i_2_n_0 ;
  wire \dataR[64]_i_1_n_0 ;
  wire \dataR[65]_i_1_n_0 ;
  wire \dataR[66]_i_1_n_0 ;
  wire \dataR[67]_i_1_n_0 ;
  wire \dataR[68]_i_1_n_0 ;
  wire \dataR[69]_i_1_n_0 ;
  wire \dataR[70]_i_1_n_0 ;
  wire \dataR[71]_i_1_n_0 ;
  wire \dataR[72]_i_1_n_0 ;
  wire \dataR[73]_i_1_n_0 ;
  wire \dataR[74]_i_1_n_0 ;
  wire \dataR[75]_i_1_n_0 ;
  wire \dataR[76]_i_1_n_0 ;
  wire \dataR[77]_i_1_n_0 ;
  wire \dataR[78]_i_1_n_0 ;
  wire \dataR[79]_i_2_n_0 ;
  wire \dataR[80]_i_1_n_0 ;
  wire \dataR[81]_i_1_n_0 ;
  wire \dataR[82]_i_1_n_0 ;
  wire \dataR[83]_i_1_n_0 ;
  wire \dataR[84]_i_1_n_0 ;
  wire \dataR[85]_i_1_n_0 ;
  wire \dataR[86]_i_1_n_0 ;
  wire \dataR[87]_i_1_n_0 ;
  wire \dataR[88]_i_1_n_0 ;
  wire \dataR[89]_i_1_n_0 ;
  wire \dataR[90]_i_1_n_0 ;
  wire \dataR[91]_i_1_n_0 ;
  wire \dataR[92]_i_1_n_0 ;
  wire \dataR[93]_i_1_n_0 ;
  wire \dataR[94]_i_1_n_0 ;
  wire \dataR[95]_i_2_n_0 ;
  wire \dataR[96]_i_1_n_0 ;
  wire \dataR[97]_i_1_n_0 ;
  wire \dataR[98]_i_1_n_0 ;
  wire \dataR[99]_i_1_n_0 ;
  wire \dataR_reg_n_0_[0] ;
  wire \dataR_reg_n_0_[100] ;
  wire \dataR_reg_n_0_[101] ;
  wire \dataR_reg_n_0_[102] ;
  wire \dataR_reg_n_0_[103] ;
  wire \dataR_reg_n_0_[104] ;
  wire \dataR_reg_n_0_[105] ;
  wire \dataR_reg_n_0_[106] ;
  wire \dataR_reg_n_0_[107] ;
  wire \dataR_reg_n_0_[108] ;
  wire \dataR_reg_n_0_[109] ;
  wire \dataR_reg_n_0_[10] ;
  wire \dataR_reg_n_0_[110] ;
  wire \dataR_reg_n_0_[111] ;
  wire \dataR_reg_n_0_[112] ;
  wire \dataR_reg_n_0_[113] ;
  wire \dataR_reg_n_0_[114] ;
  wire \dataR_reg_n_0_[115] ;
  wire \dataR_reg_n_0_[116] ;
  wire \dataR_reg_n_0_[117] ;
  wire \dataR_reg_n_0_[118] ;
  wire \dataR_reg_n_0_[119] ;
  wire \dataR_reg_n_0_[11] ;
  wire \dataR_reg_n_0_[120] ;
  wire \dataR_reg_n_0_[121] ;
  wire \dataR_reg_n_0_[122] ;
  wire \dataR_reg_n_0_[123] ;
  wire \dataR_reg_n_0_[124] ;
  wire \dataR_reg_n_0_[125] ;
  wire \dataR_reg_n_0_[126] ;
  wire \dataR_reg_n_0_[127] ;
  wire \dataR_reg_n_0_[12] ;
  wire \dataR_reg_n_0_[13] ;
  wire \dataR_reg_n_0_[14] ;
  wire \dataR_reg_n_0_[15] ;
  wire \dataR_reg_n_0_[16] ;
  wire \dataR_reg_n_0_[17] ;
  wire \dataR_reg_n_0_[18] ;
  wire \dataR_reg_n_0_[19] ;
  wire \dataR_reg_n_0_[1] ;
  wire \dataR_reg_n_0_[20] ;
  wire \dataR_reg_n_0_[21] ;
  wire \dataR_reg_n_0_[22] ;
  wire \dataR_reg_n_0_[23] ;
  wire \dataR_reg_n_0_[24] ;
  wire \dataR_reg_n_0_[25] ;
  wire \dataR_reg_n_0_[26] ;
  wire \dataR_reg_n_0_[27] ;
  wire \dataR_reg_n_0_[28] ;
  wire \dataR_reg_n_0_[29] ;
  wire \dataR_reg_n_0_[2] ;
  wire \dataR_reg_n_0_[30] ;
  wire \dataR_reg_n_0_[31] ;
  wire \dataR_reg_n_0_[32] ;
  wire \dataR_reg_n_0_[33] ;
  wire \dataR_reg_n_0_[34] ;
  wire \dataR_reg_n_0_[35] ;
  wire \dataR_reg_n_0_[36] ;
  wire \dataR_reg_n_0_[37] ;
  wire \dataR_reg_n_0_[38] ;
  wire \dataR_reg_n_0_[39] ;
  wire \dataR_reg_n_0_[3] ;
  wire \dataR_reg_n_0_[40] ;
  wire \dataR_reg_n_0_[41] ;
  wire \dataR_reg_n_0_[42] ;
  wire \dataR_reg_n_0_[43] ;
  wire \dataR_reg_n_0_[44] ;
  wire \dataR_reg_n_0_[45] ;
  wire \dataR_reg_n_0_[46] ;
  wire \dataR_reg_n_0_[47] ;
  wire \dataR_reg_n_0_[48] ;
  wire \dataR_reg_n_0_[49] ;
  wire \dataR_reg_n_0_[4] ;
  wire \dataR_reg_n_0_[50] ;
  wire \dataR_reg_n_0_[51] ;
  wire \dataR_reg_n_0_[52] ;
  wire \dataR_reg_n_0_[53] ;
  wire \dataR_reg_n_0_[54] ;
  wire \dataR_reg_n_0_[55] ;
  wire \dataR_reg_n_0_[56] ;
  wire \dataR_reg_n_0_[57] ;
  wire \dataR_reg_n_0_[58] ;
  wire \dataR_reg_n_0_[59] ;
  wire \dataR_reg_n_0_[5] ;
  wire \dataR_reg_n_0_[60] ;
  wire \dataR_reg_n_0_[61] ;
  wire \dataR_reg_n_0_[62] ;
  wire \dataR_reg_n_0_[63] ;
  wire \dataR_reg_n_0_[64] ;
  wire \dataR_reg_n_0_[65] ;
  wire \dataR_reg_n_0_[66] ;
  wire \dataR_reg_n_0_[67] ;
  wire \dataR_reg_n_0_[68] ;
  wire \dataR_reg_n_0_[69] ;
  wire \dataR_reg_n_0_[6] ;
  wire \dataR_reg_n_0_[70] ;
  wire \dataR_reg_n_0_[71] ;
  wire \dataR_reg_n_0_[72] ;
  wire \dataR_reg_n_0_[73] ;
  wire \dataR_reg_n_0_[74] ;
  wire \dataR_reg_n_0_[75] ;
  wire \dataR_reg_n_0_[76] ;
  wire \dataR_reg_n_0_[77] ;
  wire \dataR_reg_n_0_[78] ;
  wire \dataR_reg_n_0_[79] ;
  wire \dataR_reg_n_0_[7] ;
  wire \dataR_reg_n_0_[80] ;
  wire \dataR_reg_n_0_[81] ;
  wire \dataR_reg_n_0_[82] ;
  wire \dataR_reg_n_0_[83] ;
  wire \dataR_reg_n_0_[84] ;
  wire \dataR_reg_n_0_[85] ;
  wire \dataR_reg_n_0_[86] ;
  wire \dataR_reg_n_0_[87] ;
  wire \dataR_reg_n_0_[88] ;
  wire \dataR_reg_n_0_[89] ;
  wire \dataR_reg_n_0_[8] ;
  wire \dataR_reg_n_0_[90] ;
  wire \dataR_reg_n_0_[91] ;
  wire \dataR_reg_n_0_[92] ;
  wire \dataR_reg_n_0_[93] ;
  wire \dataR_reg_n_0_[94] ;
  wire \dataR_reg_n_0_[95] ;
  wire \dataR_reg_n_0_[96] ;
  wire \dataR_reg_n_0_[97] ;
  wire \dataR_reg_n_0_[98] ;
  wire \dataR_reg_n_0_[99] ;
  wire \dataR_reg_n_0_[9] ;
  wire [127:0]data_I;
  wire [127:0]data_R;
  wire \data_out_I[0]_i_2_n_0 ;
  wire \data_out_I[0]_i_3_n_0 ;
  wire \data_out_I[10]_i_2_n_0 ;
  wire \data_out_I[10]_i_3_n_0 ;
  wire \data_out_I[11]_i_2_n_0 ;
  wire \data_out_I[11]_i_3_n_0 ;
  wire \data_out_I[12]_i_2_n_0 ;
  wire \data_out_I[12]_i_3_n_0 ;
  wire \data_out_I[13]_i_2_n_0 ;
  wire \data_out_I[13]_i_3_n_0 ;
  wire \data_out_I[14]_i_2_n_0 ;
  wire \data_out_I[14]_i_3_n_0 ;
  wire \data_out_I[15]_i_3_n_0 ;
  wire \data_out_I[15]_i_4_n_0 ;
  wire \data_out_I[1]_i_2_n_0 ;
  wire \data_out_I[1]_i_3_n_0 ;
  wire \data_out_I[2]_i_2_n_0 ;
  wire \data_out_I[2]_i_3_n_0 ;
  wire \data_out_I[3]_i_2_n_0 ;
  wire \data_out_I[3]_i_3_n_0 ;
  wire \data_out_I[4]_i_2_n_0 ;
  wire \data_out_I[4]_i_3_n_0 ;
  wire \data_out_I[5]_i_2_n_0 ;
  wire \data_out_I[5]_i_3_n_0 ;
  wire \data_out_I[6]_i_2_n_0 ;
  wire \data_out_I[6]_i_3_n_0 ;
  wire \data_out_I[7]_i_2_n_0 ;
  wire \data_out_I[7]_i_3_n_0 ;
  wire \data_out_I[8]_i_2_n_0 ;
  wire \data_out_I[8]_i_3_n_0 ;
  wire \data_out_I[9]_i_2_n_0 ;
  wire \data_out_I[9]_i_3_n_0 ;
  wire \data_out_R[0]_i_2_n_0 ;
  wire \data_out_R[0]_i_3_n_0 ;
  wire \data_out_R[10]_i_2_n_0 ;
  wire \data_out_R[10]_i_3_n_0 ;
  wire \data_out_R[11]_i_2_n_0 ;
  wire \data_out_R[11]_i_3_n_0 ;
  wire \data_out_R[12]_i_2_n_0 ;
  wire \data_out_R[12]_i_3_n_0 ;
  wire \data_out_R[13]_i_2_n_0 ;
  wire \data_out_R[13]_i_3_n_0 ;
  wire \data_out_R[14]_i_2_n_0 ;
  wire \data_out_R[14]_i_3_n_0 ;
  wire \data_out_R[15]_i_2_n_0 ;
  wire \data_out_R[15]_i_3_n_0 ;
  wire \data_out_R[1]_i_2_n_0 ;
  wire \data_out_R[1]_i_3_n_0 ;
  wire \data_out_R[2]_i_2_n_0 ;
  wire \data_out_R[2]_i_3_n_0 ;
  wire \data_out_R[3]_i_2_n_0 ;
  wire \data_out_R[3]_i_3_n_0 ;
  wire \data_out_R[4]_i_2_n_0 ;
  wire \data_out_R[4]_i_3_n_0 ;
  wire \data_out_R[5]_i_2_n_0 ;
  wire \data_out_R[5]_i_3_n_0 ;
  wire \data_out_R[6]_i_2_n_0 ;
  wire \data_out_R[6]_i_3_n_0 ;
  wire \data_out_R[7]_i_2_n_0 ;
  wire \data_out_R[7]_i_3_n_0 ;
  wire \data_out_R[8]_i_2_n_0 ;
  wire \data_out_R[8]_i_3_n_0 ;
  wire \data_out_R[9]_i_2_n_0 ;
  wire \data_out_R[9]_i_3_n_0 ;
  wire [4:0]dma_tlast0_carry;
  wire dma_tlast0_carry_i_10_n_0;
  wire dma_tlast0_carry_i_11_n_0;
  wire dma_tlast0_carry_i_9_n_0;
  wire dma_tlast1;
  wire dma_tready1;
  wire dma_tready_i_1_n_0;
  wire dma_tready_i_2_n_0;
  wire dma_tready_reg_0;
  wire fft_ready;
  wire fft_start;
  wire [3:0]idx;
  wire idx0;
  wire \idx[0]_i_1_n_0 ;
  wire \idx[1]_i_1_n_0 ;
  wire \idx[2]_i_1__0_n_0 ;
  wire \idx[3]_i_1__0_n_0 ;
  wire \idx[3]_i_3_n_0 ;
  wire [15:0]\idx_reg[2]_0 ;
  wire previous_start;
  wire s00_axis_aclk;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tlast;
  wire s00_axis_tvalid;
  wire \sample_count[0]_i_1_n_0 ;
  wire \sample_count[1]_i_1_n_0 ;
  wire \sample_count[2]_i_1_n_0 ;
  wire \sample_count[3]_i_1_n_0 ;
  wire \sample_count[4]_i_1_n_0 ;
  wire \sample_count[5]_i_1_n_0 ;
  wire \sample_count[6]_i_1_n_0 ;
  wire \sample_count[7]_i_2_n_0 ;
  wire \sample_count[7]_i_3_n_0 ;
  wire [2:0]\sample_count_reg[2]_0 ;
  wire [2:0]\sample_count_reg[6]_0 ;
  wire shift_to_output_i_1_n_0;
  wire shift_to_output_i_2_n_0;
  wire shift_to_output_reg_n_0;
  wire start_i_1_n_0;

  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(s00_axis_aclk),
        .CE(dma_tready1),
        .D(\sample_count[0]_i_1_n_0 ),
        .Q(count_reg[0]),
        .R(count_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(s00_axis_aclk),
        .CE(dma_tready1),
        .D(\sample_count[1]_i_1_n_0 ),
        .Q(count_reg[1]),
        .R(count_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(s00_axis_aclk),
        .CE(dma_tready1),
        .D(\sample_count[2]_i_1_n_0 ),
        .Q(count_reg[2]),
        .R(count_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(s00_axis_aclk),
        .CE(dma_tready1),
        .D(\sample_count[3]_i_1_n_0 ),
        .Q(count_reg[3]),
        .R(count_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(s00_axis_aclk),
        .CE(dma_tready1),
        .D(\sample_count[4]_i_1_n_0 ),
        .Q(count_reg[4]),
        .R(count_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(s00_axis_aclk),
        .CE(dma_tready1),
        .D(\sample_count[5]_i_1_n_0 ),
        .Q(count_reg[5]),
        .R(count_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(s00_axis_aclk),
        .CE(dma_tready1),
        .D(\sample_count[6]_i_1_n_0 ),
        .Q(count_reg[6]),
        .R(count_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(s00_axis_aclk),
        .CE(dma_tready1),
        .D(\sample_count[7]_i_2_n_0 ),
        .Q(count_reg[7]),
        .R(count_0));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \dataI[100]_i_1 
       (.I0(idx[1]),
        .I1(idx[2]),
        .I2(s00_axis_tdata[20]),
        .O(\dataI[100]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \dataI[101]_i_1 
       (.I0(idx[1]),
        .I1(idx[2]),
        .I2(s00_axis_tdata[21]),
        .O(\dataI[101]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \dataI[102]_i_1 
       (.I0(idx[1]),
        .I1(idx[2]),
        .I2(s00_axis_tdata[22]),
        .O(\dataI[102]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \dataI[103]_i_1 
       (.I0(idx[1]),
        .I1(idx[2]),
        .I2(s00_axis_tdata[23]),
        .O(\dataI[103]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \dataI[104]_i_1 
       (.I0(idx[1]),
        .I1(idx[2]),
        .I2(s00_axis_tdata[24]),
        .O(\dataI[104]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \dataI[105]_i_1 
       (.I0(idx[1]),
        .I1(idx[2]),
        .I2(s00_axis_tdata[25]),
        .O(\dataI[105]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \dataI[106]_i_1 
       (.I0(idx[1]),
        .I1(idx[2]),
        .I2(s00_axis_tdata[26]),
        .O(\dataI[106]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \dataI[107]_i_1 
       (.I0(idx[1]),
        .I1(idx[2]),
        .I2(s00_axis_tdata[27]),
        .O(\dataI[107]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \dataI[108]_i_1 
       (.I0(idx[1]),
        .I1(idx[2]),
        .I2(s00_axis_tdata[28]),
        .O(\dataI[108]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \dataI[109]_i_1 
       (.I0(idx[1]),
        .I1(idx[2]),
        .I2(s00_axis_tdata[29]),
        .O(\dataI[109]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \dataI[110]_i_1 
       (.I0(idx[1]),
        .I1(idx[2]),
        .I2(s00_axis_tdata[30]),
        .O(\dataI[110]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \dataI[111]_i_1 
       (.I0(idx[1]),
        .I1(idx[2]),
        .I2(s00_axis_tdata[31]),
        .O(\dataI[111]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \dataI[112]_i_1 
       (.I0(idx[1]),
        .I1(s00_axis_tdata[16]),
        .I2(idx[2]),
        .O(\dataI[112]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \dataI[113]_i_1 
       (.I0(idx[1]),
        .I1(s00_axis_tdata[17]),
        .I2(idx[2]),
        .O(\dataI[113]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \dataI[114]_i_1 
       (.I0(idx[1]),
        .I1(s00_axis_tdata[18]),
        .I2(idx[2]),
        .O(\dataI[114]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \dataI[115]_i_1 
       (.I0(idx[1]),
        .I1(s00_axis_tdata[19]),
        .I2(idx[2]),
        .O(\dataI[115]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \dataI[116]_i_1 
       (.I0(idx[1]),
        .I1(s00_axis_tdata[20]),
        .I2(idx[2]),
        .O(\dataI[116]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \dataI[117]_i_1 
       (.I0(idx[1]),
        .I1(s00_axis_tdata[21]),
        .I2(idx[2]),
        .O(\dataI[117]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \dataI[118]_i_1 
       (.I0(idx[1]),
        .I1(s00_axis_tdata[22]),
        .I2(idx[2]),
        .O(\dataI[118]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \dataI[119]_i_1 
       (.I0(idx[1]),
        .I1(s00_axis_tdata[23]),
        .I2(idx[2]),
        .O(\dataI[119]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \dataI[120]_i_1 
       (.I0(idx[1]),
        .I1(s00_axis_tdata[24]),
        .I2(idx[2]),
        .O(\dataI[120]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \dataI[121]_i_1 
       (.I0(idx[1]),
        .I1(s00_axis_tdata[25]),
        .I2(idx[2]),
        .O(\dataI[121]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \dataI[122]_i_1 
       (.I0(idx[1]),
        .I1(s00_axis_tdata[26]),
        .I2(idx[2]),
        .O(\dataI[122]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \dataI[123]_i_1 
       (.I0(idx[1]),
        .I1(s00_axis_tdata[27]),
        .I2(idx[2]),
        .O(\dataI[123]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \dataI[124]_i_1 
       (.I0(idx[1]),
        .I1(s00_axis_tdata[28]),
        .I2(idx[2]),
        .O(\dataI[124]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \dataI[125]_i_1 
       (.I0(idx[1]),
        .I1(s00_axis_tdata[29]),
        .I2(idx[2]),
        .O(\dataI[125]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \dataI[126]_i_1 
       (.I0(idx[1]),
        .I1(s00_axis_tdata[30]),
        .I2(idx[2]),
        .O(\dataI[126]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \dataI[127]_i_1 
       (.I0(idx[1]),
        .I1(s00_axis_tdata[31]),
        .I2(idx[2]),
        .O(\dataI[127]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \dataI[64]_i_1 
       (.I0(idx[2]),
        .I1(s00_axis_tdata[16]),
        .I2(idx[1]),
        .O(\dataI[64]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \dataI[65]_i_1 
       (.I0(idx[2]),
        .I1(s00_axis_tdata[17]),
        .I2(idx[1]),
        .O(\dataI[65]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \dataI[66]_i_1 
       (.I0(idx[2]),
        .I1(s00_axis_tdata[18]),
        .I2(idx[1]),
        .O(\dataI[66]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \dataI[67]_i_1 
       (.I0(idx[2]),
        .I1(s00_axis_tdata[19]),
        .I2(idx[1]),
        .O(\dataI[67]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \dataI[68]_i_1 
       (.I0(idx[2]),
        .I1(s00_axis_tdata[20]),
        .I2(idx[1]),
        .O(\dataI[68]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \dataI[69]_i_1 
       (.I0(idx[2]),
        .I1(s00_axis_tdata[21]),
        .I2(idx[1]),
        .O(\dataI[69]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \dataI[70]_i_1 
       (.I0(idx[2]),
        .I1(s00_axis_tdata[22]),
        .I2(idx[1]),
        .O(\dataI[70]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \dataI[71]_i_1 
       (.I0(idx[2]),
        .I1(s00_axis_tdata[23]),
        .I2(idx[1]),
        .O(\dataI[71]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \dataI[72]_i_1 
       (.I0(idx[2]),
        .I1(s00_axis_tdata[24]),
        .I2(idx[1]),
        .O(\dataI[72]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \dataI[73]_i_1 
       (.I0(idx[2]),
        .I1(s00_axis_tdata[25]),
        .I2(idx[1]),
        .O(\dataI[73]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \dataI[74]_i_1 
       (.I0(idx[2]),
        .I1(s00_axis_tdata[26]),
        .I2(idx[1]),
        .O(\dataI[74]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \dataI[75]_i_1 
       (.I0(idx[2]),
        .I1(s00_axis_tdata[27]),
        .I2(idx[1]),
        .O(\dataI[75]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \dataI[76]_i_1 
       (.I0(idx[2]),
        .I1(s00_axis_tdata[28]),
        .I2(idx[1]),
        .O(\dataI[76]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \dataI[77]_i_1 
       (.I0(idx[2]),
        .I1(s00_axis_tdata[29]),
        .I2(idx[1]),
        .O(\dataI[77]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \dataI[78]_i_1 
       (.I0(idx[2]),
        .I1(s00_axis_tdata[30]),
        .I2(idx[1]),
        .O(\dataI[78]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \dataI[79]_i_1 
       (.I0(idx[2]),
        .I1(s00_axis_tdata[31]),
        .I2(idx[1]),
        .O(\dataI[79]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \dataI[80]_i_1 
       (.I0(s00_axis_tdata[16]),
        .I1(idx[2]),
        .I2(idx[1]),
        .O(\dataI[80]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \dataI[81]_i_1 
       (.I0(s00_axis_tdata[17]),
        .I1(idx[2]),
        .I2(idx[1]),
        .O(\dataI[81]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \dataI[82]_i_1 
       (.I0(s00_axis_tdata[18]),
        .I1(idx[2]),
        .I2(idx[1]),
        .O(\dataI[82]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \dataI[83]_i_1 
       (.I0(s00_axis_tdata[19]),
        .I1(idx[2]),
        .I2(idx[1]),
        .O(\dataI[83]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \dataI[84]_i_1 
       (.I0(s00_axis_tdata[20]),
        .I1(idx[2]),
        .I2(idx[1]),
        .O(\dataI[84]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \dataI[85]_i_1 
       (.I0(s00_axis_tdata[21]),
        .I1(idx[2]),
        .I2(idx[1]),
        .O(\dataI[85]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \dataI[86]_i_1 
       (.I0(s00_axis_tdata[22]),
        .I1(idx[2]),
        .I2(idx[1]),
        .O(\dataI[86]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \dataI[87]_i_1 
       (.I0(s00_axis_tdata[23]),
        .I1(idx[2]),
        .I2(idx[1]),
        .O(\dataI[87]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \dataI[88]_i_1 
       (.I0(s00_axis_tdata[24]),
        .I1(idx[2]),
        .I2(idx[1]),
        .O(\dataI[88]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \dataI[89]_i_1 
       (.I0(s00_axis_tdata[25]),
        .I1(idx[2]),
        .I2(idx[1]),
        .O(\dataI[89]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \dataI[90]_i_1 
       (.I0(s00_axis_tdata[26]),
        .I1(idx[2]),
        .I2(idx[1]),
        .O(\dataI[90]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \dataI[91]_i_1 
       (.I0(s00_axis_tdata[27]),
        .I1(idx[2]),
        .I2(idx[1]),
        .O(\dataI[91]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \dataI[92]_i_1 
       (.I0(s00_axis_tdata[28]),
        .I1(idx[2]),
        .I2(idx[1]),
        .O(\dataI[92]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \dataI[93]_i_1 
       (.I0(s00_axis_tdata[29]),
        .I1(idx[2]),
        .I2(idx[1]),
        .O(\dataI[93]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \dataI[94]_i_1 
       (.I0(s00_axis_tdata[30]),
        .I1(idx[2]),
        .I2(idx[1]),
        .O(\dataI[94]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \dataI[95]_i_1 
       (.I0(s00_axis_tdata[31]),
        .I1(idx[2]),
        .I2(idx[1]),
        .O(\dataI[95]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \dataI[96]_i_1 
       (.I0(idx[1]),
        .I1(idx[2]),
        .I2(s00_axis_tdata[16]),
        .O(\dataI[96]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \dataI[97]_i_1 
       (.I0(idx[1]),
        .I1(idx[2]),
        .I2(s00_axis_tdata[17]),
        .O(\dataI[97]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \dataI[98]_i_1 
       (.I0(idx[1]),
        .I1(idx[2]),
        .I2(s00_axis_tdata[18]),
        .O(\dataI[98]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \dataI[99]_i_1 
       (.I0(idx[1]),
        .I1(idx[2]),
        .I2(s00_axis_tdata[19]),
        .O(\dataI[99]_i_1_n_0 ));
  FDRE \dataI_reg[0] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(\dataI[64]_i_1_n_0 ),
        .Q(dataI[0]),
        .R(1'b0));
  FDRE \dataI_reg[100] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(\dataI[100]_i_1_n_0 ),
        .Q(dataI[100]),
        .R(1'b0));
  FDRE \dataI_reg[101] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(\dataI[101]_i_1_n_0 ),
        .Q(dataI[101]),
        .R(1'b0));
  FDRE \dataI_reg[102] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(\dataI[102]_i_1_n_0 ),
        .Q(dataI[102]),
        .R(1'b0));
  FDRE \dataI_reg[103] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(\dataI[103]_i_1_n_0 ),
        .Q(dataI[103]),
        .R(1'b0));
  FDRE \dataI_reg[104] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(\dataI[104]_i_1_n_0 ),
        .Q(dataI[104]),
        .R(1'b0));
  FDRE \dataI_reg[105] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(\dataI[105]_i_1_n_0 ),
        .Q(dataI[105]),
        .R(1'b0));
  FDRE \dataI_reg[106] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(\dataI[106]_i_1_n_0 ),
        .Q(dataI[106]),
        .R(1'b0));
  FDRE \dataI_reg[107] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(\dataI[107]_i_1_n_0 ),
        .Q(dataI[107]),
        .R(1'b0));
  FDRE \dataI_reg[108] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(\dataI[108]_i_1_n_0 ),
        .Q(dataI[108]),
        .R(1'b0));
  FDRE \dataI_reg[109] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(\dataI[109]_i_1_n_0 ),
        .Q(dataI[109]),
        .R(1'b0));
  FDRE \dataI_reg[10] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(\dataI[74]_i_1_n_0 ),
        .Q(dataI[10]),
        .R(1'b0));
  FDRE \dataI_reg[110] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(\dataI[110]_i_1_n_0 ),
        .Q(dataI[110]),
        .R(1'b0));
  FDRE \dataI_reg[111] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(\dataI[111]_i_1_n_0 ),
        .Q(dataI[111]),
        .R(1'b0));
  FDRE \dataI_reg[112] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(\dataI[112]_i_1_n_0 ),
        .Q(dataI[112]),
        .R(1'b0));
  FDRE \dataI_reg[113] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(\dataI[113]_i_1_n_0 ),
        .Q(dataI[113]),
        .R(1'b0));
  FDRE \dataI_reg[114] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(\dataI[114]_i_1_n_0 ),
        .Q(dataI[114]),
        .R(1'b0));
  FDRE \dataI_reg[115] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(\dataI[115]_i_1_n_0 ),
        .Q(dataI[115]),
        .R(1'b0));
  FDRE \dataI_reg[116] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(\dataI[116]_i_1_n_0 ),
        .Q(dataI[116]),
        .R(1'b0));
  FDRE \dataI_reg[117] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(\dataI[117]_i_1_n_0 ),
        .Q(dataI[117]),
        .R(1'b0));
  FDRE \dataI_reg[118] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(\dataI[118]_i_1_n_0 ),
        .Q(dataI[118]),
        .R(1'b0));
  FDRE \dataI_reg[119] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(\dataI[119]_i_1_n_0 ),
        .Q(dataI[119]),
        .R(1'b0));
  FDRE \dataI_reg[11] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(\dataI[75]_i_1_n_0 ),
        .Q(dataI[11]),
        .R(1'b0));
  FDRE \dataI_reg[120] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(\dataI[120]_i_1_n_0 ),
        .Q(dataI[120]),
        .R(1'b0));
  FDRE \dataI_reg[121] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(\dataI[121]_i_1_n_0 ),
        .Q(dataI[121]),
        .R(1'b0));
  FDRE \dataI_reg[122] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(\dataI[122]_i_1_n_0 ),
        .Q(dataI[122]),
        .R(1'b0));
  FDRE \dataI_reg[123] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(\dataI[123]_i_1_n_0 ),
        .Q(dataI[123]),
        .R(1'b0));
  FDRE \dataI_reg[124] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(\dataI[124]_i_1_n_0 ),
        .Q(dataI[124]),
        .R(1'b0));
  FDRE \dataI_reg[125] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(\dataI[125]_i_1_n_0 ),
        .Q(dataI[125]),
        .R(1'b0));
  FDRE \dataI_reg[126] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(\dataI[126]_i_1_n_0 ),
        .Q(dataI[126]),
        .R(1'b0));
  FDRE \dataI_reg[127] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(\dataI[127]_i_1_n_0 ),
        .Q(dataI[127]),
        .R(1'b0));
  FDRE \dataI_reg[12] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(\dataI[76]_i_1_n_0 ),
        .Q(dataI[12]),
        .R(1'b0));
  FDRE \dataI_reg[13] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(\dataI[77]_i_1_n_0 ),
        .Q(dataI[13]),
        .R(1'b0));
  FDRE \dataI_reg[14] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(\dataI[78]_i_1_n_0 ),
        .Q(dataI[14]),
        .R(1'b0));
  FDRE \dataI_reg[15] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(\dataI[79]_i_1_n_0 ),
        .Q(dataI[15]),
        .R(1'b0));
  FDRE \dataI_reg[16] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(\dataI[80]_i_1_n_0 ),
        .Q(dataI[16]),
        .R(1'b0));
  FDRE \dataI_reg[17] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(\dataI[81]_i_1_n_0 ),
        .Q(dataI[17]),
        .R(1'b0));
  FDRE \dataI_reg[18] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(\dataI[82]_i_1_n_0 ),
        .Q(dataI[18]),
        .R(1'b0));
  FDRE \dataI_reg[19] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(\dataI[83]_i_1_n_0 ),
        .Q(dataI[19]),
        .R(1'b0));
  FDRE \dataI_reg[1] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(\dataI[65]_i_1_n_0 ),
        .Q(dataI[1]),
        .R(1'b0));
  FDRE \dataI_reg[20] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(\dataI[84]_i_1_n_0 ),
        .Q(dataI[20]),
        .R(1'b0));
  FDRE \dataI_reg[21] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(\dataI[85]_i_1_n_0 ),
        .Q(dataI[21]),
        .R(1'b0));
  FDRE \dataI_reg[22] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(\dataI[86]_i_1_n_0 ),
        .Q(dataI[22]),
        .R(1'b0));
  FDRE \dataI_reg[23] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(\dataI[87]_i_1_n_0 ),
        .Q(dataI[23]),
        .R(1'b0));
  FDRE \dataI_reg[24] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(\dataI[88]_i_1_n_0 ),
        .Q(dataI[24]),
        .R(1'b0));
  FDRE \dataI_reg[25] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(\dataI[89]_i_1_n_0 ),
        .Q(dataI[25]),
        .R(1'b0));
  FDRE \dataI_reg[26] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(\dataI[90]_i_1_n_0 ),
        .Q(dataI[26]),
        .R(1'b0));
  FDRE \dataI_reg[27] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(\dataI[91]_i_1_n_0 ),
        .Q(dataI[27]),
        .R(1'b0));
  FDRE \dataI_reg[28] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(\dataI[92]_i_1_n_0 ),
        .Q(dataI[28]),
        .R(1'b0));
  FDRE \dataI_reg[29] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(\dataI[93]_i_1_n_0 ),
        .Q(dataI[29]),
        .R(1'b0));
  FDRE \dataI_reg[2] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(\dataI[66]_i_1_n_0 ),
        .Q(dataI[2]),
        .R(1'b0));
  FDRE \dataI_reg[30] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(\dataI[94]_i_1_n_0 ),
        .Q(dataI[30]),
        .R(1'b0));
  FDRE \dataI_reg[31] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(\dataI[95]_i_1_n_0 ),
        .Q(dataI[31]),
        .R(1'b0));
  FDRE \dataI_reg[32] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(\dataI[96]_i_1_n_0 ),
        .Q(dataI[32]),
        .R(1'b0));
  FDRE \dataI_reg[33] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(\dataI[97]_i_1_n_0 ),
        .Q(dataI[33]),
        .R(1'b0));
  FDRE \dataI_reg[34] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(\dataI[98]_i_1_n_0 ),
        .Q(dataI[34]),
        .R(1'b0));
  FDRE \dataI_reg[35] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(\dataI[99]_i_1_n_0 ),
        .Q(dataI[35]),
        .R(1'b0));
  FDRE \dataI_reg[36] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(\dataI[100]_i_1_n_0 ),
        .Q(dataI[36]),
        .R(1'b0));
  FDRE \dataI_reg[37] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(\dataI[101]_i_1_n_0 ),
        .Q(dataI[37]),
        .R(1'b0));
  FDRE \dataI_reg[38] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(\dataI[102]_i_1_n_0 ),
        .Q(dataI[38]),
        .R(1'b0));
  FDRE \dataI_reg[39] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(\dataI[103]_i_1_n_0 ),
        .Q(dataI[39]),
        .R(1'b0));
  FDRE \dataI_reg[3] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(\dataI[67]_i_1_n_0 ),
        .Q(dataI[3]),
        .R(1'b0));
  FDRE \dataI_reg[40] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(\dataI[104]_i_1_n_0 ),
        .Q(dataI[40]),
        .R(1'b0));
  FDRE \dataI_reg[41] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(\dataI[105]_i_1_n_0 ),
        .Q(dataI[41]),
        .R(1'b0));
  FDRE \dataI_reg[42] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(\dataI[106]_i_1_n_0 ),
        .Q(dataI[42]),
        .R(1'b0));
  FDRE \dataI_reg[43] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(\dataI[107]_i_1_n_0 ),
        .Q(dataI[43]),
        .R(1'b0));
  FDRE \dataI_reg[44] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(\dataI[108]_i_1_n_0 ),
        .Q(dataI[44]),
        .R(1'b0));
  FDRE \dataI_reg[45] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(\dataI[109]_i_1_n_0 ),
        .Q(dataI[45]),
        .R(1'b0));
  FDRE \dataI_reg[46] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(\dataI[110]_i_1_n_0 ),
        .Q(dataI[46]),
        .R(1'b0));
  FDRE \dataI_reg[47] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(\dataI[111]_i_1_n_0 ),
        .Q(dataI[47]),
        .R(1'b0));
  FDRE \dataI_reg[48] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(\dataI[112]_i_1_n_0 ),
        .Q(dataI[48]),
        .R(1'b0));
  FDRE \dataI_reg[49] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(\dataI[113]_i_1_n_0 ),
        .Q(dataI[49]),
        .R(1'b0));
  FDRE \dataI_reg[4] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(\dataI[68]_i_1_n_0 ),
        .Q(dataI[4]),
        .R(1'b0));
  FDRE \dataI_reg[50] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(\dataI[114]_i_1_n_0 ),
        .Q(dataI[50]),
        .R(1'b0));
  FDRE \dataI_reg[51] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(\dataI[115]_i_1_n_0 ),
        .Q(dataI[51]),
        .R(1'b0));
  FDRE \dataI_reg[52] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(\dataI[116]_i_1_n_0 ),
        .Q(dataI[52]),
        .R(1'b0));
  FDRE \dataI_reg[53] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(\dataI[117]_i_1_n_0 ),
        .Q(dataI[53]),
        .R(1'b0));
  FDRE \dataI_reg[54] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(\dataI[118]_i_1_n_0 ),
        .Q(dataI[54]),
        .R(1'b0));
  FDRE \dataI_reg[55] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(\dataI[119]_i_1_n_0 ),
        .Q(dataI[55]),
        .R(1'b0));
  FDRE \dataI_reg[56] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(\dataI[120]_i_1_n_0 ),
        .Q(dataI[56]),
        .R(1'b0));
  FDRE \dataI_reg[57] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(\dataI[121]_i_1_n_0 ),
        .Q(dataI[57]),
        .R(1'b0));
  FDRE \dataI_reg[58] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(\dataI[122]_i_1_n_0 ),
        .Q(dataI[58]),
        .R(1'b0));
  FDRE \dataI_reg[59] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(\dataI[123]_i_1_n_0 ),
        .Q(dataI[59]),
        .R(1'b0));
  FDRE \dataI_reg[5] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(\dataI[69]_i_1_n_0 ),
        .Q(dataI[5]),
        .R(1'b0));
  FDRE \dataI_reg[60] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(\dataI[124]_i_1_n_0 ),
        .Q(dataI[60]),
        .R(1'b0));
  FDRE \dataI_reg[61] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(\dataI[125]_i_1_n_0 ),
        .Q(dataI[61]),
        .R(1'b0));
  FDRE \dataI_reg[62] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(\dataI[126]_i_1_n_0 ),
        .Q(dataI[62]),
        .R(1'b0));
  FDRE \dataI_reg[63] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(\dataI[127]_i_1_n_0 ),
        .Q(dataI[63]),
        .R(1'b0));
  FDRE \dataI_reg[64] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(\dataI[64]_i_1_n_0 ),
        .Q(dataI[64]),
        .R(1'b0));
  FDRE \dataI_reg[65] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(\dataI[65]_i_1_n_0 ),
        .Q(dataI[65]),
        .R(1'b0));
  FDRE \dataI_reg[66] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(\dataI[66]_i_1_n_0 ),
        .Q(dataI[66]),
        .R(1'b0));
  FDRE \dataI_reg[67] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(\dataI[67]_i_1_n_0 ),
        .Q(dataI[67]),
        .R(1'b0));
  FDRE \dataI_reg[68] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(\dataI[68]_i_1_n_0 ),
        .Q(dataI[68]),
        .R(1'b0));
  FDRE \dataI_reg[69] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(\dataI[69]_i_1_n_0 ),
        .Q(dataI[69]),
        .R(1'b0));
  FDRE \dataI_reg[6] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(\dataI[70]_i_1_n_0 ),
        .Q(dataI[6]),
        .R(1'b0));
  FDRE \dataI_reg[70] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(\dataI[70]_i_1_n_0 ),
        .Q(dataI[70]),
        .R(1'b0));
  FDRE \dataI_reg[71] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(\dataI[71]_i_1_n_0 ),
        .Q(dataI[71]),
        .R(1'b0));
  FDRE \dataI_reg[72] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(\dataI[72]_i_1_n_0 ),
        .Q(dataI[72]),
        .R(1'b0));
  FDRE \dataI_reg[73] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(\dataI[73]_i_1_n_0 ),
        .Q(dataI[73]),
        .R(1'b0));
  FDRE \dataI_reg[74] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(\dataI[74]_i_1_n_0 ),
        .Q(dataI[74]),
        .R(1'b0));
  FDRE \dataI_reg[75] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(\dataI[75]_i_1_n_0 ),
        .Q(dataI[75]),
        .R(1'b0));
  FDRE \dataI_reg[76] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(\dataI[76]_i_1_n_0 ),
        .Q(dataI[76]),
        .R(1'b0));
  FDRE \dataI_reg[77] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(\dataI[77]_i_1_n_0 ),
        .Q(dataI[77]),
        .R(1'b0));
  FDRE \dataI_reg[78] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(\dataI[78]_i_1_n_0 ),
        .Q(dataI[78]),
        .R(1'b0));
  FDRE \dataI_reg[79] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(\dataI[79]_i_1_n_0 ),
        .Q(dataI[79]),
        .R(1'b0));
  FDRE \dataI_reg[7] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(\dataI[71]_i_1_n_0 ),
        .Q(dataI[7]),
        .R(1'b0));
  FDRE \dataI_reg[80] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(\dataI[80]_i_1_n_0 ),
        .Q(dataI[80]),
        .R(1'b0));
  FDRE \dataI_reg[81] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(\dataI[81]_i_1_n_0 ),
        .Q(dataI[81]),
        .R(1'b0));
  FDRE \dataI_reg[82] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(\dataI[82]_i_1_n_0 ),
        .Q(dataI[82]),
        .R(1'b0));
  FDRE \dataI_reg[83] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(\dataI[83]_i_1_n_0 ),
        .Q(dataI[83]),
        .R(1'b0));
  FDRE \dataI_reg[84] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(\dataI[84]_i_1_n_0 ),
        .Q(dataI[84]),
        .R(1'b0));
  FDRE \dataI_reg[85] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(\dataI[85]_i_1_n_0 ),
        .Q(dataI[85]),
        .R(1'b0));
  FDRE \dataI_reg[86] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(\dataI[86]_i_1_n_0 ),
        .Q(dataI[86]),
        .R(1'b0));
  FDRE \dataI_reg[87] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(\dataI[87]_i_1_n_0 ),
        .Q(dataI[87]),
        .R(1'b0));
  FDRE \dataI_reg[88] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(\dataI[88]_i_1_n_0 ),
        .Q(dataI[88]),
        .R(1'b0));
  FDRE \dataI_reg[89] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(\dataI[89]_i_1_n_0 ),
        .Q(dataI[89]),
        .R(1'b0));
  FDRE \dataI_reg[8] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(\dataI[72]_i_1_n_0 ),
        .Q(dataI[8]),
        .R(1'b0));
  FDRE \dataI_reg[90] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(\dataI[90]_i_1_n_0 ),
        .Q(dataI[90]),
        .R(1'b0));
  FDRE \dataI_reg[91] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(\dataI[91]_i_1_n_0 ),
        .Q(dataI[91]),
        .R(1'b0));
  FDRE \dataI_reg[92] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(\dataI[92]_i_1_n_0 ),
        .Q(dataI[92]),
        .R(1'b0));
  FDRE \dataI_reg[93] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(\dataI[93]_i_1_n_0 ),
        .Q(dataI[93]),
        .R(1'b0));
  FDRE \dataI_reg[94] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(\dataI[94]_i_1_n_0 ),
        .Q(dataI[94]),
        .R(1'b0));
  FDRE \dataI_reg[95] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(\dataI[95]_i_1_n_0 ),
        .Q(dataI[95]),
        .R(1'b0));
  FDRE \dataI_reg[96] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(\dataI[96]_i_1_n_0 ),
        .Q(dataI[96]),
        .R(1'b0));
  FDRE \dataI_reg[97] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(\dataI[97]_i_1_n_0 ),
        .Q(dataI[97]),
        .R(1'b0));
  FDRE \dataI_reg[98] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(\dataI[98]_i_1_n_0 ),
        .Q(dataI[98]),
        .R(1'b0));
  FDRE \dataI_reg[99] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(\dataI[99]_i_1_n_0 ),
        .Q(dataI[99]),
        .R(1'b0));
  FDRE \dataI_reg[9] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(\dataI[73]_i_1_n_0 ),
        .Q(dataI[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \dataR[100]_i_1 
       (.I0(idx[1]),
        .I1(idx[2]),
        .I2(s00_axis_tdata[4]),
        .O(\dataR[100]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \dataR[101]_i_1 
       (.I0(idx[1]),
        .I1(idx[2]),
        .I2(s00_axis_tdata[5]),
        .O(\dataR[101]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \dataR[102]_i_1 
       (.I0(idx[1]),
        .I1(idx[2]),
        .I2(s00_axis_tdata[6]),
        .O(\dataR[102]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \dataR[103]_i_1 
       (.I0(idx[1]),
        .I1(idx[2]),
        .I2(s00_axis_tdata[7]),
        .O(\dataR[103]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \dataR[104]_i_1 
       (.I0(idx[1]),
        .I1(idx[2]),
        .I2(s00_axis_tdata[8]),
        .O(\dataR[104]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \dataR[105]_i_1 
       (.I0(idx[1]),
        .I1(idx[2]),
        .I2(s00_axis_tdata[9]),
        .O(\dataR[105]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \dataR[106]_i_1 
       (.I0(idx[1]),
        .I1(idx[2]),
        .I2(s00_axis_tdata[10]),
        .O(\dataR[106]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \dataR[107]_i_1 
       (.I0(idx[1]),
        .I1(idx[2]),
        .I2(s00_axis_tdata[11]),
        .O(\dataR[107]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \dataR[108]_i_1 
       (.I0(idx[1]),
        .I1(idx[2]),
        .I2(s00_axis_tdata[12]),
        .O(\dataR[108]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \dataR[109]_i_1 
       (.I0(idx[1]),
        .I1(idx[2]),
        .I2(s00_axis_tdata[13]),
        .O(\dataR[109]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \dataR[110]_i_1 
       (.I0(idx[1]),
        .I1(idx[2]),
        .I2(s00_axis_tdata[14]),
        .O(\dataR[110]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \dataR[111]_i_1 
       (.I0(s00_axis_tvalid),
        .I1(dma_tready_reg_0),
        .I2(idx[1]),
        .I3(idx[2]),
        .I4(idx[0]),
        .O(dataR[111]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \dataR[111]_i_2 
       (.I0(idx[1]),
        .I1(idx[2]),
        .I2(s00_axis_tdata[15]),
        .O(\dataR[111]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \dataR[112]_i_1 
       (.I0(idx[1]),
        .I1(s00_axis_tdata[0]),
        .I2(idx[2]),
        .O(\dataR[112]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \dataR[113]_i_1 
       (.I0(idx[1]),
        .I1(s00_axis_tdata[1]),
        .I2(idx[2]),
        .O(\dataR[113]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \dataR[114]_i_1 
       (.I0(idx[1]),
        .I1(s00_axis_tdata[2]),
        .I2(idx[2]),
        .O(\dataR[114]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \dataR[115]_i_1 
       (.I0(idx[1]),
        .I1(s00_axis_tdata[3]),
        .I2(idx[2]),
        .O(\dataR[115]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \dataR[116]_i_1 
       (.I0(idx[1]),
        .I1(s00_axis_tdata[4]),
        .I2(idx[2]),
        .O(\dataR[116]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \dataR[117]_i_1 
       (.I0(idx[1]),
        .I1(s00_axis_tdata[5]),
        .I2(idx[2]),
        .O(\dataR[117]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \dataR[118]_i_1 
       (.I0(idx[1]),
        .I1(s00_axis_tdata[6]),
        .I2(idx[2]),
        .O(\dataR[118]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \dataR[119]_i_1 
       (.I0(idx[1]),
        .I1(s00_axis_tdata[7]),
        .I2(idx[2]),
        .O(\dataR[119]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \dataR[120]_i_1 
       (.I0(idx[1]),
        .I1(s00_axis_tdata[8]),
        .I2(idx[2]),
        .O(\dataR[120]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \dataR[121]_i_1 
       (.I0(idx[1]),
        .I1(s00_axis_tdata[9]),
        .I2(idx[2]),
        .O(\dataR[121]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \dataR[122]_i_1 
       (.I0(idx[1]),
        .I1(s00_axis_tdata[10]),
        .I2(idx[2]),
        .O(\dataR[122]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \dataR[123]_i_1 
       (.I0(idx[1]),
        .I1(s00_axis_tdata[11]),
        .I2(idx[2]),
        .O(\dataR[123]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \dataR[124]_i_1 
       (.I0(idx[1]),
        .I1(s00_axis_tdata[12]),
        .I2(idx[2]),
        .O(\dataR[124]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \dataR[125]_i_1 
       (.I0(idx[1]),
        .I1(s00_axis_tdata[13]),
        .I2(idx[2]),
        .O(\dataR[125]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \dataR[126]_i_1 
       (.I0(idx[1]),
        .I1(s00_axis_tdata[14]),
        .I2(idx[2]),
        .O(\dataR[126]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataR[127]_i_1 
       (.I0(s00_axis_tvalid),
        .I1(dma_tready_reg_0),
        .I2(idx[1]),
        .I3(idx[2]),
        .I4(idx[0]),
        .O(dataR[127]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \dataR[127]_i_2 
       (.I0(idx[1]),
        .I1(s00_axis_tdata[15]),
        .I2(idx[2]),
        .O(\dataR[127]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \dataR[15]_i_1 
       (.I0(s00_axis_tvalid),
        .I1(dma_tready_reg_0),
        .I2(idx[0]),
        .I3(idx[2]),
        .I4(idx[1]),
        .O(dataR[15]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \dataR[31]_i_1 
       (.I0(s00_axis_tvalid),
        .I1(dma_tready_reg_0),
        .I2(idx[0]),
        .I3(idx[2]),
        .I4(idx[1]),
        .O(dataR[31]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \dataR[47]_i_1 
       (.I0(s00_axis_tvalid),
        .I1(dma_tready_reg_0),
        .I2(idx[0]),
        .I3(idx[1]),
        .I4(idx[2]),
        .O(dataR[47]));
  LUT5 #(
    .INIT(32'h08000000)) 
    \dataR[63]_i_1 
       (.I0(s00_axis_tvalid),
        .I1(dma_tready_reg_0),
        .I2(idx[0]),
        .I3(idx[1]),
        .I4(idx[2]),
        .O(dataR[63]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \dataR[64]_i_1 
       (.I0(idx[2]),
        .I1(s00_axis_tdata[0]),
        .I2(idx[1]),
        .O(\dataR[64]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \dataR[65]_i_1 
       (.I0(idx[2]),
        .I1(s00_axis_tdata[1]),
        .I2(idx[1]),
        .O(\dataR[65]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \dataR[66]_i_1 
       (.I0(idx[2]),
        .I1(s00_axis_tdata[2]),
        .I2(idx[1]),
        .O(\dataR[66]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \dataR[67]_i_1 
       (.I0(idx[2]),
        .I1(s00_axis_tdata[3]),
        .I2(idx[1]),
        .O(\dataR[67]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \dataR[68]_i_1 
       (.I0(idx[2]),
        .I1(s00_axis_tdata[4]),
        .I2(idx[1]),
        .O(\dataR[68]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \dataR[69]_i_1 
       (.I0(idx[2]),
        .I1(s00_axis_tdata[5]),
        .I2(idx[1]),
        .O(\dataR[69]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \dataR[70]_i_1 
       (.I0(idx[2]),
        .I1(s00_axis_tdata[6]),
        .I2(idx[1]),
        .O(\dataR[70]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \dataR[71]_i_1 
       (.I0(idx[2]),
        .I1(s00_axis_tdata[7]),
        .I2(idx[1]),
        .O(\dataR[71]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \dataR[72]_i_1 
       (.I0(idx[2]),
        .I1(s00_axis_tdata[8]),
        .I2(idx[1]),
        .O(\dataR[72]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \dataR[73]_i_1 
       (.I0(idx[2]),
        .I1(s00_axis_tdata[9]),
        .I2(idx[1]),
        .O(\dataR[73]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \dataR[74]_i_1 
       (.I0(idx[2]),
        .I1(s00_axis_tdata[10]),
        .I2(idx[1]),
        .O(\dataR[74]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \dataR[75]_i_1 
       (.I0(idx[2]),
        .I1(s00_axis_tdata[11]),
        .I2(idx[1]),
        .O(\dataR[75]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \dataR[76]_i_1 
       (.I0(idx[2]),
        .I1(s00_axis_tdata[12]),
        .I2(idx[1]),
        .O(\dataR[76]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \dataR[77]_i_1 
       (.I0(idx[2]),
        .I1(s00_axis_tdata[13]),
        .I2(idx[1]),
        .O(\dataR[77]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \dataR[78]_i_1 
       (.I0(idx[2]),
        .I1(s00_axis_tdata[14]),
        .I2(idx[1]),
        .O(\dataR[78]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \dataR[79]_i_1 
       (.I0(s00_axis_tvalid),
        .I1(dma_tready_reg_0),
        .I2(idx[2]),
        .I3(idx[1]),
        .I4(idx[0]),
        .O(dataR[79]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \dataR[79]_i_2 
       (.I0(idx[2]),
        .I1(s00_axis_tdata[15]),
        .I2(idx[1]),
        .O(\dataR[79]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \dataR[80]_i_1 
       (.I0(s00_axis_tdata[0]),
        .I1(idx[2]),
        .I2(idx[1]),
        .O(\dataR[80]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \dataR[81]_i_1 
       (.I0(s00_axis_tdata[1]),
        .I1(idx[2]),
        .I2(idx[1]),
        .O(\dataR[81]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \dataR[82]_i_1 
       (.I0(s00_axis_tdata[2]),
        .I1(idx[2]),
        .I2(idx[1]),
        .O(\dataR[82]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \dataR[83]_i_1 
       (.I0(s00_axis_tdata[3]),
        .I1(idx[2]),
        .I2(idx[1]),
        .O(\dataR[83]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \dataR[84]_i_1 
       (.I0(s00_axis_tdata[4]),
        .I1(idx[2]),
        .I2(idx[1]),
        .O(\dataR[84]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \dataR[85]_i_1 
       (.I0(s00_axis_tdata[5]),
        .I1(idx[2]),
        .I2(idx[1]),
        .O(\dataR[85]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \dataR[86]_i_1 
       (.I0(s00_axis_tdata[6]),
        .I1(idx[2]),
        .I2(idx[1]),
        .O(\dataR[86]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \dataR[87]_i_1 
       (.I0(s00_axis_tdata[7]),
        .I1(idx[2]),
        .I2(idx[1]),
        .O(\dataR[87]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \dataR[88]_i_1 
       (.I0(s00_axis_tdata[8]),
        .I1(idx[2]),
        .I2(idx[1]),
        .O(\dataR[88]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \dataR[89]_i_1 
       (.I0(s00_axis_tdata[9]),
        .I1(idx[2]),
        .I2(idx[1]),
        .O(\dataR[89]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \dataR[90]_i_1 
       (.I0(s00_axis_tdata[10]),
        .I1(idx[2]),
        .I2(idx[1]),
        .O(\dataR[90]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \dataR[91]_i_1 
       (.I0(s00_axis_tdata[11]),
        .I1(idx[2]),
        .I2(idx[1]),
        .O(\dataR[91]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \dataR[92]_i_1 
       (.I0(s00_axis_tdata[12]),
        .I1(idx[2]),
        .I2(idx[1]),
        .O(\dataR[92]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \dataR[93]_i_1 
       (.I0(s00_axis_tdata[13]),
        .I1(idx[2]),
        .I2(idx[1]),
        .O(\dataR[93]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \dataR[94]_i_1 
       (.I0(s00_axis_tdata[14]),
        .I1(idx[2]),
        .I2(idx[1]),
        .O(\dataR[94]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \dataR[95]_i_1 
       (.I0(s00_axis_tvalid),
        .I1(dma_tready_reg_0),
        .I2(idx[2]),
        .I3(idx[1]),
        .I4(idx[0]),
        .O(dataR[95]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \dataR[95]_i_2 
       (.I0(s00_axis_tdata[15]),
        .I1(idx[2]),
        .I2(idx[1]),
        .O(\dataR[95]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \dataR[96]_i_1 
       (.I0(idx[1]),
        .I1(idx[2]),
        .I2(s00_axis_tdata[0]),
        .O(\dataR[96]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \dataR[97]_i_1 
       (.I0(idx[1]),
        .I1(idx[2]),
        .I2(s00_axis_tdata[1]),
        .O(\dataR[97]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \dataR[98]_i_1 
       (.I0(idx[1]),
        .I1(idx[2]),
        .I2(s00_axis_tdata[2]),
        .O(\dataR[98]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \dataR[99]_i_1 
       (.I0(idx[1]),
        .I1(idx[2]),
        .I2(s00_axis_tdata[3]),
        .O(\dataR[99]_i_1_n_0 ));
  FDRE \dataR_reg[0] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(\dataR[64]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \dataR_reg[100] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(\dataR[100]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[100] ),
        .R(1'b0));
  FDRE \dataR_reg[101] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(\dataR[101]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[101] ),
        .R(1'b0));
  FDRE \dataR_reg[102] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(\dataR[102]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[102] ),
        .R(1'b0));
  FDRE \dataR_reg[103] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(\dataR[103]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[103] ),
        .R(1'b0));
  FDRE \dataR_reg[104] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(\dataR[104]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[104] ),
        .R(1'b0));
  FDRE \dataR_reg[105] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(\dataR[105]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[105] ),
        .R(1'b0));
  FDRE \dataR_reg[106] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(\dataR[106]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[106] ),
        .R(1'b0));
  FDRE \dataR_reg[107] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(\dataR[107]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[107] ),
        .R(1'b0));
  FDRE \dataR_reg[108] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(\dataR[108]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[108] ),
        .R(1'b0));
  FDRE \dataR_reg[109] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(\dataR[109]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[109] ),
        .R(1'b0));
  FDRE \dataR_reg[10] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(\dataR[74]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \dataR_reg[110] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(\dataR[110]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[110] ),
        .R(1'b0));
  FDRE \dataR_reg[111] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(\dataR[111]_i_2_n_0 ),
        .Q(\dataR_reg_n_0_[111] ),
        .R(1'b0));
  FDRE \dataR_reg[112] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(\dataR[112]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[112] ),
        .R(1'b0));
  FDRE \dataR_reg[113] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(\dataR[113]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[113] ),
        .R(1'b0));
  FDRE \dataR_reg[114] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(\dataR[114]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[114] ),
        .R(1'b0));
  FDRE \dataR_reg[115] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(\dataR[115]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[115] ),
        .R(1'b0));
  FDRE \dataR_reg[116] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(\dataR[116]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[116] ),
        .R(1'b0));
  FDRE \dataR_reg[117] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(\dataR[117]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[117] ),
        .R(1'b0));
  FDRE \dataR_reg[118] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(\dataR[118]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[118] ),
        .R(1'b0));
  FDRE \dataR_reg[119] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(\dataR[119]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[119] ),
        .R(1'b0));
  FDRE \dataR_reg[11] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(\dataR[75]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \dataR_reg[120] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(\dataR[120]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[120] ),
        .R(1'b0));
  FDRE \dataR_reg[121] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(\dataR[121]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[121] ),
        .R(1'b0));
  FDRE \dataR_reg[122] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(\dataR[122]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[122] ),
        .R(1'b0));
  FDRE \dataR_reg[123] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(\dataR[123]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[123] ),
        .R(1'b0));
  FDRE \dataR_reg[124] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(\dataR[124]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[124] ),
        .R(1'b0));
  FDRE \dataR_reg[125] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(\dataR[125]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[125] ),
        .R(1'b0));
  FDRE \dataR_reg[126] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(\dataR[126]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[126] ),
        .R(1'b0));
  FDRE \dataR_reg[127] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(\dataR[127]_i_2_n_0 ),
        .Q(\dataR_reg_n_0_[127] ),
        .R(1'b0));
  FDRE \dataR_reg[12] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(\dataR[76]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \dataR_reg[13] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(\dataR[77]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \dataR_reg[14] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(\dataR[78]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \dataR_reg[15] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(\dataR[79]_i_2_n_0 ),
        .Q(\dataR_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \dataR_reg[16] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(\dataR[80]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \dataR_reg[17] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(\dataR[81]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \dataR_reg[18] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(\dataR[82]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \dataR_reg[19] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(\dataR[83]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \dataR_reg[1] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(\dataR[65]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \dataR_reg[20] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(\dataR[84]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \dataR_reg[21] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(\dataR[85]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \dataR_reg[22] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(\dataR[86]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \dataR_reg[23] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(\dataR[87]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \dataR_reg[24] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(\dataR[88]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \dataR_reg[25] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(\dataR[89]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \dataR_reg[26] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(\dataR[90]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \dataR_reg[27] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(\dataR[91]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \dataR_reg[28] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(\dataR[92]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \dataR_reg[29] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(\dataR[93]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \dataR_reg[2] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(\dataR[66]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \dataR_reg[30] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(\dataR[94]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \dataR_reg[31] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(\dataR[95]_i_2_n_0 ),
        .Q(\dataR_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \dataR_reg[32] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(\dataR[96]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[32] ),
        .R(1'b0));
  FDRE \dataR_reg[33] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(\dataR[97]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[33] ),
        .R(1'b0));
  FDRE \dataR_reg[34] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(\dataR[98]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[34] ),
        .R(1'b0));
  FDRE \dataR_reg[35] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(\dataR[99]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[35] ),
        .R(1'b0));
  FDRE \dataR_reg[36] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(\dataR[100]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[36] ),
        .R(1'b0));
  FDRE \dataR_reg[37] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(\dataR[101]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[37] ),
        .R(1'b0));
  FDRE \dataR_reg[38] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(\dataR[102]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[38] ),
        .R(1'b0));
  FDRE \dataR_reg[39] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(\dataR[103]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[39] ),
        .R(1'b0));
  FDRE \dataR_reg[3] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(\dataR[67]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \dataR_reg[40] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(\dataR[104]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[40] ),
        .R(1'b0));
  FDRE \dataR_reg[41] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(\dataR[105]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[41] ),
        .R(1'b0));
  FDRE \dataR_reg[42] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(\dataR[106]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[42] ),
        .R(1'b0));
  FDRE \dataR_reg[43] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(\dataR[107]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[43] ),
        .R(1'b0));
  FDRE \dataR_reg[44] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(\dataR[108]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[44] ),
        .R(1'b0));
  FDRE \dataR_reg[45] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(\dataR[109]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[45] ),
        .R(1'b0));
  FDRE \dataR_reg[46] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(\dataR[110]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[46] ),
        .R(1'b0));
  FDRE \dataR_reg[47] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(\dataR[111]_i_2_n_0 ),
        .Q(\dataR_reg_n_0_[47] ),
        .R(1'b0));
  FDRE \dataR_reg[48] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(\dataR[112]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[48] ),
        .R(1'b0));
  FDRE \dataR_reg[49] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(\dataR[113]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[49] ),
        .R(1'b0));
  FDRE \dataR_reg[4] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(\dataR[68]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \dataR_reg[50] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(\dataR[114]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[50] ),
        .R(1'b0));
  FDRE \dataR_reg[51] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(\dataR[115]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[51] ),
        .R(1'b0));
  FDRE \dataR_reg[52] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(\dataR[116]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[52] ),
        .R(1'b0));
  FDRE \dataR_reg[53] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(\dataR[117]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[53] ),
        .R(1'b0));
  FDRE \dataR_reg[54] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(\dataR[118]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[54] ),
        .R(1'b0));
  FDRE \dataR_reg[55] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(\dataR[119]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[55] ),
        .R(1'b0));
  FDRE \dataR_reg[56] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(\dataR[120]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[56] ),
        .R(1'b0));
  FDRE \dataR_reg[57] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(\dataR[121]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[57] ),
        .R(1'b0));
  FDRE \dataR_reg[58] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(\dataR[122]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[58] ),
        .R(1'b0));
  FDRE \dataR_reg[59] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(\dataR[123]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[59] ),
        .R(1'b0));
  FDRE \dataR_reg[5] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(\dataR[69]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \dataR_reg[60] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(\dataR[124]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[60] ),
        .R(1'b0));
  FDRE \dataR_reg[61] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(\dataR[125]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[61] ),
        .R(1'b0));
  FDRE \dataR_reg[62] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(\dataR[126]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[62] ),
        .R(1'b0));
  FDRE \dataR_reg[63] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(\dataR[127]_i_2_n_0 ),
        .Q(\dataR_reg_n_0_[63] ),
        .R(1'b0));
  FDRE \dataR_reg[64] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(\dataR[64]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[64] ),
        .R(1'b0));
  FDRE \dataR_reg[65] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(\dataR[65]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[65] ),
        .R(1'b0));
  FDRE \dataR_reg[66] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(\dataR[66]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[66] ),
        .R(1'b0));
  FDRE \dataR_reg[67] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(\dataR[67]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[67] ),
        .R(1'b0));
  FDRE \dataR_reg[68] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(\dataR[68]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[68] ),
        .R(1'b0));
  FDRE \dataR_reg[69] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(\dataR[69]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[69] ),
        .R(1'b0));
  FDRE \dataR_reg[6] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(\dataR[70]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \dataR_reg[70] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(\dataR[70]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[70] ),
        .R(1'b0));
  FDRE \dataR_reg[71] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(\dataR[71]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[71] ),
        .R(1'b0));
  FDRE \dataR_reg[72] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(\dataR[72]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[72] ),
        .R(1'b0));
  FDRE \dataR_reg[73] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(\dataR[73]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[73] ),
        .R(1'b0));
  FDRE \dataR_reg[74] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(\dataR[74]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[74] ),
        .R(1'b0));
  FDRE \dataR_reg[75] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(\dataR[75]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[75] ),
        .R(1'b0));
  FDRE \dataR_reg[76] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(\dataR[76]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[76] ),
        .R(1'b0));
  FDRE \dataR_reg[77] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(\dataR[77]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[77] ),
        .R(1'b0));
  FDRE \dataR_reg[78] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(\dataR[78]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[78] ),
        .R(1'b0));
  FDRE \dataR_reg[79] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(\dataR[79]_i_2_n_0 ),
        .Q(\dataR_reg_n_0_[79] ),
        .R(1'b0));
  FDRE \dataR_reg[7] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(\dataR[71]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \dataR_reg[80] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(\dataR[80]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[80] ),
        .R(1'b0));
  FDRE \dataR_reg[81] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(\dataR[81]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[81] ),
        .R(1'b0));
  FDRE \dataR_reg[82] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(\dataR[82]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[82] ),
        .R(1'b0));
  FDRE \dataR_reg[83] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(\dataR[83]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[83] ),
        .R(1'b0));
  FDRE \dataR_reg[84] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(\dataR[84]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[84] ),
        .R(1'b0));
  FDRE \dataR_reg[85] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(\dataR[85]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[85] ),
        .R(1'b0));
  FDRE \dataR_reg[86] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(\dataR[86]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[86] ),
        .R(1'b0));
  FDRE \dataR_reg[87] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(\dataR[87]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[87] ),
        .R(1'b0));
  FDRE \dataR_reg[88] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(\dataR[88]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[88] ),
        .R(1'b0));
  FDRE \dataR_reg[89] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(\dataR[89]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[89] ),
        .R(1'b0));
  FDRE \dataR_reg[8] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(\dataR[72]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \dataR_reg[90] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(\dataR[90]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[90] ),
        .R(1'b0));
  FDRE \dataR_reg[91] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(\dataR[91]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[91] ),
        .R(1'b0));
  FDRE \dataR_reg[92] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(\dataR[92]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[92] ),
        .R(1'b0));
  FDRE \dataR_reg[93] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(\dataR[93]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[93] ),
        .R(1'b0));
  FDRE \dataR_reg[94] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(\dataR[94]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[94] ),
        .R(1'b0));
  FDRE \dataR_reg[95] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(\dataR[95]_i_2_n_0 ),
        .Q(\dataR_reg_n_0_[95] ),
        .R(1'b0));
  FDRE \dataR_reg[96] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(\dataR[96]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[96] ),
        .R(1'b0));
  FDRE \dataR_reg[97] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(\dataR[97]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[97] ),
        .R(1'b0));
  FDRE \dataR_reg[98] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(\dataR[98]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[98] ),
        .R(1'b0));
  FDRE \dataR_reg[99] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(\dataR[99]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[99] ),
        .R(1'b0));
  FDRE \dataR_reg[9] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(\dataR[73]_i_1_n_0 ),
        .Q(\dataR_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00E200E2FFFF0000)) 
    \data_out_I[0]_i_1 
       (.I0(\data_out_I[0]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(\data_out_I[0]_i_3_n_0 ),
        .I3(Q[3]),
        .I4(data_I[0]),
        .I5(dma_tlast1),
        .O(\idx_reg[2]_0 [0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[0]_i_2 
       (.I0(data_I[48]),
        .I1(data_I[32]),
        .I2(Q[1]),
        .I3(data_I[16]),
        .I4(Q[0]),
        .I5(data_I[0]),
        .O(\data_out_I[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[0]_i_3 
       (.I0(data_I[112]),
        .I1(data_I[96]),
        .I2(Q[1]),
        .I3(data_I[80]),
        .I4(Q[0]),
        .I5(data_I[64]),
        .O(\data_out_I[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E200E2FFFF0000)) 
    \data_out_I[10]_i_1 
       (.I0(\data_out_I[10]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(\data_out_I[10]_i_3_n_0 ),
        .I3(Q[3]),
        .I4(data_I[10]),
        .I5(dma_tlast1),
        .O(\idx_reg[2]_0 [10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[10]_i_2 
       (.I0(data_I[58]),
        .I1(data_I[42]),
        .I2(Q[1]),
        .I3(data_I[26]),
        .I4(Q[0]),
        .I5(data_I[10]),
        .O(\data_out_I[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[10]_i_3 
       (.I0(data_I[122]),
        .I1(data_I[106]),
        .I2(Q[1]),
        .I3(data_I[90]),
        .I4(Q[0]),
        .I5(data_I[74]),
        .O(\data_out_I[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E200E2FFFF0000)) 
    \data_out_I[11]_i_1 
       (.I0(\data_out_I[11]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(\data_out_I[11]_i_3_n_0 ),
        .I3(Q[3]),
        .I4(data_I[11]),
        .I5(dma_tlast1),
        .O(\idx_reg[2]_0 [11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[11]_i_2 
       (.I0(data_I[59]),
        .I1(data_I[43]),
        .I2(Q[1]),
        .I3(data_I[27]),
        .I4(Q[0]),
        .I5(data_I[11]),
        .O(\data_out_I[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[11]_i_3 
       (.I0(data_I[123]),
        .I1(data_I[107]),
        .I2(Q[1]),
        .I3(data_I[91]),
        .I4(Q[0]),
        .I5(data_I[75]),
        .O(\data_out_I[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E200E2FFFF0000)) 
    \data_out_I[12]_i_1 
       (.I0(\data_out_I[12]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(\data_out_I[12]_i_3_n_0 ),
        .I3(Q[3]),
        .I4(data_I[12]),
        .I5(dma_tlast1),
        .O(\idx_reg[2]_0 [12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[12]_i_2 
       (.I0(data_I[60]),
        .I1(data_I[44]),
        .I2(Q[1]),
        .I3(data_I[28]),
        .I4(Q[0]),
        .I5(data_I[12]),
        .O(\data_out_I[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[12]_i_3 
       (.I0(data_I[124]),
        .I1(data_I[108]),
        .I2(Q[1]),
        .I3(data_I[92]),
        .I4(Q[0]),
        .I5(data_I[76]),
        .O(\data_out_I[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E200E2FFFF0000)) 
    \data_out_I[13]_i_1 
       (.I0(\data_out_I[13]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(\data_out_I[13]_i_3_n_0 ),
        .I3(Q[3]),
        .I4(data_I[13]),
        .I5(dma_tlast1),
        .O(\idx_reg[2]_0 [13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[13]_i_2 
       (.I0(data_I[61]),
        .I1(data_I[45]),
        .I2(Q[1]),
        .I3(data_I[29]),
        .I4(Q[0]),
        .I5(data_I[13]),
        .O(\data_out_I[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[13]_i_3 
       (.I0(data_I[125]),
        .I1(data_I[109]),
        .I2(Q[1]),
        .I3(data_I[93]),
        .I4(Q[0]),
        .I5(data_I[77]),
        .O(\data_out_I[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E200E2FFFF0000)) 
    \data_out_I[14]_i_1 
       (.I0(\data_out_I[14]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(\data_out_I[14]_i_3_n_0 ),
        .I3(Q[3]),
        .I4(data_I[14]),
        .I5(dma_tlast1),
        .O(\idx_reg[2]_0 [14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[14]_i_2 
       (.I0(data_I[62]),
        .I1(data_I[46]),
        .I2(Q[1]),
        .I3(data_I[30]),
        .I4(Q[0]),
        .I5(data_I[14]),
        .O(\data_out_I[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[14]_i_3 
       (.I0(data_I[126]),
        .I1(data_I[110]),
        .I2(Q[1]),
        .I3(data_I[94]),
        .I4(Q[0]),
        .I5(data_I[78]),
        .O(\data_out_I[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E200E2FFFF0000)) 
    \data_out_I[15]_i_2 
       (.I0(\data_out_I[15]_i_3_n_0 ),
        .I1(Q[2]),
        .I2(\data_out_I[15]_i_4_n_0 ),
        .I3(Q[3]),
        .I4(data_I[15]),
        .I5(dma_tlast1),
        .O(\idx_reg[2]_0 [15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[15]_i_3 
       (.I0(data_I[63]),
        .I1(data_I[47]),
        .I2(Q[1]),
        .I3(data_I[31]),
        .I4(Q[0]),
        .I5(data_I[15]),
        .O(\data_out_I[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[15]_i_4 
       (.I0(data_I[127]),
        .I1(data_I[111]),
        .I2(Q[1]),
        .I3(data_I[95]),
        .I4(Q[0]),
        .I5(data_I[79]),
        .O(\data_out_I[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E200E2FFFF0000)) 
    \data_out_I[1]_i_1 
       (.I0(\data_out_I[1]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(\data_out_I[1]_i_3_n_0 ),
        .I3(Q[3]),
        .I4(data_I[1]),
        .I5(dma_tlast1),
        .O(\idx_reg[2]_0 [1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[1]_i_2 
       (.I0(data_I[49]),
        .I1(data_I[33]),
        .I2(Q[1]),
        .I3(data_I[17]),
        .I4(Q[0]),
        .I5(data_I[1]),
        .O(\data_out_I[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[1]_i_3 
       (.I0(data_I[113]),
        .I1(data_I[97]),
        .I2(Q[1]),
        .I3(data_I[81]),
        .I4(Q[0]),
        .I5(data_I[65]),
        .O(\data_out_I[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E200E2FFFF0000)) 
    \data_out_I[2]_i_1 
       (.I0(\data_out_I[2]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(\data_out_I[2]_i_3_n_0 ),
        .I3(Q[3]),
        .I4(data_I[2]),
        .I5(dma_tlast1),
        .O(\idx_reg[2]_0 [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[2]_i_2 
       (.I0(data_I[50]),
        .I1(data_I[34]),
        .I2(Q[1]),
        .I3(data_I[18]),
        .I4(Q[0]),
        .I5(data_I[2]),
        .O(\data_out_I[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[2]_i_3 
       (.I0(data_I[114]),
        .I1(data_I[98]),
        .I2(Q[1]),
        .I3(data_I[82]),
        .I4(Q[0]),
        .I5(data_I[66]),
        .O(\data_out_I[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E200E2FFFF0000)) 
    \data_out_I[3]_i_1 
       (.I0(\data_out_I[3]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(\data_out_I[3]_i_3_n_0 ),
        .I3(Q[3]),
        .I4(data_I[3]),
        .I5(dma_tlast1),
        .O(\idx_reg[2]_0 [3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[3]_i_2 
       (.I0(data_I[51]),
        .I1(data_I[35]),
        .I2(Q[1]),
        .I3(data_I[19]),
        .I4(Q[0]),
        .I5(data_I[3]),
        .O(\data_out_I[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[3]_i_3 
       (.I0(data_I[115]),
        .I1(data_I[99]),
        .I2(Q[1]),
        .I3(data_I[83]),
        .I4(Q[0]),
        .I5(data_I[67]),
        .O(\data_out_I[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E200E2FFFF0000)) 
    \data_out_I[4]_i_1 
       (.I0(\data_out_I[4]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(\data_out_I[4]_i_3_n_0 ),
        .I3(Q[3]),
        .I4(data_I[4]),
        .I5(dma_tlast1),
        .O(\idx_reg[2]_0 [4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[4]_i_2 
       (.I0(data_I[52]),
        .I1(data_I[36]),
        .I2(Q[1]),
        .I3(data_I[20]),
        .I4(Q[0]),
        .I5(data_I[4]),
        .O(\data_out_I[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[4]_i_3 
       (.I0(data_I[116]),
        .I1(data_I[100]),
        .I2(Q[1]),
        .I3(data_I[84]),
        .I4(Q[0]),
        .I5(data_I[68]),
        .O(\data_out_I[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E200E2FFFF0000)) 
    \data_out_I[5]_i_1 
       (.I0(\data_out_I[5]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(\data_out_I[5]_i_3_n_0 ),
        .I3(Q[3]),
        .I4(data_I[5]),
        .I5(dma_tlast1),
        .O(\idx_reg[2]_0 [5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[5]_i_2 
       (.I0(data_I[53]),
        .I1(data_I[37]),
        .I2(Q[1]),
        .I3(data_I[21]),
        .I4(Q[0]),
        .I5(data_I[5]),
        .O(\data_out_I[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[5]_i_3 
       (.I0(data_I[117]),
        .I1(data_I[101]),
        .I2(Q[1]),
        .I3(data_I[85]),
        .I4(Q[0]),
        .I5(data_I[69]),
        .O(\data_out_I[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E200E2FFFF0000)) 
    \data_out_I[6]_i_1 
       (.I0(\data_out_I[6]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(\data_out_I[6]_i_3_n_0 ),
        .I3(Q[3]),
        .I4(data_I[6]),
        .I5(dma_tlast1),
        .O(\idx_reg[2]_0 [6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[6]_i_2 
       (.I0(data_I[54]),
        .I1(data_I[38]),
        .I2(Q[1]),
        .I3(data_I[22]),
        .I4(Q[0]),
        .I5(data_I[6]),
        .O(\data_out_I[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[6]_i_3 
       (.I0(data_I[118]),
        .I1(data_I[102]),
        .I2(Q[1]),
        .I3(data_I[86]),
        .I4(Q[0]),
        .I5(data_I[70]),
        .O(\data_out_I[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E200E2FFFF0000)) 
    \data_out_I[7]_i_1 
       (.I0(\data_out_I[7]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(\data_out_I[7]_i_3_n_0 ),
        .I3(Q[3]),
        .I4(data_I[7]),
        .I5(dma_tlast1),
        .O(\idx_reg[2]_0 [7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[7]_i_2 
       (.I0(data_I[55]),
        .I1(data_I[39]),
        .I2(Q[1]),
        .I3(data_I[23]),
        .I4(Q[0]),
        .I5(data_I[7]),
        .O(\data_out_I[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[7]_i_3 
       (.I0(data_I[119]),
        .I1(data_I[103]),
        .I2(Q[1]),
        .I3(data_I[87]),
        .I4(Q[0]),
        .I5(data_I[71]),
        .O(\data_out_I[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E200E2FFFF0000)) 
    \data_out_I[8]_i_1 
       (.I0(\data_out_I[8]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(\data_out_I[8]_i_3_n_0 ),
        .I3(Q[3]),
        .I4(data_I[8]),
        .I5(dma_tlast1),
        .O(\idx_reg[2]_0 [8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[8]_i_2 
       (.I0(data_I[56]),
        .I1(data_I[40]),
        .I2(Q[1]),
        .I3(data_I[24]),
        .I4(Q[0]),
        .I5(data_I[8]),
        .O(\data_out_I[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[8]_i_3 
       (.I0(data_I[120]),
        .I1(data_I[104]),
        .I2(Q[1]),
        .I3(data_I[88]),
        .I4(Q[0]),
        .I5(data_I[72]),
        .O(\data_out_I[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E200E2FFFF0000)) 
    \data_out_I[9]_i_1 
       (.I0(\data_out_I[9]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(\data_out_I[9]_i_3_n_0 ),
        .I3(Q[3]),
        .I4(data_I[9]),
        .I5(dma_tlast1),
        .O(\idx_reg[2]_0 [9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[9]_i_2 
       (.I0(data_I[57]),
        .I1(data_I[41]),
        .I2(Q[1]),
        .I3(data_I[25]),
        .I4(Q[0]),
        .I5(data_I[9]),
        .O(\data_out_I[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[9]_i_3 
       (.I0(data_I[121]),
        .I1(data_I[105]),
        .I2(Q[1]),
        .I3(data_I[89]),
        .I4(Q[0]),
        .I5(data_I[73]),
        .O(\data_out_I[9]_i_3_n_0 ));
  FDRE \data_out_I_reg[0] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[0]),
        .Q(data_I[0]),
        .R(1'b0));
  FDRE \data_out_I_reg[100] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[100]),
        .Q(data_I[100]),
        .R(1'b0));
  FDRE \data_out_I_reg[101] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[101]),
        .Q(data_I[101]),
        .R(1'b0));
  FDRE \data_out_I_reg[102] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[102]),
        .Q(data_I[102]),
        .R(1'b0));
  FDRE \data_out_I_reg[103] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[103]),
        .Q(data_I[103]),
        .R(1'b0));
  FDRE \data_out_I_reg[104] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[104]),
        .Q(data_I[104]),
        .R(1'b0));
  FDRE \data_out_I_reg[105] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[105]),
        .Q(data_I[105]),
        .R(1'b0));
  FDRE \data_out_I_reg[106] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[106]),
        .Q(data_I[106]),
        .R(1'b0));
  FDRE \data_out_I_reg[107] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[107]),
        .Q(data_I[107]),
        .R(1'b0));
  FDRE \data_out_I_reg[108] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[108]),
        .Q(data_I[108]),
        .R(1'b0));
  FDRE \data_out_I_reg[109] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[109]),
        .Q(data_I[109]),
        .R(1'b0));
  FDRE \data_out_I_reg[10] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[10]),
        .Q(data_I[10]),
        .R(1'b0));
  FDRE \data_out_I_reg[110] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[110]),
        .Q(data_I[110]),
        .R(1'b0));
  FDRE \data_out_I_reg[111] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[111]),
        .Q(data_I[111]),
        .R(1'b0));
  FDRE \data_out_I_reg[112] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[112]),
        .Q(data_I[112]),
        .R(1'b0));
  FDRE \data_out_I_reg[113] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[113]),
        .Q(data_I[113]),
        .R(1'b0));
  FDRE \data_out_I_reg[114] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[114]),
        .Q(data_I[114]),
        .R(1'b0));
  FDRE \data_out_I_reg[115] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[115]),
        .Q(data_I[115]),
        .R(1'b0));
  FDRE \data_out_I_reg[116] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[116]),
        .Q(data_I[116]),
        .R(1'b0));
  FDRE \data_out_I_reg[117] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[117]),
        .Q(data_I[117]),
        .R(1'b0));
  FDRE \data_out_I_reg[118] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[118]),
        .Q(data_I[118]),
        .R(1'b0));
  FDRE \data_out_I_reg[119] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[119]),
        .Q(data_I[119]),
        .R(1'b0));
  FDRE \data_out_I_reg[11] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[11]),
        .Q(data_I[11]),
        .R(1'b0));
  FDRE \data_out_I_reg[120] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[120]),
        .Q(data_I[120]),
        .R(1'b0));
  FDRE \data_out_I_reg[121] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[121]),
        .Q(data_I[121]),
        .R(1'b0));
  FDRE \data_out_I_reg[122] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[122]),
        .Q(data_I[122]),
        .R(1'b0));
  FDRE \data_out_I_reg[123] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[123]),
        .Q(data_I[123]),
        .R(1'b0));
  FDRE \data_out_I_reg[124] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[124]),
        .Q(data_I[124]),
        .R(1'b0));
  FDRE \data_out_I_reg[125] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[125]),
        .Q(data_I[125]),
        .R(1'b0));
  FDRE \data_out_I_reg[126] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[126]),
        .Q(data_I[126]),
        .R(1'b0));
  FDRE \data_out_I_reg[127] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[127]),
        .Q(data_I[127]),
        .R(1'b0));
  FDRE \data_out_I_reg[12] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[12]),
        .Q(data_I[12]),
        .R(1'b0));
  FDRE \data_out_I_reg[13] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[13]),
        .Q(data_I[13]),
        .R(1'b0));
  FDRE \data_out_I_reg[14] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[14]),
        .Q(data_I[14]),
        .R(1'b0));
  FDRE \data_out_I_reg[15] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[15]),
        .Q(data_I[15]),
        .R(1'b0));
  FDRE \data_out_I_reg[16] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[16]),
        .Q(data_I[16]),
        .R(1'b0));
  FDRE \data_out_I_reg[17] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[17]),
        .Q(data_I[17]),
        .R(1'b0));
  FDRE \data_out_I_reg[18] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[18]),
        .Q(data_I[18]),
        .R(1'b0));
  FDRE \data_out_I_reg[19] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[19]),
        .Q(data_I[19]),
        .R(1'b0));
  FDRE \data_out_I_reg[1] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[1]),
        .Q(data_I[1]),
        .R(1'b0));
  FDRE \data_out_I_reg[20] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[20]),
        .Q(data_I[20]),
        .R(1'b0));
  FDRE \data_out_I_reg[21] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[21]),
        .Q(data_I[21]),
        .R(1'b0));
  FDRE \data_out_I_reg[22] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[22]),
        .Q(data_I[22]),
        .R(1'b0));
  FDRE \data_out_I_reg[23] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[23]),
        .Q(data_I[23]),
        .R(1'b0));
  FDRE \data_out_I_reg[24] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[24]),
        .Q(data_I[24]),
        .R(1'b0));
  FDRE \data_out_I_reg[25] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[25]),
        .Q(data_I[25]),
        .R(1'b0));
  FDRE \data_out_I_reg[26] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[26]),
        .Q(data_I[26]),
        .R(1'b0));
  FDRE \data_out_I_reg[27] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[27]),
        .Q(data_I[27]),
        .R(1'b0));
  FDRE \data_out_I_reg[28] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[28]),
        .Q(data_I[28]),
        .R(1'b0));
  FDRE \data_out_I_reg[29] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[29]),
        .Q(data_I[29]),
        .R(1'b0));
  FDRE \data_out_I_reg[2] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[2]),
        .Q(data_I[2]),
        .R(1'b0));
  FDRE \data_out_I_reg[30] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[30]),
        .Q(data_I[30]),
        .R(1'b0));
  FDRE \data_out_I_reg[31] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[31]),
        .Q(data_I[31]),
        .R(1'b0));
  FDRE \data_out_I_reg[32] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[32]),
        .Q(data_I[32]),
        .R(1'b0));
  FDRE \data_out_I_reg[33] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[33]),
        .Q(data_I[33]),
        .R(1'b0));
  FDRE \data_out_I_reg[34] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[34]),
        .Q(data_I[34]),
        .R(1'b0));
  FDRE \data_out_I_reg[35] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[35]),
        .Q(data_I[35]),
        .R(1'b0));
  FDRE \data_out_I_reg[36] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[36]),
        .Q(data_I[36]),
        .R(1'b0));
  FDRE \data_out_I_reg[37] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[37]),
        .Q(data_I[37]),
        .R(1'b0));
  FDRE \data_out_I_reg[38] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[38]),
        .Q(data_I[38]),
        .R(1'b0));
  FDRE \data_out_I_reg[39] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[39]),
        .Q(data_I[39]),
        .R(1'b0));
  FDRE \data_out_I_reg[3] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[3]),
        .Q(data_I[3]),
        .R(1'b0));
  FDRE \data_out_I_reg[40] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[40]),
        .Q(data_I[40]),
        .R(1'b0));
  FDRE \data_out_I_reg[41] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[41]),
        .Q(data_I[41]),
        .R(1'b0));
  FDRE \data_out_I_reg[42] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[42]),
        .Q(data_I[42]),
        .R(1'b0));
  FDRE \data_out_I_reg[43] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[43]),
        .Q(data_I[43]),
        .R(1'b0));
  FDRE \data_out_I_reg[44] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[44]),
        .Q(data_I[44]),
        .R(1'b0));
  FDRE \data_out_I_reg[45] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[45]),
        .Q(data_I[45]),
        .R(1'b0));
  FDRE \data_out_I_reg[46] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[46]),
        .Q(data_I[46]),
        .R(1'b0));
  FDRE \data_out_I_reg[47] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[47]),
        .Q(data_I[47]),
        .R(1'b0));
  FDRE \data_out_I_reg[48] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[48]),
        .Q(data_I[48]),
        .R(1'b0));
  FDRE \data_out_I_reg[49] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[49]),
        .Q(data_I[49]),
        .R(1'b0));
  FDRE \data_out_I_reg[4] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[4]),
        .Q(data_I[4]),
        .R(1'b0));
  FDRE \data_out_I_reg[50] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[50]),
        .Q(data_I[50]),
        .R(1'b0));
  FDRE \data_out_I_reg[51] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[51]),
        .Q(data_I[51]),
        .R(1'b0));
  FDRE \data_out_I_reg[52] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[52]),
        .Q(data_I[52]),
        .R(1'b0));
  FDRE \data_out_I_reg[53] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[53]),
        .Q(data_I[53]),
        .R(1'b0));
  FDRE \data_out_I_reg[54] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[54]),
        .Q(data_I[54]),
        .R(1'b0));
  FDRE \data_out_I_reg[55] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[55]),
        .Q(data_I[55]),
        .R(1'b0));
  FDRE \data_out_I_reg[56] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[56]),
        .Q(data_I[56]),
        .R(1'b0));
  FDRE \data_out_I_reg[57] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[57]),
        .Q(data_I[57]),
        .R(1'b0));
  FDRE \data_out_I_reg[58] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[58]),
        .Q(data_I[58]),
        .R(1'b0));
  FDRE \data_out_I_reg[59] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[59]),
        .Q(data_I[59]),
        .R(1'b0));
  FDRE \data_out_I_reg[5] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[5]),
        .Q(data_I[5]),
        .R(1'b0));
  FDRE \data_out_I_reg[60] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[60]),
        .Q(data_I[60]),
        .R(1'b0));
  FDRE \data_out_I_reg[61] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[61]),
        .Q(data_I[61]),
        .R(1'b0));
  FDRE \data_out_I_reg[62] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[62]),
        .Q(data_I[62]),
        .R(1'b0));
  FDRE \data_out_I_reg[63] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[63]),
        .Q(data_I[63]),
        .R(1'b0));
  FDRE \data_out_I_reg[64] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[64]),
        .Q(data_I[64]),
        .R(1'b0));
  FDRE \data_out_I_reg[65] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[65]),
        .Q(data_I[65]),
        .R(1'b0));
  FDRE \data_out_I_reg[66] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[66]),
        .Q(data_I[66]),
        .R(1'b0));
  FDRE \data_out_I_reg[67] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[67]),
        .Q(data_I[67]),
        .R(1'b0));
  FDRE \data_out_I_reg[68] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[68]),
        .Q(data_I[68]),
        .R(1'b0));
  FDRE \data_out_I_reg[69] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[69]),
        .Q(data_I[69]),
        .R(1'b0));
  FDRE \data_out_I_reg[6] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[6]),
        .Q(data_I[6]),
        .R(1'b0));
  FDRE \data_out_I_reg[70] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[70]),
        .Q(data_I[70]),
        .R(1'b0));
  FDRE \data_out_I_reg[71] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[71]),
        .Q(data_I[71]),
        .R(1'b0));
  FDRE \data_out_I_reg[72] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[72]),
        .Q(data_I[72]),
        .R(1'b0));
  FDRE \data_out_I_reg[73] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[73]),
        .Q(data_I[73]),
        .R(1'b0));
  FDRE \data_out_I_reg[74] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[74]),
        .Q(data_I[74]),
        .R(1'b0));
  FDRE \data_out_I_reg[75] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[75]),
        .Q(data_I[75]),
        .R(1'b0));
  FDRE \data_out_I_reg[76] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[76]),
        .Q(data_I[76]),
        .R(1'b0));
  FDRE \data_out_I_reg[77] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[77]),
        .Q(data_I[77]),
        .R(1'b0));
  FDRE \data_out_I_reg[78] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[78]),
        .Q(data_I[78]),
        .R(1'b0));
  FDRE \data_out_I_reg[79] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[79]),
        .Q(data_I[79]),
        .R(1'b0));
  FDRE \data_out_I_reg[7] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[7]),
        .Q(data_I[7]),
        .R(1'b0));
  FDRE \data_out_I_reg[80] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[80]),
        .Q(data_I[80]),
        .R(1'b0));
  FDRE \data_out_I_reg[81] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[81]),
        .Q(data_I[81]),
        .R(1'b0));
  FDRE \data_out_I_reg[82] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[82]),
        .Q(data_I[82]),
        .R(1'b0));
  FDRE \data_out_I_reg[83] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[83]),
        .Q(data_I[83]),
        .R(1'b0));
  FDRE \data_out_I_reg[84] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[84]),
        .Q(data_I[84]),
        .R(1'b0));
  FDRE \data_out_I_reg[85] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[85]),
        .Q(data_I[85]),
        .R(1'b0));
  FDRE \data_out_I_reg[86] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[86]),
        .Q(data_I[86]),
        .R(1'b0));
  FDRE \data_out_I_reg[87] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[87]),
        .Q(data_I[87]),
        .R(1'b0));
  FDRE \data_out_I_reg[88] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[88]),
        .Q(data_I[88]),
        .R(1'b0));
  FDRE \data_out_I_reg[89] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[89]),
        .Q(data_I[89]),
        .R(1'b0));
  FDRE \data_out_I_reg[8] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[8]),
        .Q(data_I[8]),
        .R(1'b0));
  FDRE \data_out_I_reg[90] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[90]),
        .Q(data_I[90]),
        .R(1'b0));
  FDRE \data_out_I_reg[91] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[91]),
        .Q(data_I[91]),
        .R(1'b0));
  FDRE \data_out_I_reg[92] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[92]),
        .Q(data_I[92]),
        .R(1'b0));
  FDRE \data_out_I_reg[93] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[93]),
        .Q(data_I[93]),
        .R(1'b0));
  FDRE \data_out_I_reg[94] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[94]),
        .Q(data_I[94]),
        .R(1'b0));
  FDRE \data_out_I_reg[95] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[95]),
        .Q(data_I[95]),
        .R(1'b0));
  FDRE \data_out_I_reg[96] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[96]),
        .Q(data_I[96]),
        .R(1'b0));
  FDRE \data_out_I_reg[97] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[97]),
        .Q(data_I[97]),
        .R(1'b0));
  FDRE \data_out_I_reg[98] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[98]),
        .Q(data_I[98]),
        .R(1'b0));
  FDRE \data_out_I_reg[99] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[99]),
        .Q(data_I[99]),
        .R(1'b0));
  FDRE \data_out_I_reg[9] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(dataI[9]),
        .Q(data_I[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00E200E2FFFF0000)) 
    \data_out_R[0]_i_1 
       (.I0(\data_out_R[0]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(\data_out_R[0]_i_3_n_0 ),
        .I3(Q[3]),
        .I4(data_R[0]),
        .I5(dma_tlast1),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[0]_i_2 
       (.I0(data_R[48]),
        .I1(data_R[32]),
        .I2(Q[1]),
        .I3(data_R[16]),
        .I4(Q[0]),
        .I5(data_R[0]),
        .O(\data_out_R[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[0]_i_3 
       (.I0(data_R[112]),
        .I1(data_R[96]),
        .I2(Q[1]),
        .I3(data_R[80]),
        .I4(Q[0]),
        .I5(data_R[64]),
        .O(\data_out_R[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E200E2FFFF0000)) 
    \data_out_R[10]_i_1 
       (.I0(\data_out_R[10]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(\data_out_R[10]_i_3_n_0 ),
        .I3(Q[3]),
        .I4(data_R[10]),
        .I5(dma_tlast1),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[10]_i_2 
       (.I0(data_R[58]),
        .I1(data_R[42]),
        .I2(Q[1]),
        .I3(data_R[26]),
        .I4(Q[0]),
        .I5(data_R[10]),
        .O(\data_out_R[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[10]_i_3 
       (.I0(data_R[122]),
        .I1(data_R[106]),
        .I2(Q[1]),
        .I3(data_R[90]),
        .I4(Q[0]),
        .I5(data_R[74]),
        .O(\data_out_R[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E200E2FFFF0000)) 
    \data_out_R[11]_i_1 
       (.I0(\data_out_R[11]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(\data_out_R[11]_i_3_n_0 ),
        .I3(Q[3]),
        .I4(data_R[11]),
        .I5(dma_tlast1),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[11]_i_2 
       (.I0(data_R[59]),
        .I1(data_R[43]),
        .I2(Q[1]),
        .I3(data_R[27]),
        .I4(Q[0]),
        .I5(data_R[11]),
        .O(\data_out_R[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[11]_i_3 
       (.I0(data_R[123]),
        .I1(data_R[107]),
        .I2(Q[1]),
        .I3(data_R[91]),
        .I4(Q[0]),
        .I5(data_R[75]),
        .O(\data_out_R[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E200E2FFFF0000)) 
    \data_out_R[12]_i_1 
       (.I0(\data_out_R[12]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(\data_out_R[12]_i_3_n_0 ),
        .I3(Q[3]),
        .I4(data_R[12]),
        .I5(dma_tlast1),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[12]_i_2 
       (.I0(data_R[60]),
        .I1(data_R[44]),
        .I2(Q[1]),
        .I3(data_R[28]),
        .I4(Q[0]),
        .I5(data_R[12]),
        .O(\data_out_R[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[12]_i_3 
       (.I0(data_R[124]),
        .I1(data_R[108]),
        .I2(Q[1]),
        .I3(data_R[92]),
        .I4(Q[0]),
        .I5(data_R[76]),
        .O(\data_out_R[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E200E2FFFF0000)) 
    \data_out_R[13]_i_1 
       (.I0(\data_out_R[13]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(\data_out_R[13]_i_3_n_0 ),
        .I3(Q[3]),
        .I4(data_R[13]),
        .I5(dma_tlast1),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[13]_i_2 
       (.I0(data_R[61]),
        .I1(data_R[45]),
        .I2(Q[1]),
        .I3(data_R[29]),
        .I4(Q[0]),
        .I5(data_R[13]),
        .O(\data_out_R[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[13]_i_3 
       (.I0(data_R[125]),
        .I1(data_R[109]),
        .I2(Q[1]),
        .I3(data_R[93]),
        .I4(Q[0]),
        .I5(data_R[77]),
        .O(\data_out_R[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E200E2FFFF0000)) 
    \data_out_R[14]_i_1 
       (.I0(\data_out_R[14]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(\data_out_R[14]_i_3_n_0 ),
        .I3(Q[3]),
        .I4(data_R[14]),
        .I5(dma_tlast1),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[14]_i_2 
       (.I0(data_R[62]),
        .I1(data_R[46]),
        .I2(Q[1]),
        .I3(data_R[30]),
        .I4(Q[0]),
        .I5(data_R[14]),
        .O(\data_out_R[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[14]_i_3 
       (.I0(data_R[126]),
        .I1(data_R[110]),
        .I2(Q[1]),
        .I3(data_R[94]),
        .I4(Q[0]),
        .I5(data_R[78]),
        .O(\data_out_R[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E200E2FFFF0000)) 
    \data_out_R[15]_i_1 
       (.I0(\data_out_R[15]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(\data_out_R[15]_i_3_n_0 ),
        .I3(Q[3]),
        .I4(data_R[15]),
        .I5(dma_tlast1),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[15]_i_2 
       (.I0(data_R[63]),
        .I1(data_R[47]),
        .I2(Q[1]),
        .I3(data_R[31]),
        .I4(Q[0]),
        .I5(data_R[15]),
        .O(\data_out_R[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[15]_i_3 
       (.I0(data_R[127]),
        .I1(data_R[111]),
        .I2(Q[1]),
        .I3(data_R[95]),
        .I4(Q[0]),
        .I5(data_R[79]),
        .O(\data_out_R[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E200E2FFFF0000)) 
    \data_out_R[1]_i_1 
       (.I0(\data_out_R[1]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(\data_out_R[1]_i_3_n_0 ),
        .I3(Q[3]),
        .I4(data_R[1]),
        .I5(dma_tlast1),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[1]_i_2 
       (.I0(data_R[49]),
        .I1(data_R[33]),
        .I2(Q[1]),
        .I3(data_R[17]),
        .I4(Q[0]),
        .I5(data_R[1]),
        .O(\data_out_R[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[1]_i_3 
       (.I0(data_R[113]),
        .I1(data_R[97]),
        .I2(Q[1]),
        .I3(data_R[81]),
        .I4(Q[0]),
        .I5(data_R[65]),
        .O(\data_out_R[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E200E2FFFF0000)) 
    \data_out_R[2]_i_1 
       (.I0(\data_out_R[2]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(\data_out_R[2]_i_3_n_0 ),
        .I3(Q[3]),
        .I4(data_R[2]),
        .I5(dma_tlast1),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[2]_i_2 
       (.I0(data_R[50]),
        .I1(data_R[34]),
        .I2(Q[1]),
        .I3(data_R[18]),
        .I4(Q[0]),
        .I5(data_R[2]),
        .O(\data_out_R[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[2]_i_3 
       (.I0(data_R[114]),
        .I1(data_R[98]),
        .I2(Q[1]),
        .I3(data_R[82]),
        .I4(Q[0]),
        .I5(data_R[66]),
        .O(\data_out_R[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E200E2FFFF0000)) 
    \data_out_R[3]_i_1 
       (.I0(\data_out_R[3]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(\data_out_R[3]_i_3_n_0 ),
        .I3(Q[3]),
        .I4(data_R[3]),
        .I5(dma_tlast1),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[3]_i_2 
       (.I0(data_R[51]),
        .I1(data_R[35]),
        .I2(Q[1]),
        .I3(data_R[19]),
        .I4(Q[0]),
        .I5(data_R[3]),
        .O(\data_out_R[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[3]_i_3 
       (.I0(data_R[115]),
        .I1(data_R[99]),
        .I2(Q[1]),
        .I3(data_R[83]),
        .I4(Q[0]),
        .I5(data_R[67]),
        .O(\data_out_R[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E200E2FFFF0000)) 
    \data_out_R[4]_i_1 
       (.I0(\data_out_R[4]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(\data_out_R[4]_i_3_n_0 ),
        .I3(Q[3]),
        .I4(data_R[4]),
        .I5(dma_tlast1),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[4]_i_2 
       (.I0(data_R[52]),
        .I1(data_R[36]),
        .I2(Q[1]),
        .I3(data_R[20]),
        .I4(Q[0]),
        .I5(data_R[4]),
        .O(\data_out_R[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[4]_i_3 
       (.I0(data_R[116]),
        .I1(data_R[100]),
        .I2(Q[1]),
        .I3(data_R[84]),
        .I4(Q[0]),
        .I5(data_R[68]),
        .O(\data_out_R[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E200E2FFFF0000)) 
    \data_out_R[5]_i_1 
       (.I0(\data_out_R[5]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(\data_out_R[5]_i_3_n_0 ),
        .I3(Q[3]),
        .I4(data_R[5]),
        .I5(dma_tlast1),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[5]_i_2 
       (.I0(data_R[53]),
        .I1(data_R[37]),
        .I2(Q[1]),
        .I3(data_R[21]),
        .I4(Q[0]),
        .I5(data_R[5]),
        .O(\data_out_R[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[5]_i_3 
       (.I0(data_R[117]),
        .I1(data_R[101]),
        .I2(Q[1]),
        .I3(data_R[85]),
        .I4(Q[0]),
        .I5(data_R[69]),
        .O(\data_out_R[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E200E2FFFF0000)) 
    \data_out_R[6]_i_1 
       (.I0(\data_out_R[6]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(\data_out_R[6]_i_3_n_0 ),
        .I3(Q[3]),
        .I4(data_R[6]),
        .I5(dma_tlast1),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[6]_i_2 
       (.I0(data_R[54]),
        .I1(data_R[38]),
        .I2(Q[1]),
        .I3(data_R[22]),
        .I4(Q[0]),
        .I5(data_R[6]),
        .O(\data_out_R[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[6]_i_3 
       (.I0(data_R[118]),
        .I1(data_R[102]),
        .I2(Q[1]),
        .I3(data_R[86]),
        .I4(Q[0]),
        .I5(data_R[70]),
        .O(\data_out_R[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E200E2FFFF0000)) 
    \data_out_R[7]_i_1 
       (.I0(\data_out_R[7]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(\data_out_R[7]_i_3_n_0 ),
        .I3(Q[3]),
        .I4(data_R[7]),
        .I5(dma_tlast1),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[7]_i_2 
       (.I0(data_R[55]),
        .I1(data_R[39]),
        .I2(Q[1]),
        .I3(data_R[23]),
        .I4(Q[0]),
        .I5(data_R[7]),
        .O(\data_out_R[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[7]_i_3 
       (.I0(data_R[119]),
        .I1(data_R[103]),
        .I2(Q[1]),
        .I3(data_R[87]),
        .I4(Q[0]),
        .I5(data_R[71]),
        .O(\data_out_R[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E200E2FFFF0000)) 
    \data_out_R[8]_i_1 
       (.I0(\data_out_R[8]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(\data_out_R[8]_i_3_n_0 ),
        .I3(Q[3]),
        .I4(data_R[8]),
        .I5(dma_tlast1),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[8]_i_2 
       (.I0(data_R[56]),
        .I1(data_R[40]),
        .I2(Q[1]),
        .I3(data_R[24]),
        .I4(Q[0]),
        .I5(data_R[8]),
        .O(\data_out_R[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[8]_i_3 
       (.I0(data_R[120]),
        .I1(data_R[104]),
        .I2(Q[1]),
        .I3(data_R[88]),
        .I4(Q[0]),
        .I5(data_R[72]),
        .O(\data_out_R[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E200E2FFFF0000)) 
    \data_out_R[9]_i_1 
       (.I0(\data_out_R[9]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(\data_out_R[9]_i_3_n_0 ),
        .I3(Q[3]),
        .I4(data_R[9]),
        .I5(dma_tlast1),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[9]_i_2 
       (.I0(data_R[57]),
        .I1(data_R[41]),
        .I2(Q[1]),
        .I3(data_R[25]),
        .I4(Q[0]),
        .I5(data_R[9]),
        .O(\data_out_R[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[9]_i_3 
       (.I0(data_R[121]),
        .I1(data_R[105]),
        .I2(Q[1]),
        .I3(data_R[89]),
        .I4(Q[0]),
        .I5(data_R[73]),
        .O(\data_out_R[9]_i_3_n_0 ));
  FDRE \data_out_R_reg[0] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[0] ),
        .Q(data_R[0]),
        .R(1'b0));
  FDRE \data_out_R_reg[100] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[100] ),
        .Q(data_R[100]),
        .R(1'b0));
  FDRE \data_out_R_reg[101] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[101] ),
        .Q(data_R[101]),
        .R(1'b0));
  FDRE \data_out_R_reg[102] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[102] ),
        .Q(data_R[102]),
        .R(1'b0));
  FDRE \data_out_R_reg[103] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[103] ),
        .Q(data_R[103]),
        .R(1'b0));
  FDRE \data_out_R_reg[104] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[104] ),
        .Q(data_R[104]),
        .R(1'b0));
  FDRE \data_out_R_reg[105] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[105] ),
        .Q(data_R[105]),
        .R(1'b0));
  FDRE \data_out_R_reg[106] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[106] ),
        .Q(data_R[106]),
        .R(1'b0));
  FDRE \data_out_R_reg[107] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[107] ),
        .Q(data_R[107]),
        .R(1'b0));
  FDRE \data_out_R_reg[108] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[108] ),
        .Q(data_R[108]),
        .R(1'b0));
  FDRE \data_out_R_reg[109] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[109] ),
        .Q(data_R[109]),
        .R(1'b0));
  FDRE \data_out_R_reg[10] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[10] ),
        .Q(data_R[10]),
        .R(1'b0));
  FDRE \data_out_R_reg[110] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[110] ),
        .Q(data_R[110]),
        .R(1'b0));
  FDRE \data_out_R_reg[111] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[111] ),
        .Q(data_R[111]),
        .R(1'b0));
  FDRE \data_out_R_reg[112] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[112] ),
        .Q(data_R[112]),
        .R(1'b0));
  FDRE \data_out_R_reg[113] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[113] ),
        .Q(data_R[113]),
        .R(1'b0));
  FDRE \data_out_R_reg[114] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[114] ),
        .Q(data_R[114]),
        .R(1'b0));
  FDRE \data_out_R_reg[115] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[115] ),
        .Q(data_R[115]),
        .R(1'b0));
  FDRE \data_out_R_reg[116] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[116] ),
        .Q(data_R[116]),
        .R(1'b0));
  FDRE \data_out_R_reg[117] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[117] ),
        .Q(data_R[117]),
        .R(1'b0));
  FDRE \data_out_R_reg[118] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[118] ),
        .Q(data_R[118]),
        .R(1'b0));
  FDRE \data_out_R_reg[119] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[119] ),
        .Q(data_R[119]),
        .R(1'b0));
  FDRE \data_out_R_reg[11] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[11] ),
        .Q(data_R[11]),
        .R(1'b0));
  FDRE \data_out_R_reg[120] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[120] ),
        .Q(data_R[120]),
        .R(1'b0));
  FDRE \data_out_R_reg[121] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[121] ),
        .Q(data_R[121]),
        .R(1'b0));
  FDRE \data_out_R_reg[122] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[122] ),
        .Q(data_R[122]),
        .R(1'b0));
  FDRE \data_out_R_reg[123] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[123] ),
        .Q(data_R[123]),
        .R(1'b0));
  FDRE \data_out_R_reg[124] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[124] ),
        .Q(data_R[124]),
        .R(1'b0));
  FDRE \data_out_R_reg[125] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[125] ),
        .Q(data_R[125]),
        .R(1'b0));
  FDRE \data_out_R_reg[126] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[126] ),
        .Q(data_R[126]),
        .R(1'b0));
  FDRE \data_out_R_reg[127] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[127] ),
        .Q(data_R[127]),
        .R(1'b0));
  FDRE \data_out_R_reg[12] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[12] ),
        .Q(data_R[12]),
        .R(1'b0));
  FDRE \data_out_R_reg[13] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[13] ),
        .Q(data_R[13]),
        .R(1'b0));
  FDRE \data_out_R_reg[14] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[14] ),
        .Q(data_R[14]),
        .R(1'b0));
  FDRE \data_out_R_reg[15] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[15] ),
        .Q(data_R[15]),
        .R(1'b0));
  FDRE \data_out_R_reg[16] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[16] ),
        .Q(data_R[16]),
        .R(1'b0));
  FDRE \data_out_R_reg[17] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[17] ),
        .Q(data_R[17]),
        .R(1'b0));
  FDRE \data_out_R_reg[18] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[18] ),
        .Q(data_R[18]),
        .R(1'b0));
  FDRE \data_out_R_reg[19] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[19] ),
        .Q(data_R[19]),
        .R(1'b0));
  FDRE \data_out_R_reg[1] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[1] ),
        .Q(data_R[1]),
        .R(1'b0));
  FDRE \data_out_R_reg[20] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[20] ),
        .Q(data_R[20]),
        .R(1'b0));
  FDRE \data_out_R_reg[21] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[21] ),
        .Q(data_R[21]),
        .R(1'b0));
  FDRE \data_out_R_reg[22] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[22] ),
        .Q(data_R[22]),
        .R(1'b0));
  FDRE \data_out_R_reg[23] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[23] ),
        .Q(data_R[23]),
        .R(1'b0));
  FDRE \data_out_R_reg[24] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[24] ),
        .Q(data_R[24]),
        .R(1'b0));
  FDRE \data_out_R_reg[25] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[25] ),
        .Q(data_R[25]),
        .R(1'b0));
  FDRE \data_out_R_reg[26] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[26] ),
        .Q(data_R[26]),
        .R(1'b0));
  FDRE \data_out_R_reg[27] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[27] ),
        .Q(data_R[27]),
        .R(1'b0));
  FDRE \data_out_R_reg[28] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[28] ),
        .Q(data_R[28]),
        .R(1'b0));
  FDRE \data_out_R_reg[29] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[29] ),
        .Q(data_R[29]),
        .R(1'b0));
  FDRE \data_out_R_reg[2] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[2] ),
        .Q(data_R[2]),
        .R(1'b0));
  FDRE \data_out_R_reg[30] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[30] ),
        .Q(data_R[30]),
        .R(1'b0));
  FDRE \data_out_R_reg[31] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[31] ),
        .Q(data_R[31]),
        .R(1'b0));
  FDRE \data_out_R_reg[32] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[32] ),
        .Q(data_R[32]),
        .R(1'b0));
  FDRE \data_out_R_reg[33] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[33] ),
        .Q(data_R[33]),
        .R(1'b0));
  FDRE \data_out_R_reg[34] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[34] ),
        .Q(data_R[34]),
        .R(1'b0));
  FDRE \data_out_R_reg[35] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[35] ),
        .Q(data_R[35]),
        .R(1'b0));
  FDRE \data_out_R_reg[36] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[36] ),
        .Q(data_R[36]),
        .R(1'b0));
  FDRE \data_out_R_reg[37] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[37] ),
        .Q(data_R[37]),
        .R(1'b0));
  FDRE \data_out_R_reg[38] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[38] ),
        .Q(data_R[38]),
        .R(1'b0));
  FDRE \data_out_R_reg[39] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[39] ),
        .Q(data_R[39]),
        .R(1'b0));
  FDRE \data_out_R_reg[3] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[3] ),
        .Q(data_R[3]),
        .R(1'b0));
  FDRE \data_out_R_reg[40] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[40] ),
        .Q(data_R[40]),
        .R(1'b0));
  FDRE \data_out_R_reg[41] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[41] ),
        .Q(data_R[41]),
        .R(1'b0));
  FDRE \data_out_R_reg[42] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[42] ),
        .Q(data_R[42]),
        .R(1'b0));
  FDRE \data_out_R_reg[43] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[43] ),
        .Q(data_R[43]),
        .R(1'b0));
  FDRE \data_out_R_reg[44] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[44] ),
        .Q(data_R[44]),
        .R(1'b0));
  FDRE \data_out_R_reg[45] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[45] ),
        .Q(data_R[45]),
        .R(1'b0));
  FDRE \data_out_R_reg[46] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[46] ),
        .Q(data_R[46]),
        .R(1'b0));
  FDRE \data_out_R_reg[47] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[47] ),
        .Q(data_R[47]),
        .R(1'b0));
  FDRE \data_out_R_reg[48] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[48] ),
        .Q(data_R[48]),
        .R(1'b0));
  FDRE \data_out_R_reg[49] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[49] ),
        .Q(data_R[49]),
        .R(1'b0));
  FDRE \data_out_R_reg[4] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[4] ),
        .Q(data_R[4]),
        .R(1'b0));
  FDRE \data_out_R_reg[50] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[50] ),
        .Q(data_R[50]),
        .R(1'b0));
  FDRE \data_out_R_reg[51] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[51] ),
        .Q(data_R[51]),
        .R(1'b0));
  FDRE \data_out_R_reg[52] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[52] ),
        .Q(data_R[52]),
        .R(1'b0));
  FDRE \data_out_R_reg[53] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[53] ),
        .Q(data_R[53]),
        .R(1'b0));
  FDRE \data_out_R_reg[54] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[54] ),
        .Q(data_R[54]),
        .R(1'b0));
  FDRE \data_out_R_reg[55] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[55] ),
        .Q(data_R[55]),
        .R(1'b0));
  FDRE \data_out_R_reg[56] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[56] ),
        .Q(data_R[56]),
        .R(1'b0));
  FDRE \data_out_R_reg[57] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[57] ),
        .Q(data_R[57]),
        .R(1'b0));
  FDRE \data_out_R_reg[58] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[58] ),
        .Q(data_R[58]),
        .R(1'b0));
  FDRE \data_out_R_reg[59] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[59] ),
        .Q(data_R[59]),
        .R(1'b0));
  FDRE \data_out_R_reg[5] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[5] ),
        .Q(data_R[5]),
        .R(1'b0));
  FDRE \data_out_R_reg[60] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[60] ),
        .Q(data_R[60]),
        .R(1'b0));
  FDRE \data_out_R_reg[61] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[61] ),
        .Q(data_R[61]),
        .R(1'b0));
  FDRE \data_out_R_reg[62] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[62] ),
        .Q(data_R[62]),
        .R(1'b0));
  FDRE \data_out_R_reg[63] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[63] ),
        .Q(data_R[63]),
        .R(1'b0));
  FDRE \data_out_R_reg[64] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[64] ),
        .Q(data_R[64]),
        .R(1'b0));
  FDRE \data_out_R_reg[65] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[65] ),
        .Q(data_R[65]),
        .R(1'b0));
  FDRE \data_out_R_reg[66] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[66] ),
        .Q(data_R[66]),
        .R(1'b0));
  FDRE \data_out_R_reg[67] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[67] ),
        .Q(data_R[67]),
        .R(1'b0));
  FDRE \data_out_R_reg[68] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[68] ),
        .Q(data_R[68]),
        .R(1'b0));
  FDRE \data_out_R_reg[69] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[69] ),
        .Q(data_R[69]),
        .R(1'b0));
  FDRE \data_out_R_reg[6] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[6] ),
        .Q(data_R[6]),
        .R(1'b0));
  FDRE \data_out_R_reg[70] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[70] ),
        .Q(data_R[70]),
        .R(1'b0));
  FDRE \data_out_R_reg[71] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[71] ),
        .Q(data_R[71]),
        .R(1'b0));
  FDRE \data_out_R_reg[72] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[72] ),
        .Q(data_R[72]),
        .R(1'b0));
  FDRE \data_out_R_reg[73] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[73] ),
        .Q(data_R[73]),
        .R(1'b0));
  FDRE \data_out_R_reg[74] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[74] ),
        .Q(data_R[74]),
        .R(1'b0));
  FDRE \data_out_R_reg[75] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[75] ),
        .Q(data_R[75]),
        .R(1'b0));
  FDRE \data_out_R_reg[76] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[76] ),
        .Q(data_R[76]),
        .R(1'b0));
  FDRE \data_out_R_reg[77] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[77] ),
        .Q(data_R[77]),
        .R(1'b0));
  FDRE \data_out_R_reg[78] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[78] ),
        .Q(data_R[78]),
        .R(1'b0));
  FDRE \data_out_R_reg[79] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[79] ),
        .Q(data_R[79]),
        .R(1'b0));
  FDRE \data_out_R_reg[7] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[7] ),
        .Q(data_R[7]),
        .R(1'b0));
  FDRE \data_out_R_reg[80] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[80] ),
        .Q(data_R[80]),
        .R(1'b0));
  FDRE \data_out_R_reg[81] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[81] ),
        .Q(data_R[81]),
        .R(1'b0));
  FDRE \data_out_R_reg[82] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[82] ),
        .Q(data_R[82]),
        .R(1'b0));
  FDRE \data_out_R_reg[83] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[83] ),
        .Q(data_R[83]),
        .R(1'b0));
  FDRE \data_out_R_reg[84] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[84] ),
        .Q(data_R[84]),
        .R(1'b0));
  FDRE \data_out_R_reg[85] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[85] ),
        .Q(data_R[85]),
        .R(1'b0));
  FDRE \data_out_R_reg[86] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[86] ),
        .Q(data_R[86]),
        .R(1'b0));
  FDRE \data_out_R_reg[87] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[87] ),
        .Q(data_R[87]),
        .R(1'b0));
  FDRE \data_out_R_reg[88] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[88] ),
        .Q(data_R[88]),
        .R(1'b0));
  FDRE \data_out_R_reg[89] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[89] ),
        .Q(data_R[89]),
        .R(1'b0));
  FDRE \data_out_R_reg[8] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[8] ),
        .Q(data_R[8]),
        .R(1'b0));
  FDRE \data_out_R_reg[90] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[90] ),
        .Q(data_R[90]),
        .R(1'b0));
  FDRE \data_out_R_reg[91] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[91] ),
        .Q(data_R[91]),
        .R(1'b0));
  FDRE \data_out_R_reg[92] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[92] ),
        .Q(data_R[92]),
        .R(1'b0));
  FDRE \data_out_R_reg[93] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[93] ),
        .Q(data_R[93]),
        .R(1'b0));
  FDRE \data_out_R_reg[94] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[94] ),
        .Q(data_R[94]),
        .R(1'b0));
  FDRE \data_out_R_reg[95] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[95] ),
        .Q(data_R[95]),
        .R(1'b0));
  FDRE \data_out_R_reg[96] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[96] ),
        .Q(data_R[96]),
        .R(1'b0));
  FDRE \data_out_R_reg[97] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[97] ),
        .Q(data_R[97]),
        .R(1'b0));
  FDRE \data_out_R_reg[98] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[98] ),
        .Q(data_R[98]),
        .R(1'b0));
  FDRE \data_out_R_reg[99] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[99] ),
        .Q(data_R[99]),
        .R(1'b0));
  FDRE \data_out_R_reg[9] 
       (.C(s00_axis_aclk),
        .CE(start_i_1_n_0),
        .D(\dataR_reg_n_0_[9] ),
        .Q(data_R[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hFE)) 
    dma_tlast0_carry__0_i_1
       (.I0(count[6]),
        .I1(dma_tlast0_carry_i_9_n_0),
        .I2(count[7]),
        .O(\sample_count_reg[6]_0 [2]));
  LUT3 #(
    .INIT(8'hFE)) 
    dma_tlast0_carry__0_i_2
       (.I0(count[6]),
        .I1(dma_tlast0_carry_i_9_n_0),
        .I2(count[7]),
        .O(\sample_count_reg[6]_0 [1]));
  LUT3 #(
    .INIT(8'hFE)) 
    dma_tlast0_carry__0_i_3
       (.I0(count[6]),
        .I1(dma_tlast0_carry_i_9_n_0),
        .I2(count[7]),
        .O(\sample_count_reg[6]_0 [0]));
  LUT3 #(
    .INIT(8'hFE)) 
    dma_tlast0_carry_i_1
       (.I0(count[6]),
        .I1(dma_tlast0_carry_i_9_n_0),
        .I2(count[7]),
        .O(S[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAA95556)) 
    dma_tlast0_carry_i_10
       (.I0(count[3]),
        .I1(\sample_count_reg[2]_0 [1]),
        .I2(\sample_count_reg[2]_0 [0]),
        .I3(\sample_count_reg[2]_0 [2]),
        .I4(dma_tlast0_carry[0]),
        .O(dma_tlast0_carry_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    dma_tlast0_carry_i_11
       (.I0(\sample_count_reg[2]_0 [2]),
        .I1(\sample_count_reg[2]_0 [0]),
        .I2(\sample_count_reg[2]_0 [1]),
        .I3(count[3]),
        .O(dma_tlast0_carry_i_11_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    dma_tlast0_carry_i_2
       (.I0(count[6]),
        .I1(dma_tlast0_carry_i_9_n_0),
        .I2(count[7]),
        .O(S[5]));
  LUT3 #(
    .INIT(8'hFE)) 
    dma_tlast0_carry_i_3
       (.I0(count[6]),
        .I1(dma_tlast0_carry_i_9_n_0),
        .I2(count[7]),
        .O(S[4]));
  LUT3 #(
    .INIT(8'hFE)) 
    dma_tlast0_carry_i_4
       (.I0(count[6]),
        .I1(dma_tlast0_carry_i_9_n_0),
        .I2(count[7]),
        .O(S[3]));
  LUT3 #(
    .INIT(8'hFE)) 
    dma_tlast0_carry_i_5
       (.I0(count[6]),
        .I1(dma_tlast0_carry_i_9_n_0),
        .I2(count[7]),
        .O(S[2]));
  LUT5 #(
    .INIT(32'h94000294)) 
    dma_tlast0_carry_i_6
       (.I0(dma_tlast0_carry[3]),
        .I1(count[6]),
        .I2(dma_tlast0_carry_i_9_n_0),
        .I3(count[7]),
        .I4(dma_tlast0_carry[4]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h8002200808800220)) 
    dma_tlast0_carry_i_7
       (.I0(dma_tlast0_carry_i_10_n_0),
        .I1(count[5]),
        .I2(dma_tlast0_carry_i_11_n_0),
        .I3(count[4]),
        .I4(dma_tlast0_carry[2]),
        .I5(dma_tlast0_carry[1]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    dma_tlast0_carry_i_9
       (.I0(count[4]),
        .I1(\sample_count_reg[2]_0 [2]),
        .I2(\sample_count_reg[2]_0 [0]),
        .I3(\sample_count_reg[2]_0 [1]),
        .I4(count[3]),
        .I5(count[5]),
        .O(dma_tlast0_carry_i_9_n_0));
  LUT6 #(
    .INIT(64'hF5F4A0A0F5F5A0A0)) 
    dma_tready_i_1
       (.I0(start_i_1_n_0),
        .I1(idx[3]),
        .I2(fft_ready),
        .I3(dma_tready_i_2_n_0),
        .I4(dma_tready_reg_0),
        .I5(s00_axis_tvalid),
        .O(dma_tready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    dma_tready_i_2
       (.I0(idx[1]),
        .I1(idx[0]),
        .I2(idx[2]),
        .O(dma_tready_i_2_n_0));
  FDRE #(
    .INIT(1'b1)) 
    dma_tready_reg
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(dma_tready_i_1_n_0),
        .Q(dma_tready_reg_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    dma_tvalid_i_2
       (.I0(fft_start),
        .I1(previous_start),
        .O(idx0));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \idx[0]_i_1 
       (.I0(idx[0]),
        .O(\idx[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \idx[1]_i_1 
       (.I0(idx[0]),
        .I1(idx[1]),
        .O(\idx[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \idx[2]_i_1__0 
       (.I0(idx[1]),
        .I1(idx[0]),
        .I2(idx[2]),
        .O(\idx[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \idx[3]_i_1__0 
       (.I0(s00_axis_tvalid),
        .I1(dma_tready_reg_0),
        .I2(idx[3]),
        .I3(idx[1]),
        .I4(idx[2]),
        .I5(idx[0]),
        .O(\idx[3]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \idx[3]_i_2 
       (.I0(dma_tready_reg_0),
        .I1(s00_axis_tvalid),
        .O(dma_tready1));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \idx[3]_i_3 
       (.I0(idx[1]),
        .I1(idx[0]),
        .I2(idx[2]),
        .I3(idx[3]),
        .O(\idx[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idx_reg[0] 
       (.C(s00_axis_aclk),
        .CE(dma_tready1),
        .D(\idx[0]_i_1_n_0 ),
        .Q(idx[0]),
        .R(\idx[3]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idx_reg[1] 
       (.C(s00_axis_aclk),
        .CE(dma_tready1),
        .D(\idx[1]_i_1_n_0 ),
        .Q(idx[1]),
        .R(\idx[3]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idx_reg[2] 
       (.C(s00_axis_aclk),
        .CE(dma_tready1),
        .D(\idx[2]_i_1__0_n_0 ),
        .Q(idx[2]),
        .R(\idx[3]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idx_reg[3] 
       (.C(s00_axis_aclk),
        .CE(dma_tready1),
        .D(\idx[3]_i_3_n_0 ),
        .Q(idx[3]),
        .R(\idx[3]_i_1__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sample_count[0]_i_1 
       (.I0(count_reg[0]),
        .O(\sample_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sample_count[1]_i_1 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .O(\sample_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sample_count[2]_i_1 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .I2(count_reg[2]),
        .O(\sample_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \sample_count[3]_i_1 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .I2(count_reg[2]),
        .I3(count_reg[3]),
        .O(\sample_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \sample_count[4]_i_1 
       (.I0(count_reg[2]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(count_reg[3]),
        .I4(count_reg[4]),
        .O(\sample_count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \sample_count[5]_i_1 
       (.I0(count_reg[3]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(count_reg[2]),
        .I4(count_reg[4]),
        .I5(count_reg[5]),
        .O(\sample_count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sample_count[6]_i_1 
       (.I0(\sample_count[7]_i_3_n_0 ),
        .I1(count_reg[6]),
        .O(\sample_count[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \sample_count[7]_i_1 
       (.I0(s00_axis_tvalid),
        .I1(dma_tready_reg_0),
        .I2(s00_axis_tlast),
        .O(count_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sample_count[7]_i_2 
       (.I0(\sample_count[7]_i_3_n_0 ),
        .I1(count_reg[6]),
        .I2(count_reg[7]),
        .O(\sample_count[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \sample_count[7]_i_3 
       (.I0(count_reg[5]),
        .I1(count_reg[3]),
        .I2(count_reg[1]),
        .I3(count_reg[0]),
        .I4(count_reg[2]),
        .I5(count_reg[4]),
        .O(\sample_count[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[0] 
       (.C(s00_axis_aclk),
        .CE(count_0),
        .D(\sample_count[0]_i_1_n_0 ),
        .Q(\sample_count_reg[2]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[1] 
       (.C(s00_axis_aclk),
        .CE(count_0),
        .D(\sample_count[1]_i_1_n_0 ),
        .Q(\sample_count_reg[2]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[2] 
       (.C(s00_axis_aclk),
        .CE(count_0),
        .D(\sample_count[2]_i_1_n_0 ),
        .Q(\sample_count_reg[2]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[3] 
       (.C(s00_axis_aclk),
        .CE(count_0),
        .D(\sample_count[3]_i_1_n_0 ),
        .Q(count[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[4] 
       (.C(s00_axis_aclk),
        .CE(count_0),
        .D(\sample_count[4]_i_1_n_0 ),
        .Q(count[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[5] 
       (.C(s00_axis_aclk),
        .CE(count_0),
        .D(\sample_count[5]_i_1_n_0 ),
        .Q(count[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[6] 
       (.C(s00_axis_aclk),
        .CE(count_0),
        .D(\sample_count[6]_i_1_n_0 ),
        .Q(count[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[7] 
       (.C(s00_axis_aclk),
        .CE(count_0),
        .D(\sample_count[7]_i_2_n_0 ),
        .Q(count[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h44444F4444444444)) 
    shift_to_output_i_1
       (.I0(start_i_1_n_0),
        .I1(shift_to_output_reg_n_0),
        .I2(idx[3]),
        .I3(idx[2]),
        .I4(shift_to_output_i_2_n_0),
        .I5(dma_tready1),
        .O(shift_to_output_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h7)) 
    shift_to_output_i_2
       (.I0(idx[0]),
        .I1(idx[1]),
        .O(shift_to_output_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    shift_to_output_reg
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(shift_to_output_i_1_n_0),
        .Q(shift_to_output_reg_n_0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hD0)) 
    start_i_1
       (.I0(dma_tready_reg_0),
        .I1(shift_to_output_reg_n_0),
        .I2(fft_ready),
        .O(start_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    start_reg
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(start_i_1_n_0),
        .Q(fft_start),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clocking_out
   (previous_start,
    dma_tvalid_reg_0,
    fft_ready,
    m00_axis_tlast,
    Q,
    E,
    \count_reg[7]_0 ,
    m00_axis_tdata,
    fft_start,
    s00_axis_aclk,
    idx0,
    S,
    dma_tlast_reg_0,
    m00_axis_tready,
    dma_tlast0_carry_0,
    D,
    \data_out_I_reg[15]_0 );
  output previous_start;
  output dma_tvalid_reg_0;
  output fft_ready;
  output m00_axis_tlast;
  output [3:0]Q;
  output [0:0]E;
  output [4:0]\count_reg[7]_0 ;
  output [31:0]m00_axis_tdata;
  input fft_start;
  input s00_axis_aclk;
  input idx0;
  input [6:0]S;
  input [2:0]dma_tlast_reg_0;
  input m00_axis_tready;
  input [2:0]dma_tlast0_carry_0;
  input [15:0]D;
  input [15:0]\data_out_I_reg[15]_0 ;

  wire [15:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire [6:0]S;
  wire \count[7]_i_3_n_0 ;
  wire [2:0]count_reg;
  wire [4:0]\count_reg[7]_0 ;
  wire \data_out_I[15]_i_1_n_0 ;
  wire [15:0]\data_out_I_reg[15]_0 ;
  wire dma_tlast0;
  wire [2:0]dma_tlast0_carry_0;
  wire dma_tlast0_carry__0_n_6;
  wire dma_tlast0_carry__0_n_7;
  wire dma_tlast0_carry_i_8_n_0;
  wire dma_tlast0_carry_n_0;
  wire dma_tlast0_carry_n_1;
  wire dma_tlast0_carry_n_2;
  wire dma_tlast0_carry_n_3;
  wire dma_tlast0_carry_n_4;
  wire dma_tlast0_carry_n_5;
  wire dma_tlast0_carry_n_6;
  wire dma_tlast0_carry_n_7;
  wire dma_tlast_i_1_n_0;
  wire [2:0]dma_tlast_reg_0;
  wire dma_tvalid_i_1_n_0;
  wire dma_tvalid_reg_0;
  wire fft_ready;
  wire fft_start;
  wire idx0;
  wire [31:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire [7:0]p_0_in;
  wire p_0_in_0;
  wire [3:0]p_1_in;
  wire previous_start;
  wire s00_axis_aclk;
  wire [7:0]NLW_dma_tlast0_carry_O_UNCONNECTED;
  wire [7:3]NLW_dma_tlast0_carry__0_CO_UNCONNECTED;
  wire [7:0]NLW_dma_tlast0_carry__0_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .I2(count_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_1 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .I2(count_reg[2]),
        .I3(\count_reg[7]_0 [0]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count[4]_i_1 
       (.I0(count_reg[2]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(\count_reg[7]_0 [0]),
        .I4(\count_reg[7]_0 [1]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count[5]_i_1 
       (.I0(\count_reg[7]_0 [0]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(count_reg[2]),
        .I4(\count_reg[7]_0 [1]),
        .I5(\count_reg[7]_0 [2]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[6]_i_1 
       (.I0(\count[7]_i_3_n_0 ),
        .I1(\count_reg[7]_0 [3]),
        .O(p_0_in[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \count[7]_i_1 
       (.I0(m00_axis_tready),
        .I1(dma_tvalid_reg_0),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[7]_i_2 
       (.I0(\count[7]_i_3_n_0 ),
        .I1(\count_reg[7]_0 [3]),
        .I2(\count_reg[7]_0 [4]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count[7]_i_3 
       (.I0(\count_reg[7]_0 [2]),
        .I1(\count_reg[7]_0 [0]),
        .I2(count_reg[1]),
        .I3(count_reg[0]),
        .I4(count_reg[2]),
        .I5(\count_reg[7]_0 [1]),
        .O(\count[7]_i_3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_reg[0] 
       (.C(s00_axis_aclk),
        .CE(E),
        .D(p_0_in[0]),
        .Q(count_reg[0]),
        .S(dma_tlast_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(s00_axis_aclk),
        .CE(E),
        .D(p_0_in[1]),
        .Q(count_reg[1]),
        .R(dma_tlast_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(s00_axis_aclk),
        .CE(E),
        .D(p_0_in[2]),
        .Q(count_reg[2]),
        .R(dma_tlast_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(s00_axis_aclk),
        .CE(E),
        .D(p_0_in[3]),
        .Q(\count_reg[7]_0 [0]),
        .R(dma_tlast_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(s00_axis_aclk),
        .CE(E),
        .D(p_0_in[4]),
        .Q(\count_reg[7]_0 [1]),
        .R(dma_tlast_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(s00_axis_aclk),
        .CE(E),
        .D(p_0_in[5]),
        .Q(\count_reg[7]_0 [2]),
        .R(dma_tlast_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(s00_axis_aclk),
        .CE(E),
        .D(p_0_in[6]),
        .Q(\count_reg[7]_0 [3]),
        .R(dma_tlast_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(s00_axis_aclk),
        .CE(E),
        .D(p_0_in[7]),
        .Q(\count_reg[7]_0 [4]),
        .R(dma_tlast_i_1_n_0));
  LUT4 #(
    .INIT(16'h8F88)) 
    \data_out_I[15]_i_1 
       (.I0(dma_tvalid_reg_0),
        .I1(m00_axis_tready),
        .I2(previous_start),
        .I3(fft_start),
        .O(\data_out_I[15]_i_1_n_0 ));
  FDRE \data_out_I_reg[0] 
       (.C(s00_axis_aclk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\data_out_I_reg[15]_0 [0]),
        .Q(m00_axis_tdata[16]),
        .R(1'b0));
  FDRE \data_out_I_reg[10] 
       (.C(s00_axis_aclk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\data_out_I_reg[15]_0 [10]),
        .Q(m00_axis_tdata[26]),
        .R(1'b0));
  FDRE \data_out_I_reg[11] 
       (.C(s00_axis_aclk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\data_out_I_reg[15]_0 [11]),
        .Q(m00_axis_tdata[27]),
        .R(1'b0));
  FDRE \data_out_I_reg[12] 
       (.C(s00_axis_aclk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\data_out_I_reg[15]_0 [12]),
        .Q(m00_axis_tdata[28]),
        .R(1'b0));
  FDRE \data_out_I_reg[13] 
       (.C(s00_axis_aclk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\data_out_I_reg[15]_0 [13]),
        .Q(m00_axis_tdata[29]),
        .R(1'b0));
  FDRE \data_out_I_reg[14] 
       (.C(s00_axis_aclk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\data_out_I_reg[15]_0 [14]),
        .Q(m00_axis_tdata[30]),
        .R(1'b0));
  FDRE \data_out_I_reg[15] 
       (.C(s00_axis_aclk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\data_out_I_reg[15]_0 [15]),
        .Q(m00_axis_tdata[31]),
        .R(1'b0));
  FDRE \data_out_I_reg[1] 
       (.C(s00_axis_aclk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\data_out_I_reg[15]_0 [1]),
        .Q(m00_axis_tdata[17]),
        .R(1'b0));
  FDRE \data_out_I_reg[2] 
       (.C(s00_axis_aclk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\data_out_I_reg[15]_0 [2]),
        .Q(m00_axis_tdata[18]),
        .R(1'b0));
  FDRE \data_out_I_reg[3] 
       (.C(s00_axis_aclk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\data_out_I_reg[15]_0 [3]),
        .Q(m00_axis_tdata[19]),
        .R(1'b0));
  FDRE \data_out_I_reg[4] 
       (.C(s00_axis_aclk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\data_out_I_reg[15]_0 [4]),
        .Q(m00_axis_tdata[20]),
        .R(1'b0));
  FDRE \data_out_I_reg[5] 
       (.C(s00_axis_aclk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\data_out_I_reg[15]_0 [5]),
        .Q(m00_axis_tdata[21]),
        .R(1'b0));
  FDRE \data_out_I_reg[6] 
       (.C(s00_axis_aclk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\data_out_I_reg[15]_0 [6]),
        .Q(m00_axis_tdata[22]),
        .R(1'b0));
  FDRE \data_out_I_reg[7] 
       (.C(s00_axis_aclk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\data_out_I_reg[15]_0 [7]),
        .Q(m00_axis_tdata[23]),
        .R(1'b0));
  FDRE \data_out_I_reg[8] 
       (.C(s00_axis_aclk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\data_out_I_reg[15]_0 [8]),
        .Q(m00_axis_tdata[24]),
        .R(1'b0));
  FDRE \data_out_I_reg[9] 
       (.C(s00_axis_aclk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\data_out_I_reg[15]_0 [9]),
        .Q(m00_axis_tdata[25]),
        .R(1'b0));
  FDRE \data_out_R_reg[0] 
       (.C(s00_axis_aclk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(D[0]),
        .Q(m00_axis_tdata[0]),
        .R(1'b0));
  FDRE \data_out_R_reg[10] 
       (.C(s00_axis_aclk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(D[10]),
        .Q(m00_axis_tdata[10]),
        .R(1'b0));
  FDRE \data_out_R_reg[11] 
       (.C(s00_axis_aclk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(D[11]),
        .Q(m00_axis_tdata[11]),
        .R(1'b0));
  FDRE \data_out_R_reg[12] 
       (.C(s00_axis_aclk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(D[12]),
        .Q(m00_axis_tdata[12]),
        .R(1'b0));
  FDRE \data_out_R_reg[13] 
       (.C(s00_axis_aclk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(D[13]),
        .Q(m00_axis_tdata[13]),
        .R(1'b0));
  FDRE \data_out_R_reg[14] 
       (.C(s00_axis_aclk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(D[14]),
        .Q(m00_axis_tdata[14]),
        .R(1'b0));
  FDRE \data_out_R_reg[15] 
       (.C(s00_axis_aclk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(D[15]),
        .Q(m00_axis_tdata[15]),
        .R(1'b0));
  FDRE \data_out_R_reg[1] 
       (.C(s00_axis_aclk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(D[1]),
        .Q(m00_axis_tdata[1]),
        .R(1'b0));
  FDRE \data_out_R_reg[2] 
       (.C(s00_axis_aclk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(D[2]),
        .Q(m00_axis_tdata[2]),
        .R(1'b0));
  FDRE \data_out_R_reg[3] 
       (.C(s00_axis_aclk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(D[3]),
        .Q(m00_axis_tdata[3]),
        .R(1'b0));
  FDRE \data_out_R_reg[4] 
       (.C(s00_axis_aclk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(D[4]),
        .Q(m00_axis_tdata[4]),
        .R(1'b0));
  FDRE \data_out_R_reg[5] 
       (.C(s00_axis_aclk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(D[5]),
        .Q(m00_axis_tdata[5]),
        .R(1'b0));
  FDRE \data_out_R_reg[6] 
       (.C(s00_axis_aclk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(D[6]),
        .Q(m00_axis_tdata[6]),
        .R(1'b0));
  FDRE \data_out_R_reg[7] 
       (.C(s00_axis_aclk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(D[7]),
        .Q(m00_axis_tdata[7]),
        .R(1'b0));
  FDRE \data_out_R_reg[8] 
       (.C(s00_axis_aclk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(D[8]),
        .Q(m00_axis_tdata[8]),
        .R(1'b0));
  FDRE \data_out_R_reg[9] 
       (.C(s00_axis_aclk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(D[9]),
        .Q(m00_axis_tdata[9]),
        .R(1'b0));
  CARRY8 dma_tlast0_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({dma_tlast0_carry_n_0,dma_tlast0_carry_n_1,dma_tlast0_carry_n_2,dma_tlast0_carry_n_3,dma_tlast0_carry_n_4,dma_tlast0_carry_n_5,dma_tlast0_carry_n_6,dma_tlast0_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_dma_tlast0_carry_O_UNCONNECTED[7:0]),
        .S({S,dma_tlast0_carry_i_8_n_0}));
  CARRY8 dma_tlast0_carry__0
       (.CI(dma_tlast0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_dma_tlast0_carry__0_CO_UNCONNECTED[7:3],dma_tlast0,dma_tlast0_carry__0_n_6,dma_tlast0_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_dma_tlast0_carry__0_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,dma_tlast_reg_0}));
  LUT6 #(
    .INIT(64'h4002100808400210)) 
    dma_tlast0_carry_i_8
       (.I0(count_reg[0]),
        .I1(dma_tlast0_carry_0[2]),
        .I2(dma_tlast0_carry_0[0]),
        .I3(dma_tlast0_carry_0[1]),
        .I4(count_reg[2]),
        .I5(count_reg[1]),
        .O(dma_tlast0_carry_i_8_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    dma_tlast_i_1
       (.I0(dma_tvalid_reg_0),
        .I1(m00_axis_tready),
        .I2(dma_tlast0),
        .O(dma_tlast_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dma_tlast_reg
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(dma_tlast_i_1_n_0),
        .Q(m00_axis_tlast),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    dma_tvalid_i_1
       (.I0(dma_tvalid_reg_0),
        .I1(m00_axis_tready),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(dma_tvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dma_tvalid_reg
       (.C(s00_axis_aclk),
        .CE(idx0),
        .D(1'b1),
        .Q(dma_tvalid_reg_0),
        .R(dma_tvalid_i_1_n_0));
  LUT3 #(
    .INIT(8'h7F)) 
    \idx[0]_i_1__0 
       (.I0(Q[0]),
        .I1(dma_tvalid_reg_0),
        .I2(m00_axis_tready),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h0880)) 
    \idx[1]_i_1__0 
       (.I0(dma_tvalid_reg_0),
        .I1(m00_axis_tready),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'h08808080)) 
    \idx[2]_i_1 
       (.I0(dma_tvalid_reg_0),
        .I1(m00_axis_tready),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFD0000)) 
    \idx[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(E),
        .I5(idx0),
        .O(p_0_in_0));
  LUT6 #(
    .INIT(64'h0888800088800000)) 
    \idx[3]_i_2__0 
       (.I0(dma_tvalid_reg_0),
        .I1(m00_axis_tready),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(Q[1]),
        .O(p_1_in[3]));
  FDRE #(
    .INIT(1'b0)) 
    \idx_reg[0] 
       (.C(s00_axis_aclk),
        .CE(p_0_in_0),
        .D(p_1_in[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idx_reg[1] 
       (.C(s00_axis_aclk),
        .CE(p_0_in_0),
        .D(p_1_in[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idx_reg[2] 
       (.C(s00_axis_aclk),
        .CE(p_0_in_0),
        .D(p_1_in[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idx_reg[3] 
       (.C(s00_axis_aclk),
        .CE(p_0_in_0),
        .D(p_1_in[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    previous_start_reg
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(fft_start),
        .Q(previous_start),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    ready_reg
       (.C(s00_axis_aclk),
        .CE(idx0),
        .D(1'b0),
        .Q(fft_ready),
        .S(dma_tvalid_i_1_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fft
   (dma_tready_reg,
    out_tvalid,
    m00_axis_tdata,
    m00_axis_tlast,
    s00_axis_tvalid,
    s00_axis_tdata,
    s00_axis_aclk,
    s00_axis_tlast,
    m00_axis_tready);
  output dma_tready_reg;
  output out_tvalid;
  output [31:0]m00_axis_tdata;
  output m00_axis_tlast;
  input s00_axis_tvalid;
  input [31:0]s00_axis_tdata;
  input s00_axis_aclk;
  input s00_axis_tlast;
  input m00_axis_tready;

  wire [2:0]count;
  wire [7:3]count_reg;
  wire data_in_n_10;
  wire data_in_n_11;
  wire data_in_n_12;
  wire data_in_n_13;
  wire data_in_n_14;
  wire data_in_n_15;
  wire data_in_n_16;
  wire data_in_n_17;
  wire data_in_n_18;
  wire data_in_n_19;
  wire data_in_n_20;
  wire data_in_n_21;
  wire data_in_n_22;
  wire data_in_n_23;
  wire data_in_n_24;
  wire data_in_n_25;
  wire data_in_n_26;
  wire data_in_n_27;
  wire data_in_n_28;
  wire data_in_n_29;
  wire data_in_n_3;
  wire data_in_n_30;
  wire data_in_n_31;
  wire data_in_n_32;
  wire data_in_n_33;
  wire data_in_n_34;
  wire data_in_n_35;
  wire data_in_n_36;
  wire data_in_n_37;
  wire data_in_n_38;
  wire data_in_n_39;
  wire data_in_n_4;
  wire data_in_n_40;
  wire data_in_n_41;
  wire data_in_n_45;
  wire data_in_n_46;
  wire data_in_n_47;
  wire data_in_n_5;
  wire data_in_n_6;
  wire data_in_n_7;
  wire data_in_n_8;
  wire data_in_n_9;
  wire dma_tlast1;
  wire dma_tready_reg;
  wire fft_ready;
  wire fft_start;
  wire [3:0]idx;
  wire idx0;
  wire [31:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire out_tvalid;
  wire previous_start;
  wire s00_axis_aclk;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tlast;
  wire s00_axis_tvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clocking_in data_in
       (.D({data_in_n_3,data_in_n_4,data_in_n_5,data_in_n_6,data_in_n_7,data_in_n_8,data_in_n_9,data_in_n_10,data_in_n_11,data_in_n_12,data_in_n_13,data_in_n_14,data_in_n_15,data_in_n_16,data_in_n_17,data_in_n_18}),
        .Q(idx),
        .S({data_in_n_35,data_in_n_36,data_in_n_37,data_in_n_38,data_in_n_39,data_in_n_40,data_in_n_41}),
        .dma_tlast0_carry(count_reg),
        .dma_tlast1(dma_tlast1),
        .dma_tready_reg_0(dma_tready_reg),
        .fft_ready(fft_ready),
        .fft_start(fft_start),
        .idx0(idx0),
        .\idx_reg[2]_0 ({data_in_n_19,data_in_n_20,data_in_n_21,data_in_n_22,data_in_n_23,data_in_n_24,data_in_n_25,data_in_n_26,data_in_n_27,data_in_n_28,data_in_n_29,data_in_n_30,data_in_n_31,data_in_n_32,data_in_n_33,data_in_n_34}),
        .previous_start(previous_start),
        .s00_axis_aclk(s00_axis_aclk),
        .s00_axis_tdata(s00_axis_tdata),
        .s00_axis_tlast(s00_axis_tlast),
        .s00_axis_tvalid(s00_axis_tvalid),
        .\sample_count_reg[2]_0 (count),
        .\sample_count_reg[6]_0 ({data_in_n_45,data_in_n_46,data_in_n_47}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clocking_out data_out
       (.D({data_in_n_3,data_in_n_4,data_in_n_5,data_in_n_6,data_in_n_7,data_in_n_8,data_in_n_9,data_in_n_10,data_in_n_11,data_in_n_12,data_in_n_13,data_in_n_14,data_in_n_15,data_in_n_16,data_in_n_17,data_in_n_18}),
        .E(dma_tlast1),
        .Q(idx),
        .S({data_in_n_35,data_in_n_36,data_in_n_37,data_in_n_38,data_in_n_39,data_in_n_40,data_in_n_41}),
        .\count_reg[7]_0 (count_reg),
        .\data_out_I_reg[15]_0 ({data_in_n_19,data_in_n_20,data_in_n_21,data_in_n_22,data_in_n_23,data_in_n_24,data_in_n_25,data_in_n_26,data_in_n_27,data_in_n_28,data_in_n_29,data_in_n_30,data_in_n_31,data_in_n_32,data_in_n_33,data_in_n_34}),
        .dma_tlast0_carry_0(count),
        .dma_tlast_reg_0({data_in_n_45,data_in_n_46,data_in_n_47}),
        .dma_tvalid_reg_0(out_tvalid),
        .fft_ready(fft_ready),
        .fft_start(fft_start),
        .idx0(idx0),
        .m00_axis_tdata(m00_axis_tdata),
        .m00_axis_tlast(m00_axis_tlast),
        .m00_axis_tready(m00_axis_tready),
        .previous_start(previous_start),
        .s00_axis_aclk(s00_axis_aclk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fft_dma_v1_0
   (dma_tready_reg,
    out_tvalid,
    m00_axis_tdata,
    m00_axis_tlast,
    s00_axis_tvalid,
    s00_axis_tdata,
    s00_axis_aclk,
    s00_axis_tlast,
    m00_axis_tready);
  output dma_tready_reg;
  output out_tvalid;
  output [31:0]m00_axis_tdata;
  output m00_axis_tlast;
  input s00_axis_tvalid;
  input [31:0]s00_axis_tdata;
  input s00_axis_aclk;
  input s00_axis_tlast;
  input m00_axis_tready;

  wire dma_tready_reg;
  wire [31:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire out_tvalid;
  wire s00_axis_aclk;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tlast;
  wire s00_axis_tvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fft fft_inst
       (.dma_tready_reg(dma_tready_reg),
        .m00_axis_tdata(m00_axis_tdata),
        .m00_axis_tlast(m00_axis_tlast),
        .m00_axis_tready(m00_axis_tready),
        .out_tvalid(out_tvalid),
        .s00_axis_aclk(s00_axis_aclk),
        .s00_axis_tdata(s00_axis_tdata),
        .s00_axis_tlast(s00_axis_tlast),
        .s00_axis_tvalid(s00_axis_tvalid));
endmodule

(* CHECK_LICENSE_TYPE = "kv260_fft_dma_fft_dma_0_2,fft_dma_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "fft_dma_v1_0,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s00_axis_aclk,
    s00_axis_aresetn,
    s00_axis_tready,
    s00_axis_tdata,
    s00_axis_tstrb,
    s00_axis_tlast,
    s00_axis_tvalid,
    m00_axis_aclk,
    m00_axis_aresetn,
    m00_axis_tvalid,
    m00_axis_tdata,
    m00_axis_tstrb,
    m00_axis_tlast,
    m00_axis_tready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXIS_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXIS_CLK, ASSOCIATED_BUSIF S00_AXIS, ASSOCIATED_RESET s00_axis_aresetn, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN kv260_fft_dma_zynq_ultra_ps_e_0_1_pl_clk0, INSERT_VIP 0" *) input s00_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXIS_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TREADY" *) output s00_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TDATA" *) input [31:0]s00_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TSTRB" *) input [3:0]s00_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TLAST" *) input s00_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99999001, PHASE 0.0, CLK_DOMAIN kv260_fft_dma_zynq_ultra_ps_e_0_1_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s00_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M00_AXIS_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS_CLK, ASSOCIATED_BUSIF M00_AXIS, ASSOCIATED_RESET m00_axis_aresetn, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN kv260_fft_dma_zynq_ultra_ps_e_0_1_pl_clk0, INSERT_VIP 0" *) input m00_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M00_AXIS_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m00_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TVALID" *) output m00_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TDATA" *) output [31:0]m00_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TSTRB" *) output [3:0]m00_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TLAST" *) output m00_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99999001, PHASE 0.0, CLK_DOMAIN kv260_fft_dma_zynq_ultra_ps_e_0_1_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *) input m00_axis_tready;

  wire \<const1> ;
  wire [31:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire s00_axis_aclk;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tlast;
  wire s00_axis_tready;
  wire s00_axis_tvalid;

  assign m00_axis_tstrb[3] = \<const1> ;
  assign m00_axis_tstrb[2] = \<const1> ;
  assign m00_axis_tstrb[1] = \<const1> ;
  assign m00_axis_tstrb[0] = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fft_dma_v1_0 inst
       (.dma_tready_reg(s00_axis_tready),
        .m00_axis_tdata(m00_axis_tdata),
        .m00_axis_tlast(m00_axis_tlast),
        .m00_axis_tready(m00_axis_tready),
        .out_tvalid(m00_axis_tvalid),
        .s00_axis_aclk(s00_axis_aclk),
        .s00_axis_tdata(s00_axis_tdata),
        .s00_axis_tlast(s00_axis_tlast),
        .s00_axis_tvalid(s00_axis_tvalid));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
