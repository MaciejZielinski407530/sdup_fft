// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Sat Jun 15 13:05:11 2024
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
   (\data_out_I_reg[16]_0 ,
    \data_out_I_reg[17]_0 ,
    \data_out_I_reg[18]_0 ,
    \data_out_I_reg[19]_0 ,
    \data_out_I_reg[20]_0 ,
    \data_out_I_reg[21]_0 ,
    \data_out_I_reg[22]_0 ,
    \data_out_I_reg[23]_0 ,
    \data_out_I_reg[24]_0 ,
    \data_out_I_reg[25]_0 ,
    \data_out_I_reg[26]_0 ,
    \data_out_I_reg[27]_0 ,
    \data_out_I_reg[28]_0 ,
    \data_out_I_reg[29]_0 ,
    \data_out_I_reg[30]_0 ,
    \data_out_I_reg[31]_0 ,
    \data_out_R_reg[16]_0 ,
    \data_out_R_reg[17]_0 ,
    \data_out_R_reg[18]_0 ,
    \data_out_R_reg[19]_0 ,
    \data_out_R_reg[20]_0 ,
    \data_out_R_reg[21]_0 ,
    \data_out_R_reg[22]_0 ,
    \data_out_R_reg[23]_0 ,
    \data_out_R_reg[24]_0 ,
    \data_out_R_reg[25]_0 ,
    \data_out_R_reg[26]_0 ,
    \data_out_R_reg[27]_0 ,
    \data_out_R_reg[28]_0 ,
    \data_out_R_reg[29]_0 ,
    \data_out_R_reg[30]_0 ,
    \data_out_R_reg[31]_0 ,
    outIdx1,
    fft_start,
    s00_axis_tready,
    \data_out_I_reg[0]_0 ,
    \data_out_I_reg[0]_1 ,
    \data_out_I_reg[0]_2 ,
    previous_start,
    s00_axis_aclk,
    s00_axis_tdata,
    s00_axis_tvalid,
    fft_ready);
  output \data_out_I_reg[16]_0 ;
  output \data_out_I_reg[17]_0 ;
  output \data_out_I_reg[18]_0 ;
  output \data_out_I_reg[19]_0 ;
  output \data_out_I_reg[20]_0 ;
  output \data_out_I_reg[21]_0 ;
  output \data_out_I_reg[22]_0 ;
  output \data_out_I_reg[23]_0 ;
  output \data_out_I_reg[24]_0 ;
  output \data_out_I_reg[25]_0 ;
  output \data_out_I_reg[26]_0 ;
  output \data_out_I_reg[27]_0 ;
  output \data_out_I_reg[28]_0 ;
  output \data_out_I_reg[29]_0 ;
  output \data_out_I_reg[30]_0 ;
  output \data_out_I_reg[31]_0 ;
  output \data_out_R_reg[16]_0 ;
  output \data_out_R_reg[17]_0 ;
  output \data_out_R_reg[18]_0 ;
  output \data_out_R_reg[19]_0 ;
  output \data_out_R_reg[20]_0 ;
  output \data_out_R_reg[21]_0 ;
  output \data_out_R_reg[22]_0 ;
  output \data_out_R_reg[23]_0 ;
  output \data_out_R_reg[24]_0 ;
  output \data_out_R_reg[25]_0 ;
  output \data_out_R_reg[26]_0 ;
  output \data_out_R_reg[27]_0 ;
  output \data_out_R_reg[28]_0 ;
  output \data_out_R_reg[29]_0 ;
  output \data_out_R_reg[30]_0 ;
  output \data_out_R_reg[31]_0 ;
  output outIdx1;
  output fft_start;
  output s00_axis_tready;
  input \data_out_I_reg[0]_0 ;
  input \data_out_I_reg[0]_1 ;
  input \data_out_I_reg[0]_2 ;
  input previous_start;
  input s00_axis_aclk;
  input [31:0]s00_axis_tdata;
  input s00_axis_tvalid;
  input fft_ready;

  wire [3:0]_idx;
  wire \_idx[0]_i_2_n_0 ;
  wire buffer_free;
  wire buffer_free_i_1_n_0;
  wire \dataI_reg_n_0_[0] ;
  wire \dataI_reg_n_0_[100] ;
  wire \dataI_reg_n_0_[101] ;
  wire \dataI_reg_n_0_[102] ;
  wire \dataI_reg_n_0_[103] ;
  wire \dataI_reg_n_0_[104] ;
  wire \dataI_reg_n_0_[105] ;
  wire \dataI_reg_n_0_[106] ;
  wire \dataI_reg_n_0_[107] ;
  wire \dataI_reg_n_0_[108] ;
  wire \dataI_reg_n_0_[109] ;
  wire \dataI_reg_n_0_[10] ;
  wire \dataI_reg_n_0_[110] ;
  wire \dataI_reg_n_0_[111] ;
  wire \dataI_reg_n_0_[112] ;
  wire \dataI_reg_n_0_[113] ;
  wire \dataI_reg_n_0_[114] ;
  wire \dataI_reg_n_0_[115] ;
  wire \dataI_reg_n_0_[116] ;
  wire \dataI_reg_n_0_[117] ;
  wire \dataI_reg_n_0_[118] ;
  wire \dataI_reg_n_0_[119] ;
  wire \dataI_reg_n_0_[11] ;
  wire \dataI_reg_n_0_[120] ;
  wire \dataI_reg_n_0_[121] ;
  wire \dataI_reg_n_0_[122] ;
  wire \dataI_reg_n_0_[123] ;
  wire \dataI_reg_n_0_[124] ;
  wire \dataI_reg_n_0_[125] ;
  wire \dataI_reg_n_0_[126] ;
  wire \dataI_reg_n_0_[127] ;
  wire \dataI_reg_n_0_[12] ;
  wire \dataI_reg_n_0_[13] ;
  wire \dataI_reg_n_0_[14] ;
  wire \dataI_reg_n_0_[15] ;
  wire \dataI_reg_n_0_[16] ;
  wire \dataI_reg_n_0_[17] ;
  wire \dataI_reg_n_0_[18] ;
  wire \dataI_reg_n_0_[19] ;
  wire \dataI_reg_n_0_[1] ;
  wire \dataI_reg_n_0_[20] ;
  wire \dataI_reg_n_0_[21] ;
  wire \dataI_reg_n_0_[22] ;
  wire \dataI_reg_n_0_[23] ;
  wire \dataI_reg_n_0_[24] ;
  wire \dataI_reg_n_0_[25] ;
  wire \dataI_reg_n_0_[26] ;
  wire \dataI_reg_n_0_[27] ;
  wire \dataI_reg_n_0_[28] ;
  wire \dataI_reg_n_0_[29] ;
  wire \dataI_reg_n_0_[2] ;
  wire \dataI_reg_n_0_[30] ;
  wire \dataI_reg_n_0_[31] ;
  wire \dataI_reg_n_0_[32] ;
  wire \dataI_reg_n_0_[33] ;
  wire \dataI_reg_n_0_[34] ;
  wire \dataI_reg_n_0_[35] ;
  wire \dataI_reg_n_0_[36] ;
  wire \dataI_reg_n_0_[37] ;
  wire \dataI_reg_n_0_[38] ;
  wire \dataI_reg_n_0_[39] ;
  wire \dataI_reg_n_0_[3] ;
  wire \dataI_reg_n_0_[40] ;
  wire \dataI_reg_n_0_[41] ;
  wire \dataI_reg_n_0_[42] ;
  wire \dataI_reg_n_0_[43] ;
  wire \dataI_reg_n_0_[44] ;
  wire \dataI_reg_n_0_[45] ;
  wire \dataI_reg_n_0_[46] ;
  wire \dataI_reg_n_0_[47] ;
  wire \dataI_reg_n_0_[48] ;
  wire \dataI_reg_n_0_[49] ;
  wire \dataI_reg_n_0_[4] ;
  wire \dataI_reg_n_0_[50] ;
  wire \dataI_reg_n_0_[51] ;
  wire \dataI_reg_n_0_[52] ;
  wire \dataI_reg_n_0_[53] ;
  wire \dataI_reg_n_0_[54] ;
  wire \dataI_reg_n_0_[55] ;
  wire \dataI_reg_n_0_[56] ;
  wire \dataI_reg_n_0_[57] ;
  wire \dataI_reg_n_0_[58] ;
  wire \dataI_reg_n_0_[59] ;
  wire \dataI_reg_n_0_[5] ;
  wire \dataI_reg_n_0_[60] ;
  wire \dataI_reg_n_0_[61] ;
  wire \dataI_reg_n_0_[62] ;
  wire \dataI_reg_n_0_[63] ;
  wire \dataI_reg_n_0_[64] ;
  wire \dataI_reg_n_0_[65] ;
  wire \dataI_reg_n_0_[66] ;
  wire \dataI_reg_n_0_[67] ;
  wire \dataI_reg_n_0_[68] ;
  wire \dataI_reg_n_0_[69] ;
  wire \dataI_reg_n_0_[6] ;
  wire \dataI_reg_n_0_[70] ;
  wire \dataI_reg_n_0_[71] ;
  wire \dataI_reg_n_0_[72] ;
  wire \dataI_reg_n_0_[73] ;
  wire \dataI_reg_n_0_[74] ;
  wire \dataI_reg_n_0_[75] ;
  wire \dataI_reg_n_0_[76] ;
  wire \dataI_reg_n_0_[77] ;
  wire \dataI_reg_n_0_[78] ;
  wire \dataI_reg_n_0_[79] ;
  wire \dataI_reg_n_0_[7] ;
  wire \dataI_reg_n_0_[80] ;
  wire \dataI_reg_n_0_[81] ;
  wire \dataI_reg_n_0_[82] ;
  wire \dataI_reg_n_0_[83] ;
  wire \dataI_reg_n_0_[84] ;
  wire \dataI_reg_n_0_[85] ;
  wire \dataI_reg_n_0_[86] ;
  wire \dataI_reg_n_0_[87] ;
  wire \dataI_reg_n_0_[88] ;
  wire \dataI_reg_n_0_[89] ;
  wire \dataI_reg_n_0_[8] ;
  wire \dataI_reg_n_0_[90] ;
  wire \dataI_reg_n_0_[91] ;
  wire \dataI_reg_n_0_[92] ;
  wire \dataI_reg_n_0_[93] ;
  wire \dataI_reg_n_0_[94] ;
  wire \dataI_reg_n_0_[95] ;
  wire \dataI_reg_n_0_[96] ;
  wire \dataI_reg_n_0_[97] ;
  wire \dataI_reg_n_0_[98] ;
  wire \dataI_reg_n_0_[99] ;
  wire \dataI_reg_n_0_[9] ;
  wire [127:15]dataR;
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
  wire \data_out_I[15]_i_2_n_0 ;
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
  wire \data_out_I_reg[0]_0 ;
  wire \data_out_I_reg[0]_1 ;
  wire \data_out_I_reg[0]_2 ;
  wire \data_out_I_reg[16]_0 ;
  wire \data_out_I_reg[17]_0 ;
  wire \data_out_I_reg[18]_0 ;
  wire \data_out_I_reg[19]_0 ;
  wire \data_out_I_reg[20]_0 ;
  wire \data_out_I_reg[21]_0 ;
  wire \data_out_I_reg[22]_0 ;
  wire \data_out_I_reg[23]_0 ;
  wire \data_out_I_reg[24]_0 ;
  wire \data_out_I_reg[25]_0 ;
  wire \data_out_I_reg[26]_0 ;
  wire \data_out_I_reg[27]_0 ;
  wire \data_out_I_reg[28]_0 ;
  wire \data_out_I_reg[29]_0 ;
  wire \data_out_I_reg[30]_0 ;
  wire \data_out_I_reg[31]_0 ;
  wire \data_out_R[0]_i_2_n_0 ;
  wire \data_out_R[0]_i_3_n_0 ;
  wire \data_out_R[10]_i_2_n_0 ;
  wire \data_out_R[10]_i_3_n_0 ;
  wire \data_out_R[11]_i_2_n_0 ;
  wire \data_out_R[11]_i_3_n_0 ;
  wire \data_out_R[127]_i_1_n_0 ;
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
  wire \data_out_R_reg[16]_0 ;
  wire \data_out_R_reg[17]_0 ;
  wire \data_out_R_reg[18]_0 ;
  wire \data_out_R_reg[19]_0 ;
  wire \data_out_R_reg[20]_0 ;
  wire \data_out_R_reg[21]_0 ;
  wire \data_out_R_reg[22]_0 ;
  wire \data_out_R_reg[23]_0 ;
  wire \data_out_R_reg[24]_0 ;
  wire \data_out_R_reg[25]_0 ;
  wire \data_out_R_reg[26]_0 ;
  wire \data_out_R_reg[27]_0 ;
  wire \data_out_R_reg[28]_0 ;
  wire \data_out_R_reg[29]_0 ;
  wire \data_out_R_reg[30]_0 ;
  wire \data_out_R_reg[31]_0 ;
  wire dma_tready_i_1_n_0;
  wire dma_tready_i_2_n_0;
  wire fft_ready;
  wire fft_start;
  wire [3:0]idx;
  wire outIdx1;
  wire previous_start;
  wire s00_axis_aclk;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tready;
  wire s00_axis_tvalid;

  LUT6 #(
    .INIT(64'h5555AAAA5555AAA2)) 
    \_idx[0]_i_1 
       (.I0(\_idx[0]_i_2_n_0 ),
        .I1(idx[3]),
        .I2(idx[2]),
        .I3(idx[1]),
        .I4(idx[0]),
        .I5(fft_ready),
        .O(_idx[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \_idx[0]_i_2 
       (.I0(buffer_free),
        .I1(s00_axis_tvalid),
        .O(\_idx[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \_idx[1]_i_1 
       (.I0(idx[0]),
        .I1(buffer_free),
        .I2(s00_axis_tvalid),
        .I3(idx[1]),
        .O(_idx[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \_idx[2]_i_1 
       (.I0(idx[0]),
        .I1(idx[1]),
        .I2(buffer_free),
        .I3(s00_axis_tvalid),
        .I4(idx[2]),
        .O(_idx[2]));
  LUT6 #(
    .INIT(64'h78F0F0F0F0F0F000)) 
    \_idx[3]_i_1 
       (.I0(buffer_free),
        .I1(s00_axis_tvalid),
        .I2(idx[3]),
        .I3(idx[2]),
        .I4(idx[1]),
        .I5(idx[0]),
        .O(_idx[3]));
  FDRE #(
    .INIT(1'b0)) 
    \_idx_reg[0] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(_idx[0]),
        .Q(idx[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \_idx_reg[1] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(_idx[1]),
        .Q(idx[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \_idx_reg[2] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(_idx[2]),
        .Q(idx[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \_idx_reg[3] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(_idx[3]),
        .Q(idx[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEEEEEEEAEEEEEEEE)) 
    buffer_free_i_1
       (.I0(fft_ready),
        .I1(buffer_free),
        .I2(idx[0]),
        .I3(idx[1]),
        .I4(idx[2]),
        .I5(idx[3]),
        .O(buffer_free_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    buffer_free_reg
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(buffer_free_i_1_n_0),
        .Q(buffer_free),
        .R(1'b0));
  FDRE \dataI_reg[0] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(s00_axis_tdata[16]),
        .Q(\dataI_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \dataI_reg[100] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(s00_axis_tdata[20]),
        .Q(\dataI_reg_n_0_[100] ),
        .R(1'b0));
  FDRE \dataI_reg[101] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(s00_axis_tdata[21]),
        .Q(\dataI_reg_n_0_[101] ),
        .R(1'b0));
  FDRE \dataI_reg[102] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(s00_axis_tdata[22]),
        .Q(\dataI_reg_n_0_[102] ),
        .R(1'b0));
  FDRE \dataI_reg[103] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(s00_axis_tdata[23]),
        .Q(\dataI_reg_n_0_[103] ),
        .R(1'b0));
  FDRE \dataI_reg[104] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(s00_axis_tdata[24]),
        .Q(\dataI_reg_n_0_[104] ),
        .R(1'b0));
  FDRE \dataI_reg[105] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(s00_axis_tdata[25]),
        .Q(\dataI_reg_n_0_[105] ),
        .R(1'b0));
  FDRE \dataI_reg[106] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(s00_axis_tdata[26]),
        .Q(\dataI_reg_n_0_[106] ),
        .R(1'b0));
  FDRE \dataI_reg[107] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(s00_axis_tdata[27]),
        .Q(\dataI_reg_n_0_[107] ),
        .R(1'b0));
  FDRE \dataI_reg[108] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(s00_axis_tdata[28]),
        .Q(\dataI_reg_n_0_[108] ),
        .R(1'b0));
  FDRE \dataI_reg[109] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(s00_axis_tdata[29]),
        .Q(\dataI_reg_n_0_[109] ),
        .R(1'b0));
  FDRE \dataI_reg[10] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(s00_axis_tdata[26]),
        .Q(\dataI_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \dataI_reg[110] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(s00_axis_tdata[30]),
        .Q(\dataI_reg_n_0_[110] ),
        .R(1'b0));
  FDRE \dataI_reg[111] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(s00_axis_tdata[31]),
        .Q(\dataI_reg_n_0_[111] ),
        .R(1'b0));
  FDRE \dataI_reg[112] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(s00_axis_tdata[16]),
        .Q(\dataI_reg_n_0_[112] ),
        .R(1'b0));
  FDRE \dataI_reg[113] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(s00_axis_tdata[17]),
        .Q(\dataI_reg_n_0_[113] ),
        .R(1'b0));
  FDRE \dataI_reg[114] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(s00_axis_tdata[18]),
        .Q(\dataI_reg_n_0_[114] ),
        .R(1'b0));
  FDRE \dataI_reg[115] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(s00_axis_tdata[19]),
        .Q(\dataI_reg_n_0_[115] ),
        .R(1'b0));
  FDRE \dataI_reg[116] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(s00_axis_tdata[20]),
        .Q(\dataI_reg_n_0_[116] ),
        .R(1'b0));
  FDRE \dataI_reg[117] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(s00_axis_tdata[21]),
        .Q(\dataI_reg_n_0_[117] ),
        .R(1'b0));
  FDRE \dataI_reg[118] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(s00_axis_tdata[22]),
        .Q(\dataI_reg_n_0_[118] ),
        .R(1'b0));
  FDRE \dataI_reg[119] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(s00_axis_tdata[23]),
        .Q(\dataI_reg_n_0_[119] ),
        .R(1'b0));
  FDRE \dataI_reg[11] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(s00_axis_tdata[27]),
        .Q(\dataI_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \dataI_reg[120] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(s00_axis_tdata[24]),
        .Q(\dataI_reg_n_0_[120] ),
        .R(1'b0));
  FDRE \dataI_reg[121] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(s00_axis_tdata[25]),
        .Q(\dataI_reg_n_0_[121] ),
        .R(1'b0));
  FDRE \dataI_reg[122] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(s00_axis_tdata[26]),
        .Q(\dataI_reg_n_0_[122] ),
        .R(1'b0));
  FDRE \dataI_reg[123] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(s00_axis_tdata[27]),
        .Q(\dataI_reg_n_0_[123] ),
        .R(1'b0));
  FDRE \dataI_reg[124] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(s00_axis_tdata[28]),
        .Q(\dataI_reg_n_0_[124] ),
        .R(1'b0));
  FDRE \dataI_reg[125] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(s00_axis_tdata[29]),
        .Q(\dataI_reg_n_0_[125] ),
        .R(1'b0));
  FDRE \dataI_reg[126] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(s00_axis_tdata[30]),
        .Q(\dataI_reg_n_0_[126] ),
        .R(1'b0));
  FDRE \dataI_reg[127] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(s00_axis_tdata[31]),
        .Q(\dataI_reg_n_0_[127] ),
        .R(1'b0));
  FDRE \dataI_reg[12] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(s00_axis_tdata[28]),
        .Q(\dataI_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \dataI_reg[13] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(s00_axis_tdata[29]),
        .Q(\dataI_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \dataI_reg[14] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(s00_axis_tdata[30]),
        .Q(\dataI_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \dataI_reg[15] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(s00_axis_tdata[31]),
        .Q(\dataI_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \dataI_reg[16] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(s00_axis_tdata[16]),
        .Q(\dataI_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \dataI_reg[17] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(s00_axis_tdata[17]),
        .Q(\dataI_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \dataI_reg[18] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(s00_axis_tdata[18]),
        .Q(\dataI_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \dataI_reg[19] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(s00_axis_tdata[19]),
        .Q(\dataI_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \dataI_reg[1] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(s00_axis_tdata[17]),
        .Q(\dataI_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \dataI_reg[20] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(s00_axis_tdata[20]),
        .Q(\dataI_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \dataI_reg[21] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(s00_axis_tdata[21]),
        .Q(\dataI_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \dataI_reg[22] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(s00_axis_tdata[22]),
        .Q(\dataI_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \dataI_reg[23] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(s00_axis_tdata[23]),
        .Q(\dataI_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \dataI_reg[24] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(s00_axis_tdata[24]),
        .Q(\dataI_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \dataI_reg[25] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(s00_axis_tdata[25]),
        .Q(\dataI_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \dataI_reg[26] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(s00_axis_tdata[26]),
        .Q(\dataI_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \dataI_reg[27] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(s00_axis_tdata[27]),
        .Q(\dataI_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \dataI_reg[28] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(s00_axis_tdata[28]),
        .Q(\dataI_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \dataI_reg[29] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(s00_axis_tdata[29]),
        .Q(\dataI_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \dataI_reg[2] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(s00_axis_tdata[18]),
        .Q(\dataI_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \dataI_reg[30] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(s00_axis_tdata[30]),
        .Q(\dataI_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \dataI_reg[31] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(s00_axis_tdata[31]),
        .Q(\dataI_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \dataI_reg[32] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(s00_axis_tdata[16]),
        .Q(\dataI_reg_n_0_[32] ),
        .R(1'b0));
  FDRE \dataI_reg[33] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(s00_axis_tdata[17]),
        .Q(\dataI_reg_n_0_[33] ),
        .R(1'b0));
  FDRE \dataI_reg[34] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(s00_axis_tdata[18]),
        .Q(\dataI_reg_n_0_[34] ),
        .R(1'b0));
  FDRE \dataI_reg[35] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(s00_axis_tdata[19]),
        .Q(\dataI_reg_n_0_[35] ),
        .R(1'b0));
  FDRE \dataI_reg[36] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(s00_axis_tdata[20]),
        .Q(\dataI_reg_n_0_[36] ),
        .R(1'b0));
  FDRE \dataI_reg[37] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(s00_axis_tdata[21]),
        .Q(\dataI_reg_n_0_[37] ),
        .R(1'b0));
  FDRE \dataI_reg[38] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(s00_axis_tdata[22]),
        .Q(\dataI_reg_n_0_[38] ),
        .R(1'b0));
  FDRE \dataI_reg[39] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(s00_axis_tdata[23]),
        .Q(\dataI_reg_n_0_[39] ),
        .R(1'b0));
  FDRE \dataI_reg[3] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(s00_axis_tdata[19]),
        .Q(\dataI_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \dataI_reg[40] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(s00_axis_tdata[24]),
        .Q(\dataI_reg_n_0_[40] ),
        .R(1'b0));
  FDRE \dataI_reg[41] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(s00_axis_tdata[25]),
        .Q(\dataI_reg_n_0_[41] ),
        .R(1'b0));
  FDRE \dataI_reg[42] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(s00_axis_tdata[26]),
        .Q(\dataI_reg_n_0_[42] ),
        .R(1'b0));
  FDRE \dataI_reg[43] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(s00_axis_tdata[27]),
        .Q(\dataI_reg_n_0_[43] ),
        .R(1'b0));
  FDRE \dataI_reg[44] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(s00_axis_tdata[28]),
        .Q(\dataI_reg_n_0_[44] ),
        .R(1'b0));
  FDRE \dataI_reg[45] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(s00_axis_tdata[29]),
        .Q(\dataI_reg_n_0_[45] ),
        .R(1'b0));
  FDRE \dataI_reg[46] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(s00_axis_tdata[30]),
        .Q(\dataI_reg_n_0_[46] ),
        .R(1'b0));
  FDRE \dataI_reg[47] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(s00_axis_tdata[31]),
        .Q(\dataI_reg_n_0_[47] ),
        .R(1'b0));
  FDRE \dataI_reg[48] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(s00_axis_tdata[16]),
        .Q(\dataI_reg_n_0_[48] ),
        .R(1'b0));
  FDRE \dataI_reg[49] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(s00_axis_tdata[17]),
        .Q(\dataI_reg_n_0_[49] ),
        .R(1'b0));
  FDRE \dataI_reg[4] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(s00_axis_tdata[20]),
        .Q(\dataI_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \dataI_reg[50] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(s00_axis_tdata[18]),
        .Q(\dataI_reg_n_0_[50] ),
        .R(1'b0));
  FDRE \dataI_reg[51] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(s00_axis_tdata[19]),
        .Q(\dataI_reg_n_0_[51] ),
        .R(1'b0));
  FDRE \dataI_reg[52] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(s00_axis_tdata[20]),
        .Q(\dataI_reg_n_0_[52] ),
        .R(1'b0));
  FDRE \dataI_reg[53] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(s00_axis_tdata[21]),
        .Q(\dataI_reg_n_0_[53] ),
        .R(1'b0));
  FDRE \dataI_reg[54] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(s00_axis_tdata[22]),
        .Q(\dataI_reg_n_0_[54] ),
        .R(1'b0));
  FDRE \dataI_reg[55] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(s00_axis_tdata[23]),
        .Q(\dataI_reg_n_0_[55] ),
        .R(1'b0));
  FDRE \dataI_reg[56] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(s00_axis_tdata[24]),
        .Q(\dataI_reg_n_0_[56] ),
        .R(1'b0));
  FDRE \dataI_reg[57] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(s00_axis_tdata[25]),
        .Q(\dataI_reg_n_0_[57] ),
        .R(1'b0));
  FDRE \dataI_reg[58] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(s00_axis_tdata[26]),
        .Q(\dataI_reg_n_0_[58] ),
        .R(1'b0));
  FDRE \dataI_reg[59] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(s00_axis_tdata[27]),
        .Q(\dataI_reg_n_0_[59] ),
        .R(1'b0));
  FDRE \dataI_reg[5] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(s00_axis_tdata[21]),
        .Q(\dataI_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \dataI_reg[60] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(s00_axis_tdata[28]),
        .Q(\dataI_reg_n_0_[60] ),
        .R(1'b0));
  FDRE \dataI_reg[61] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(s00_axis_tdata[29]),
        .Q(\dataI_reg_n_0_[61] ),
        .R(1'b0));
  FDRE \dataI_reg[62] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(s00_axis_tdata[30]),
        .Q(\dataI_reg_n_0_[62] ),
        .R(1'b0));
  FDRE \dataI_reg[63] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(s00_axis_tdata[31]),
        .Q(\dataI_reg_n_0_[63] ),
        .R(1'b0));
  FDRE \dataI_reg[64] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(s00_axis_tdata[16]),
        .Q(\dataI_reg_n_0_[64] ),
        .R(1'b0));
  FDRE \dataI_reg[65] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(s00_axis_tdata[17]),
        .Q(\dataI_reg_n_0_[65] ),
        .R(1'b0));
  FDRE \dataI_reg[66] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(s00_axis_tdata[18]),
        .Q(\dataI_reg_n_0_[66] ),
        .R(1'b0));
  FDRE \dataI_reg[67] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(s00_axis_tdata[19]),
        .Q(\dataI_reg_n_0_[67] ),
        .R(1'b0));
  FDRE \dataI_reg[68] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(s00_axis_tdata[20]),
        .Q(\dataI_reg_n_0_[68] ),
        .R(1'b0));
  FDRE \dataI_reg[69] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(s00_axis_tdata[21]),
        .Q(\dataI_reg_n_0_[69] ),
        .R(1'b0));
  FDRE \dataI_reg[6] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(s00_axis_tdata[22]),
        .Q(\dataI_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \dataI_reg[70] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(s00_axis_tdata[22]),
        .Q(\dataI_reg_n_0_[70] ),
        .R(1'b0));
  FDRE \dataI_reg[71] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(s00_axis_tdata[23]),
        .Q(\dataI_reg_n_0_[71] ),
        .R(1'b0));
  FDRE \dataI_reg[72] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(s00_axis_tdata[24]),
        .Q(\dataI_reg_n_0_[72] ),
        .R(1'b0));
  FDRE \dataI_reg[73] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(s00_axis_tdata[25]),
        .Q(\dataI_reg_n_0_[73] ),
        .R(1'b0));
  FDRE \dataI_reg[74] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(s00_axis_tdata[26]),
        .Q(\dataI_reg_n_0_[74] ),
        .R(1'b0));
  FDRE \dataI_reg[75] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(s00_axis_tdata[27]),
        .Q(\dataI_reg_n_0_[75] ),
        .R(1'b0));
  FDRE \dataI_reg[76] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(s00_axis_tdata[28]),
        .Q(\dataI_reg_n_0_[76] ),
        .R(1'b0));
  FDRE \dataI_reg[77] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(s00_axis_tdata[29]),
        .Q(\dataI_reg_n_0_[77] ),
        .R(1'b0));
  FDRE \dataI_reg[78] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(s00_axis_tdata[30]),
        .Q(\dataI_reg_n_0_[78] ),
        .R(1'b0));
  FDRE \dataI_reg[79] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(s00_axis_tdata[31]),
        .Q(\dataI_reg_n_0_[79] ),
        .R(1'b0));
  FDRE \dataI_reg[7] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(s00_axis_tdata[23]),
        .Q(\dataI_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \dataI_reg[80] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(s00_axis_tdata[16]),
        .Q(\dataI_reg_n_0_[80] ),
        .R(1'b0));
  FDRE \dataI_reg[81] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(s00_axis_tdata[17]),
        .Q(\dataI_reg_n_0_[81] ),
        .R(1'b0));
  FDRE \dataI_reg[82] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(s00_axis_tdata[18]),
        .Q(\dataI_reg_n_0_[82] ),
        .R(1'b0));
  FDRE \dataI_reg[83] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(s00_axis_tdata[19]),
        .Q(\dataI_reg_n_0_[83] ),
        .R(1'b0));
  FDRE \dataI_reg[84] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(s00_axis_tdata[20]),
        .Q(\dataI_reg_n_0_[84] ),
        .R(1'b0));
  FDRE \dataI_reg[85] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(s00_axis_tdata[21]),
        .Q(\dataI_reg_n_0_[85] ),
        .R(1'b0));
  FDRE \dataI_reg[86] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(s00_axis_tdata[22]),
        .Q(\dataI_reg_n_0_[86] ),
        .R(1'b0));
  FDRE \dataI_reg[87] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(s00_axis_tdata[23]),
        .Q(\dataI_reg_n_0_[87] ),
        .R(1'b0));
  FDRE \dataI_reg[88] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(s00_axis_tdata[24]),
        .Q(\dataI_reg_n_0_[88] ),
        .R(1'b0));
  FDRE \dataI_reg[89] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(s00_axis_tdata[25]),
        .Q(\dataI_reg_n_0_[89] ),
        .R(1'b0));
  FDRE \dataI_reg[8] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(s00_axis_tdata[24]),
        .Q(\dataI_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \dataI_reg[90] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(s00_axis_tdata[26]),
        .Q(\dataI_reg_n_0_[90] ),
        .R(1'b0));
  FDRE \dataI_reg[91] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(s00_axis_tdata[27]),
        .Q(\dataI_reg_n_0_[91] ),
        .R(1'b0));
  FDRE \dataI_reg[92] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(s00_axis_tdata[28]),
        .Q(\dataI_reg_n_0_[92] ),
        .R(1'b0));
  FDRE \dataI_reg[93] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(s00_axis_tdata[29]),
        .Q(\dataI_reg_n_0_[93] ),
        .R(1'b0));
  FDRE \dataI_reg[94] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(s00_axis_tdata[30]),
        .Q(\dataI_reg_n_0_[94] ),
        .R(1'b0));
  FDRE \dataI_reg[95] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(s00_axis_tdata[31]),
        .Q(\dataI_reg_n_0_[95] ),
        .R(1'b0));
  FDRE \dataI_reg[96] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(s00_axis_tdata[16]),
        .Q(\dataI_reg_n_0_[96] ),
        .R(1'b0));
  FDRE \dataI_reg[97] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(s00_axis_tdata[17]),
        .Q(\dataI_reg_n_0_[97] ),
        .R(1'b0));
  FDRE \dataI_reg[98] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(s00_axis_tdata[18]),
        .Q(\dataI_reg_n_0_[98] ),
        .R(1'b0));
  FDRE \dataI_reg[99] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(s00_axis_tdata[19]),
        .Q(\dataI_reg_n_0_[99] ),
        .R(1'b0));
  FDRE \dataI_reg[9] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(s00_axis_tdata[25]),
        .Q(\dataI_reg_n_0_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h08000000)) 
    \dataR[111]_i_1 
       (.I0(s00_axis_tvalid),
        .I1(buffer_free),
        .I2(idx[2]),
        .I3(idx[0]),
        .I4(idx[1]),
        .O(dataR[111]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataR[127]_i_1 
       (.I0(s00_axis_tvalid),
        .I1(buffer_free),
        .I2(idx[2]),
        .I3(idx[0]),
        .I4(idx[1]),
        .O(dataR[127]));
  LUT6 #(
    .INIT(64'h000000000000008A)) 
    \dataR[15]_i_1 
       (.I0(\_idx[0]_i_2_n_0 ),
        .I1(fft_ready),
        .I2(idx[3]),
        .I3(idx[0]),
        .I4(idx[1]),
        .I5(idx[2]),
        .O(dataR[15]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \dataR[31]_i_1 
       (.I0(s00_axis_tvalid),
        .I1(buffer_free),
        .I2(idx[0]),
        .I3(idx[2]),
        .I4(idx[1]),
        .O(dataR[31]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \dataR[47]_i_1 
       (.I0(s00_axis_tvalid),
        .I1(buffer_free),
        .I2(idx[2]),
        .I3(idx[1]),
        .I4(idx[0]),
        .O(dataR[47]));
  LUT5 #(
    .INIT(32'h00008000)) 
    \dataR[63]_i_1 
       (.I0(s00_axis_tvalid),
        .I1(buffer_free),
        .I2(idx[2]),
        .I3(idx[1]),
        .I4(idx[0]),
        .O(dataR[63]));
  LUT5 #(
    .INIT(32'h00080000)) 
    \dataR[79]_i_1 
       (.I0(s00_axis_tvalid),
        .I1(buffer_free),
        .I2(idx[1]),
        .I3(idx[2]),
        .I4(idx[0]),
        .O(dataR[79]));
  LUT5 #(
    .INIT(32'h00008000)) 
    \dataR[95]_i_1 
       (.I0(s00_axis_tvalid),
        .I1(buffer_free),
        .I2(idx[0]),
        .I3(idx[2]),
        .I4(idx[1]),
        .O(dataR[95]));
  FDRE \dataR_reg[0] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(s00_axis_tdata[0]),
        .Q(\dataR_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \dataR_reg[100] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(s00_axis_tdata[4]),
        .Q(\dataR_reg_n_0_[100] ),
        .R(1'b0));
  FDRE \dataR_reg[101] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(s00_axis_tdata[5]),
        .Q(\dataR_reg_n_0_[101] ),
        .R(1'b0));
  FDRE \dataR_reg[102] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(s00_axis_tdata[6]),
        .Q(\dataR_reg_n_0_[102] ),
        .R(1'b0));
  FDRE \dataR_reg[103] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(s00_axis_tdata[7]),
        .Q(\dataR_reg_n_0_[103] ),
        .R(1'b0));
  FDRE \dataR_reg[104] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(s00_axis_tdata[8]),
        .Q(\dataR_reg_n_0_[104] ),
        .R(1'b0));
  FDRE \dataR_reg[105] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(s00_axis_tdata[9]),
        .Q(\dataR_reg_n_0_[105] ),
        .R(1'b0));
  FDRE \dataR_reg[106] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(s00_axis_tdata[10]),
        .Q(\dataR_reg_n_0_[106] ),
        .R(1'b0));
  FDRE \dataR_reg[107] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(s00_axis_tdata[11]),
        .Q(\dataR_reg_n_0_[107] ),
        .R(1'b0));
  FDRE \dataR_reg[108] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(s00_axis_tdata[12]),
        .Q(\dataR_reg_n_0_[108] ),
        .R(1'b0));
  FDRE \dataR_reg[109] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(s00_axis_tdata[13]),
        .Q(\dataR_reg_n_0_[109] ),
        .R(1'b0));
  FDRE \dataR_reg[10] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(s00_axis_tdata[10]),
        .Q(\dataR_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \dataR_reg[110] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(s00_axis_tdata[14]),
        .Q(\dataR_reg_n_0_[110] ),
        .R(1'b0));
  FDRE \dataR_reg[111] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(s00_axis_tdata[15]),
        .Q(\dataR_reg_n_0_[111] ),
        .R(1'b0));
  FDRE \dataR_reg[112] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(s00_axis_tdata[0]),
        .Q(\dataR_reg_n_0_[112] ),
        .R(1'b0));
  FDRE \dataR_reg[113] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(s00_axis_tdata[1]),
        .Q(\dataR_reg_n_0_[113] ),
        .R(1'b0));
  FDRE \dataR_reg[114] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(s00_axis_tdata[2]),
        .Q(\dataR_reg_n_0_[114] ),
        .R(1'b0));
  FDRE \dataR_reg[115] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(s00_axis_tdata[3]),
        .Q(\dataR_reg_n_0_[115] ),
        .R(1'b0));
  FDRE \dataR_reg[116] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(s00_axis_tdata[4]),
        .Q(\dataR_reg_n_0_[116] ),
        .R(1'b0));
  FDRE \dataR_reg[117] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(s00_axis_tdata[5]),
        .Q(\dataR_reg_n_0_[117] ),
        .R(1'b0));
  FDRE \dataR_reg[118] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(s00_axis_tdata[6]),
        .Q(\dataR_reg_n_0_[118] ),
        .R(1'b0));
  FDRE \dataR_reg[119] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(s00_axis_tdata[7]),
        .Q(\dataR_reg_n_0_[119] ),
        .R(1'b0));
  FDRE \dataR_reg[11] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(s00_axis_tdata[11]),
        .Q(\dataR_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \dataR_reg[120] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(s00_axis_tdata[8]),
        .Q(\dataR_reg_n_0_[120] ),
        .R(1'b0));
  FDRE \dataR_reg[121] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(s00_axis_tdata[9]),
        .Q(\dataR_reg_n_0_[121] ),
        .R(1'b0));
  FDRE \dataR_reg[122] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(s00_axis_tdata[10]),
        .Q(\dataR_reg_n_0_[122] ),
        .R(1'b0));
  FDRE \dataR_reg[123] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(s00_axis_tdata[11]),
        .Q(\dataR_reg_n_0_[123] ),
        .R(1'b0));
  FDRE \dataR_reg[124] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(s00_axis_tdata[12]),
        .Q(\dataR_reg_n_0_[124] ),
        .R(1'b0));
  FDRE \dataR_reg[125] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(s00_axis_tdata[13]),
        .Q(\dataR_reg_n_0_[125] ),
        .R(1'b0));
  FDRE \dataR_reg[126] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(s00_axis_tdata[14]),
        .Q(\dataR_reg_n_0_[126] ),
        .R(1'b0));
  FDRE \dataR_reg[127] 
       (.C(s00_axis_aclk),
        .CE(dataR[127]),
        .D(s00_axis_tdata[15]),
        .Q(\dataR_reg_n_0_[127] ),
        .R(1'b0));
  FDRE \dataR_reg[12] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(s00_axis_tdata[12]),
        .Q(\dataR_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \dataR_reg[13] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(s00_axis_tdata[13]),
        .Q(\dataR_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \dataR_reg[14] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(s00_axis_tdata[14]),
        .Q(\dataR_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \dataR_reg[15] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(s00_axis_tdata[15]),
        .Q(\dataR_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \dataR_reg[16] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(s00_axis_tdata[0]),
        .Q(\dataR_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \dataR_reg[17] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(s00_axis_tdata[1]),
        .Q(\dataR_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \dataR_reg[18] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(s00_axis_tdata[2]),
        .Q(\dataR_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \dataR_reg[19] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(s00_axis_tdata[3]),
        .Q(\dataR_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \dataR_reg[1] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(s00_axis_tdata[1]),
        .Q(\dataR_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \dataR_reg[20] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(s00_axis_tdata[4]),
        .Q(\dataR_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \dataR_reg[21] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(s00_axis_tdata[5]),
        .Q(\dataR_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \dataR_reg[22] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(s00_axis_tdata[6]),
        .Q(\dataR_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \dataR_reg[23] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(s00_axis_tdata[7]),
        .Q(\dataR_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \dataR_reg[24] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(s00_axis_tdata[8]),
        .Q(\dataR_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \dataR_reg[25] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(s00_axis_tdata[9]),
        .Q(\dataR_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \dataR_reg[26] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(s00_axis_tdata[10]),
        .Q(\dataR_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \dataR_reg[27] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(s00_axis_tdata[11]),
        .Q(\dataR_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \dataR_reg[28] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(s00_axis_tdata[12]),
        .Q(\dataR_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \dataR_reg[29] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(s00_axis_tdata[13]),
        .Q(\dataR_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \dataR_reg[2] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(s00_axis_tdata[2]),
        .Q(\dataR_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \dataR_reg[30] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(s00_axis_tdata[14]),
        .Q(\dataR_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \dataR_reg[31] 
       (.C(s00_axis_aclk),
        .CE(dataR[31]),
        .D(s00_axis_tdata[15]),
        .Q(\dataR_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \dataR_reg[32] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(s00_axis_tdata[0]),
        .Q(\dataR_reg_n_0_[32] ),
        .R(1'b0));
  FDRE \dataR_reg[33] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(s00_axis_tdata[1]),
        .Q(\dataR_reg_n_0_[33] ),
        .R(1'b0));
  FDRE \dataR_reg[34] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(s00_axis_tdata[2]),
        .Q(\dataR_reg_n_0_[34] ),
        .R(1'b0));
  FDRE \dataR_reg[35] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(s00_axis_tdata[3]),
        .Q(\dataR_reg_n_0_[35] ),
        .R(1'b0));
  FDRE \dataR_reg[36] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(s00_axis_tdata[4]),
        .Q(\dataR_reg_n_0_[36] ),
        .R(1'b0));
  FDRE \dataR_reg[37] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(s00_axis_tdata[5]),
        .Q(\dataR_reg_n_0_[37] ),
        .R(1'b0));
  FDRE \dataR_reg[38] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(s00_axis_tdata[6]),
        .Q(\dataR_reg_n_0_[38] ),
        .R(1'b0));
  FDRE \dataR_reg[39] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(s00_axis_tdata[7]),
        .Q(\dataR_reg_n_0_[39] ),
        .R(1'b0));
  FDRE \dataR_reg[3] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(s00_axis_tdata[3]),
        .Q(\dataR_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \dataR_reg[40] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(s00_axis_tdata[8]),
        .Q(\dataR_reg_n_0_[40] ),
        .R(1'b0));
  FDRE \dataR_reg[41] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(s00_axis_tdata[9]),
        .Q(\dataR_reg_n_0_[41] ),
        .R(1'b0));
  FDRE \dataR_reg[42] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(s00_axis_tdata[10]),
        .Q(\dataR_reg_n_0_[42] ),
        .R(1'b0));
  FDRE \dataR_reg[43] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(s00_axis_tdata[11]),
        .Q(\dataR_reg_n_0_[43] ),
        .R(1'b0));
  FDRE \dataR_reg[44] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(s00_axis_tdata[12]),
        .Q(\dataR_reg_n_0_[44] ),
        .R(1'b0));
  FDRE \dataR_reg[45] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(s00_axis_tdata[13]),
        .Q(\dataR_reg_n_0_[45] ),
        .R(1'b0));
  FDRE \dataR_reg[46] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(s00_axis_tdata[14]),
        .Q(\dataR_reg_n_0_[46] ),
        .R(1'b0));
  FDRE \dataR_reg[47] 
       (.C(s00_axis_aclk),
        .CE(dataR[47]),
        .D(s00_axis_tdata[15]),
        .Q(\dataR_reg_n_0_[47] ),
        .R(1'b0));
  FDRE \dataR_reg[48] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(s00_axis_tdata[0]),
        .Q(\dataR_reg_n_0_[48] ),
        .R(1'b0));
  FDRE \dataR_reg[49] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(s00_axis_tdata[1]),
        .Q(\dataR_reg_n_0_[49] ),
        .R(1'b0));
  FDRE \dataR_reg[4] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(s00_axis_tdata[4]),
        .Q(\dataR_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \dataR_reg[50] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(s00_axis_tdata[2]),
        .Q(\dataR_reg_n_0_[50] ),
        .R(1'b0));
  FDRE \dataR_reg[51] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(s00_axis_tdata[3]),
        .Q(\dataR_reg_n_0_[51] ),
        .R(1'b0));
  FDRE \dataR_reg[52] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(s00_axis_tdata[4]),
        .Q(\dataR_reg_n_0_[52] ),
        .R(1'b0));
  FDRE \dataR_reg[53] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(s00_axis_tdata[5]),
        .Q(\dataR_reg_n_0_[53] ),
        .R(1'b0));
  FDRE \dataR_reg[54] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(s00_axis_tdata[6]),
        .Q(\dataR_reg_n_0_[54] ),
        .R(1'b0));
  FDRE \dataR_reg[55] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(s00_axis_tdata[7]),
        .Q(\dataR_reg_n_0_[55] ),
        .R(1'b0));
  FDRE \dataR_reg[56] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(s00_axis_tdata[8]),
        .Q(\dataR_reg_n_0_[56] ),
        .R(1'b0));
  FDRE \dataR_reg[57] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(s00_axis_tdata[9]),
        .Q(\dataR_reg_n_0_[57] ),
        .R(1'b0));
  FDRE \dataR_reg[58] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(s00_axis_tdata[10]),
        .Q(\dataR_reg_n_0_[58] ),
        .R(1'b0));
  FDRE \dataR_reg[59] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(s00_axis_tdata[11]),
        .Q(\dataR_reg_n_0_[59] ),
        .R(1'b0));
  FDRE \dataR_reg[5] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(s00_axis_tdata[5]),
        .Q(\dataR_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \dataR_reg[60] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(s00_axis_tdata[12]),
        .Q(\dataR_reg_n_0_[60] ),
        .R(1'b0));
  FDRE \dataR_reg[61] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(s00_axis_tdata[13]),
        .Q(\dataR_reg_n_0_[61] ),
        .R(1'b0));
  FDRE \dataR_reg[62] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(s00_axis_tdata[14]),
        .Q(\dataR_reg_n_0_[62] ),
        .R(1'b0));
  FDRE \dataR_reg[63] 
       (.C(s00_axis_aclk),
        .CE(dataR[63]),
        .D(s00_axis_tdata[15]),
        .Q(\dataR_reg_n_0_[63] ),
        .R(1'b0));
  FDRE \dataR_reg[64] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(s00_axis_tdata[0]),
        .Q(\dataR_reg_n_0_[64] ),
        .R(1'b0));
  FDRE \dataR_reg[65] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(s00_axis_tdata[1]),
        .Q(\dataR_reg_n_0_[65] ),
        .R(1'b0));
  FDRE \dataR_reg[66] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(s00_axis_tdata[2]),
        .Q(\dataR_reg_n_0_[66] ),
        .R(1'b0));
  FDRE \dataR_reg[67] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(s00_axis_tdata[3]),
        .Q(\dataR_reg_n_0_[67] ),
        .R(1'b0));
  FDRE \dataR_reg[68] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(s00_axis_tdata[4]),
        .Q(\dataR_reg_n_0_[68] ),
        .R(1'b0));
  FDRE \dataR_reg[69] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(s00_axis_tdata[5]),
        .Q(\dataR_reg_n_0_[69] ),
        .R(1'b0));
  FDRE \dataR_reg[6] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(s00_axis_tdata[6]),
        .Q(\dataR_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \dataR_reg[70] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(s00_axis_tdata[6]),
        .Q(\dataR_reg_n_0_[70] ),
        .R(1'b0));
  FDRE \dataR_reg[71] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(s00_axis_tdata[7]),
        .Q(\dataR_reg_n_0_[71] ),
        .R(1'b0));
  FDRE \dataR_reg[72] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(s00_axis_tdata[8]),
        .Q(\dataR_reg_n_0_[72] ),
        .R(1'b0));
  FDRE \dataR_reg[73] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(s00_axis_tdata[9]),
        .Q(\dataR_reg_n_0_[73] ),
        .R(1'b0));
  FDRE \dataR_reg[74] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(s00_axis_tdata[10]),
        .Q(\dataR_reg_n_0_[74] ),
        .R(1'b0));
  FDRE \dataR_reg[75] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(s00_axis_tdata[11]),
        .Q(\dataR_reg_n_0_[75] ),
        .R(1'b0));
  FDRE \dataR_reg[76] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(s00_axis_tdata[12]),
        .Q(\dataR_reg_n_0_[76] ),
        .R(1'b0));
  FDRE \dataR_reg[77] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(s00_axis_tdata[13]),
        .Q(\dataR_reg_n_0_[77] ),
        .R(1'b0));
  FDRE \dataR_reg[78] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(s00_axis_tdata[14]),
        .Q(\dataR_reg_n_0_[78] ),
        .R(1'b0));
  FDRE \dataR_reg[79] 
       (.C(s00_axis_aclk),
        .CE(dataR[79]),
        .D(s00_axis_tdata[15]),
        .Q(\dataR_reg_n_0_[79] ),
        .R(1'b0));
  FDRE \dataR_reg[7] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(s00_axis_tdata[7]),
        .Q(\dataR_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \dataR_reg[80] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(s00_axis_tdata[0]),
        .Q(\dataR_reg_n_0_[80] ),
        .R(1'b0));
  FDRE \dataR_reg[81] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(s00_axis_tdata[1]),
        .Q(\dataR_reg_n_0_[81] ),
        .R(1'b0));
  FDRE \dataR_reg[82] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(s00_axis_tdata[2]),
        .Q(\dataR_reg_n_0_[82] ),
        .R(1'b0));
  FDRE \dataR_reg[83] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(s00_axis_tdata[3]),
        .Q(\dataR_reg_n_0_[83] ),
        .R(1'b0));
  FDRE \dataR_reg[84] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(s00_axis_tdata[4]),
        .Q(\dataR_reg_n_0_[84] ),
        .R(1'b0));
  FDRE \dataR_reg[85] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(s00_axis_tdata[5]),
        .Q(\dataR_reg_n_0_[85] ),
        .R(1'b0));
  FDRE \dataR_reg[86] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(s00_axis_tdata[6]),
        .Q(\dataR_reg_n_0_[86] ),
        .R(1'b0));
  FDRE \dataR_reg[87] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(s00_axis_tdata[7]),
        .Q(\dataR_reg_n_0_[87] ),
        .R(1'b0));
  FDRE \dataR_reg[88] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(s00_axis_tdata[8]),
        .Q(\dataR_reg_n_0_[88] ),
        .R(1'b0));
  FDRE \dataR_reg[89] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(s00_axis_tdata[9]),
        .Q(\dataR_reg_n_0_[89] ),
        .R(1'b0));
  FDRE \dataR_reg[8] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(s00_axis_tdata[8]),
        .Q(\dataR_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \dataR_reg[90] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(s00_axis_tdata[10]),
        .Q(\dataR_reg_n_0_[90] ),
        .R(1'b0));
  FDRE \dataR_reg[91] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(s00_axis_tdata[11]),
        .Q(\dataR_reg_n_0_[91] ),
        .R(1'b0));
  FDRE \dataR_reg[92] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(s00_axis_tdata[12]),
        .Q(\dataR_reg_n_0_[92] ),
        .R(1'b0));
  FDRE \dataR_reg[93] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(s00_axis_tdata[13]),
        .Q(\dataR_reg_n_0_[93] ),
        .R(1'b0));
  FDRE \dataR_reg[94] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(s00_axis_tdata[14]),
        .Q(\dataR_reg_n_0_[94] ),
        .R(1'b0));
  FDRE \dataR_reg[95] 
       (.C(s00_axis_aclk),
        .CE(dataR[95]),
        .D(s00_axis_tdata[15]),
        .Q(\dataR_reg_n_0_[95] ),
        .R(1'b0));
  FDRE \dataR_reg[96] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(s00_axis_tdata[0]),
        .Q(\dataR_reg_n_0_[96] ),
        .R(1'b0));
  FDRE \dataR_reg[97] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(s00_axis_tdata[1]),
        .Q(\dataR_reg_n_0_[97] ),
        .R(1'b0));
  FDRE \dataR_reg[98] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(s00_axis_tdata[2]),
        .Q(\dataR_reg_n_0_[98] ),
        .R(1'b0));
  FDRE \dataR_reg[99] 
       (.C(s00_axis_aclk),
        .CE(dataR[111]),
        .D(s00_axis_tdata[3]),
        .Q(\dataR_reg_n_0_[99] ),
        .R(1'b0));
  FDRE \dataR_reg[9] 
       (.C(s00_axis_aclk),
        .CE(dataR[15]),
        .D(s00_axis_tdata[9]),
        .Q(\dataR_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \data_out_I[0]_i_1 
       (.I0(\data_out_I[0]_i_2_n_0 ),
        .I1(\data_out_I_reg[0]_0 ),
        .I2(\data_out_I[0]_i_3_n_0 ),
        .O(\data_out_I_reg[16]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_I[0]_i_2 
       (.I0(data_I[16]),
        .I1(data_I[80]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_I[48]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_I[112]),
        .O(\data_out_I[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_I[0]_i_3 
       (.I0(data_I[0]),
        .I1(data_I[64]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_I[32]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_I[96]),
        .O(\data_out_I[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \data_out_I[10]_i_1 
       (.I0(\data_out_I[10]_i_2_n_0 ),
        .I1(\data_out_I_reg[0]_0 ),
        .I2(\data_out_I[10]_i_3_n_0 ),
        .O(\data_out_I_reg[26]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_I[10]_i_2 
       (.I0(data_I[26]),
        .I1(data_I[90]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_I[58]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_I[122]),
        .O(\data_out_I[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_I[10]_i_3 
       (.I0(data_I[10]),
        .I1(data_I[74]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_I[42]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_I[106]),
        .O(\data_out_I[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \data_out_I[11]_i_1 
       (.I0(\data_out_I[11]_i_2_n_0 ),
        .I1(\data_out_I_reg[0]_0 ),
        .I2(\data_out_I[11]_i_3_n_0 ),
        .O(\data_out_I_reg[27]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_I[11]_i_2 
       (.I0(data_I[27]),
        .I1(data_I[91]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_I[59]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_I[123]),
        .O(\data_out_I[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_I[11]_i_3 
       (.I0(data_I[11]),
        .I1(data_I[75]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_I[43]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_I[107]),
        .O(\data_out_I[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \data_out_I[12]_i_1 
       (.I0(\data_out_I[12]_i_2_n_0 ),
        .I1(\data_out_I_reg[0]_0 ),
        .I2(\data_out_I[12]_i_3_n_0 ),
        .O(\data_out_I_reg[28]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_I[12]_i_2 
       (.I0(data_I[28]),
        .I1(data_I[92]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_I[60]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_I[124]),
        .O(\data_out_I[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_I[12]_i_3 
       (.I0(data_I[12]),
        .I1(data_I[76]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_I[44]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_I[108]),
        .O(\data_out_I[12]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \data_out_I[13]_i_1 
       (.I0(\data_out_I[13]_i_2_n_0 ),
        .I1(\data_out_I_reg[0]_0 ),
        .I2(\data_out_I[13]_i_3_n_0 ),
        .O(\data_out_I_reg[29]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_I[13]_i_2 
       (.I0(data_I[29]),
        .I1(data_I[93]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_I[61]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_I[125]),
        .O(\data_out_I[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_I[13]_i_3 
       (.I0(data_I[13]),
        .I1(data_I[77]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_I[45]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_I[109]),
        .O(\data_out_I[13]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \data_out_I[14]_i_1 
       (.I0(\data_out_I[14]_i_2_n_0 ),
        .I1(\data_out_I_reg[0]_0 ),
        .I2(\data_out_I[14]_i_3_n_0 ),
        .O(\data_out_I_reg[30]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_I[14]_i_2 
       (.I0(data_I[30]),
        .I1(data_I[94]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_I[62]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_I[126]),
        .O(\data_out_I[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_I[14]_i_3 
       (.I0(data_I[14]),
        .I1(data_I[78]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_I[46]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_I[110]),
        .O(\data_out_I[14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \data_out_I[15]_i_1 
       (.I0(\data_out_I[15]_i_2_n_0 ),
        .I1(\data_out_I_reg[0]_0 ),
        .I2(\data_out_I[15]_i_4_n_0 ),
        .O(\data_out_I_reg[31]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_I[15]_i_2 
       (.I0(data_I[31]),
        .I1(data_I[95]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_I[63]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_I[127]),
        .O(\data_out_I[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_I[15]_i_4 
       (.I0(data_I[15]),
        .I1(data_I[79]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_I[47]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_I[111]),
        .O(\data_out_I[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \data_out_I[1]_i_1 
       (.I0(\data_out_I[1]_i_2_n_0 ),
        .I1(\data_out_I_reg[0]_0 ),
        .I2(\data_out_I[1]_i_3_n_0 ),
        .O(\data_out_I_reg[17]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_I[1]_i_2 
       (.I0(data_I[17]),
        .I1(data_I[81]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_I[49]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_I[113]),
        .O(\data_out_I[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_I[1]_i_3 
       (.I0(data_I[1]),
        .I1(data_I[65]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_I[33]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_I[97]),
        .O(\data_out_I[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \data_out_I[2]_i_1 
       (.I0(\data_out_I[2]_i_2_n_0 ),
        .I1(\data_out_I_reg[0]_0 ),
        .I2(\data_out_I[2]_i_3_n_0 ),
        .O(\data_out_I_reg[18]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_I[2]_i_2 
       (.I0(data_I[18]),
        .I1(data_I[82]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_I[50]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_I[114]),
        .O(\data_out_I[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_I[2]_i_3 
       (.I0(data_I[2]),
        .I1(data_I[66]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_I[34]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_I[98]),
        .O(\data_out_I[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \data_out_I[3]_i_1 
       (.I0(\data_out_I[3]_i_2_n_0 ),
        .I1(\data_out_I_reg[0]_0 ),
        .I2(\data_out_I[3]_i_3_n_0 ),
        .O(\data_out_I_reg[19]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_I[3]_i_2 
       (.I0(data_I[19]),
        .I1(data_I[83]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_I[51]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_I[115]),
        .O(\data_out_I[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_I[3]_i_3 
       (.I0(data_I[3]),
        .I1(data_I[67]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_I[35]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_I[99]),
        .O(\data_out_I[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \data_out_I[4]_i_1 
       (.I0(\data_out_I[4]_i_2_n_0 ),
        .I1(\data_out_I_reg[0]_0 ),
        .I2(\data_out_I[4]_i_3_n_0 ),
        .O(\data_out_I_reg[20]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_I[4]_i_2 
       (.I0(data_I[20]),
        .I1(data_I[84]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_I[52]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_I[116]),
        .O(\data_out_I[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_I[4]_i_3 
       (.I0(data_I[4]),
        .I1(data_I[68]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_I[36]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_I[100]),
        .O(\data_out_I[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \data_out_I[5]_i_1 
       (.I0(\data_out_I[5]_i_2_n_0 ),
        .I1(\data_out_I_reg[0]_0 ),
        .I2(\data_out_I[5]_i_3_n_0 ),
        .O(\data_out_I_reg[21]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_I[5]_i_2 
       (.I0(data_I[21]),
        .I1(data_I[85]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_I[53]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_I[117]),
        .O(\data_out_I[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_I[5]_i_3 
       (.I0(data_I[5]),
        .I1(data_I[69]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_I[37]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_I[101]),
        .O(\data_out_I[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \data_out_I[6]_i_1 
       (.I0(\data_out_I[6]_i_2_n_0 ),
        .I1(\data_out_I_reg[0]_0 ),
        .I2(\data_out_I[6]_i_3_n_0 ),
        .O(\data_out_I_reg[22]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_I[6]_i_2 
       (.I0(data_I[22]),
        .I1(data_I[86]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_I[54]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_I[118]),
        .O(\data_out_I[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_I[6]_i_3 
       (.I0(data_I[6]),
        .I1(data_I[70]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_I[38]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_I[102]),
        .O(\data_out_I[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \data_out_I[7]_i_1 
       (.I0(\data_out_I[7]_i_2_n_0 ),
        .I1(\data_out_I_reg[0]_0 ),
        .I2(\data_out_I[7]_i_3_n_0 ),
        .O(\data_out_I_reg[23]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_I[7]_i_2 
       (.I0(data_I[23]),
        .I1(data_I[87]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_I[55]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_I[119]),
        .O(\data_out_I[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_I[7]_i_3 
       (.I0(data_I[7]),
        .I1(data_I[71]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_I[39]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_I[103]),
        .O(\data_out_I[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \data_out_I[8]_i_1 
       (.I0(\data_out_I[8]_i_2_n_0 ),
        .I1(\data_out_I_reg[0]_0 ),
        .I2(\data_out_I[8]_i_3_n_0 ),
        .O(\data_out_I_reg[24]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_I[8]_i_2 
       (.I0(data_I[24]),
        .I1(data_I[88]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_I[56]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_I[120]),
        .O(\data_out_I[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_I[8]_i_3 
       (.I0(data_I[8]),
        .I1(data_I[72]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_I[40]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_I[104]),
        .O(\data_out_I[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \data_out_I[9]_i_1 
       (.I0(\data_out_I[9]_i_2_n_0 ),
        .I1(\data_out_I_reg[0]_0 ),
        .I2(\data_out_I[9]_i_3_n_0 ),
        .O(\data_out_I_reg[25]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_I[9]_i_2 
       (.I0(data_I[25]),
        .I1(data_I[89]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_I[57]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_I[121]),
        .O(\data_out_I[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_I[9]_i_3 
       (.I0(data_I[9]),
        .I1(data_I[73]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_I[41]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_I[105]),
        .O(\data_out_I[9]_i_3_n_0 ));
  FDRE \data_out_I_reg[0] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[0] ),
        .Q(data_I[0]),
        .R(1'b0));
  FDRE \data_out_I_reg[100] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[100] ),
        .Q(data_I[100]),
        .R(1'b0));
  FDRE \data_out_I_reg[101] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[101] ),
        .Q(data_I[101]),
        .R(1'b0));
  FDRE \data_out_I_reg[102] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[102] ),
        .Q(data_I[102]),
        .R(1'b0));
  FDRE \data_out_I_reg[103] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[103] ),
        .Q(data_I[103]),
        .R(1'b0));
  FDRE \data_out_I_reg[104] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[104] ),
        .Q(data_I[104]),
        .R(1'b0));
  FDRE \data_out_I_reg[105] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[105] ),
        .Q(data_I[105]),
        .R(1'b0));
  FDRE \data_out_I_reg[106] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[106] ),
        .Q(data_I[106]),
        .R(1'b0));
  FDRE \data_out_I_reg[107] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[107] ),
        .Q(data_I[107]),
        .R(1'b0));
  FDRE \data_out_I_reg[108] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[108] ),
        .Q(data_I[108]),
        .R(1'b0));
  FDRE \data_out_I_reg[109] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[109] ),
        .Q(data_I[109]),
        .R(1'b0));
  FDRE \data_out_I_reg[10] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[10] ),
        .Q(data_I[10]),
        .R(1'b0));
  FDRE \data_out_I_reg[110] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[110] ),
        .Q(data_I[110]),
        .R(1'b0));
  FDRE \data_out_I_reg[111] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[111] ),
        .Q(data_I[111]),
        .R(1'b0));
  FDRE \data_out_I_reg[112] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[112] ),
        .Q(data_I[112]),
        .R(1'b0));
  FDRE \data_out_I_reg[113] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[113] ),
        .Q(data_I[113]),
        .R(1'b0));
  FDRE \data_out_I_reg[114] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[114] ),
        .Q(data_I[114]),
        .R(1'b0));
  FDRE \data_out_I_reg[115] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[115] ),
        .Q(data_I[115]),
        .R(1'b0));
  FDRE \data_out_I_reg[116] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[116] ),
        .Q(data_I[116]),
        .R(1'b0));
  FDRE \data_out_I_reg[117] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[117] ),
        .Q(data_I[117]),
        .R(1'b0));
  FDRE \data_out_I_reg[118] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[118] ),
        .Q(data_I[118]),
        .R(1'b0));
  FDRE \data_out_I_reg[119] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[119] ),
        .Q(data_I[119]),
        .R(1'b0));
  FDRE \data_out_I_reg[11] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[11] ),
        .Q(data_I[11]),
        .R(1'b0));
  FDRE \data_out_I_reg[120] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[120] ),
        .Q(data_I[120]),
        .R(1'b0));
  FDRE \data_out_I_reg[121] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[121] ),
        .Q(data_I[121]),
        .R(1'b0));
  FDRE \data_out_I_reg[122] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[122] ),
        .Q(data_I[122]),
        .R(1'b0));
  FDRE \data_out_I_reg[123] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[123] ),
        .Q(data_I[123]),
        .R(1'b0));
  FDRE \data_out_I_reg[124] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[124] ),
        .Q(data_I[124]),
        .R(1'b0));
  FDRE \data_out_I_reg[125] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[125] ),
        .Q(data_I[125]),
        .R(1'b0));
  FDRE \data_out_I_reg[126] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[126] ),
        .Q(data_I[126]),
        .R(1'b0));
  FDRE \data_out_I_reg[127] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[127] ),
        .Q(data_I[127]),
        .R(1'b0));
  FDRE \data_out_I_reg[12] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[12] ),
        .Q(data_I[12]),
        .R(1'b0));
  FDRE \data_out_I_reg[13] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[13] ),
        .Q(data_I[13]),
        .R(1'b0));
  FDRE \data_out_I_reg[14] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[14] ),
        .Q(data_I[14]),
        .R(1'b0));
  FDRE \data_out_I_reg[15] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[15] ),
        .Q(data_I[15]),
        .R(1'b0));
  FDRE \data_out_I_reg[16] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[16] ),
        .Q(data_I[16]),
        .R(1'b0));
  FDRE \data_out_I_reg[17] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[17] ),
        .Q(data_I[17]),
        .R(1'b0));
  FDRE \data_out_I_reg[18] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[18] ),
        .Q(data_I[18]),
        .R(1'b0));
  FDRE \data_out_I_reg[19] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[19] ),
        .Q(data_I[19]),
        .R(1'b0));
  FDRE \data_out_I_reg[1] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[1] ),
        .Q(data_I[1]),
        .R(1'b0));
  FDRE \data_out_I_reg[20] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[20] ),
        .Q(data_I[20]),
        .R(1'b0));
  FDRE \data_out_I_reg[21] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[21] ),
        .Q(data_I[21]),
        .R(1'b0));
  FDRE \data_out_I_reg[22] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[22] ),
        .Q(data_I[22]),
        .R(1'b0));
  FDRE \data_out_I_reg[23] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[23] ),
        .Q(data_I[23]),
        .R(1'b0));
  FDRE \data_out_I_reg[24] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[24] ),
        .Q(data_I[24]),
        .R(1'b0));
  FDRE \data_out_I_reg[25] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[25] ),
        .Q(data_I[25]),
        .R(1'b0));
  FDRE \data_out_I_reg[26] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[26] ),
        .Q(data_I[26]),
        .R(1'b0));
  FDRE \data_out_I_reg[27] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[27] ),
        .Q(data_I[27]),
        .R(1'b0));
  FDRE \data_out_I_reg[28] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[28] ),
        .Q(data_I[28]),
        .R(1'b0));
  FDRE \data_out_I_reg[29] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[29] ),
        .Q(data_I[29]),
        .R(1'b0));
  FDRE \data_out_I_reg[2] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[2] ),
        .Q(data_I[2]),
        .R(1'b0));
  FDRE \data_out_I_reg[30] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[30] ),
        .Q(data_I[30]),
        .R(1'b0));
  FDRE \data_out_I_reg[31] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[31] ),
        .Q(data_I[31]),
        .R(1'b0));
  FDRE \data_out_I_reg[32] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[32] ),
        .Q(data_I[32]),
        .R(1'b0));
  FDRE \data_out_I_reg[33] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[33] ),
        .Q(data_I[33]),
        .R(1'b0));
  FDRE \data_out_I_reg[34] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[34] ),
        .Q(data_I[34]),
        .R(1'b0));
  FDRE \data_out_I_reg[35] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[35] ),
        .Q(data_I[35]),
        .R(1'b0));
  FDRE \data_out_I_reg[36] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[36] ),
        .Q(data_I[36]),
        .R(1'b0));
  FDRE \data_out_I_reg[37] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[37] ),
        .Q(data_I[37]),
        .R(1'b0));
  FDRE \data_out_I_reg[38] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[38] ),
        .Q(data_I[38]),
        .R(1'b0));
  FDRE \data_out_I_reg[39] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[39] ),
        .Q(data_I[39]),
        .R(1'b0));
  FDRE \data_out_I_reg[3] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[3] ),
        .Q(data_I[3]),
        .R(1'b0));
  FDRE \data_out_I_reg[40] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[40] ),
        .Q(data_I[40]),
        .R(1'b0));
  FDRE \data_out_I_reg[41] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[41] ),
        .Q(data_I[41]),
        .R(1'b0));
  FDRE \data_out_I_reg[42] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[42] ),
        .Q(data_I[42]),
        .R(1'b0));
  FDRE \data_out_I_reg[43] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[43] ),
        .Q(data_I[43]),
        .R(1'b0));
  FDRE \data_out_I_reg[44] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[44] ),
        .Q(data_I[44]),
        .R(1'b0));
  FDRE \data_out_I_reg[45] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[45] ),
        .Q(data_I[45]),
        .R(1'b0));
  FDRE \data_out_I_reg[46] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[46] ),
        .Q(data_I[46]),
        .R(1'b0));
  FDRE \data_out_I_reg[47] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[47] ),
        .Q(data_I[47]),
        .R(1'b0));
  FDRE \data_out_I_reg[48] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[48] ),
        .Q(data_I[48]),
        .R(1'b0));
  FDRE \data_out_I_reg[49] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[49] ),
        .Q(data_I[49]),
        .R(1'b0));
  FDRE \data_out_I_reg[4] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[4] ),
        .Q(data_I[4]),
        .R(1'b0));
  FDRE \data_out_I_reg[50] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[50] ),
        .Q(data_I[50]),
        .R(1'b0));
  FDRE \data_out_I_reg[51] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[51] ),
        .Q(data_I[51]),
        .R(1'b0));
  FDRE \data_out_I_reg[52] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[52] ),
        .Q(data_I[52]),
        .R(1'b0));
  FDRE \data_out_I_reg[53] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[53] ),
        .Q(data_I[53]),
        .R(1'b0));
  FDRE \data_out_I_reg[54] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[54] ),
        .Q(data_I[54]),
        .R(1'b0));
  FDRE \data_out_I_reg[55] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[55] ),
        .Q(data_I[55]),
        .R(1'b0));
  FDRE \data_out_I_reg[56] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[56] ),
        .Q(data_I[56]),
        .R(1'b0));
  FDRE \data_out_I_reg[57] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[57] ),
        .Q(data_I[57]),
        .R(1'b0));
  FDRE \data_out_I_reg[58] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[58] ),
        .Q(data_I[58]),
        .R(1'b0));
  FDRE \data_out_I_reg[59] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[59] ),
        .Q(data_I[59]),
        .R(1'b0));
  FDRE \data_out_I_reg[5] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[5] ),
        .Q(data_I[5]),
        .R(1'b0));
  FDRE \data_out_I_reg[60] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[60] ),
        .Q(data_I[60]),
        .R(1'b0));
  FDRE \data_out_I_reg[61] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[61] ),
        .Q(data_I[61]),
        .R(1'b0));
  FDRE \data_out_I_reg[62] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[62] ),
        .Q(data_I[62]),
        .R(1'b0));
  FDRE \data_out_I_reg[63] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[63] ),
        .Q(data_I[63]),
        .R(1'b0));
  FDRE \data_out_I_reg[64] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[64] ),
        .Q(data_I[64]),
        .R(1'b0));
  FDRE \data_out_I_reg[65] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[65] ),
        .Q(data_I[65]),
        .R(1'b0));
  FDRE \data_out_I_reg[66] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[66] ),
        .Q(data_I[66]),
        .R(1'b0));
  FDRE \data_out_I_reg[67] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[67] ),
        .Q(data_I[67]),
        .R(1'b0));
  FDRE \data_out_I_reg[68] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[68] ),
        .Q(data_I[68]),
        .R(1'b0));
  FDRE \data_out_I_reg[69] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[69] ),
        .Q(data_I[69]),
        .R(1'b0));
  FDRE \data_out_I_reg[6] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[6] ),
        .Q(data_I[6]),
        .R(1'b0));
  FDRE \data_out_I_reg[70] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[70] ),
        .Q(data_I[70]),
        .R(1'b0));
  FDRE \data_out_I_reg[71] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[71] ),
        .Q(data_I[71]),
        .R(1'b0));
  FDRE \data_out_I_reg[72] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[72] ),
        .Q(data_I[72]),
        .R(1'b0));
  FDRE \data_out_I_reg[73] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[73] ),
        .Q(data_I[73]),
        .R(1'b0));
  FDRE \data_out_I_reg[74] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[74] ),
        .Q(data_I[74]),
        .R(1'b0));
  FDRE \data_out_I_reg[75] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[75] ),
        .Q(data_I[75]),
        .R(1'b0));
  FDRE \data_out_I_reg[76] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[76] ),
        .Q(data_I[76]),
        .R(1'b0));
  FDRE \data_out_I_reg[77] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[77] ),
        .Q(data_I[77]),
        .R(1'b0));
  FDRE \data_out_I_reg[78] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[78] ),
        .Q(data_I[78]),
        .R(1'b0));
  FDRE \data_out_I_reg[79] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[79] ),
        .Q(data_I[79]),
        .R(1'b0));
  FDRE \data_out_I_reg[7] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[7] ),
        .Q(data_I[7]),
        .R(1'b0));
  FDRE \data_out_I_reg[80] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[80] ),
        .Q(data_I[80]),
        .R(1'b0));
  FDRE \data_out_I_reg[81] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[81] ),
        .Q(data_I[81]),
        .R(1'b0));
  FDRE \data_out_I_reg[82] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[82] ),
        .Q(data_I[82]),
        .R(1'b0));
  FDRE \data_out_I_reg[83] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[83] ),
        .Q(data_I[83]),
        .R(1'b0));
  FDRE \data_out_I_reg[84] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[84] ),
        .Q(data_I[84]),
        .R(1'b0));
  FDRE \data_out_I_reg[85] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[85] ),
        .Q(data_I[85]),
        .R(1'b0));
  FDRE \data_out_I_reg[86] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[86] ),
        .Q(data_I[86]),
        .R(1'b0));
  FDRE \data_out_I_reg[87] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[87] ),
        .Q(data_I[87]),
        .R(1'b0));
  FDRE \data_out_I_reg[88] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[88] ),
        .Q(data_I[88]),
        .R(1'b0));
  FDRE \data_out_I_reg[89] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[89] ),
        .Q(data_I[89]),
        .R(1'b0));
  FDRE \data_out_I_reg[8] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[8] ),
        .Q(data_I[8]),
        .R(1'b0));
  FDRE \data_out_I_reg[90] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[90] ),
        .Q(data_I[90]),
        .R(1'b0));
  FDRE \data_out_I_reg[91] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[91] ),
        .Q(data_I[91]),
        .R(1'b0));
  FDRE \data_out_I_reg[92] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[92] ),
        .Q(data_I[92]),
        .R(1'b0));
  FDRE \data_out_I_reg[93] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[93] ),
        .Q(data_I[93]),
        .R(1'b0));
  FDRE \data_out_I_reg[94] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[94] ),
        .Q(data_I[94]),
        .R(1'b0));
  FDRE \data_out_I_reg[95] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[95] ),
        .Q(data_I[95]),
        .R(1'b0));
  FDRE \data_out_I_reg[96] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[96] ),
        .Q(data_I[96]),
        .R(1'b0));
  FDRE \data_out_I_reg[97] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[97] ),
        .Q(data_I[97]),
        .R(1'b0));
  FDRE \data_out_I_reg[98] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[98] ),
        .Q(data_I[98]),
        .R(1'b0));
  FDRE \data_out_I_reg[99] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[99] ),
        .Q(data_I[99]),
        .R(1'b0));
  FDRE \data_out_I_reg[9] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataI_reg_n_0_[9] ),
        .Q(data_I[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \data_out_R[0]_i_1 
       (.I0(\data_out_R[0]_i_2_n_0 ),
        .I1(\data_out_I_reg[0]_0 ),
        .I2(\data_out_R[0]_i_3_n_0 ),
        .O(\data_out_R_reg[16]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_R[0]_i_2 
       (.I0(data_R[16]),
        .I1(data_R[80]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_R[48]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_R[112]),
        .O(\data_out_R[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_R[0]_i_3 
       (.I0(data_R[0]),
        .I1(data_R[64]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_R[32]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_R[96]),
        .O(\data_out_R[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \data_out_R[10]_i_1 
       (.I0(\data_out_R[10]_i_2_n_0 ),
        .I1(\data_out_I_reg[0]_0 ),
        .I2(\data_out_R[10]_i_3_n_0 ),
        .O(\data_out_R_reg[26]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_R[10]_i_2 
       (.I0(data_R[26]),
        .I1(data_R[90]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_R[58]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_R[122]),
        .O(\data_out_R[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_R[10]_i_3 
       (.I0(data_R[10]),
        .I1(data_R[74]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_R[42]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_R[106]),
        .O(\data_out_R[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \data_out_R[11]_i_1 
       (.I0(\data_out_R[11]_i_2_n_0 ),
        .I1(\data_out_I_reg[0]_0 ),
        .I2(\data_out_R[11]_i_3_n_0 ),
        .O(\data_out_R_reg[27]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_R[11]_i_2 
       (.I0(data_R[27]),
        .I1(data_R[91]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_R[59]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_R[123]),
        .O(\data_out_R[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_R[11]_i_3 
       (.I0(data_R[11]),
        .I1(data_R[75]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_R[43]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_R[107]),
        .O(\data_out_R[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5557555500000000)) 
    \data_out_R[127]_i_1 
       (.I0(buffer_free),
        .I1(idx[0]),
        .I2(idx[1]),
        .I3(idx[2]),
        .I4(idx[3]),
        .I5(fft_ready),
        .O(\data_out_R[127]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \data_out_R[12]_i_1 
       (.I0(\data_out_R[12]_i_2_n_0 ),
        .I1(\data_out_I_reg[0]_0 ),
        .I2(\data_out_R[12]_i_3_n_0 ),
        .O(\data_out_R_reg[28]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_R[12]_i_2 
       (.I0(data_R[28]),
        .I1(data_R[92]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_R[60]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_R[124]),
        .O(\data_out_R[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_R[12]_i_3 
       (.I0(data_R[12]),
        .I1(data_R[76]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_R[44]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_R[108]),
        .O(\data_out_R[12]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \data_out_R[13]_i_1 
       (.I0(\data_out_R[13]_i_2_n_0 ),
        .I1(\data_out_I_reg[0]_0 ),
        .I2(\data_out_R[13]_i_3_n_0 ),
        .O(\data_out_R_reg[29]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_R[13]_i_2 
       (.I0(data_R[29]),
        .I1(data_R[93]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_R[61]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_R[125]),
        .O(\data_out_R[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_R[13]_i_3 
       (.I0(data_R[13]),
        .I1(data_R[77]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_R[45]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_R[109]),
        .O(\data_out_R[13]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \data_out_R[14]_i_1 
       (.I0(\data_out_R[14]_i_2_n_0 ),
        .I1(\data_out_I_reg[0]_0 ),
        .I2(\data_out_R[14]_i_3_n_0 ),
        .O(\data_out_R_reg[30]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_R[14]_i_2 
       (.I0(data_R[30]),
        .I1(data_R[94]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_R[62]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_R[126]),
        .O(\data_out_R[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_R[14]_i_3 
       (.I0(data_R[14]),
        .I1(data_R[78]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_R[46]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_R[110]),
        .O(\data_out_R[14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \data_out_R[15]_i_1 
       (.I0(\data_out_R[15]_i_2_n_0 ),
        .I1(\data_out_I_reg[0]_0 ),
        .I2(\data_out_R[15]_i_3_n_0 ),
        .O(\data_out_R_reg[31]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_R[15]_i_2 
       (.I0(data_R[31]),
        .I1(data_R[95]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_R[63]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_R[127]),
        .O(\data_out_R[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_R[15]_i_3 
       (.I0(data_R[15]),
        .I1(data_R[79]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_R[47]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_R[111]),
        .O(\data_out_R[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \data_out_R[1]_i_1 
       (.I0(\data_out_R[1]_i_2_n_0 ),
        .I1(\data_out_I_reg[0]_0 ),
        .I2(\data_out_R[1]_i_3_n_0 ),
        .O(\data_out_R_reg[17]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_R[1]_i_2 
       (.I0(data_R[17]),
        .I1(data_R[81]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_R[49]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_R[113]),
        .O(\data_out_R[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_R[1]_i_3 
       (.I0(data_R[1]),
        .I1(data_R[65]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_R[33]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_R[97]),
        .O(\data_out_R[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \data_out_R[2]_i_1 
       (.I0(\data_out_R[2]_i_2_n_0 ),
        .I1(\data_out_I_reg[0]_0 ),
        .I2(\data_out_R[2]_i_3_n_0 ),
        .O(\data_out_R_reg[18]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_R[2]_i_2 
       (.I0(data_R[18]),
        .I1(data_R[82]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_R[50]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_R[114]),
        .O(\data_out_R[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_R[2]_i_3 
       (.I0(data_R[2]),
        .I1(data_R[66]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_R[34]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_R[98]),
        .O(\data_out_R[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \data_out_R[3]_i_1 
       (.I0(\data_out_R[3]_i_2_n_0 ),
        .I1(\data_out_I_reg[0]_0 ),
        .I2(\data_out_R[3]_i_3_n_0 ),
        .O(\data_out_R_reg[19]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_R[3]_i_2 
       (.I0(data_R[19]),
        .I1(data_R[83]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_R[51]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_R[115]),
        .O(\data_out_R[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_R[3]_i_3 
       (.I0(data_R[3]),
        .I1(data_R[67]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_R[35]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_R[99]),
        .O(\data_out_R[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \data_out_R[4]_i_1 
       (.I0(\data_out_R[4]_i_2_n_0 ),
        .I1(\data_out_I_reg[0]_0 ),
        .I2(\data_out_R[4]_i_3_n_0 ),
        .O(\data_out_R_reg[20]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_R[4]_i_2 
       (.I0(data_R[20]),
        .I1(data_R[84]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_R[52]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_R[116]),
        .O(\data_out_R[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_R[4]_i_3 
       (.I0(data_R[4]),
        .I1(data_R[68]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_R[36]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_R[100]),
        .O(\data_out_R[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \data_out_R[5]_i_1 
       (.I0(\data_out_R[5]_i_2_n_0 ),
        .I1(\data_out_I_reg[0]_0 ),
        .I2(\data_out_R[5]_i_3_n_0 ),
        .O(\data_out_R_reg[21]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_R[5]_i_2 
       (.I0(data_R[21]),
        .I1(data_R[85]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_R[53]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_R[117]),
        .O(\data_out_R[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_R[5]_i_3 
       (.I0(data_R[5]),
        .I1(data_R[69]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_R[37]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_R[101]),
        .O(\data_out_R[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \data_out_R[6]_i_1 
       (.I0(\data_out_R[6]_i_2_n_0 ),
        .I1(\data_out_I_reg[0]_0 ),
        .I2(\data_out_R[6]_i_3_n_0 ),
        .O(\data_out_R_reg[22]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_R[6]_i_2 
       (.I0(data_R[22]),
        .I1(data_R[86]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_R[54]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_R[118]),
        .O(\data_out_R[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_R[6]_i_3 
       (.I0(data_R[6]),
        .I1(data_R[70]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_R[38]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_R[102]),
        .O(\data_out_R[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \data_out_R[7]_i_1 
       (.I0(\data_out_R[7]_i_2_n_0 ),
        .I1(\data_out_I_reg[0]_0 ),
        .I2(\data_out_R[7]_i_3_n_0 ),
        .O(\data_out_R_reg[23]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_R[7]_i_2 
       (.I0(data_R[23]),
        .I1(data_R[87]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_R[55]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_R[119]),
        .O(\data_out_R[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_R[7]_i_3 
       (.I0(data_R[7]),
        .I1(data_R[71]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_R[39]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_R[103]),
        .O(\data_out_R[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \data_out_R[8]_i_1 
       (.I0(\data_out_R[8]_i_2_n_0 ),
        .I1(\data_out_I_reg[0]_0 ),
        .I2(\data_out_R[8]_i_3_n_0 ),
        .O(\data_out_R_reg[24]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_R[8]_i_2 
       (.I0(data_R[24]),
        .I1(data_R[88]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_R[56]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_R[120]),
        .O(\data_out_R[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_R[8]_i_3 
       (.I0(data_R[8]),
        .I1(data_R[72]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_R[40]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_R[104]),
        .O(\data_out_R[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \data_out_R[9]_i_1 
       (.I0(\data_out_R[9]_i_2_n_0 ),
        .I1(\data_out_I_reg[0]_0 ),
        .I2(\data_out_R[9]_i_3_n_0 ),
        .O(\data_out_R_reg[25]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_R[9]_i_2 
       (.I0(data_R[25]),
        .I1(data_R[89]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_R[57]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_R[121]),
        .O(\data_out_R[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out_R[9]_i_3 
       (.I0(data_R[9]),
        .I1(data_R[73]),
        .I2(\data_out_I_reg[0]_1 ),
        .I3(data_R[41]),
        .I4(\data_out_I_reg[0]_2 ),
        .I5(data_R[105]),
        .O(\data_out_R[9]_i_3_n_0 ));
  FDRE \data_out_R_reg[0] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[0] ),
        .Q(data_R[0]),
        .R(1'b0));
  FDRE \data_out_R_reg[100] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[100] ),
        .Q(data_R[100]),
        .R(1'b0));
  FDRE \data_out_R_reg[101] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[101] ),
        .Q(data_R[101]),
        .R(1'b0));
  FDRE \data_out_R_reg[102] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[102] ),
        .Q(data_R[102]),
        .R(1'b0));
  FDRE \data_out_R_reg[103] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[103] ),
        .Q(data_R[103]),
        .R(1'b0));
  FDRE \data_out_R_reg[104] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[104] ),
        .Q(data_R[104]),
        .R(1'b0));
  FDRE \data_out_R_reg[105] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[105] ),
        .Q(data_R[105]),
        .R(1'b0));
  FDRE \data_out_R_reg[106] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[106] ),
        .Q(data_R[106]),
        .R(1'b0));
  FDRE \data_out_R_reg[107] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[107] ),
        .Q(data_R[107]),
        .R(1'b0));
  FDRE \data_out_R_reg[108] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[108] ),
        .Q(data_R[108]),
        .R(1'b0));
  FDRE \data_out_R_reg[109] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[109] ),
        .Q(data_R[109]),
        .R(1'b0));
  FDRE \data_out_R_reg[10] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[10] ),
        .Q(data_R[10]),
        .R(1'b0));
  FDRE \data_out_R_reg[110] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[110] ),
        .Q(data_R[110]),
        .R(1'b0));
  FDRE \data_out_R_reg[111] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[111] ),
        .Q(data_R[111]),
        .R(1'b0));
  FDRE \data_out_R_reg[112] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[112] ),
        .Q(data_R[112]),
        .R(1'b0));
  FDRE \data_out_R_reg[113] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[113] ),
        .Q(data_R[113]),
        .R(1'b0));
  FDRE \data_out_R_reg[114] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[114] ),
        .Q(data_R[114]),
        .R(1'b0));
  FDRE \data_out_R_reg[115] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[115] ),
        .Q(data_R[115]),
        .R(1'b0));
  FDRE \data_out_R_reg[116] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[116] ),
        .Q(data_R[116]),
        .R(1'b0));
  FDRE \data_out_R_reg[117] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[117] ),
        .Q(data_R[117]),
        .R(1'b0));
  FDRE \data_out_R_reg[118] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[118] ),
        .Q(data_R[118]),
        .R(1'b0));
  FDRE \data_out_R_reg[119] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[119] ),
        .Q(data_R[119]),
        .R(1'b0));
  FDRE \data_out_R_reg[11] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[11] ),
        .Q(data_R[11]),
        .R(1'b0));
  FDRE \data_out_R_reg[120] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[120] ),
        .Q(data_R[120]),
        .R(1'b0));
  FDRE \data_out_R_reg[121] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[121] ),
        .Q(data_R[121]),
        .R(1'b0));
  FDRE \data_out_R_reg[122] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[122] ),
        .Q(data_R[122]),
        .R(1'b0));
  FDRE \data_out_R_reg[123] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[123] ),
        .Q(data_R[123]),
        .R(1'b0));
  FDRE \data_out_R_reg[124] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[124] ),
        .Q(data_R[124]),
        .R(1'b0));
  FDRE \data_out_R_reg[125] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[125] ),
        .Q(data_R[125]),
        .R(1'b0));
  FDRE \data_out_R_reg[126] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[126] ),
        .Q(data_R[126]),
        .R(1'b0));
  FDRE \data_out_R_reg[127] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[127] ),
        .Q(data_R[127]),
        .R(1'b0));
  FDRE \data_out_R_reg[12] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[12] ),
        .Q(data_R[12]),
        .R(1'b0));
  FDRE \data_out_R_reg[13] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[13] ),
        .Q(data_R[13]),
        .R(1'b0));
  FDRE \data_out_R_reg[14] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[14] ),
        .Q(data_R[14]),
        .R(1'b0));
  FDRE \data_out_R_reg[15] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[15] ),
        .Q(data_R[15]),
        .R(1'b0));
  FDRE \data_out_R_reg[16] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[16] ),
        .Q(data_R[16]),
        .R(1'b0));
  FDRE \data_out_R_reg[17] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[17] ),
        .Q(data_R[17]),
        .R(1'b0));
  FDRE \data_out_R_reg[18] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[18] ),
        .Q(data_R[18]),
        .R(1'b0));
  FDRE \data_out_R_reg[19] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[19] ),
        .Q(data_R[19]),
        .R(1'b0));
  FDRE \data_out_R_reg[1] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[1] ),
        .Q(data_R[1]),
        .R(1'b0));
  FDRE \data_out_R_reg[20] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[20] ),
        .Q(data_R[20]),
        .R(1'b0));
  FDRE \data_out_R_reg[21] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[21] ),
        .Q(data_R[21]),
        .R(1'b0));
  FDRE \data_out_R_reg[22] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[22] ),
        .Q(data_R[22]),
        .R(1'b0));
  FDRE \data_out_R_reg[23] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[23] ),
        .Q(data_R[23]),
        .R(1'b0));
  FDRE \data_out_R_reg[24] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[24] ),
        .Q(data_R[24]),
        .R(1'b0));
  FDRE \data_out_R_reg[25] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[25] ),
        .Q(data_R[25]),
        .R(1'b0));
  FDRE \data_out_R_reg[26] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[26] ),
        .Q(data_R[26]),
        .R(1'b0));
  FDRE \data_out_R_reg[27] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[27] ),
        .Q(data_R[27]),
        .R(1'b0));
  FDRE \data_out_R_reg[28] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[28] ),
        .Q(data_R[28]),
        .R(1'b0));
  FDRE \data_out_R_reg[29] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[29] ),
        .Q(data_R[29]),
        .R(1'b0));
  FDRE \data_out_R_reg[2] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[2] ),
        .Q(data_R[2]),
        .R(1'b0));
  FDRE \data_out_R_reg[30] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[30] ),
        .Q(data_R[30]),
        .R(1'b0));
  FDRE \data_out_R_reg[31] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[31] ),
        .Q(data_R[31]),
        .R(1'b0));
  FDRE \data_out_R_reg[32] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[32] ),
        .Q(data_R[32]),
        .R(1'b0));
  FDRE \data_out_R_reg[33] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[33] ),
        .Q(data_R[33]),
        .R(1'b0));
  FDRE \data_out_R_reg[34] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[34] ),
        .Q(data_R[34]),
        .R(1'b0));
  FDRE \data_out_R_reg[35] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[35] ),
        .Q(data_R[35]),
        .R(1'b0));
  FDRE \data_out_R_reg[36] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[36] ),
        .Q(data_R[36]),
        .R(1'b0));
  FDRE \data_out_R_reg[37] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[37] ),
        .Q(data_R[37]),
        .R(1'b0));
  FDRE \data_out_R_reg[38] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[38] ),
        .Q(data_R[38]),
        .R(1'b0));
  FDRE \data_out_R_reg[39] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[39] ),
        .Q(data_R[39]),
        .R(1'b0));
  FDRE \data_out_R_reg[3] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[3] ),
        .Q(data_R[3]),
        .R(1'b0));
  FDRE \data_out_R_reg[40] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[40] ),
        .Q(data_R[40]),
        .R(1'b0));
  FDRE \data_out_R_reg[41] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[41] ),
        .Q(data_R[41]),
        .R(1'b0));
  FDRE \data_out_R_reg[42] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[42] ),
        .Q(data_R[42]),
        .R(1'b0));
  FDRE \data_out_R_reg[43] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[43] ),
        .Q(data_R[43]),
        .R(1'b0));
  FDRE \data_out_R_reg[44] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[44] ),
        .Q(data_R[44]),
        .R(1'b0));
  FDRE \data_out_R_reg[45] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[45] ),
        .Q(data_R[45]),
        .R(1'b0));
  FDRE \data_out_R_reg[46] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[46] ),
        .Q(data_R[46]),
        .R(1'b0));
  FDRE \data_out_R_reg[47] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[47] ),
        .Q(data_R[47]),
        .R(1'b0));
  FDRE \data_out_R_reg[48] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[48] ),
        .Q(data_R[48]),
        .R(1'b0));
  FDRE \data_out_R_reg[49] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[49] ),
        .Q(data_R[49]),
        .R(1'b0));
  FDRE \data_out_R_reg[4] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[4] ),
        .Q(data_R[4]),
        .R(1'b0));
  FDRE \data_out_R_reg[50] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[50] ),
        .Q(data_R[50]),
        .R(1'b0));
  FDRE \data_out_R_reg[51] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[51] ),
        .Q(data_R[51]),
        .R(1'b0));
  FDRE \data_out_R_reg[52] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[52] ),
        .Q(data_R[52]),
        .R(1'b0));
  FDRE \data_out_R_reg[53] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[53] ),
        .Q(data_R[53]),
        .R(1'b0));
  FDRE \data_out_R_reg[54] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[54] ),
        .Q(data_R[54]),
        .R(1'b0));
  FDRE \data_out_R_reg[55] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[55] ),
        .Q(data_R[55]),
        .R(1'b0));
  FDRE \data_out_R_reg[56] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[56] ),
        .Q(data_R[56]),
        .R(1'b0));
  FDRE \data_out_R_reg[57] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[57] ),
        .Q(data_R[57]),
        .R(1'b0));
  FDRE \data_out_R_reg[58] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[58] ),
        .Q(data_R[58]),
        .R(1'b0));
  FDRE \data_out_R_reg[59] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[59] ),
        .Q(data_R[59]),
        .R(1'b0));
  FDRE \data_out_R_reg[5] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[5] ),
        .Q(data_R[5]),
        .R(1'b0));
  FDRE \data_out_R_reg[60] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[60] ),
        .Q(data_R[60]),
        .R(1'b0));
  FDRE \data_out_R_reg[61] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[61] ),
        .Q(data_R[61]),
        .R(1'b0));
  FDRE \data_out_R_reg[62] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[62] ),
        .Q(data_R[62]),
        .R(1'b0));
  FDRE \data_out_R_reg[63] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[63] ),
        .Q(data_R[63]),
        .R(1'b0));
  FDRE \data_out_R_reg[64] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[64] ),
        .Q(data_R[64]),
        .R(1'b0));
  FDRE \data_out_R_reg[65] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[65] ),
        .Q(data_R[65]),
        .R(1'b0));
  FDRE \data_out_R_reg[66] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[66] ),
        .Q(data_R[66]),
        .R(1'b0));
  FDRE \data_out_R_reg[67] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[67] ),
        .Q(data_R[67]),
        .R(1'b0));
  FDRE \data_out_R_reg[68] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[68] ),
        .Q(data_R[68]),
        .R(1'b0));
  FDRE \data_out_R_reg[69] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[69] ),
        .Q(data_R[69]),
        .R(1'b0));
  FDRE \data_out_R_reg[6] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[6] ),
        .Q(data_R[6]),
        .R(1'b0));
  FDRE \data_out_R_reg[70] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[70] ),
        .Q(data_R[70]),
        .R(1'b0));
  FDRE \data_out_R_reg[71] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[71] ),
        .Q(data_R[71]),
        .R(1'b0));
  FDRE \data_out_R_reg[72] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[72] ),
        .Q(data_R[72]),
        .R(1'b0));
  FDRE \data_out_R_reg[73] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[73] ),
        .Q(data_R[73]),
        .R(1'b0));
  FDRE \data_out_R_reg[74] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[74] ),
        .Q(data_R[74]),
        .R(1'b0));
  FDRE \data_out_R_reg[75] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[75] ),
        .Q(data_R[75]),
        .R(1'b0));
  FDRE \data_out_R_reg[76] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[76] ),
        .Q(data_R[76]),
        .R(1'b0));
  FDRE \data_out_R_reg[77] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[77] ),
        .Q(data_R[77]),
        .R(1'b0));
  FDRE \data_out_R_reg[78] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[78] ),
        .Q(data_R[78]),
        .R(1'b0));
  FDRE \data_out_R_reg[79] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[79] ),
        .Q(data_R[79]),
        .R(1'b0));
  FDRE \data_out_R_reg[7] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[7] ),
        .Q(data_R[7]),
        .R(1'b0));
  FDRE \data_out_R_reg[80] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[80] ),
        .Q(data_R[80]),
        .R(1'b0));
  FDRE \data_out_R_reg[81] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[81] ),
        .Q(data_R[81]),
        .R(1'b0));
  FDRE \data_out_R_reg[82] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[82] ),
        .Q(data_R[82]),
        .R(1'b0));
  FDRE \data_out_R_reg[83] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[83] ),
        .Q(data_R[83]),
        .R(1'b0));
  FDRE \data_out_R_reg[84] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[84] ),
        .Q(data_R[84]),
        .R(1'b0));
  FDRE \data_out_R_reg[85] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[85] ),
        .Q(data_R[85]),
        .R(1'b0));
  FDRE \data_out_R_reg[86] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[86] ),
        .Q(data_R[86]),
        .R(1'b0));
  FDRE \data_out_R_reg[87] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[87] ),
        .Q(data_R[87]),
        .R(1'b0));
  FDRE \data_out_R_reg[88] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[88] ),
        .Q(data_R[88]),
        .R(1'b0));
  FDRE \data_out_R_reg[89] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[89] ),
        .Q(data_R[89]),
        .R(1'b0));
  FDRE \data_out_R_reg[8] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[8] ),
        .Q(data_R[8]),
        .R(1'b0));
  FDRE \data_out_R_reg[90] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[90] ),
        .Q(data_R[90]),
        .R(1'b0));
  FDRE \data_out_R_reg[91] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[91] ),
        .Q(data_R[91]),
        .R(1'b0));
  FDRE \data_out_R_reg[92] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[92] ),
        .Q(data_R[92]),
        .R(1'b0));
  FDRE \data_out_R_reg[93] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[93] ),
        .Q(data_R[93]),
        .R(1'b0));
  FDRE \data_out_R_reg[94] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[94] ),
        .Q(data_R[94]),
        .R(1'b0));
  FDRE \data_out_R_reg[95] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[95] ),
        .Q(data_R[95]),
        .R(1'b0));
  FDRE \data_out_R_reg[96] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[96] ),
        .Q(data_R[96]),
        .R(1'b0));
  FDRE \data_out_R_reg[97] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[97] ),
        .Q(data_R[97]),
        .R(1'b0));
  FDRE \data_out_R_reg[98] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[98] ),
        .Q(data_R[98]),
        .R(1'b0));
  FDRE \data_out_R_reg[99] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[99] ),
        .Q(data_R[99]),
        .R(1'b0));
  FDRE \data_out_R_reg[9] 
       (.C(s00_axis_aclk),
        .CE(\data_out_R[127]_i_1_n_0 ),
        .D(\dataR_reg_n_0_[9] ),
        .Q(data_R[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFF0FFFF88808888)) 
    dma_tready_i_1
       (.I0(s00_axis_tvalid),
        .I1(buffer_free),
        .I2(fft_ready),
        .I3(dma_tready_i_2_n_0),
        .I4(idx[3]),
        .I5(s00_axis_tready),
        .O(dma_tready_i_1_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    dma_tready_i_2
       (.I0(idx[2]),
        .I1(idx[1]),
        .I2(idx[0]),
        .O(dma_tready_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dma_tready_reg
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(dma_tready_i_1_n_0),
        .Q(s00_axis_tready),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    start_reg
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\data_out_R[127]_i_1_n_0 ),
        .Q(fft_start),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    started_i_2
       (.I0(fft_start),
        .I1(previous_start),
        .O(outIdx1));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clocking_out
   (previous_start,
    started,
    fft_ready,
    m00_axis_tvalid,
    m00_axis_tlast,
    started_reg_0,
    Q,
    \outIdx_reg[0]_0 ,
    \outIdx_reg[1]_0 ,
    started_reg_1,
    m00_axis_tdata,
    fft_start,
    s00_axis_aclk,
    outIdx1,
    dma_tvalid_reg_0,
    dma_tlast_reg_0,
    m00_axis_tready,
    \data_out_R_reg[15]_0 ,
    \data_out_R_reg[14]_0 ,
    \data_out_R_reg[13]_0 ,
    \data_out_R_reg[12]_0 ,
    \data_out_R_reg[11]_0 ,
    \data_out_R_reg[10]_0 ,
    \data_out_R_reg[9]_0 ,
    \data_out_R_reg[8]_0 ,
    \data_out_R_reg[7]_0 ,
    \data_out_R_reg[6]_0 ,
    \data_out_R_reg[5]_0 ,
    \data_out_R_reg[4]_0 ,
    \data_out_R_reg[3]_0 ,
    \data_out_R_reg[2]_0 ,
    \data_out_R_reg[1]_0 ,
    \data_out_R_reg[0]_0 ,
    \data_out_I_reg[15]_0 ,
    \data_out_I_reg[14]_0 ,
    \data_out_I_reg[13]_0 ,
    \data_out_I_reg[12]_0 ,
    \data_out_I_reg[11]_0 ,
    \data_out_I_reg[10]_0 ,
    \data_out_I_reg[9]_0 ,
    \data_out_I_reg[8]_0 ,
    \data_out_I_reg[7]_0 ,
    \data_out_I_reg[6]_0 ,
    \data_out_I_reg[5]_0 ,
    \data_out_I_reg[4]_0 ,
    \data_out_I_reg[3]_0 ,
    \data_out_I_reg[2]_0 ,
    \data_out_I_reg[1]_0 ,
    \data_out_I_reg[0]_0 );
  output previous_start;
  output started;
  output fft_ready;
  output m00_axis_tvalid;
  output m00_axis_tlast;
  output started_reg_0;
  output [2:0]Q;
  output \outIdx_reg[0]_0 ;
  output \outIdx_reg[1]_0 ;
  output started_reg_1;
  output [31:0]m00_axis_tdata;
  input fft_start;
  input s00_axis_aclk;
  input outIdx1;
  input dma_tvalid_reg_0;
  input dma_tlast_reg_0;
  input m00_axis_tready;
  input \data_out_R_reg[15]_0 ;
  input \data_out_R_reg[14]_0 ;
  input \data_out_R_reg[13]_0 ;
  input \data_out_R_reg[12]_0 ;
  input \data_out_R_reg[11]_0 ;
  input \data_out_R_reg[10]_0 ;
  input \data_out_R_reg[9]_0 ;
  input \data_out_R_reg[8]_0 ;
  input \data_out_R_reg[7]_0 ;
  input \data_out_R_reg[6]_0 ;
  input \data_out_R_reg[5]_0 ;
  input \data_out_R_reg[4]_0 ;
  input \data_out_R_reg[3]_0 ;
  input \data_out_R_reg[2]_0 ;
  input \data_out_R_reg[1]_0 ;
  input \data_out_R_reg[0]_0 ;
  input \data_out_I_reg[15]_0 ;
  input \data_out_I_reg[14]_0 ;
  input \data_out_I_reg[13]_0 ;
  input \data_out_I_reg[12]_0 ;
  input \data_out_I_reg[11]_0 ;
  input \data_out_I_reg[10]_0 ;
  input \data_out_I_reg[9]_0 ;
  input \data_out_I_reg[8]_0 ;
  input \data_out_I_reg[7]_0 ;
  input \data_out_I_reg[6]_0 ;
  input \data_out_I_reg[5]_0 ;
  input \data_out_I_reg[4]_0 ;
  input \data_out_I_reg[3]_0 ;
  input \data_out_I_reg[2]_0 ;
  input \data_out_I_reg[1]_0 ;
  input \data_out_I_reg[0]_0 ;

  wire [2:0]Q;
  wire \data_out_I_reg[0]_0 ;
  wire \data_out_I_reg[10]_0 ;
  wire \data_out_I_reg[11]_0 ;
  wire \data_out_I_reg[12]_0 ;
  wire \data_out_I_reg[13]_0 ;
  wire \data_out_I_reg[14]_0 ;
  wire \data_out_I_reg[15]_0 ;
  wire \data_out_I_reg[1]_0 ;
  wire \data_out_I_reg[2]_0 ;
  wire \data_out_I_reg[3]_0 ;
  wire \data_out_I_reg[4]_0 ;
  wire \data_out_I_reg[5]_0 ;
  wire \data_out_I_reg[6]_0 ;
  wire \data_out_I_reg[7]_0 ;
  wire \data_out_I_reg[8]_0 ;
  wire \data_out_I_reg[9]_0 ;
  wire \data_out_R_reg[0]_0 ;
  wire \data_out_R_reg[10]_0 ;
  wire \data_out_R_reg[11]_0 ;
  wire \data_out_R_reg[12]_0 ;
  wire \data_out_R_reg[13]_0 ;
  wire \data_out_R_reg[14]_0 ;
  wire \data_out_R_reg[15]_0 ;
  wire \data_out_R_reg[1]_0 ;
  wire \data_out_R_reg[2]_0 ;
  wire \data_out_R_reg[3]_0 ;
  wire \data_out_R_reg[4]_0 ;
  wire \data_out_R_reg[5]_0 ;
  wire \data_out_R_reg[6]_0 ;
  wire \data_out_R_reg[7]_0 ;
  wire \data_out_R_reg[8]_0 ;
  wire \data_out_R_reg[9]_0 ;
  wire dma_tlast_reg_0;
  wire dma_tvalid_reg_0;
  wire fft_ready;
  wire fft_start;
  wire [31:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire outIdx1;
  wire \outIdx[0]_i_1_n_0 ;
  wire \outIdx[1]_i_1_n_0 ;
  wire \outIdx[2]_i_1_n_0 ;
  wire \outIdx_reg[0]_0 ;
  wire \outIdx_reg[1]_0 ;
  wire previous_start;
  wire s00_axis_aclk;
  wire started;
  wire started_reg_0;
  wire started_reg_1;
  wire started_reg_n_0;

  LUT6 #(
    .INIT(64'h0FFF0FFF70000FFF)) 
    \data_out_I[15]_i_3 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(started_reg_n_0),
        .I3(m00_axis_tready),
        .I4(Q[0]),
        .I5(outIdx1),
        .O(\outIdx_reg[1]_0 ));
  FDRE \data_out_I_reg[0] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\data_out_I_reg[0]_0 ),
        .Q(m00_axis_tdata[16]),
        .R(1'b0));
  FDRE \data_out_I_reg[10] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\data_out_I_reg[10]_0 ),
        .Q(m00_axis_tdata[26]),
        .R(1'b0));
  FDRE \data_out_I_reg[11] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\data_out_I_reg[11]_0 ),
        .Q(m00_axis_tdata[27]),
        .R(1'b0));
  FDRE \data_out_I_reg[12] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\data_out_I_reg[12]_0 ),
        .Q(m00_axis_tdata[28]),
        .R(1'b0));
  FDRE \data_out_I_reg[13] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\data_out_I_reg[13]_0 ),
        .Q(m00_axis_tdata[29]),
        .R(1'b0));
  FDRE \data_out_I_reg[14] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\data_out_I_reg[14]_0 ),
        .Q(m00_axis_tdata[30]),
        .R(1'b0));
  FDRE \data_out_I_reg[15] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\data_out_I_reg[15]_0 ),
        .Q(m00_axis_tdata[31]),
        .R(1'b0));
  FDRE \data_out_I_reg[1] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\data_out_I_reg[1]_0 ),
        .Q(m00_axis_tdata[17]),
        .R(1'b0));
  FDRE \data_out_I_reg[2] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\data_out_I_reg[2]_0 ),
        .Q(m00_axis_tdata[18]),
        .R(1'b0));
  FDRE \data_out_I_reg[3] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\data_out_I_reg[3]_0 ),
        .Q(m00_axis_tdata[19]),
        .R(1'b0));
  FDRE \data_out_I_reg[4] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\data_out_I_reg[4]_0 ),
        .Q(m00_axis_tdata[20]),
        .R(1'b0));
  FDRE \data_out_I_reg[5] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\data_out_I_reg[5]_0 ),
        .Q(m00_axis_tdata[21]),
        .R(1'b0));
  FDRE \data_out_I_reg[6] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\data_out_I_reg[6]_0 ),
        .Q(m00_axis_tdata[22]),
        .R(1'b0));
  FDRE \data_out_I_reg[7] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\data_out_I_reg[7]_0 ),
        .Q(m00_axis_tdata[23]),
        .R(1'b0));
  FDRE \data_out_I_reg[8] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\data_out_I_reg[8]_0 ),
        .Q(m00_axis_tdata[24]),
        .R(1'b0));
  FDRE \data_out_I_reg[9] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\data_out_I_reg[9]_0 ),
        .Q(m00_axis_tdata[25]),
        .R(1'b0));
  FDRE \data_out_R_reg[0] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\data_out_R_reg[0]_0 ),
        .Q(m00_axis_tdata[0]),
        .R(1'b0));
  FDRE \data_out_R_reg[10] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\data_out_R_reg[10]_0 ),
        .Q(m00_axis_tdata[10]),
        .R(1'b0));
  FDRE \data_out_R_reg[11] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\data_out_R_reg[11]_0 ),
        .Q(m00_axis_tdata[11]),
        .R(1'b0));
  FDRE \data_out_R_reg[12] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\data_out_R_reg[12]_0 ),
        .Q(m00_axis_tdata[12]),
        .R(1'b0));
  FDRE \data_out_R_reg[13] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\data_out_R_reg[13]_0 ),
        .Q(m00_axis_tdata[13]),
        .R(1'b0));
  FDRE \data_out_R_reg[14] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\data_out_R_reg[14]_0 ),
        .Q(m00_axis_tdata[14]),
        .R(1'b0));
  FDRE \data_out_R_reg[15] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\data_out_R_reg[15]_0 ),
        .Q(m00_axis_tdata[15]),
        .R(1'b0));
  FDRE \data_out_R_reg[1] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\data_out_R_reg[1]_0 ),
        .Q(m00_axis_tdata[1]),
        .R(1'b0));
  FDRE \data_out_R_reg[2] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\data_out_R_reg[2]_0 ),
        .Q(m00_axis_tdata[2]),
        .R(1'b0));
  FDRE \data_out_R_reg[3] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\data_out_R_reg[3]_0 ),
        .Q(m00_axis_tdata[3]),
        .R(1'b0));
  FDRE \data_out_R_reg[4] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\data_out_R_reg[4]_0 ),
        .Q(m00_axis_tdata[4]),
        .R(1'b0));
  FDRE \data_out_R_reg[5] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\data_out_R_reg[5]_0 ),
        .Q(m00_axis_tdata[5]),
        .R(1'b0));
  FDRE \data_out_R_reg[6] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\data_out_R_reg[6]_0 ),
        .Q(m00_axis_tdata[6]),
        .R(1'b0));
  FDRE \data_out_R_reg[7] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\data_out_R_reg[7]_0 ),
        .Q(m00_axis_tdata[7]),
        .R(1'b0));
  FDRE \data_out_R_reg[8] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\data_out_R_reg[8]_0 ),
        .Q(m00_axis_tdata[8]),
        .R(1'b0));
  FDRE \data_out_R_reg[9] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\data_out_R_reg[9]_0 ),
        .Q(m00_axis_tdata[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h7)) 
    dma_tlast_i_2
       (.I0(started_reg_n_0),
        .I1(m00_axis_tready),
        .O(started_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    dma_tlast_reg
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(dma_tlast_reg_0),
        .Q(m00_axis_tlast),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    dma_tvalid_reg
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(dma_tvalid_reg_0),
        .Q(m00_axis_tvalid),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \outIdx[0]_i_1 
       (.I0(\outIdx_reg[1]_0 ),
        .O(\outIdx[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outIdx[1]_i_1 
       (.I0(\outIdx_reg[0]_0 ),
        .O(\outIdx[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF2000FFFF5FFF)) 
    \outIdx[1]_i_2 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(started_reg_n_0),
        .I3(m00_axis_tready),
        .I4(outIdx1),
        .I5(Q[1]),
        .O(\outIdx_reg[0]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outIdx[2]_i_1 
       (.I0(started_reg_0),
        .O(\outIdx[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F7F0FFF0FFF0FF)) 
    \outIdx[2]_i_2 
       (.I0(started_reg_n_0),
        .I1(m00_axis_tready),
        .I2(outIdx1),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(started_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \outIdx_reg[0] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\outIdx[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outIdx_reg[1] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\outIdx[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outIdx_reg[2] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\outIdx[2]_i_1_n_0 ),
        .Q(Q[2]),
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
        .CE(outIdx1),
        .D(1'b0),
        .Q(fft_ready),
        .S(started));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    started_i_1
       (.I0(outIdx1),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(m00_axis_tready),
        .I5(started_reg_n_0),
        .O(started));
  FDRE #(
    .INIT(1'b0)) 
    started_reg
       (.C(s00_axis_aclk),
        .CE(outIdx1),
        .D(1'b1),
        .Q(started_reg_n_0),
        .R(started));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fft
   (s00_axis_tready,
    m00_axis_tdata,
    m00_axis_tvalid,
    m00_axis_tlast,
    s00_axis_aclk,
    s00_axis_tdata,
    s00_axis_tvalid,
    m00_axis_tready);
  output s00_axis_tready;
  output [31:0]m00_axis_tdata;
  output m00_axis_tvalid;
  output m00_axis_tlast;
  input s00_axis_aclk;
  input [31:0]s00_axis_tdata;
  input s00_axis_tvalid;
  input m00_axis_tready;

  wire data_in_n_0;
  wire data_in_n_1;
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
  wire data_in_n_2;
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
  wire data_in_n_4;
  wire data_in_n_5;
  wire data_in_n_6;
  wire data_in_n_7;
  wire data_in_n_8;
  wire data_in_n_9;
  wire data_out_n_10;
  wire data_out_n_11;
  wire data_out_n_5;
  wire data_out_n_6;
  wire data_out_n_7;
  wire data_out_n_8;
  wire data_out_n_9;
  wire dma_tlast_i_1_n_0;
  wire dma_tvalid_i_1_n_0;
  wire fft_ready;
  wire fft_start;
  wire [31:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire outIdx1;
  wire previous_start;
  wire s00_axis_aclk;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tready;
  wire s00_axis_tvalid;
  wire started;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clocking_in data_in
       (.\data_out_I_reg[0]_0 (data_out_n_10),
        .\data_out_I_reg[0]_1 (data_out_n_9),
        .\data_out_I_reg[0]_2 (data_out_n_5),
        .\data_out_I_reg[16]_0 (data_in_n_0),
        .\data_out_I_reg[17]_0 (data_in_n_1),
        .\data_out_I_reg[18]_0 (data_in_n_2),
        .\data_out_I_reg[19]_0 (data_in_n_3),
        .\data_out_I_reg[20]_0 (data_in_n_4),
        .\data_out_I_reg[21]_0 (data_in_n_5),
        .\data_out_I_reg[22]_0 (data_in_n_6),
        .\data_out_I_reg[23]_0 (data_in_n_7),
        .\data_out_I_reg[24]_0 (data_in_n_8),
        .\data_out_I_reg[25]_0 (data_in_n_9),
        .\data_out_I_reg[26]_0 (data_in_n_10),
        .\data_out_I_reg[27]_0 (data_in_n_11),
        .\data_out_I_reg[28]_0 (data_in_n_12),
        .\data_out_I_reg[29]_0 (data_in_n_13),
        .\data_out_I_reg[30]_0 (data_in_n_14),
        .\data_out_I_reg[31]_0 (data_in_n_15),
        .\data_out_R_reg[16]_0 (data_in_n_16),
        .\data_out_R_reg[17]_0 (data_in_n_17),
        .\data_out_R_reg[18]_0 (data_in_n_18),
        .\data_out_R_reg[19]_0 (data_in_n_19),
        .\data_out_R_reg[20]_0 (data_in_n_20),
        .\data_out_R_reg[21]_0 (data_in_n_21),
        .\data_out_R_reg[22]_0 (data_in_n_22),
        .\data_out_R_reg[23]_0 (data_in_n_23),
        .\data_out_R_reg[24]_0 (data_in_n_24),
        .\data_out_R_reg[25]_0 (data_in_n_25),
        .\data_out_R_reg[26]_0 (data_in_n_26),
        .\data_out_R_reg[27]_0 (data_in_n_27),
        .\data_out_R_reg[28]_0 (data_in_n_28),
        .\data_out_R_reg[29]_0 (data_in_n_29),
        .\data_out_R_reg[30]_0 (data_in_n_30),
        .\data_out_R_reg[31]_0 (data_in_n_31),
        .fft_ready(fft_ready),
        .fft_start(fft_start),
        .outIdx1(outIdx1),
        .previous_start(previous_start),
        .s00_axis_aclk(s00_axis_aclk),
        .s00_axis_tdata(s00_axis_tdata),
        .s00_axis_tready(s00_axis_tready),
        .s00_axis_tvalid(s00_axis_tvalid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clocking_out data_out
       (.Q({data_out_n_6,data_out_n_7,data_out_n_8}),
        .\data_out_I_reg[0]_0 (data_in_n_0),
        .\data_out_I_reg[10]_0 (data_in_n_10),
        .\data_out_I_reg[11]_0 (data_in_n_11),
        .\data_out_I_reg[12]_0 (data_in_n_12),
        .\data_out_I_reg[13]_0 (data_in_n_13),
        .\data_out_I_reg[14]_0 (data_in_n_14),
        .\data_out_I_reg[15]_0 (data_in_n_15),
        .\data_out_I_reg[1]_0 (data_in_n_1),
        .\data_out_I_reg[2]_0 (data_in_n_2),
        .\data_out_I_reg[3]_0 (data_in_n_3),
        .\data_out_I_reg[4]_0 (data_in_n_4),
        .\data_out_I_reg[5]_0 (data_in_n_5),
        .\data_out_I_reg[6]_0 (data_in_n_6),
        .\data_out_I_reg[7]_0 (data_in_n_7),
        .\data_out_I_reg[8]_0 (data_in_n_8),
        .\data_out_I_reg[9]_0 (data_in_n_9),
        .\data_out_R_reg[0]_0 (data_in_n_16),
        .\data_out_R_reg[10]_0 (data_in_n_26),
        .\data_out_R_reg[11]_0 (data_in_n_27),
        .\data_out_R_reg[12]_0 (data_in_n_28),
        .\data_out_R_reg[13]_0 (data_in_n_29),
        .\data_out_R_reg[14]_0 (data_in_n_30),
        .\data_out_R_reg[15]_0 (data_in_n_31),
        .\data_out_R_reg[1]_0 (data_in_n_17),
        .\data_out_R_reg[2]_0 (data_in_n_18),
        .\data_out_R_reg[3]_0 (data_in_n_19),
        .\data_out_R_reg[4]_0 (data_in_n_20),
        .\data_out_R_reg[5]_0 (data_in_n_21),
        .\data_out_R_reg[6]_0 (data_in_n_22),
        .\data_out_R_reg[7]_0 (data_in_n_23),
        .\data_out_R_reg[8]_0 (data_in_n_24),
        .\data_out_R_reg[9]_0 (data_in_n_25),
        .dma_tlast_reg_0(dma_tlast_i_1_n_0),
        .dma_tvalid_reg_0(dma_tvalid_i_1_n_0),
        .fft_ready(fft_ready),
        .fft_start(fft_start),
        .m00_axis_tdata(m00_axis_tdata),
        .m00_axis_tlast(m00_axis_tlast),
        .m00_axis_tready(m00_axis_tready),
        .m00_axis_tvalid(m00_axis_tvalid),
        .outIdx1(outIdx1),
        .\outIdx_reg[0]_0 (data_out_n_9),
        .\outIdx_reg[1]_0 (data_out_n_10),
        .previous_start(previous_start),
        .s00_axis_aclk(s00_axis_aclk),
        .started(started),
        .started_reg_0(data_out_n_5),
        .started_reg_1(data_out_n_11));
  LUT6 #(
    .INIT(64'hAAAAAAAA8ABAAAAA)) 
    dma_tlast_i_1
       (.I0(m00_axis_tlast),
        .I1(data_out_n_11),
        .I2(data_out_n_7),
        .I3(data_out_n_8),
        .I4(data_out_n_6),
        .I5(outIdx1),
        .O(dma_tlast_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F22)) 
    dma_tvalid_i_1
       (.I0(m00_axis_tvalid),
        .I1(started),
        .I2(previous_start),
        .I3(fft_start),
        .O(dma_tvalid_i_1_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fft_dma_v1_0
   (s00_axis_tready,
    m00_axis_tdata,
    m00_axis_tvalid,
    m00_axis_tlast,
    s00_axis_aclk,
    s00_axis_tdata,
    s00_axis_tvalid,
    m00_axis_tready);
  output s00_axis_tready;
  output [31:0]m00_axis_tdata;
  output m00_axis_tvalid;
  output m00_axis_tlast;
  input s00_axis_aclk;
  input [31:0]s00_axis_tdata;
  input s00_axis_tvalid;
  input m00_axis_tready;

  wire [31:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire s00_axis_aclk;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tready;
  wire s00_axis_tvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fft fft_inst
       (.m00_axis_tdata(m00_axis_tdata),
        .m00_axis_tlast(m00_axis_tlast),
        .m00_axis_tready(m00_axis_tready),
        .m00_axis_tvalid(m00_axis_tvalid),
        .s00_axis_aclk(s00_axis_aclk),
        .s00_axis_tdata(s00_axis_tdata),
        .s00_axis_tready(s00_axis_tready),
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
  wire s00_axis_tready;
  wire s00_axis_tvalid;

  assign m00_axis_tstrb[3] = \<const1> ;
  assign m00_axis_tstrb[2] = \<const1> ;
  assign m00_axis_tstrb[1] = \<const1> ;
  assign m00_axis_tstrb[0] = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fft_dma_v1_0 inst
       (.m00_axis_tdata(m00_axis_tdata),
        .m00_axis_tlast(m00_axis_tlast),
        .m00_axis_tready(m00_axis_tready),
        .m00_axis_tvalid(m00_axis_tvalid),
        .s00_axis_aclk(s00_axis_aclk),
        .s00_axis_tdata(s00_axis_tdata),
        .s00_axis_tready(s00_axis_tready),
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
