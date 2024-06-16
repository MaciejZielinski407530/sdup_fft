// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Thu Jun  6 19:33:52 2024
// Host        : Maciek running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fft_seq_fft_seq_ip_0_0_sim_netlist.v
// Design      : fft_seq_fft_seq_ip_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_butterfly
   (\state_reg[1] ,
    \state_reg[1]_0 ,
    \bottomIdx_reg[4] ,
    CEA1,
    ready_reg_0,
    ready_reg_1,
    D,
    \dataQ_reg[6][23] ,
    \dataI_reg[3][23] ,
    \dataI_reg[2][23] ,
    \dataI_reg[0][23] ,
    \dataI_reg[1][23] ,
    \dataI_reg[4][23] ,
    \dataI_reg[5][23] ,
    \dataI_reg[6][23] ,
    \dataI_reg[7][23] ,
    \dataQ_reg[0][23] ,
    \dataQ_reg[1][23] ,
    \dataQ_reg[2][23] ,
    \dataQ_reg[3][23] ,
    \dataQ_reg[4][23] ,
    \dataQ_reg[5][23] ,
    \state_reg[1]_1 ,
    \shift_reg[1] ,
    \shift_reg[1]_0 ,
    \shift_reg[1]_1 ,
    \bottomIdx_reg[1] ,
    \topIdx_reg[0] ,
    \topIdx_reg[3] ,
    \topIdx_reg[3]_0 ,
    Q,
    lastStartState_reg_0,
    butterflyPreviousReady,
    \dataQ_reg[7][7] ,
    \dataQ_reg[7][7]_0 ,
    dataQ,
    \dataQ_reg[6][7] ,
    \dataI_reg[3][21] ,
    \dataI_reg[3][21]_0 ,
    dataI,
    \dataI_reg[2][21] ,
    \dataI_reg[0][23]_0 ,
    \dataI_reg[0][22] ,
    \dataI_reg[0][22]_0 ,
    \dataI_reg[0][22]_1 ,
    \dataI_reg[0][20] ,
    \dataI_reg[0][19] ,
    \dataI_reg[0][18] ,
    \dataI_reg[0][17] ,
    \dataI_reg[0][16] ,
    \dataI_reg[0][15] ,
    \dataI_reg[0][14] ,
    \dataI_reg[0][13] ,
    \dataI_reg[0][12] ,
    \dataI_reg[0][11] ,
    \dataI_reg[0][10] ,
    \dataI_reg[0][9] ,
    \dataI_reg[0][8] ,
    \dataI_reg[0][7] ,
    \dataI_reg[0][6] ,
    \dataI_reg[0][5] ,
    \dataI_reg[0][4] ,
    \dataI_reg[0][3] ,
    \dataI_reg[0][2] ,
    \dataI_reg[0][1] ,
    \dataI_reg[0][0] ,
    \dataI_reg[1][23]_0 ,
    \dataI_reg[1][23]_1 ,
    \dataI_reg[1][23]_2 ,
    \dataI_reg[2][23]_0 ,
    \dataI_reg[2][23]_1 ,
    \dataI_reg[2][23]_2 ,
    \dataI_reg[2][22] ,
    \dataI_reg[2][21]_0 ,
    \dataI_reg[2][20] ,
    \dataI_reg[2][19] ,
    \dataI_reg[2][18] ,
    \dataI_reg[2][17] ,
    \dataI_reg[2][16] ,
    \dataI_reg[2][15] ,
    \dataI_reg[2][14] ,
    \dataI_reg[2][13] ,
    \dataI_reg[2][12] ,
    \dataI_reg[2][11] ,
    \dataI_reg[2][10] ,
    \dataI_reg[2][9] ,
    \dataI_reg[2][8] ,
    \dataI_reg[2][7] ,
    \dataI_reg[2][6] ,
    \dataI_reg[2][5] ,
    \dataI_reg[2][4] ,
    \dataI_reg[2][3] ,
    \dataI_reg[2][2] ,
    \dataI_reg[2][1] ,
    \dataI_reg[2][0] ,
    \dataI_reg[3][23]_0 ,
    \dataI_reg[3][23]_1 ,
    \dataI_reg[3][23]_2 ,
    \dataI_reg[3][22] ,
    \dataI_reg[3][21]_1 ,
    \dataI_reg[3][20] ,
    \dataI_reg[3][19] ,
    \dataI_reg[3][18] ,
    \dataI_reg[3][16] ,
    \dataI_reg[3][15] ,
    \dataI_reg[3][14] ,
    \dataI_reg[3][12] ,
    \dataI_reg[3][11] ,
    \dataI_reg[3][6] ,
    \dataI_reg[3][5] ,
    \dataI_reg[3][4] ,
    \dataI_reg[3][3] ,
    \dataI_reg[3][2] ,
    \dataI_reg[3][1] ,
    \dataI_reg[3][0] ,
    \dataI_reg[4][23]_0 ,
    \dataI_reg[4][23]_1 ,
    \dataI_reg[5][23]_0 ,
    \dataI_reg[5][23]_1 ,
    \dataI_reg[6][23]_0 ,
    \dataI_reg[7][23]_0 ,
    \dataI_reg[7][23]_1 ,
    \dataI_reg[7][23]_2 ,
    \dataI_reg[7][22] ,
    \dataI_reg[7][21] ,
    \dataI_reg[7][20] ,
    \dataI_reg[7][19] ,
    \dataI_reg[7][18] ,
    \dataI_reg[7][17] ,
    \dataI_reg[7][16] ,
    \dataI_reg[7][15] ,
    \dataI_reg[7][14] ,
    \dataI_reg[7][13] ,
    \dataI_reg[7][12] ,
    \dataI_reg[7][11] ,
    \dataI_reg[7][10] ,
    \dataI_reg[7][9] ,
    \dataI_reg[7][8] ,
    \dataI_reg[7][7] ,
    \dataI_reg[7][6] ,
    \dataI_reg[7][5] ,
    \dataI_reg[7][4] ,
    \dataI_reg[7][3] ,
    \dataI_reg[7][2] ,
    \dataI_reg[7][1] ,
    \dataI_reg[7][0] ,
    \dataQ_reg[0][23]_0 ,
    \dataQ_reg[0][22] ,
    \dataQ_reg[0][21] ,
    \dataQ_reg[0][20] ,
    \dataQ_reg[0][19] ,
    \dataQ_reg[0][18] ,
    \dataQ_reg[0][17] ,
    \dataQ_reg[0][16] ,
    \dataQ_reg[0][15] ,
    \dataQ_reg[0][14] ,
    \dataQ_reg[0][13] ,
    \dataQ_reg[0][12] ,
    \dataQ_reg[0][11] ,
    \dataQ_reg[0][10] ,
    \dataQ_reg[0][9] ,
    \dataQ_reg[0][8] ,
    \dataQ_reg[0][6] ,
    \dataQ_reg[0][5] ,
    \dataQ_reg[0][4] ,
    \dataQ_reg[0][3] ,
    \dataQ_reg[0][2] ,
    \dataQ_reg[0][1] ,
    \dataQ_reg[0][0] ,
    \dataQ_reg[2][23]_0 ,
    \dataQ_reg[2][22] ,
    \dataQ_reg[2][21] ,
    \dataQ_reg[2][20] ,
    \dataQ_reg[2][18] ,
    \dataQ_reg[2][17] ,
    \dataQ_reg[2][16] ,
    \dataQ_reg[2][15] ,
    \dataQ_reg[2][14] ,
    \dataQ_reg[2][13] ,
    \dataQ_reg[2][11] ,
    \dataQ_reg[2][10] ,
    \dataQ_reg[2][8] ,
    \dataQ_reg[2][7] ,
    \dataQ_reg[2][6] ,
    \dataQ_reg[2][5] ,
    \dataQ_reg[2][4] ,
    \dataQ_reg[2][3] ,
    \dataQ_reg[2][2] ,
    \dataQ_reg[2][1] ,
    \dataQ_reg[2][0] ,
    \dataQ_reg[3][23]_0 ,
    \dataQ_reg[3][22] ,
    \dataQ_reg[3][21] ,
    \dataQ_reg[3][20] ,
    \dataQ_reg[3][19] ,
    \dataQ_reg[3][18] ,
    \dataQ_reg[3][17] ,
    \dataQ_reg[3][16] ,
    \dataQ_reg[3][15] ,
    \dataQ_reg[3][14] ,
    \dataQ_reg[3][13] ,
    \dataQ_reg[3][12] ,
    \dataQ_reg[3][10] ,
    \dataQ_reg[3][9] ,
    \dataQ_reg[3][8] ,
    \dataQ_reg[3][7] ,
    \dataQ_reg[3][6] ,
    \dataQ_reg[3][5] ,
    \dataQ_reg[3][3] ,
    \dataQ_reg[6][22] ,
    \dataQ_reg[6][22]_0 ,
    \dataQ_reg[6][21] ,
    \dataQ_reg[6][20] ,
    \dataQ_reg[6][19] ,
    \dataQ_reg[6][16] ,
    \dataQ_reg[6][15] ,
    \dataQ_reg[6][14] ,
    \dataQ_reg[6][13] ,
    \dataQ_reg[6][12] ,
    \dataQ_reg[6][10] ,
    \dataQ_reg[6][9] ,
    \dataQ_reg[6][8] ,
    \dataQ_reg[6][7]_0 ,
    \dataQ_reg[6][4] ,
    \dataQ_reg[6][3] ,
    \dataQ_reg[6][2] ,
    \dataQ_reg[6][1] ,
    \dataQ_reg[6][0] ,
    \dataQ_reg[7][23] ,
    \dataQ_reg[7][21] ,
    \dataQ_reg[7][19] ,
    \dataQ_reg[7][17] ,
    \dataQ_reg[7][15] ,
    \dataQ_reg[7][14] ,
    \dataQ_reg[7][13] ,
    \dataQ_reg[7][11] ,
    \dataQ_reg[7][9] ,
    \dataQ_reg[7][7]_1 ,
    \dataQ_reg[7][6] ,
    \dataQ_reg[7][5] ,
    \dataQ_reg[7][3] ,
    \dataQ_reg[7][1] ,
    \dataQ_reg[7][0] ,
    \topIdx_reg[0]_0 ,
    topIdx,
    \mul2Q_reg[0] ,
    \dataI_reg[0][23]_1 ,
    \dataI[5][23]_i_4 ,
    \dataI[5][23]_i_2_0 ,
    \dataI[1][23]_i_2_0 ,
    \dataI[4][23]_i_2_0 ,
    \mul2R_reg[22]_0 ,
    s00_axi_aclk,
    \mul1I_reg[23]_0 ,
    \mul1R_reg[23]_0 ,
    A,
    \tempR_reg[23]_0 ,
    \tempI_reg[23]_0 );
  output \state_reg[1] ;
  output \state_reg[1]_0 ;
  output \bottomIdx_reg[4] ;
  output CEA1;
  output ready_reg_0;
  output ready_reg_1;
  output [23:0]D;
  output [23:0]\dataQ_reg[6][23] ;
  output [23:0]\dataI_reg[3][23] ;
  output [23:0]\dataI_reg[2][23] ;
  output [23:0]\dataI_reg[0][23] ;
  output [23:0]\dataI_reg[1][23] ;
  output [23:0]\dataI_reg[4][23] ;
  output [23:0]\dataI_reg[5][23] ;
  output [23:0]\dataI_reg[6][23] ;
  output [23:0]\dataI_reg[7][23] ;
  output [23:0]\dataQ_reg[0][23] ;
  output [23:0]\dataQ_reg[1][23] ;
  output [23:0]\dataQ_reg[2][23] ;
  output [23:0]\dataQ_reg[3][23] ;
  output [23:0]\dataQ_reg[4][23] ;
  output [23:0]\dataQ_reg[5][23] ;
  output \state_reg[1]_1 ;
  output [23:0]\shift_reg[1] ;
  output [23:0]\shift_reg[1]_0 ;
  output \shift_reg[1]_1 ;
  output \bottomIdx_reg[1] ;
  output \topIdx_reg[0] ;
  input \topIdx_reg[3] ;
  input \topIdx_reg[3]_0 ;
  input [1:0]Q;
  input lastStartState_reg_0;
  input butterflyPreviousReady;
  input \dataQ_reg[7][7] ;
  input \dataQ_reg[7][7]_0 ;
  input [191:0]dataQ;
  input \dataQ_reg[6][7] ;
  input \dataI_reg[3][21] ;
  input \dataI_reg[3][21]_0 ;
  input [191:0]dataI;
  input \dataI_reg[2][21] ;
  input \dataI_reg[0][23]_0 ;
  input \dataI_reg[0][22] ;
  input \dataI_reg[0][22]_0 ;
  input \dataI_reg[0][22]_1 ;
  input \dataI_reg[0][20] ;
  input \dataI_reg[0][19] ;
  input \dataI_reg[0][18] ;
  input \dataI_reg[0][17] ;
  input \dataI_reg[0][16] ;
  input \dataI_reg[0][15] ;
  input \dataI_reg[0][14] ;
  input \dataI_reg[0][13] ;
  input \dataI_reg[0][12] ;
  input \dataI_reg[0][11] ;
  input \dataI_reg[0][10] ;
  input \dataI_reg[0][9] ;
  input \dataI_reg[0][8] ;
  input \dataI_reg[0][7] ;
  input \dataI_reg[0][6] ;
  input \dataI_reg[0][5] ;
  input \dataI_reg[0][4] ;
  input \dataI_reg[0][3] ;
  input \dataI_reg[0][2] ;
  input \dataI_reg[0][1] ;
  input \dataI_reg[0][0] ;
  input \dataI_reg[1][23]_0 ;
  input \dataI_reg[1][23]_1 ;
  input \dataI_reg[1][23]_2 ;
  input \dataI_reg[2][23]_0 ;
  input \dataI_reg[2][23]_1 ;
  input \dataI_reg[2][23]_2 ;
  input \dataI_reg[2][22] ;
  input \dataI_reg[2][21]_0 ;
  input \dataI_reg[2][20] ;
  input \dataI_reg[2][19] ;
  input \dataI_reg[2][18] ;
  input \dataI_reg[2][17] ;
  input \dataI_reg[2][16] ;
  input \dataI_reg[2][15] ;
  input \dataI_reg[2][14] ;
  input \dataI_reg[2][13] ;
  input \dataI_reg[2][12] ;
  input \dataI_reg[2][11] ;
  input \dataI_reg[2][10] ;
  input \dataI_reg[2][9] ;
  input \dataI_reg[2][8] ;
  input \dataI_reg[2][7] ;
  input \dataI_reg[2][6] ;
  input \dataI_reg[2][5] ;
  input \dataI_reg[2][4] ;
  input \dataI_reg[2][3] ;
  input \dataI_reg[2][2] ;
  input \dataI_reg[2][1] ;
  input \dataI_reg[2][0] ;
  input \dataI_reg[3][23]_0 ;
  input \dataI_reg[3][23]_1 ;
  input \dataI_reg[3][23]_2 ;
  input \dataI_reg[3][22] ;
  input \dataI_reg[3][21]_1 ;
  input \dataI_reg[3][20] ;
  input \dataI_reg[3][19] ;
  input \dataI_reg[3][18] ;
  input \dataI_reg[3][16] ;
  input \dataI_reg[3][15] ;
  input \dataI_reg[3][14] ;
  input \dataI_reg[3][12] ;
  input \dataI_reg[3][11] ;
  input \dataI_reg[3][6] ;
  input \dataI_reg[3][5] ;
  input \dataI_reg[3][4] ;
  input \dataI_reg[3][3] ;
  input \dataI_reg[3][2] ;
  input \dataI_reg[3][1] ;
  input \dataI_reg[3][0] ;
  input \dataI_reg[4][23]_0 ;
  input \dataI_reg[4][23]_1 ;
  input \dataI_reg[5][23]_0 ;
  input \dataI_reg[5][23]_1 ;
  input \dataI_reg[6][23]_0 ;
  input \dataI_reg[7][23]_0 ;
  input \dataI_reg[7][23]_1 ;
  input \dataI_reg[7][23]_2 ;
  input \dataI_reg[7][22] ;
  input \dataI_reg[7][21] ;
  input \dataI_reg[7][20] ;
  input \dataI_reg[7][19] ;
  input \dataI_reg[7][18] ;
  input \dataI_reg[7][17] ;
  input \dataI_reg[7][16] ;
  input \dataI_reg[7][15] ;
  input \dataI_reg[7][14] ;
  input \dataI_reg[7][13] ;
  input \dataI_reg[7][12] ;
  input \dataI_reg[7][11] ;
  input \dataI_reg[7][10] ;
  input \dataI_reg[7][9] ;
  input \dataI_reg[7][8] ;
  input \dataI_reg[7][7] ;
  input \dataI_reg[7][6] ;
  input \dataI_reg[7][5] ;
  input \dataI_reg[7][4] ;
  input \dataI_reg[7][3] ;
  input \dataI_reg[7][2] ;
  input \dataI_reg[7][1] ;
  input \dataI_reg[7][0] ;
  input \dataQ_reg[0][23]_0 ;
  input \dataQ_reg[0][22] ;
  input \dataQ_reg[0][21] ;
  input \dataQ_reg[0][20] ;
  input \dataQ_reg[0][19] ;
  input \dataQ_reg[0][18] ;
  input \dataQ_reg[0][17] ;
  input \dataQ_reg[0][16] ;
  input \dataQ_reg[0][15] ;
  input \dataQ_reg[0][14] ;
  input \dataQ_reg[0][13] ;
  input \dataQ_reg[0][12] ;
  input \dataQ_reg[0][11] ;
  input \dataQ_reg[0][10] ;
  input \dataQ_reg[0][9] ;
  input \dataQ_reg[0][8] ;
  input \dataQ_reg[0][6] ;
  input \dataQ_reg[0][5] ;
  input \dataQ_reg[0][4] ;
  input \dataQ_reg[0][3] ;
  input \dataQ_reg[0][2] ;
  input \dataQ_reg[0][1] ;
  input \dataQ_reg[0][0] ;
  input \dataQ_reg[2][23]_0 ;
  input \dataQ_reg[2][22] ;
  input \dataQ_reg[2][21] ;
  input \dataQ_reg[2][20] ;
  input \dataQ_reg[2][18] ;
  input \dataQ_reg[2][17] ;
  input \dataQ_reg[2][16] ;
  input \dataQ_reg[2][15] ;
  input \dataQ_reg[2][14] ;
  input \dataQ_reg[2][13] ;
  input \dataQ_reg[2][11] ;
  input \dataQ_reg[2][10] ;
  input \dataQ_reg[2][8] ;
  input \dataQ_reg[2][7] ;
  input \dataQ_reg[2][6] ;
  input \dataQ_reg[2][5] ;
  input \dataQ_reg[2][4] ;
  input \dataQ_reg[2][3] ;
  input \dataQ_reg[2][2] ;
  input \dataQ_reg[2][1] ;
  input \dataQ_reg[2][0] ;
  input \dataQ_reg[3][23]_0 ;
  input \dataQ_reg[3][22] ;
  input \dataQ_reg[3][21] ;
  input \dataQ_reg[3][20] ;
  input \dataQ_reg[3][19] ;
  input \dataQ_reg[3][18] ;
  input \dataQ_reg[3][17] ;
  input \dataQ_reg[3][16] ;
  input \dataQ_reg[3][15] ;
  input \dataQ_reg[3][14] ;
  input \dataQ_reg[3][13] ;
  input \dataQ_reg[3][12] ;
  input \dataQ_reg[3][10] ;
  input \dataQ_reg[3][9] ;
  input \dataQ_reg[3][8] ;
  input \dataQ_reg[3][7] ;
  input \dataQ_reg[3][6] ;
  input \dataQ_reg[3][5] ;
  input \dataQ_reg[3][3] ;
  input \dataQ_reg[6][22] ;
  input \dataQ_reg[6][22]_0 ;
  input \dataQ_reg[6][21] ;
  input \dataQ_reg[6][20] ;
  input \dataQ_reg[6][19] ;
  input \dataQ_reg[6][16] ;
  input \dataQ_reg[6][15] ;
  input \dataQ_reg[6][14] ;
  input \dataQ_reg[6][13] ;
  input \dataQ_reg[6][12] ;
  input \dataQ_reg[6][10] ;
  input \dataQ_reg[6][9] ;
  input \dataQ_reg[6][8] ;
  input \dataQ_reg[6][7]_0 ;
  input \dataQ_reg[6][4] ;
  input \dataQ_reg[6][3] ;
  input \dataQ_reg[6][2] ;
  input \dataQ_reg[6][1] ;
  input \dataQ_reg[6][0] ;
  input \dataQ_reg[7][23] ;
  input \dataQ_reg[7][21] ;
  input \dataQ_reg[7][19] ;
  input \dataQ_reg[7][17] ;
  input \dataQ_reg[7][15] ;
  input \dataQ_reg[7][14] ;
  input \dataQ_reg[7][13] ;
  input \dataQ_reg[7][11] ;
  input \dataQ_reg[7][9] ;
  input \dataQ_reg[7][7]_1 ;
  input \dataQ_reg[7][6] ;
  input \dataQ_reg[7][5] ;
  input \dataQ_reg[7][3] ;
  input \dataQ_reg[7][1] ;
  input \dataQ_reg[7][0] ;
  input \topIdx_reg[0]_0 ;
  input [3:0]topIdx;
  input [3:0]\mul2Q_reg[0] ;
  input \dataI_reg[0][23]_1 ;
  input [1:0]\dataI[5][23]_i_4 ;
  input \dataI[5][23]_i_2_0 ;
  input \dataI[1][23]_i_2_0 ;
  input \dataI[4][23]_i_2_0 ;
  input [2:0]\mul2R_reg[22]_0 ;
  input s00_axi_aclk;
  input [23:0]\mul1I_reg[23]_0 ;
  input [23:0]\mul1R_reg[23]_0 ;
  input [1:0]A;
  input [23:0]\tempR_reg[23]_0 ;
  input [23:0]\tempI_reg[23]_0 ;

  wire [1:0]A;
  wire CEA1;
  wire [23:0]D;
  wire [1:0]Q;
  wire \bottomIdx_reg[1] ;
  wire \bottomIdx_reg[4] ;
  wire butterflyPreviousReady;
  wire butterflyReady;
  wire [191:0]dataI;
  wire \dataI[0][0]_i_2_n_0 ;
  wire \dataI[0][0]_i_3_n_0 ;
  wire \dataI[0][10]_i_2_n_0 ;
  wire \dataI[0][10]_i_3_n_0 ;
  wire \dataI[0][11]_i_2_n_0 ;
  wire \dataI[0][11]_i_3_n_0 ;
  wire \dataI[0][12]_i_2_n_0 ;
  wire \dataI[0][12]_i_3_n_0 ;
  wire \dataI[0][13]_i_2_n_0 ;
  wire \dataI[0][13]_i_3_n_0 ;
  wire \dataI[0][14]_i_2_n_0 ;
  wire \dataI[0][14]_i_3_n_0 ;
  wire \dataI[0][15]_i_2_n_0 ;
  wire \dataI[0][15]_i_3_n_0 ;
  wire \dataI[0][16]_i_2_n_0 ;
  wire \dataI[0][16]_i_3_n_0 ;
  wire \dataI[0][17]_i_2_n_0 ;
  wire \dataI[0][17]_i_3_n_0 ;
  wire \dataI[0][18]_i_2_n_0 ;
  wire \dataI[0][18]_i_3_n_0 ;
  wire \dataI[0][19]_i_2_n_0 ;
  wire \dataI[0][19]_i_3_n_0 ;
  wire \dataI[0][1]_i_2_n_0 ;
  wire \dataI[0][1]_i_3_n_0 ;
  wire \dataI[0][20]_i_2_n_0 ;
  wire \dataI[0][20]_i_3_n_0 ;
  wire \dataI[0][21]_i_2_n_0 ;
  wire \dataI[0][21]_i_3_n_0 ;
  wire \dataI[0][22]_i_2_n_0 ;
  wire \dataI[0][22]_i_4_n_0 ;
  wire \dataI[0][23]_i_2_n_0 ;
  wire \dataI[0][2]_i_2_n_0 ;
  wire \dataI[0][2]_i_3_n_0 ;
  wire \dataI[0][3]_i_2_n_0 ;
  wire \dataI[0][3]_i_3_n_0 ;
  wire \dataI[0][4]_i_2_n_0 ;
  wire \dataI[0][4]_i_3_n_0 ;
  wire \dataI[0][5]_i_2_n_0 ;
  wire \dataI[0][5]_i_3_n_0 ;
  wire \dataI[0][6]_i_2_n_0 ;
  wire \dataI[0][6]_i_3_n_0 ;
  wire \dataI[0][7]_i_2_n_0 ;
  wire \dataI[0][7]_i_3_n_0 ;
  wire \dataI[0][8]_i_2_n_0 ;
  wire \dataI[0][8]_i_3_n_0 ;
  wire \dataI[0][9]_i_2_n_0 ;
  wire \dataI[0][9]_i_3_n_0 ;
  wire \dataI[1][0]_i_2_n_0 ;
  wire \dataI[1][0]_i_3_n_0 ;
  wire \dataI[1][10]_i_2_n_0 ;
  wire \dataI[1][10]_i_3_n_0 ;
  wire \dataI[1][11]_i_2_n_0 ;
  wire \dataI[1][11]_i_3_n_0 ;
  wire \dataI[1][12]_i_2_n_0 ;
  wire \dataI[1][12]_i_3_n_0 ;
  wire \dataI[1][13]_i_2_n_0 ;
  wire \dataI[1][13]_i_3_n_0 ;
  wire \dataI[1][14]_i_2_n_0 ;
  wire \dataI[1][14]_i_3_n_0 ;
  wire \dataI[1][15]_i_2_n_0 ;
  wire \dataI[1][15]_i_3_n_0 ;
  wire \dataI[1][16]_i_2_n_0 ;
  wire \dataI[1][16]_i_3_n_0 ;
  wire \dataI[1][17]_i_2_n_0 ;
  wire \dataI[1][17]_i_3_n_0 ;
  wire \dataI[1][18]_i_2_n_0 ;
  wire \dataI[1][18]_i_3_n_0 ;
  wire \dataI[1][19]_i_2_n_0 ;
  wire \dataI[1][19]_i_3_n_0 ;
  wire \dataI[1][1]_i_2_n_0 ;
  wire \dataI[1][1]_i_3_n_0 ;
  wire \dataI[1][20]_i_2_n_0 ;
  wire \dataI[1][20]_i_3_n_0 ;
  wire \dataI[1][21]_i_2_n_0 ;
  wire \dataI[1][21]_i_3_n_0 ;
  wire \dataI[1][22]_i_2_n_0 ;
  wire \dataI[1][22]_i_3_n_0 ;
  wire \dataI[1][23]_i_2_0 ;
  wire \dataI[1][23]_i_2_n_0 ;
  wire \dataI[1][23]_i_5_n_0 ;
  wire \dataI[1][2]_i_2_n_0 ;
  wire \dataI[1][2]_i_3_n_0 ;
  wire \dataI[1][3]_i_2_n_0 ;
  wire \dataI[1][3]_i_3_n_0 ;
  wire \dataI[1][4]_i_2_n_0 ;
  wire \dataI[1][4]_i_3_n_0 ;
  wire \dataI[1][5]_i_2_n_0 ;
  wire \dataI[1][5]_i_3_n_0 ;
  wire \dataI[1][6]_i_2_n_0 ;
  wire \dataI[1][6]_i_3_n_0 ;
  wire \dataI[1][7]_i_2_n_0 ;
  wire \dataI[1][7]_i_3_n_0 ;
  wire \dataI[1][8]_i_2_n_0 ;
  wire \dataI[1][8]_i_3_n_0 ;
  wire \dataI[1][9]_i_2_n_0 ;
  wire \dataI[1][9]_i_3_n_0 ;
  wire \dataI[2][0]_i_2_n_0 ;
  wire \dataI[2][10]_i_2_n_0 ;
  wire \dataI[2][11]_i_2_n_0 ;
  wire \dataI[2][12]_i_2_n_0 ;
  wire \dataI[2][13]_i_2_n_0 ;
  wire \dataI[2][14]_i_2_n_0 ;
  wire \dataI[2][15]_i_2_n_0 ;
  wire \dataI[2][16]_i_2_n_0 ;
  wire \dataI[2][17]_i_2_n_0 ;
  wire \dataI[2][18]_i_2_n_0 ;
  wire \dataI[2][19]_i_2_n_0 ;
  wire \dataI[2][1]_i_2_n_0 ;
  wire \dataI[2][20]_i_2_n_0 ;
  wire \dataI[2][21]_i_2_n_0 ;
  wire \dataI[2][22]_i_2_n_0 ;
  wire \dataI[2][23]_i_2_n_0 ;
  wire \dataI[2][2]_i_2_n_0 ;
  wire \dataI[2][3]_i_2_n_0 ;
  wire \dataI[2][4]_i_2_n_0 ;
  wire \dataI[2][5]_i_2_n_0 ;
  wire \dataI[2][6]_i_2_n_0 ;
  wire \dataI[2][7]_i_2_n_0 ;
  wire \dataI[2][8]_i_2_n_0 ;
  wire \dataI[2][9]_i_2_n_0 ;
  wire \dataI[3][0]_i_2_n_0 ;
  wire \dataI[3][10]_i_2_n_0 ;
  wire \dataI[3][10]_i_3_n_0 ;
  wire \dataI[3][11]_i_2_n_0 ;
  wire \dataI[3][12]_i_2_n_0 ;
  wire \dataI[3][13]_i_2_n_0 ;
  wire \dataI[3][13]_i_3_n_0 ;
  wire \dataI[3][14]_i_2_n_0 ;
  wire \dataI[3][15]_i_2_n_0 ;
  wire \dataI[3][16]_i_2_n_0 ;
  wire \dataI[3][17]_i_2_n_0 ;
  wire \dataI[3][17]_i_3_n_0 ;
  wire \dataI[3][18]_i_2_n_0 ;
  wire \dataI[3][19]_i_2_n_0 ;
  wire \dataI[3][1]_i_2_n_0 ;
  wire \dataI[3][20]_i_2_n_0 ;
  wire \dataI[3][21]_i_2_n_0 ;
  wire \dataI[3][22]_i_2_n_0 ;
  wire \dataI[3][23]_i_2_n_0 ;
  wire \dataI[3][2]_i_2_n_0 ;
  wire \dataI[3][3]_i_2_n_0 ;
  wire \dataI[3][4]_i_2_n_0 ;
  wire \dataI[3][5]_i_2_n_0 ;
  wire \dataI[3][6]_i_2_n_0 ;
  wire \dataI[3][7]_i_2_n_0 ;
  wire \dataI[3][7]_i_3_n_0 ;
  wire \dataI[3][8]_i_2_n_0 ;
  wire \dataI[3][8]_i_3_n_0 ;
  wire \dataI[3][9]_i_2_n_0 ;
  wire \dataI[3][9]_i_3_n_0 ;
  wire \dataI[4][0]_i_2_n_0 ;
  wire \dataI[4][0]_i_3_n_0 ;
  wire \dataI[4][10]_i_2_n_0 ;
  wire \dataI[4][10]_i_3_n_0 ;
  wire \dataI[4][11]_i_2_n_0 ;
  wire \dataI[4][11]_i_3_n_0 ;
  wire \dataI[4][12]_i_2_n_0 ;
  wire \dataI[4][12]_i_3_n_0 ;
  wire \dataI[4][13]_i_2_n_0 ;
  wire \dataI[4][13]_i_3_n_0 ;
  wire \dataI[4][14]_i_2_n_0 ;
  wire \dataI[4][14]_i_3_n_0 ;
  wire \dataI[4][15]_i_2_n_0 ;
  wire \dataI[4][15]_i_3_n_0 ;
  wire \dataI[4][16]_i_2_n_0 ;
  wire \dataI[4][16]_i_3_n_0 ;
  wire \dataI[4][17]_i_2_n_0 ;
  wire \dataI[4][17]_i_3_n_0 ;
  wire \dataI[4][18]_i_2_n_0 ;
  wire \dataI[4][18]_i_3_n_0 ;
  wire \dataI[4][19]_i_2_n_0 ;
  wire \dataI[4][19]_i_3_n_0 ;
  wire \dataI[4][1]_i_2_n_0 ;
  wire \dataI[4][1]_i_3_n_0 ;
  wire \dataI[4][20]_i_2_n_0 ;
  wire \dataI[4][20]_i_3_n_0 ;
  wire \dataI[4][21]_i_2_n_0 ;
  wire \dataI[4][21]_i_3_n_0 ;
  wire \dataI[4][22]_i_2_n_0 ;
  wire \dataI[4][22]_i_3_n_0 ;
  wire \dataI[4][23]_i_2_0 ;
  wire \dataI[4][23]_i_2_n_0 ;
  wire \dataI[4][23]_i_5_n_0 ;
  wire \dataI[4][2]_i_2_n_0 ;
  wire \dataI[4][2]_i_3_n_0 ;
  wire \dataI[4][3]_i_2_n_0 ;
  wire \dataI[4][3]_i_3_n_0 ;
  wire \dataI[4][4]_i_2_n_0 ;
  wire \dataI[4][4]_i_3_n_0 ;
  wire \dataI[4][5]_i_2_n_0 ;
  wire \dataI[4][5]_i_3_n_0 ;
  wire \dataI[4][6]_i_2_n_0 ;
  wire \dataI[4][6]_i_3_n_0 ;
  wire \dataI[4][7]_i_2_n_0 ;
  wire \dataI[4][7]_i_3_n_0 ;
  wire \dataI[4][8]_i_2_n_0 ;
  wire \dataI[4][8]_i_3_n_0 ;
  wire \dataI[4][9]_i_2_n_0 ;
  wire \dataI[4][9]_i_3_n_0 ;
  wire \dataI[5][0]_i_2_n_0 ;
  wire \dataI[5][0]_i_3_n_0 ;
  wire \dataI[5][10]_i_2_n_0 ;
  wire \dataI[5][10]_i_3_n_0 ;
  wire \dataI[5][11]_i_2_n_0 ;
  wire \dataI[5][11]_i_3_n_0 ;
  wire \dataI[5][12]_i_2_n_0 ;
  wire \dataI[5][12]_i_3_n_0 ;
  wire \dataI[5][13]_i_2_n_0 ;
  wire \dataI[5][13]_i_3_n_0 ;
  wire \dataI[5][14]_i_2_n_0 ;
  wire \dataI[5][14]_i_3_n_0 ;
  wire \dataI[5][15]_i_2_n_0 ;
  wire \dataI[5][15]_i_3_n_0 ;
  wire \dataI[5][16]_i_2_n_0 ;
  wire \dataI[5][16]_i_3_n_0 ;
  wire \dataI[5][17]_i_2_n_0 ;
  wire \dataI[5][17]_i_3_n_0 ;
  wire \dataI[5][18]_i_2_n_0 ;
  wire \dataI[5][18]_i_3_n_0 ;
  wire \dataI[5][19]_i_2_n_0 ;
  wire \dataI[5][19]_i_3_n_0 ;
  wire \dataI[5][1]_i_2_n_0 ;
  wire \dataI[5][1]_i_3_n_0 ;
  wire \dataI[5][20]_i_2_n_0 ;
  wire \dataI[5][20]_i_3_n_0 ;
  wire \dataI[5][21]_i_2_n_0 ;
  wire \dataI[5][21]_i_3_n_0 ;
  wire \dataI[5][22]_i_2_n_0 ;
  wire \dataI[5][22]_i_3_n_0 ;
  wire \dataI[5][23]_i_2_0 ;
  wire \dataI[5][23]_i_2_n_0 ;
  wire [1:0]\dataI[5][23]_i_4 ;
  wire \dataI[5][23]_i_5_n_0 ;
  wire \dataI[5][2]_i_2_n_0 ;
  wire \dataI[5][2]_i_3_n_0 ;
  wire \dataI[5][3]_i_2_n_0 ;
  wire \dataI[5][3]_i_3_n_0 ;
  wire \dataI[5][4]_i_2_n_0 ;
  wire \dataI[5][4]_i_3_n_0 ;
  wire \dataI[5][5]_i_2_n_0 ;
  wire \dataI[5][5]_i_3_n_0 ;
  wire \dataI[5][6]_i_2_n_0 ;
  wire \dataI[5][6]_i_3_n_0 ;
  wire \dataI[5][7]_i_2_n_0 ;
  wire \dataI[5][7]_i_3_n_0 ;
  wire \dataI[5][8]_i_2_n_0 ;
  wire \dataI[5][8]_i_3_n_0 ;
  wire \dataI[5][9]_i_2_n_0 ;
  wire \dataI[5][9]_i_3_n_0 ;
  wire \dataI[6][0]_i_2_n_0 ;
  wire \dataI[6][0]_i_4_n_0 ;
  wire \dataI[6][10]_i_2_n_0 ;
  wire \dataI[6][10]_i_4_n_0 ;
  wire \dataI[6][11]_i_2_n_0 ;
  wire \dataI[6][11]_i_4_n_0 ;
  wire \dataI[6][12]_i_2_n_0 ;
  wire \dataI[6][12]_i_4_n_0 ;
  wire \dataI[6][13]_i_2_n_0 ;
  wire \dataI[6][13]_i_4_n_0 ;
  wire \dataI[6][14]_i_2_n_0 ;
  wire \dataI[6][14]_i_4_n_0 ;
  wire \dataI[6][15]_i_2_n_0 ;
  wire \dataI[6][15]_i_4_n_0 ;
  wire \dataI[6][16]_i_2_n_0 ;
  wire \dataI[6][16]_i_4_n_0 ;
  wire \dataI[6][17]_i_2_n_0 ;
  wire \dataI[6][17]_i_4_n_0 ;
  wire \dataI[6][18]_i_2_n_0 ;
  wire \dataI[6][18]_i_4_n_0 ;
  wire \dataI[6][19]_i_2_n_0 ;
  wire \dataI[6][19]_i_4_n_0 ;
  wire \dataI[6][1]_i_2_n_0 ;
  wire \dataI[6][1]_i_4_n_0 ;
  wire \dataI[6][20]_i_2_n_0 ;
  wire \dataI[6][20]_i_4_n_0 ;
  wire \dataI[6][21]_i_2_n_0 ;
  wire \dataI[6][21]_i_4_n_0 ;
  wire \dataI[6][22]_i_2_n_0 ;
  wire \dataI[6][22]_i_4_n_0 ;
  wire \dataI[6][23]_i_2_n_0 ;
  wire \dataI[6][23]_i_6_n_0 ;
  wire \dataI[6][2]_i_2_n_0 ;
  wire \dataI[6][2]_i_4_n_0 ;
  wire \dataI[6][3]_i_2_n_0 ;
  wire \dataI[6][3]_i_4_n_0 ;
  wire \dataI[6][4]_i_2_n_0 ;
  wire \dataI[6][4]_i_4_n_0 ;
  wire \dataI[6][5]_i_2_n_0 ;
  wire \dataI[6][5]_i_4_n_0 ;
  wire \dataI[6][6]_i_2_n_0 ;
  wire \dataI[6][6]_i_4_n_0 ;
  wire \dataI[6][7]_i_2_n_0 ;
  wire \dataI[6][7]_i_4_n_0 ;
  wire \dataI[6][8]_i_2_n_0 ;
  wire \dataI[6][8]_i_4_n_0 ;
  wire \dataI[6][9]_i_2_n_0 ;
  wire \dataI[6][9]_i_4_n_0 ;
  wire \dataI[7][0]_i_2_n_0 ;
  wire \dataI[7][10]_i_2_n_0 ;
  wire \dataI[7][11]_i_2_n_0 ;
  wire \dataI[7][12]_i_2_n_0 ;
  wire \dataI[7][13]_i_2_n_0 ;
  wire \dataI[7][14]_i_2_n_0 ;
  wire \dataI[7][15]_i_2_n_0 ;
  wire \dataI[7][16]_i_2_n_0 ;
  wire \dataI[7][17]_i_2_n_0 ;
  wire \dataI[7][18]_i_2_n_0 ;
  wire \dataI[7][19]_i_2_n_0 ;
  wire \dataI[7][1]_i_2_n_0 ;
  wire \dataI[7][20]_i_2_n_0 ;
  wire \dataI[7][21]_i_2_n_0 ;
  wire \dataI[7][22]_i_2_n_0 ;
  wire \dataI[7][23]_i_2_n_0 ;
  wire \dataI[7][2]_i_2_n_0 ;
  wire \dataI[7][3]_i_2_n_0 ;
  wire \dataI[7][4]_i_2_n_0 ;
  wire \dataI[7][5]_i_2_n_0 ;
  wire \dataI[7][6]_i_2_n_0 ;
  wire \dataI[7][7]_i_2_n_0 ;
  wire \dataI[7][8]_i_2_n_0 ;
  wire \dataI[7][9]_i_2_n_0 ;
  wire \dataI_reg[0][0] ;
  wire \dataI_reg[0][10] ;
  wire \dataI_reg[0][11] ;
  wire \dataI_reg[0][12] ;
  wire \dataI_reg[0][13] ;
  wire \dataI_reg[0][14] ;
  wire \dataI_reg[0][15] ;
  wire \dataI_reg[0][16] ;
  wire \dataI_reg[0][17] ;
  wire \dataI_reg[0][18] ;
  wire \dataI_reg[0][19] ;
  wire \dataI_reg[0][1] ;
  wire \dataI_reg[0][20] ;
  wire \dataI_reg[0][22] ;
  wire \dataI_reg[0][22]_0 ;
  wire \dataI_reg[0][22]_1 ;
  wire [23:0]\dataI_reg[0][23] ;
  wire \dataI_reg[0][23]_0 ;
  wire \dataI_reg[0][23]_1 ;
  wire \dataI_reg[0][2] ;
  wire \dataI_reg[0][3] ;
  wire \dataI_reg[0][4] ;
  wire \dataI_reg[0][5] ;
  wire \dataI_reg[0][6] ;
  wire \dataI_reg[0][7] ;
  wire \dataI_reg[0][8] ;
  wire \dataI_reg[0][9] ;
  wire [23:0]\dataI_reg[1][23] ;
  wire \dataI_reg[1][23]_0 ;
  wire \dataI_reg[1][23]_1 ;
  wire \dataI_reg[1][23]_2 ;
  wire \dataI_reg[2][0] ;
  wire \dataI_reg[2][10] ;
  wire \dataI_reg[2][11] ;
  wire \dataI_reg[2][12] ;
  wire \dataI_reg[2][13] ;
  wire \dataI_reg[2][14] ;
  wire \dataI_reg[2][15] ;
  wire \dataI_reg[2][16] ;
  wire \dataI_reg[2][17] ;
  wire \dataI_reg[2][18] ;
  wire \dataI_reg[2][19] ;
  wire \dataI_reg[2][1] ;
  wire \dataI_reg[2][20] ;
  wire \dataI_reg[2][21] ;
  wire \dataI_reg[2][21]_0 ;
  wire \dataI_reg[2][22] ;
  wire [23:0]\dataI_reg[2][23] ;
  wire \dataI_reg[2][23]_0 ;
  wire \dataI_reg[2][23]_1 ;
  wire \dataI_reg[2][23]_2 ;
  wire \dataI_reg[2][2] ;
  wire \dataI_reg[2][3] ;
  wire \dataI_reg[2][4] ;
  wire \dataI_reg[2][5] ;
  wire \dataI_reg[2][6] ;
  wire \dataI_reg[2][7] ;
  wire \dataI_reg[2][8] ;
  wire \dataI_reg[2][9] ;
  wire \dataI_reg[3][0] ;
  wire \dataI_reg[3][11] ;
  wire \dataI_reg[3][12] ;
  wire \dataI_reg[3][14] ;
  wire \dataI_reg[3][15] ;
  wire \dataI_reg[3][16] ;
  wire \dataI_reg[3][18] ;
  wire \dataI_reg[3][19] ;
  wire \dataI_reg[3][1] ;
  wire \dataI_reg[3][20] ;
  wire \dataI_reg[3][21] ;
  wire \dataI_reg[3][21]_0 ;
  wire \dataI_reg[3][21]_1 ;
  wire \dataI_reg[3][22] ;
  wire [23:0]\dataI_reg[3][23] ;
  wire \dataI_reg[3][23]_0 ;
  wire \dataI_reg[3][23]_1 ;
  wire \dataI_reg[3][23]_2 ;
  wire \dataI_reg[3][2] ;
  wire \dataI_reg[3][3] ;
  wire \dataI_reg[3][4] ;
  wire \dataI_reg[3][5] ;
  wire \dataI_reg[3][6] ;
  wire [23:0]\dataI_reg[4][23] ;
  wire \dataI_reg[4][23]_0 ;
  wire \dataI_reg[4][23]_1 ;
  wire [23:0]\dataI_reg[5][23] ;
  wire \dataI_reg[5][23]_0 ;
  wire \dataI_reg[5][23]_1 ;
  wire [23:0]\dataI_reg[6][23] ;
  wire \dataI_reg[6][23]_0 ;
  wire \dataI_reg[7][0] ;
  wire \dataI_reg[7][10] ;
  wire \dataI_reg[7][11] ;
  wire \dataI_reg[7][12] ;
  wire \dataI_reg[7][13] ;
  wire \dataI_reg[7][14] ;
  wire \dataI_reg[7][15] ;
  wire \dataI_reg[7][16] ;
  wire \dataI_reg[7][17] ;
  wire \dataI_reg[7][18] ;
  wire \dataI_reg[7][19] ;
  wire \dataI_reg[7][1] ;
  wire \dataI_reg[7][20] ;
  wire \dataI_reg[7][21] ;
  wire \dataI_reg[7][22] ;
  wire [23:0]\dataI_reg[7][23] ;
  wire \dataI_reg[7][23]_0 ;
  wire \dataI_reg[7][23]_1 ;
  wire \dataI_reg[7][23]_2 ;
  wire \dataI_reg[7][2] ;
  wire \dataI_reg[7][3] ;
  wire \dataI_reg[7][4] ;
  wire \dataI_reg[7][5] ;
  wire \dataI_reg[7][6] ;
  wire \dataI_reg[7][7] ;
  wire \dataI_reg[7][8] ;
  wire \dataI_reg[7][9] ;
  wire [191:0]dataQ;
  wire \dataQ[0][0]_i_2_n_0 ;
  wire \dataQ[0][0]_i_3_n_0 ;
  wire \dataQ[0][10]_i_2_n_0 ;
  wire \dataQ[0][10]_i_3_n_0 ;
  wire \dataQ[0][11]_i_2_n_0 ;
  wire \dataQ[0][11]_i_3_n_0 ;
  wire \dataQ[0][12]_i_2_n_0 ;
  wire \dataQ[0][12]_i_3_n_0 ;
  wire \dataQ[0][13]_i_2_n_0 ;
  wire \dataQ[0][13]_i_3_n_0 ;
  wire \dataQ[0][14]_i_2_n_0 ;
  wire \dataQ[0][14]_i_3_n_0 ;
  wire \dataQ[0][15]_i_2_n_0 ;
  wire \dataQ[0][15]_i_3_n_0 ;
  wire \dataQ[0][16]_i_2_n_0 ;
  wire \dataQ[0][16]_i_3_n_0 ;
  wire \dataQ[0][17]_i_2_n_0 ;
  wire \dataQ[0][17]_i_3_n_0 ;
  wire \dataQ[0][18]_i_2_n_0 ;
  wire \dataQ[0][18]_i_3_n_0 ;
  wire \dataQ[0][19]_i_2_n_0 ;
  wire \dataQ[0][19]_i_3_n_0 ;
  wire \dataQ[0][1]_i_2_n_0 ;
  wire \dataQ[0][1]_i_3_n_0 ;
  wire \dataQ[0][20]_i_2_n_0 ;
  wire \dataQ[0][20]_i_3_n_0 ;
  wire \dataQ[0][21]_i_2_n_0 ;
  wire \dataQ[0][21]_i_3_n_0 ;
  wire \dataQ[0][22]_i_2_n_0 ;
  wire \dataQ[0][22]_i_3_n_0 ;
  wire \dataQ[0][23]_i_2_n_0 ;
  wire \dataQ[0][23]_i_3_n_0 ;
  wire \dataQ[0][2]_i_2_n_0 ;
  wire \dataQ[0][2]_i_3_n_0 ;
  wire \dataQ[0][3]_i_2_n_0 ;
  wire \dataQ[0][3]_i_3_n_0 ;
  wire \dataQ[0][4]_i_2_n_0 ;
  wire \dataQ[0][4]_i_3_n_0 ;
  wire \dataQ[0][5]_i_2_n_0 ;
  wire \dataQ[0][5]_i_3_n_0 ;
  wire \dataQ[0][6]_i_2_n_0 ;
  wire \dataQ[0][6]_i_3_n_0 ;
  wire \dataQ[0][7]_i_2_n_0 ;
  wire \dataQ[0][7]_i_3_n_0 ;
  wire \dataQ[0][8]_i_2_n_0 ;
  wire \dataQ[0][8]_i_3_n_0 ;
  wire \dataQ[0][9]_i_2_n_0 ;
  wire \dataQ[0][9]_i_3_n_0 ;
  wire \dataQ[1][0]_i_2_n_0 ;
  wire \dataQ[1][0]_i_3_n_0 ;
  wire \dataQ[1][10]_i_2_n_0 ;
  wire \dataQ[1][10]_i_3_n_0 ;
  wire \dataQ[1][11]_i_2_n_0 ;
  wire \dataQ[1][11]_i_3_n_0 ;
  wire \dataQ[1][12]_i_2_n_0 ;
  wire \dataQ[1][12]_i_3_n_0 ;
  wire \dataQ[1][13]_i_2_n_0 ;
  wire \dataQ[1][13]_i_3_n_0 ;
  wire \dataQ[1][14]_i_2_n_0 ;
  wire \dataQ[1][14]_i_3_n_0 ;
  wire \dataQ[1][15]_i_2_n_0 ;
  wire \dataQ[1][15]_i_3_n_0 ;
  wire \dataQ[1][16]_i_2_n_0 ;
  wire \dataQ[1][16]_i_3_n_0 ;
  wire \dataQ[1][17]_i_2_n_0 ;
  wire \dataQ[1][17]_i_3_n_0 ;
  wire \dataQ[1][18]_i_2_n_0 ;
  wire \dataQ[1][18]_i_3_n_0 ;
  wire \dataQ[1][19]_i_2_n_0 ;
  wire \dataQ[1][19]_i_3_n_0 ;
  wire \dataQ[1][1]_i_2_n_0 ;
  wire \dataQ[1][1]_i_3_n_0 ;
  wire \dataQ[1][20]_i_2_n_0 ;
  wire \dataQ[1][20]_i_3_n_0 ;
  wire \dataQ[1][21]_i_2_n_0 ;
  wire \dataQ[1][21]_i_3_n_0 ;
  wire \dataQ[1][22]_i_2_n_0 ;
  wire \dataQ[1][22]_i_3_n_0 ;
  wire \dataQ[1][23]_i_2_n_0 ;
  wire \dataQ[1][23]_i_3_n_0 ;
  wire \dataQ[1][2]_i_2_n_0 ;
  wire \dataQ[1][2]_i_3_n_0 ;
  wire \dataQ[1][3]_i_2_n_0 ;
  wire \dataQ[1][3]_i_3_n_0 ;
  wire \dataQ[1][4]_i_2_n_0 ;
  wire \dataQ[1][4]_i_3_n_0 ;
  wire \dataQ[1][5]_i_2_n_0 ;
  wire \dataQ[1][5]_i_3_n_0 ;
  wire \dataQ[1][6]_i_2_n_0 ;
  wire \dataQ[1][6]_i_3_n_0 ;
  wire \dataQ[1][7]_i_2_n_0 ;
  wire \dataQ[1][7]_i_3_n_0 ;
  wire \dataQ[1][8]_i_2_n_0 ;
  wire \dataQ[1][8]_i_3_n_0 ;
  wire \dataQ[1][9]_i_2_n_0 ;
  wire \dataQ[1][9]_i_3_n_0 ;
  wire \dataQ[2][0]_i_2_n_0 ;
  wire \dataQ[2][10]_i_2_n_0 ;
  wire \dataQ[2][11]_i_2_n_0 ;
  wire \dataQ[2][12]_i_2_n_0 ;
  wire \dataQ[2][12]_i_3_n_0 ;
  wire \dataQ[2][13]_i_2_n_0 ;
  wire \dataQ[2][14]_i_2_n_0 ;
  wire \dataQ[2][15]_i_2_n_0 ;
  wire \dataQ[2][16]_i_2_n_0 ;
  wire \dataQ[2][17]_i_2_n_0 ;
  wire \dataQ[2][18]_i_2_n_0 ;
  wire \dataQ[2][19]_i_2_n_0 ;
  wire \dataQ[2][19]_i_3_n_0 ;
  wire \dataQ[2][1]_i_2_n_0 ;
  wire \dataQ[2][20]_i_2_n_0 ;
  wire \dataQ[2][21]_i_2_n_0 ;
  wire \dataQ[2][22]_i_2_n_0 ;
  wire \dataQ[2][23]_i_2_n_0 ;
  wire \dataQ[2][2]_i_2_n_0 ;
  wire \dataQ[2][3]_i_2_n_0 ;
  wire \dataQ[2][4]_i_2_n_0 ;
  wire \dataQ[2][5]_i_2_n_0 ;
  wire \dataQ[2][6]_i_2_n_0 ;
  wire \dataQ[2][7]_i_2_n_0 ;
  wire \dataQ[2][8]_i_2_n_0 ;
  wire \dataQ[2][9]_i_2_n_0 ;
  wire \dataQ[2][9]_i_3_n_0 ;
  wire \dataQ[3][0]_i_2_n_0 ;
  wire \dataQ[3][0]_i_3_n_0 ;
  wire \dataQ[3][10]_i_2_n_0 ;
  wire \dataQ[3][11]_i_2_n_0 ;
  wire \dataQ[3][11]_i_3_n_0 ;
  wire \dataQ[3][12]_i_2_n_0 ;
  wire \dataQ[3][13]_i_2_n_0 ;
  wire \dataQ[3][14]_i_2_n_0 ;
  wire \dataQ[3][15]_i_2_n_0 ;
  wire \dataQ[3][16]_i_2_n_0 ;
  wire \dataQ[3][17]_i_2_n_0 ;
  wire \dataQ[3][18]_i_2_n_0 ;
  wire \dataQ[3][19]_i_2_n_0 ;
  wire \dataQ[3][1]_i_2_n_0 ;
  wire \dataQ[3][1]_i_3_n_0 ;
  wire \dataQ[3][20]_i_2_n_0 ;
  wire \dataQ[3][21]_i_2_n_0 ;
  wire \dataQ[3][22]_i_2_n_0 ;
  wire \dataQ[3][23]_i_2_n_0 ;
  wire \dataQ[3][2]_i_2_n_0 ;
  wire \dataQ[3][2]_i_3_n_0 ;
  wire \dataQ[3][3]_i_2_n_0 ;
  wire \dataQ[3][4]_i_2_n_0 ;
  wire \dataQ[3][4]_i_3_n_0 ;
  wire \dataQ[3][5]_i_2_n_0 ;
  wire \dataQ[3][6]_i_2_n_0 ;
  wire \dataQ[3][7]_i_2_n_0 ;
  wire \dataQ[3][8]_i_2_n_0 ;
  wire \dataQ[3][9]_i_2_n_0 ;
  wire \dataQ[4][0]_i_2_n_0 ;
  wire \dataQ[4][0]_i_3_n_0 ;
  wire \dataQ[4][10]_i_2_n_0 ;
  wire \dataQ[4][10]_i_3_n_0 ;
  wire \dataQ[4][11]_i_2_n_0 ;
  wire \dataQ[4][11]_i_3_n_0 ;
  wire \dataQ[4][12]_i_2_n_0 ;
  wire \dataQ[4][12]_i_3_n_0 ;
  wire \dataQ[4][13]_i_2_n_0 ;
  wire \dataQ[4][13]_i_3_n_0 ;
  wire \dataQ[4][14]_i_2_n_0 ;
  wire \dataQ[4][14]_i_3_n_0 ;
  wire \dataQ[4][15]_i_2_n_0 ;
  wire \dataQ[4][15]_i_3_n_0 ;
  wire \dataQ[4][16]_i_2_n_0 ;
  wire \dataQ[4][16]_i_3_n_0 ;
  wire \dataQ[4][17]_i_2_n_0 ;
  wire \dataQ[4][17]_i_3_n_0 ;
  wire \dataQ[4][18]_i_2_n_0 ;
  wire \dataQ[4][18]_i_3_n_0 ;
  wire \dataQ[4][19]_i_2_n_0 ;
  wire \dataQ[4][19]_i_3_n_0 ;
  wire \dataQ[4][1]_i_2_n_0 ;
  wire \dataQ[4][1]_i_3_n_0 ;
  wire \dataQ[4][20]_i_2_n_0 ;
  wire \dataQ[4][20]_i_3_n_0 ;
  wire \dataQ[4][21]_i_2_n_0 ;
  wire \dataQ[4][21]_i_3_n_0 ;
  wire \dataQ[4][22]_i_2_n_0 ;
  wire \dataQ[4][22]_i_3_n_0 ;
  wire \dataQ[4][23]_i_2_n_0 ;
  wire \dataQ[4][23]_i_3_n_0 ;
  wire \dataQ[4][2]_i_2_n_0 ;
  wire \dataQ[4][2]_i_3_n_0 ;
  wire \dataQ[4][3]_i_2_n_0 ;
  wire \dataQ[4][3]_i_3_n_0 ;
  wire \dataQ[4][4]_i_2_n_0 ;
  wire \dataQ[4][4]_i_3_n_0 ;
  wire \dataQ[4][5]_i_2_n_0 ;
  wire \dataQ[4][5]_i_3_n_0 ;
  wire \dataQ[4][6]_i_2_n_0 ;
  wire \dataQ[4][6]_i_3_n_0 ;
  wire \dataQ[4][7]_i_2_n_0 ;
  wire \dataQ[4][7]_i_3_n_0 ;
  wire \dataQ[4][8]_i_2_n_0 ;
  wire \dataQ[4][8]_i_3_n_0 ;
  wire \dataQ[4][9]_i_2_n_0 ;
  wire \dataQ[4][9]_i_3_n_0 ;
  wire \dataQ[5][0]_i_2_n_0 ;
  wire \dataQ[5][0]_i_3_n_0 ;
  wire \dataQ[5][10]_i_2_n_0 ;
  wire \dataQ[5][10]_i_3_n_0 ;
  wire \dataQ[5][11]_i_2_n_0 ;
  wire \dataQ[5][11]_i_3_n_0 ;
  wire \dataQ[5][12]_i_2_n_0 ;
  wire \dataQ[5][12]_i_3_n_0 ;
  wire \dataQ[5][13]_i_2_n_0 ;
  wire \dataQ[5][13]_i_3_n_0 ;
  wire \dataQ[5][14]_i_2_n_0 ;
  wire \dataQ[5][14]_i_3_n_0 ;
  wire \dataQ[5][15]_i_2_n_0 ;
  wire \dataQ[5][15]_i_3_n_0 ;
  wire \dataQ[5][16]_i_2_n_0 ;
  wire \dataQ[5][16]_i_3_n_0 ;
  wire \dataQ[5][17]_i_2_n_0 ;
  wire \dataQ[5][17]_i_3_n_0 ;
  wire \dataQ[5][18]_i_2_n_0 ;
  wire \dataQ[5][18]_i_3_n_0 ;
  wire \dataQ[5][19]_i_2_n_0 ;
  wire \dataQ[5][19]_i_3_n_0 ;
  wire \dataQ[5][1]_i_2_n_0 ;
  wire \dataQ[5][1]_i_3_n_0 ;
  wire \dataQ[5][20]_i_2_n_0 ;
  wire \dataQ[5][20]_i_3_n_0 ;
  wire \dataQ[5][21]_i_2_n_0 ;
  wire \dataQ[5][21]_i_3_n_0 ;
  wire \dataQ[5][22]_i_2_n_0 ;
  wire \dataQ[5][22]_i_3_n_0 ;
  wire \dataQ[5][23]_i_2_n_0 ;
  wire \dataQ[5][23]_i_3_n_0 ;
  wire \dataQ[5][2]_i_2_n_0 ;
  wire \dataQ[5][2]_i_3_n_0 ;
  wire \dataQ[5][3]_i_2_n_0 ;
  wire \dataQ[5][3]_i_3_n_0 ;
  wire \dataQ[5][4]_i_2_n_0 ;
  wire \dataQ[5][4]_i_3_n_0 ;
  wire \dataQ[5][5]_i_2_n_0 ;
  wire \dataQ[5][5]_i_3_n_0 ;
  wire \dataQ[5][6]_i_2_n_0 ;
  wire \dataQ[5][6]_i_3_n_0 ;
  wire \dataQ[5][7]_i_2_n_0 ;
  wire \dataQ[5][7]_i_3_n_0 ;
  wire \dataQ[5][8]_i_2_n_0 ;
  wire \dataQ[5][8]_i_3_n_0 ;
  wire \dataQ[5][9]_i_2_n_0 ;
  wire \dataQ[5][9]_i_3_n_0 ;
  wire \dataQ[6][0]_i_2_n_0 ;
  wire \dataQ[6][10]_i_2_n_0 ;
  wire \dataQ[6][11]_i_2_n_0 ;
  wire \dataQ[6][11]_i_4_n_0 ;
  wire \dataQ[6][12]_i_2_n_0 ;
  wire \dataQ[6][13]_i_2_n_0 ;
  wire \dataQ[6][14]_i_2_n_0 ;
  wire \dataQ[6][15]_i_2_n_0 ;
  wire \dataQ[6][16]_i_2_n_0 ;
  wire \dataQ[6][17]_i_2_n_0 ;
  wire \dataQ[6][17]_i_4_n_0 ;
  wire \dataQ[6][18]_i_2_n_0 ;
  wire \dataQ[6][18]_i_4_n_0 ;
  wire \dataQ[6][19]_i_2_n_0 ;
  wire \dataQ[6][1]_i_2_n_0 ;
  wire \dataQ[6][20]_i_2_n_0 ;
  wire \dataQ[6][21]_i_2_n_0 ;
  wire \dataQ[6][22]_i_2_n_0 ;
  wire \dataQ[6][23]_i_2_n_0 ;
  wire \dataQ[6][23]_i_4_n_0 ;
  wire \dataQ[6][2]_i_2_n_0 ;
  wire \dataQ[6][3]_i_2_n_0 ;
  wire \dataQ[6][4]_i_2_n_0 ;
  wire \dataQ[6][5]_i_2_n_0 ;
  wire \dataQ[6][5]_i_4_n_0 ;
  wire \dataQ[6][6]_i_2_n_0 ;
  wire \dataQ[6][6]_i_4_n_0 ;
  wire \dataQ[6][7]_i_2_n_0 ;
  wire \dataQ[6][8]_i_2_n_0 ;
  wire \dataQ[6][9]_i_2_n_0 ;
  wire \dataQ[7][0]_i_2_n_0 ;
  wire \dataQ[7][10]_i_2_n_0 ;
  wire \dataQ[7][10]_i_3_n_0 ;
  wire \dataQ[7][11]_i_2_n_0 ;
  wire \dataQ[7][12]_i_2_n_0 ;
  wire \dataQ[7][12]_i_3_n_0 ;
  wire \dataQ[7][13]_i_2_n_0 ;
  wire \dataQ[7][14]_i_2_n_0 ;
  wire \dataQ[7][15]_i_2_n_0 ;
  wire \dataQ[7][16]_i_2_n_0 ;
  wire \dataQ[7][16]_i_3_n_0 ;
  wire \dataQ[7][17]_i_2_n_0 ;
  wire \dataQ[7][18]_i_2_n_0 ;
  wire \dataQ[7][18]_i_3_n_0 ;
  wire \dataQ[7][19]_i_2_n_0 ;
  wire \dataQ[7][1]_i_2_n_0 ;
  wire \dataQ[7][20]_i_2_n_0 ;
  wire \dataQ[7][20]_i_3_n_0 ;
  wire \dataQ[7][21]_i_2_n_0 ;
  wire \dataQ[7][22]_i_2_n_0 ;
  wire \dataQ[7][22]_i_3_n_0 ;
  wire \dataQ[7][23]_i_2_n_0 ;
  wire \dataQ[7][2]_i_2_n_0 ;
  wire \dataQ[7][2]_i_3_n_0 ;
  wire \dataQ[7][3]_i_2_n_0 ;
  wire \dataQ[7][4]_i_2_n_0 ;
  wire \dataQ[7][4]_i_3_n_0 ;
  wire \dataQ[7][5]_i_2_n_0 ;
  wire \dataQ[7][6]_i_2_n_0 ;
  wire \dataQ[7][7]_i_2_n_0 ;
  wire \dataQ[7][8]_i_2_n_0 ;
  wire \dataQ[7][8]_i_3_n_0 ;
  wire \dataQ[7][9]_i_2_n_0 ;
  wire \dataQ_reg[0][0] ;
  wire \dataQ_reg[0][10] ;
  wire \dataQ_reg[0][11] ;
  wire \dataQ_reg[0][12] ;
  wire \dataQ_reg[0][13] ;
  wire \dataQ_reg[0][14] ;
  wire \dataQ_reg[0][15] ;
  wire \dataQ_reg[0][16] ;
  wire \dataQ_reg[0][17] ;
  wire \dataQ_reg[0][18] ;
  wire \dataQ_reg[0][19] ;
  wire \dataQ_reg[0][1] ;
  wire \dataQ_reg[0][20] ;
  wire \dataQ_reg[0][21] ;
  wire \dataQ_reg[0][22] ;
  wire [23:0]\dataQ_reg[0][23] ;
  wire \dataQ_reg[0][23]_0 ;
  wire \dataQ_reg[0][2] ;
  wire \dataQ_reg[0][3] ;
  wire \dataQ_reg[0][4] ;
  wire \dataQ_reg[0][5] ;
  wire \dataQ_reg[0][6] ;
  wire \dataQ_reg[0][8] ;
  wire \dataQ_reg[0][9] ;
  wire [23:0]\dataQ_reg[1][23] ;
  wire \dataQ_reg[2][0] ;
  wire \dataQ_reg[2][10] ;
  wire \dataQ_reg[2][11] ;
  wire \dataQ_reg[2][13] ;
  wire \dataQ_reg[2][14] ;
  wire \dataQ_reg[2][15] ;
  wire \dataQ_reg[2][16] ;
  wire \dataQ_reg[2][17] ;
  wire \dataQ_reg[2][18] ;
  wire \dataQ_reg[2][1] ;
  wire \dataQ_reg[2][20] ;
  wire \dataQ_reg[2][21] ;
  wire \dataQ_reg[2][22] ;
  wire [23:0]\dataQ_reg[2][23] ;
  wire \dataQ_reg[2][23]_0 ;
  wire \dataQ_reg[2][2] ;
  wire \dataQ_reg[2][3] ;
  wire \dataQ_reg[2][4] ;
  wire \dataQ_reg[2][5] ;
  wire \dataQ_reg[2][6] ;
  wire \dataQ_reg[2][7] ;
  wire \dataQ_reg[2][8] ;
  wire \dataQ_reg[3][10] ;
  wire \dataQ_reg[3][12] ;
  wire \dataQ_reg[3][13] ;
  wire \dataQ_reg[3][14] ;
  wire \dataQ_reg[3][15] ;
  wire \dataQ_reg[3][16] ;
  wire \dataQ_reg[3][17] ;
  wire \dataQ_reg[3][18] ;
  wire \dataQ_reg[3][19] ;
  wire \dataQ_reg[3][20] ;
  wire \dataQ_reg[3][21] ;
  wire \dataQ_reg[3][22] ;
  wire [23:0]\dataQ_reg[3][23] ;
  wire \dataQ_reg[3][23]_0 ;
  wire \dataQ_reg[3][3] ;
  wire \dataQ_reg[3][5] ;
  wire \dataQ_reg[3][6] ;
  wire \dataQ_reg[3][7] ;
  wire \dataQ_reg[3][8] ;
  wire \dataQ_reg[3][9] ;
  wire [23:0]\dataQ_reg[4][23] ;
  wire [23:0]\dataQ_reg[5][23] ;
  wire \dataQ_reg[6][0] ;
  wire \dataQ_reg[6][10] ;
  wire \dataQ_reg[6][12] ;
  wire \dataQ_reg[6][13] ;
  wire \dataQ_reg[6][14] ;
  wire \dataQ_reg[6][15] ;
  wire \dataQ_reg[6][16] ;
  wire \dataQ_reg[6][19] ;
  wire \dataQ_reg[6][1] ;
  wire \dataQ_reg[6][20] ;
  wire \dataQ_reg[6][21] ;
  wire \dataQ_reg[6][22] ;
  wire \dataQ_reg[6][22]_0 ;
  wire [23:0]\dataQ_reg[6][23] ;
  wire \dataQ_reg[6][2] ;
  wire \dataQ_reg[6][3] ;
  wire \dataQ_reg[6][4] ;
  wire \dataQ_reg[6][7] ;
  wire \dataQ_reg[6][7]_0 ;
  wire \dataQ_reg[6][8] ;
  wire \dataQ_reg[6][9] ;
  wire \dataQ_reg[7][0] ;
  wire \dataQ_reg[7][11] ;
  wire \dataQ_reg[7][13] ;
  wire \dataQ_reg[7][14] ;
  wire \dataQ_reg[7][15] ;
  wire \dataQ_reg[7][17] ;
  wire \dataQ_reg[7][19] ;
  wire \dataQ_reg[7][1] ;
  wire \dataQ_reg[7][21] ;
  wire \dataQ_reg[7][23] ;
  wire \dataQ_reg[7][3] ;
  wire \dataQ_reg[7][5] ;
  wire \dataQ_reg[7][6] ;
  wire \dataQ_reg[7][7] ;
  wire \dataQ_reg[7][7]_0 ;
  wire \dataQ_reg[7][7]_1 ;
  wire \dataQ_reg[7][9] ;
  wire lastStartState;
  wire lastStartState_reg_0;
  wire [23:0]mul1I;
  wire [23:0]mul1I_out;
  wire [23:0]\mul1I_reg[23]_0 ;
  wire [23:0]mul1Q_out;
  wire [23:0]mul1R;
  wire [23:0]\mul1R_reg[23]_0 ;
  wire [22:22]mul2I;
  wire [23:0]mul2I_out;
  wire [23:0]mul2Q_out;
  wire [3:0]\mul2Q_reg[0] ;
  wire [22:2]mul2R;
  wire \mul2R[10]_i_1_n_0 ;
  wire \mul2R[22]_i_1_n_0 ;
  wire \mul2R[9]_i_1_n_0 ;
  wire [2:0]\mul2R_reg[22]_0 ;
  wire mulPreviousReady;
  wire mulReady;
  wire mulStart;
  wire mul_n_100;
  wire mul_n_101;
  wire mul_n_102;
  wire mul_n_103;
  wire mul_n_104;
  wire mul_n_105;
  wire mul_n_107;
  wire mul_n_108;
  wire mul_n_109;
  wire mul_n_110;
  wire mul_n_111;
  wire mul_n_112;
  wire mul_n_113;
  wire mul_n_114;
  wire mul_n_115;
  wire mul_n_116;
  wire mul_n_117;
  wire mul_n_118;
  wire mul_n_119;
  wire mul_n_120;
  wire mul_n_121;
  wire mul_n_122;
  wire mul_n_123;
  wire mul_n_124;
  wire mul_n_125;
  wire mul_n_126;
  wire mul_n_127;
  wire mul_n_128;
  wire mul_n_129;
  wire mul_n_130;
  wire mul_n_131;
  wire mul_n_132;
  wire mul_n_133;
  wire mul_n_134;
  wire mul_n_135;
  wire mul_n_136;
  wire mul_n_137;
  wire mul_n_138;
  wire mul_n_139;
  wire mul_n_140;
  wire mul_n_141;
  wire mul_n_142;
  wire mul_n_143;
  wire mul_n_144;
  wire mul_n_145;
  wire mul_n_146;
  wire mul_n_147;
  wire mul_n_148;
  wire mul_n_149;
  wire mul_n_150;
  wire mul_n_151;
  wire mul_n_152;
  wire mul_n_153;
  wire mul_n_154;
  wire mul_n_51;
  wire mul_n_54;
  wire mul_n_58;
  wire mul_n_59;
  wire mul_n_60;
  wire mul_n_61;
  wire mul_n_62;
  wire mul_n_63;
  wire mul_n_64;
  wire mul_n_65;
  wire mul_n_66;
  wire mul_n_67;
  wire mul_n_68;
  wire mul_n_69;
  wire mul_n_70;
  wire mul_n_71;
  wire mul_n_72;
  wire mul_n_73;
  wire mul_n_74;
  wire mul_n_75;
  wire mul_n_76;
  wire mul_n_77;
  wire mul_n_78;
  wire mul_n_79;
  wire mul_n_80;
  wire mul_n_81;
  wire mul_n_82;
  wire mul_n_83;
  wire mul_n_84;
  wire mul_n_85;
  wire mul_n_86;
  wire mul_n_87;
  wire mul_n_88;
  wire mul_n_89;
  wire mul_n_90;
  wire mul_n_91;
  wire mul_n_92;
  wire mul_n_93;
  wire mul_n_94;
  wire mul_n_95;
  wire mul_n_96;
  wire mul_n_97;
  wire mul_n_98;
  wire mul_n_99;
  wire ready0;
  wire ready01_out;
  wire ready_reg_0;
  wire ready_reg_1;
  wire s00_axi_aclk;
  wire [23:0]\shift_reg[1] ;
  wire [23:0]\shift_reg[1]_0 ;
  wire \shift_reg[1]_1 ;
  wire \state_reg[1] ;
  wire \state_reg[1]_0 ;
  wire \state_reg[1]_1 ;
  wire [23:0]tempI;
  wire [23:0]\tempI_reg[23]_0 ;
  wire [23:0]tempR;
  wire [23:0]\tempR_reg[23]_0 ;
  wire [3:0]topIdx;
  wire \topIdx[3]_i_5_n_0 ;
  wire \topIdx[3]_i_6_n_0 ;
  wire \topIdx_reg[0] ;
  wire \topIdx_reg[0]_0 ;
  wire \topIdx_reg[3] ;
  wire \topIdx_reg[3]_0 ;

  FDRE \bottomI_out_reg[0] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_154),
        .Q(mul2Q_out[0]),
        .R(1'b0));
  FDRE \bottomI_out_reg[10] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_144),
        .Q(mul2Q_out[10]),
        .R(1'b0));
  FDRE \bottomI_out_reg[11] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_143),
        .Q(mul2Q_out[11]),
        .R(1'b0));
  FDRE \bottomI_out_reg[12] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_142),
        .Q(mul2Q_out[12]),
        .R(1'b0));
  FDRE \bottomI_out_reg[13] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_141),
        .Q(mul2Q_out[13]),
        .R(1'b0));
  FDRE \bottomI_out_reg[14] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_140),
        .Q(mul2Q_out[14]),
        .R(1'b0));
  FDRE \bottomI_out_reg[15] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_139),
        .Q(mul2Q_out[15]),
        .R(1'b0));
  FDRE \bottomI_out_reg[16] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_138),
        .Q(mul2Q_out[16]),
        .R(1'b0));
  FDRE \bottomI_out_reg[17] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_137),
        .Q(mul2Q_out[17]),
        .R(1'b0));
  FDRE \bottomI_out_reg[18] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_136),
        .Q(mul2Q_out[18]),
        .R(1'b0));
  FDRE \bottomI_out_reg[19] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_135),
        .Q(mul2Q_out[19]),
        .R(1'b0));
  FDRE \bottomI_out_reg[1] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_153),
        .Q(mul2Q_out[1]),
        .R(1'b0));
  FDRE \bottomI_out_reg[20] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_134),
        .Q(mul2Q_out[20]),
        .R(1'b0));
  FDRE \bottomI_out_reg[21] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_133),
        .Q(mul2Q_out[21]),
        .R(1'b0));
  FDRE \bottomI_out_reg[22] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_132),
        .Q(mul2Q_out[22]),
        .R(1'b0));
  FDRE \bottomI_out_reg[23] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_131),
        .Q(mul2Q_out[23]),
        .R(1'b0));
  FDRE \bottomI_out_reg[2] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_152),
        .Q(mul2Q_out[2]),
        .R(1'b0));
  FDRE \bottomI_out_reg[3] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_151),
        .Q(mul2Q_out[3]),
        .R(1'b0));
  FDRE \bottomI_out_reg[4] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_150),
        .Q(mul2Q_out[4]),
        .R(1'b0));
  FDRE \bottomI_out_reg[5] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_149),
        .Q(mul2Q_out[5]),
        .R(1'b0));
  FDRE \bottomI_out_reg[6] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_148),
        .Q(mul2Q_out[6]),
        .R(1'b0));
  FDRE \bottomI_out_reg[7] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_147),
        .Q(mul2Q_out[7]),
        .R(1'b0));
  FDRE \bottomI_out_reg[8] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_146),
        .Q(mul2Q_out[8]),
        .R(1'b0));
  FDRE \bottomI_out_reg[9] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_145),
        .Q(mul2Q_out[9]),
        .R(1'b0));
  FDRE \bottomR_out_reg[0] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_130),
        .Q(mul2I_out[0]),
        .R(1'b0));
  FDRE \bottomR_out_reg[10] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_120),
        .Q(mul2I_out[10]),
        .R(1'b0));
  FDRE \bottomR_out_reg[11] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_119),
        .Q(mul2I_out[11]),
        .R(1'b0));
  FDRE \bottomR_out_reg[12] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_118),
        .Q(mul2I_out[12]),
        .R(1'b0));
  FDRE \bottomR_out_reg[13] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_117),
        .Q(mul2I_out[13]),
        .R(1'b0));
  FDRE \bottomR_out_reg[14] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_116),
        .Q(mul2I_out[14]),
        .R(1'b0));
  FDRE \bottomR_out_reg[15] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_115),
        .Q(mul2I_out[15]),
        .R(1'b0));
  FDRE \bottomR_out_reg[16] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_114),
        .Q(mul2I_out[16]),
        .R(1'b0));
  FDRE \bottomR_out_reg[17] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_113),
        .Q(mul2I_out[17]),
        .R(1'b0));
  FDRE \bottomR_out_reg[18] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_112),
        .Q(mul2I_out[18]),
        .R(1'b0));
  FDRE \bottomR_out_reg[19] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_111),
        .Q(mul2I_out[19]),
        .R(1'b0));
  FDRE \bottomR_out_reg[1] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_129),
        .Q(mul2I_out[1]),
        .R(1'b0));
  FDRE \bottomR_out_reg[20] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_110),
        .Q(mul2I_out[20]),
        .R(1'b0));
  FDRE \bottomR_out_reg[21] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_109),
        .Q(mul2I_out[21]),
        .R(1'b0));
  FDRE \bottomR_out_reg[22] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_108),
        .Q(mul2I_out[22]),
        .R(1'b0));
  FDRE \bottomR_out_reg[23] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_107),
        .Q(mul2I_out[23]),
        .R(1'b0));
  FDRE \bottomR_out_reg[2] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_128),
        .Q(mul2I_out[2]),
        .R(1'b0));
  FDRE \bottomR_out_reg[3] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_127),
        .Q(mul2I_out[3]),
        .R(1'b0));
  FDRE \bottomR_out_reg[4] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_126),
        .Q(mul2I_out[4]),
        .R(1'b0));
  FDRE \bottomR_out_reg[5] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_125),
        .Q(mul2I_out[5]),
        .R(1'b0));
  FDRE \bottomR_out_reg[6] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_124),
        .Q(mul2I_out[6]),
        .R(1'b0));
  FDRE \bottomR_out_reg[7] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_123),
        .Q(mul2I_out[7]),
        .R(1'b0));
  FDRE \bottomR_out_reg[8] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_122),
        .Q(mul2I_out[8]),
        .R(1'b0));
  FDRE \bottomR_out_reg[9] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_121),
        .Q(mul2I_out[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    butterflyPreviousReady_i_1
       (.I0(\state_reg[1]_0 ),
        .I1(\bottomIdx_reg[4] ),
        .I2(butterflyReady),
        .I3(butterflyPreviousReady),
        .O(ready_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFDF2222)) 
    butterflyStart_i_1
       (.I0(\state_reg[1]_0 ),
        .I1(\bottomIdx_reg[4] ),
        .I2(butterflyReady),
        .I3(butterflyPreviousReady),
        .I4(lastStartState_reg_0),
        .O(ready_reg_0));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[0][0]_i_1 
       (.I0(\dataI[0][0]_i_2_n_0 ),
        .I1(\dataI_reg[0][0] ),
        .I2(\dataI_reg[0][22]_0 ),
        .I3(dataI[168]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[0][23] [0]));
  LUT6 #(
    .INIT(64'h8D008D00FF000000)) 
    \dataI[0][0]_i_2 
       (.I0(\dataI_reg[0][22]_1 ),
        .I1(mul2I_out[0]),
        .I2(\dataI[0][0]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[168]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[0][0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[0][0]_i_3 
       (.I0(mul1I_out[0]),
        .I1(\dataI_reg[0][23]_1 ),
        .I2(Q[1]),
        .I3(dataI[168]),
        .O(\dataI[0][0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[0][10]_i_1 
       (.I0(\dataI[0][10]_i_2_n_0 ),
        .I1(\dataI_reg[0][10] ),
        .I2(\dataI_reg[0][22]_0 ),
        .I3(dataI[178]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[0][23] [10]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[0][10]_i_2 
       (.I0(dataI[178]),
        .I1(mul2I_out[10]),
        .I2(\dataI_reg[0][22]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[0][10]_i_3_n_0 ),
        .O(\dataI[0][10]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[0][10]_i_3 
       (.I0(mul1I_out[10]),
        .I1(\dataI_reg[0][23]_1 ),
        .I2(Q[1]),
        .I3(dataI[178]),
        .O(\dataI[0][10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[0][11]_i_1 
       (.I0(\dataI[0][11]_i_2_n_0 ),
        .I1(\dataI_reg[0][11] ),
        .I2(\dataI_reg[0][22]_0 ),
        .I3(dataI[179]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[0][23] [11]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[0][11]_i_2 
       (.I0(dataI[179]),
        .I1(mul2I_out[11]),
        .I2(\dataI_reg[0][22]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[0][11]_i_3_n_0 ),
        .O(\dataI[0][11]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[0][11]_i_3 
       (.I0(mul1I_out[11]),
        .I1(\dataI_reg[0][23]_1 ),
        .I2(Q[1]),
        .I3(dataI[179]),
        .O(\dataI[0][11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[0][12]_i_1 
       (.I0(\dataI[0][12]_i_2_n_0 ),
        .I1(\dataI_reg[0][12] ),
        .I2(\dataI_reg[0][22]_0 ),
        .I3(dataI[180]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[0][23] [12]));
  LUT6 #(
    .INIT(64'h8D008D00FF000000)) 
    \dataI[0][12]_i_2 
       (.I0(\dataI_reg[0][22]_1 ),
        .I1(mul2I_out[12]),
        .I2(\dataI[0][12]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[180]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[0][12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[0][12]_i_3 
       (.I0(mul1I_out[12]),
        .I1(\dataI_reg[0][23]_1 ),
        .I2(Q[1]),
        .I3(dataI[180]),
        .O(\dataI[0][12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[0][13]_i_1 
       (.I0(\dataI[0][13]_i_2_n_0 ),
        .I1(\dataI_reg[0][13] ),
        .I2(\dataI_reg[0][22]_0 ),
        .I3(dataI[181]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[0][23] [13]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[0][13]_i_2 
       (.I0(dataI[181]),
        .I1(mul2I_out[13]),
        .I2(\dataI_reg[0][22]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[0][13]_i_3_n_0 ),
        .O(\dataI[0][13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[0][13]_i_3 
       (.I0(mul1I_out[13]),
        .I1(\dataI_reg[0][23]_1 ),
        .I2(Q[1]),
        .I3(dataI[181]),
        .O(\dataI[0][13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[0][14]_i_1 
       (.I0(\dataI[0][14]_i_2_n_0 ),
        .I1(\dataI_reg[0][14] ),
        .I2(\dataI_reg[0][22]_0 ),
        .I3(dataI[182]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[0][23] [14]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[0][14]_i_2 
       (.I0(dataI[182]),
        .I1(mul2I_out[14]),
        .I2(\dataI_reg[0][22]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[0][14]_i_3_n_0 ),
        .O(\dataI[0][14]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[0][14]_i_3 
       (.I0(mul1I_out[14]),
        .I1(\dataI_reg[0][23]_1 ),
        .I2(Q[1]),
        .I3(dataI[182]),
        .O(\dataI[0][14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[0][15]_i_1 
       (.I0(\dataI[0][15]_i_2_n_0 ),
        .I1(\dataI_reg[0][15] ),
        .I2(\dataI_reg[0][22]_0 ),
        .I3(dataI[183]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[0][23] [15]));
  LUT6 #(
    .INIT(64'h8D008D00FF000000)) 
    \dataI[0][15]_i_2 
       (.I0(\dataI_reg[0][22]_1 ),
        .I1(mul2I_out[15]),
        .I2(\dataI[0][15]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[183]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[0][15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[0][15]_i_3 
       (.I0(mul1I_out[15]),
        .I1(\dataI_reg[0][23]_1 ),
        .I2(Q[1]),
        .I3(dataI[183]),
        .O(\dataI[0][15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[0][16]_i_1 
       (.I0(\dataI[0][16]_i_2_n_0 ),
        .I1(\dataI_reg[0][16] ),
        .I2(\dataI_reg[0][22]_0 ),
        .I3(dataI[184]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[0][23] [16]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[0][16]_i_2 
       (.I0(dataI[184]),
        .I1(mul2I_out[16]),
        .I2(\dataI_reg[0][22]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[0][16]_i_3_n_0 ),
        .O(\dataI[0][16]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[0][16]_i_3 
       (.I0(mul1I_out[16]),
        .I1(\dataI_reg[0][23]_1 ),
        .I2(Q[1]),
        .I3(dataI[184]),
        .O(\dataI[0][16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[0][17]_i_1 
       (.I0(\dataI[0][17]_i_2_n_0 ),
        .I1(\dataI_reg[0][17] ),
        .I2(\dataI_reg[0][22]_0 ),
        .I3(dataI[185]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[0][23] [17]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataI[0][17]_i_2 
       (.I0(mul2I_out[17]),
        .I1(\dataI_reg[0][22]_1 ),
        .I2(\dataI[0][17]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[185]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[0][17]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[0][17]_i_3 
       (.I0(mul1I_out[17]),
        .I1(\dataI_reg[0][23]_1 ),
        .I2(Q[1]),
        .I3(dataI[185]),
        .O(\dataI[0][17]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[0][18]_i_1 
       (.I0(\dataI[0][18]_i_2_n_0 ),
        .I1(\dataI_reg[0][18] ),
        .I2(\dataI_reg[0][22]_0 ),
        .I3(dataI[186]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[0][23] [18]));
  LUT6 #(
    .INIT(64'hB800B800FF000000)) 
    \dataI[0][18]_i_2 
       (.I0(mul2I_out[18]),
        .I1(\dataI_reg[0][22]_1 ),
        .I2(\dataI[0][18]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[186]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[0][18]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[0][18]_i_3 
       (.I0(mul1I_out[18]),
        .I1(\dataI_reg[0][23]_1 ),
        .I2(Q[1]),
        .I3(dataI[186]),
        .O(\dataI[0][18]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[0][19]_i_1 
       (.I0(\dataI[0][19]_i_2_n_0 ),
        .I1(\dataI_reg[0][19] ),
        .I2(\dataI_reg[0][22]_0 ),
        .I3(dataI[187]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[0][23] [19]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[0][19]_i_2 
       (.I0(dataI[187]),
        .I1(mul2I_out[19]),
        .I2(\dataI_reg[0][22]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[0][19]_i_3_n_0 ),
        .O(\dataI[0][19]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[0][19]_i_3 
       (.I0(mul1I_out[19]),
        .I1(\dataI_reg[0][23]_1 ),
        .I2(Q[1]),
        .I3(dataI[187]),
        .O(\dataI[0][19]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[0][1]_i_1 
       (.I0(\dataI[0][1]_i_2_n_0 ),
        .I1(\dataI_reg[0][1] ),
        .I2(\dataI_reg[0][22]_0 ),
        .I3(dataI[169]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[0][23] [1]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[0][1]_i_2 
       (.I0(dataI[169]),
        .I1(mul2I_out[1]),
        .I2(\dataI_reg[0][22]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[0][1]_i_3_n_0 ),
        .O(\dataI[0][1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[0][1]_i_3 
       (.I0(mul1I_out[1]),
        .I1(\dataI_reg[0][23]_1 ),
        .I2(Q[1]),
        .I3(dataI[169]),
        .O(\dataI[0][1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[0][20]_i_1 
       (.I0(\dataI[0][20]_i_2_n_0 ),
        .I1(\dataI_reg[0][20] ),
        .I2(\dataI_reg[0][22]_0 ),
        .I3(dataI[188]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[0][23] [20]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[0][20]_i_2 
       (.I0(dataI[188]),
        .I1(mul2I_out[20]),
        .I2(\dataI_reg[0][22]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[0][20]_i_3_n_0 ),
        .O(\dataI[0][20]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[0][20]_i_3 
       (.I0(mul1I_out[20]),
        .I1(\dataI_reg[0][23]_1 ),
        .I2(Q[1]),
        .I3(dataI[188]),
        .O(\dataI[0][20]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[0][21]_i_1 
       (.I0(\dataI[0][21]_i_2_n_0 ),
        .I1(\dataI_reg[3][21] ),
        .I2(\dataI_reg[0][22]_0 ),
        .I3(dataI[189]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[0][23] [21]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[0][21]_i_2 
       (.I0(dataI[189]),
        .I1(mul2I_out[21]),
        .I2(\dataI_reg[0][22]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[0][21]_i_3_n_0 ),
        .O(\dataI[0][21]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[0][21]_i_3 
       (.I0(mul1I_out[21]),
        .I1(\dataI_reg[0][23]_1 ),
        .I2(Q[1]),
        .I3(dataI[189]),
        .O(\dataI[0][21]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[0][22]_i_1 
       (.I0(\dataI[0][22]_i_2_n_0 ),
        .I1(\dataI_reg[0][22] ),
        .I2(\dataI_reg[0][22]_0 ),
        .I3(dataI[190]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[0][23] [22]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[0][22]_i_2 
       (.I0(dataI[190]),
        .I1(mul2I_out[22]),
        .I2(\dataI_reg[0][22]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[0][22]_i_4_n_0 ),
        .O(\dataI[0][22]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[0][22]_i_4 
       (.I0(mul1I_out[22]),
        .I1(\dataI_reg[0][23]_1 ),
        .I2(Q[1]),
        .I3(dataI[190]),
        .O(\dataI[0][22]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFE040)) 
    \dataI[0][23]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(dataI[191]),
        .I2(\state_reg[1]_0 ),
        .I3(\dataI[0][23]_i_2_n_0 ),
        .I4(\dataI_reg[0][23]_0 ),
        .O(\dataI_reg[0][23] [23]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dataI[0][23]_i_2 
       (.I0(mul2I_out[23]),
        .I1(\dataI_reg[0][22]_1 ),
        .I2(mul1I_out[23]),
        .I3(\dataI_reg[0][23]_1 ),
        .I4(Q[1]),
        .I5(dataI[191]),
        .O(\dataI[0][23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[0][2]_i_1 
       (.I0(\dataI[0][2]_i_2_n_0 ),
        .I1(\dataI_reg[0][2] ),
        .I2(\dataI_reg[0][22]_0 ),
        .I3(dataI[170]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[0][23] [2]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[0][2]_i_2 
       (.I0(dataI[170]),
        .I1(mul2I_out[2]),
        .I2(\dataI_reg[0][22]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[0][2]_i_3_n_0 ),
        .O(\dataI[0][2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[0][2]_i_3 
       (.I0(mul1I_out[2]),
        .I1(\dataI_reg[0][23]_1 ),
        .I2(Q[1]),
        .I3(dataI[170]),
        .O(\dataI[0][2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[0][3]_i_1 
       (.I0(\dataI[0][3]_i_2_n_0 ),
        .I1(\dataI_reg[0][3] ),
        .I2(\dataI_reg[0][22]_0 ),
        .I3(dataI[171]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[0][23] [3]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[0][3]_i_2 
       (.I0(dataI[171]),
        .I1(mul2I_out[3]),
        .I2(\dataI_reg[0][22]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[0][3]_i_3_n_0 ),
        .O(\dataI[0][3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[0][3]_i_3 
       (.I0(mul1I_out[3]),
        .I1(\dataI_reg[0][23]_1 ),
        .I2(Q[1]),
        .I3(dataI[171]),
        .O(\dataI[0][3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[0][4]_i_1 
       (.I0(\dataI[0][4]_i_2_n_0 ),
        .I1(\dataI_reg[0][4] ),
        .I2(\dataI_reg[0][22]_0 ),
        .I3(dataI[172]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[0][23] [4]));
  LUT6 #(
    .INIT(64'h8D008D00FF000000)) 
    \dataI[0][4]_i_2 
       (.I0(\dataI_reg[0][22]_1 ),
        .I1(mul2I_out[4]),
        .I2(\dataI[0][4]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[172]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[0][4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[0][4]_i_3 
       (.I0(mul1I_out[4]),
        .I1(\dataI_reg[0][23]_1 ),
        .I2(Q[1]),
        .I3(dataI[172]),
        .O(\dataI[0][4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[0][5]_i_1 
       (.I0(\dataI[0][5]_i_2_n_0 ),
        .I1(\dataI_reg[0][5] ),
        .I2(\dataI_reg[0][22]_0 ),
        .I3(dataI[173]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[0][23] [5]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[0][5]_i_2 
       (.I0(dataI[173]),
        .I1(mul2I_out[5]),
        .I2(\dataI_reg[0][22]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[0][5]_i_3_n_0 ),
        .O(\dataI[0][5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[0][5]_i_3 
       (.I0(mul1I_out[5]),
        .I1(\dataI_reg[0][23]_1 ),
        .I2(Q[1]),
        .I3(dataI[173]),
        .O(\dataI[0][5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[0][6]_i_1 
       (.I0(\dataI[0][6]_i_2_n_0 ),
        .I1(\dataI_reg[0][6] ),
        .I2(\dataI_reg[0][22]_0 ),
        .I3(dataI[174]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[0][23] [6]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[0][6]_i_2 
       (.I0(dataI[174]),
        .I1(mul2I_out[6]),
        .I2(\dataI_reg[0][22]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[0][6]_i_3_n_0 ),
        .O(\dataI[0][6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[0][6]_i_3 
       (.I0(mul1I_out[6]),
        .I1(\dataI_reg[0][23]_1 ),
        .I2(Q[1]),
        .I3(dataI[174]),
        .O(\dataI[0][6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[0][7]_i_1 
       (.I0(\dataI[0][7]_i_2_n_0 ),
        .I1(\dataI_reg[0][7] ),
        .I2(\dataI_reg[0][22]_0 ),
        .I3(dataI[175]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[0][23] [7]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[0][7]_i_2 
       (.I0(dataI[175]),
        .I1(mul2I_out[7]),
        .I2(\dataI_reg[0][22]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[0][7]_i_3_n_0 ),
        .O(\dataI[0][7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[0][7]_i_3 
       (.I0(mul1I_out[7]),
        .I1(\dataI_reg[0][23]_1 ),
        .I2(Q[1]),
        .I3(dataI[175]),
        .O(\dataI[0][7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[0][8]_i_1 
       (.I0(\dataI[0][8]_i_2_n_0 ),
        .I1(\dataI_reg[0][8] ),
        .I2(\dataI_reg[0][22]_0 ),
        .I3(dataI[176]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[0][23] [8]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataI[0][8]_i_2 
       (.I0(mul2I_out[8]),
        .I1(\dataI_reg[0][22]_1 ),
        .I2(\dataI[0][8]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[176]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[0][8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[0][8]_i_3 
       (.I0(mul1I_out[8]),
        .I1(\dataI_reg[0][23]_1 ),
        .I2(Q[1]),
        .I3(dataI[176]),
        .O(\dataI[0][8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[0][9]_i_1 
       (.I0(\dataI[0][9]_i_2_n_0 ),
        .I1(\dataI_reg[0][9] ),
        .I2(\dataI_reg[0][22]_0 ),
        .I3(dataI[177]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[0][23] [9]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[0][9]_i_2 
       (.I0(dataI[177]),
        .I1(mul2I_out[9]),
        .I2(\dataI_reg[0][22]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[0][9]_i_3_n_0 ),
        .O(\dataI[0][9]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[0][9]_i_3 
       (.I0(mul1I_out[9]),
        .I1(\dataI_reg[0][23]_1 ),
        .I2(Q[1]),
        .I3(dataI[177]),
        .O(\dataI[0][9]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[1][0]_i_1 
       (.I0(\dataI[1][0]_i_2_n_0 ),
        .I1(\dataI_reg[0][0] ),
        .I2(\dataI_reg[1][23]_1 ),
        .I3(dataI[144]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[1][23] [0]));
  LUT6 #(
    .INIT(64'h8D008D00FF000000)) 
    \dataI[1][0]_i_2 
       (.I0(\dataI_reg[1][23]_2 ),
        .I1(mul2I_out[0]),
        .I2(\dataI[1][0]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[144]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[1][0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[1][0]_i_3 
       (.I0(mul1I_out[0]),
        .I1(\dataI[1][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[144]),
        .O(\dataI[1][0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[1][10]_i_1 
       (.I0(\dataI[1][10]_i_2_n_0 ),
        .I1(\dataI_reg[0][10] ),
        .I2(\dataI_reg[1][23]_1 ),
        .I3(dataI[154]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[1][23] [10]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataI[1][10]_i_2 
       (.I0(mul2I_out[10]),
        .I1(\dataI_reg[1][23]_2 ),
        .I2(\dataI[1][10]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[154]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[1][10]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[1][10]_i_3 
       (.I0(mul1I_out[10]),
        .I1(\dataI[1][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[154]),
        .O(\dataI[1][10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[1][11]_i_1 
       (.I0(\dataI[1][11]_i_2_n_0 ),
        .I1(\dataI_reg[0][11] ),
        .I2(\dataI_reg[1][23]_1 ),
        .I3(dataI[155]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[1][23] [11]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataI[1][11]_i_2 
       (.I0(mul2I_out[11]),
        .I1(\dataI_reg[1][23]_2 ),
        .I2(\dataI[1][11]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[155]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[1][11]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[1][11]_i_3 
       (.I0(mul1I_out[11]),
        .I1(\dataI[1][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[155]),
        .O(\dataI[1][11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[1][12]_i_1 
       (.I0(\dataI[1][12]_i_2_n_0 ),
        .I1(\dataI_reg[0][12] ),
        .I2(\dataI_reg[1][23]_1 ),
        .I3(dataI[156]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[1][23] [12]));
  LUT6 #(
    .INIT(64'h8D008D00FF000000)) 
    \dataI[1][12]_i_2 
       (.I0(\dataI_reg[1][23]_2 ),
        .I1(mul2I_out[12]),
        .I2(\dataI[1][12]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[156]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[1][12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[1][12]_i_3 
       (.I0(mul1I_out[12]),
        .I1(\dataI[1][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[156]),
        .O(\dataI[1][12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[1][13]_i_1 
       (.I0(\dataI[1][13]_i_2_n_0 ),
        .I1(\dataI_reg[0][13] ),
        .I2(\dataI_reg[1][23]_1 ),
        .I3(dataI[157]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[1][23] [13]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataI[1][13]_i_2 
       (.I0(mul2I_out[13]),
        .I1(\dataI_reg[1][23]_2 ),
        .I2(\dataI[1][13]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[157]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[1][13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[1][13]_i_3 
       (.I0(mul1I_out[13]),
        .I1(\dataI[1][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[157]),
        .O(\dataI[1][13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[1][14]_i_1 
       (.I0(\dataI[1][14]_i_2_n_0 ),
        .I1(\dataI_reg[0][14] ),
        .I2(\dataI_reg[1][23]_1 ),
        .I3(dataI[158]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[1][23] [14]));
  LUT6 #(
    .INIT(64'hB800B800FF000000)) 
    \dataI[1][14]_i_2 
       (.I0(mul2I_out[14]),
        .I1(\dataI_reg[1][23]_2 ),
        .I2(\dataI[1][14]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[158]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[1][14]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[1][14]_i_3 
       (.I0(mul1I_out[14]),
        .I1(\dataI[1][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[158]),
        .O(\dataI[1][14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[1][15]_i_1 
       (.I0(\dataI[1][15]_i_2_n_0 ),
        .I1(\dataI_reg[0][15] ),
        .I2(\dataI_reg[1][23]_1 ),
        .I3(dataI[159]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[1][23] [15]));
  LUT6 #(
    .INIT(64'h8D008D00FF000000)) 
    \dataI[1][15]_i_2 
       (.I0(\dataI_reg[1][23]_2 ),
        .I1(mul2I_out[15]),
        .I2(\dataI[1][15]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[159]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[1][15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[1][15]_i_3 
       (.I0(mul1I_out[15]),
        .I1(\dataI[1][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[159]),
        .O(\dataI[1][15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[1][16]_i_1 
       (.I0(\dataI[1][16]_i_2_n_0 ),
        .I1(\dataI_reg[0][16] ),
        .I2(\dataI_reg[1][23]_1 ),
        .I3(dataI[160]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[1][23] [16]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[1][16]_i_2 
       (.I0(dataI[160]),
        .I1(mul2I_out[16]),
        .I2(\dataI_reg[1][23]_2 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[1][16]_i_3_n_0 ),
        .O(\dataI[1][16]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[1][16]_i_3 
       (.I0(mul1I_out[16]),
        .I1(\dataI[1][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[160]),
        .O(\dataI[1][16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[1][17]_i_1 
       (.I0(\dataI[1][17]_i_2_n_0 ),
        .I1(\dataI_reg[0][17] ),
        .I2(\dataI_reg[1][23]_1 ),
        .I3(dataI[161]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[1][23] [17]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataI[1][17]_i_2 
       (.I0(mul2I_out[17]),
        .I1(\dataI_reg[1][23]_2 ),
        .I2(\dataI[1][17]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[161]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[1][17]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[1][17]_i_3 
       (.I0(mul1I_out[17]),
        .I1(\dataI[1][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[161]),
        .O(\dataI[1][17]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[1][18]_i_1 
       (.I0(\dataI[1][18]_i_2_n_0 ),
        .I1(\dataI_reg[0][18] ),
        .I2(\dataI_reg[1][23]_1 ),
        .I3(dataI[162]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[1][23] [18]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[1][18]_i_2 
       (.I0(dataI[162]),
        .I1(mul2I_out[18]),
        .I2(\dataI_reg[1][23]_2 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[1][18]_i_3_n_0 ),
        .O(\dataI[1][18]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[1][18]_i_3 
       (.I0(mul1I_out[18]),
        .I1(\dataI[1][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[162]),
        .O(\dataI[1][18]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[1][19]_i_1 
       (.I0(\dataI[1][19]_i_2_n_0 ),
        .I1(\dataI_reg[0][19] ),
        .I2(\dataI_reg[1][23]_1 ),
        .I3(dataI[163]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[1][23] [19]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[1][19]_i_2 
       (.I0(dataI[163]),
        .I1(mul2I_out[19]),
        .I2(\dataI_reg[1][23]_2 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[1][19]_i_3_n_0 ),
        .O(\dataI[1][19]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[1][19]_i_3 
       (.I0(mul1I_out[19]),
        .I1(\dataI[1][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[163]),
        .O(\dataI[1][19]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[1][1]_i_1 
       (.I0(\dataI[1][1]_i_2_n_0 ),
        .I1(\dataI_reg[0][1] ),
        .I2(\dataI_reg[1][23]_1 ),
        .I3(dataI[145]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[1][23] [1]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataI[1][1]_i_2 
       (.I0(mul2I_out[1]),
        .I1(\dataI_reg[1][23]_2 ),
        .I2(\dataI[1][1]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[145]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[1][1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[1][1]_i_3 
       (.I0(mul1I_out[1]),
        .I1(\dataI[1][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[145]),
        .O(\dataI[1][1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[1][20]_i_1 
       (.I0(\dataI[1][20]_i_2_n_0 ),
        .I1(\dataI_reg[0][20] ),
        .I2(\dataI_reg[1][23]_1 ),
        .I3(dataI[164]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[1][23] [20]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[1][20]_i_2 
       (.I0(dataI[164]),
        .I1(mul2I_out[20]),
        .I2(\dataI_reg[1][23]_2 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[1][20]_i_3_n_0 ),
        .O(\dataI[1][20]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[1][20]_i_3 
       (.I0(mul1I_out[20]),
        .I1(\dataI[1][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[164]),
        .O(\dataI[1][20]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[1][21]_i_1 
       (.I0(\dataI[1][21]_i_2_n_0 ),
        .I1(\dataI_reg[3][21] ),
        .I2(\dataI_reg[1][23]_1 ),
        .I3(dataI[165]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[1][23] [21]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataI[1][21]_i_2 
       (.I0(mul2I_out[21]),
        .I1(\dataI_reg[1][23]_2 ),
        .I2(\dataI[1][21]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[165]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[1][21]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[1][21]_i_3 
       (.I0(mul1I_out[21]),
        .I1(\dataI[1][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[165]),
        .O(\dataI[1][21]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[1][22]_i_1 
       (.I0(\dataI[1][22]_i_2_n_0 ),
        .I1(\dataI_reg[0][22] ),
        .I2(\dataI_reg[1][23]_1 ),
        .I3(dataI[166]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[1][23] [22]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[1][22]_i_2 
       (.I0(dataI[166]),
        .I1(mul2I_out[22]),
        .I2(\dataI_reg[1][23]_2 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[1][22]_i_3_n_0 ),
        .O(\dataI[1][22]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[1][22]_i_3 
       (.I0(mul1I_out[22]),
        .I1(\dataI[1][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[166]),
        .O(\dataI[1][22]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[1][23]_i_1 
       (.I0(\dataI[1][23]_i_2_n_0 ),
        .I1(\dataI_reg[1][23]_0 ),
        .I2(\dataI_reg[1][23]_1 ),
        .I3(dataI[167]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[1][23] [23]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[1][23]_i_2 
       (.I0(dataI[167]),
        .I1(mul2I_out[23]),
        .I2(\dataI_reg[1][23]_2 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[1][23]_i_5_n_0 ),
        .O(\dataI[1][23]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[1][23]_i_5 
       (.I0(mul1I_out[23]),
        .I1(\dataI[1][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[167]),
        .O(\dataI[1][23]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[1][2]_i_1 
       (.I0(\dataI[1][2]_i_2_n_0 ),
        .I1(\dataI_reg[0][2] ),
        .I2(\dataI_reg[1][23]_1 ),
        .I3(dataI[146]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[1][23] [2]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataI[1][2]_i_2 
       (.I0(mul2I_out[2]),
        .I1(\dataI_reg[1][23]_2 ),
        .I2(\dataI[1][2]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[146]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[1][2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[1][2]_i_3 
       (.I0(mul1I_out[2]),
        .I1(\dataI[1][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[146]),
        .O(\dataI[1][2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[1][3]_i_1 
       (.I0(\dataI[1][3]_i_2_n_0 ),
        .I1(\dataI_reg[0][3] ),
        .I2(\dataI_reg[1][23]_1 ),
        .I3(dataI[147]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[1][23] [3]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataI[1][3]_i_2 
       (.I0(mul2I_out[3]),
        .I1(\dataI_reg[1][23]_2 ),
        .I2(\dataI[1][3]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[147]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[1][3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[1][3]_i_3 
       (.I0(mul1I_out[3]),
        .I1(\dataI[1][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[147]),
        .O(\dataI[1][3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[1][4]_i_1 
       (.I0(\dataI[1][4]_i_2_n_0 ),
        .I1(\dataI_reg[0][4] ),
        .I2(\dataI_reg[1][23]_1 ),
        .I3(dataI[148]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[1][23] [4]));
  LUT6 #(
    .INIT(64'h8D008D00FF000000)) 
    \dataI[1][4]_i_2 
       (.I0(\dataI_reg[1][23]_2 ),
        .I1(mul2I_out[4]),
        .I2(\dataI[1][4]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[148]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[1][4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[1][4]_i_3 
       (.I0(mul1I_out[4]),
        .I1(\dataI[1][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[148]),
        .O(\dataI[1][4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[1][5]_i_1 
       (.I0(\dataI[1][5]_i_2_n_0 ),
        .I1(\dataI_reg[0][5] ),
        .I2(\dataI_reg[1][23]_1 ),
        .I3(dataI[149]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[1][23] [5]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataI[1][5]_i_2 
       (.I0(mul2I_out[5]),
        .I1(\dataI_reg[1][23]_2 ),
        .I2(\dataI[1][5]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[149]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[1][5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[1][5]_i_3 
       (.I0(mul1I_out[5]),
        .I1(\dataI[1][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[149]),
        .O(\dataI[1][5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[1][6]_i_1 
       (.I0(\dataI[1][6]_i_2_n_0 ),
        .I1(\dataI_reg[0][6] ),
        .I2(\dataI_reg[1][23]_1 ),
        .I3(dataI[150]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[1][23] [6]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataI[1][6]_i_2 
       (.I0(mul2I_out[6]),
        .I1(\dataI_reg[1][23]_2 ),
        .I2(\dataI[1][6]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[150]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[1][6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[1][6]_i_3 
       (.I0(mul1I_out[6]),
        .I1(\dataI[1][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[150]),
        .O(\dataI[1][6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[1][7]_i_1 
       (.I0(\dataI[1][7]_i_2_n_0 ),
        .I1(\dataI_reg[0][7] ),
        .I2(\dataI_reg[1][23]_1 ),
        .I3(dataI[151]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[1][23] [7]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataI[1][7]_i_2 
       (.I0(mul2I_out[7]),
        .I1(\dataI_reg[1][23]_2 ),
        .I2(\dataI[1][7]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[151]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[1][7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[1][7]_i_3 
       (.I0(mul1I_out[7]),
        .I1(\dataI[1][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[151]),
        .O(\dataI[1][7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[1][8]_i_1 
       (.I0(\dataI[1][8]_i_2_n_0 ),
        .I1(\dataI_reg[0][8] ),
        .I2(\dataI_reg[1][23]_1 ),
        .I3(dataI[152]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[1][23] [8]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataI[1][8]_i_2 
       (.I0(mul2I_out[8]),
        .I1(\dataI_reg[1][23]_2 ),
        .I2(\dataI[1][8]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[152]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[1][8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[1][8]_i_3 
       (.I0(mul1I_out[8]),
        .I1(\dataI[1][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[152]),
        .O(\dataI[1][8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[1][9]_i_1 
       (.I0(\dataI[1][9]_i_2_n_0 ),
        .I1(\dataI_reg[0][9] ),
        .I2(\dataI_reg[1][23]_1 ),
        .I3(dataI[153]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[1][23] [9]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataI[1][9]_i_2 
       (.I0(mul2I_out[9]),
        .I1(\dataI_reg[1][23]_2 ),
        .I2(\dataI[1][9]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[153]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[1][9]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[1][9]_i_3 
       (.I0(mul1I_out[9]),
        .I1(\dataI[1][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[153]),
        .O(\dataI[1][9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[2][0]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[2][0]_i_2_n_0 ),
        .I2(\dataI_reg[0][0] ),
        .I3(\dataI_reg[2][21] ),
        .I4(dataI[120]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[2][23] [0]));
  LUT6 #(
    .INIT(64'hFFFF00FFB1FFB1FF)) 
    \dataI[2][0]_i_2 
       (.I0(\dataI_reg[2][23]_0 ),
        .I1(\dataI_reg[2][0] ),
        .I2(mul1I_out[0]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(mul2I_out[0]),
        .I5(\dataI_reg[2][23]_2 ),
        .O(\dataI[2][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[2][10]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[2][10]_i_2_n_0 ),
        .I2(\dataI_reg[0][10] ),
        .I3(\dataI_reg[2][21] ),
        .I4(dataI[130]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[2][23] [10]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[2][10]_i_2 
       (.I0(\dataI_reg[2][23]_0 ),
        .I1(\dataI_reg[2][10] ),
        .I2(mul1I_out[10]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[2][23]_2 ),
        .I5(mul2I_out[10]),
        .O(\dataI[2][10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[2][11]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[2][11]_i_2_n_0 ),
        .I2(\dataI_reg[0][11] ),
        .I3(\dataI_reg[2][21] ),
        .I4(dataI[131]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[2][23] [11]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[2][11]_i_2 
       (.I0(\dataI_reg[2][23]_0 ),
        .I1(\dataI_reg[2][11] ),
        .I2(mul1I_out[11]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[2][23]_2 ),
        .I5(mul2I_out[11]),
        .O(\dataI[2][11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[2][12]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[2][12]_i_2_n_0 ),
        .I2(\dataI_reg[0][12] ),
        .I3(\dataI_reg[2][21] ),
        .I4(dataI[132]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[2][23] [12]));
  LUT6 #(
    .INIT(64'hFFFF00FFB1FFB1FF)) 
    \dataI[2][12]_i_2 
       (.I0(\dataI_reg[2][23]_0 ),
        .I1(\dataI_reg[2][12] ),
        .I2(mul1I_out[12]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(mul2I_out[12]),
        .I5(\dataI_reg[2][23]_2 ),
        .O(\dataI[2][12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[2][13]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[2][13]_i_2_n_0 ),
        .I2(\dataI_reg[0][13] ),
        .I3(\dataI_reg[2][21] ),
        .I4(dataI[133]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[2][23] [13]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[2][13]_i_2 
       (.I0(\dataI_reg[2][23]_0 ),
        .I1(\dataI_reg[2][13] ),
        .I2(mul1I_out[13]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[2][23]_2 ),
        .I5(mul2I_out[13]),
        .O(\dataI[2][13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[2][14]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[2][14]_i_2_n_0 ),
        .I2(\dataI_reg[0][14] ),
        .I3(\dataI_reg[2][21] ),
        .I4(dataI[134]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[2][23] [14]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[2][14]_i_2 
       (.I0(\dataI_reg[2][23]_0 ),
        .I1(\dataI_reg[2][14] ),
        .I2(mul1I_out[14]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[2][23]_2 ),
        .I5(mul2I_out[14]),
        .O(\dataI[2][14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[2][15]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[2][15]_i_2_n_0 ),
        .I2(\dataI_reg[0][15] ),
        .I3(\dataI_reg[2][21] ),
        .I4(dataI[135]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[2][23] [15]));
  LUT6 #(
    .INIT(64'hFFFF00FFB1FFB1FF)) 
    \dataI[2][15]_i_2 
       (.I0(\dataI_reg[2][23]_0 ),
        .I1(\dataI_reg[2][15] ),
        .I2(mul1I_out[15]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(mul2I_out[15]),
        .I5(\dataI_reg[2][23]_2 ),
        .O(\dataI[2][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[2][16]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[2][16]_i_2_n_0 ),
        .I2(\dataI_reg[0][16] ),
        .I3(\dataI_reg[2][21] ),
        .I4(dataI[136]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[2][23] [16]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[2][16]_i_2 
       (.I0(\dataI_reg[2][23]_0 ),
        .I1(\dataI_reg[2][16] ),
        .I2(mul1I_out[16]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[2][23]_2 ),
        .I5(mul2I_out[16]),
        .O(\dataI[2][16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[2][17]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[2][17]_i_2_n_0 ),
        .I2(\dataI_reg[0][17] ),
        .I3(\dataI_reg[2][21] ),
        .I4(dataI[137]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[2][23] [17]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[2][17]_i_2 
       (.I0(\dataI_reg[2][23]_0 ),
        .I1(\dataI_reg[2][17] ),
        .I2(mul1I_out[17]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[2][23]_2 ),
        .I5(mul2I_out[17]),
        .O(\dataI[2][17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[2][18]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[2][18]_i_2_n_0 ),
        .I2(\dataI_reg[0][18] ),
        .I3(\dataI_reg[2][21] ),
        .I4(dataI[138]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[2][23] [18]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[2][18]_i_2 
       (.I0(\dataI_reg[2][23]_0 ),
        .I1(\dataI_reg[2][18] ),
        .I2(mul1I_out[18]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[2][23]_2 ),
        .I5(mul2I_out[18]),
        .O(\dataI[2][18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[2][19]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[2][19]_i_2_n_0 ),
        .I2(\dataI_reg[0][19] ),
        .I3(\dataI_reg[2][21] ),
        .I4(dataI[139]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[2][23] [19]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[2][19]_i_2 
       (.I0(\dataI_reg[2][23]_0 ),
        .I1(\dataI_reg[2][19] ),
        .I2(mul1I_out[19]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[2][23]_2 ),
        .I5(mul2I_out[19]),
        .O(\dataI[2][19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[2][1]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[2][1]_i_2_n_0 ),
        .I2(\dataI_reg[0][1] ),
        .I3(\dataI_reg[2][21] ),
        .I4(dataI[121]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[2][23] [1]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[2][1]_i_2 
       (.I0(\dataI_reg[2][23]_0 ),
        .I1(\dataI_reg[2][1] ),
        .I2(mul1I_out[1]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[2][23]_2 ),
        .I5(mul2I_out[1]),
        .O(\dataI[2][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[2][20]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[2][20]_i_2_n_0 ),
        .I2(\dataI_reg[0][20] ),
        .I3(\dataI_reg[2][21] ),
        .I4(dataI[140]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[2][23] [20]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[2][20]_i_2 
       (.I0(\dataI_reg[2][23]_0 ),
        .I1(\dataI_reg[2][20] ),
        .I2(mul1I_out[20]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[2][23]_2 ),
        .I5(mul2I_out[20]),
        .O(\dataI[2][20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[2][21]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[2][21]_i_2_n_0 ),
        .I2(\dataI_reg[3][21] ),
        .I3(\dataI_reg[2][21] ),
        .I4(dataI[141]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[2][23] [21]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[2][21]_i_2 
       (.I0(\dataI_reg[2][23]_0 ),
        .I1(\dataI_reg[2][21]_0 ),
        .I2(mul1I_out[21]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[2][23]_2 ),
        .I5(mul2I_out[21]),
        .O(\dataI[2][21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[2][22]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[2][22]_i_2_n_0 ),
        .I2(\dataI_reg[0][22] ),
        .I3(\dataI_reg[2][21] ),
        .I4(dataI[142]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[2][23] [22]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[2][22]_i_2 
       (.I0(\dataI_reg[2][23]_0 ),
        .I1(\dataI_reg[2][22] ),
        .I2(mul1I_out[22]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[2][23]_2 ),
        .I5(mul2I_out[22]),
        .O(\dataI[2][22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[2][23]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[2][23]_i_2_n_0 ),
        .I2(\dataI_reg[1][23]_0 ),
        .I3(\dataI_reg[2][21] ),
        .I4(dataI[143]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[2][23] [23]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[2][23]_i_2 
       (.I0(\dataI_reg[2][23]_0 ),
        .I1(\dataI_reg[2][23]_1 ),
        .I2(mul1I_out[23]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[2][23]_2 ),
        .I5(mul2I_out[23]),
        .O(\dataI[2][23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[2][2]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[2][2]_i_2_n_0 ),
        .I2(\dataI_reg[0][2] ),
        .I3(\dataI_reg[2][21] ),
        .I4(dataI[122]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[2][23] [2]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[2][2]_i_2 
       (.I0(\dataI_reg[2][23]_0 ),
        .I1(\dataI_reg[2][2] ),
        .I2(mul1I_out[2]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[2][23]_2 ),
        .I5(mul2I_out[2]),
        .O(\dataI[2][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[2][3]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[2][3]_i_2_n_0 ),
        .I2(\dataI_reg[0][3] ),
        .I3(\dataI_reg[2][21] ),
        .I4(dataI[123]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[2][23] [3]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[2][3]_i_2 
       (.I0(\dataI_reg[2][23]_0 ),
        .I1(\dataI_reg[2][3] ),
        .I2(mul1I_out[3]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[2][23]_2 ),
        .I5(mul2I_out[3]),
        .O(\dataI[2][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[2][4]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[2][4]_i_2_n_0 ),
        .I2(\dataI_reg[0][4] ),
        .I3(\dataI_reg[2][21] ),
        .I4(dataI[124]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[2][23] [4]));
  LUT6 #(
    .INIT(64'hFFFF00FFB1FFB1FF)) 
    \dataI[2][4]_i_2 
       (.I0(\dataI_reg[2][23]_0 ),
        .I1(\dataI_reg[2][4] ),
        .I2(mul1I_out[4]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(mul2I_out[4]),
        .I5(\dataI_reg[2][23]_2 ),
        .O(\dataI[2][4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[2][5]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[2][5]_i_2_n_0 ),
        .I2(\dataI_reg[0][5] ),
        .I3(\dataI_reg[2][21] ),
        .I4(dataI[125]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[2][23] [5]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[2][5]_i_2 
       (.I0(\dataI_reg[2][23]_0 ),
        .I1(\dataI_reg[2][5] ),
        .I2(mul1I_out[5]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[2][23]_2 ),
        .I5(mul2I_out[5]),
        .O(\dataI[2][5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[2][6]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[2][6]_i_2_n_0 ),
        .I2(\dataI_reg[0][6] ),
        .I3(\dataI_reg[2][21] ),
        .I4(dataI[126]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[2][23] [6]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[2][6]_i_2 
       (.I0(\dataI_reg[2][23]_0 ),
        .I1(\dataI_reg[2][6] ),
        .I2(mul1I_out[6]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[2][23]_2 ),
        .I5(mul2I_out[6]),
        .O(\dataI[2][6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[2][7]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[2][7]_i_2_n_0 ),
        .I2(\dataI_reg[0][7] ),
        .I3(\dataI_reg[2][21] ),
        .I4(dataI[127]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[2][23] [7]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[2][7]_i_2 
       (.I0(\dataI_reg[2][23]_0 ),
        .I1(\dataI_reg[2][7] ),
        .I2(mul1I_out[7]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[2][23]_2 ),
        .I5(mul2I_out[7]),
        .O(\dataI[2][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[2][8]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[2][8]_i_2_n_0 ),
        .I2(\dataI_reg[0][8] ),
        .I3(\dataI_reg[2][21] ),
        .I4(dataI[128]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[2][23] [8]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[2][8]_i_2 
       (.I0(\dataI_reg[2][23]_0 ),
        .I1(\dataI_reg[2][8] ),
        .I2(mul1I_out[8]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[2][23]_2 ),
        .I5(mul2I_out[8]),
        .O(\dataI[2][8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[2][9]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[2][9]_i_2_n_0 ),
        .I2(\dataI_reg[0][9] ),
        .I3(\dataI_reg[2][21] ),
        .I4(dataI[129]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[2][23] [9]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[2][9]_i_2 
       (.I0(\dataI_reg[2][23]_0 ),
        .I1(\dataI_reg[2][9] ),
        .I2(mul1I_out[9]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[2][23]_2 ),
        .I5(mul2I_out[9]),
        .O(\dataI[2][9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[3][0]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[3][0]_i_2_n_0 ),
        .I2(\dataI_reg[0][0] ),
        .I3(\dataI_reg[3][21]_0 ),
        .I4(dataI[96]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[3][23] [0]));
  LUT6 #(
    .INIT(64'hFFFF00FFB1FFB1FF)) 
    \dataI[3][0]_i_2 
       (.I0(\dataI_reg[3][23]_0 ),
        .I1(\dataI_reg[3][0] ),
        .I2(mul1I_out[0]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(mul2I_out[0]),
        .I5(\dataI_reg[3][23]_2 ),
        .O(\dataI[3][0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[3][10]_i_1 
       (.I0(\dataI[3][10]_i_2_n_0 ),
        .I1(\dataI_reg[0][10] ),
        .I2(\dataI_reg[3][21]_0 ),
        .I3(dataI[106]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[3][23] [10]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[3][10]_i_2 
       (.I0(dataI[106]),
        .I1(mul2I_out[10]),
        .I2(\dataI_reg[3][23]_2 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[3][10]_i_3_n_0 ),
        .O(\dataI[3][10]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[3][10]_i_3 
       (.I0(mul1I_out[10]),
        .I1(\dataI_reg[3][23]_0 ),
        .I2(Q[1]),
        .I3(dataI[106]),
        .O(\dataI[3][10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[3][11]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[3][11]_i_2_n_0 ),
        .I2(\dataI_reg[0][11] ),
        .I3(\dataI_reg[3][21]_0 ),
        .I4(dataI[107]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[3][23] [11]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[3][11]_i_2 
       (.I0(\dataI_reg[3][23]_0 ),
        .I1(\dataI_reg[3][11] ),
        .I2(mul1I_out[11]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[3][23]_2 ),
        .I5(mul2I_out[11]),
        .O(\dataI[3][11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[3][12]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[3][12]_i_2_n_0 ),
        .I2(\dataI_reg[0][12] ),
        .I3(\dataI_reg[3][21]_0 ),
        .I4(dataI[108]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[3][23] [12]));
  LUT6 #(
    .INIT(64'hFFFF00FFB1FFB1FF)) 
    \dataI[3][12]_i_2 
       (.I0(\dataI_reg[3][23]_0 ),
        .I1(\dataI_reg[3][12] ),
        .I2(mul1I_out[12]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(mul2I_out[12]),
        .I5(\dataI_reg[3][23]_2 ),
        .O(\dataI[3][12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[3][13]_i_1 
       (.I0(\dataI[3][13]_i_2_n_0 ),
        .I1(\dataI_reg[0][13] ),
        .I2(\dataI_reg[3][21]_0 ),
        .I3(dataI[109]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[3][23] [13]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[3][13]_i_2 
       (.I0(dataI[109]),
        .I1(mul2I_out[13]),
        .I2(\dataI_reg[3][23]_2 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[3][13]_i_3_n_0 ),
        .O(\dataI[3][13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[3][13]_i_3 
       (.I0(mul1I_out[13]),
        .I1(\dataI_reg[3][23]_0 ),
        .I2(Q[1]),
        .I3(dataI[109]),
        .O(\dataI[3][13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[3][14]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[3][14]_i_2_n_0 ),
        .I2(\dataI_reg[0][14] ),
        .I3(\dataI_reg[3][21]_0 ),
        .I4(dataI[110]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[3][23] [14]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[3][14]_i_2 
       (.I0(\dataI_reg[3][23]_0 ),
        .I1(\dataI_reg[3][14] ),
        .I2(mul1I_out[14]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[3][23]_2 ),
        .I5(mul2I_out[14]),
        .O(\dataI[3][14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[3][15]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[3][15]_i_2_n_0 ),
        .I2(\dataI_reg[0][15] ),
        .I3(\dataI_reg[3][21]_0 ),
        .I4(dataI[111]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[3][23] [15]));
  LUT6 #(
    .INIT(64'hFFFF00FFB1FFB1FF)) 
    \dataI[3][15]_i_2 
       (.I0(\dataI_reg[3][23]_0 ),
        .I1(\dataI_reg[3][15] ),
        .I2(mul1I_out[15]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(mul2I_out[15]),
        .I5(\dataI_reg[3][23]_2 ),
        .O(\dataI[3][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[3][16]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[3][16]_i_2_n_0 ),
        .I2(\dataI_reg[0][16] ),
        .I3(\dataI_reg[3][21]_0 ),
        .I4(dataI[112]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[3][23] [16]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[3][16]_i_2 
       (.I0(\dataI_reg[3][23]_0 ),
        .I1(\dataI_reg[3][16] ),
        .I2(mul1I_out[16]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[3][23]_2 ),
        .I5(mul2I_out[16]),
        .O(\dataI[3][16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[3][17]_i_1 
       (.I0(\dataI[3][17]_i_2_n_0 ),
        .I1(\dataI_reg[0][17] ),
        .I2(\dataI_reg[3][21]_0 ),
        .I3(dataI[113]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[3][23] [17]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[3][17]_i_2 
       (.I0(dataI[113]),
        .I1(mul2I_out[17]),
        .I2(\dataI_reg[3][23]_2 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[3][17]_i_3_n_0 ),
        .O(\dataI[3][17]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[3][17]_i_3 
       (.I0(mul1I_out[17]),
        .I1(\dataI_reg[3][23]_0 ),
        .I2(Q[1]),
        .I3(dataI[113]),
        .O(\dataI[3][17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[3][18]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[3][18]_i_2_n_0 ),
        .I2(\dataI_reg[0][18] ),
        .I3(\dataI_reg[3][21]_0 ),
        .I4(dataI[114]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[3][23] [18]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[3][18]_i_2 
       (.I0(\dataI_reg[3][23]_0 ),
        .I1(\dataI_reg[3][18] ),
        .I2(mul1I_out[18]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[3][23]_2 ),
        .I5(mul2I_out[18]),
        .O(\dataI[3][18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[3][19]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[3][19]_i_2_n_0 ),
        .I2(\dataI_reg[0][19] ),
        .I3(\dataI_reg[3][21]_0 ),
        .I4(dataI[115]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[3][23] [19]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[3][19]_i_2 
       (.I0(\dataI_reg[3][23]_0 ),
        .I1(\dataI_reg[3][19] ),
        .I2(mul1I_out[19]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[3][23]_2 ),
        .I5(mul2I_out[19]),
        .O(\dataI[3][19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[3][1]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[3][1]_i_2_n_0 ),
        .I2(\dataI_reg[0][1] ),
        .I3(\dataI_reg[3][21]_0 ),
        .I4(dataI[97]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[3][23] [1]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[3][1]_i_2 
       (.I0(\dataI_reg[3][23]_0 ),
        .I1(\dataI_reg[3][1] ),
        .I2(mul1I_out[1]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[3][23]_2 ),
        .I5(mul2I_out[1]),
        .O(\dataI[3][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[3][20]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[3][20]_i_2_n_0 ),
        .I2(\dataI_reg[0][20] ),
        .I3(\dataI_reg[3][21]_0 ),
        .I4(dataI[116]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[3][23] [20]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[3][20]_i_2 
       (.I0(\dataI_reg[3][23]_0 ),
        .I1(\dataI_reg[3][20] ),
        .I2(mul1I_out[20]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[3][23]_2 ),
        .I5(mul2I_out[20]),
        .O(\dataI[3][20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[3][21]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[3][21]_i_2_n_0 ),
        .I2(\dataI_reg[3][21] ),
        .I3(\dataI_reg[3][21]_0 ),
        .I4(dataI[117]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[3][23] [21]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[3][21]_i_2 
       (.I0(\dataI_reg[3][23]_0 ),
        .I1(\dataI_reg[3][21]_1 ),
        .I2(mul1I_out[21]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[3][23]_2 ),
        .I5(mul2I_out[21]),
        .O(\dataI[3][21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[3][22]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[3][22]_i_2_n_0 ),
        .I2(\dataI_reg[0][22] ),
        .I3(\dataI_reg[3][21]_0 ),
        .I4(dataI[118]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[3][23] [22]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[3][22]_i_2 
       (.I0(\dataI_reg[3][23]_0 ),
        .I1(\dataI_reg[3][22] ),
        .I2(mul1I_out[22]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[3][23]_2 ),
        .I5(mul2I_out[22]),
        .O(\dataI[3][22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[3][23]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[3][23]_i_2_n_0 ),
        .I2(\dataI_reg[1][23]_0 ),
        .I3(\dataI_reg[3][21]_0 ),
        .I4(dataI[119]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[3][23] [23]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[3][23]_i_2 
       (.I0(\dataI_reg[3][23]_0 ),
        .I1(\dataI_reg[3][23]_1 ),
        .I2(mul1I_out[23]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[3][23]_2 ),
        .I5(mul2I_out[23]),
        .O(\dataI[3][23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[3][2]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[3][2]_i_2_n_0 ),
        .I2(\dataI_reg[0][2] ),
        .I3(\dataI_reg[3][21]_0 ),
        .I4(dataI[98]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[3][23] [2]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[3][2]_i_2 
       (.I0(\dataI_reg[3][23]_0 ),
        .I1(\dataI_reg[3][2] ),
        .I2(mul1I_out[2]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[3][23]_2 ),
        .I5(mul2I_out[2]),
        .O(\dataI[3][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[3][3]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[3][3]_i_2_n_0 ),
        .I2(\dataI_reg[0][3] ),
        .I3(\dataI_reg[3][21]_0 ),
        .I4(dataI[99]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[3][23] [3]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[3][3]_i_2 
       (.I0(\dataI_reg[3][23]_0 ),
        .I1(\dataI_reg[3][3] ),
        .I2(mul1I_out[3]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[3][23]_2 ),
        .I5(mul2I_out[3]),
        .O(\dataI[3][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[3][4]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[3][4]_i_2_n_0 ),
        .I2(\dataI_reg[0][4] ),
        .I3(\dataI_reg[3][21]_0 ),
        .I4(dataI[100]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[3][23] [4]));
  LUT6 #(
    .INIT(64'hFFFF00FFB1FFB1FF)) 
    \dataI[3][4]_i_2 
       (.I0(\dataI_reg[3][23]_0 ),
        .I1(\dataI_reg[3][4] ),
        .I2(mul1I_out[4]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(mul2I_out[4]),
        .I5(\dataI_reg[3][23]_2 ),
        .O(\dataI[3][4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[3][5]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[3][5]_i_2_n_0 ),
        .I2(\dataI_reg[0][5] ),
        .I3(\dataI_reg[3][21]_0 ),
        .I4(dataI[101]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[3][23] [5]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[3][5]_i_2 
       (.I0(\dataI_reg[3][23]_0 ),
        .I1(\dataI_reg[3][5] ),
        .I2(mul1I_out[5]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[3][23]_2 ),
        .I5(mul2I_out[5]),
        .O(\dataI[3][5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[3][6]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[3][6]_i_2_n_0 ),
        .I2(\dataI_reg[0][6] ),
        .I3(\dataI_reg[3][21]_0 ),
        .I4(dataI[102]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[3][23] [6]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[3][6]_i_2 
       (.I0(\dataI_reg[3][23]_0 ),
        .I1(\dataI_reg[3][6] ),
        .I2(mul1I_out[6]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[3][23]_2 ),
        .I5(mul2I_out[6]),
        .O(\dataI[3][6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[3][7]_i_1 
       (.I0(\dataI[3][7]_i_2_n_0 ),
        .I1(\dataI_reg[0][7] ),
        .I2(\dataI_reg[3][21]_0 ),
        .I3(dataI[103]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[3][23] [7]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[3][7]_i_2 
       (.I0(dataI[103]),
        .I1(mul2I_out[7]),
        .I2(\dataI_reg[3][23]_2 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[3][7]_i_3_n_0 ),
        .O(\dataI[3][7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[3][7]_i_3 
       (.I0(mul1I_out[7]),
        .I1(\dataI_reg[3][23]_0 ),
        .I2(Q[1]),
        .I3(dataI[103]),
        .O(\dataI[3][7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[3][8]_i_1 
       (.I0(\dataI[3][8]_i_2_n_0 ),
        .I1(\dataI_reg[0][8] ),
        .I2(\dataI_reg[3][21]_0 ),
        .I3(dataI[104]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[3][23] [8]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[3][8]_i_2 
       (.I0(dataI[104]),
        .I1(mul2I_out[8]),
        .I2(\dataI_reg[3][23]_2 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[3][8]_i_3_n_0 ),
        .O(\dataI[3][8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[3][8]_i_3 
       (.I0(mul1I_out[8]),
        .I1(\dataI_reg[3][23]_0 ),
        .I2(Q[1]),
        .I3(dataI[104]),
        .O(\dataI[3][8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[3][9]_i_1 
       (.I0(\dataI[3][9]_i_2_n_0 ),
        .I1(\dataI_reg[0][9] ),
        .I2(\dataI_reg[3][21]_0 ),
        .I3(dataI[105]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[3][23] [9]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[3][9]_i_2 
       (.I0(dataI[105]),
        .I1(mul2I_out[9]),
        .I2(\dataI_reg[3][23]_2 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[3][9]_i_3_n_0 ),
        .O(\dataI[3][9]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[3][9]_i_3 
       (.I0(mul1I_out[9]),
        .I1(\dataI_reg[3][23]_0 ),
        .I2(Q[1]),
        .I3(dataI[105]),
        .O(\dataI[3][9]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[4][0]_i_1 
       (.I0(\dataI[4][0]_i_2_n_0 ),
        .I1(\dataI_reg[0][0] ),
        .I2(\dataI_reg[4][23]_0 ),
        .I3(dataI[72]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[4][23] [0]));
  LUT6 #(
    .INIT(64'h8D008D00FF000000)) 
    \dataI[4][0]_i_2 
       (.I0(\dataI_reg[4][23]_1 ),
        .I1(mul2I_out[0]),
        .I2(\dataI[4][0]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[72]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[4][0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[4][0]_i_3 
       (.I0(mul1I_out[0]),
        .I1(\dataI[4][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[72]),
        .O(\dataI[4][0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[4][10]_i_1 
       (.I0(\dataI[4][10]_i_2_n_0 ),
        .I1(\dataI_reg[0][10] ),
        .I2(\dataI_reg[4][23]_0 ),
        .I3(dataI[82]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[4][23] [10]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataI[4][10]_i_2 
       (.I0(mul2I_out[10]),
        .I1(\dataI_reg[4][23]_1 ),
        .I2(\dataI[4][10]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[82]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[4][10]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[4][10]_i_3 
       (.I0(mul1I_out[10]),
        .I1(\dataI[4][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[82]),
        .O(\dataI[4][10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[4][11]_i_1 
       (.I0(\dataI[4][11]_i_2_n_0 ),
        .I1(\dataI_reg[0][11] ),
        .I2(\dataI_reg[4][23]_0 ),
        .I3(dataI[83]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[4][23] [11]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[4][11]_i_2 
       (.I0(dataI[83]),
        .I1(mul2I_out[11]),
        .I2(\dataI_reg[4][23]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[4][11]_i_3_n_0 ),
        .O(\dataI[4][11]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[4][11]_i_3 
       (.I0(mul1I_out[11]),
        .I1(\dataI[4][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[83]),
        .O(\dataI[4][11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[4][12]_i_1 
       (.I0(\dataI[4][12]_i_2_n_0 ),
        .I1(\dataI_reg[0][12] ),
        .I2(\dataI_reg[4][23]_0 ),
        .I3(dataI[84]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[4][23] [12]));
  LUT6 #(
    .INIT(64'h8D008D00FF000000)) 
    \dataI[4][12]_i_2 
       (.I0(\dataI_reg[4][23]_1 ),
        .I1(mul2I_out[12]),
        .I2(\dataI[4][12]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[84]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[4][12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[4][12]_i_3 
       (.I0(mul1I_out[12]),
        .I1(\dataI[4][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[84]),
        .O(\dataI[4][12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[4][13]_i_1 
       (.I0(\dataI[4][13]_i_2_n_0 ),
        .I1(\dataI_reg[0][13] ),
        .I2(\dataI_reg[4][23]_0 ),
        .I3(dataI[85]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[4][23] [13]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataI[4][13]_i_2 
       (.I0(mul2I_out[13]),
        .I1(\dataI_reg[4][23]_1 ),
        .I2(\dataI[4][13]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[85]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[4][13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[4][13]_i_3 
       (.I0(mul1I_out[13]),
        .I1(\dataI[4][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[85]),
        .O(\dataI[4][13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[4][14]_i_1 
       (.I0(\dataI[4][14]_i_2_n_0 ),
        .I1(\dataI_reg[0][14] ),
        .I2(\dataI_reg[4][23]_0 ),
        .I3(dataI[86]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[4][23] [14]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[4][14]_i_2 
       (.I0(dataI[86]),
        .I1(mul2I_out[14]),
        .I2(\dataI_reg[4][23]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[4][14]_i_3_n_0 ),
        .O(\dataI[4][14]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[4][14]_i_3 
       (.I0(mul1I_out[14]),
        .I1(\dataI[4][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[86]),
        .O(\dataI[4][14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[4][15]_i_1 
       (.I0(\dataI[4][15]_i_2_n_0 ),
        .I1(\dataI_reg[0][15] ),
        .I2(\dataI_reg[4][23]_0 ),
        .I3(dataI[87]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[4][23] [15]));
  LUT6 #(
    .INIT(64'h8D008D00FF000000)) 
    \dataI[4][15]_i_2 
       (.I0(\dataI_reg[4][23]_1 ),
        .I1(mul2I_out[15]),
        .I2(\dataI[4][15]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[87]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[4][15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[4][15]_i_3 
       (.I0(mul1I_out[15]),
        .I1(\dataI[4][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[87]),
        .O(\dataI[4][15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[4][16]_i_1 
       (.I0(\dataI[4][16]_i_2_n_0 ),
        .I1(\dataI_reg[0][16] ),
        .I2(\dataI_reg[4][23]_0 ),
        .I3(dataI[88]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[4][23] [16]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataI[4][16]_i_2 
       (.I0(mul2I_out[16]),
        .I1(\dataI_reg[4][23]_1 ),
        .I2(\dataI[4][16]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[88]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[4][16]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[4][16]_i_3 
       (.I0(mul1I_out[16]),
        .I1(\dataI[4][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[88]),
        .O(\dataI[4][16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[4][17]_i_1 
       (.I0(\dataI[4][17]_i_2_n_0 ),
        .I1(\dataI_reg[0][17] ),
        .I2(\dataI_reg[4][23]_0 ),
        .I3(dataI[89]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[4][23] [17]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataI[4][17]_i_2 
       (.I0(mul2I_out[17]),
        .I1(\dataI_reg[4][23]_1 ),
        .I2(\dataI[4][17]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[89]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[4][17]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[4][17]_i_3 
       (.I0(mul1I_out[17]),
        .I1(\dataI[4][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[89]),
        .O(\dataI[4][17]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[4][18]_i_1 
       (.I0(\dataI[4][18]_i_2_n_0 ),
        .I1(\dataI_reg[0][18] ),
        .I2(\dataI_reg[4][23]_0 ),
        .I3(dataI[90]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[4][23] [18]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[4][18]_i_2 
       (.I0(dataI[90]),
        .I1(mul2I_out[18]),
        .I2(\dataI_reg[4][23]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[4][18]_i_3_n_0 ),
        .O(\dataI[4][18]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[4][18]_i_3 
       (.I0(mul1I_out[18]),
        .I1(\dataI[4][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[90]),
        .O(\dataI[4][18]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[4][19]_i_1 
       (.I0(\dataI[4][19]_i_2_n_0 ),
        .I1(\dataI_reg[0][19] ),
        .I2(\dataI_reg[4][23]_0 ),
        .I3(dataI[91]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[4][23] [19]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[4][19]_i_2 
       (.I0(dataI[91]),
        .I1(mul2I_out[19]),
        .I2(\dataI_reg[4][23]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[4][19]_i_3_n_0 ),
        .O(\dataI[4][19]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[4][19]_i_3 
       (.I0(mul1I_out[19]),
        .I1(\dataI[4][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[91]),
        .O(\dataI[4][19]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[4][1]_i_1 
       (.I0(\dataI[4][1]_i_2_n_0 ),
        .I1(\dataI_reg[0][1] ),
        .I2(\dataI_reg[4][23]_0 ),
        .I3(dataI[73]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[4][23] [1]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataI[4][1]_i_2 
       (.I0(mul2I_out[1]),
        .I1(\dataI_reg[4][23]_1 ),
        .I2(\dataI[4][1]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[73]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[4][1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[4][1]_i_3 
       (.I0(mul1I_out[1]),
        .I1(\dataI[4][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[73]),
        .O(\dataI[4][1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[4][20]_i_1 
       (.I0(\dataI[4][20]_i_2_n_0 ),
        .I1(\dataI_reg[0][20] ),
        .I2(\dataI_reg[4][23]_0 ),
        .I3(dataI[92]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[4][23] [20]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[4][20]_i_2 
       (.I0(dataI[92]),
        .I1(mul2I_out[20]),
        .I2(\dataI_reg[4][23]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[4][20]_i_3_n_0 ),
        .O(\dataI[4][20]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[4][20]_i_3 
       (.I0(mul1I_out[20]),
        .I1(\dataI[4][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[92]),
        .O(\dataI[4][20]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[4][21]_i_1 
       (.I0(\dataI[4][21]_i_2_n_0 ),
        .I1(\dataI_reg[3][21] ),
        .I2(\dataI_reg[4][23]_0 ),
        .I3(dataI[93]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[4][23] [21]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[4][21]_i_2 
       (.I0(dataI[93]),
        .I1(mul2I_out[21]),
        .I2(\dataI_reg[4][23]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[4][21]_i_3_n_0 ),
        .O(\dataI[4][21]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[4][21]_i_3 
       (.I0(mul1I_out[21]),
        .I1(\dataI[4][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[93]),
        .O(\dataI[4][21]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[4][22]_i_1 
       (.I0(\dataI[4][22]_i_2_n_0 ),
        .I1(\dataI_reg[0][22] ),
        .I2(\dataI_reg[4][23]_0 ),
        .I3(dataI[94]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[4][23] [22]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[4][22]_i_2 
       (.I0(dataI[94]),
        .I1(mul2I_out[22]),
        .I2(\dataI_reg[4][23]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[4][22]_i_3_n_0 ),
        .O(\dataI[4][22]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[4][22]_i_3 
       (.I0(mul1I_out[22]),
        .I1(\dataI[4][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[94]),
        .O(\dataI[4][22]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[4][23]_i_1 
       (.I0(\dataI[4][23]_i_2_n_0 ),
        .I1(\dataI_reg[1][23]_0 ),
        .I2(\dataI_reg[4][23]_0 ),
        .I3(dataI[95]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[4][23] [23]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[4][23]_i_2 
       (.I0(dataI[95]),
        .I1(mul2I_out[23]),
        .I2(\dataI_reg[4][23]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[4][23]_i_5_n_0 ),
        .O(\dataI[4][23]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[4][23]_i_5 
       (.I0(mul1I_out[23]),
        .I1(\dataI[4][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[95]),
        .O(\dataI[4][23]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[4][2]_i_1 
       (.I0(\dataI[4][2]_i_2_n_0 ),
        .I1(\dataI_reg[0][2] ),
        .I2(\dataI_reg[4][23]_0 ),
        .I3(dataI[74]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[4][23] [2]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataI[4][2]_i_2 
       (.I0(mul2I_out[2]),
        .I1(\dataI_reg[4][23]_1 ),
        .I2(\dataI[4][2]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[74]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[4][2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[4][2]_i_3 
       (.I0(mul1I_out[2]),
        .I1(\dataI[4][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[74]),
        .O(\dataI[4][2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[4][3]_i_1 
       (.I0(\dataI[4][3]_i_2_n_0 ),
        .I1(\dataI_reg[0][3] ),
        .I2(\dataI_reg[4][23]_0 ),
        .I3(dataI[75]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[4][23] [3]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[4][3]_i_2 
       (.I0(dataI[75]),
        .I1(mul2I_out[3]),
        .I2(\dataI_reg[4][23]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[4][3]_i_3_n_0 ),
        .O(\dataI[4][3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[4][3]_i_3 
       (.I0(mul1I_out[3]),
        .I1(\dataI[4][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[75]),
        .O(\dataI[4][3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[4][4]_i_1 
       (.I0(\dataI[4][4]_i_2_n_0 ),
        .I1(\dataI_reg[0][4] ),
        .I2(\dataI_reg[4][23]_0 ),
        .I3(dataI[76]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[4][23] [4]));
  LUT6 #(
    .INIT(64'h8D008D00FF000000)) 
    \dataI[4][4]_i_2 
       (.I0(\dataI_reg[4][23]_1 ),
        .I1(mul2I_out[4]),
        .I2(\dataI[4][4]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[76]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[4][4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[4][4]_i_3 
       (.I0(mul1I_out[4]),
        .I1(\dataI[4][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[76]),
        .O(\dataI[4][4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[4][5]_i_1 
       (.I0(\dataI[4][5]_i_2_n_0 ),
        .I1(\dataI_reg[0][5] ),
        .I2(\dataI_reg[4][23]_0 ),
        .I3(dataI[77]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[4][23] [5]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataI[4][5]_i_2 
       (.I0(mul2I_out[5]),
        .I1(\dataI_reg[4][23]_1 ),
        .I2(\dataI[4][5]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[77]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[4][5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[4][5]_i_3 
       (.I0(mul1I_out[5]),
        .I1(\dataI[4][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[77]),
        .O(\dataI[4][5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[4][6]_i_1 
       (.I0(\dataI[4][6]_i_2_n_0 ),
        .I1(\dataI_reg[0][6] ),
        .I2(\dataI_reg[4][23]_0 ),
        .I3(dataI[78]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[4][23] [6]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataI[4][6]_i_2 
       (.I0(mul2I_out[6]),
        .I1(\dataI_reg[4][23]_1 ),
        .I2(\dataI[4][6]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[78]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[4][6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[4][6]_i_3 
       (.I0(mul1I_out[6]),
        .I1(\dataI[4][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[78]),
        .O(\dataI[4][6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[4][7]_i_1 
       (.I0(\dataI[4][7]_i_2_n_0 ),
        .I1(\dataI_reg[0][7] ),
        .I2(\dataI_reg[4][23]_0 ),
        .I3(dataI[79]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[4][23] [7]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[4][7]_i_2 
       (.I0(dataI[79]),
        .I1(mul2I_out[7]),
        .I2(\dataI_reg[4][23]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[4][7]_i_3_n_0 ),
        .O(\dataI[4][7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[4][7]_i_3 
       (.I0(mul1I_out[7]),
        .I1(\dataI[4][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[79]),
        .O(\dataI[4][7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[4][8]_i_1 
       (.I0(\dataI[4][8]_i_2_n_0 ),
        .I1(\dataI_reg[0][8] ),
        .I2(\dataI_reg[4][23]_0 ),
        .I3(dataI[80]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[4][23] [8]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataI[4][8]_i_2 
       (.I0(mul2I_out[8]),
        .I1(\dataI_reg[4][23]_1 ),
        .I2(\dataI[4][8]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[80]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[4][8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[4][8]_i_3 
       (.I0(mul1I_out[8]),
        .I1(\dataI[4][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[80]),
        .O(\dataI[4][8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[4][9]_i_1 
       (.I0(\dataI[4][9]_i_2_n_0 ),
        .I1(\dataI_reg[0][9] ),
        .I2(\dataI_reg[4][23]_0 ),
        .I3(dataI[81]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[4][23] [9]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataI[4][9]_i_2 
       (.I0(mul2I_out[9]),
        .I1(\dataI_reg[4][23]_1 ),
        .I2(\dataI[4][9]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[81]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[4][9]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[4][9]_i_3 
       (.I0(mul1I_out[9]),
        .I1(\dataI[4][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[81]),
        .O(\dataI[4][9]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[5][0]_i_1 
       (.I0(\dataI[5][0]_i_2_n_0 ),
        .I1(\dataI_reg[0][0] ),
        .I2(\dataI_reg[5][23]_0 ),
        .I3(dataI[48]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[5][23] [0]));
  LUT6 #(
    .INIT(64'h8D008D00FF000000)) 
    \dataI[5][0]_i_2 
       (.I0(\dataI_reg[5][23]_1 ),
        .I1(mul2I_out[0]),
        .I2(\dataI[5][0]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[48]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[5][0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[5][0]_i_3 
       (.I0(mul1I_out[0]),
        .I1(\dataI[5][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[48]),
        .O(\dataI[5][0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[5][10]_i_1 
       (.I0(\dataI[5][10]_i_2_n_0 ),
        .I1(\dataI_reg[0][10] ),
        .I2(\dataI_reg[5][23]_0 ),
        .I3(dataI[58]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[5][23] [10]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[5][10]_i_2 
       (.I0(dataI[58]),
        .I1(mul2I_out[10]),
        .I2(\dataI_reg[5][23]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[5][10]_i_3_n_0 ),
        .O(\dataI[5][10]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[5][10]_i_3 
       (.I0(mul1I_out[10]),
        .I1(\dataI[5][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[58]),
        .O(\dataI[5][10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[5][11]_i_1 
       (.I0(\dataI[5][11]_i_2_n_0 ),
        .I1(\dataI_reg[0][11] ),
        .I2(\dataI_reg[5][23]_0 ),
        .I3(dataI[59]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[5][23] [11]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataI[5][11]_i_2 
       (.I0(mul2I_out[11]),
        .I1(\dataI_reg[5][23]_1 ),
        .I2(\dataI[5][11]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[59]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[5][11]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[5][11]_i_3 
       (.I0(mul1I_out[11]),
        .I1(\dataI[5][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[59]),
        .O(\dataI[5][11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[5][12]_i_1 
       (.I0(\dataI[5][12]_i_2_n_0 ),
        .I1(\dataI_reg[0][12] ),
        .I2(\dataI_reg[5][23]_0 ),
        .I3(dataI[60]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[5][23] [12]));
  LUT6 #(
    .INIT(64'h8D008D00FF000000)) 
    \dataI[5][12]_i_2 
       (.I0(\dataI_reg[5][23]_1 ),
        .I1(mul2I_out[12]),
        .I2(\dataI[5][12]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[60]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[5][12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[5][12]_i_3 
       (.I0(mul1I_out[12]),
        .I1(\dataI[5][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[60]),
        .O(\dataI[5][12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[5][13]_i_1 
       (.I0(\dataI[5][13]_i_2_n_0 ),
        .I1(\dataI_reg[0][13] ),
        .I2(\dataI_reg[5][23]_0 ),
        .I3(dataI[61]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[5][23] [13]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataI[5][13]_i_2 
       (.I0(mul2I_out[13]),
        .I1(\dataI_reg[5][23]_1 ),
        .I2(\dataI[5][13]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[61]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[5][13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[5][13]_i_3 
       (.I0(mul1I_out[13]),
        .I1(\dataI[5][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[61]),
        .O(\dataI[5][13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[5][14]_i_1 
       (.I0(\dataI[5][14]_i_2_n_0 ),
        .I1(\dataI_reg[0][14] ),
        .I2(\dataI_reg[5][23]_0 ),
        .I3(dataI[62]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[5][23] [14]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[5][14]_i_2 
       (.I0(dataI[62]),
        .I1(mul2I_out[14]),
        .I2(\dataI_reg[5][23]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[5][14]_i_3_n_0 ),
        .O(\dataI[5][14]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[5][14]_i_3 
       (.I0(mul1I_out[14]),
        .I1(\dataI[5][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[62]),
        .O(\dataI[5][14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[5][15]_i_1 
       (.I0(\dataI[5][15]_i_2_n_0 ),
        .I1(\dataI_reg[0][15] ),
        .I2(\dataI_reg[5][23]_0 ),
        .I3(dataI[63]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[5][23] [15]));
  LUT6 #(
    .INIT(64'h8D008D00FF000000)) 
    \dataI[5][15]_i_2 
       (.I0(\dataI_reg[5][23]_1 ),
        .I1(mul2I_out[15]),
        .I2(\dataI[5][15]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[63]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[5][15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[5][15]_i_3 
       (.I0(mul1I_out[15]),
        .I1(\dataI[5][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[63]),
        .O(\dataI[5][15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[5][16]_i_1 
       (.I0(\dataI[5][16]_i_2_n_0 ),
        .I1(\dataI_reg[0][16] ),
        .I2(\dataI_reg[5][23]_0 ),
        .I3(dataI[64]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[5][23] [16]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataI[5][16]_i_2 
       (.I0(mul2I_out[16]),
        .I1(\dataI_reg[5][23]_1 ),
        .I2(\dataI[5][16]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[64]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[5][16]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[5][16]_i_3 
       (.I0(mul1I_out[16]),
        .I1(\dataI[5][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[64]),
        .O(\dataI[5][16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[5][17]_i_1 
       (.I0(\dataI[5][17]_i_2_n_0 ),
        .I1(\dataI_reg[0][17] ),
        .I2(\dataI_reg[5][23]_0 ),
        .I3(dataI[65]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[5][23] [17]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataI[5][17]_i_2 
       (.I0(mul2I_out[17]),
        .I1(\dataI_reg[5][23]_1 ),
        .I2(\dataI[5][17]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[65]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[5][17]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[5][17]_i_3 
       (.I0(mul1I_out[17]),
        .I1(\dataI[5][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[65]),
        .O(\dataI[5][17]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[5][18]_i_1 
       (.I0(\dataI[5][18]_i_2_n_0 ),
        .I1(\dataI_reg[0][18] ),
        .I2(\dataI_reg[5][23]_0 ),
        .I3(dataI[66]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[5][23] [18]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[5][18]_i_2 
       (.I0(dataI[66]),
        .I1(mul2I_out[18]),
        .I2(\dataI_reg[5][23]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[5][18]_i_3_n_0 ),
        .O(\dataI[5][18]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[5][18]_i_3 
       (.I0(mul1I_out[18]),
        .I1(\dataI[5][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[66]),
        .O(\dataI[5][18]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[5][19]_i_1 
       (.I0(\dataI[5][19]_i_2_n_0 ),
        .I1(\dataI_reg[0][19] ),
        .I2(\dataI_reg[5][23]_0 ),
        .I3(dataI[67]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[5][23] [19]));
  LUT6 #(
    .INIT(64'hB800B800FF000000)) 
    \dataI[5][19]_i_2 
       (.I0(mul2I_out[19]),
        .I1(\dataI_reg[5][23]_1 ),
        .I2(\dataI[5][19]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[67]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[5][19]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[5][19]_i_3 
       (.I0(mul1I_out[19]),
        .I1(\dataI[5][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[67]),
        .O(\dataI[5][19]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[5][1]_i_1 
       (.I0(\dataI[5][1]_i_2_n_0 ),
        .I1(\dataI_reg[0][1] ),
        .I2(\dataI_reg[5][23]_0 ),
        .I3(dataI[49]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[5][23] [1]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataI[5][1]_i_2 
       (.I0(mul2I_out[1]),
        .I1(\dataI_reg[5][23]_1 ),
        .I2(\dataI[5][1]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[49]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[5][1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[5][1]_i_3 
       (.I0(mul1I_out[1]),
        .I1(\dataI[5][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[49]),
        .O(\dataI[5][1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[5][20]_i_1 
       (.I0(\dataI[5][20]_i_2_n_0 ),
        .I1(\dataI_reg[0][20] ),
        .I2(\dataI_reg[5][23]_0 ),
        .I3(dataI[68]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[5][23] [20]));
  LUT6 #(
    .INIT(64'hB800B800FF000000)) 
    \dataI[5][20]_i_2 
       (.I0(mul2I_out[20]),
        .I1(\dataI_reg[5][23]_1 ),
        .I2(\dataI[5][20]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[68]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[5][20]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[5][20]_i_3 
       (.I0(mul1I_out[20]),
        .I1(\dataI[5][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[68]),
        .O(\dataI[5][20]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[5][21]_i_1 
       (.I0(\dataI[5][21]_i_2_n_0 ),
        .I1(\dataI_reg[3][21] ),
        .I2(\dataI_reg[5][23]_0 ),
        .I3(dataI[69]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[5][23] [21]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataI[5][21]_i_2 
       (.I0(mul2I_out[21]),
        .I1(\dataI_reg[5][23]_1 ),
        .I2(\dataI[5][21]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[69]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[5][21]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[5][21]_i_3 
       (.I0(mul1I_out[21]),
        .I1(\dataI[5][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[69]),
        .O(\dataI[5][21]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[5][22]_i_1 
       (.I0(\dataI[5][22]_i_2_n_0 ),
        .I1(\dataI_reg[0][22] ),
        .I2(\dataI_reg[5][23]_0 ),
        .I3(dataI[70]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[5][23] [22]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[5][22]_i_2 
       (.I0(dataI[70]),
        .I1(mul2I_out[22]),
        .I2(\dataI_reg[5][23]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[5][22]_i_3_n_0 ),
        .O(\dataI[5][22]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[5][22]_i_3 
       (.I0(mul1I_out[22]),
        .I1(\dataI[5][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[70]),
        .O(\dataI[5][22]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[5][23]_i_1 
       (.I0(\dataI[5][23]_i_2_n_0 ),
        .I1(\dataI_reg[1][23]_0 ),
        .I2(\dataI_reg[5][23]_0 ),
        .I3(dataI[71]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[5][23] [23]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataI[5][23]_i_2 
       (.I0(mul2I_out[23]),
        .I1(\dataI_reg[5][23]_1 ),
        .I2(\dataI[5][23]_i_5_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[71]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[5][23]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[5][23]_i_5 
       (.I0(mul1I_out[23]),
        .I1(\dataI[5][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[71]),
        .O(\dataI[5][23]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[5][2]_i_1 
       (.I0(\dataI[5][2]_i_2_n_0 ),
        .I1(\dataI_reg[0][2] ),
        .I2(\dataI_reg[5][23]_0 ),
        .I3(dataI[50]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[5][23] [2]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[5][2]_i_2 
       (.I0(dataI[50]),
        .I1(mul2I_out[2]),
        .I2(\dataI_reg[5][23]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[5][2]_i_3_n_0 ),
        .O(\dataI[5][2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[5][2]_i_3 
       (.I0(mul1I_out[2]),
        .I1(\dataI[5][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[50]),
        .O(\dataI[5][2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[5][3]_i_1 
       (.I0(\dataI[5][3]_i_2_n_0 ),
        .I1(\dataI_reg[0][3] ),
        .I2(\dataI_reg[5][23]_0 ),
        .I3(dataI[51]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[5][23] [3]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataI[5][3]_i_2 
       (.I0(mul2I_out[3]),
        .I1(\dataI_reg[5][23]_1 ),
        .I2(\dataI[5][3]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[51]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[5][3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[5][3]_i_3 
       (.I0(mul1I_out[3]),
        .I1(\dataI[5][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[51]),
        .O(\dataI[5][3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[5][4]_i_1 
       (.I0(\dataI[5][4]_i_2_n_0 ),
        .I1(\dataI_reg[0][4] ),
        .I2(\dataI_reg[5][23]_0 ),
        .I3(dataI[52]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[5][23] [4]));
  LUT6 #(
    .INIT(64'h8D008D00FF000000)) 
    \dataI[5][4]_i_2 
       (.I0(\dataI_reg[5][23]_1 ),
        .I1(mul2I_out[4]),
        .I2(\dataI[5][4]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[52]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[5][4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[5][4]_i_3 
       (.I0(mul1I_out[4]),
        .I1(\dataI[5][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[52]),
        .O(\dataI[5][4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[5][5]_i_1 
       (.I0(\dataI[5][5]_i_2_n_0 ),
        .I1(\dataI_reg[0][5] ),
        .I2(\dataI_reg[5][23]_0 ),
        .I3(dataI[53]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[5][23] [5]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataI[5][5]_i_2 
       (.I0(mul2I_out[5]),
        .I1(\dataI_reg[5][23]_1 ),
        .I2(\dataI[5][5]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[53]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[5][5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[5][5]_i_3 
       (.I0(mul1I_out[5]),
        .I1(\dataI[5][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[53]),
        .O(\dataI[5][5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[5][6]_i_1 
       (.I0(\dataI[5][6]_i_2_n_0 ),
        .I1(\dataI_reg[0][6] ),
        .I2(\dataI_reg[5][23]_0 ),
        .I3(dataI[54]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[5][23] [6]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[5][6]_i_2 
       (.I0(dataI[54]),
        .I1(mul2I_out[6]),
        .I2(\dataI_reg[5][23]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[5][6]_i_3_n_0 ),
        .O(\dataI[5][6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[5][6]_i_3 
       (.I0(mul1I_out[6]),
        .I1(\dataI[5][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[54]),
        .O(\dataI[5][6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[5][7]_i_1 
       (.I0(\dataI[5][7]_i_2_n_0 ),
        .I1(\dataI_reg[0][7] ),
        .I2(\dataI_reg[5][23]_0 ),
        .I3(dataI[55]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[5][23] [7]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataI[5][7]_i_2 
       (.I0(mul2I_out[7]),
        .I1(\dataI_reg[5][23]_1 ),
        .I2(\dataI[5][7]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[55]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[5][7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[5][7]_i_3 
       (.I0(mul1I_out[7]),
        .I1(\dataI[5][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[55]),
        .O(\dataI[5][7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[5][8]_i_1 
       (.I0(\dataI[5][8]_i_2_n_0 ),
        .I1(\dataI_reg[0][8] ),
        .I2(\dataI_reg[5][23]_0 ),
        .I3(dataI[56]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[5][23] [8]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataI[5][8]_i_2 
       (.I0(mul2I_out[8]),
        .I1(\dataI_reg[5][23]_1 ),
        .I2(\dataI[5][8]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[56]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[5][8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[5][8]_i_3 
       (.I0(mul1I_out[8]),
        .I1(\dataI[5][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[56]),
        .O(\dataI[5][8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[5][9]_i_1 
       (.I0(\dataI[5][9]_i_2_n_0 ),
        .I1(\dataI_reg[0][9] ),
        .I2(\dataI_reg[5][23]_0 ),
        .I3(dataI[57]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[5][23] [9]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataI[5][9]_i_2 
       (.I0(mul2I_out[9]),
        .I1(\dataI_reg[5][23]_1 ),
        .I2(\dataI[5][9]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[57]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[5][9]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[5][9]_i_3 
       (.I0(mul1I_out[9]),
        .I1(\dataI[5][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataI[57]),
        .O(\dataI[5][9]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[6][0]_i_1 
       (.I0(\dataI[6][0]_i_2_n_0 ),
        .I1(\dataI_reg[0][0] ),
        .I2(\dataQ_reg[6][7] ),
        .I3(dataI[24]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[6][23] [0]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[6][0]_i_2 
       (.I0(dataI[24]),
        .I1(mul2I_out[0]),
        .I2(\dataI_reg[6][23]_0 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[6][0]_i_4_n_0 ),
        .O(\dataI[6][0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[6][0]_i_4 
       (.I0(mul1I_out[0]),
        .I1(\dataQ_reg[6][22] ),
        .I2(Q[1]),
        .I3(dataI[24]),
        .O(\dataI[6][0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[6][10]_i_1 
       (.I0(\dataI[6][10]_i_2_n_0 ),
        .I1(\dataI_reg[0][10] ),
        .I2(\dataQ_reg[6][7] ),
        .I3(dataI[34]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[6][23] [10]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[6][10]_i_2 
       (.I0(dataI[34]),
        .I1(mul2I_out[10]),
        .I2(\dataI_reg[6][23]_0 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[6][10]_i_4_n_0 ),
        .O(\dataI[6][10]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[6][10]_i_4 
       (.I0(mul1I_out[10]),
        .I1(\dataQ_reg[6][22] ),
        .I2(Q[1]),
        .I3(dataI[34]),
        .O(\dataI[6][10]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[6][11]_i_1 
       (.I0(\dataI[6][11]_i_2_n_0 ),
        .I1(\dataI_reg[0][11] ),
        .I2(\dataQ_reg[6][7] ),
        .I3(dataI[35]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[6][23] [11]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[6][11]_i_2 
       (.I0(dataI[35]),
        .I1(mul2I_out[11]),
        .I2(\dataI_reg[6][23]_0 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[6][11]_i_4_n_0 ),
        .O(\dataI[6][11]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[6][11]_i_4 
       (.I0(mul1I_out[11]),
        .I1(\dataQ_reg[6][22] ),
        .I2(Q[1]),
        .I3(dataI[35]),
        .O(\dataI[6][11]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[6][12]_i_1 
       (.I0(\dataI[6][12]_i_2_n_0 ),
        .I1(\dataI_reg[0][12] ),
        .I2(\dataQ_reg[6][7] ),
        .I3(dataI[36]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[6][23] [12]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[6][12]_i_2 
       (.I0(dataI[36]),
        .I1(mul2I_out[12]),
        .I2(\dataI_reg[6][23]_0 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[6][12]_i_4_n_0 ),
        .O(\dataI[6][12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[6][12]_i_4 
       (.I0(mul1I_out[12]),
        .I1(\dataQ_reg[6][22] ),
        .I2(Q[1]),
        .I3(dataI[36]),
        .O(\dataI[6][12]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[6][13]_i_1 
       (.I0(\dataI[6][13]_i_2_n_0 ),
        .I1(\dataI_reg[0][13] ),
        .I2(\dataQ_reg[6][7] ),
        .I3(dataI[37]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[6][23] [13]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[6][13]_i_2 
       (.I0(dataI[37]),
        .I1(mul2I_out[13]),
        .I2(\dataI_reg[6][23]_0 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[6][13]_i_4_n_0 ),
        .O(\dataI[6][13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[6][13]_i_4 
       (.I0(mul1I_out[13]),
        .I1(\dataQ_reg[6][22] ),
        .I2(Q[1]),
        .I3(dataI[37]),
        .O(\dataI[6][13]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[6][14]_i_1 
       (.I0(\dataI[6][14]_i_2_n_0 ),
        .I1(\dataI_reg[0][14] ),
        .I2(\dataQ_reg[6][7] ),
        .I3(dataI[38]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[6][23] [14]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[6][14]_i_2 
       (.I0(dataI[38]),
        .I1(mul2I_out[14]),
        .I2(\dataI_reg[6][23]_0 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[6][14]_i_4_n_0 ),
        .O(\dataI[6][14]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[6][14]_i_4 
       (.I0(mul1I_out[14]),
        .I1(\dataQ_reg[6][22] ),
        .I2(Q[1]),
        .I3(dataI[38]),
        .O(\dataI[6][14]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[6][15]_i_1 
       (.I0(\dataI[6][15]_i_2_n_0 ),
        .I1(\dataI_reg[0][15] ),
        .I2(\dataQ_reg[6][7] ),
        .I3(dataI[39]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[6][23] [15]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[6][15]_i_2 
       (.I0(dataI[39]),
        .I1(mul2I_out[15]),
        .I2(\dataI_reg[6][23]_0 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[6][15]_i_4_n_0 ),
        .O(\dataI[6][15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[6][15]_i_4 
       (.I0(mul1I_out[15]),
        .I1(\dataQ_reg[6][22] ),
        .I2(Q[1]),
        .I3(dataI[39]),
        .O(\dataI[6][15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[6][16]_i_1 
       (.I0(\dataI[6][16]_i_2_n_0 ),
        .I1(\dataI_reg[0][16] ),
        .I2(\dataQ_reg[6][7] ),
        .I3(dataI[40]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[6][23] [16]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[6][16]_i_2 
       (.I0(dataI[40]),
        .I1(mul2I_out[16]),
        .I2(\dataI_reg[6][23]_0 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[6][16]_i_4_n_0 ),
        .O(\dataI[6][16]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[6][16]_i_4 
       (.I0(mul1I_out[16]),
        .I1(\dataQ_reg[6][22] ),
        .I2(Q[1]),
        .I3(dataI[40]),
        .O(\dataI[6][16]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[6][17]_i_1 
       (.I0(\dataI[6][17]_i_2_n_0 ),
        .I1(\dataI_reg[0][17] ),
        .I2(\dataQ_reg[6][7] ),
        .I3(dataI[41]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[6][23] [17]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[6][17]_i_2 
       (.I0(dataI[41]),
        .I1(mul2I_out[17]),
        .I2(\dataI_reg[6][23]_0 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[6][17]_i_4_n_0 ),
        .O(\dataI[6][17]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[6][17]_i_4 
       (.I0(mul1I_out[17]),
        .I1(\dataQ_reg[6][22] ),
        .I2(Q[1]),
        .I3(dataI[41]),
        .O(\dataI[6][17]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[6][18]_i_1 
       (.I0(\dataI[6][18]_i_2_n_0 ),
        .I1(\dataI_reg[0][18] ),
        .I2(\dataQ_reg[6][7] ),
        .I3(dataI[42]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[6][23] [18]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[6][18]_i_2 
       (.I0(dataI[42]),
        .I1(mul2I_out[18]),
        .I2(\dataI_reg[6][23]_0 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[6][18]_i_4_n_0 ),
        .O(\dataI[6][18]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[6][18]_i_4 
       (.I0(mul1I_out[18]),
        .I1(\dataQ_reg[6][22] ),
        .I2(Q[1]),
        .I3(dataI[42]),
        .O(\dataI[6][18]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[6][19]_i_1 
       (.I0(\dataI[6][19]_i_2_n_0 ),
        .I1(\dataI_reg[0][19] ),
        .I2(\dataQ_reg[6][7] ),
        .I3(dataI[43]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[6][23] [19]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[6][19]_i_2 
       (.I0(dataI[43]),
        .I1(mul2I_out[19]),
        .I2(\dataI_reg[6][23]_0 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[6][19]_i_4_n_0 ),
        .O(\dataI[6][19]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[6][19]_i_4 
       (.I0(mul1I_out[19]),
        .I1(\dataQ_reg[6][22] ),
        .I2(Q[1]),
        .I3(dataI[43]),
        .O(\dataI[6][19]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[6][1]_i_1 
       (.I0(\dataI[6][1]_i_2_n_0 ),
        .I1(\dataI_reg[0][1] ),
        .I2(\dataQ_reg[6][7] ),
        .I3(dataI[25]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[6][23] [1]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[6][1]_i_2 
       (.I0(dataI[25]),
        .I1(mul2I_out[1]),
        .I2(\dataI_reg[6][23]_0 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[6][1]_i_4_n_0 ),
        .O(\dataI[6][1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[6][1]_i_4 
       (.I0(mul1I_out[1]),
        .I1(\dataQ_reg[6][22] ),
        .I2(Q[1]),
        .I3(dataI[25]),
        .O(\dataI[6][1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[6][20]_i_1 
       (.I0(\dataI[6][20]_i_2_n_0 ),
        .I1(\dataI_reg[0][20] ),
        .I2(\dataQ_reg[6][7] ),
        .I3(dataI[44]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[6][23] [20]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[6][20]_i_2 
       (.I0(dataI[44]),
        .I1(mul2I_out[20]),
        .I2(\dataI_reg[6][23]_0 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[6][20]_i_4_n_0 ),
        .O(\dataI[6][20]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[6][20]_i_4 
       (.I0(mul1I_out[20]),
        .I1(\dataQ_reg[6][22] ),
        .I2(Q[1]),
        .I3(dataI[44]),
        .O(\dataI[6][20]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[6][21]_i_1 
       (.I0(\dataI[6][21]_i_2_n_0 ),
        .I1(\dataI_reg[3][21] ),
        .I2(\dataQ_reg[6][7] ),
        .I3(dataI[45]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[6][23] [21]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[6][21]_i_2 
       (.I0(dataI[45]),
        .I1(mul2I_out[21]),
        .I2(\dataI_reg[6][23]_0 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[6][21]_i_4_n_0 ),
        .O(\dataI[6][21]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[6][21]_i_4 
       (.I0(mul1I_out[21]),
        .I1(\dataQ_reg[6][22] ),
        .I2(Q[1]),
        .I3(dataI[45]),
        .O(\dataI[6][21]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[6][22]_i_1 
       (.I0(\dataI[6][22]_i_2_n_0 ),
        .I1(\dataI_reg[0][22] ),
        .I2(\dataQ_reg[6][7] ),
        .I3(dataI[46]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[6][23] [22]));
  LUT6 #(
    .INIT(64'hB800B800FF000000)) 
    \dataI[6][22]_i_2 
       (.I0(mul2I_out[22]),
        .I1(\dataI_reg[6][23]_0 ),
        .I2(\dataI[6][22]_i_4_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[46]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[6][22]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[6][22]_i_4 
       (.I0(mul1I_out[22]),
        .I1(\dataQ_reg[6][22] ),
        .I2(Q[1]),
        .I3(dataI[46]),
        .O(\dataI[6][22]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataI[6][23]_i_1 
       (.I0(\dataI[6][23]_i_2_n_0 ),
        .I1(\dataI_reg[1][23]_0 ),
        .I2(\dataQ_reg[6][7] ),
        .I3(dataI[47]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[6][23] [23]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataI[6][23]_i_2 
       (.I0(mul2I_out[23]),
        .I1(\dataI_reg[6][23]_0 ),
        .I2(\dataI[6][23]_i_6_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataI[47]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataI[6][23]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataI[6][23]_i_6 
       (.I0(mul1I_out[23]),
        .I1(\dataQ_reg[6][22] ),
        .I2(Q[1]),
        .I3(dataI[47]),
        .O(\dataI[6][23]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[6][2]_i_1 
       (.I0(\dataI[6][2]_i_2_n_0 ),
        .I1(\dataI_reg[0][2] ),
        .I2(\dataQ_reg[6][7] ),
        .I3(dataI[26]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[6][23] [2]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[6][2]_i_2 
       (.I0(dataI[26]),
        .I1(mul2I_out[2]),
        .I2(\dataI_reg[6][23]_0 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[6][2]_i_4_n_0 ),
        .O(\dataI[6][2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[6][2]_i_4 
       (.I0(mul1I_out[2]),
        .I1(\dataQ_reg[6][22] ),
        .I2(Q[1]),
        .I3(dataI[26]),
        .O(\dataI[6][2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[6][3]_i_1 
       (.I0(\dataI[6][3]_i_2_n_0 ),
        .I1(\dataI_reg[0][3] ),
        .I2(\dataQ_reg[6][7] ),
        .I3(dataI[27]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[6][23] [3]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[6][3]_i_2 
       (.I0(dataI[27]),
        .I1(mul2I_out[3]),
        .I2(\dataI_reg[6][23]_0 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[6][3]_i_4_n_0 ),
        .O(\dataI[6][3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[6][3]_i_4 
       (.I0(mul1I_out[3]),
        .I1(\dataQ_reg[6][22] ),
        .I2(Q[1]),
        .I3(dataI[27]),
        .O(\dataI[6][3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[6][4]_i_1 
       (.I0(\dataI[6][4]_i_2_n_0 ),
        .I1(\dataI_reg[0][4] ),
        .I2(\dataQ_reg[6][7] ),
        .I3(dataI[28]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[6][23] [4]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[6][4]_i_2 
       (.I0(dataI[28]),
        .I1(mul2I_out[4]),
        .I2(\dataI_reg[6][23]_0 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[6][4]_i_4_n_0 ),
        .O(\dataI[6][4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[6][4]_i_4 
       (.I0(mul1I_out[4]),
        .I1(\dataQ_reg[6][22] ),
        .I2(Q[1]),
        .I3(dataI[28]),
        .O(\dataI[6][4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[6][5]_i_1 
       (.I0(\dataI[6][5]_i_2_n_0 ),
        .I1(\dataI_reg[0][5] ),
        .I2(\dataQ_reg[6][7] ),
        .I3(dataI[29]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[6][23] [5]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[6][5]_i_2 
       (.I0(dataI[29]),
        .I1(mul2I_out[5]),
        .I2(\dataI_reg[6][23]_0 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[6][5]_i_4_n_0 ),
        .O(\dataI[6][5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[6][5]_i_4 
       (.I0(mul1I_out[5]),
        .I1(\dataQ_reg[6][22] ),
        .I2(Q[1]),
        .I3(dataI[29]),
        .O(\dataI[6][5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[6][6]_i_1 
       (.I0(\dataI[6][6]_i_2_n_0 ),
        .I1(\dataI_reg[0][6] ),
        .I2(\dataQ_reg[6][7] ),
        .I3(dataI[30]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[6][23] [6]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[6][6]_i_2 
       (.I0(dataI[30]),
        .I1(mul2I_out[6]),
        .I2(\dataI_reg[6][23]_0 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[6][6]_i_4_n_0 ),
        .O(\dataI[6][6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[6][6]_i_4 
       (.I0(mul1I_out[6]),
        .I1(\dataQ_reg[6][22] ),
        .I2(Q[1]),
        .I3(dataI[30]),
        .O(\dataI[6][6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[6][7]_i_1 
       (.I0(\dataI[6][7]_i_2_n_0 ),
        .I1(\dataI_reg[0][7] ),
        .I2(\dataQ_reg[6][7] ),
        .I3(dataI[31]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[6][23] [7]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[6][7]_i_2 
       (.I0(dataI[31]),
        .I1(mul2I_out[7]),
        .I2(\dataI_reg[6][23]_0 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[6][7]_i_4_n_0 ),
        .O(\dataI[6][7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[6][7]_i_4 
       (.I0(mul1I_out[7]),
        .I1(\dataQ_reg[6][22] ),
        .I2(Q[1]),
        .I3(dataI[31]),
        .O(\dataI[6][7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[6][8]_i_1 
       (.I0(\dataI[6][8]_i_2_n_0 ),
        .I1(\dataI_reg[0][8] ),
        .I2(\dataQ_reg[6][7] ),
        .I3(dataI[32]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[6][23] [8]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[6][8]_i_2 
       (.I0(dataI[32]),
        .I1(mul2I_out[8]),
        .I2(\dataI_reg[6][23]_0 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[6][8]_i_4_n_0 ),
        .O(\dataI[6][8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[6][8]_i_4 
       (.I0(mul1I_out[8]),
        .I1(\dataQ_reg[6][22] ),
        .I2(Q[1]),
        .I3(dataI[32]),
        .O(\dataI[6][8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataI[6][9]_i_1 
       (.I0(\dataI[6][9]_i_2_n_0 ),
        .I1(\dataI_reg[0][9] ),
        .I2(\dataQ_reg[6][7] ),
        .I3(dataI[33]),
        .I4(\state_reg[1]_0 ),
        .O(\dataI_reg[6][23] [9]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataI[6][9]_i_2 
       (.I0(dataI[33]),
        .I1(mul2I_out[9]),
        .I2(\dataI_reg[6][23]_0 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI[6][9]_i_4_n_0 ),
        .O(\dataI[6][9]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataI[6][9]_i_4 
       (.I0(mul1I_out[9]),
        .I1(\dataQ_reg[6][22] ),
        .I2(Q[1]),
        .I3(dataI[33]),
        .O(\dataI[6][9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFC8FFF0C8C800F0)) 
    \dataI[7][0]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[7][0]_i_2_n_0 ),
        .I2(dataI[0]),
        .I3(\dataQ_reg[7][7]_0 ),
        .I4(\state_reg[1]_0 ),
        .I5(\dataI_reg[0][0] ),
        .O(\dataI_reg[7][23] [0]));
  LUT6 #(
    .INIT(64'hFFFF00FFB1FFB1FF)) 
    \dataI[7][0]_i_2 
       (.I0(\dataI_reg[7][23]_0 ),
        .I1(\dataI_reg[7][0] ),
        .I2(mul1I_out[0]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(mul2I_out[0]),
        .I5(\dataI_reg[7][23]_2 ),
        .O(\dataI[7][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFC8FFF0C8C800F0)) 
    \dataI[7][10]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[7][10]_i_2_n_0 ),
        .I2(dataI[10]),
        .I3(\dataQ_reg[7][7]_0 ),
        .I4(\state_reg[1]_0 ),
        .I5(\dataI_reg[0][10] ),
        .O(\dataI_reg[7][23] [10]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[7][10]_i_2 
       (.I0(\dataI_reg[7][23]_0 ),
        .I1(\dataI_reg[7][10] ),
        .I2(mul1I_out[10]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[7][23]_2 ),
        .I5(mul2I_out[10]),
        .O(\dataI[7][10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[7][11]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[7][11]_i_2_n_0 ),
        .I2(\dataI_reg[0][11] ),
        .I3(\dataQ_reg[7][7]_0 ),
        .I4(dataI[11]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[7][23] [11]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[7][11]_i_2 
       (.I0(\dataI_reg[7][23]_0 ),
        .I1(\dataI_reg[7][11] ),
        .I2(mul1I_out[11]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[7][23]_2 ),
        .I5(mul2I_out[11]),
        .O(\dataI[7][11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFC8FFF0C8C800F0)) 
    \dataI[7][12]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[7][12]_i_2_n_0 ),
        .I2(dataI[12]),
        .I3(\dataQ_reg[7][7]_0 ),
        .I4(\state_reg[1]_0 ),
        .I5(\dataI_reg[0][12] ),
        .O(\dataI_reg[7][23] [12]));
  LUT6 #(
    .INIT(64'hFFFF00FFB1FFB1FF)) 
    \dataI[7][12]_i_2 
       (.I0(\dataI_reg[7][23]_0 ),
        .I1(\dataI_reg[7][12] ),
        .I2(mul1I_out[12]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(mul2I_out[12]),
        .I5(\dataI_reg[7][23]_2 ),
        .O(\dataI[7][12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFC8FFF0C8C800F0)) 
    \dataI[7][13]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[7][13]_i_2_n_0 ),
        .I2(dataI[13]),
        .I3(\dataQ_reg[7][7]_0 ),
        .I4(\state_reg[1]_0 ),
        .I5(\dataI_reg[0][13] ),
        .O(\dataI_reg[7][23] [13]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[7][13]_i_2 
       (.I0(\dataI_reg[7][23]_0 ),
        .I1(\dataI_reg[7][13] ),
        .I2(mul1I_out[13]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[7][23]_2 ),
        .I5(mul2I_out[13]),
        .O(\dataI[7][13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[7][14]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[7][14]_i_2_n_0 ),
        .I2(\dataI_reg[0][14] ),
        .I3(\dataQ_reg[7][7]_0 ),
        .I4(dataI[14]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[7][23] [14]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[7][14]_i_2 
       (.I0(\dataI_reg[7][23]_0 ),
        .I1(\dataI_reg[7][14] ),
        .I2(mul1I_out[14]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[7][23]_2 ),
        .I5(mul2I_out[14]),
        .O(\dataI[7][14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFC8FFF0C8C800F0)) 
    \dataI[7][15]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[7][15]_i_2_n_0 ),
        .I2(dataI[15]),
        .I3(\dataQ_reg[7][7]_0 ),
        .I4(\state_reg[1]_0 ),
        .I5(\dataI_reg[0][15] ),
        .O(\dataI_reg[7][23] [15]));
  LUT6 #(
    .INIT(64'hFFFF00FFB1FFB1FF)) 
    \dataI[7][15]_i_2 
       (.I0(\dataI_reg[7][23]_0 ),
        .I1(\dataI_reg[7][15] ),
        .I2(mul1I_out[15]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(mul2I_out[15]),
        .I5(\dataI_reg[7][23]_2 ),
        .O(\dataI[7][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[7][16]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[7][16]_i_2_n_0 ),
        .I2(\dataI_reg[0][16] ),
        .I3(\dataQ_reg[7][7]_0 ),
        .I4(dataI[16]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[7][23] [16]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[7][16]_i_2 
       (.I0(\dataI_reg[7][23]_0 ),
        .I1(\dataI_reg[7][16] ),
        .I2(mul1I_out[16]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[7][23]_2 ),
        .I5(mul2I_out[16]),
        .O(\dataI[7][16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[7][17]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[7][17]_i_2_n_0 ),
        .I2(\dataI_reg[0][17] ),
        .I3(\dataQ_reg[7][7]_0 ),
        .I4(dataI[17]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[7][23] [17]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[7][17]_i_2 
       (.I0(\dataI_reg[7][23]_0 ),
        .I1(\dataI_reg[7][17] ),
        .I2(mul1I_out[17]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[7][23]_2 ),
        .I5(mul2I_out[17]),
        .O(\dataI[7][17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFC8FFF0C8C800F0)) 
    \dataI[7][18]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[7][18]_i_2_n_0 ),
        .I2(dataI[18]),
        .I3(\dataQ_reg[7][7]_0 ),
        .I4(\state_reg[1]_0 ),
        .I5(\dataI_reg[0][18] ),
        .O(\dataI_reg[7][23] [18]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[7][18]_i_2 
       (.I0(\dataI_reg[7][23]_0 ),
        .I1(\dataI_reg[7][18] ),
        .I2(mul1I_out[18]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[7][23]_2 ),
        .I5(mul2I_out[18]),
        .O(\dataI[7][18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[7][19]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[7][19]_i_2_n_0 ),
        .I2(\dataI_reg[0][19] ),
        .I3(\dataQ_reg[7][7]_0 ),
        .I4(dataI[19]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[7][23] [19]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[7][19]_i_2 
       (.I0(\dataI_reg[7][23]_0 ),
        .I1(\dataI_reg[7][19] ),
        .I2(mul1I_out[19]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[7][23]_2 ),
        .I5(mul2I_out[19]),
        .O(\dataI[7][19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFC8FFF0C8C800F0)) 
    \dataI[7][1]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[7][1]_i_2_n_0 ),
        .I2(dataI[1]),
        .I3(\dataQ_reg[7][7]_0 ),
        .I4(\state_reg[1]_0 ),
        .I5(\dataI_reg[0][1] ),
        .O(\dataI_reg[7][23] [1]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[7][1]_i_2 
       (.I0(\dataI_reg[7][23]_0 ),
        .I1(\dataI_reg[7][1] ),
        .I2(mul1I_out[1]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[7][23]_2 ),
        .I5(mul2I_out[1]),
        .O(\dataI[7][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[7][20]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[7][20]_i_2_n_0 ),
        .I2(\dataI_reg[0][20] ),
        .I3(\dataQ_reg[7][7]_0 ),
        .I4(dataI[20]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[7][23] [20]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[7][20]_i_2 
       (.I0(\dataI_reg[7][23]_0 ),
        .I1(\dataI_reg[7][20] ),
        .I2(mul1I_out[20]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[7][23]_2 ),
        .I5(mul2I_out[20]),
        .O(\dataI[7][20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[7][21]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[7][21]_i_2_n_0 ),
        .I2(\dataI_reg[3][21] ),
        .I3(\dataQ_reg[7][7]_0 ),
        .I4(dataI[21]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[7][23] [21]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[7][21]_i_2 
       (.I0(\dataI_reg[7][23]_0 ),
        .I1(\dataI_reg[7][21] ),
        .I2(mul1I_out[21]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[7][23]_2 ),
        .I5(mul2I_out[21]),
        .O(\dataI[7][21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFC8FFF0C8C800F0)) 
    \dataI[7][22]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[7][22]_i_2_n_0 ),
        .I2(dataI[22]),
        .I3(\dataQ_reg[7][7]_0 ),
        .I4(\state_reg[1]_0 ),
        .I5(\dataI_reg[0][22] ),
        .O(\dataI_reg[7][23] [22]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[7][22]_i_2 
       (.I0(\dataI_reg[7][23]_0 ),
        .I1(\dataI_reg[7][22] ),
        .I2(mul1I_out[22]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[7][23]_2 ),
        .I5(mul2I_out[22]),
        .O(\dataI[7][22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[7][23]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[7][23]_i_2_n_0 ),
        .I2(\dataI_reg[1][23]_0 ),
        .I3(\dataQ_reg[7][7]_0 ),
        .I4(dataI[23]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[7][23] [23]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[7][23]_i_2 
       (.I0(\dataI_reg[7][23]_0 ),
        .I1(\dataI_reg[7][23]_1 ),
        .I2(mul1I_out[23]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[7][23]_2 ),
        .I5(mul2I_out[23]),
        .O(\dataI[7][23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFC8FFF0C8C800F0)) 
    \dataI[7][2]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[7][2]_i_2_n_0 ),
        .I2(dataI[2]),
        .I3(\dataQ_reg[7][7]_0 ),
        .I4(\state_reg[1]_0 ),
        .I5(\dataI_reg[0][2] ),
        .O(\dataI_reg[7][23] [2]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[7][2]_i_2 
       (.I0(\dataI_reg[7][23]_0 ),
        .I1(\dataI_reg[7][2] ),
        .I2(mul1I_out[2]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[7][23]_2 ),
        .I5(mul2I_out[2]),
        .O(\dataI[7][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[7][3]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[7][3]_i_2_n_0 ),
        .I2(\dataI_reg[0][3] ),
        .I3(\dataQ_reg[7][7]_0 ),
        .I4(dataI[3]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[7][23] [3]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[7][3]_i_2 
       (.I0(\dataI_reg[7][23]_0 ),
        .I1(\dataI_reg[7][3] ),
        .I2(mul1I_out[3]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[7][23]_2 ),
        .I5(mul2I_out[3]),
        .O(\dataI[7][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[7][4]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[7][4]_i_2_n_0 ),
        .I2(\dataI_reg[0][4] ),
        .I3(\dataQ_reg[7][7]_0 ),
        .I4(dataI[4]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[7][23] [4]));
  LUT6 #(
    .INIT(64'hFFFF00FFB1FFB1FF)) 
    \dataI[7][4]_i_2 
       (.I0(\dataI_reg[7][23]_0 ),
        .I1(\dataI_reg[7][4] ),
        .I2(mul1I_out[4]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(mul2I_out[4]),
        .I5(\dataI_reg[7][23]_2 ),
        .O(\dataI[7][4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFC8FFF0C8C800F0)) 
    \dataI[7][5]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[7][5]_i_2_n_0 ),
        .I2(dataI[5]),
        .I3(\dataQ_reg[7][7]_0 ),
        .I4(\state_reg[1]_0 ),
        .I5(\dataI_reg[0][5] ),
        .O(\dataI_reg[7][23] [5]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[7][5]_i_2 
       (.I0(\dataI_reg[7][23]_0 ),
        .I1(\dataI_reg[7][5] ),
        .I2(mul1I_out[5]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[7][23]_2 ),
        .I5(mul2I_out[5]),
        .O(\dataI[7][5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFC8FFF0C8C800F0)) 
    \dataI[7][6]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[7][6]_i_2_n_0 ),
        .I2(dataI[6]),
        .I3(\dataQ_reg[7][7]_0 ),
        .I4(\state_reg[1]_0 ),
        .I5(\dataI_reg[0][6] ),
        .O(\dataI_reg[7][23] [6]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[7][6]_i_2 
       (.I0(\dataI_reg[7][23]_0 ),
        .I1(\dataI_reg[7][6] ),
        .I2(mul1I_out[6]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[7][23]_2 ),
        .I5(mul2I_out[6]),
        .O(\dataI[7][6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[7][7]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[7][7]_i_2_n_0 ),
        .I2(\dataI_reg[0][7] ),
        .I3(\dataQ_reg[7][7]_0 ),
        .I4(dataI[7]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[7][23] [7]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[7][7]_i_2 
       (.I0(\dataI_reg[7][23]_0 ),
        .I1(\dataI_reg[7][7] ),
        .I2(mul1I_out[7]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[7][23]_2 ),
        .I5(mul2I_out[7]),
        .O(\dataI[7][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[7][8]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[7][8]_i_2_n_0 ),
        .I2(\dataI_reg[0][8] ),
        .I3(\dataQ_reg[7][7]_0 ),
        .I4(dataI[8]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[7][23] [8]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[7][8]_i_2 
       (.I0(\dataI_reg[7][23]_0 ),
        .I1(\dataI_reg[7][8] ),
        .I2(mul1I_out[8]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[7][23]_2 ),
        .I5(mul2I_out[8]),
        .O(\dataI[7][8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataI[7][9]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataI[7][9]_i_2_n_0 ),
        .I2(\dataI_reg[0][9] ),
        .I3(\dataQ_reg[7][7]_0 ),
        .I4(dataI[9]),
        .I5(\state_reg[1]_0 ),
        .O(\dataI_reg[7][23] [9]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataI[7][9]_i_2 
       (.I0(\dataI_reg[7][23]_0 ),
        .I1(\dataI_reg[7][9] ),
        .I2(mul1I_out[9]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[7][23]_2 ),
        .I5(mul2I_out[9]),
        .O(\dataI[7][9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[0][0]_i_1 
       (.I0(\dataQ[0][0]_i_2_n_0 ),
        .I1(\dataQ_reg[0][0] ),
        .I2(\dataI_reg[0][22]_0 ),
        .I3(dataQ[168]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[0][23] [0]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[0][0]_i_2 
       (.I0(dataQ[168]),
        .I1(mul2Q_out[0]),
        .I2(\dataI_reg[0][22]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[0][0]_i_3_n_0 ),
        .O(\dataQ[0][0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[0][0]_i_3 
       (.I0(mul1Q_out[0]),
        .I1(\dataI_reg[0][23]_1 ),
        .I2(Q[1]),
        .I3(dataQ[168]),
        .O(\dataQ[0][0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[0][10]_i_1 
       (.I0(\dataQ[0][10]_i_2_n_0 ),
        .I1(\dataQ_reg[0][10] ),
        .I2(\dataI_reg[0][22]_0 ),
        .I3(dataQ[178]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[0][23] [10]));
  LUT6 #(
    .INIT(64'h8D008D00FF000000)) 
    \dataQ[0][10]_i_2 
       (.I0(\dataI_reg[0][22]_1 ),
        .I1(mul2Q_out[10]),
        .I2(\dataQ[0][10]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[178]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[0][10]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[0][10]_i_3 
       (.I0(mul1Q_out[10]),
        .I1(\dataI_reg[0][23]_1 ),
        .I2(Q[1]),
        .I3(dataQ[178]),
        .O(\dataQ[0][10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[0][11]_i_1 
       (.I0(\dataQ[0][11]_i_2_n_0 ),
        .I1(\dataQ_reg[0][11] ),
        .I2(\dataI_reg[0][22]_0 ),
        .I3(dataQ[179]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[0][23] [11]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[0][11]_i_2 
       (.I0(dataQ[179]),
        .I1(mul2Q_out[11]),
        .I2(\dataI_reg[0][22]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[0][11]_i_3_n_0 ),
        .O(\dataQ[0][11]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[0][11]_i_3 
       (.I0(mul1Q_out[11]),
        .I1(\dataI_reg[0][23]_1 ),
        .I2(Q[1]),
        .I3(dataQ[179]),
        .O(\dataQ[0][11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[0][12]_i_1 
       (.I0(\dataQ[0][12]_i_2_n_0 ),
        .I1(\dataQ_reg[0][12] ),
        .I2(\dataI_reg[0][22]_0 ),
        .I3(dataQ[180]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[0][23] [12]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[0][12]_i_2 
       (.I0(dataQ[180]),
        .I1(mul2Q_out[12]),
        .I2(\dataI_reg[0][22]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[0][12]_i_3_n_0 ),
        .O(\dataQ[0][12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[0][12]_i_3 
       (.I0(mul1Q_out[12]),
        .I1(\dataI_reg[0][23]_1 ),
        .I2(Q[1]),
        .I3(dataQ[180]),
        .O(\dataQ[0][12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[0][13]_i_1 
       (.I0(\dataQ[0][13]_i_2_n_0 ),
        .I1(\dataQ_reg[0][13] ),
        .I2(\dataI_reg[0][22]_0 ),
        .I3(dataQ[181]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[0][23] [13]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[0][13]_i_2 
       (.I0(dataQ[181]),
        .I1(mul2Q_out[13]),
        .I2(\dataI_reg[0][22]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[0][13]_i_3_n_0 ),
        .O(\dataQ[0][13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[0][13]_i_3 
       (.I0(mul1Q_out[13]),
        .I1(\dataI_reg[0][23]_1 ),
        .I2(Q[1]),
        .I3(dataQ[181]),
        .O(\dataQ[0][13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[0][14]_i_1 
       (.I0(\dataQ[0][14]_i_2_n_0 ),
        .I1(\dataQ_reg[0][14] ),
        .I2(\dataI_reg[0][22]_0 ),
        .I3(dataQ[182]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[0][23] [14]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[0][14]_i_2 
       (.I0(dataQ[182]),
        .I1(mul2Q_out[14]),
        .I2(\dataI_reg[0][22]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[0][14]_i_3_n_0 ),
        .O(\dataQ[0][14]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[0][14]_i_3 
       (.I0(mul1Q_out[14]),
        .I1(\dataI_reg[0][23]_1 ),
        .I2(Q[1]),
        .I3(dataQ[182]),
        .O(\dataQ[0][14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[0][15]_i_1 
       (.I0(\dataQ[0][15]_i_2_n_0 ),
        .I1(\dataQ_reg[0][15] ),
        .I2(\dataI_reg[0][22]_0 ),
        .I3(dataQ[183]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[0][23] [15]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[0][15]_i_2 
       (.I0(dataQ[183]),
        .I1(mul2Q_out[15]),
        .I2(\dataI_reg[0][22]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[0][15]_i_3_n_0 ),
        .O(\dataQ[0][15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[0][15]_i_3 
       (.I0(mul1Q_out[15]),
        .I1(\dataI_reg[0][23]_1 ),
        .I2(Q[1]),
        .I3(dataQ[183]),
        .O(\dataQ[0][15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[0][16]_i_1 
       (.I0(\dataQ[0][16]_i_2_n_0 ),
        .I1(\dataQ_reg[0][16] ),
        .I2(\dataI_reg[0][22]_0 ),
        .I3(dataQ[184]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[0][23] [16]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[0][16]_i_2 
       (.I0(dataQ[184]),
        .I1(mul2Q_out[16]),
        .I2(\dataI_reg[0][22]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[0][16]_i_3_n_0 ),
        .O(\dataQ[0][16]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[0][16]_i_3 
       (.I0(mul1Q_out[16]),
        .I1(\dataI_reg[0][23]_1 ),
        .I2(Q[1]),
        .I3(dataQ[184]),
        .O(\dataQ[0][16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[0][17]_i_1 
       (.I0(\dataQ[0][17]_i_2_n_0 ),
        .I1(\dataQ_reg[0][17] ),
        .I2(\dataI_reg[0][22]_0 ),
        .I3(dataQ[185]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[0][23] [17]));
  LUT6 #(
    .INIT(64'h8D008D00FF000000)) 
    \dataQ[0][17]_i_2 
       (.I0(\dataI_reg[0][22]_1 ),
        .I1(mul2Q_out[17]),
        .I2(\dataQ[0][17]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[185]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[0][17]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[0][17]_i_3 
       (.I0(mul1Q_out[17]),
        .I1(\dataI_reg[0][23]_1 ),
        .I2(Q[1]),
        .I3(dataQ[185]),
        .O(\dataQ[0][17]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[0][18]_i_1 
       (.I0(\dataQ[0][18]_i_2_n_0 ),
        .I1(\dataQ_reg[0][18] ),
        .I2(\dataI_reg[0][22]_0 ),
        .I3(dataQ[186]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[0][23] [18]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataQ[0][18]_i_2 
       (.I0(mul2Q_out[18]),
        .I1(\dataI_reg[0][22]_1 ),
        .I2(\dataQ[0][18]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[186]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[0][18]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[0][18]_i_3 
       (.I0(mul1Q_out[18]),
        .I1(\dataI_reg[0][23]_1 ),
        .I2(Q[1]),
        .I3(dataQ[186]),
        .O(\dataQ[0][18]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[0][19]_i_1 
       (.I0(\dataQ[0][19]_i_2_n_0 ),
        .I1(\dataQ_reg[0][19] ),
        .I2(\dataI_reg[0][22]_0 ),
        .I3(dataQ[187]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[0][23] [19]));
  LUT6 #(
    .INIT(64'h8D008D00FF000000)) 
    \dataQ[0][19]_i_2 
       (.I0(\dataI_reg[0][22]_1 ),
        .I1(mul2Q_out[19]),
        .I2(\dataQ[0][19]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[187]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[0][19]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[0][19]_i_3 
       (.I0(mul1Q_out[19]),
        .I1(\dataI_reg[0][23]_1 ),
        .I2(Q[1]),
        .I3(dataQ[187]),
        .O(\dataQ[0][19]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[0][1]_i_1 
       (.I0(\dataQ[0][1]_i_2_n_0 ),
        .I1(\dataQ_reg[0][1] ),
        .I2(\dataI_reg[0][22]_0 ),
        .I3(dataQ[169]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[0][23] [1]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[0][1]_i_2 
       (.I0(dataQ[169]),
        .I1(mul2Q_out[1]),
        .I2(\dataI_reg[0][22]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[0][1]_i_3_n_0 ),
        .O(\dataQ[0][1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[0][1]_i_3 
       (.I0(mul1Q_out[1]),
        .I1(\dataI_reg[0][23]_1 ),
        .I2(Q[1]),
        .I3(dataQ[169]),
        .O(\dataQ[0][1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[0][20]_i_1 
       (.I0(\dataQ[0][20]_i_2_n_0 ),
        .I1(\dataQ_reg[0][20] ),
        .I2(\dataI_reg[0][22]_0 ),
        .I3(dataQ[188]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[0][23] [20]));
  LUT6 #(
    .INIT(64'h8D008D00FF000000)) 
    \dataQ[0][20]_i_2 
       (.I0(\dataI_reg[0][22]_1 ),
        .I1(mul2Q_out[20]),
        .I2(\dataQ[0][20]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[188]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[0][20]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[0][20]_i_3 
       (.I0(mul1Q_out[20]),
        .I1(\dataI_reg[0][23]_1 ),
        .I2(Q[1]),
        .I3(dataQ[188]),
        .O(\dataQ[0][20]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[0][21]_i_1 
       (.I0(\dataQ[0][21]_i_2_n_0 ),
        .I1(\dataQ_reg[0][21] ),
        .I2(\dataI_reg[0][22]_0 ),
        .I3(dataQ[189]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[0][23] [21]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[0][21]_i_2 
       (.I0(dataQ[189]),
        .I1(mul2Q_out[21]),
        .I2(\dataI_reg[0][22]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[0][21]_i_3_n_0 ),
        .O(\dataQ[0][21]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[0][21]_i_3 
       (.I0(mul1Q_out[21]),
        .I1(\dataI_reg[0][23]_1 ),
        .I2(Q[1]),
        .I3(dataQ[189]),
        .O(\dataQ[0][21]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[0][22]_i_1 
       (.I0(\dataQ[0][22]_i_2_n_0 ),
        .I1(\dataQ_reg[0][22] ),
        .I2(\dataI_reg[0][22]_0 ),
        .I3(dataQ[190]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[0][23] [22]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[0][22]_i_2 
       (.I0(dataQ[190]),
        .I1(mul2Q_out[22]),
        .I2(\dataI_reg[0][22]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[0][22]_i_3_n_0 ),
        .O(\dataQ[0][22]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[0][22]_i_3 
       (.I0(mul1Q_out[22]),
        .I1(\dataI_reg[0][23]_1 ),
        .I2(Q[1]),
        .I3(dataQ[190]),
        .O(\dataQ[0][22]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[0][23]_i_1 
       (.I0(\dataQ[0][23]_i_2_n_0 ),
        .I1(\dataQ_reg[0][23]_0 ),
        .I2(\dataI_reg[0][22]_0 ),
        .I3(dataQ[191]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[0][23] [23]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[0][23]_i_2 
       (.I0(dataQ[191]),
        .I1(mul2Q_out[23]),
        .I2(\dataI_reg[0][22]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[0][23]_i_3_n_0 ),
        .O(\dataQ[0][23]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[0][23]_i_3 
       (.I0(mul1Q_out[23]),
        .I1(\dataI_reg[0][23]_1 ),
        .I2(Q[1]),
        .I3(dataQ[191]),
        .O(\dataQ[0][23]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[0][2]_i_1 
       (.I0(\dataQ[0][2]_i_2_n_0 ),
        .I1(\dataQ_reg[0][2] ),
        .I2(\dataI_reg[0][22]_0 ),
        .I3(dataQ[170]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[0][23] [2]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[0][2]_i_2 
       (.I0(dataQ[170]),
        .I1(mul2Q_out[2]),
        .I2(\dataI_reg[0][22]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[0][2]_i_3_n_0 ),
        .O(\dataQ[0][2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[0][2]_i_3 
       (.I0(mul1Q_out[2]),
        .I1(\dataI_reg[0][23]_1 ),
        .I2(Q[1]),
        .I3(dataQ[170]),
        .O(\dataQ[0][2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[0][3]_i_1 
       (.I0(\dataQ[0][3]_i_2_n_0 ),
        .I1(\dataQ_reg[0][3] ),
        .I2(\dataI_reg[0][22]_0 ),
        .I3(dataQ[171]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[0][23] [3]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[0][3]_i_2 
       (.I0(dataQ[171]),
        .I1(mul2Q_out[3]),
        .I2(\dataI_reg[0][22]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[0][3]_i_3_n_0 ),
        .O(\dataQ[0][3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[0][3]_i_3 
       (.I0(mul1Q_out[3]),
        .I1(\dataI_reg[0][23]_1 ),
        .I2(Q[1]),
        .I3(dataQ[171]),
        .O(\dataQ[0][3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[0][4]_i_1 
       (.I0(\dataQ[0][4]_i_2_n_0 ),
        .I1(\dataQ_reg[0][4] ),
        .I2(\dataI_reg[0][22]_0 ),
        .I3(dataQ[172]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[0][23] [4]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[0][4]_i_2 
       (.I0(dataQ[172]),
        .I1(mul2Q_out[4]),
        .I2(\dataI_reg[0][22]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[0][4]_i_3_n_0 ),
        .O(\dataQ[0][4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[0][4]_i_3 
       (.I0(mul1Q_out[4]),
        .I1(\dataI_reg[0][23]_1 ),
        .I2(Q[1]),
        .I3(dataQ[172]),
        .O(\dataQ[0][4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[0][5]_i_1 
       (.I0(\dataQ[0][5]_i_2_n_0 ),
        .I1(\dataQ_reg[0][5] ),
        .I2(\dataI_reg[0][22]_0 ),
        .I3(dataQ[173]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[0][23] [5]));
  LUT6 #(
    .INIT(64'h8D008D00FF000000)) 
    \dataQ[0][5]_i_2 
       (.I0(\dataI_reg[0][22]_1 ),
        .I1(mul2Q_out[5]),
        .I2(\dataQ[0][5]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[173]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[0][5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[0][5]_i_3 
       (.I0(mul1Q_out[5]),
        .I1(\dataI_reg[0][23]_1 ),
        .I2(Q[1]),
        .I3(dataQ[173]),
        .O(\dataQ[0][5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[0][6]_i_1 
       (.I0(\dataQ[0][6]_i_2_n_0 ),
        .I1(\dataQ_reg[0][6] ),
        .I2(\dataI_reg[0][22]_0 ),
        .I3(dataQ[174]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[0][23] [6]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[0][6]_i_2 
       (.I0(dataQ[174]),
        .I1(mul2Q_out[6]),
        .I2(\dataI_reg[0][22]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[0][6]_i_3_n_0 ),
        .O(\dataQ[0][6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[0][6]_i_3 
       (.I0(mul1Q_out[6]),
        .I1(\dataI_reg[0][23]_1 ),
        .I2(Q[1]),
        .I3(dataQ[174]),
        .O(\dataQ[0][6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[0][7]_i_1 
       (.I0(\dataQ[0][7]_i_2_n_0 ),
        .I1(\dataQ_reg[7][7] ),
        .I2(\dataI_reg[0][22]_0 ),
        .I3(dataQ[175]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[0][23] [7]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataQ[0][7]_i_2 
       (.I0(mul2Q_out[7]),
        .I1(\dataI_reg[0][22]_1 ),
        .I2(\dataQ[0][7]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[175]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[0][7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[0][7]_i_3 
       (.I0(mul1Q_out[7]),
        .I1(\dataI_reg[0][23]_1 ),
        .I2(Q[1]),
        .I3(dataQ[175]),
        .O(\dataQ[0][7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[0][8]_i_1 
       (.I0(\dataQ[0][8]_i_2_n_0 ),
        .I1(\dataQ_reg[0][8] ),
        .I2(\dataI_reg[0][22]_0 ),
        .I3(dataQ[176]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[0][23] [8]));
  LUT6 #(
    .INIT(64'h8D008D00FF000000)) 
    \dataQ[0][8]_i_2 
       (.I0(\dataI_reg[0][22]_1 ),
        .I1(mul2Q_out[8]),
        .I2(\dataQ[0][8]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[176]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[0][8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[0][8]_i_3 
       (.I0(mul1Q_out[8]),
        .I1(\dataI_reg[0][23]_1 ),
        .I2(Q[1]),
        .I3(dataQ[176]),
        .O(\dataQ[0][8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[0][9]_i_1 
       (.I0(\dataQ[0][9]_i_2_n_0 ),
        .I1(\dataQ_reg[0][9] ),
        .I2(\dataI_reg[0][22]_0 ),
        .I3(dataQ[177]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[0][23] [9]));
  LUT5 #(
    .INIT(32'h0355F355)) 
    \dataQ[0][9]_i_2 
       (.I0(dataQ[177]),
        .I1(\dataQ[0][9]_i_3_n_0 ),
        .I2(\dataI_reg[0][22]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(mul2Q_out[9]),
        .O(\dataQ[0][9]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[0][9]_i_3 
       (.I0(mul1Q_out[9]),
        .I1(\dataI_reg[0][23]_1 ),
        .I2(Q[1]),
        .I3(dataQ[177]),
        .O(\dataQ[0][9]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[1][0]_i_1 
       (.I0(\dataQ[1][0]_i_2_n_0 ),
        .I1(\dataQ_reg[0][0] ),
        .I2(\dataI_reg[1][23]_1 ),
        .I3(dataQ[144]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[1][23] [0]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataQ[1][0]_i_2 
       (.I0(mul2Q_out[0]),
        .I1(\dataI_reg[1][23]_2 ),
        .I2(\dataQ[1][0]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[144]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[1][0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[1][0]_i_3 
       (.I0(mul1Q_out[0]),
        .I1(\dataI[1][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[144]),
        .O(\dataQ[1][0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[1][10]_i_1 
       (.I0(\dataQ[1][10]_i_2_n_0 ),
        .I1(\dataQ_reg[0][10] ),
        .I2(\dataI_reg[1][23]_1 ),
        .I3(dataQ[154]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[1][23] [10]));
  LUT6 #(
    .INIT(64'h8D008D00FF000000)) 
    \dataQ[1][10]_i_2 
       (.I0(\dataI_reg[1][23]_2 ),
        .I1(mul2Q_out[10]),
        .I2(\dataQ[1][10]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[154]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[1][10]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[1][10]_i_3 
       (.I0(mul1Q_out[10]),
        .I1(\dataI[1][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[154]),
        .O(\dataQ[1][10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[1][11]_i_1 
       (.I0(\dataQ[1][11]_i_2_n_0 ),
        .I1(\dataQ_reg[0][11] ),
        .I2(\dataI_reg[1][23]_1 ),
        .I3(dataQ[155]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[1][23] [11]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[1][11]_i_2 
       (.I0(dataQ[155]),
        .I1(mul2Q_out[11]),
        .I2(\dataI_reg[1][23]_2 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[1][11]_i_3_n_0 ),
        .O(\dataQ[1][11]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[1][11]_i_3 
       (.I0(mul1Q_out[11]),
        .I1(\dataI[1][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[155]),
        .O(\dataQ[1][11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[1][12]_i_1 
       (.I0(\dataQ[1][12]_i_2_n_0 ),
        .I1(\dataQ_reg[0][12] ),
        .I2(\dataI_reg[1][23]_1 ),
        .I3(dataQ[156]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[1][23] [12]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataQ[1][12]_i_2 
       (.I0(mul2Q_out[12]),
        .I1(\dataI_reg[1][23]_2 ),
        .I2(\dataQ[1][12]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[156]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[1][12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[1][12]_i_3 
       (.I0(mul1Q_out[12]),
        .I1(\dataI[1][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[156]),
        .O(\dataQ[1][12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[1][13]_i_1 
       (.I0(\dataQ[1][13]_i_2_n_0 ),
        .I1(\dataQ_reg[0][13] ),
        .I2(\dataI_reg[1][23]_1 ),
        .I3(dataQ[157]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[1][23] [13]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[1][13]_i_2 
       (.I0(dataQ[157]),
        .I1(mul2Q_out[13]),
        .I2(\dataI_reg[1][23]_2 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[1][13]_i_3_n_0 ),
        .O(\dataQ[1][13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[1][13]_i_3 
       (.I0(mul1Q_out[13]),
        .I1(\dataI[1][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[157]),
        .O(\dataQ[1][13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[1][14]_i_1 
       (.I0(\dataQ[1][14]_i_2_n_0 ),
        .I1(\dataQ_reg[0][14] ),
        .I2(\dataI_reg[1][23]_1 ),
        .I3(dataQ[158]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[1][23] [14]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[1][14]_i_2 
       (.I0(dataQ[158]),
        .I1(mul2Q_out[14]),
        .I2(\dataI_reg[1][23]_2 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[1][14]_i_3_n_0 ),
        .O(\dataQ[1][14]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[1][14]_i_3 
       (.I0(mul1Q_out[14]),
        .I1(\dataI[1][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[158]),
        .O(\dataQ[1][14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[1][15]_i_1 
       (.I0(\dataQ[1][15]_i_2_n_0 ),
        .I1(\dataQ_reg[0][15] ),
        .I2(\dataI_reg[1][23]_1 ),
        .I3(dataQ[159]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[1][23] [15]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[1][15]_i_2 
       (.I0(dataQ[159]),
        .I1(mul2Q_out[15]),
        .I2(\dataI_reg[1][23]_2 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[1][15]_i_3_n_0 ),
        .O(\dataQ[1][15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[1][15]_i_3 
       (.I0(mul1Q_out[15]),
        .I1(\dataI[1][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[159]),
        .O(\dataQ[1][15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[1][16]_i_1 
       (.I0(\dataQ[1][16]_i_2_n_0 ),
        .I1(\dataQ_reg[0][16] ),
        .I2(\dataI_reg[1][23]_1 ),
        .I3(dataQ[160]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[1][23] [16]));
  LUT6 #(
    .INIT(64'hB800B800FF000000)) 
    \dataQ[1][16]_i_2 
       (.I0(mul2Q_out[16]),
        .I1(\dataI_reg[1][23]_2 ),
        .I2(\dataQ[1][16]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[160]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[1][16]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[1][16]_i_3 
       (.I0(mul1Q_out[16]),
        .I1(\dataI[1][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[160]),
        .O(\dataQ[1][16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[1][17]_i_1 
       (.I0(\dataQ[1][17]_i_2_n_0 ),
        .I1(\dataQ_reg[0][17] ),
        .I2(\dataI_reg[1][23]_1 ),
        .I3(dataQ[161]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[1][23] [17]));
  LUT6 #(
    .INIT(64'h8D008D00FF000000)) 
    \dataQ[1][17]_i_2 
       (.I0(\dataI_reg[1][23]_2 ),
        .I1(mul2Q_out[17]),
        .I2(\dataQ[1][17]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[161]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[1][17]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[1][17]_i_3 
       (.I0(mul1Q_out[17]),
        .I1(\dataI[1][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[161]),
        .O(\dataQ[1][17]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[1][18]_i_1 
       (.I0(\dataQ[1][18]_i_2_n_0 ),
        .I1(\dataQ_reg[0][18] ),
        .I2(\dataI_reg[1][23]_1 ),
        .I3(dataQ[162]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[1][23] [18]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataQ[1][18]_i_2 
       (.I0(mul2Q_out[18]),
        .I1(\dataI_reg[1][23]_2 ),
        .I2(\dataQ[1][18]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[162]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[1][18]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[1][18]_i_3 
       (.I0(mul1Q_out[18]),
        .I1(\dataI[1][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[162]),
        .O(\dataQ[1][18]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[1][19]_i_1 
       (.I0(\dataQ[1][19]_i_2_n_0 ),
        .I1(\dataQ_reg[0][19] ),
        .I2(\dataI_reg[1][23]_1 ),
        .I3(dataQ[163]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[1][23] [19]));
  LUT6 #(
    .INIT(64'h8D008D00FF000000)) 
    \dataQ[1][19]_i_2 
       (.I0(\dataI_reg[1][23]_2 ),
        .I1(mul2Q_out[19]),
        .I2(\dataQ[1][19]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[163]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[1][19]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[1][19]_i_3 
       (.I0(mul1Q_out[19]),
        .I1(\dataI[1][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[163]),
        .O(\dataQ[1][19]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[1][1]_i_1 
       (.I0(\dataQ[1][1]_i_2_n_0 ),
        .I1(\dataQ_reg[0][1] ),
        .I2(\dataI_reg[1][23]_1 ),
        .I3(dataQ[145]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[1][23] [1]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataQ[1][1]_i_2 
       (.I0(mul2Q_out[1]),
        .I1(\dataI_reg[1][23]_2 ),
        .I2(\dataQ[1][1]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[145]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[1][1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[1][1]_i_3 
       (.I0(mul1Q_out[1]),
        .I1(\dataI[1][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[145]),
        .O(\dataQ[1][1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[1][20]_i_1 
       (.I0(\dataQ[1][20]_i_2_n_0 ),
        .I1(\dataQ_reg[0][20] ),
        .I2(\dataI_reg[1][23]_1 ),
        .I3(dataQ[164]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[1][23] [20]));
  LUT5 #(
    .INIT(32'h0355F355)) 
    \dataQ[1][20]_i_2 
       (.I0(dataQ[164]),
        .I1(\dataQ[1][20]_i_3_n_0 ),
        .I2(\dataI_reg[1][23]_2 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(mul2Q_out[20]),
        .O(\dataQ[1][20]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[1][20]_i_3 
       (.I0(mul1Q_out[20]),
        .I1(\dataI[1][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[164]),
        .O(\dataQ[1][20]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[1][21]_i_1 
       (.I0(\dataQ[1][21]_i_2_n_0 ),
        .I1(\dataQ_reg[0][21] ),
        .I2(\dataI_reg[1][23]_1 ),
        .I3(dataQ[165]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[1][23] [21]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[1][21]_i_2 
       (.I0(dataQ[165]),
        .I1(mul2Q_out[21]),
        .I2(\dataI_reg[1][23]_2 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[1][21]_i_3_n_0 ),
        .O(\dataQ[1][21]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[1][21]_i_3 
       (.I0(mul1Q_out[21]),
        .I1(\dataI[1][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[165]),
        .O(\dataQ[1][21]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[1][22]_i_1 
       (.I0(\dataQ[1][22]_i_2_n_0 ),
        .I1(\dataQ_reg[0][22] ),
        .I2(\dataI_reg[1][23]_1 ),
        .I3(dataQ[166]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[1][23] [22]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[1][22]_i_2 
       (.I0(dataQ[166]),
        .I1(mul2Q_out[22]),
        .I2(\dataI_reg[1][23]_2 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[1][22]_i_3_n_0 ),
        .O(\dataQ[1][22]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[1][22]_i_3 
       (.I0(mul1Q_out[22]),
        .I1(\dataI[1][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[166]),
        .O(\dataQ[1][22]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[1][23]_i_1 
       (.I0(\dataQ[1][23]_i_2_n_0 ),
        .I1(\dataQ_reg[0][23]_0 ),
        .I2(\dataI_reg[1][23]_1 ),
        .I3(dataQ[167]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[1][23] [23]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[1][23]_i_2 
       (.I0(dataQ[167]),
        .I1(mul2Q_out[23]),
        .I2(\dataI_reg[1][23]_2 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[1][23]_i_3_n_0 ),
        .O(\dataQ[1][23]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[1][23]_i_3 
       (.I0(mul1Q_out[23]),
        .I1(\dataI[1][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[167]),
        .O(\dataQ[1][23]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[1][2]_i_1 
       (.I0(\dataQ[1][2]_i_2_n_0 ),
        .I1(\dataQ_reg[0][2] ),
        .I2(\dataI_reg[1][23]_1 ),
        .I3(dataQ[146]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[1][23] [2]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataQ[1][2]_i_2 
       (.I0(mul2Q_out[2]),
        .I1(\dataI_reg[1][23]_2 ),
        .I2(\dataQ[1][2]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[146]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[1][2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[1][2]_i_3 
       (.I0(mul1Q_out[2]),
        .I1(\dataI[1][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[146]),
        .O(\dataQ[1][2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[1][3]_i_1 
       (.I0(\dataQ[1][3]_i_2_n_0 ),
        .I1(\dataQ_reg[0][3] ),
        .I2(\dataI_reg[1][23]_1 ),
        .I3(dataQ[147]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[1][23] [3]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[1][3]_i_2 
       (.I0(dataQ[147]),
        .I1(mul2Q_out[3]),
        .I2(\dataI_reg[1][23]_2 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[1][3]_i_3_n_0 ),
        .O(\dataQ[1][3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[1][3]_i_3 
       (.I0(mul1Q_out[3]),
        .I1(\dataI[1][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[147]),
        .O(\dataQ[1][3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[1][4]_i_1 
       (.I0(\dataQ[1][4]_i_2_n_0 ),
        .I1(\dataQ_reg[0][4] ),
        .I2(\dataI_reg[1][23]_1 ),
        .I3(dataQ[148]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[1][23] [4]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataQ[1][4]_i_2 
       (.I0(mul2Q_out[4]),
        .I1(\dataI_reg[1][23]_2 ),
        .I2(\dataQ[1][4]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[148]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[1][4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[1][4]_i_3 
       (.I0(mul1Q_out[4]),
        .I1(\dataI[1][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[148]),
        .O(\dataQ[1][4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[1][5]_i_1 
       (.I0(\dataQ[1][5]_i_2_n_0 ),
        .I1(\dataQ_reg[0][5] ),
        .I2(\dataI_reg[1][23]_1 ),
        .I3(dataQ[149]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[1][23] [5]));
  LUT6 #(
    .INIT(64'h8D008D00FF000000)) 
    \dataQ[1][5]_i_2 
       (.I0(\dataI_reg[1][23]_2 ),
        .I1(mul2Q_out[5]),
        .I2(\dataQ[1][5]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[149]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[1][5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[1][5]_i_3 
       (.I0(mul1Q_out[5]),
        .I1(\dataI[1][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[149]),
        .O(\dataQ[1][5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[1][6]_i_1 
       (.I0(\dataQ[1][6]_i_2_n_0 ),
        .I1(\dataQ_reg[0][6] ),
        .I2(\dataI_reg[1][23]_1 ),
        .I3(dataQ[150]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[1][23] [6]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataQ[1][6]_i_2 
       (.I0(mul2Q_out[6]),
        .I1(\dataI_reg[1][23]_2 ),
        .I2(\dataQ[1][6]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[150]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[1][6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[1][6]_i_3 
       (.I0(mul1Q_out[6]),
        .I1(\dataI[1][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[150]),
        .O(\dataQ[1][6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[1][7]_i_1 
       (.I0(\dataQ[1][7]_i_2_n_0 ),
        .I1(\dataQ_reg[7][7] ),
        .I2(\dataI_reg[1][23]_1 ),
        .I3(dataQ[151]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[1][23] [7]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[1][7]_i_2 
       (.I0(dataQ[151]),
        .I1(mul2Q_out[7]),
        .I2(\dataI_reg[1][23]_2 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[1][7]_i_3_n_0 ),
        .O(\dataQ[1][7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[1][7]_i_3 
       (.I0(mul1Q_out[7]),
        .I1(\dataI[1][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[151]),
        .O(\dataQ[1][7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[1][8]_i_1 
       (.I0(\dataQ[1][8]_i_2_n_0 ),
        .I1(\dataQ_reg[0][8] ),
        .I2(\dataI_reg[1][23]_1 ),
        .I3(dataQ[152]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[1][23] [8]));
  LUT6 #(
    .INIT(64'h8D008D00FF000000)) 
    \dataQ[1][8]_i_2 
       (.I0(\dataI_reg[1][23]_2 ),
        .I1(mul2Q_out[8]),
        .I2(\dataQ[1][8]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[152]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[1][8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[1][8]_i_3 
       (.I0(mul1Q_out[8]),
        .I1(\dataI[1][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[152]),
        .O(\dataQ[1][8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[1][9]_i_1 
       (.I0(\dataQ[1][9]_i_2_n_0 ),
        .I1(\dataQ_reg[0][9] ),
        .I2(\dataI_reg[1][23]_1 ),
        .I3(dataQ[153]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[1][23] [9]));
  LUT6 #(
    .INIT(64'h8D008D00FF000000)) 
    \dataQ[1][9]_i_2 
       (.I0(\dataI_reg[1][23]_2 ),
        .I1(mul2Q_out[9]),
        .I2(\dataQ[1][9]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[153]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[1][9]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[1][9]_i_3 
       (.I0(mul1Q_out[9]),
        .I1(\dataI[1][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[153]),
        .O(\dataQ[1][9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[2][0]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[2][0]_i_2_n_0 ),
        .I2(\dataQ_reg[0][0] ),
        .I3(\dataI_reg[2][21] ),
        .I4(dataQ[120]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[2][23] [0]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataQ[2][0]_i_2 
       (.I0(\dataI_reg[2][23]_0 ),
        .I1(\dataQ_reg[2][0] ),
        .I2(mul1Q_out[0]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[2][23]_2 ),
        .I5(mul2Q_out[0]),
        .O(\dataQ[2][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[2][10]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[2][10]_i_2_n_0 ),
        .I2(\dataQ_reg[0][10] ),
        .I3(\dataI_reg[2][21] ),
        .I4(dataQ[130]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[2][23] [10]));
  LUT6 #(
    .INIT(64'hFFFF00FFB1FFB1FF)) 
    \dataQ[2][10]_i_2 
       (.I0(\dataI_reg[2][23]_0 ),
        .I1(\dataQ_reg[2][10] ),
        .I2(mul1Q_out[10]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(mul2Q_out[10]),
        .I5(\dataI_reg[2][23]_2 ),
        .O(\dataQ[2][10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[2][11]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[2][11]_i_2_n_0 ),
        .I2(\dataQ_reg[0][11] ),
        .I3(\dataI_reg[2][21] ),
        .I4(dataQ[131]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[2][23] [11]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataQ[2][11]_i_2 
       (.I0(\dataI_reg[2][23]_0 ),
        .I1(\dataQ_reg[2][11] ),
        .I2(mul1Q_out[11]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[2][23]_2 ),
        .I5(mul2Q_out[11]),
        .O(\dataQ[2][11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[2][12]_i_1 
       (.I0(\dataQ[2][12]_i_2_n_0 ),
        .I1(\dataQ_reg[0][12] ),
        .I2(\dataI_reg[2][21] ),
        .I3(dataQ[132]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[2][23] [12]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[2][12]_i_2 
       (.I0(dataQ[132]),
        .I1(mul2Q_out[12]),
        .I2(\dataI_reg[2][23]_2 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[2][12]_i_3_n_0 ),
        .O(\dataQ[2][12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[2][12]_i_3 
       (.I0(mul1Q_out[12]),
        .I1(\dataI_reg[2][23]_0 ),
        .I2(Q[1]),
        .I3(dataQ[132]),
        .O(\dataQ[2][12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[2][13]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[2][13]_i_2_n_0 ),
        .I2(\dataQ_reg[0][13] ),
        .I3(\dataI_reg[2][21] ),
        .I4(dataQ[133]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[2][23] [13]));
  LUT6 #(
    .INIT(64'hFFFF00FFB1FFB1FF)) 
    \dataQ[2][13]_i_2 
       (.I0(\dataI_reg[2][23]_0 ),
        .I1(\dataQ_reg[2][13] ),
        .I2(mul1Q_out[13]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(mul2Q_out[13]),
        .I5(\dataI_reg[2][23]_2 ),
        .O(\dataQ[2][13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[2][14]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[2][14]_i_2_n_0 ),
        .I2(\dataQ_reg[0][14] ),
        .I3(\dataI_reg[2][21] ),
        .I4(dataQ[134]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[2][23] [14]));
  LUT6 #(
    .INIT(64'hFFFF00FFB1FFB1FF)) 
    \dataQ[2][14]_i_2 
       (.I0(\dataI_reg[2][23]_0 ),
        .I1(\dataQ_reg[2][14] ),
        .I2(mul1Q_out[14]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(mul2Q_out[14]),
        .I5(\dataI_reg[2][23]_2 ),
        .O(\dataQ[2][14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[2][15]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[2][15]_i_2_n_0 ),
        .I2(\dataQ_reg[0][15] ),
        .I3(\dataI_reg[2][21] ),
        .I4(dataQ[135]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[2][23] [15]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataQ[2][15]_i_2 
       (.I0(\dataI_reg[2][23]_0 ),
        .I1(\dataQ_reg[2][15] ),
        .I2(mul1Q_out[15]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[2][23]_2 ),
        .I5(mul2Q_out[15]),
        .O(\dataQ[2][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[2][16]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[2][16]_i_2_n_0 ),
        .I2(\dataQ_reg[0][16] ),
        .I3(\dataI_reg[2][21] ),
        .I4(dataQ[136]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[2][23] [16]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataQ[2][16]_i_2 
       (.I0(\dataI_reg[2][23]_0 ),
        .I1(\dataQ_reg[2][16] ),
        .I2(mul1Q_out[16]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[2][23]_2 ),
        .I5(mul2Q_out[16]),
        .O(\dataQ[2][16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[2][17]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[2][17]_i_2_n_0 ),
        .I2(\dataQ_reg[0][17] ),
        .I3(\dataI_reg[2][21] ),
        .I4(dataQ[137]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[2][23] [17]));
  LUT6 #(
    .INIT(64'hFFFF00FFB1FFB1FF)) 
    \dataQ[2][17]_i_2 
       (.I0(\dataI_reg[2][23]_0 ),
        .I1(\dataQ_reg[2][17] ),
        .I2(mul1Q_out[17]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(mul2Q_out[17]),
        .I5(\dataI_reg[2][23]_2 ),
        .O(\dataQ[2][17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[2][18]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[2][18]_i_2_n_0 ),
        .I2(\dataQ_reg[0][18] ),
        .I3(\dataI_reg[2][21] ),
        .I4(dataQ[138]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[2][23] [18]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataQ[2][18]_i_2 
       (.I0(\dataI_reg[2][23]_0 ),
        .I1(\dataQ_reg[2][18] ),
        .I2(mul1Q_out[18]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[2][23]_2 ),
        .I5(mul2Q_out[18]),
        .O(\dataQ[2][18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[2][19]_i_1 
       (.I0(\dataQ[2][19]_i_2_n_0 ),
        .I1(\dataQ_reg[0][19] ),
        .I2(\dataI_reg[2][21] ),
        .I3(dataQ[139]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[2][23] [19]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[2][19]_i_2 
       (.I0(dataQ[139]),
        .I1(mul2Q_out[19]),
        .I2(\dataI_reg[2][23]_2 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[2][19]_i_3_n_0 ),
        .O(\dataQ[2][19]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[2][19]_i_3 
       (.I0(mul1Q_out[19]),
        .I1(\dataI_reg[2][23]_0 ),
        .I2(Q[1]),
        .I3(dataQ[139]),
        .O(\dataQ[2][19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[2][1]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[2][1]_i_2_n_0 ),
        .I2(\dataQ_reg[0][1] ),
        .I3(\dataI_reg[2][21] ),
        .I4(dataQ[121]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[2][23] [1]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataQ[2][1]_i_2 
       (.I0(\dataI_reg[2][23]_0 ),
        .I1(\dataQ_reg[2][1] ),
        .I2(mul1Q_out[1]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[2][23]_2 ),
        .I5(mul2Q_out[1]),
        .O(\dataQ[2][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[2][20]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[2][20]_i_2_n_0 ),
        .I2(\dataQ_reg[0][20] ),
        .I3(\dataI_reg[2][21] ),
        .I4(dataQ[140]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[2][23] [20]));
  LUT6 #(
    .INIT(64'hFFFF00FFB1FFB1FF)) 
    \dataQ[2][20]_i_2 
       (.I0(\dataI_reg[2][23]_0 ),
        .I1(\dataQ_reg[2][20] ),
        .I2(mul1Q_out[20]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(mul2Q_out[20]),
        .I5(\dataI_reg[2][23]_2 ),
        .O(\dataQ[2][20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[2][21]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[2][21]_i_2_n_0 ),
        .I2(\dataQ_reg[0][21] ),
        .I3(\dataI_reg[2][21] ),
        .I4(dataQ[141]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[2][23] [21]));
  LUT6 #(
    .INIT(64'hFFFF00FFB1FFB1FF)) 
    \dataQ[2][21]_i_2 
       (.I0(\dataI_reg[2][23]_0 ),
        .I1(\dataQ_reg[2][21] ),
        .I2(mul1Q_out[21]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(mul2Q_out[21]),
        .I5(\dataI_reg[2][23]_2 ),
        .O(\dataQ[2][21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[2][22]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[2][22]_i_2_n_0 ),
        .I2(\dataQ_reg[0][22] ),
        .I3(\dataI_reg[2][21] ),
        .I4(dataQ[142]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[2][23] [22]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataQ[2][22]_i_2 
       (.I0(\dataI_reg[2][23]_0 ),
        .I1(\dataQ_reg[2][22] ),
        .I2(mul1Q_out[22]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[2][23]_2 ),
        .I5(mul2Q_out[22]),
        .O(\dataQ[2][22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[2][23]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[2][23]_i_2_n_0 ),
        .I2(\dataQ_reg[0][23]_0 ),
        .I3(\dataI_reg[2][21] ),
        .I4(dataQ[143]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[2][23] [23]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataQ[2][23]_i_2 
       (.I0(\dataI_reg[2][23]_0 ),
        .I1(\dataQ_reg[2][23]_0 ),
        .I2(mul1Q_out[23]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[2][23]_2 ),
        .I5(mul2Q_out[23]),
        .O(\dataQ[2][23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[2][2]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[2][2]_i_2_n_0 ),
        .I2(\dataQ_reg[0][2] ),
        .I3(\dataI_reg[2][21] ),
        .I4(dataQ[122]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[2][23] [2]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataQ[2][2]_i_2 
       (.I0(\dataI_reg[2][23]_0 ),
        .I1(\dataQ_reg[2][2] ),
        .I2(mul1Q_out[2]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[2][23]_2 ),
        .I5(mul2Q_out[2]),
        .O(\dataQ[2][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[2][3]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[2][3]_i_2_n_0 ),
        .I2(\dataQ_reg[0][3] ),
        .I3(\dataI_reg[2][21] ),
        .I4(dataQ[123]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[2][23] [3]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataQ[2][3]_i_2 
       (.I0(\dataI_reg[2][23]_0 ),
        .I1(\dataQ_reg[2][3] ),
        .I2(mul1Q_out[3]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[2][23]_2 ),
        .I5(mul2Q_out[3]),
        .O(\dataQ[2][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[2][4]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[2][4]_i_2_n_0 ),
        .I2(\dataQ_reg[0][4] ),
        .I3(\dataI_reg[2][21] ),
        .I4(dataQ[124]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[2][23] [4]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataQ[2][4]_i_2 
       (.I0(\dataI_reg[2][23]_0 ),
        .I1(\dataQ_reg[2][4] ),
        .I2(mul1Q_out[4]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[2][23]_2 ),
        .I5(mul2Q_out[4]),
        .O(\dataQ[2][4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[2][5]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[2][5]_i_2_n_0 ),
        .I2(\dataQ_reg[0][5] ),
        .I3(\dataI_reg[2][21] ),
        .I4(dataQ[125]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[2][23] [5]));
  LUT6 #(
    .INIT(64'hFFFF00FFB1FFB1FF)) 
    \dataQ[2][5]_i_2 
       (.I0(\dataI_reg[2][23]_0 ),
        .I1(\dataQ_reg[2][5] ),
        .I2(mul1Q_out[5]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(mul2Q_out[5]),
        .I5(\dataI_reg[2][23]_2 ),
        .O(\dataQ[2][5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[2][6]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[2][6]_i_2_n_0 ),
        .I2(\dataQ_reg[0][6] ),
        .I3(\dataI_reg[2][21] ),
        .I4(dataQ[126]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[2][23] [6]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataQ[2][6]_i_2 
       (.I0(\dataI_reg[2][23]_0 ),
        .I1(\dataQ_reg[2][6] ),
        .I2(mul1Q_out[6]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[2][23]_2 ),
        .I5(mul2Q_out[6]),
        .O(\dataQ[2][6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[2][7]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[2][7]_i_2_n_0 ),
        .I2(\dataQ_reg[7][7] ),
        .I3(\dataI_reg[2][21] ),
        .I4(dataQ[127]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[2][23] [7]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataQ[2][7]_i_2 
       (.I0(\dataI_reg[2][23]_0 ),
        .I1(\dataQ_reg[2][7] ),
        .I2(mul1Q_out[7]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[2][23]_2 ),
        .I5(mul2Q_out[7]),
        .O(\dataQ[2][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[2][8]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[2][8]_i_2_n_0 ),
        .I2(\dataQ_reg[0][8] ),
        .I3(\dataI_reg[2][21] ),
        .I4(dataQ[128]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[2][23] [8]));
  LUT6 #(
    .INIT(64'hFFFF00FFB1FFB1FF)) 
    \dataQ[2][8]_i_2 
       (.I0(\dataI_reg[2][23]_0 ),
        .I1(\dataQ_reg[2][8] ),
        .I2(mul1Q_out[8]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(mul2Q_out[8]),
        .I5(\dataI_reg[2][23]_2 ),
        .O(\dataQ[2][8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[2][9]_i_1 
       (.I0(\dataQ[2][9]_i_2_n_0 ),
        .I1(\dataQ_reg[0][9] ),
        .I2(\dataI_reg[2][21] ),
        .I3(dataQ[129]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[2][23] [9]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[2][9]_i_2 
       (.I0(dataQ[129]),
        .I1(mul2Q_out[9]),
        .I2(\dataI_reg[2][23]_2 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[2][9]_i_3_n_0 ),
        .O(\dataQ[2][9]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[2][9]_i_3 
       (.I0(mul1Q_out[9]),
        .I1(\dataI_reg[2][23]_0 ),
        .I2(Q[1]),
        .I3(dataQ[129]),
        .O(\dataQ[2][9]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[3][0]_i_1 
       (.I0(\dataQ[3][0]_i_2_n_0 ),
        .I1(\dataQ_reg[0][0] ),
        .I2(\dataI_reg[3][21]_0 ),
        .I3(dataQ[96]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[3][23] [0]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[3][0]_i_2 
       (.I0(dataQ[96]),
        .I1(mul2Q_out[0]),
        .I2(\dataI_reg[3][23]_2 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[3][0]_i_3_n_0 ),
        .O(\dataQ[3][0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[3][0]_i_3 
       (.I0(mul1Q_out[0]),
        .I1(\dataI_reg[3][23]_0 ),
        .I2(Q[1]),
        .I3(dataQ[96]),
        .O(\dataQ[3][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[3][10]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[3][10]_i_2_n_0 ),
        .I2(\dataQ_reg[0][10] ),
        .I3(\dataI_reg[3][21]_0 ),
        .I4(dataQ[106]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[3][23] [10]));
  LUT6 #(
    .INIT(64'hFFFF00FFB1FFB1FF)) 
    \dataQ[3][10]_i_2 
       (.I0(\dataI_reg[3][23]_0 ),
        .I1(\dataQ_reg[3][10] ),
        .I2(mul1Q_out[10]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(mul2Q_out[10]),
        .I5(\dataI_reg[3][23]_2 ),
        .O(\dataQ[3][10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[3][11]_i_1 
       (.I0(\dataQ[3][11]_i_2_n_0 ),
        .I1(\dataQ_reg[0][11] ),
        .I2(\dataI_reg[3][21]_0 ),
        .I3(dataQ[107]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[3][23] [11]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[3][11]_i_2 
       (.I0(dataQ[107]),
        .I1(mul2Q_out[11]),
        .I2(\dataI_reg[3][23]_2 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[3][11]_i_3_n_0 ),
        .O(\dataQ[3][11]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[3][11]_i_3 
       (.I0(mul1Q_out[11]),
        .I1(\dataI_reg[3][23]_0 ),
        .I2(Q[1]),
        .I3(dataQ[107]),
        .O(\dataQ[3][11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[3][12]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[3][12]_i_2_n_0 ),
        .I2(\dataQ_reg[0][12] ),
        .I3(\dataI_reg[3][21]_0 ),
        .I4(dataQ[108]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[3][23] [12]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataQ[3][12]_i_2 
       (.I0(\dataI_reg[3][23]_0 ),
        .I1(\dataQ_reg[3][12] ),
        .I2(mul1Q_out[12]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[3][23]_2 ),
        .I5(mul2Q_out[12]),
        .O(\dataQ[3][12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[3][13]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[3][13]_i_2_n_0 ),
        .I2(\dataQ_reg[0][13] ),
        .I3(\dataI_reg[3][21]_0 ),
        .I4(dataQ[109]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[3][23] [13]));
  LUT6 #(
    .INIT(64'hFFFF00FFB1FFB1FF)) 
    \dataQ[3][13]_i_2 
       (.I0(\dataI_reg[3][23]_0 ),
        .I1(\dataQ_reg[3][13] ),
        .I2(mul1Q_out[13]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(mul2Q_out[13]),
        .I5(\dataI_reg[3][23]_2 ),
        .O(\dataQ[3][13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[3][14]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[3][14]_i_2_n_0 ),
        .I2(\dataQ_reg[0][14] ),
        .I3(\dataI_reg[3][21]_0 ),
        .I4(dataQ[110]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[3][23] [14]));
  LUT6 #(
    .INIT(64'hFFFF00FFB1FFB1FF)) 
    \dataQ[3][14]_i_2 
       (.I0(\dataI_reg[3][23]_0 ),
        .I1(\dataQ_reg[3][14] ),
        .I2(mul1Q_out[14]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(mul2Q_out[14]),
        .I5(\dataI_reg[3][23]_2 ),
        .O(\dataQ[3][14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[3][15]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[3][15]_i_2_n_0 ),
        .I2(\dataQ_reg[0][15] ),
        .I3(\dataI_reg[3][21]_0 ),
        .I4(dataQ[111]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[3][23] [15]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataQ[3][15]_i_2 
       (.I0(\dataI_reg[3][23]_0 ),
        .I1(\dataQ_reg[3][15] ),
        .I2(mul1Q_out[15]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[3][23]_2 ),
        .I5(mul2Q_out[15]),
        .O(\dataQ[3][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[3][16]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[3][16]_i_2_n_0 ),
        .I2(\dataQ_reg[0][16] ),
        .I3(\dataI_reg[3][21]_0 ),
        .I4(dataQ[112]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[3][23] [16]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataQ[3][16]_i_2 
       (.I0(\dataI_reg[3][23]_0 ),
        .I1(\dataQ_reg[3][16] ),
        .I2(mul1Q_out[16]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[3][23]_2 ),
        .I5(mul2Q_out[16]),
        .O(\dataQ[3][16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[3][17]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[3][17]_i_2_n_0 ),
        .I2(\dataQ_reg[0][17] ),
        .I3(\dataI_reg[3][21]_0 ),
        .I4(dataQ[113]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[3][23] [17]));
  LUT6 #(
    .INIT(64'hFFFF00FFB1FFB1FF)) 
    \dataQ[3][17]_i_2 
       (.I0(\dataI_reg[3][23]_0 ),
        .I1(\dataQ_reg[3][17] ),
        .I2(mul1Q_out[17]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(mul2Q_out[17]),
        .I5(\dataI_reg[3][23]_2 ),
        .O(\dataQ[3][17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[3][18]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[3][18]_i_2_n_0 ),
        .I2(\dataQ_reg[0][18] ),
        .I3(\dataI_reg[3][21]_0 ),
        .I4(dataQ[114]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[3][23] [18]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataQ[3][18]_i_2 
       (.I0(\dataI_reg[3][23]_0 ),
        .I1(\dataQ_reg[3][18] ),
        .I2(mul1Q_out[18]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[3][23]_2 ),
        .I5(mul2Q_out[18]),
        .O(\dataQ[3][18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[3][19]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[3][19]_i_2_n_0 ),
        .I2(\dataQ_reg[0][19] ),
        .I3(\dataI_reg[3][21]_0 ),
        .I4(dataQ[115]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[3][23] [19]));
  LUT6 #(
    .INIT(64'hFFFF00FFB1FFB1FF)) 
    \dataQ[3][19]_i_2 
       (.I0(\dataI_reg[3][23]_0 ),
        .I1(\dataQ_reg[3][19] ),
        .I2(mul1Q_out[19]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(mul2Q_out[19]),
        .I5(\dataI_reg[3][23]_2 ),
        .O(\dataQ[3][19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[3][1]_i_1 
       (.I0(\dataQ[3][1]_i_2_n_0 ),
        .I1(\dataQ_reg[0][1] ),
        .I2(\dataI_reg[3][21]_0 ),
        .I3(dataQ[97]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[3][23] [1]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[3][1]_i_2 
       (.I0(dataQ[97]),
        .I1(mul2Q_out[1]),
        .I2(\dataI_reg[3][23]_2 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[3][1]_i_3_n_0 ),
        .O(\dataQ[3][1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[3][1]_i_3 
       (.I0(mul1Q_out[1]),
        .I1(\dataI_reg[3][23]_0 ),
        .I2(Q[1]),
        .I3(dataQ[97]),
        .O(\dataQ[3][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[3][20]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[3][20]_i_2_n_0 ),
        .I2(\dataQ_reg[0][20] ),
        .I3(\dataI_reg[3][21]_0 ),
        .I4(dataQ[116]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[3][23] [20]));
  LUT6 #(
    .INIT(64'hFFFF00FFB1FFB1FF)) 
    \dataQ[3][20]_i_2 
       (.I0(\dataI_reg[3][23]_0 ),
        .I1(\dataQ_reg[3][20] ),
        .I2(mul1Q_out[20]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(mul2Q_out[20]),
        .I5(\dataI_reg[3][23]_2 ),
        .O(\dataQ[3][20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[3][21]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[3][21]_i_2_n_0 ),
        .I2(\dataQ_reg[0][21] ),
        .I3(\dataI_reg[3][21]_0 ),
        .I4(dataQ[117]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[3][23] [21]));
  LUT6 #(
    .INIT(64'hFFFF00FFB1FFB1FF)) 
    \dataQ[3][21]_i_2 
       (.I0(\dataI_reg[3][23]_0 ),
        .I1(\dataQ_reg[3][21] ),
        .I2(mul1Q_out[21]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(mul2Q_out[21]),
        .I5(\dataI_reg[3][23]_2 ),
        .O(\dataQ[3][21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[3][22]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[3][22]_i_2_n_0 ),
        .I2(\dataQ_reg[0][22] ),
        .I3(\dataI_reg[3][21]_0 ),
        .I4(dataQ[118]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[3][23] [22]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataQ[3][22]_i_2 
       (.I0(\dataI_reg[3][23]_0 ),
        .I1(\dataQ_reg[3][22] ),
        .I2(mul1Q_out[22]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[3][23]_2 ),
        .I5(mul2Q_out[22]),
        .O(\dataQ[3][22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[3][23]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[3][23]_i_2_n_0 ),
        .I2(\dataQ_reg[0][23]_0 ),
        .I3(\dataI_reg[3][21]_0 ),
        .I4(dataQ[119]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[3][23] [23]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataQ[3][23]_i_2 
       (.I0(\dataI_reg[3][23]_0 ),
        .I1(\dataQ_reg[3][23]_0 ),
        .I2(mul1Q_out[23]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[3][23]_2 ),
        .I5(mul2Q_out[23]),
        .O(\dataQ[3][23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[3][2]_i_1 
       (.I0(\dataQ[3][2]_i_2_n_0 ),
        .I1(\dataQ_reg[0][2] ),
        .I2(\dataI_reg[3][21]_0 ),
        .I3(dataQ[98]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[3][23] [2]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[3][2]_i_2 
       (.I0(dataQ[98]),
        .I1(mul2Q_out[2]),
        .I2(\dataI_reg[3][23]_2 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[3][2]_i_3_n_0 ),
        .O(\dataQ[3][2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[3][2]_i_3 
       (.I0(mul1Q_out[2]),
        .I1(\dataI_reg[3][23]_0 ),
        .I2(Q[1]),
        .I3(dataQ[98]),
        .O(\dataQ[3][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[3][3]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[3][3]_i_2_n_0 ),
        .I2(\dataQ_reg[0][3] ),
        .I3(\dataI_reg[3][21]_0 ),
        .I4(dataQ[99]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[3][23] [3]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataQ[3][3]_i_2 
       (.I0(\dataI_reg[3][23]_0 ),
        .I1(\dataQ_reg[3][3] ),
        .I2(mul1Q_out[3]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[3][23]_2 ),
        .I5(mul2Q_out[3]),
        .O(\dataQ[3][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[3][4]_i_1 
       (.I0(\dataQ[3][4]_i_2_n_0 ),
        .I1(\dataQ_reg[0][4] ),
        .I2(\dataI_reg[3][21]_0 ),
        .I3(dataQ[100]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[3][23] [4]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[3][4]_i_2 
       (.I0(dataQ[100]),
        .I1(mul2Q_out[4]),
        .I2(\dataI_reg[3][23]_2 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[3][4]_i_3_n_0 ),
        .O(\dataQ[3][4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[3][4]_i_3 
       (.I0(mul1Q_out[4]),
        .I1(\dataI_reg[3][23]_0 ),
        .I2(Q[1]),
        .I3(dataQ[100]),
        .O(\dataQ[3][4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[3][5]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[3][5]_i_2_n_0 ),
        .I2(\dataQ_reg[0][5] ),
        .I3(\dataI_reg[3][21]_0 ),
        .I4(dataQ[101]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[3][23] [5]));
  LUT6 #(
    .INIT(64'hFFFF00FFB1FFB1FF)) 
    \dataQ[3][5]_i_2 
       (.I0(\dataI_reg[3][23]_0 ),
        .I1(\dataQ_reg[3][5] ),
        .I2(mul1Q_out[5]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(mul2Q_out[5]),
        .I5(\dataI_reg[3][23]_2 ),
        .O(\dataQ[3][5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[3][6]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[3][6]_i_2_n_0 ),
        .I2(\dataQ_reg[0][6] ),
        .I3(\dataI_reg[3][21]_0 ),
        .I4(dataQ[102]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[3][23] [6]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataQ[3][6]_i_2 
       (.I0(\dataI_reg[3][23]_0 ),
        .I1(\dataQ_reg[3][6] ),
        .I2(mul1Q_out[6]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[3][23]_2 ),
        .I5(mul2Q_out[6]),
        .O(\dataQ[3][6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[3][7]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[3][7]_i_2_n_0 ),
        .I2(\dataQ_reg[7][7] ),
        .I3(\dataI_reg[3][21]_0 ),
        .I4(dataQ[103]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[3][23] [7]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataQ[3][7]_i_2 
       (.I0(\dataI_reg[3][23]_0 ),
        .I1(\dataQ_reg[3][7] ),
        .I2(mul1Q_out[7]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[3][23]_2 ),
        .I5(mul2Q_out[7]),
        .O(\dataQ[3][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[3][8]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[3][8]_i_2_n_0 ),
        .I2(\dataQ_reg[0][8] ),
        .I3(\dataI_reg[3][21]_0 ),
        .I4(dataQ[104]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[3][23] [8]));
  LUT6 #(
    .INIT(64'hFFFF00FFB1FFB1FF)) 
    \dataQ[3][8]_i_2 
       (.I0(\dataI_reg[3][23]_0 ),
        .I1(\dataQ_reg[3][8] ),
        .I2(mul1Q_out[8]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(mul2Q_out[8]),
        .I5(\dataI_reg[3][23]_2 ),
        .O(\dataQ[3][8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[3][9]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[3][9]_i_2_n_0 ),
        .I2(\dataQ_reg[0][9] ),
        .I3(\dataI_reg[3][21]_0 ),
        .I4(dataQ[105]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[3][23] [9]));
  LUT6 #(
    .INIT(64'hFFFF00FFB1FFB1FF)) 
    \dataQ[3][9]_i_2 
       (.I0(\dataI_reg[3][23]_0 ),
        .I1(\dataQ_reg[3][9] ),
        .I2(mul1Q_out[9]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(mul2Q_out[9]),
        .I5(\dataI_reg[3][23]_2 ),
        .O(\dataQ[3][9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[4][0]_i_1 
       (.I0(\dataQ[4][0]_i_2_n_0 ),
        .I1(\dataQ_reg[0][0] ),
        .I2(\dataI_reg[4][23]_0 ),
        .I3(dataQ[72]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[4][23] [0]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataQ[4][0]_i_2 
       (.I0(mul2Q_out[0]),
        .I1(\dataI_reg[4][23]_1 ),
        .I2(\dataQ[4][0]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[72]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[4][0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[4][0]_i_3 
       (.I0(mul1Q_out[0]),
        .I1(\dataI[4][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[72]),
        .O(\dataQ[4][0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[4][10]_i_1 
       (.I0(\dataQ[4][10]_i_2_n_0 ),
        .I1(\dataQ_reg[0][10] ),
        .I2(\dataI_reg[4][23]_0 ),
        .I3(dataQ[82]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[4][23] [10]));
  LUT6 #(
    .INIT(64'h8D008D00FF000000)) 
    \dataQ[4][10]_i_2 
       (.I0(\dataI_reg[4][23]_1 ),
        .I1(mul2Q_out[10]),
        .I2(\dataQ[4][10]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[82]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[4][10]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[4][10]_i_3 
       (.I0(mul1Q_out[10]),
        .I1(\dataI[4][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[82]),
        .O(\dataQ[4][10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[4][11]_i_1 
       (.I0(\dataQ[4][11]_i_2_n_0 ),
        .I1(\dataQ_reg[0][11] ),
        .I2(\dataI_reg[4][23]_0 ),
        .I3(dataQ[83]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[4][23] [11]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[4][11]_i_2 
       (.I0(dataQ[83]),
        .I1(mul2Q_out[11]),
        .I2(\dataI_reg[4][23]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[4][11]_i_3_n_0 ),
        .O(\dataQ[4][11]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[4][11]_i_3 
       (.I0(mul1Q_out[11]),
        .I1(\dataI[4][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[83]),
        .O(\dataQ[4][11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[4][12]_i_1 
       (.I0(\dataQ[4][12]_i_2_n_0 ),
        .I1(\dataQ_reg[0][12] ),
        .I2(\dataI_reg[4][23]_0 ),
        .I3(dataQ[84]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[4][23] [12]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataQ[4][12]_i_2 
       (.I0(mul2Q_out[12]),
        .I1(\dataI_reg[4][23]_1 ),
        .I2(\dataQ[4][12]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[84]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[4][12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[4][12]_i_3 
       (.I0(mul1Q_out[12]),
        .I1(\dataI[4][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[84]),
        .O(\dataQ[4][12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[4][13]_i_1 
       (.I0(\dataQ[4][13]_i_2_n_0 ),
        .I1(\dataQ_reg[0][13] ),
        .I2(\dataI_reg[4][23]_0 ),
        .I3(dataQ[85]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[4][23] [13]));
  LUT6 #(
    .INIT(64'h8D008D00FF000000)) 
    \dataQ[4][13]_i_2 
       (.I0(\dataI_reg[4][23]_1 ),
        .I1(mul2Q_out[13]),
        .I2(\dataQ[4][13]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[85]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[4][13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[4][13]_i_3 
       (.I0(mul1Q_out[13]),
        .I1(\dataI[4][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[85]),
        .O(\dataQ[4][13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[4][14]_i_1 
       (.I0(\dataQ[4][14]_i_2_n_0 ),
        .I1(\dataQ_reg[0][14] ),
        .I2(\dataI_reg[4][23]_0 ),
        .I3(dataQ[86]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[4][23] [14]));
  LUT6 #(
    .INIT(64'h8D008D00FF000000)) 
    \dataQ[4][14]_i_2 
       (.I0(\dataI_reg[4][23]_1 ),
        .I1(mul2Q_out[14]),
        .I2(\dataQ[4][14]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[86]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[4][14]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[4][14]_i_3 
       (.I0(mul1Q_out[14]),
        .I1(\dataI[4][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[86]),
        .O(\dataQ[4][14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[4][15]_i_1 
       (.I0(\dataQ[4][15]_i_2_n_0 ),
        .I1(\dataQ_reg[0][15] ),
        .I2(\dataI_reg[4][23]_0 ),
        .I3(dataQ[87]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[4][23] [15]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[4][15]_i_2 
       (.I0(dataQ[87]),
        .I1(mul2Q_out[15]),
        .I2(\dataI_reg[4][23]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[4][15]_i_3_n_0 ),
        .O(\dataQ[4][15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[4][15]_i_3 
       (.I0(mul1Q_out[15]),
        .I1(\dataI[4][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[87]),
        .O(\dataQ[4][15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[4][16]_i_1 
       (.I0(\dataQ[4][16]_i_2_n_0 ),
        .I1(\dataQ_reg[0][16] ),
        .I2(\dataI_reg[4][23]_0 ),
        .I3(dataQ[88]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[4][23] [16]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[4][16]_i_2 
       (.I0(dataQ[88]),
        .I1(mul2Q_out[16]),
        .I2(\dataI_reg[4][23]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[4][16]_i_3_n_0 ),
        .O(\dataQ[4][16]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[4][16]_i_3 
       (.I0(mul1Q_out[16]),
        .I1(\dataI[4][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[88]),
        .O(\dataQ[4][16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[4][17]_i_1 
       (.I0(\dataQ[4][17]_i_2_n_0 ),
        .I1(\dataQ_reg[0][17] ),
        .I2(\dataI_reg[4][23]_0 ),
        .I3(dataQ[89]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[4][23] [17]));
  LUT6 #(
    .INIT(64'h8D008D00FF000000)) 
    \dataQ[4][17]_i_2 
       (.I0(\dataI_reg[4][23]_1 ),
        .I1(mul2Q_out[17]),
        .I2(\dataQ[4][17]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[89]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[4][17]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[4][17]_i_3 
       (.I0(mul1Q_out[17]),
        .I1(\dataI[4][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[89]),
        .O(\dataQ[4][17]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[4][18]_i_1 
       (.I0(\dataQ[4][18]_i_2_n_0 ),
        .I1(\dataQ_reg[0][18] ),
        .I2(\dataI_reg[4][23]_0 ),
        .I3(dataQ[90]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[4][23] [18]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataQ[4][18]_i_2 
       (.I0(mul2Q_out[18]),
        .I1(\dataI_reg[4][23]_1 ),
        .I2(\dataQ[4][18]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[90]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[4][18]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[4][18]_i_3 
       (.I0(mul1Q_out[18]),
        .I1(\dataI[4][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[90]),
        .O(\dataQ[4][18]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[4][19]_i_1 
       (.I0(\dataQ[4][19]_i_2_n_0 ),
        .I1(\dataQ_reg[0][19] ),
        .I2(\dataI_reg[4][23]_0 ),
        .I3(dataQ[91]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[4][23] [19]));
  LUT6 #(
    .INIT(64'h8D008D00FF000000)) 
    \dataQ[4][19]_i_2 
       (.I0(\dataI_reg[4][23]_1 ),
        .I1(mul2Q_out[19]),
        .I2(\dataQ[4][19]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[91]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[4][19]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[4][19]_i_3 
       (.I0(mul1Q_out[19]),
        .I1(\dataI[4][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[91]),
        .O(\dataQ[4][19]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[4][1]_i_1 
       (.I0(\dataQ[4][1]_i_2_n_0 ),
        .I1(\dataQ_reg[0][1] ),
        .I2(\dataI_reg[4][23]_0 ),
        .I3(dataQ[73]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[4][23] [1]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataQ[4][1]_i_2 
       (.I0(mul2Q_out[1]),
        .I1(\dataI_reg[4][23]_1 ),
        .I2(\dataQ[4][1]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[73]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[4][1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[4][1]_i_3 
       (.I0(mul1Q_out[1]),
        .I1(\dataI[4][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[73]),
        .O(\dataQ[4][1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[4][20]_i_1 
       (.I0(\dataQ[4][20]_i_2_n_0 ),
        .I1(\dataQ_reg[0][20] ),
        .I2(\dataI_reg[4][23]_0 ),
        .I3(dataQ[92]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[4][23] [20]));
  LUT6 #(
    .INIT(64'h8D008D00FF000000)) 
    \dataQ[4][20]_i_2 
       (.I0(\dataI_reg[4][23]_1 ),
        .I1(mul2Q_out[20]),
        .I2(\dataQ[4][20]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[92]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[4][20]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[4][20]_i_3 
       (.I0(mul1Q_out[20]),
        .I1(\dataI[4][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[92]),
        .O(\dataQ[4][20]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[4][21]_i_1 
       (.I0(\dataQ[4][21]_i_2_n_0 ),
        .I1(\dataQ_reg[0][21] ),
        .I2(\dataI_reg[4][23]_0 ),
        .I3(dataQ[93]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[4][23] [21]));
  LUT6 #(
    .INIT(64'h8D008D00FF000000)) 
    \dataQ[4][21]_i_2 
       (.I0(\dataI_reg[4][23]_1 ),
        .I1(mul2Q_out[21]),
        .I2(\dataQ[4][21]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[93]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[4][21]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[4][21]_i_3 
       (.I0(mul1Q_out[21]),
        .I1(\dataI[4][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[93]),
        .O(\dataQ[4][21]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[4][22]_i_1 
       (.I0(\dataQ[4][22]_i_2_n_0 ),
        .I1(\dataQ_reg[0][22] ),
        .I2(\dataI_reg[4][23]_0 ),
        .I3(dataQ[94]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[4][23] [22]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataQ[4][22]_i_2 
       (.I0(mul2Q_out[22]),
        .I1(\dataI_reg[4][23]_1 ),
        .I2(\dataQ[4][22]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[94]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[4][22]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[4][22]_i_3 
       (.I0(mul1Q_out[22]),
        .I1(\dataI[4][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[94]),
        .O(\dataQ[4][22]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[4][23]_i_1 
       (.I0(\dataQ[4][23]_i_2_n_0 ),
        .I1(\dataQ_reg[0][23]_0 ),
        .I2(\dataI_reg[4][23]_0 ),
        .I3(dataQ[95]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[4][23] [23]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[4][23]_i_2 
       (.I0(dataQ[95]),
        .I1(mul2Q_out[23]),
        .I2(\dataI_reg[4][23]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[4][23]_i_3_n_0 ),
        .O(\dataQ[4][23]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[4][23]_i_3 
       (.I0(mul1Q_out[23]),
        .I1(\dataI[4][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[95]),
        .O(\dataQ[4][23]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[4][2]_i_1 
       (.I0(\dataQ[4][2]_i_2_n_0 ),
        .I1(\dataQ_reg[0][2] ),
        .I2(\dataI_reg[4][23]_0 ),
        .I3(dataQ[74]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[4][23] [2]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataQ[4][2]_i_2 
       (.I0(mul2Q_out[2]),
        .I1(\dataI_reg[4][23]_1 ),
        .I2(\dataQ[4][2]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[74]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[4][2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[4][2]_i_3 
       (.I0(mul1Q_out[2]),
        .I1(\dataI[4][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[74]),
        .O(\dataQ[4][2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[4][3]_i_1 
       (.I0(\dataQ[4][3]_i_2_n_0 ),
        .I1(\dataQ_reg[0][3] ),
        .I2(\dataI_reg[4][23]_0 ),
        .I3(dataQ[75]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[4][23] [3]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[4][3]_i_2 
       (.I0(dataQ[75]),
        .I1(mul2Q_out[3]),
        .I2(\dataI_reg[4][23]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[4][3]_i_3_n_0 ),
        .O(\dataQ[4][3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[4][3]_i_3 
       (.I0(mul1Q_out[3]),
        .I1(\dataI[4][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[75]),
        .O(\dataQ[4][3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[4][4]_i_1 
       (.I0(\dataQ[4][4]_i_2_n_0 ),
        .I1(\dataQ_reg[0][4] ),
        .I2(\dataI_reg[4][23]_0 ),
        .I3(dataQ[76]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[4][23] [4]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataQ[4][4]_i_2 
       (.I0(mul2Q_out[4]),
        .I1(\dataI_reg[4][23]_1 ),
        .I2(\dataQ[4][4]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[76]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[4][4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[4][4]_i_3 
       (.I0(mul1Q_out[4]),
        .I1(\dataI[4][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[76]),
        .O(\dataQ[4][4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[4][5]_i_1 
       (.I0(\dataQ[4][5]_i_2_n_0 ),
        .I1(\dataQ_reg[0][5] ),
        .I2(\dataI_reg[4][23]_0 ),
        .I3(dataQ[77]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[4][23] [5]));
  LUT6 #(
    .INIT(64'h8D008D00FF000000)) 
    \dataQ[4][5]_i_2 
       (.I0(\dataI_reg[4][23]_1 ),
        .I1(mul2Q_out[5]),
        .I2(\dataQ[4][5]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[77]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[4][5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[4][5]_i_3 
       (.I0(mul1Q_out[5]),
        .I1(\dataI[4][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[77]),
        .O(\dataQ[4][5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[4][6]_i_1 
       (.I0(\dataQ[4][6]_i_2_n_0 ),
        .I1(\dataQ_reg[0][6] ),
        .I2(\dataI_reg[4][23]_0 ),
        .I3(dataQ[78]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[4][23] [6]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[4][6]_i_2 
       (.I0(dataQ[78]),
        .I1(mul2Q_out[6]),
        .I2(\dataI_reg[4][23]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[4][6]_i_3_n_0 ),
        .O(\dataQ[4][6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[4][6]_i_3 
       (.I0(mul1Q_out[6]),
        .I1(\dataI[4][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[78]),
        .O(\dataQ[4][6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[4][7]_i_1 
       (.I0(\dataQ[4][7]_i_2_n_0 ),
        .I1(\dataQ_reg[7][7] ),
        .I2(\dataI_reg[4][23]_0 ),
        .I3(dataQ[79]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[4][23] [7]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataQ[4][7]_i_2 
       (.I0(mul2Q_out[7]),
        .I1(\dataI_reg[4][23]_1 ),
        .I2(\dataQ[4][7]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[79]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[4][7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[4][7]_i_3 
       (.I0(mul1Q_out[7]),
        .I1(\dataI[4][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[79]),
        .O(\dataQ[4][7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[4][8]_i_1 
       (.I0(\dataQ[4][8]_i_2_n_0 ),
        .I1(\dataQ_reg[0][8] ),
        .I2(\dataI_reg[4][23]_0 ),
        .I3(dataQ[80]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[4][23] [8]));
  LUT6 #(
    .INIT(64'h8D008D00FF000000)) 
    \dataQ[4][8]_i_2 
       (.I0(\dataI_reg[4][23]_1 ),
        .I1(mul2Q_out[8]),
        .I2(\dataQ[4][8]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[80]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[4][8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[4][8]_i_3 
       (.I0(mul1Q_out[8]),
        .I1(\dataI[4][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[80]),
        .O(\dataQ[4][8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[4][9]_i_1 
       (.I0(\dataQ[4][9]_i_2_n_0 ),
        .I1(\dataQ_reg[0][9] ),
        .I2(\dataI_reg[4][23]_0 ),
        .I3(dataQ[81]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[4][23] [9]));
  LUT6 #(
    .INIT(64'h8D008D00FF000000)) 
    \dataQ[4][9]_i_2 
       (.I0(\dataI_reg[4][23]_1 ),
        .I1(mul2Q_out[9]),
        .I2(\dataQ[4][9]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[81]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[4][9]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[4][9]_i_3 
       (.I0(mul1Q_out[9]),
        .I1(\dataI[4][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[81]),
        .O(\dataQ[4][9]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[5][0]_i_1 
       (.I0(\dataQ[5][0]_i_2_n_0 ),
        .I1(\dataQ_reg[0][0] ),
        .I2(\dataI_reg[5][23]_0 ),
        .I3(dataQ[48]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[5][23] [0]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataQ[5][0]_i_2 
       (.I0(mul2Q_out[0]),
        .I1(\dataI_reg[5][23]_1 ),
        .I2(\dataQ[5][0]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[48]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[5][0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[5][0]_i_3 
       (.I0(mul1Q_out[0]),
        .I1(\dataI[5][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[48]),
        .O(\dataQ[5][0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[5][10]_i_1 
       (.I0(\dataQ[5][10]_i_2_n_0 ),
        .I1(\dataQ_reg[0][10] ),
        .I2(\dataI_reg[5][23]_0 ),
        .I3(dataQ[58]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[5][23] [10]));
  LUT6 #(
    .INIT(64'h8D008D00FF000000)) 
    \dataQ[5][10]_i_2 
       (.I0(\dataI_reg[5][23]_1 ),
        .I1(mul2Q_out[10]),
        .I2(\dataQ[5][10]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[58]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[5][10]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[5][10]_i_3 
       (.I0(mul1Q_out[10]),
        .I1(\dataI[5][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[58]),
        .O(\dataQ[5][10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[5][11]_i_1 
       (.I0(\dataQ[5][11]_i_2_n_0 ),
        .I1(\dataQ_reg[0][11] ),
        .I2(\dataI_reg[5][23]_0 ),
        .I3(dataQ[59]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[5][23] [11]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[5][11]_i_2 
       (.I0(dataQ[59]),
        .I1(mul2Q_out[11]),
        .I2(\dataI_reg[5][23]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[5][11]_i_3_n_0 ),
        .O(\dataQ[5][11]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[5][11]_i_3 
       (.I0(mul1Q_out[11]),
        .I1(\dataI[5][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[59]),
        .O(\dataQ[5][11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[5][12]_i_1 
       (.I0(\dataQ[5][12]_i_2_n_0 ),
        .I1(\dataQ_reg[0][12] ),
        .I2(\dataI_reg[5][23]_0 ),
        .I3(dataQ[60]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[5][23] [12]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataQ[5][12]_i_2 
       (.I0(mul2Q_out[12]),
        .I1(\dataI_reg[5][23]_1 ),
        .I2(\dataQ[5][12]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[60]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[5][12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[5][12]_i_3 
       (.I0(mul1Q_out[12]),
        .I1(\dataI[5][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[60]),
        .O(\dataQ[5][12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[5][13]_i_1 
       (.I0(\dataQ[5][13]_i_2_n_0 ),
        .I1(\dataQ_reg[0][13] ),
        .I2(\dataI_reg[5][23]_0 ),
        .I3(dataQ[61]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[5][23] [13]));
  LUT6 #(
    .INIT(64'h8D008D00FF000000)) 
    \dataQ[5][13]_i_2 
       (.I0(\dataI_reg[5][23]_1 ),
        .I1(mul2Q_out[13]),
        .I2(\dataQ[5][13]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[61]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[5][13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[5][13]_i_3 
       (.I0(mul1Q_out[13]),
        .I1(\dataI[5][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[61]),
        .O(\dataQ[5][13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[5][14]_i_1 
       (.I0(\dataQ[5][14]_i_2_n_0 ),
        .I1(\dataQ_reg[0][14] ),
        .I2(\dataI_reg[5][23]_0 ),
        .I3(dataQ[62]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[5][23] [14]));
  LUT6 #(
    .INIT(64'h8D008D00FF000000)) 
    \dataQ[5][14]_i_2 
       (.I0(\dataI_reg[5][23]_1 ),
        .I1(mul2Q_out[14]),
        .I2(\dataQ[5][14]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[62]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[5][14]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[5][14]_i_3 
       (.I0(mul1Q_out[14]),
        .I1(\dataI[5][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[62]),
        .O(\dataQ[5][14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[5][15]_i_1 
       (.I0(\dataQ[5][15]_i_2_n_0 ),
        .I1(\dataQ_reg[0][15] ),
        .I2(\dataI_reg[5][23]_0 ),
        .I3(dataQ[63]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[5][23] [15]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[5][15]_i_2 
       (.I0(dataQ[63]),
        .I1(mul2Q_out[15]),
        .I2(\dataI_reg[5][23]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[5][15]_i_3_n_0 ),
        .O(\dataQ[5][15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[5][15]_i_3 
       (.I0(mul1Q_out[15]),
        .I1(\dataI[5][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[63]),
        .O(\dataQ[5][15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[5][16]_i_1 
       (.I0(\dataQ[5][16]_i_2_n_0 ),
        .I1(\dataQ_reg[0][16] ),
        .I2(\dataI_reg[5][23]_0 ),
        .I3(dataQ[64]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[5][23] [16]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[5][16]_i_2 
       (.I0(dataQ[64]),
        .I1(mul2Q_out[16]),
        .I2(\dataI_reg[5][23]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[5][16]_i_3_n_0 ),
        .O(\dataQ[5][16]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[5][16]_i_3 
       (.I0(mul1Q_out[16]),
        .I1(\dataI[5][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[64]),
        .O(\dataQ[5][16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[5][17]_i_1 
       (.I0(\dataQ[5][17]_i_2_n_0 ),
        .I1(\dataQ_reg[0][17] ),
        .I2(\dataI_reg[5][23]_0 ),
        .I3(dataQ[65]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[5][23] [17]));
  LUT6 #(
    .INIT(64'h8D008D00FF000000)) 
    \dataQ[5][17]_i_2 
       (.I0(\dataI_reg[5][23]_1 ),
        .I1(mul2Q_out[17]),
        .I2(\dataQ[5][17]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[65]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[5][17]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[5][17]_i_3 
       (.I0(mul1Q_out[17]),
        .I1(\dataI[5][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[65]),
        .O(\dataQ[5][17]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[5][18]_i_1 
       (.I0(\dataQ[5][18]_i_2_n_0 ),
        .I1(\dataQ_reg[0][18] ),
        .I2(\dataI_reg[5][23]_0 ),
        .I3(dataQ[66]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[5][23] [18]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataQ[5][18]_i_2 
       (.I0(mul2Q_out[18]),
        .I1(\dataI_reg[5][23]_1 ),
        .I2(\dataQ[5][18]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[66]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[5][18]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[5][18]_i_3 
       (.I0(mul1Q_out[18]),
        .I1(\dataI[5][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[66]),
        .O(\dataQ[5][18]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[5][19]_i_1 
       (.I0(\dataQ[5][19]_i_2_n_0 ),
        .I1(\dataQ_reg[0][19] ),
        .I2(\dataI_reg[5][23]_0 ),
        .I3(dataQ[67]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[5][23] [19]));
  LUT6 #(
    .INIT(64'h8D008D00FF000000)) 
    \dataQ[5][19]_i_2 
       (.I0(\dataI_reg[5][23]_1 ),
        .I1(mul2Q_out[19]),
        .I2(\dataQ[5][19]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[67]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[5][19]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[5][19]_i_3 
       (.I0(mul1Q_out[19]),
        .I1(\dataI[5][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[67]),
        .O(\dataQ[5][19]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[5][1]_i_1 
       (.I0(\dataQ[5][1]_i_2_n_0 ),
        .I1(\dataQ_reg[0][1] ),
        .I2(\dataI_reg[5][23]_0 ),
        .I3(dataQ[49]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[5][23] [1]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataQ[5][1]_i_2 
       (.I0(mul2Q_out[1]),
        .I1(\dataI_reg[5][23]_1 ),
        .I2(\dataQ[5][1]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[49]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[5][1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[5][1]_i_3 
       (.I0(mul1Q_out[1]),
        .I1(\dataI[5][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[49]),
        .O(\dataQ[5][1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[5][20]_i_1 
       (.I0(\dataQ[5][20]_i_2_n_0 ),
        .I1(\dataQ_reg[0][20] ),
        .I2(\dataI_reg[5][23]_0 ),
        .I3(dataQ[68]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[5][23] [20]));
  LUT6 #(
    .INIT(64'h8D008D00FF000000)) 
    \dataQ[5][20]_i_2 
       (.I0(\dataI_reg[5][23]_1 ),
        .I1(mul2Q_out[20]),
        .I2(\dataQ[5][20]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[68]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[5][20]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[5][20]_i_3 
       (.I0(mul1Q_out[20]),
        .I1(\dataI[5][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[68]),
        .O(\dataQ[5][20]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[5][21]_i_1 
       (.I0(\dataQ[5][21]_i_2_n_0 ),
        .I1(\dataQ_reg[0][21] ),
        .I2(\dataI_reg[5][23]_0 ),
        .I3(dataQ[69]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[5][23] [21]));
  LUT6 #(
    .INIT(64'h8D008D00FF000000)) 
    \dataQ[5][21]_i_2 
       (.I0(\dataI_reg[5][23]_1 ),
        .I1(mul2Q_out[21]),
        .I2(\dataQ[5][21]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[69]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[5][21]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[5][21]_i_3 
       (.I0(mul1Q_out[21]),
        .I1(\dataI[5][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[69]),
        .O(\dataQ[5][21]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[5][22]_i_1 
       (.I0(\dataQ[5][22]_i_2_n_0 ),
        .I1(\dataQ_reg[0][22] ),
        .I2(\dataI_reg[5][23]_0 ),
        .I3(dataQ[70]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[5][23] [22]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataQ[5][22]_i_2 
       (.I0(mul2Q_out[22]),
        .I1(\dataI_reg[5][23]_1 ),
        .I2(\dataQ[5][22]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[70]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[5][22]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[5][22]_i_3 
       (.I0(mul1Q_out[22]),
        .I1(\dataI[5][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[70]),
        .O(\dataQ[5][22]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[5][23]_i_1 
       (.I0(\dataQ[5][23]_i_2_n_0 ),
        .I1(\dataQ_reg[0][23]_0 ),
        .I2(\dataI_reg[5][23]_0 ),
        .I3(dataQ[71]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[5][23] [23]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[5][23]_i_2 
       (.I0(dataQ[71]),
        .I1(mul2Q_out[23]),
        .I2(\dataI_reg[5][23]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[5][23]_i_3_n_0 ),
        .O(\dataQ[5][23]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[5][23]_i_3 
       (.I0(mul1Q_out[23]),
        .I1(\dataI[5][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[71]),
        .O(\dataQ[5][23]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[5][2]_i_1 
       (.I0(\dataQ[5][2]_i_2_n_0 ),
        .I1(\dataQ_reg[0][2] ),
        .I2(\dataI_reg[5][23]_0 ),
        .I3(dataQ[50]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[5][23] [2]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataQ[5][2]_i_2 
       (.I0(mul2Q_out[2]),
        .I1(\dataI_reg[5][23]_1 ),
        .I2(\dataQ[5][2]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[50]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[5][2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[5][2]_i_3 
       (.I0(mul1Q_out[2]),
        .I1(\dataI[5][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[50]),
        .O(\dataQ[5][2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[5][3]_i_1 
       (.I0(\dataQ[5][3]_i_2_n_0 ),
        .I1(\dataQ_reg[0][3] ),
        .I2(\dataI_reg[5][23]_0 ),
        .I3(dataQ[51]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[5][23] [3]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[5][3]_i_2 
       (.I0(dataQ[51]),
        .I1(mul2Q_out[3]),
        .I2(\dataI_reg[5][23]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[5][3]_i_3_n_0 ),
        .O(\dataQ[5][3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[5][3]_i_3 
       (.I0(mul1Q_out[3]),
        .I1(\dataI[5][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[51]),
        .O(\dataQ[5][3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[5][4]_i_1 
       (.I0(\dataQ[5][4]_i_2_n_0 ),
        .I1(\dataQ_reg[0][4] ),
        .I2(\dataI_reg[5][23]_0 ),
        .I3(dataQ[52]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[5][23] [4]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataQ[5][4]_i_2 
       (.I0(mul2Q_out[4]),
        .I1(\dataI_reg[5][23]_1 ),
        .I2(\dataQ[5][4]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[52]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[5][4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[5][4]_i_3 
       (.I0(mul1Q_out[4]),
        .I1(\dataI[5][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[52]),
        .O(\dataQ[5][4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[5][5]_i_1 
       (.I0(\dataQ[5][5]_i_2_n_0 ),
        .I1(\dataQ_reg[0][5] ),
        .I2(\dataI_reg[5][23]_0 ),
        .I3(dataQ[53]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[5][23] [5]));
  LUT6 #(
    .INIT(64'h8D008D00FF000000)) 
    \dataQ[5][5]_i_2 
       (.I0(\dataI_reg[5][23]_1 ),
        .I1(mul2Q_out[5]),
        .I2(\dataQ[5][5]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[53]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[5][5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[5][5]_i_3 
       (.I0(mul1Q_out[5]),
        .I1(\dataI[5][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[53]),
        .O(\dataQ[5][5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[5][6]_i_1 
       (.I0(\dataQ[5][6]_i_2_n_0 ),
        .I1(\dataQ_reg[0][6] ),
        .I2(\dataI_reg[5][23]_0 ),
        .I3(dataQ[54]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[5][23] [6]));
  LUT6 #(
    .INIT(64'h8B008B00FF000000)) 
    \dataQ[5][6]_i_2 
       (.I0(mul2Q_out[6]),
        .I1(\dataI_reg[5][23]_1 ),
        .I2(\dataQ[5][6]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[54]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[5][6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[5][6]_i_3 
       (.I0(mul1Q_out[6]),
        .I1(\dataI[5][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[54]),
        .O(\dataQ[5][6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[5][7]_i_1 
       (.I0(\dataQ[5][7]_i_2_n_0 ),
        .I1(\dataQ_reg[7][7] ),
        .I2(\dataI_reg[5][23]_0 ),
        .I3(dataQ[55]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[5][23] [7]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[5][7]_i_2 
       (.I0(dataQ[55]),
        .I1(mul2Q_out[7]),
        .I2(\dataI_reg[5][23]_1 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[5][7]_i_3_n_0 ),
        .O(\dataQ[5][7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[5][7]_i_3 
       (.I0(mul1Q_out[7]),
        .I1(\dataI[5][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[55]),
        .O(\dataQ[5][7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[5][8]_i_1 
       (.I0(\dataQ[5][8]_i_2_n_0 ),
        .I1(\dataQ_reg[0][8] ),
        .I2(\dataI_reg[5][23]_0 ),
        .I3(dataQ[56]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[5][23] [8]));
  LUT6 #(
    .INIT(64'h8D008D00FF000000)) 
    \dataQ[5][8]_i_2 
       (.I0(\dataI_reg[5][23]_1 ),
        .I1(mul2Q_out[8]),
        .I2(\dataQ[5][8]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[56]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[5][8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[5][8]_i_3 
       (.I0(mul1Q_out[8]),
        .I1(\dataI[5][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[56]),
        .O(\dataQ[5][8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEFEA)) 
    \dataQ[5][9]_i_1 
       (.I0(\dataQ[5][9]_i_2_n_0 ),
        .I1(\dataQ_reg[0][9] ),
        .I2(\dataI_reg[5][23]_0 ),
        .I3(dataQ[57]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[5][23] [9]));
  LUT6 #(
    .INIT(64'h8D008D00FF000000)) 
    \dataQ[5][9]_i_2 
       (.I0(\dataI_reg[5][23]_1 ),
        .I1(mul2Q_out[9]),
        .I2(\dataQ[5][9]_i_3_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(dataQ[57]),
        .I5(\topIdx[3]_i_5_n_0 ),
        .O(\dataQ[5][9]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \dataQ[5][9]_i_3 
       (.I0(mul1Q_out[9]),
        .I1(\dataI[5][23]_i_2_0 ),
        .I2(Q[1]),
        .I3(dataQ[57]),
        .O(\dataQ[5][9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[6][0]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[6][0]_i_2_n_0 ),
        .I2(\dataQ_reg[0][0] ),
        .I3(\dataQ_reg[6][7] ),
        .I4(dataQ[24]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[6][23] [0]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataQ[6][0]_i_2 
       (.I0(\dataQ_reg[6][22] ),
        .I1(\dataQ_reg[6][0] ),
        .I2(mul1Q_out[0]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[6][23]_0 ),
        .I5(mul2Q_out[0]),
        .O(\dataQ[6][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[6][10]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[6][10]_i_2_n_0 ),
        .I2(\dataQ_reg[0][10] ),
        .I3(\dataQ_reg[6][7] ),
        .I4(dataQ[34]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[6][23] [10]));
  LUT6 #(
    .INIT(64'hFFFF00FFB1FFB1FF)) 
    \dataQ[6][10]_i_2 
       (.I0(\dataQ_reg[6][22] ),
        .I1(\dataQ_reg[6][10] ),
        .I2(mul1Q_out[10]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(mul2Q_out[10]),
        .I5(\dataI_reg[6][23]_0 ),
        .O(\dataQ[6][10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[6][11]_i_1 
       (.I0(\dataQ[6][11]_i_2_n_0 ),
        .I1(\dataQ_reg[0][11] ),
        .I2(\dataQ_reg[6][7] ),
        .I3(dataQ[35]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[6][23] [11]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[6][11]_i_2 
       (.I0(dataQ[35]),
        .I1(mul2Q_out[11]),
        .I2(\dataI_reg[6][23]_0 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[6][11]_i_4_n_0 ),
        .O(\dataQ[6][11]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[6][11]_i_4 
       (.I0(mul1Q_out[11]),
        .I1(\dataQ_reg[6][22] ),
        .I2(Q[1]),
        .I3(dataQ[35]),
        .O(\dataQ[6][11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[6][12]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[6][12]_i_2_n_0 ),
        .I2(\dataQ_reg[0][12] ),
        .I3(\dataQ_reg[6][7] ),
        .I4(dataQ[36]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[6][23] [12]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataQ[6][12]_i_2 
       (.I0(\dataQ_reg[6][22] ),
        .I1(\dataQ_reg[6][12] ),
        .I2(mul1Q_out[12]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[6][23]_0 ),
        .I5(mul2Q_out[12]),
        .O(\dataQ[6][12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[6][13]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[6][13]_i_2_n_0 ),
        .I2(\dataQ_reg[0][13] ),
        .I3(\dataQ_reg[6][7] ),
        .I4(dataQ[37]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[6][23] [13]));
  LUT6 #(
    .INIT(64'hFFFF00FFB1FFB1FF)) 
    \dataQ[6][13]_i_2 
       (.I0(\dataQ_reg[6][22] ),
        .I1(\dataQ_reg[6][13] ),
        .I2(mul1Q_out[13]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(mul2Q_out[13]),
        .I5(\dataI_reg[6][23]_0 ),
        .O(\dataQ[6][13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[6][14]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[6][14]_i_2_n_0 ),
        .I2(\dataQ_reg[0][14] ),
        .I3(\dataQ_reg[6][7] ),
        .I4(dataQ[38]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[6][23] [14]));
  LUT6 #(
    .INIT(64'hFFFF00FFB1FFB1FF)) 
    \dataQ[6][14]_i_2 
       (.I0(\dataQ_reg[6][22] ),
        .I1(\dataQ_reg[6][14] ),
        .I2(mul1Q_out[14]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(mul2Q_out[14]),
        .I5(\dataI_reg[6][23]_0 ),
        .O(\dataQ[6][14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[6][15]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[6][15]_i_2_n_0 ),
        .I2(\dataQ_reg[0][15] ),
        .I3(\dataQ_reg[6][7] ),
        .I4(dataQ[39]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[6][23] [15]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataQ[6][15]_i_2 
       (.I0(\dataQ_reg[6][22] ),
        .I1(\dataQ_reg[6][15] ),
        .I2(mul1Q_out[15]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[6][23]_0 ),
        .I5(mul2Q_out[15]),
        .O(\dataQ[6][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[6][16]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[6][16]_i_2_n_0 ),
        .I2(\dataQ_reg[0][16] ),
        .I3(\dataQ_reg[6][7] ),
        .I4(dataQ[40]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[6][23] [16]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataQ[6][16]_i_2 
       (.I0(\dataQ_reg[6][22] ),
        .I1(\dataQ_reg[6][16] ),
        .I2(mul1Q_out[16]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[6][23]_0 ),
        .I5(mul2Q_out[16]),
        .O(\dataQ[6][16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[6][17]_i_1 
       (.I0(\dataQ[6][17]_i_2_n_0 ),
        .I1(\dataQ_reg[0][17] ),
        .I2(\dataQ_reg[6][7] ),
        .I3(dataQ[41]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[6][23] [17]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[6][17]_i_2 
       (.I0(dataQ[41]),
        .I1(mul2Q_out[17]),
        .I2(\dataI_reg[6][23]_0 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[6][17]_i_4_n_0 ),
        .O(\dataQ[6][17]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[6][17]_i_4 
       (.I0(mul1Q_out[17]),
        .I1(\dataQ_reg[6][22] ),
        .I2(Q[1]),
        .I3(dataQ[41]),
        .O(\dataQ[6][17]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[6][18]_i_1 
       (.I0(\dataQ[6][18]_i_2_n_0 ),
        .I1(\dataQ_reg[0][18] ),
        .I2(\dataQ_reg[6][7] ),
        .I3(dataQ[42]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[6][23] [18]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[6][18]_i_2 
       (.I0(dataQ[42]),
        .I1(mul2Q_out[18]),
        .I2(\dataI_reg[6][23]_0 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[6][18]_i_4_n_0 ),
        .O(\dataQ[6][18]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[6][18]_i_4 
       (.I0(mul1Q_out[18]),
        .I1(\dataQ_reg[6][22] ),
        .I2(Q[1]),
        .I3(dataQ[42]),
        .O(\dataQ[6][18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[6][19]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[6][19]_i_2_n_0 ),
        .I2(\dataQ_reg[0][19] ),
        .I3(\dataQ_reg[6][7] ),
        .I4(dataQ[43]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[6][23] [19]));
  LUT6 #(
    .INIT(64'hFFFF00FFB1FFB1FF)) 
    \dataQ[6][19]_i_2 
       (.I0(\dataQ_reg[6][22] ),
        .I1(\dataQ_reg[6][19] ),
        .I2(mul1Q_out[19]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(mul2Q_out[19]),
        .I5(\dataI_reg[6][23]_0 ),
        .O(\dataQ[6][19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[6][1]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[6][1]_i_2_n_0 ),
        .I2(\dataQ_reg[0][1] ),
        .I3(\dataQ_reg[6][7] ),
        .I4(dataQ[25]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[6][23] [1]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataQ[6][1]_i_2 
       (.I0(\dataQ_reg[6][22] ),
        .I1(\dataQ_reg[6][1] ),
        .I2(mul1Q_out[1]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[6][23]_0 ),
        .I5(mul2Q_out[1]),
        .O(\dataQ[6][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[6][20]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[6][20]_i_2_n_0 ),
        .I2(\dataQ_reg[0][20] ),
        .I3(\dataQ_reg[6][7] ),
        .I4(dataQ[44]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[6][23] [20]));
  LUT6 #(
    .INIT(64'hFFFF00FFB1FFB1FF)) 
    \dataQ[6][20]_i_2 
       (.I0(\dataQ_reg[6][22] ),
        .I1(\dataQ_reg[6][20] ),
        .I2(mul1Q_out[20]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(mul2Q_out[20]),
        .I5(\dataI_reg[6][23]_0 ),
        .O(\dataQ[6][20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[6][21]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[6][21]_i_2_n_0 ),
        .I2(\dataQ_reg[0][21] ),
        .I3(\dataQ_reg[6][7] ),
        .I4(dataQ[45]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[6][23] [21]));
  LUT6 #(
    .INIT(64'hFFFF00FFB1FFB1FF)) 
    \dataQ[6][21]_i_2 
       (.I0(\dataQ_reg[6][22] ),
        .I1(\dataQ_reg[6][21] ),
        .I2(mul1Q_out[21]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(mul2Q_out[21]),
        .I5(\dataI_reg[6][23]_0 ),
        .O(\dataQ[6][21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[6][22]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[6][22]_i_2_n_0 ),
        .I2(\dataQ_reg[0][22] ),
        .I3(\dataQ_reg[6][7] ),
        .I4(dataQ[46]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[6][23] [22]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataQ[6][22]_i_2 
       (.I0(\dataQ_reg[6][22] ),
        .I1(\dataQ_reg[6][22]_0 ),
        .I2(mul1Q_out[22]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[6][23]_0 ),
        .I5(mul2Q_out[22]),
        .O(\dataQ[6][22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[6][23]_i_1 
       (.I0(\dataQ[6][23]_i_2_n_0 ),
        .I1(\dataQ_reg[0][23]_0 ),
        .I2(\dataQ_reg[6][7] ),
        .I3(dataQ[47]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[6][23] [23]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[6][23]_i_2 
       (.I0(dataQ[47]),
        .I1(mul2Q_out[23]),
        .I2(\dataI_reg[6][23]_0 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[6][23]_i_4_n_0 ),
        .O(\dataQ[6][23]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[6][23]_i_4 
       (.I0(mul1Q_out[23]),
        .I1(\dataQ_reg[6][22] ),
        .I2(Q[1]),
        .I3(dataQ[47]),
        .O(\dataQ[6][23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[6][2]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[6][2]_i_2_n_0 ),
        .I2(\dataQ_reg[0][2] ),
        .I3(\dataQ_reg[6][7] ),
        .I4(dataQ[26]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[6][23] [2]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataQ[6][2]_i_2 
       (.I0(\dataQ_reg[6][22] ),
        .I1(\dataQ_reg[6][2] ),
        .I2(mul1Q_out[2]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[6][23]_0 ),
        .I5(mul2Q_out[2]),
        .O(\dataQ[6][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[6][3]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[6][3]_i_2_n_0 ),
        .I2(\dataQ_reg[0][3] ),
        .I3(\dataQ_reg[6][7] ),
        .I4(dataQ[27]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[6][23] [3]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataQ[6][3]_i_2 
       (.I0(\dataQ_reg[6][22] ),
        .I1(\dataQ_reg[6][3] ),
        .I2(mul1Q_out[3]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[6][23]_0 ),
        .I5(mul2Q_out[3]),
        .O(\dataQ[6][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[6][4]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[6][4]_i_2_n_0 ),
        .I2(\dataQ_reg[0][4] ),
        .I3(\dataQ_reg[6][7] ),
        .I4(dataQ[28]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[6][23] [4]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataQ[6][4]_i_2 
       (.I0(\dataQ_reg[6][22] ),
        .I1(\dataQ_reg[6][4] ),
        .I2(mul1Q_out[4]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[6][23]_0 ),
        .I5(mul2Q_out[4]),
        .O(\dataQ[6][4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[6][5]_i_1 
       (.I0(\dataQ[6][5]_i_2_n_0 ),
        .I1(\dataQ_reg[0][5] ),
        .I2(\dataQ_reg[6][7] ),
        .I3(dataQ[29]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[6][23] [5]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[6][5]_i_2 
       (.I0(dataQ[29]),
        .I1(mul2Q_out[5]),
        .I2(\dataI_reg[6][23]_0 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[6][5]_i_4_n_0 ),
        .O(\dataQ[6][5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[6][5]_i_4 
       (.I0(mul1Q_out[5]),
        .I1(\dataQ_reg[6][22] ),
        .I2(Q[1]),
        .I3(dataQ[29]),
        .O(\dataQ[6][5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[6][6]_i_1 
       (.I0(\dataQ[6][6]_i_2_n_0 ),
        .I1(\dataQ_reg[0][6] ),
        .I2(\dataQ_reg[6][7] ),
        .I3(dataQ[30]),
        .I4(\state_reg[1]_0 ),
        .O(\dataQ_reg[6][23] [6]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[6][6]_i_2 
       (.I0(dataQ[30]),
        .I1(mul2Q_out[6]),
        .I2(\dataI_reg[6][23]_0 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[6][6]_i_4_n_0 ),
        .O(\dataQ[6][6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[6][6]_i_4 
       (.I0(mul1Q_out[6]),
        .I1(\dataQ_reg[6][22] ),
        .I2(Q[1]),
        .I3(dataQ[30]),
        .O(\dataQ[6][6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[6][7]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[6][7]_i_2_n_0 ),
        .I2(\dataQ_reg[7][7] ),
        .I3(\dataQ_reg[6][7] ),
        .I4(dataQ[31]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[6][23] [7]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataQ[6][7]_i_2 
       (.I0(\dataQ_reg[6][22] ),
        .I1(\dataQ_reg[6][7]_0 ),
        .I2(mul1Q_out[7]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[6][23]_0 ),
        .I5(mul2Q_out[7]),
        .O(\dataQ[6][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[6][8]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[6][8]_i_2_n_0 ),
        .I2(\dataQ_reg[0][8] ),
        .I3(\dataQ_reg[6][7] ),
        .I4(dataQ[32]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[6][23] [8]));
  LUT6 #(
    .INIT(64'hFFFF00FFB1FFB1FF)) 
    \dataQ[6][8]_i_2 
       (.I0(\dataQ_reg[6][22] ),
        .I1(\dataQ_reg[6][8] ),
        .I2(mul1Q_out[8]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(mul2Q_out[8]),
        .I5(\dataI_reg[6][23]_0 ),
        .O(\dataQ[6][8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[6][9]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[6][9]_i_2_n_0 ),
        .I2(\dataQ_reg[0][9] ),
        .I3(\dataQ_reg[6][7] ),
        .I4(dataQ[33]),
        .I5(\state_reg[1]_0 ),
        .O(\dataQ_reg[6][23] [9]));
  LUT6 #(
    .INIT(64'hFFFF00FFB1FFB1FF)) 
    \dataQ[6][9]_i_2 
       (.I0(\dataQ_reg[6][22] ),
        .I1(\dataQ_reg[6][9] ),
        .I2(mul1Q_out[9]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(mul2Q_out[9]),
        .I5(\dataI_reg[6][23]_0 ),
        .O(\dataQ[6][9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[7][0]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[7][0]_i_2_n_0 ),
        .I2(\dataQ_reg[0][0] ),
        .I3(\dataQ_reg[7][7]_0 ),
        .I4(dataQ[0]),
        .I5(\state_reg[1]_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataQ[7][0]_i_2 
       (.I0(\dataI_reg[7][23]_0 ),
        .I1(\dataQ_reg[7][0] ),
        .I2(mul1Q_out[0]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[7][23]_2 ),
        .I5(mul2Q_out[0]),
        .O(\dataQ[7][0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF5FC550C)) 
    \dataQ[7][10]_i_1 
       (.I0(\dataQ[7][10]_i_2_n_0 ),
        .I1(dataQ[10]),
        .I2(\dataQ_reg[7][7]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\dataQ_reg[0][10] ),
        .O(D[10]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[7][10]_i_2 
       (.I0(dataQ[10]),
        .I1(mul2Q_out[10]),
        .I2(\dataI_reg[7][23]_2 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[7][10]_i_3_n_0 ),
        .O(\dataQ[7][10]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[7][10]_i_3 
       (.I0(mul1Q_out[10]),
        .I1(\dataI_reg[7][23]_0 ),
        .I2(Q[1]),
        .I3(dataQ[10]),
        .O(\dataQ[7][10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFC8FFF0C8C800F0)) 
    \dataQ[7][11]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[7][11]_i_2_n_0 ),
        .I2(dataQ[11]),
        .I3(\dataQ_reg[7][7]_0 ),
        .I4(\state_reg[1]_0 ),
        .I5(\dataQ_reg[0][11] ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataQ[7][11]_i_2 
       (.I0(\dataI_reg[7][23]_0 ),
        .I1(\dataQ_reg[7][11] ),
        .I2(mul1Q_out[11]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[7][23]_2 ),
        .I5(mul2Q_out[11]),
        .O(\dataQ[7][11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[7][12]_i_1 
       (.I0(\dataQ[7][12]_i_2_n_0 ),
        .I1(\dataQ_reg[0][12] ),
        .I2(\dataQ_reg[7][7]_0 ),
        .I3(dataQ[12]),
        .I4(\state_reg[1]_0 ),
        .O(D[12]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[7][12]_i_2 
       (.I0(dataQ[12]),
        .I1(mul2Q_out[12]),
        .I2(\dataI_reg[7][23]_2 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[7][12]_i_3_n_0 ),
        .O(\dataQ[7][12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[7][12]_i_3 
       (.I0(mul1Q_out[12]),
        .I1(\dataI_reg[7][23]_0 ),
        .I2(Q[1]),
        .I3(dataQ[12]),
        .O(\dataQ[7][12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[7][13]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[7][13]_i_2_n_0 ),
        .I2(\dataQ_reg[0][13] ),
        .I3(\dataQ_reg[7][7]_0 ),
        .I4(dataQ[13]),
        .I5(\state_reg[1]_0 ),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hFFFF00FFB1FFB1FF)) 
    \dataQ[7][13]_i_2 
       (.I0(\dataI_reg[7][23]_0 ),
        .I1(\dataQ_reg[7][13] ),
        .I2(mul1Q_out[13]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(mul2Q_out[13]),
        .I5(\dataI_reg[7][23]_2 ),
        .O(\dataQ[7][13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[7][14]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[7][14]_i_2_n_0 ),
        .I2(\dataQ_reg[0][14] ),
        .I3(\dataQ_reg[7][7]_0 ),
        .I4(dataQ[14]),
        .I5(\state_reg[1]_0 ),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hFFFF00FFB1FFB1FF)) 
    \dataQ[7][14]_i_2 
       (.I0(\dataI_reg[7][23]_0 ),
        .I1(\dataQ_reg[7][14] ),
        .I2(mul1Q_out[14]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(mul2Q_out[14]),
        .I5(\dataI_reg[7][23]_2 ),
        .O(\dataQ[7][14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[7][15]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[7][15]_i_2_n_0 ),
        .I2(\dataQ_reg[0][15] ),
        .I3(\dataQ_reg[7][7]_0 ),
        .I4(dataQ[15]),
        .I5(\state_reg[1]_0 ),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataQ[7][15]_i_2 
       (.I0(\dataI_reg[7][23]_0 ),
        .I1(\dataQ_reg[7][15] ),
        .I2(mul1Q_out[15]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[7][23]_2 ),
        .I5(mul2Q_out[15]),
        .O(\dataQ[7][15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF5FC550C)) 
    \dataQ[7][16]_i_1 
       (.I0(\dataQ[7][16]_i_2_n_0 ),
        .I1(dataQ[16]),
        .I2(\dataQ_reg[7][7]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\dataQ_reg[0][16] ),
        .O(D[16]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[7][16]_i_2 
       (.I0(dataQ[16]),
        .I1(mul2Q_out[16]),
        .I2(\dataI_reg[7][23]_2 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[7][16]_i_3_n_0 ),
        .O(\dataQ[7][16]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[7][16]_i_3 
       (.I0(mul1Q_out[16]),
        .I1(\dataI_reg[7][23]_0 ),
        .I2(Q[1]),
        .I3(dataQ[16]),
        .O(\dataQ[7][16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[7][17]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[7][17]_i_2_n_0 ),
        .I2(\dataQ_reg[0][17] ),
        .I3(\dataQ_reg[7][7]_0 ),
        .I4(dataQ[17]),
        .I5(\state_reg[1]_0 ),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hFFFF00FFB1FFB1FF)) 
    \dataQ[7][17]_i_2 
       (.I0(\dataI_reg[7][23]_0 ),
        .I1(\dataQ_reg[7][17] ),
        .I2(mul1Q_out[17]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(mul2Q_out[17]),
        .I5(\dataI_reg[7][23]_2 ),
        .O(\dataQ[7][17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hD5D5CFC0)) 
    \dataQ[7][18]_i_1 
       (.I0(\dataQ[7][18]_i_2_n_0 ),
        .I1(\dataQ_reg[0][18] ),
        .I2(\dataQ_reg[7][7]_0 ),
        .I3(dataQ[18]),
        .I4(\state_reg[1]_0 ),
        .O(D[18]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[7][18]_i_2 
       (.I0(dataQ[18]),
        .I1(mul2Q_out[18]),
        .I2(\dataI_reg[7][23]_2 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[7][18]_i_3_n_0 ),
        .O(\dataQ[7][18]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[7][18]_i_3 
       (.I0(mul1Q_out[18]),
        .I1(\dataI_reg[7][23]_0 ),
        .I2(Q[1]),
        .I3(dataQ[18]),
        .O(\dataQ[7][18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[7][19]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[7][19]_i_2_n_0 ),
        .I2(\dataQ_reg[0][19] ),
        .I3(\dataQ_reg[7][7]_0 ),
        .I4(dataQ[19]),
        .I5(\state_reg[1]_0 ),
        .O(D[19]));
  LUT6 #(
    .INIT(64'hFFFF00FFB1FFB1FF)) 
    \dataQ[7][19]_i_2 
       (.I0(\dataI_reg[7][23]_0 ),
        .I1(\dataQ_reg[7][19] ),
        .I2(mul1Q_out[19]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(mul2Q_out[19]),
        .I5(\dataI_reg[7][23]_2 ),
        .O(\dataQ[7][19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[7][1]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[7][1]_i_2_n_0 ),
        .I2(\dataQ_reg[0][1] ),
        .I3(\dataQ_reg[7][7]_0 ),
        .I4(dataQ[1]),
        .I5(\state_reg[1]_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataQ[7][1]_i_2 
       (.I0(\dataI_reg[7][23]_0 ),
        .I1(\dataQ_reg[7][1] ),
        .I2(mul1Q_out[1]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[7][23]_2 ),
        .I5(mul2Q_out[1]),
        .O(\dataQ[7][1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF5FC550C)) 
    \dataQ[7][20]_i_1 
       (.I0(\dataQ[7][20]_i_2_n_0 ),
        .I1(dataQ[20]),
        .I2(\dataQ_reg[7][7]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\dataQ_reg[0][20] ),
        .O(D[20]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[7][20]_i_2 
       (.I0(dataQ[20]),
        .I1(mul2Q_out[20]),
        .I2(\dataI_reg[7][23]_2 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[7][20]_i_3_n_0 ),
        .O(\dataQ[7][20]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[7][20]_i_3 
       (.I0(mul1Q_out[20]),
        .I1(\dataI_reg[7][23]_0 ),
        .I2(Q[1]),
        .I3(dataQ[20]),
        .O(\dataQ[7][20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[7][21]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[7][21]_i_2_n_0 ),
        .I2(\dataQ_reg[0][21] ),
        .I3(\dataQ_reg[7][7]_0 ),
        .I4(dataQ[21]),
        .I5(\state_reg[1]_0 ),
        .O(D[21]));
  LUT6 #(
    .INIT(64'hFFFF00FFB1FFB1FF)) 
    \dataQ[7][21]_i_2 
       (.I0(\dataI_reg[7][23]_0 ),
        .I1(\dataQ_reg[7][21] ),
        .I2(mul1Q_out[21]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(mul2Q_out[21]),
        .I5(\dataI_reg[7][23]_2 ),
        .O(\dataQ[7][21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF5FC550C)) 
    \dataQ[7][22]_i_1 
       (.I0(\dataQ[7][22]_i_2_n_0 ),
        .I1(dataQ[22]),
        .I2(\dataQ_reg[7][7]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\dataQ_reg[0][22] ),
        .O(D[22]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[7][22]_i_2 
       (.I0(dataQ[22]),
        .I1(mul2Q_out[22]),
        .I2(\dataI_reg[7][23]_2 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[7][22]_i_3_n_0 ),
        .O(\dataQ[7][22]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[7][22]_i_3 
       (.I0(mul1Q_out[22]),
        .I1(\dataI_reg[7][23]_0 ),
        .I2(Q[1]),
        .I3(dataQ[22]),
        .O(\dataQ[7][22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFC8FFF0C8C800F0)) 
    \dataQ[7][23]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[7][23]_i_2_n_0 ),
        .I2(dataQ[23]),
        .I3(\dataQ_reg[7][7]_0 ),
        .I4(\state_reg[1]_0 ),
        .I5(\dataQ_reg[0][23]_0 ),
        .O(D[23]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataQ[7][23]_i_2 
       (.I0(\dataI_reg[7][23]_0 ),
        .I1(\dataQ_reg[7][23] ),
        .I2(mul1Q_out[23]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[7][23]_2 ),
        .I5(mul2Q_out[23]),
        .O(\dataQ[7][23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF5FC550C)) 
    \dataQ[7][2]_i_1 
       (.I0(\dataQ[7][2]_i_2_n_0 ),
        .I1(dataQ[2]),
        .I2(\dataQ_reg[7][7]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\dataQ_reg[0][2] ),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[7][2]_i_2 
       (.I0(dataQ[2]),
        .I1(mul2Q_out[2]),
        .I2(\dataI_reg[7][23]_2 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[7][2]_i_3_n_0 ),
        .O(\dataQ[7][2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[7][2]_i_3 
       (.I0(mul1Q_out[2]),
        .I1(\dataI_reg[7][23]_0 ),
        .I2(Q[1]),
        .I3(dataQ[2]),
        .O(\dataQ[7][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[7][3]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[7][3]_i_2_n_0 ),
        .I2(\dataQ_reg[0][3] ),
        .I3(\dataQ_reg[7][7]_0 ),
        .I4(dataQ[3]),
        .I5(\state_reg[1]_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataQ[7][3]_i_2 
       (.I0(\dataI_reg[7][23]_0 ),
        .I1(\dataQ_reg[7][3] ),
        .I2(mul1Q_out[3]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[7][23]_2 ),
        .I5(mul2Q_out[3]),
        .O(\dataQ[7][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF5FC550C)) 
    \dataQ[7][4]_i_1 
       (.I0(\dataQ[7][4]_i_2_n_0 ),
        .I1(dataQ[4]),
        .I2(\dataQ_reg[7][7]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\dataQ_reg[0][4] ),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[7][4]_i_2 
       (.I0(dataQ[4]),
        .I1(mul2Q_out[4]),
        .I2(\dataI_reg[7][23]_2 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[7][4]_i_3_n_0 ),
        .O(\dataQ[7][4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[7][4]_i_3 
       (.I0(mul1Q_out[4]),
        .I1(\dataI_reg[7][23]_0 ),
        .I2(Q[1]),
        .I3(dataQ[4]),
        .O(\dataQ[7][4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFC8FFF0C8C800F0)) 
    \dataQ[7][5]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[7][5]_i_2_n_0 ),
        .I2(dataQ[5]),
        .I3(\dataQ_reg[7][7]_0 ),
        .I4(\state_reg[1]_0 ),
        .I5(\dataQ_reg[0][5] ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFFF00FFB1FFB1FF)) 
    \dataQ[7][5]_i_2 
       (.I0(\dataI_reg[7][23]_0 ),
        .I1(\dataQ_reg[7][5] ),
        .I2(mul1Q_out[5]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(mul2Q_out[5]),
        .I5(\dataI_reg[7][23]_2 ),
        .O(\dataQ[7][5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFC8FFF0C8C800F0)) 
    \dataQ[7][6]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[7][6]_i_2_n_0 ),
        .I2(dataQ[6]),
        .I3(\dataQ_reg[7][7]_0 ),
        .I4(\state_reg[1]_0 ),
        .I5(\dataQ_reg[0][6] ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataQ[7][6]_i_2 
       (.I0(\dataI_reg[7][23]_0 ),
        .I1(\dataQ_reg[7][6] ),
        .I2(mul1Q_out[6]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[7][23]_2 ),
        .I5(mul2Q_out[6]),
        .O(\dataQ[7][6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[7][7]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[7][7]_i_2_n_0 ),
        .I2(\dataQ_reg[7][7] ),
        .I3(\dataQ_reg[7][7]_0 ),
        .I4(dataQ[7]),
        .I5(\state_reg[1]_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFFFFB1FF00FFB1FF)) 
    \dataQ[7][7]_i_2 
       (.I0(\dataI_reg[7][23]_0 ),
        .I1(\dataQ_reg[7][7]_1 ),
        .I2(mul1Q_out[7]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataI_reg[7][23]_2 ),
        .I5(mul2Q_out[7]),
        .O(\dataQ[7][7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF5FC550C)) 
    \dataQ[7][8]_i_1 
       (.I0(\dataQ[7][8]_i_2_n_0 ),
        .I1(dataQ[8]),
        .I2(\dataQ_reg[7][7]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\dataQ_reg[0][8] ),
        .O(D[8]));
  LUT5 #(
    .INIT(32'h30553F55)) 
    \dataQ[7][8]_i_2 
       (.I0(dataQ[8]),
        .I1(mul2Q_out[8]),
        .I2(\dataI_reg[7][23]_2 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\dataQ[7][8]_i_3_n_0 ),
        .O(\dataQ[7][8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \dataQ[7][8]_i_3 
       (.I0(mul1Q_out[8]),
        .I1(\dataI_reg[7][23]_0 ),
        .I2(Q[1]),
        .I3(dataQ[8]),
        .O(\dataQ[7][8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCF888F0FFF000)) 
    \dataQ[7][9]_i_1 
       (.I0(\topIdx[3]_i_5_n_0 ),
        .I1(\dataQ[7][9]_i_2_n_0 ),
        .I2(\dataQ_reg[0][9] ),
        .I3(\dataQ_reg[7][7]_0 ),
        .I4(dataQ[9]),
        .I5(\state_reg[1]_0 ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hFFFF00FFB1FFB1FF)) 
    \dataQ[7][9]_i_2 
       (.I0(\dataI_reg[7][23]_0 ),
        .I1(\dataQ_reg[7][9] ),
        .I2(mul1Q_out[9]),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(mul2Q_out[9]),
        .I5(\dataI_reg[7][23]_2 ),
        .O(\dataQ[7][9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    lastStartState_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(lastStartState_reg_0),
        .Q(lastStartState),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cplxmul mul
       (.A(A),
        .CEA1(CEA1),
        .D({mul_n_58,mul_n_59,mul_n_60,mul_n_61,mul_n_62,mul_n_63,mul_n_64,mul_n_65,mul_n_66,mul_n_67,mul_n_68,mul_n_69,mul_n_70,mul_n_71,mul_n_72,mul_n_73,mul_n_74,mul_n_75,mul_n_76,mul_n_77,mul_n_78,mul_n_79,mul_n_80,mul_n_81}),
        .E(mul_n_51),
        .O71({mul_n_82,mul_n_83,mul_n_84,mul_n_85,mul_n_86,mul_n_87,mul_n_88,mul_n_89,mul_n_90,mul_n_91,mul_n_92,mul_n_93,mul_n_94,mul_n_95,mul_n_96,mul_n_97,mul_n_98,mul_n_99,mul_n_100,mul_n_101,mul_n_102,mul_n_103,mul_n_104,mul_n_105}),
        .Q(tempR),
        .aMinusB_carry__1_0(mul1R),
        .aMinusB_carry__1_1(mul1I),
        .\bottomI_out[23]_i_9_0 ({mul_n_131,mul_n_132,mul_n_133,mul_n_134,mul_n_135,mul_n_136,mul_n_137,mul_n_138,mul_n_139,mul_n_140,mul_n_141,mul_n_142,mul_n_143,mul_n_144,mul_n_145,mul_n_146,mul_n_147,mul_n_148,mul_n_149,mul_n_150,mul_n_151,mul_n_152,mul_n_153,mul_n_154}),
        .\bottomI_out_reg[23]_i_10_0 (tempI),
        .\bottomIdx_reg[1] (mul_n_54),
        .\bottomIdx_reg[1]_0 (\bottomIdx_reg[1] ),
        .\bottomIdx_reg[4] (\bottomIdx_reg[4] ),
        .dataI(dataI),
        .\dataI[5][23]_i_4 (\dataI[5][23]_i_4 ),
        .dataQ(dataQ),
        .lastStartState(lastStartState),
        .mul2I(mul2I),
        .\mul2Q_reg[0] (lastStartState_reg_0),
        .\mul2Q_reg[0]_0 (\mul2Q_reg[0] ),
        .\mul2Q_reg[0]_1 (Q),
        .mul2R({mul2R[22],mul2R[10:9],mul2R[2]}),
        .mulPreviousReady(mulPreviousReady),
        .mulReady(mulReady),
        .mulStart(mulStart),
        .out({mul_n_107,mul_n_108,mul_n_109,mul_n_110,mul_n_111,mul_n_112,mul_n_113,mul_n_114,mul_n_115,mul_n_116,mul_n_117,mul_n_118,mul_n_119,mul_n_120,mul_n_121,mul_n_122,mul_n_123,mul_n_124,mul_n_125,mul_n_126,mul_n_127,mul_n_128,mul_n_129,mul_n_130}),
        .ready0(ready0),
        .ready01_out(ready01_out),
        .s00_axi_aclk(s00_axi_aclk),
        .\shift_reg[1] (\shift_reg[1]_0 ),
        .\shift_reg[1]_0 (\shift_reg[1] ),
        .\shift_reg[1]_1 (\shift_reg[1]_1 ),
        .\state_reg[1] (\state_reg[1]_0 ),
        .\topI_out_reg[23] (\tempI_reg[23]_0 ),
        .topIdx(topIdx),
        .\topIdx_reg[0] (\topIdx_reg[0] ),
        .\topR_out_reg[23] (\tempR_reg[23]_0 ));
  FDRE \mul1I_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\mul1I_reg[23]_0 [0]),
        .Q(mul1I[0]),
        .R(1'b0));
  FDRE \mul1I_reg[10] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\mul1I_reg[23]_0 [10]),
        .Q(mul1I[10]),
        .R(1'b0));
  FDRE \mul1I_reg[11] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\mul1I_reg[23]_0 [11]),
        .Q(mul1I[11]),
        .R(1'b0));
  FDRE \mul1I_reg[12] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\mul1I_reg[23]_0 [12]),
        .Q(mul1I[12]),
        .R(1'b0));
  FDRE \mul1I_reg[13] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\mul1I_reg[23]_0 [13]),
        .Q(mul1I[13]),
        .R(1'b0));
  FDRE \mul1I_reg[14] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\mul1I_reg[23]_0 [14]),
        .Q(mul1I[14]),
        .R(1'b0));
  FDRE \mul1I_reg[15] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\mul1I_reg[23]_0 [15]),
        .Q(mul1I[15]),
        .R(1'b0));
  FDRE \mul1I_reg[16] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\mul1I_reg[23]_0 [16]),
        .Q(mul1I[16]),
        .R(1'b0));
  FDRE \mul1I_reg[17] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\mul1I_reg[23]_0 [17]),
        .Q(mul1I[17]),
        .R(1'b0));
  FDRE \mul1I_reg[18] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\mul1I_reg[23]_0 [18]),
        .Q(mul1I[18]),
        .R(1'b0));
  FDRE \mul1I_reg[19] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\mul1I_reg[23]_0 [19]),
        .Q(mul1I[19]),
        .R(1'b0));
  FDRE \mul1I_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\mul1I_reg[23]_0 [1]),
        .Q(mul1I[1]),
        .R(1'b0));
  FDRE \mul1I_reg[20] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\mul1I_reg[23]_0 [20]),
        .Q(mul1I[20]),
        .R(1'b0));
  FDRE \mul1I_reg[21] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\mul1I_reg[23]_0 [21]),
        .Q(mul1I[21]),
        .R(1'b0));
  FDRE \mul1I_reg[22] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\mul1I_reg[23]_0 [22]),
        .Q(mul1I[22]),
        .R(1'b0));
  FDRE \mul1I_reg[23] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\mul1I_reg[23]_0 [23]),
        .Q(mul1I[23]),
        .R(1'b0));
  FDRE \mul1I_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\mul1I_reg[23]_0 [2]),
        .Q(mul1I[2]),
        .R(1'b0));
  FDRE \mul1I_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\mul1I_reg[23]_0 [3]),
        .Q(mul1I[3]),
        .R(1'b0));
  FDRE \mul1I_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\mul1I_reg[23]_0 [4]),
        .Q(mul1I[4]),
        .R(1'b0));
  FDRE \mul1I_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\mul1I_reg[23]_0 [5]),
        .Q(mul1I[5]),
        .R(1'b0));
  FDRE \mul1I_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\mul1I_reg[23]_0 [6]),
        .Q(mul1I[6]),
        .R(1'b0));
  FDRE \mul1I_reg[7] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\mul1I_reg[23]_0 [7]),
        .Q(mul1I[7]),
        .R(1'b0));
  FDRE \mul1I_reg[8] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\mul1I_reg[23]_0 [8]),
        .Q(mul1I[8]),
        .R(1'b0));
  FDRE \mul1I_reg[9] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\mul1I_reg[23]_0 [9]),
        .Q(mul1I[9]),
        .R(1'b0));
  FDRE \mul1R_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\mul1R_reg[23]_0 [0]),
        .Q(mul1R[0]),
        .R(1'b0));
  FDRE \mul1R_reg[10] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\mul1R_reg[23]_0 [10]),
        .Q(mul1R[10]),
        .R(1'b0));
  FDRE \mul1R_reg[11] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\mul1R_reg[23]_0 [11]),
        .Q(mul1R[11]),
        .R(1'b0));
  FDRE \mul1R_reg[12] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\mul1R_reg[23]_0 [12]),
        .Q(mul1R[12]),
        .R(1'b0));
  FDRE \mul1R_reg[13] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\mul1R_reg[23]_0 [13]),
        .Q(mul1R[13]),
        .R(1'b0));
  FDRE \mul1R_reg[14] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\mul1R_reg[23]_0 [14]),
        .Q(mul1R[14]),
        .R(1'b0));
  FDRE \mul1R_reg[15] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\mul1R_reg[23]_0 [15]),
        .Q(mul1R[15]),
        .R(1'b0));
  FDRE \mul1R_reg[16] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\mul1R_reg[23]_0 [16]),
        .Q(mul1R[16]),
        .R(1'b0));
  FDRE \mul1R_reg[17] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\mul1R_reg[23]_0 [17]),
        .Q(mul1R[17]),
        .R(1'b0));
  FDRE \mul1R_reg[18] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\mul1R_reg[23]_0 [18]),
        .Q(mul1R[18]),
        .R(1'b0));
  FDRE \mul1R_reg[19] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\mul1R_reg[23]_0 [19]),
        .Q(mul1R[19]),
        .R(1'b0));
  FDRE \mul1R_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\mul1R_reg[23]_0 [1]),
        .Q(mul1R[1]),
        .R(1'b0));
  FDRE \mul1R_reg[20] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\mul1R_reg[23]_0 [20]),
        .Q(mul1R[20]),
        .R(1'b0));
  FDRE \mul1R_reg[21] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\mul1R_reg[23]_0 [21]),
        .Q(mul1R[21]),
        .R(1'b0));
  FDRE \mul1R_reg[22] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\mul1R_reg[23]_0 [22]),
        .Q(mul1R[22]),
        .R(1'b0));
  FDRE \mul1R_reg[23] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\mul1R_reg[23]_0 [23]),
        .Q(mul1R[23]),
        .R(1'b0));
  FDRE \mul1R_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\mul1R_reg[23]_0 [2]),
        .Q(mul1R[2]),
        .R(1'b0));
  FDRE \mul1R_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\mul1R_reg[23]_0 [3]),
        .Q(mul1R[3]),
        .R(1'b0));
  FDRE \mul1R_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\mul1R_reg[23]_0 [4]),
        .Q(mul1R[4]),
        .R(1'b0));
  FDRE \mul1R_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\mul1R_reg[23]_0 [5]),
        .Q(mul1R[5]),
        .R(1'b0));
  FDRE \mul1R_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\mul1R_reg[23]_0 [6]),
        .Q(mul1R[6]),
        .R(1'b0));
  FDRE \mul1R_reg[7] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\mul1R_reg[23]_0 [7]),
        .Q(mul1R[7]),
        .R(1'b0));
  FDRE \mul1R_reg[8] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\mul1R_reg[23]_0 [8]),
        .Q(mul1R[8]),
        .R(1'b0));
  FDRE \mul1R_reg[9] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\mul1R_reg[23]_0 [9]),
        .Q(mul1R[9]),
        .R(1'b0));
  FDRE \mul2I_reg[22] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(A[1]),
        .Q(mul2I),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h59)) 
    \mul2R[10]_i_1 
       (.I0(\mul2R_reg[22]_0 [2]),
        .I1(\mul2R_reg[22]_0 [1]),
        .I2(\mul2R_reg[22]_0 [0]),
        .O(\mul2R[10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mul2R[22]_i_1 
       (.I0(\mul2R_reg[22]_0 [2]),
        .I1(\mul2R_reg[22]_0 [1]),
        .O(\mul2R[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \mul2R[9]_i_1 
       (.I0(\mul2R_reg[22]_0 [0]),
        .I1(\mul2R_reg[22]_0 [2]),
        .I2(\mul2R_reg[22]_0 [1]),
        .O(\mul2R[9]_i_1_n_0 ));
  FDRE \mul2R_reg[10] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\mul2R[10]_i_1_n_0 ),
        .Q(mul2R[10]),
        .R(1'b0));
  FDRE \mul2R_reg[22] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\mul2R[22]_i_1_n_0 ),
        .Q(mul2R[22]),
        .R(1'b0));
  FDRE \mul2R_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(A[0]),
        .Q(mul2R[2]),
        .R(1'b0));
  FDRE \mul2R_reg[9] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\mul2R[9]_i_1_n_0 ),
        .Q(mul2R[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    mulPreviousReady_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(mulReady),
        .Q(mulPreviousReady),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    mulStart_reg
       (.C(s00_axi_aclk),
        .CE(ready0),
        .D(1'b0),
        .Q(mulStart),
        .S(ready01_out));
  FDRE #(
    .INIT(1'b0)) 
    ready_reg
       (.C(s00_axi_aclk),
        .CE(ready0),
        .D(1'b1),
        .Q(butterflyReady),
        .R(ready01_out));
  FDRE \tempI_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\tempI_reg[23]_0 [0]),
        .Q(tempI[0]),
        .R(1'b0));
  FDRE \tempI_reg[10] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\tempI_reg[23]_0 [10]),
        .Q(tempI[10]),
        .R(1'b0));
  FDRE \tempI_reg[11] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\tempI_reg[23]_0 [11]),
        .Q(tempI[11]),
        .R(1'b0));
  FDRE \tempI_reg[12] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\tempI_reg[23]_0 [12]),
        .Q(tempI[12]),
        .R(1'b0));
  FDRE \tempI_reg[13] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\tempI_reg[23]_0 [13]),
        .Q(tempI[13]),
        .R(1'b0));
  FDRE \tempI_reg[14] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\tempI_reg[23]_0 [14]),
        .Q(tempI[14]),
        .R(1'b0));
  FDRE \tempI_reg[15] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\tempI_reg[23]_0 [15]),
        .Q(tempI[15]),
        .R(1'b0));
  FDRE \tempI_reg[16] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\tempI_reg[23]_0 [16]),
        .Q(tempI[16]),
        .R(1'b0));
  FDRE \tempI_reg[17] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\tempI_reg[23]_0 [17]),
        .Q(tempI[17]),
        .R(1'b0));
  FDRE \tempI_reg[18] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\tempI_reg[23]_0 [18]),
        .Q(tempI[18]),
        .R(1'b0));
  FDRE \tempI_reg[19] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\tempI_reg[23]_0 [19]),
        .Q(tempI[19]),
        .R(1'b0));
  FDRE \tempI_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\tempI_reg[23]_0 [1]),
        .Q(tempI[1]),
        .R(1'b0));
  FDRE \tempI_reg[20] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\tempI_reg[23]_0 [20]),
        .Q(tempI[20]),
        .R(1'b0));
  FDRE \tempI_reg[21] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\tempI_reg[23]_0 [21]),
        .Q(tempI[21]),
        .R(1'b0));
  FDRE \tempI_reg[22] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\tempI_reg[23]_0 [22]),
        .Q(tempI[22]),
        .R(1'b0));
  FDRE \tempI_reg[23] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\tempI_reg[23]_0 [23]),
        .Q(tempI[23]),
        .R(1'b0));
  FDRE \tempI_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\tempI_reg[23]_0 [2]),
        .Q(tempI[2]),
        .R(1'b0));
  FDRE \tempI_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\tempI_reg[23]_0 [3]),
        .Q(tempI[3]),
        .R(1'b0));
  FDRE \tempI_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\tempI_reg[23]_0 [4]),
        .Q(tempI[4]),
        .R(1'b0));
  FDRE \tempI_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\tempI_reg[23]_0 [5]),
        .Q(tempI[5]),
        .R(1'b0));
  FDRE \tempI_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\tempI_reg[23]_0 [6]),
        .Q(tempI[6]),
        .R(1'b0));
  FDRE \tempI_reg[7] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\tempI_reg[23]_0 [7]),
        .Q(tempI[7]),
        .R(1'b0));
  FDRE \tempI_reg[8] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\tempI_reg[23]_0 [8]),
        .Q(tempI[8]),
        .R(1'b0));
  FDRE \tempI_reg[9] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\tempI_reg[23]_0 [9]),
        .Q(tempI[9]),
        .R(1'b0));
  FDRE \tempR_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\tempR_reg[23]_0 [0]),
        .Q(tempR[0]),
        .R(1'b0));
  FDRE \tempR_reg[10] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\tempR_reg[23]_0 [10]),
        .Q(tempR[10]),
        .R(1'b0));
  FDRE \tempR_reg[11] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\tempR_reg[23]_0 [11]),
        .Q(tempR[11]),
        .R(1'b0));
  FDRE \tempR_reg[12] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\tempR_reg[23]_0 [12]),
        .Q(tempR[12]),
        .R(1'b0));
  FDRE \tempR_reg[13] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\tempR_reg[23]_0 [13]),
        .Q(tempR[13]),
        .R(1'b0));
  FDRE \tempR_reg[14] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\tempR_reg[23]_0 [14]),
        .Q(tempR[14]),
        .R(1'b0));
  FDRE \tempR_reg[15] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\tempR_reg[23]_0 [15]),
        .Q(tempR[15]),
        .R(1'b0));
  FDRE \tempR_reg[16] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\tempR_reg[23]_0 [16]),
        .Q(tempR[16]),
        .R(1'b0));
  FDRE \tempR_reg[17] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\tempR_reg[23]_0 [17]),
        .Q(tempR[17]),
        .R(1'b0));
  FDRE \tempR_reg[18] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\tempR_reg[23]_0 [18]),
        .Q(tempR[18]),
        .R(1'b0));
  FDRE \tempR_reg[19] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\tempR_reg[23]_0 [19]),
        .Q(tempR[19]),
        .R(1'b0));
  FDRE \tempR_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\tempR_reg[23]_0 [1]),
        .Q(tempR[1]),
        .R(1'b0));
  FDRE \tempR_reg[20] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\tempR_reg[23]_0 [20]),
        .Q(tempR[20]),
        .R(1'b0));
  FDRE \tempR_reg[21] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\tempR_reg[23]_0 [21]),
        .Q(tempR[21]),
        .R(1'b0));
  FDRE \tempR_reg[22] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\tempR_reg[23]_0 [22]),
        .Q(tempR[22]),
        .R(1'b0));
  FDRE \tempR_reg[23] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\tempR_reg[23]_0 [23]),
        .Q(tempR[23]),
        .R(1'b0));
  FDRE \tempR_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\tempR_reg[23]_0 [2]),
        .Q(tempR[2]),
        .R(1'b0));
  FDRE \tempR_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\tempR_reg[23]_0 [3]),
        .Q(tempR[3]),
        .R(1'b0));
  FDRE \tempR_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\tempR_reg[23]_0 [4]),
        .Q(tempR[4]),
        .R(1'b0));
  FDRE \tempR_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\tempR_reg[23]_0 [5]),
        .Q(tempR[5]),
        .R(1'b0));
  FDRE \tempR_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\tempR_reg[23]_0 [6]),
        .Q(tempR[6]),
        .R(1'b0));
  FDRE \tempR_reg[7] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\tempR_reg[23]_0 [7]),
        .Q(tempR[7]),
        .R(1'b0));
  FDRE \tempR_reg[8] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\tempR_reg[23]_0 [8]),
        .Q(tempR[8]),
        .R(1'b0));
  FDRE \tempR_reg[9] 
       (.C(s00_axi_aclk),
        .CE(ready01_out),
        .D(\tempR_reg[23]_0 [9]),
        .Q(tempR[9]),
        .R(1'b0));
  FDRE \topI_out_reg[0] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_105),
        .Q(mul1Q_out[0]),
        .R(1'b0));
  FDRE \topI_out_reg[10] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_95),
        .Q(mul1Q_out[10]),
        .R(1'b0));
  FDRE \topI_out_reg[11] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_94),
        .Q(mul1Q_out[11]),
        .R(1'b0));
  FDRE \topI_out_reg[12] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_93),
        .Q(mul1Q_out[12]),
        .R(1'b0));
  FDRE \topI_out_reg[13] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_92),
        .Q(mul1Q_out[13]),
        .R(1'b0));
  FDRE \topI_out_reg[14] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_91),
        .Q(mul1Q_out[14]),
        .R(1'b0));
  FDRE \topI_out_reg[15] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_90),
        .Q(mul1Q_out[15]),
        .R(1'b0));
  FDRE \topI_out_reg[16] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_89),
        .Q(mul1Q_out[16]),
        .R(1'b0));
  FDRE \topI_out_reg[17] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_88),
        .Q(mul1Q_out[17]),
        .R(1'b0));
  FDRE \topI_out_reg[18] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_87),
        .Q(mul1Q_out[18]),
        .R(1'b0));
  FDRE \topI_out_reg[19] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_86),
        .Q(mul1Q_out[19]),
        .R(1'b0));
  FDRE \topI_out_reg[1] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_104),
        .Q(mul1Q_out[1]),
        .R(1'b0));
  FDRE \topI_out_reg[20] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_85),
        .Q(mul1Q_out[20]),
        .R(1'b0));
  FDRE \topI_out_reg[21] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_84),
        .Q(mul1Q_out[21]),
        .R(1'b0));
  FDRE \topI_out_reg[22] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_83),
        .Q(mul1Q_out[22]),
        .R(1'b0));
  FDRE \topI_out_reg[23] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_82),
        .Q(mul1Q_out[23]),
        .R(1'b0));
  FDRE \topI_out_reg[2] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_103),
        .Q(mul1Q_out[2]),
        .R(1'b0));
  FDRE \topI_out_reg[3] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_102),
        .Q(mul1Q_out[3]),
        .R(1'b0));
  FDRE \topI_out_reg[4] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_101),
        .Q(mul1Q_out[4]),
        .R(1'b0));
  FDRE \topI_out_reg[5] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_100),
        .Q(mul1Q_out[5]),
        .R(1'b0));
  FDRE \topI_out_reg[6] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_99),
        .Q(mul1Q_out[6]),
        .R(1'b0));
  FDRE \topI_out_reg[7] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_98),
        .Q(mul1Q_out[7]),
        .R(1'b0));
  FDRE \topI_out_reg[8] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_97),
        .Q(mul1Q_out[8]),
        .R(1'b0));
  FDRE \topI_out_reg[9] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_96),
        .Q(mul1Q_out[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEEAE0000EEAEEEAA)) 
    \topIdx[3]_i_1 
       (.I0(\topIdx_reg[3] ),
        .I1(\state_reg[1]_0 ),
        .I2(\topIdx_reg[3]_0 ),
        .I3(\topIdx[3]_i_5_n_0 ),
        .I4(\bottomIdx_reg[4] ),
        .I5(Q[1]),
        .O(\state_reg[1] ));
  LUT5 #(
    .INIT(32'hFFFF888F)) 
    \topIdx[3]_i_2 
       (.I0(\state_reg[1]_0 ),
        .I1(\topIdx[3]_i_5_n_0 ),
        .I2(\topIdx_reg[3]_0 ),
        .I3(\topIdx_reg[0]_0 ),
        .I4(\topIdx_reg[3] ),
        .O(\state_reg[1]_1 ));
  LUT6 #(
    .INIT(64'h00000000A2FF00A2)) 
    \topIdx[3]_i_5 
       (.I0(mul_n_54),
        .I1(topIdx[2]),
        .I2(\mul2Q_reg[0] [2]),
        .I3(topIdx[3]),
        .I4(\mul2Q_reg[0] [3]),
        .I5(\topIdx[3]_i_6_n_0 ),
        .O(\topIdx[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \topIdx[3]_i_6 
       (.I0(butterflyReady),
        .I1(butterflyPreviousReady),
        .I2(lastStartState_reg_0),
        .O(\topIdx[3]_i_6_n_0 ));
  FDRE \topR_out_reg[0] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_81),
        .Q(mul1I_out[0]),
        .R(1'b0));
  FDRE \topR_out_reg[10] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_71),
        .Q(mul1I_out[10]),
        .R(1'b0));
  FDRE \topR_out_reg[11] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_70),
        .Q(mul1I_out[11]),
        .R(1'b0));
  FDRE \topR_out_reg[12] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_69),
        .Q(mul1I_out[12]),
        .R(1'b0));
  FDRE \topR_out_reg[13] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_68),
        .Q(mul1I_out[13]),
        .R(1'b0));
  FDRE \topR_out_reg[14] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_67),
        .Q(mul1I_out[14]),
        .R(1'b0));
  FDRE \topR_out_reg[15] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_66),
        .Q(mul1I_out[15]),
        .R(1'b0));
  FDRE \topR_out_reg[16] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_65),
        .Q(mul1I_out[16]),
        .R(1'b0));
  FDRE \topR_out_reg[17] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_64),
        .Q(mul1I_out[17]),
        .R(1'b0));
  FDRE \topR_out_reg[18] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_63),
        .Q(mul1I_out[18]),
        .R(1'b0));
  FDRE \topR_out_reg[19] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_62),
        .Q(mul1I_out[19]),
        .R(1'b0));
  FDRE \topR_out_reg[1] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_80),
        .Q(mul1I_out[1]),
        .R(1'b0));
  FDRE \topR_out_reg[20] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_61),
        .Q(mul1I_out[20]),
        .R(1'b0));
  FDRE \topR_out_reg[21] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_60),
        .Q(mul1I_out[21]),
        .R(1'b0));
  FDRE \topR_out_reg[22] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_59),
        .Q(mul1I_out[22]),
        .R(1'b0));
  FDRE \topR_out_reg[23] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_58),
        .Q(mul1I_out[23]),
        .R(1'b0));
  FDRE \topR_out_reg[2] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_79),
        .Q(mul1I_out[2]),
        .R(1'b0));
  FDRE \topR_out_reg[3] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_78),
        .Q(mul1I_out[3]),
        .R(1'b0));
  FDRE \topR_out_reg[4] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_77),
        .Q(mul1I_out[4]),
        .R(1'b0));
  FDRE \topR_out_reg[5] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_76),
        .Q(mul1I_out[5]),
        .R(1'b0));
  FDRE \topR_out_reg[6] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_75),
        .Q(mul1I_out[6]),
        .R(1'b0));
  FDRE \topR_out_reg[7] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_74),
        .Q(mul1I_out[7]),
        .R(1'b0));
  FDRE \topR_out_reg[8] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_73),
        .Q(mul1I_out[8]),
        .R(1'b0));
  FDRE \topR_out_reg[9] 
       (.C(s00_axi_aclk),
        .CE(mul_n_51),
        .D(mul_n_72),
        .Q(mul1I_out[9]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cplxmul
   (ready01_out,
    CEA1,
    \shift_reg[1] ,
    \shift_reg[1]_0 ,
    mulReady,
    E,
    \state_reg[1] ,
    \bottomIdx_reg[4] ,
    \bottomIdx_reg[1] ,
    \shift_reg[1]_1 ,
    \bottomIdx_reg[1]_0 ,
    \topIdx_reg[0] ,
    D,
    O71,
    ready0,
    out,
    \bottomI_out[23]_i_9_0 ,
    mulStart,
    s00_axi_aclk,
    A,
    mulPreviousReady,
    Q,
    \bottomI_out_reg[23]_i_10_0 ,
    aMinusB_carry__1_0,
    aMinusB_carry__1_1,
    mul2R,
    mul2I,
    \mul2Q_reg[0] ,
    \mul2Q_reg[0]_0 ,
    topIdx,
    \dataI[5][23]_i_4 ,
    dataQ,
    dataI,
    \mul2Q_reg[0]_1 ,
    \topR_out_reg[23] ,
    \topI_out_reg[23] ,
    lastStartState);
  output ready01_out;
  output CEA1;
  output [23:0]\shift_reg[1] ;
  output [23:0]\shift_reg[1]_0 ;
  output mulReady;
  output [0:0]E;
  output \state_reg[1] ;
  output \bottomIdx_reg[4] ;
  output \bottomIdx_reg[1] ;
  output \shift_reg[1]_1 ;
  output \bottomIdx_reg[1]_0 ;
  output \topIdx_reg[0] ;
  output [23:0]D;
  output [23:0]O71;
  output ready0;
  output [23:0]out;
  output [23:0]\bottomI_out[23]_i_9_0 ;
  input mulStart;
  input s00_axi_aclk;
  input [1:0]A;
  input mulPreviousReady;
  input [23:0]Q;
  input [23:0]\bottomI_out_reg[23]_i_10_0 ;
  input [23:0]aMinusB_carry__1_0;
  input [23:0]aMinusB_carry__1_1;
  input [3:0]mul2R;
  input [0:0]mul2I;
  input \mul2Q_reg[0] ;
  input [3:0]\mul2Q_reg[0]_0 ;
  input [3:0]topIdx;
  input [1:0]\dataI[5][23]_i_4 ;
  input [191:0]dataQ;
  input [191:0]dataI;
  input [1:0]\mul2Q_reg[0]_1 ;
  input [23:0]\topR_out_reg[23] ;
  input [23:0]\topI_out_reg[23] ;
  input lastStartState;

  wire [1:0]A;
  wire CEA1;
  wire [23:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire [23:0]O71;
  wire [23:0]Q;
  wire __0;
  wire [23:0]aMinusB;
  wire aMinusB_carry__0_i_1_n_0;
  wire aMinusB_carry__0_i_2_n_0;
  wire aMinusB_carry__0_i_3_n_0;
  wire aMinusB_carry__0_i_4_n_0;
  wire aMinusB_carry__0_i_5_n_0;
  wire aMinusB_carry__0_i_6_n_0;
  wire aMinusB_carry__0_i_7_n_0;
  wire aMinusB_carry__0_i_8_n_0;
  wire aMinusB_carry__0_n_0;
  wire aMinusB_carry__0_n_1;
  wire aMinusB_carry__0_n_2;
  wire aMinusB_carry__0_n_3;
  wire aMinusB_carry__0_n_4;
  wire aMinusB_carry__0_n_5;
  wire aMinusB_carry__0_n_6;
  wire aMinusB_carry__0_n_7;
  wire [23:0]aMinusB_carry__1_0;
  wire [23:0]aMinusB_carry__1_1;
  wire aMinusB_carry__1_i_1_n_0;
  wire aMinusB_carry__1_i_2_n_0;
  wire aMinusB_carry__1_i_3_n_0;
  wire aMinusB_carry__1_i_4_n_0;
  wire aMinusB_carry__1_i_5_n_0;
  wire aMinusB_carry__1_i_6_n_0;
  wire aMinusB_carry__1_i_7_n_0;
  wire aMinusB_carry__1_i_8_n_0;
  wire aMinusB_carry__1_n_1;
  wire aMinusB_carry__1_n_2;
  wire aMinusB_carry__1_n_3;
  wire aMinusB_carry__1_n_4;
  wire aMinusB_carry__1_n_5;
  wire aMinusB_carry__1_n_6;
  wire aMinusB_carry__1_n_7;
  wire aMinusB_carry_i_1_n_0;
  wire aMinusB_carry_i_2_n_0;
  wire aMinusB_carry_i_3_n_0;
  wire aMinusB_carry_i_4_n_0;
  wire aMinusB_carry_i_5_n_0;
  wire aMinusB_carry_i_6_n_0;
  wire aMinusB_carry_i_7_n_0;
  wire aMinusB_carry_i_8_n_0;
  wire aMinusB_carry_n_0;
  wire aMinusB_carry_n_1;
  wire aMinusB_carry_n_2;
  wire aMinusB_carry_n_3;
  wire aMinusB_carry_n_4;
  wire aMinusB_carry_n_5;
  wire aMinusB_carry_n_6;
  wire aMinusB_carry_n_7;
  wire aMinusBtimesD0_n_100;
  wire aMinusBtimesD0_n_101;
  wire aMinusBtimesD0_n_102;
  wire aMinusBtimesD0_n_103;
  wire aMinusBtimesD0_n_104;
  wire aMinusBtimesD0_n_105;
  wire aMinusBtimesD0_n_106;
  wire aMinusBtimesD0_n_107;
  wire aMinusBtimesD0_n_108;
  wire aMinusBtimesD0_n_109;
  wire aMinusBtimesD0_n_110;
  wire aMinusBtimesD0_n_111;
  wire aMinusBtimesD0_n_112;
  wire aMinusBtimesD0_n_113;
  wire aMinusBtimesD0_n_114;
  wire aMinusBtimesD0_n_115;
  wire aMinusBtimesD0_n_116;
  wire aMinusBtimesD0_n_117;
  wire aMinusBtimesD0_n_118;
  wire aMinusBtimesD0_n_119;
  wire aMinusBtimesD0_n_120;
  wire aMinusBtimesD0_n_121;
  wire aMinusBtimesD0_n_122;
  wire aMinusBtimesD0_n_123;
  wire aMinusBtimesD0_n_124;
  wire aMinusBtimesD0_n_125;
  wire aMinusBtimesD0_n_126;
  wire aMinusBtimesD0_n_127;
  wire aMinusBtimesD0_n_128;
  wire aMinusBtimesD0_n_129;
  wire aMinusBtimesD0_n_130;
  wire aMinusBtimesD0_n_131;
  wire aMinusBtimesD0_n_132;
  wire aMinusBtimesD0_n_133;
  wire aMinusBtimesD0_n_134;
  wire aMinusBtimesD0_n_135;
  wire aMinusBtimesD0_n_136;
  wire aMinusBtimesD0_n_137;
  wire aMinusBtimesD0_n_138;
  wire aMinusBtimesD0_n_139;
  wire aMinusBtimesD0_n_140;
  wire aMinusBtimesD0_n_141;
  wire aMinusBtimesD0_n_142;
  wire aMinusBtimesD0_n_143;
  wire aMinusBtimesD0_n_144;
  wire aMinusBtimesD0_n_145;
  wire aMinusBtimesD0_n_146;
  wire aMinusBtimesD0_n_147;
  wire aMinusBtimesD0_n_148;
  wire aMinusBtimesD0_n_149;
  wire aMinusBtimesD0_n_150;
  wire aMinusBtimesD0_n_151;
  wire aMinusBtimesD0_n_152;
  wire aMinusBtimesD0_n_153;
  wire aMinusBtimesD0_n_58;
  wire aMinusBtimesD0_n_59;
  wire aMinusBtimesD0_n_60;
  wire aMinusBtimesD0_n_61;
  wire aMinusBtimesD0_n_62;
  wire aMinusBtimesD0_n_63;
  wire aMinusBtimesD0_n_64;
  wire aMinusBtimesD0_n_65;
  wire aMinusBtimesD0_n_66;
  wire aMinusBtimesD0_n_67;
  wire aMinusBtimesD0_n_68;
  wire aMinusBtimesD0_n_69;
  wire aMinusBtimesD0_n_70;
  wire aMinusBtimesD0_n_71;
  wire aMinusBtimesD0_n_72;
  wire aMinusBtimesD0_n_73;
  wire aMinusBtimesD0_n_74;
  wire aMinusBtimesD0_n_75;
  wire aMinusBtimesD0_n_76;
  wire aMinusBtimesD0_n_77;
  wire aMinusBtimesD0_n_78;
  wire aMinusBtimesD0_n_79;
  wire aMinusBtimesD0_n_80;
  wire aMinusBtimesD0_n_81;
  wire aMinusBtimesD0_n_82;
  wire aMinusBtimesD0_n_83;
  wire aMinusBtimesD0_n_84;
  wire aMinusBtimesD0_n_85;
  wire aMinusBtimesD0_n_86;
  wire aMinusBtimesD0_n_87;
  wire aMinusBtimesD0_n_88;
  wire aMinusBtimesD0_n_89;
  wire aMinusBtimesD0_n_90;
  wire aMinusBtimesD0_n_91;
  wire aMinusBtimesD0_n_92;
  wire aMinusBtimesD0_n_93;
  wire aMinusBtimesD0_n_94;
  wire aMinusBtimesD0_n_95;
  wire aMinusBtimesD0_n_96;
  wire aMinusBtimesD0_n_97;
  wire aMinusBtimesD0_n_98;
  wire aMinusBtimesD0_n_99;
  wire [23:0]bottomI_out0;
  wire \bottomI_out[15]_i_11_n_0 ;
  wire \bottomI_out[15]_i_12_n_0 ;
  wire \bottomI_out[15]_i_13_n_0 ;
  wire \bottomI_out[15]_i_14_n_0 ;
  wire \bottomI_out[15]_i_15_n_0 ;
  wire \bottomI_out[15]_i_16_n_0 ;
  wire \bottomI_out[15]_i_17_n_0 ;
  wire \bottomI_out[15]_i_18_n_0 ;
  wire \bottomI_out[15]_i_2_n_0 ;
  wire \bottomI_out[15]_i_3_n_0 ;
  wire \bottomI_out[15]_i_4_n_0 ;
  wire \bottomI_out[15]_i_5_n_0 ;
  wire \bottomI_out[15]_i_6_n_0 ;
  wire \bottomI_out[15]_i_7_n_0 ;
  wire \bottomI_out[15]_i_8_n_0 ;
  wire \bottomI_out[15]_i_9_n_0 ;
  wire \bottomI_out[23]_i_11_n_0 ;
  wire \bottomI_out[23]_i_12_n_0 ;
  wire \bottomI_out[23]_i_13_n_0 ;
  wire \bottomI_out[23]_i_14_n_0 ;
  wire \bottomI_out[23]_i_15_n_0 ;
  wire \bottomI_out[23]_i_16_n_0 ;
  wire \bottomI_out[23]_i_17_n_0 ;
  wire \bottomI_out[23]_i_18_n_0 ;
  wire \bottomI_out[23]_i_2_n_0 ;
  wire \bottomI_out[23]_i_3_n_0 ;
  wire \bottomI_out[23]_i_4_n_0 ;
  wire \bottomI_out[23]_i_5_n_0 ;
  wire \bottomI_out[23]_i_6_n_0 ;
  wire \bottomI_out[23]_i_7_n_0 ;
  wire \bottomI_out[23]_i_8_n_0 ;
  wire [23:0]\bottomI_out[23]_i_9_0 ;
  wire \bottomI_out[23]_i_9_n_0 ;
  wire \bottomI_out[7]_i_11_n_0 ;
  wire \bottomI_out[7]_i_12_n_0 ;
  wire \bottomI_out[7]_i_13_n_0 ;
  wire \bottomI_out[7]_i_14_n_0 ;
  wire \bottomI_out[7]_i_15_n_0 ;
  wire \bottomI_out[7]_i_16_n_0 ;
  wire \bottomI_out[7]_i_17_n_0 ;
  wire \bottomI_out[7]_i_18_n_0 ;
  wire \bottomI_out[7]_i_2_n_0 ;
  wire \bottomI_out[7]_i_3_n_0 ;
  wire \bottomI_out[7]_i_4_n_0 ;
  wire \bottomI_out[7]_i_5_n_0 ;
  wire \bottomI_out[7]_i_6_n_0 ;
  wire \bottomI_out[7]_i_7_n_0 ;
  wire \bottomI_out[7]_i_8_n_0 ;
  wire \bottomI_out[7]_i_9_n_0 ;
  wire \bottomI_out_reg[15]_i_10_n_0 ;
  wire \bottomI_out_reg[15]_i_10_n_1 ;
  wire \bottomI_out_reg[15]_i_10_n_2 ;
  wire \bottomI_out_reg[15]_i_10_n_3 ;
  wire \bottomI_out_reg[15]_i_10_n_4 ;
  wire \bottomI_out_reg[15]_i_10_n_5 ;
  wire \bottomI_out_reg[15]_i_10_n_6 ;
  wire \bottomI_out_reg[15]_i_10_n_7 ;
  wire \bottomI_out_reg[15]_i_1_n_0 ;
  wire \bottomI_out_reg[15]_i_1_n_1 ;
  wire \bottomI_out_reg[15]_i_1_n_2 ;
  wire \bottomI_out_reg[15]_i_1_n_3 ;
  wire \bottomI_out_reg[15]_i_1_n_4 ;
  wire \bottomI_out_reg[15]_i_1_n_5 ;
  wire \bottomI_out_reg[15]_i_1_n_6 ;
  wire \bottomI_out_reg[15]_i_1_n_7 ;
  wire [23:0]\bottomI_out_reg[23]_i_10_0 ;
  wire \bottomI_out_reg[23]_i_10_n_1 ;
  wire \bottomI_out_reg[23]_i_10_n_2 ;
  wire \bottomI_out_reg[23]_i_10_n_3 ;
  wire \bottomI_out_reg[23]_i_10_n_4 ;
  wire \bottomI_out_reg[23]_i_10_n_5 ;
  wire \bottomI_out_reg[23]_i_10_n_6 ;
  wire \bottomI_out_reg[23]_i_10_n_7 ;
  wire \bottomI_out_reg[23]_i_1_n_1 ;
  wire \bottomI_out_reg[23]_i_1_n_2 ;
  wire \bottomI_out_reg[23]_i_1_n_3 ;
  wire \bottomI_out_reg[23]_i_1_n_4 ;
  wire \bottomI_out_reg[23]_i_1_n_5 ;
  wire \bottomI_out_reg[23]_i_1_n_6 ;
  wire \bottomI_out_reg[23]_i_1_n_7 ;
  wire \bottomI_out_reg[7]_i_10_n_0 ;
  wire \bottomI_out_reg[7]_i_10_n_1 ;
  wire \bottomI_out_reg[7]_i_10_n_2 ;
  wire \bottomI_out_reg[7]_i_10_n_3 ;
  wire \bottomI_out_reg[7]_i_10_n_4 ;
  wire \bottomI_out_reg[7]_i_10_n_5 ;
  wire \bottomI_out_reg[7]_i_10_n_6 ;
  wire \bottomI_out_reg[7]_i_10_n_7 ;
  wire \bottomI_out_reg[7]_i_1_n_0 ;
  wire \bottomI_out_reg[7]_i_1_n_1 ;
  wire \bottomI_out_reg[7]_i_1_n_2 ;
  wire \bottomI_out_reg[7]_i_1_n_3 ;
  wire \bottomI_out_reg[7]_i_1_n_4 ;
  wire \bottomI_out_reg[7]_i_1_n_5 ;
  wire \bottomI_out_reg[7]_i_1_n_6 ;
  wire \bottomI_out_reg[7]_i_1_n_7 ;
  wire \bottomIdx_reg[1] ;
  wire \bottomIdx_reg[1]_0 ;
  wire \bottomIdx_reg[4] ;
  wire [23:0]bottomR_out0;
  wire \bottomR_out[15]_i_10_n_0 ;
  wire \bottomR_out[15]_i_11_n_0 ;
  wire \bottomR_out[15]_i_12_n_0 ;
  wire \bottomR_out[15]_i_13_n_0 ;
  wire \bottomR_out[15]_i_14_n_0 ;
  wire \bottomR_out[15]_i_15_n_0 ;
  wire \bottomR_out[15]_i_16_n_0 ;
  wire \bottomR_out[15]_i_17_n_0 ;
  wire \bottomR_out[15]_i_19_n_0 ;
  wire \bottomR_out[15]_i_20_n_0 ;
  wire \bottomR_out[15]_i_21_n_0 ;
  wire \bottomR_out[15]_i_22_n_0 ;
  wire \bottomR_out[15]_i_23_n_0 ;
  wire \bottomR_out[15]_i_24_n_0 ;
  wire \bottomR_out[15]_i_25_n_0 ;
  wire \bottomR_out[15]_i_26_n_0 ;
  wire \bottomR_out[15]_i_2_n_0 ;
  wire \bottomR_out[15]_i_3_n_0 ;
  wire \bottomR_out[15]_i_4_n_0 ;
  wire \bottomR_out[15]_i_5_n_0 ;
  wire \bottomR_out[15]_i_6_n_0 ;
  wire \bottomR_out[15]_i_7_n_0 ;
  wire \bottomR_out[15]_i_8_n_0 ;
  wire \bottomR_out[15]_i_9_n_0 ;
  wire \bottomR_out[23]_i_10_n_0 ;
  wire \bottomR_out[23]_i_11_n_0 ;
  wire \bottomR_out[23]_i_12_n_0 ;
  wire \bottomR_out[23]_i_13_n_0 ;
  wire \bottomR_out[23]_i_14_n_0 ;
  wire \bottomR_out[23]_i_15_n_0 ;
  wire \bottomR_out[23]_i_16_n_0 ;
  wire \bottomR_out[23]_i_18_n_0 ;
  wire \bottomR_out[23]_i_19_n_0 ;
  wire \bottomR_out[23]_i_20_n_0 ;
  wire \bottomR_out[23]_i_21_n_0 ;
  wire \bottomR_out[23]_i_22_n_0 ;
  wire \bottomR_out[23]_i_23_n_0 ;
  wire \bottomR_out[23]_i_24_n_0 ;
  wire \bottomR_out[23]_i_25_n_0 ;
  wire \bottomR_out[23]_i_2_n_0 ;
  wire \bottomR_out[23]_i_3_n_0 ;
  wire \bottomR_out[23]_i_4_n_0 ;
  wire \bottomR_out[23]_i_5_n_0 ;
  wire \bottomR_out[23]_i_6_n_0 ;
  wire \bottomR_out[23]_i_7_n_0 ;
  wire \bottomR_out[23]_i_8_n_0 ;
  wire \bottomR_out[23]_i_9_n_0 ;
  wire \bottomR_out[7]_i_10_n_0 ;
  wire \bottomR_out[7]_i_11_n_0 ;
  wire \bottomR_out[7]_i_12_n_0 ;
  wire \bottomR_out[7]_i_13_n_0 ;
  wire \bottomR_out[7]_i_14_n_0 ;
  wire \bottomR_out[7]_i_15_n_0 ;
  wire \bottomR_out[7]_i_16_n_0 ;
  wire \bottomR_out[7]_i_17_n_0 ;
  wire \bottomR_out[7]_i_19_n_0 ;
  wire \bottomR_out[7]_i_20_n_0 ;
  wire \bottomR_out[7]_i_21_n_0 ;
  wire \bottomR_out[7]_i_22_n_0 ;
  wire \bottomR_out[7]_i_23_n_0 ;
  wire \bottomR_out[7]_i_24_n_0 ;
  wire \bottomR_out[7]_i_25_n_0 ;
  wire \bottomR_out[7]_i_26_n_0 ;
  wire \bottomR_out[7]_i_2_n_0 ;
  wire \bottomR_out[7]_i_3_n_0 ;
  wire \bottomR_out[7]_i_4_n_0 ;
  wire \bottomR_out[7]_i_5_n_0 ;
  wire \bottomR_out[7]_i_6_n_0 ;
  wire \bottomR_out[7]_i_7_n_0 ;
  wire \bottomR_out[7]_i_8_n_0 ;
  wire \bottomR_out[7]_i_9_n_0 ;
  wire \bottomR_out_reg[15]_i_18_n_0 ;
  wire \bottomR_out_reg[15]_i_18_n_1 ;
  wire \bottomR_out_reg[15]_i_18_n_2 ;
  wire \bottomR_out_reg[15]_i_18_n_3 ;
  wire \bottomR_out_reg[15]_i_18_n_4 ;
  wire \bottomR_out_reg[15]_i_18_n_5 ;
  wire \bottomR_out_reg[15]_i_18_n_6 ;
  wire \bottomR_out_reg[15]_i_18_n_7 ;
  wire \bottomR_out_reg[15]_i_1_n_0 ;
  wire \bottomR_out_reg[15]_i_1_n_1 ;
  wire \bottomR_out_reg[15]_i_1_n_2 ;
  wire \bottomR_out_reg[15]_i_1_n_3 ;
  wire \bottomR_out_reg[15]_i_1_n_4 ;
  wire \bottomR_out_reg[15]_i_1_n_5 ;
  wire \bottomR_out_reg[15]_i_1_n_6 ;
  wire \bottomR_out_reg[15]_i_1_n_7 ;
  wire \bottomR_out_reg[23]_i_17_n_1 ;
  wire \bottomR_out_reg[23]_i_17_n_2 ;
  wire \bottomR_out_reg[23]_i_17_n_3 ;
  wire \bottomR_out_reg[23]_i_17_n_4 ;
  wire \bottomR_out_reg[23]_i_17_n_5 ;
  wire \bottomR_out_reg[23]_i_17_n_6 ;
  wire \bottomR_out_reg[23]_i_17_n_7 ;
  wire \bottomR_out_reg[23]_i_1_n_1 ;
  wire \bottomR_out_reg[23]_i_1_n_2 ;
  wire \bottomR_out_reg[23]_i_1_n_3 ;
  wire \bottomR_out_reg[23]_i_1_n_4 ;
  wire \bottomR_out_reg[23]_i_1_n_5 ;
  wire \bottomR_out_reg[23]_i_1_n_6 ;
  wire \bottomR_out_reg[23]_i_1_n_7 ;
  wire \bottomR_out_reg[7]_i_18_n_0 ;
  wire \bottomR_out_reg[7]_i_18_n_1 ;
  wire \bottomR_out_reg[7]_i_18_n_2 ;
  wire \bottomR_out_reg[7]_i_18_n_3 ;
  wire \bottomR_out_reg[7]_i_18_n_4 ;
  wire \bottomR_out_reg[7]_i_18_n_5 ;
  wire \bottomR_out_reg[7]_i_18_n_6 ;
  wire \bottomR_out_reg[7]_i_18_n_7 ;
  wire \bottomR_out_reg[7]_i_1_n_0 ;
  wire \bottomR_out_reg[7]_i_1_n_1 ;
  wire \bottomR_out_reg[7]_i_1_n_2 ;
  wire \bottomR_out_reg[7]_i_1_n_3 ;
  wire \bottomR_out_reg[7]_i_1_n_4 ;
  wire \bottomR_out_reg[7]_i_1_n_5 ;
  wire \bottomR_out_reg[7]_i_1_n_6 ;
  wire \bottomR_out_reg[7]_i_1_n_7 ;
  wire [23:2]cMinusD;
  wire cMinusD_carry__0_i_1_n_0;
  wire cMinusD_carry__0_i_2_n_0;
  wire cMinusD_carry__0_i_3_n_0;
  wire cMinusD_carry__0_i_4_n_0;
  wire cMinusD_carry__0_i_5_n_0;
  wire cMinusD_carry__0_i_6_n_0;
  wire cMinusD_carry__0_i_7_n_0;
  wire cMinusD_carry__0_i_8_n_0;
  wire cMinusD_carry__0_n_0;
  wire cMinusD_carry__0_n_1;
  wire cMinusD_carry__0_n_2;
  wire cMinusD_carry__0_n_3;
  wire cMinusD_carry__0_n_4;
  wire cMinusD_carry__0_n_5;
  wire cMinusD_carry__0_n_6;
  wire cMinusD_carry__0_n_7;
  wire cMinusD_carry__1_i_1_n_0;
  wire cMinusD_carry__1_i_2_n_0;
  wire cMinusD_carry__1_i_3_n_0;
  wire cMinusD_carry__1_i_4_n_0;
  wire cMinusD_carry__1_i_5_n_0;
  wire cMinusD_carry__1_i_6_n_0;
  wire cMinusD_carry__1_n_3;
  wire cMinusD_carry__1_n_4;
  wire cMinusD_carry__1_n_5;
  wire cMinusD_carry__1_n_6;
  wire cMinusD_carry__1_n_7;
  wire cMinusD_carry_i_1_n_0;
  wire cMinusD_carry_i_2_n_0;
  wire cMinusD_carry_i_3_n_0;
  wire cMinusD_carry_i_4_n_0;
  wire cMinusD_carry_i_5_n_0;
  wire cMinusD_carry_i_6_n_0;
  wire cMinusD_carry_i_7_n_0;
  wire cMinusD_carry_n_0;
  wire cMinusD_carry_n_1;
  wire cMinusD_carry_n_2;
  wire cMinusD_carry_n_3;
  wire cMinusD_carry_n_4;
  wire cMinusD_carry_n_5;
  wire cMinusD_carry_n_6;
  wire cMinusD_carry_n_7;
  wire cMinusDtimesA;
  wire cMinusDtimesA0_i_28_n_0;
  wire cMinusDtimesA0_i_29_n_0;
  wire cMinusDtimesA0_i_30_n_0;
  wire cMinusDtimesA0_i_31_n_0;
  wire cMinusDtimesA0_i_32_n_0;
  wire cMinusDtimesA0_i_33_n_0;
  wire cMinusDtimesA0_i_34_n_0;
  wire cMinusDtimesA0_i_35_n_0;
  wire cMinusDtimesA0_i_36_n_0;
  wire cMinusDtimesA0_i_37_n_0;
  wire cMinusDtimesA0_i_38_n_0;
  wire cMinusDtimesA0_i_39_n_0;
  wire cMinusDtimesA0_i_40_n_0;
  wire cMinusDtimesA0_i_41_n_0;
  wire cMinusDtimesA0_i_42_n_0;
  wire cMinusDtimesA0_i_43_n_0;
  wire cMinusDtimesA0_i_44_n_0;
  wire cMinusDtimesA0_i_45_n_0;
  wire cMinusDtimesA0_i_46_n_0;
  wire cMinusDtimesA0_i_47_n_0;
  wire cMinusDtimesA0_i_48_n_0;
  wire cMinusDtimesA0_i_49_n_0;
  wire cMinusDtimesA0_i_50_n_0;
  wire cMinusDtimesA0_i_51_n_0;
  wire cMinusDtimesA0_i_52_n_0;
  wire cMinusDtimesA0_i_53_n_0;
  wire cMinusDtimesA0_i_54_n_0;
  wire cMinusDtimesA0_i_55_n_0;
  wire cMinusDtimesA0_i_56_n_0;
  wire cMinusDtimesA0_i_57_n_0;
  wire cMinusDtimesA0_i_58_n_0;
  wire cMinusDtimesA0_i_59_n_0;
  wire cMinusDtimesA0_i_60_n_0;
  wire cMinusDtimesA0_i_61_n_0;
  wire cMinusDtimesA0_i_62_n_0;
  wire cMinusDtimesA0_i_63_n_0;
  wire cMinusDtimesA0_i_64_n_0;
  wire cMinusDtimesA0_i_65_n_0;
  wire cMinusDtimesA0_i_66_n_0;
  wire cMinusDtimesA0_i_67_n_0;
  wire cMinusDtimesA0_i_68_n_0;
  wire cMinusDtimesA0_i_69_n_0;
  wire cMinusDtimesA0_i_70_n_0;
  wire cMinusDtimesA0_i_71_n_0;
  wire cMinusDtimesA0_i_72_n_0;
  wire cMinusDtimesA0_i_73_n_0;
  wire cMinusDtimesA0_i_74_n_0;
  wire cMinusDtimesA0_i_75_n_0;
  wire cMinusDtimesA0_i_76_n_0;
  wire cMinusDtimesA0_n_100;
  wire cMinusDtimesA0_n_101;
  wire cMinusDtimesA0_n_102;
  wire cMinusDtimesA0_n_103;
  wire cMinusDtimesA0_n_104;
  wire cMinusDtimesA0_n_105;
  wire cMinusDtimesA0_n_106;
  wire cMinusDtimesA0_n_107;
  wire cMinusDtimesA0_n_108;
  wire cMinusDtimesA0_n_109;
  wire cMinusDtimesA0_n_110;
  wire cMinusDtimesA0_n_111;
  wire cMinusDtimesA0_n_112;
  wire cMinusDtimesA0_n_113;
  wire cMinusDtimesA0_n_114;
  wire cMinusDtimesA0_n_115;
  wire cMinusDtimesA0_n_116;
  wire cMinusDtimesA0_n_117;
  wire cMinusDtimesA0_n_118;
  wire cMinusDtimesA0_n_119;
  wire cMinusDtimesA0_n_120;
  wire cMinusDtimesA0_n_121;
  wire cMinusDtimesA0_n_122;
  wire cMinusDtimesA0_n_123;
  wire cMinusDtimesA0_n_124;
  wire cMinusDtimesA0_n_125;
  wire cMinusDtimesA0_n_126;
  wire cMinusDtimesA0_n_127;
  wire cMinusDtimesA0_n_128;
  wire cMinusDtimesA0_n_129;
  wire cMinusDtimesA0_n_130;
  wire cMinusDtimesA0_n_131;
  wire cMinusDtimesA0_n_132;
  wire cMinusDtimesA0_n_133;
  wire cMinusDtimesA0_n_134;
  wire cMinusDtimesA0_n_135;
  wire cMinusDtimesA0_n_136;
  wire cMinusDtimesA0_n_137;
  wire cMinusDtimesA0_n_138;
  wire cMinusDtimesA0_n_139;
  wire cMinusDtimesA0_n_140;
  wire cMinusDtimesA0_n_141;
  wire cMinusDtimesA0_n_142;
  wire cMinusDtimesA0_n_143;
  wire cMinusDtimesA0_n_144;
  wire cMinusDtimesA0_n_145;
  wire cMinusDtimesA0_n_146;
  wire cMinusDtimesA0_n_147;
  wire cMinusDtimesA0_n_148;
  wire cMinusDtimesA0_n_149;
  wire cMinusDtimesA0_n_150;
  wire cMinusDtimesA0_n_151;
  wire cMinusDtimesA0_n_152;
  wire cMinusDtimesA0_n_153;
  wire cMinusDtimesA0_n_58;
  wire cMinusDtimesA0_n_59;
  wire cMinusDtimesA0_n_60;
  wire cMinusDtimesA0_n_61;
  wire cMinusDtimesA0_n_62;
  wire cMinusDtimesA0_n_63;
  wire cMinusDtimesA0_n_64;
  wire cMinusDtimesA0_n_65;
  wire cMinusDtimesA0_n_66;
  wire cMinusDtimesA0_n_67;
  wire cMinusDtimesA0_n_68;
  wire cMinusDtimesA0_n_69;
  wire cMinusDtimesA0_n_70;
  wire cMinusDtimesA0_n_71;
  wire cMinusDtimesA0_n_72;
  wire cMinusDtimesA0_n_73;
  wire cMinusDtimesA0_n_74;
  wire cMinusDtimesA0_n_75;
  wire cMinusDtimesA0_n_76;
  wire cMinusDtimesA0_n_77;
  wire cMinusDtimesA0_n_78;
  wire cMinusDtimesA0_n_79;
  wire cMinusDtimesA0_n_80;
  wire cMinusDtimesA0_n_81;
  wire cMinusDtimesA0_n_82;
  wire cMinusDtimesA0_n_83;
  wire cMinusDtimesA0_n_84;
  wire cMinusDtimesA0_n_85;
  wire cMinusDtimesA0_n_86;
  wire cMinusDtimesA0_n_87;
  wire cMinusDtimesA0_n_88;
  wire cMinusDtimesA0_n_89;
  wire cMinusDtimesA0_n_90;
  wire cMinusDtimesA0_n_91;
  wire cMinusDtimesA0_n_92;
  wire cMinusDtimesA0_n_93;
  wire cMinusDtimesA0_n_94;
  wire cMinusDtimesA0_n_95;
  wire cMinusDtimesA0_n_96;
  wire cMinusDtimesA0_n_97;
  wire cMinusDtimesA0_n_98;
  wire cMinusDtimesA0_n_99;
  wire [23:2]cPlusD;
  wire cPlusDtimesB0_i_1_n_0;
  wire cPlusDtimesB0_i_1_n_1;
  wire cPlusDtimesB0_i_1_n_2;
  wire cPlusDtimesB0_i_1_n_3;
  wire cPlusDtimesB0_i_1_n_4;
  wire cPlusDtimesB0_i_1_n_5;
  wire cPlusDtimesB0_i_1_n_6;
  wire cPlusDtimesB0_i_1_n_7;
  wire cPlusDtimesB0_i_27_n_0;
  wire cPlusDtimesB0_i_28_n_0;
  wire cPlusDtimesB0_i_29_n_0;
  wire cPlusDtimesB0_i_2_n_0;
  wire cPlusDtimesB0_i_2_n_1;
  wire cPlusDtimesB0_i_2_n_2;
  wire cPlusDtimesB0_i_2_n_3;
  wire cPlusDtimesB0_i_2_n_4;
  wire cPlusDtimesB0_i_2_n_5;
  wire cPlusDtimesB0_i_2_n_6;
  wire cPlusDtimesB0_i_2_n_7;
  wire cPlusDtimesB0_i_30_n_0;
  wire cPlusDtimesB0_i_31_n_0;
  wire cPlusDtimesB0_i_32_n_0;
  wire cPlusDtimesB0_i_33_n_0;
  wire cPlusDtimesB0_i_34_n_0;
  wire cPlusDtimesB0_i_35_n_0;
  wire cPlusDtimesB0_i_36_n_0;
  wire cPlusDtimesB0_i_37_n_0;
  wire cPlusDtimesB0_i_38_n_0;
  wire cPlusDtimesB0_i_39_n_0;
  wire cPlusDtimesB0_i_40_n_0;
  wire cPlusDtimesB0_i_41_n_0;
  wire cPlusDtimesB0_i_42_n_0;
  wire cPlusDtimesB0_i_43_n_0;
  wire cPlusDtimesB0_i_44_n_0;
  wire cPlusDtimesB0_i_45_n_0;
  wire cPlusDtimesB0_i_46_n_0;
  wire cPlusDtimesB0_i_47_n_0;
  wire cPlusDtimesB0_i_48_n_0;
  wire cPlusDtimesB0_i_49_n_0;
  wire cPlusDtimesB0_i_50_n_0;
  wire cPlusDtimesB0_i_51_n_0;
  wire cPlusDtimesB0_i_52_n_0;
  wire cPlusDtimesB0_i_53_n_0;
  wire cPlusDtimesB0_i_54_n_0;
  wire cPlusDtimesB0_i_55_n_0;
  wire cPlusDtimesB0_i_56_n_0;
  wire cPlusDtimesB0_i_57_n_0;
  wire cPlusDtimesB0_i_58_n_0;
  wire cPlusDtimesB0_i_59_n_0;
  wire cPlusDtimesB0_i_60_n_0;
  wire cPlusDtimesB0_i_61_n_0;
  wire cPlusDtimesB0_i_62_n_0;
  wire cPlusDtimesB0_i_63_n_0;
  wire cPlusDtimesB0_i_64_n_0;
  wire cPlusDtimesB0_i_65_n_0;
  wire cPlusDtimesB0_i_66_n_0;
  wire cPlusDtimesB0_i_67_n_0;
  wire cPlusDtimesB0_i_68_n_0;
  wire cPlusDtimesB0_i_69_n_0;
  wire cPlusDtimesB0_i_70_n_0;
  wire cPlusDtimesB0_i_71_n_0;
  wire cPlusDtimesB0_i_72_n_0;
  wire cPlusDtimesB0_i_73_n_0;
  wire cPlusDtimesB0_i_74_n_0;
  wire cPlusDtimesB0_i_75_n_0;
  wire cPlusDtimesB0_i_76_n_0;
  wire cPlusDtimesB0_i_77_n_0;
  wire cPlusDtimesB0_i_78_n_0;
  wire cPlusDtimesB0_i_79_n_0;
  wire cPlusDtimesB0_i_80_n_0;
  wire cPlusDtimesB0_i_81_n_0;
  wire cPlusDtimesB0_i_82_n_0;
  wire cPlusDtimesB0_i_83_n_0;
  wire cPlusDtimesB0_i_84_n_0;
  wire cPlusDtimesB0_i_85_n_0;
  wire cPlusDtimesB0_n_100;
  wire cPlusDtimesB0_n_101;
  wire cPlusDtimesB0_n_102;
  wire cPlusDtimesB0_n_103;
  wire cPlusDtimesB0_n_104;
  wire cPlusDtimesB0_n_105;
  wire cPlusDtimesB0_n_106;
  wire cPlusDtimesB0_n_107;
  wire cPlusDtimesB0_n_108;
  wire cPlusDtimesB0_n_109;
  wire cPlusDtimesB0_n_110;
  wire cPlusDtimesB0_n_111;
  wire cPlusDtimesB0_n_112;
  wire cPlusDtimesB0_n_113;
  wire cPlusDtimesB0_n_114;
  wire cPlusDtimesB0_n_115;
  wire cPlusDtimesB0_n_116;
  wire cPlusDtimesB0_n_117;
  wire cPlusDtimesB0_n_118;
  wire cPlusDtimesB0_n_119;
  wire cPlusDtimesB0_n_120;
  wire cPlusDtimesB0_n_121;
  wire cPlusDtimesB0_n_122;
  wire cPlusDtimesB0_n_123;
  wire cPlusDtimesB0_n_124;
  wire cPlusDtimesB0_n_125;
  wire cPlusDtimesB0_n_126;
  wire cPlusDtimesB0_n_127;
  wire cPlusDtimesB0_n_128;
  wire cPlusDtimesB0_n_129;
  wire cPlusDtimesB0_n_130;
  wire cPlusDtimesB0_n_131;
  wire cPlusDtimesB0_n_132;
  wire cPlusDtimesB0_n_133;
  wire cPlusDtimesB0_n_134;
  wire cPlusDtimesB0_n_135;
  wire cPlusDtimesB0_n_136;
  wire cPlusDtimesB0_n_137;
  wire cPlusDtimesB0_n_138;
  wire cPlusDtimesB0_n_139;
  wire cPlusDtimesB0_n_140;
  wire cPlusDtimesB0_n_141;
  wire cPlusDtimesB0_n_142;
  wire cPlusDtimesB0_n_143;
  wire cPlusDtimesB0_n_144;
  wire cPlusDtimesB0_n_145;
  wire cPlusDtimesB0_n_146;
  wire cPlusDtimesB0_n_147;
  wire cPlusDtimesB0_n_148;
  wire cPlusDtimesB0_n_149;
  wire cPlusDtimesB0_n_150;
  wire cPlusDtimesB0_n_151;
  wire cPlusDtimesB0_n_152;
  wire cPlusDtimesB0_n_153;
  wire cPlusDtimesB0_n_58;
  wire cPlusDtimesB0_n_59;
  wire cPlusDtimesB0_n_60;
  wire cPlusDtimesB0_n_61;
  wire cPlusDtimesB0_n_62;
  wire cPlusDtimesB0_n_63;
  wire cPlusDtimesB0_n_64;
  wire cPlusDtimesB0_n_65;
  wire cPlusDtimesB0_n_66;
  wire cPlusDtimesB0_n_67;
  wire cPlusDtimesB0_n_68;
  wire cPlusDtimesB0_n_69;
  wire cPlusDtimesB0_n_70;
  wire cPlusDtimesB0_n_71;
  wire cPlusDtimesB0_n_72;
  wire cPlusDtimesB0_n_73;
  wire cPlusDtimesB0_n_74;
  wire cPlusDtimesB0_n_75;
  wire cPlusDtimesB0_n_76;
  wire cPlusDtimesB0_n_77;
  wire cPlusDtimesB0_n_78;
  wire cPlusDtimesB0_n_79;
  wire cPlusDtimesB0_n_80;
  wire cPlusDtimesB0_n_81;
  wire cPlusDtimesB0_n_82;
  wire cPlusDtimesB0_n_83;
  wire cPlusDtimesB0_n_84;
  wire cPlusDtimesB0_n_85;
  wire cPlusDtimesB0_n_86;
  wire cPlusDtimesB0_n_87;
  wire cPlusDtimesB0_n_88;
  wire cPlusDtimesB0_n_89;
  wire cPlusDtimesB0_n_90;
  wire cPlusDtimesB0_n_91;
  wire cPlusDtimesB0_n_92;
  wire cPlusDtimesB0_n_93;
  wire cPlusDtimesB0_n_94;
  wire cPlusDtimesB0_n_95;
  wire cPlusDtimesB0_n_96;
  wire cPlusDtimesB0_n_97;
  wire cPlusDtimesB0_n_98;
  wire cPlusDtimesB0_n_99;
  wire cPlusDtimesB_reg_i_1_n_3;
  wire cPlusDtimesB_reg_i_1_n_4;
  wire cPlusDtimesB_reg_i_1_n_5;
  wire cPlusDtimesB_reg_i_1_n_6;
  wire cPlusDtimesB_reg_i_1_n_7;
  wire cPlusDtimesB_reg_i_2_n_0;
  wire cPlusDtimesB_reg_i_3_n_0;
  wire cPlusDtimesB_reg_i_4_n_0;
  wire cPlusDtimesB_reg_i_5_n_0;
  wire cPlusDtimesB_reg_i_6_n_0;
  wire cPlusDtimesB_reg_i_7_n_0;
  wire [23:0]common;
  wire [191:0]dataI;
  wire [1:0]\dataI[5][23]_i_4 ;
  wire [191:0]dataQ;
  wire lastStartState;
  wire lastStartState_0;
  wire \mul/_n_0 ;
  wire [0:0]mul2I;
  wire \mul2Q_reg[0] ;
  wire [3:0]\mul2Q_reg[0]_0 ;
  wire [1:0]\mul2Q_reg[0]_1 ;
  wire [3:0]mul2R;
  wire [23:0]mulOutI;
  wire [23:0]mulOutR;
  wire mulPreviousReady;
  wire mulReady;
  wire mulStart;
  wire [23:0]out;
  wire [23:0]outi0;
  wire outi_carry__0_i_1_n_0;
  wire outi_carry__0_i_2_n_0;
  wire outi_carry__0_i_3_n_0;
  wire outi_carry__0_i_4_n_0;
  wire outi_carry__0_i_5_n_0;
  wire outi_carry__0_i_6_n_0;
  wire outi_carry__0_i_7_n_0;
  wire outi_carry__0_i_8_n_0;
  wire outi_carry__0_n_0;
  wire outi_carry__0_n_1;
  wire outi_carry__0_n_2;
  wire outi_carry__0_n_3;
  wire outi_carry__0_n_4;
  wire outi_carry__0_n_5;
  wire outi_carry__0_n_6;
  wire outi_carry__0_n_7;
  wire outi_carry__1_i_1_n_0;
  wire outi_carry__1_i_2_n_0;
  wire outi_carry__1_i_3_n_0;
  wire outi_carry__1_i_4_n_0;
  wire outi_carry__1_i_5_n_0;
  wire outi_carry__1_i_6_n_0;
  wire outi_carry__1_i_7_n_0;
  wire outi_carry__1_i_8_n_0;
  wire outi_carry__1_n_1;
  wire outi_carry__1_n_2;
  wire outi_carry__1_n_3;
  wire outi_carry__1_n_4;
  wire outi_carry__1_n_5;
  wire outi_carry__1_n_6;
  wire outi_carry__1_n_7;
  wire outi_carry_i_1_n_0;
  wire outi_carry_i_2_n_0;
  wire outi_carry_i_3_n_0;
  wire outi_carry_i_4_n_0;
  wire outi_carry_i_5_n_0;
  wire outi_carry_i_6_n_0;
  wire outi_carry_i_7_n_0;
  wire outi_carry_i_8_n_0;
  wire outi_carry_n_0;
  wire outi_carry_n_1;
  wire outi_carry_n_2;
  wire outi_carry_n_3;
  wire outi_carry_n_4;
  wire outi_carry_n_5;
  wire outi_carry_n_6;
  wire outi_carry_n_7;
  wire [23:0]outr0;
  wire outr_carry__0_i_1_n_0;
  wire outr_carry__0_i_2_n_0;
  wire outr_carry__0_i_3_n_0;
  wire outr_carry__0_i_4_n_0;
  wire outr_carry__0_i_5_n_0;
  wire outr_carry__0_i_6_n_0;
  wire outr_carry__0_i_7_n_0;
  wire outr_carry__0_i_8_n_0;
  wire outr_carry__0_n_0;
  wire outr_carry__0_n_1;
  wire outr_carry__0_n_2;
  wire outr_carry__0_n_3;
  wire outr_carry__0_n_4;
  wire outr_carry__0_n_5;
  wire outr_carry__0_n_6;
  wire outr_carry__0_n_7;
  wire outr_carry__1_i_1_n_0;
  wire outr_carry__1_i_2_n_0;
  wire outr_carry__1_i_3_n_0;
  wire outr_carry__1_i_4_n_0;
  wire outr_carry__1_i_5_n_0;
  wire outr_carry__1_i_6_n_0;
  wire outr_carry__1_i_7_n_0;
  wire outr_carry__1_i_8_n_0;
  wire outr_carry__1_n_1;
  wire outr_carry__1_n_2;
  wire outr_carry__1_n_3;
  wire outr_carry__1_n_4;
  wire outr_carry__1_n_5;
  wire outr_carry__1_n_6;
  wire outr_carry__1_n_7;
  wire outr_carry_i_1_n_0;
  wire outr_carry_i_2_n_0;
  wire outr_carry_i_3_n_0;
  wire outr_carry_i_4_n_0;
  wire outr_carry_i_5_n_0;
  wire outr_carry_i_6_n_0;
  wire outr_carry_i_7_n_0;
  wire outr_carry_i_8_n_0;
  wire outr_carry_n_0;
  wire outr_carry_n_1;
  wire outr_carry_n_2;
  wire outr_carry_n_3;
  wire outr_carry_n_4;
  wire outr_carry_n_5;
  wire outr_carry_n_6;
  wire outr_carry_n_7;
  wire ready0;
  wire ready01_out;
  wire ready0_1;
  wire ready_i_1_n_0;
  wire s00_axi_aclk;
  wire [23:0]\shift_reg[1] ;
  wire [23:0]\shift_reg[1]_0 ;
  wire \shift_reg[1]_1 ;
  wire \state_reg[1] ;
  wire \topI_out[15]_i_2_n_0 ;
  wire \topI_out[15]_i_3_n_0 ;
  wire \topI_out[15]_i_4_n_0 ;
  wire \topI_out[15]_i_5_n_0 ;
  wire \topI_out[15]_i_6_n_0 ;
  wire \topI_out[15]_i_7_n_0 ;
  wire \topI_out[15]_i_8_n_0 ;
  wire \topI_out[15]_i_9_n_0 ;
  wire \topI_out[23]_i_2_n_0 ;
  wire \topI_out[23]_i_3_n_0 ;
  wire \topI_out[23]_i_4_n_0 ;
  wire \topI_out[23]_i_5_n_0 ;
  wire \topI_out[23]_i_6_n_0 ;
  wire \topI_out[23]_i_7_n_0 ;
  wire \topI_out[23]_i_8_n_0 ;
  wire \topI_out[23]_i_9_n_0 ;
  wire \topI_out[7]_i_2_n_0 ;
  wire \topI_out[7]_i_3_n_0 ;
  wire \topI_out[7]_i_4_n_0 ;
  wire \topI_out[7]_i_5_n_0 ;
  wire \topI_out[7]_i_6_n_0 ;
  wire \topI_out[7]_i_7_n_0 ;
  wire \topI_out[7]_i_8_n_0 ;
  wire \topI_out[7]_i_9_n_0 ;
  wire \topI_out_reg[15]_i_1_n_0 ;
  wire \topI_out_reg[15]_i_1_n_1 ;
  wire \topI_out_reg[15]_i_1_n_2 ;
  wire \topI_out_reg[15]_i_1_n_3 ;
  wire \topI_out_reg[15]_i_1_n_4 ;
  wire \topI_out_reg[15]_i_1_n_5 ;
  wire \topI_out_reg[15]_i_1_n_6 ;
  wire \topI_out_reg[15]_i_1_n_7 ;
  wire [23:0]\topI_out_reg[23] ;
  wire \topI_out_reg[23]_i_1_n_1 ;
  wire \topI_out_reg[23]_i_1_n_2 ;
  wire \topI_out_reg[23]_i_1_n_3 ;
  wire \topI_out_reg[23]_i_1_n_4 ;
  wire \topI_out_reg[23]_i_1_n_5 ;
  wire \topI_out_reg[23]_i_1_n_6 ;
  wire \topI_out_reg[23]_i_1_n_7 ;
  wire \topI_out_reg[7]_i_1_n_0 ;
  wire \topI_out_reg[7]_i_1_n_1 ;
  wire \topI_out_reg[7]_i_1_n_2 ;
  wire \topI_out_reg[7]_i_1_n_3 ;
  wire \topI_out_reg[7]_i_1_n_4 ;
  wire \topI_out_reg[7]_i_1_n_5 ;
  wire \topI_out_reg[7]_i_1_n_6 ;
  wire \topI_out_reg[7]_i_1_n_7 ;
  wire [3:0]topIdx;
  wire \topIdx_reg[0] ;
  wire \topR_out[15]_i_2_n_0 ;
  wire \topR_out[15]_i_3_n_0 ;
  wire \topR_out[15]_i_4_n_0 ;
  wire \topR_out[15]_i_5_n_0 ;
  wire \topR_out[15]_i_6_n_0 ;
  wire \topR_out[15]_i_7_n_0 ;
  wire \topR_out[15]_i_8_n_0 ;
  wire \topR_out[15]_i_9_n_0 ;
  wire \topR_out[23]_i_10_n_0 ;
  wire \topR_out[23]_i_3_n_0 ;
  wire \topR_out[23]_i_4_n_0 ;
  wire \topR_out[23]_i_5_n_0 ;
  wire \topR_out[23]_i_6_n_0 ;
  wire \topR_out[23]_i_7_n_0 ;
  wire \topR_out[23]_i_8_n_0 ;
  wire \topR_out[23]_i_9_n_0 ;
  wire \topR_out[7]_i_2_n_0 ;
  wire \topR_out[7]_i_3_n_0 ;
  wire \topR_out[7]_i_4_n_0 ;
  wire \topR_out[7]_i_5_n_0 ;
  wire \topR_out[7]_i_6_n_0 ;
  wire \topR_out[7]_i_7_n_0 ;
  wire \topR_out[7]_i_8_n_0 ;
  wire \topR_out[7]_i_9_n_0 ;
  wire \topR_out_reg[15]_i_1_n_0 ;
  wire \topR_out_reg[15]_i_1_n_1 ;
  wire \topR_out_reg[15]_i_1_n_2 ;
  wire \topR_out_reg[15]_i_1_n_3 ;
  wire \topR_out_reg[15]_i_1_n_4 ;
  wire \topR_out_reg[15]_i_1_n_5 ;
  wire \topR_out_reg[15]_i_1_n_6 ;
  wire \topR_out_reg[15]_i_1_n_7 ;
  wire [23:0]\topR_out_reg[23] ;
  wire \topR_out_reg[23]_i_2_n_1 ;
  wire \topR_out_reg[23]_i_2_n_2 ;
  wire \topR_out_reg[23]_i_2_n_3 ;
  wire \topR_out_reg[23]_i_2_n_4 ;
  wire \topR_out_reg[23]_i_2_n_5 ;
  wire \topR_out_reg[23]_i_2_n_6 ;
  wire \topR_out_reg[23]_i_2_n_7 ;
  wire \topR_out_reg[7]_i_1_n_0 ;
  wire \topR_out_reg[7]_i_1_n_1 ;
  wire \topR_out_reg[7]_i_1_n_2 ;
  wire \topR_out_reg[7]_i_1_n_3 ;
  wire \topR_out_reg[7]_i_1_n_4 ;
  wire \topR_out_reg[7]_i_1_n_5 ;
  wire \topR_out_reg[7]_i_1_n_6 ;
  wire \topR_out_reg[7]_i_1_n_7 ;
  wire [7:7]NLW_aMinusB_carry__1_CO_UNCONNECTED;
  wire NLW_aMinusBtimesD0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_aMinusBtimesD0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_aMinusBtimesD0_OVERFLOW_UNCONNECTED;
  wire NLW_aMinusBtimesD0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_aMinusBtimesD0_PATTERNDETECT_UNCONNECTED;
  wire NLW_aMinusBtimesD0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_aMinusBtimesD0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_aMinusBtimesD0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_aMinusBtimesD0_CARRYOUT_UNCONNECTED;
  wire [7:0]NLW_aMinusBtimesD0_XOROUT_UNCONNECTED;
  wire NLW_aMinusBtimesD_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_aMinusBtimesD_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_aMinusBtimesD_reg_OVERFLOW_UNCONNECTED;
  wire NLW_aMinusBtimesD_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_aMinusBtimesD_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_aMinusBtimesD_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_aMinusBtimesD_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_aMinusBtimesD_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_aMinusBtimesD_reg_CARRYOUT_UNCONNECTED;
  wire [47:17]NLW_aMinusBtimesD_reg_P_UNCONNECTED;
  wire [47:0]NLW_aMinusBtimesD_reg_PCOUT_UNCONNECTED;
  wire [7:0]NLW_aMinusBtimesD_reg_XOROUT_UNCONNECTED;
  wire [7:7]\NLW_bottomI_out_reg[23]_i_1_CO_UNCONNECTED ;
  wire [7:7]\NLW_bottomI_out_reg[23]_i_10_CO_UNCONNECTED ;
  wire [7:7]\NLW_bottomR_out_reg[23]_i_1_CO_UNCONNECTED ;
  wire [7:7]\NLW_bottomR_out_reg[23]_i_17_CO_UNCONNECTED ;
  wire [7:5]NLW_cMinusD_carry__1_CO_UNCONNECTED;
  wire [7:6]NLW_cMinusD_carry__1_O_UNCONNECTED;
  wire NLW_cMinusDtimesA0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_cMinusDtimesA0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_cMinusDtimesA0_OVERFLOW_UNCONNECTED;
  wire NLW_cMinusDtimesA0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_cMinusDtimesA0_PATTERNDETECT_UNCONNECTED;
  wire NLW_cMinusDtimesA0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_cMinusDtimesA0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_cMinusDtimesA0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_cMinusDtimesA0_CARRYOUT_UNCONNECTED;
  wire [7:0]NLW_cMinusDtimesA0_XOROUT_UNCONNECTED;
  wire NLW_cMinusDtimesA_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_cMinusDtimesA_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_cMinusDtimesA_reg_OVERFLOW_UNCONNECTED;
  wire NLW_cMinusDtimesA_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_cMinusDtimesA_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_cMinusDtimesA_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_cMinusDtimesA_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_cMinusDtimesA_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_cMinusDtimesA_reg_CARRYOUT_UNCONNECTED;
  wire [47:17]NLW_cMinusDtimesA_reg_P_UNCONNECTED;
  wire [47:0]NLW_cMinusDtimesA_reg_PCOUT_UNCONNECTED;
  wire [7:0]NLW_cMinusDtimesA_reg_XOROUT_UNCONNECTED;
  wire NLW_cPlusDtimesB0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_cPlusDtimesB0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_cPlusDtimesB0_OVERFLOW_UNCONNECTED;
  wire NLW_cPlusDtimesB0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_cPlusDtimesB0_PATTERNDETECT_UNCONNECTED;
  wire NLW_cPlusDtimesB0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_cPlusDtimesB0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_cPlusDtimesB0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_cPlusDtimesB0_CARRYOUT_UNCONNECTED;
  wire [7:0]NLW_cPlusDtimesB0_XOROUT_UNCONNECTED;
  wire NLW_cPlusDtimesB_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_cPlusDtimesB_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_cPlusDtimesB_reg_OVERFLOW_UNCONNECTED;
  wire NLW_cPlusDtimesB_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_cPlusDtimesB_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_cPlusDtimesB_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_cPlusDtimesB_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_cPlusDtimesB_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_cPlusDtimesB_reg_CARRYOUT_UNCONNECTED;
  wire [47:17]NLW_cPlusDtimesB_reg_P_UNCONNECTED;
  wire [47:0]NLW_cPlusDtimesB_reg_PCOUT_UNCONNECTED;
  wire [7:0]NLW_cPlusDtimesB_reg_XOROUT_UNCONNECTED;
  wire [7:5]NLW_cPlusDtimesB_reg_i_1_CO_UNCONNECTED;
  wire [7:6]NLW_cPlusDtimesB_reg_i_1_O_UNCONNECTED;
  wire [7:7]NLW_outi_carry__1_CO_UNCONNECTED;
  wire [7:7]NLW_outr_carry__1_CO_UNCONNECTED;
  wire [7:7]\NLW_topI_out_reg[23]_i_1_CO_UNCONNECTED ;
  wire [7:7]\NLW_topR_out_reg[23]_i_2_CO_UNCONNECTED ;

  (* FSM_ENCODED_STATES = "IDLE:001,REAL_MUL:010,IMAG_MUL:100," *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\mul/_n_0 ),
        .D(ready0_1),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "IDLE:001,REAL_MUL:010,IMAG_MUL:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\mul/_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[0] ),
        .Q(cMinusDtimesA),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "IDLE:001,REAL_MUL:010,IMAG_MUL:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\mul/_n_0 ),
        .D(cMinusDtimesA),
        .Q(ready0_1),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 aMinusB_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({aMinusB_carry_n_0,aMinusB_carry_n_1,aMinusB_carry_n_2,aMinusB_carry_n_3,aMinusB_carry_n_4,aMinusB_carry_n_5,aMinusB_carry_n_6,aMinusB_carry_n_7}),
        .DI(aMinusB_carry__1_0[7:0]),
        .O(aMinusB[7:0]),
        .S({aMinusB_carry_i_1_n_0,aMinusB_carry_i_2_n_0,aMinusB_carry_i_3_n_0,aMinusB_carry_i_4_n_0,aMinusB_carry_i_5_n_0,aMinusB_carry_i_6_n_0,aMinusB_carry_i_7_n_0,aMinusB_carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 aMinusB_carry__0
       (.CI(aMinusB_carry_n_0),
        .CI_TOP(1'b0),
        .CO({aMinusB_carry__0_n_0,aMinusB_carry__0_n_1,aMinusB_carry__0_n_2,aMinusB_carry__0_n_3,aMinusB_carry__0_n_4,aMinusB_carry__0_n_5,aMinusB_carry__0_n_6,aMinusB_carry__0_n_7}),
        .DI(aMinusB_carry__1_0[15:8]),
        .O(aMinusB[15:8]),
        .S({aMinusB_carry__0_i_1_n_0,aMinusB_carry__0_i_2_n_0,aMinusB_carry__0_i_3_n_0,aMinusB_carry__0_i_4_n_0,aMinusB_carry__0_i_5_n_0,aMinusB_carry__0_i_6_n_0,aMinusB_carry__0_i_7_n_0,aMinusB_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    aMinusB_carry__0_i_1
       (.I0(aMinusB_carry__1_0[15]),
        .I1(aMinusB_carry__1_1[15]),
        .O(aMinusB_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    aMinusB_carry__0_i_2
       (.I0(aMinusB_carry__1_0[14]),
        .I1(aMinusB_carry__1_1[14]),
        .O(aMinusB_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    aMinusB_carry__0_i_3
       (.I0(aMinusB_carry__1_0[13]),
        .I1(aMinusB_carry__1_1[13]),
        .O(aMinusB_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    aMinusB_carry__0_i_4
       (.I0(aMinusB_carry__1_0[12]),
        .I1(aMinusB_carry__1_1[12]),
        .O(aMinusB_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    aMinusB_carry__0_i_5
       (.I0(aMinusB_carry__1_0[11]),
        .I1(aMinusB_carry__1_1[11]),
        .O(aMinusB_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    aMinusB_carry__0_i_6
       (.I0(aMinusB_carry__1_0[10]),
        .I1(aMinusB_carry__1_1[10]),
        .O(aMinusB_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    aMinusB_carry__0_i_7
       (.I0(aMinusB_carry__1_0[9]),
        .I1(aMinusB_carry__1_1[9]),
        .O(aMinusB_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    aMinusB_carry__0_i_8
       (.I0(aMinusB_carry__1_0[8]),
        .I1(aMinusB_carry__1_1[8]),
        .O(aMinusB_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 aMinusB_carry__1
       (.CI(aMinusB_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_aMinusB_carry__1_CO_UNCONNECTED[7],aMinusB_carry__1_n_1,aMinusB_carry__1_n_2,aMinusB_carry__1_n_3,aMinusB_carry__1_n_4,aMinusB_carry__1_n_5,aMinusB_carry__1_n_6,aMinusB_carry__1_n_7}),
        .DI({1'b0,aMinusB_carry__1_0[22:16]}),
        .O(aMinusB[23:16]),
        .S({aMinusB_carry__1_i_1_n_0,aMinusB_carry__1_i_2_n_0,aMinusB_carry__1_i_3_n_0,aMinusB_carry__1_i_4_n_0,aMinusB_carry__1_i_5_n_0,aMinusB_carry__1_i_6_n_0,aMinusB_carry__1_i_7_n_0,aMinusB_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    aMinusB_carry__1_i_1
       (.I0(aMinusB_carry__1_0[23]),
        .I1(aMinusB_carry__1_1[23]),
        .O(aMinusB_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    aMinusB_carry__1_i_2
       (.I0(aMinusB_carry__1_0[22]),
        .I1(aMinusB_carry__1_1[22]),
        .O(aMinusB_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    aMinusB_carry__1_i_3
       (.I0(aMinusB_carry__1_0[21]),
        .I1(aMinusB_carry__1_1[21]),
        .O(aMinusB_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    aMinusB_carry__1_i_4
       (.I0(aMinusB_carry__1_0[20]),
        .I1(aMinusB_carry__1_1[20]),
        .O(aMinusB_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    aMinusB_carry__1_i_5
       (.I0(aMinusB_carry__1_0[19]),
        .I1(aMinusB_carry__1_1[19]),
        .O(aMinusB_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    aMinusB_carry__1_i_6
       (.I0(aMinusB_carry__1_0[18]),
        .I1(aMinusB_carry__1_1[18]),
        .O(aMinusB_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    aMinusB_carry__1_i_7
       (.I0(aMinusB_carry__1_0[17]),
        .I1(aMinusB_carry__1_1[17]),
        .O(aMinusB_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    aMinusB_carry__1_i_8
       (.I0(aMinusB_carry__1_0[16]),
        .I1(aMinusB_carry__1_1[16]),
        .O(aMinusB_carry__1_i_8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    aMinusB_carry_i_1
       (.I0(aMinusB_carry__1_0[7]),
        .I1(aMinusB_carry__1_1[7]),
        .O(aMinusB_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    aMinusB_carry_i_2
       (.I0(aMinusB_carry__1_0[6]),
        .I1(aMinusB_carry__1_1[6]),
        .O(aMinusB_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    aMinusB_carry_i_3
       (.I0(aMinusB_carry__1_0[5]),
        .I1(aMinusB_carry__1_1[5]),
        .O(aMinusB_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    aMinusB_carry_i_4
       (.I0(aMinusB_carry__1_0[4]),
        .I1(aMinusB_carry__1_1[4]),
        .O(aMinusB_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    aMinusB_carry_i_5
       (.I0(aMinusB_carry__1_0[3]),
        .I1(aMinusB_carry__1_1[3]),
        .O(aMinusB_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    aMinusB_carry_i_6
       (.I0(aMinusB_carry__1_0[2]),
        .I1(aMinusB_carry__1_1[2]),
        .O(aMinusB_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    aMinusB_carry_i_7
       (.I0(aMinusB_carry__1_0[1]),
        .I1(aMinusB_carry__1_1[1]),
        .O(aMinusB_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    aMinusB_carry_i_8
       (.I0(aMinusB_carry__1_0[0]),
        .I1(aMinusB_carry__1_1[0]),
        .O(aMinusB_carry_i_8_n_0));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    aMinusBtimesD0
       (.A({A[1],A[1],A[1],A[1],A[1],A[1],A[1],A[1],A[1],A[1],A[1],A[1],A[1],A[1],A[1],A[1],A[1],A[1],A[1],A[1],1'b0,A[0],1'b0,1'b0,A[0],1'b0,A[0],A[0],1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_aMinusBtimesD0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,aMinusB[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_aMinusBtimesD0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_aMinusBtimesD0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_aMinusBtimesD0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(ready01_out),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(s00_axi_aclk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_aMinusBtimesD0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_aMinusBtimesD0_OVERFLOW_UNCONNECTED),
        .P({aMinusBtimesD0_n_58,aMinusBtimesD0_n_59,aMinusBtimesD0_n_60,aMinusBtimesD0_n_61,aMinusBtimesD0_n_62,aMinusBtimesD0_n_63,aMinusBtimesD0_n_64,aMinusBtimesD0_n_65,aMinusBtimesD0_n_66,aMinusBtimesD0_n_67,aMinusBtimesD0_n_68,aMinusBtimesD0_n_69,aMinusBtimesD0_n_70,aMinusBtimesD0_n_71,aMinusBtimesD0_n_72,aMinusBtimesD0_n_73,aMinusBtimesD0_n_74,aMinusBtimesD0_n_75,aMinusBtimesD0_n_76,aMinusBtimesD0_n_77,aMinusBtimesD0_n_78,aMinusBtimesD0_n_79,aMinusBtimesD0_n_80,aMinusBtimesD0_n_81,aMinusBtimesD0_n_82,aMinusBtimesD0_n_83,aMinusBtimesD0_n_84,aMinusBtimesD0_n_85,aMinusBtimesD0_n_86,aMinusBtimesD0_n_87,aMinusBtimesD0_n_88,aMinusBtimesD0_n_89,aMinusBtimesD0_n_90,aMinusBtimesD0_n_91,aMinusBtimesD0_n_92,aMinusBtimesD0_n_93,aMinusBtimesD0_n_94,aMinusBtimesD0_n_95,aMinusBtimesD0_n_96,aMinusBtimesD0_n_97,aMinusBtimesD0_n_98,aMinusBtimesD0_n_99,aMinusBtimesD0_n_100,aMinusBtimesD0_n_101,aMinusBtimesD0_n_102,aMinusBtimesD0_n_103,aMinusBtimesD0_n_104,aMinusBtimesD0_n_105}),
        .PATTERNBDETECT(NLW_aMinusBtimesD0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_aMinusBtimesD0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({aMinusBtimesD0_n_106,aMinusBtimesD0_n_107,aMinusBtimesD0_n_108,aMinusBtimesD0_n_109,aMinusBtimesD0_n_110,aMinusBtimesD0_n_111,aMinusBtimesD0_n_112,aMinusBtimesD0_n_113,aMinusBtimesD0_n_114,aMinusBtimesD0_n_115,aMinusBtimesD0_n_116,aMinusBtimesD0_n_117,aMinusBtimesD0_n_118,aMinusBtimesD0_n_119,aMinusBtimesD0_n_120,aMinusBtimesD0_n_121,aMinusBtimesD0_n_122,aMinusBtimesD0_n_123,aMinusBtimesD0_n_124,aMinusBtimesD0_n_125,aMinusBtimesD0_n_126,aMinusBtimesD0_n_127,aMinusBtimesD0_n_128,aMinusBtimesD0_n_129,aMinusBtimesD0_n_130,aMinusBtimesD0_n_131,aMinusBtimesD0_n_132,aMinusBtimesD0_n_133,aMinusBtimesD0_n_134,aMinusBtimesD0_n_135,aMinusBtimesD0_n_136,aMinusBtimesD0_n_137,aMinusBtimesD0_n_138,aMinusBtimesD0_n_139,aMinusBtimesD0_n_140,aMinusBtimesD0_n_141,aMinusBtimesD0_n_142,aMinusBtimesD0_n_143,aMinusBtimesD0_n_144,aMinusBtimesD0_n_145,aMinusBtimesD0_n_146,aMinusBtimesD0_n_147,aMinusBtimesD0_n_148,aMinusBtimesD0_n_149,aMinusBtimesD0_n_150,aMinusBtimesD0_n_151,aMinusBtimesD0_n_152,aMinusBtimesD0_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_aMinusBtimesD0_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_aMinusBtimesD0_XOROUT_UNCONNECTED[7:0]));
  LUT3 #(
    .INIT(8'h20)) 
    \aMinusBtimesD[16]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(lastStartState_0),
        .I2(mulStart),
        .O(__0));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    aMinusBtimesD_reg
       (.A({A[1],A[1],A[1],A[1],A[1],A[1],A[1],A[1],A[1],A[1],A[1],A[1],A[1],A[1],A[1],A[1],A[1],A[1],A[1],A[1],1'b0,A[0],1'b0,1'b0,A[0],1'b0,A[0],A[0],1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_aMinusBtimesD_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({aMinusB[23],aMinusB[23],aMinusB[23],aMinusB[23],aMinusB[23],aMinusB[23],aMinusB[23],aMinusB[23],aMinusB[23],aMinusB[23],aMinusB[23],aMinusB[23:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_aMinusBtimesD_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_aMinusBtimesD_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_aMinusBtimesD_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(ready01_out),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(__0),
        .CLK(s00_axi_aclk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_aMinusBtimesD_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_aMinusBtimesD_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_aMinusBtimesD_reg_P_UNCONNECTED[47:17],common[23:7]}),
        .PATTERNBDETECT(NLW_aMinusBtimesD_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_aMinusBtimesD_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({aMinusBtimesD0_n_106,aMinusBtimesD0_n_107,aMinusBtimesD0_n_108,aMinusBtimesD0_n_109,aMinusBtimesD0_n_110,aMinusBtimesD0_n_111,aMinusBtimesD0_n_112,aMinusBtimesD0_n_113,aMinusBtimesD0_n_114,aMinusBtimesD0_n_115,aMinusBtimesD0_n_116,aMinusBtimesD0_n_117,aMinusBtimesD0_n_118,aMinusBtimesD0_n_119,aMinusBtimesD0_n_120,aMinusBtimesD0_n_121,aMinusBtimesD0_n_122,aMinusBtimesD0_n_123,aMinusBtimesD0_n_124,aMinusBtimesD0_n_125,aMinusBtimesD0_n_126,aMinusBtimesD0_n_127,aMinusBtimesD0_n_128,aMinusBtimesD0_n_129,aMinusBtimesD0_n_130,aMinusBtimesD0_n_131,aMinusBtimesD0_n_132,aMinusBtimesD0_n_133,aMinusBtimesD0_n_134,aMinusBtimesD0_n_135,aMinusBtimesD0_n_136,aMinusBtimesD0_n_137,aMinusBtimesD0_n_138,aMinusBtimesD0_n_139,aMinusBtimesD0_n_140,aMinusBtimesD0_n_141,aMinusBtimesD0_n_142,aMinusBtimesD0_n_143,aMinusBtimesD0_n_144,aMinusBtimesD0_n_145,aMinusBtimesD0_n_146,aMinusBtimesD0_n_147,aMinusBtimesD0_n_148,aMinusBtimesD0_n_149,aMinusBtimesD0_n_150,aMinusBtimesD0_n_151,aMinusBtimesD0_n_152,aMinusBtimesD0_n_153}),
        .PCOUT(NLW_aMinusBtimesD_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_aMinusBtimesD_reg_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_aMinusBtimesD_reg_XOROUT_UNCONNECTED[7:0]));
  FDRE \aMinusBtimesD_reg[10] 
       (.C(s00_axi_aclk),
        .CE(__0),
        .D(aMinusBtimesD0_n_95),
        .Q(common[0]),
        .R(1'b0));
  FDRE \aMinusBtimesD_reg[11] 
       (.C(s00_axi_aclk),
        .CE(__0),
        .D(aMinusBtimesD0_n_94),
        .Q(common[1]),
        .R(1'b0));
  FDRE \aMinusBtimesD_reg[12] 
       (.C(s00_axi_aclk),
        .CE(__0),
        .D(aMinusBtimesD0_n_93),
        .Q(common[2]),
        .R(1'b0));
  FDRE \aMinusBtimesD_reg[13] 
       (.C(s00_axi_aclk),
        .CE(__0),
        .D(aMinusBtimesD0_n_92),
        .Q(common[3]),
        .R(1'b0));
  FDRE \aMinusBtimesD_reg[14] 
       (.C(s00_axi_aclk),
        .CE(__0),
        .D(aMinusBtimesD0_n_91),
        .Q(common[4]),
        .R(1'b0));
  FDRE \aMinusBtimesD_reg[15] 
       (.C(s00_axi_aclk),
        .CE(__0),
        .D(aMinusBtimesD0_n_90),
        .Q(common[5]),
        .R(1'b0));
  FDRE \aMinusBtimesD_reg[16] 
       (.C(s00_axi_aclk),
        .CE(__0),
        .D(aMinusBtimesD0_n_89),
        .Q(common[6]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h9)) 
    \bottomI_out[15]_i_11 
       (.I0(\bottomI_out_reg[23]_i_10_0 [15]),
        .I1(mulOutI[15]),
        .O(\bottomI_out[15]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bottomI_out[15]_i_12 
       (.I0(\bottomI_out_reg[23]_i_10_0 [14]),
        .I1(mulOutI[14]),
        .O(\bottomI_out[15]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bottomI_out[15]_i_13 
       (.I0(\bottomI_out_reg[23]_i_10_0 [13]),
        .I1(mulOutI[13]),
        .O(\bottomI_out[15]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bottomI_out[15]_i_14 
       (.I0(\bottomI_out_reg[23]_i_10_0 [12]),
        .I1(mulOutI[12]),
        .O(\bottomI_out[15]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bottomI_out[15]_i_15 
       (.I0(\bottomI_out_reg[23]_i_10_0 [11]),
        .I1(mulOutI[11]),
        .O(\bottomI_out[15]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bottomI_out[15]_i_16 
       (.I0(\bottomI_out_reg[23]_i_10_0 [10]),
        .I1(mulOutI[10]),
        .O(\bottomI_out[15]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bottomI_out[15]_i_17 
       (.I0(\bottomI_out_reg[23]_i_10_0 [9]),
        .I1(mulOutI[9]),
        .O(\bottomI_out[15]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bottomI_out[15]_i_18 
       (.I0(\bottomI_out_reg[23]_i_10_0 [8]),
        .I1(mulOutI[8]),
        .O(\bottomI_out[15]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \bottomI_out[15]_i_2 
       (.I0(common[15]),
        .I1(ready0),
        .I2(mulOutI[15]),
        .I3(bottomI_out0[15]),
        .I4(ready01_out),
        .I5(outi0[15]),
        .O(\bottomI_out[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \bottomI_out[15]_i_3 
       (.I0(common[14]),
        .I1(ready0),
        .I2(mulOutI[14]),
        .I3(bottomI_out0[14]),
        .I4(ready01_out),
        .I5(outi0[14]),
        .O(\bottomI_out[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \bottomI_out[15]_i_4 
       (.I0(common[13]),
        .I1(ready0),
        .I2(mulOutI[13]),
        .I3(bottomI_out0[13]),
        .I4(ready01_out),
        .I5(outi0[13]),
        .O(\bottomI_out[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \bottomI_out[15]_i_5 
       (.I0(common[12]),
        .I1(ready0),
        .I2(mulOutI[12]),
        .I3(bottomI_out0[12]),
        .I4(ready01_out),
        .I5(outi0[12]),
        .O(\bottomI_out[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \bottomI_out[15]_i_6 
       (.I0(common[11]),
        .I1(ready0),
        .I2(mulOutI[11]),
        .I3(bottomI_out0[11]),
        .I4(ready01_out),
        .I5(outi0[11]),
        .O(\bottomI_out[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \bottomI_out[15]_i_7 
       (.I0(common[10]),
        .I1(ready0),
        .I2(mulOutI[10]),
        .I3(bottomI_out0[10]),
        .I4(ready01_out),
        .I5(outi0[10]),
        .O(\bottomI_out[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \bottomI_out[15]_i_8 
       (.I0(common[9]),
        .I1(ready0),
        .I2(mulOutI[9]),
        .I3(bottomI_out0[9]),
        .I4(ready01_out),
        .I5(outi0[9]),
        .O(\bottomI_out[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \bottomI_out[15]_i_9 
       (.I0(common[8]),
        .I1(ready0),
        .I2(mulOutI[8]),
        .I3(bottomI_out0[8]),
        .I4(ready01_out),
        .I5(outi0[8]),
        .O(\bottomI_out[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bottomI_out[23]_i_11 
       (.I0(\bottomI_out_reg[23]_i_10_0 [23]),
        .I1(mulOutI[23]),
        .O(\bottomI_out[23]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bottomI_out[23]_i_12 
       (.I0(\bottomI_out_reg[23]_i_10_0 [22]),
        .I1(mulOutI[22]),
        .O(\bottomI_out[23]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bottomI_out[23]_i_13 
       (.I0(\bottomI_out_reg[23]_i_10_0 [21]),
        .I1(mulOutI[21]),
        .O(\bottomI_out[23]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bottomI_out[23]_i_14 
       (.I0(\bottomI_out_reg[23]_i_10_0 [20]),
        .I1(mulOutI[20]),
        .O(\bottomI_out[23]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bottomI_out[23]_i_15 
       (.I0(\bottomI_out_reg[23]_i_10_0 [19]),
        .I1(mulOutI[19]),
        .O(\bottomI_out[23]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bottomI_out[23]_i_16 
       (.I0(\bottomI_out_reg[23]_i_10_0 [18]),
        .I1(mulOutI[18]),
        .O(\bottomI_out[23]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bottomI_out[23]_i_17 
       (.I0(\bottomI_out_reg[23]_i_10_0 [17]),
        .I1(mulOutI[17]),
        .O(\bottomI_out[23]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bottomI_out[23]_i_18 
       (.I0(\bottomI_out_reg[23]_i_10_0 [16]),
        .I1(mulOutI[16]),
        .O(\bottomI_out[23]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \bottomI_out[23]_i_2 
       (.I0(common[23]),
        .I1(ready0),
        .I2(mulOutI[23]),
        .I3(bottomI_out0[23]),
        .I4(ready01_out),
        .I5(outi0[23]),
        .O(\bottomI_out[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \bottomI_out[23]_i_3 
       (.I0(common[22]),
        .I1(ready0),
        .I2(mulOutI[22]),
        .I3(bottomI_out0[22]),
        .I4(ready01_out),
        .I5(outi0[22]),
        .O(\bottomI_out[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \bottomI_out[23]_i_4 
       (.I0(common[21]),
        .I1(ready0),
        .I2(mulOutI[21]),
        .I3(bottomI_out0[21]),
        .I4(ready01_out),
        .I5(outi0[21]),
        .O(\bottomI_out[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \bottomI_out[23]_i_5 
       (.I0(common[20]),
        .I1(ready0),
        .I2(mulOutI[20]),
        .I3(bottomI_out0[20]),
        .I4(ready01_out),
        .I5(outi0[20]),
        .O(\bottomI_out[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \bottomI_out[23]_i_6 
       (.I0(common[19]),
        .I1(ready0),
        .I2(mulOutI[19]),
        .I3(bottomI_out0[19]),
        .I4(ready01_out),
        .I5(outi0[19]),
        .O(\bottomI_out[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \bottomI_out[23]_i_7 
       (.I0(common[18]),
        .I1(ready0),
        .I2(mulOutI[18]),
        .I3(bottomI_out0[18]),
        .I4(ready01_out),
        .I5(outi0[18]),
        .O(\bottomI_out[23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \bottomI_out[23]_i_8 
       (.I0(common[17]),
        .I1(ready0),
        .I2(mulOutI[17]),
        .I3(bottomI_out0[17]),
        .I4(ready01_out),
        .I5(outi0[17]),
        .O(\bottomI_out[23]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \bottomI_out[23]_i_9 
       (.I0(common[16]),
        .I1(ready0),
        .I2(mulOutI[16]),
        .I3(bottomI_out0[16]),
        .I4(ready01_out),
        .I5(outi0[16]),
        .O(\bottomI_out[23]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bottomI_out[7]_i_11 
       (.I0(\bottomI_out_reg[23]_i_10_0 [7]),
        .I1(mulOutI[7]),
        .O(\bottomI_out[7]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bottomI_out[7]_i_12 
       (.I0(\bottomI_out_reg[23]_i_10_0 [6]),
        .I1(mulOutI[6]),
        .O(\bottomI_out[7]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bottomI_out[7]_i_13 
       (.I0(\bottomI_out_reg[23]_i_10_0 [5]),
        .I1(mulOutI[5]),
        .O(\bottomI_out[7]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bottomI_out[7]_i_14 
       (.I0(\bottomI_out_reg[23]_i_10_0 [4]),
        .I1(mulOutI[4]),
        .O(\bottomI_out[7]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bottomI_out[7]_i_15 
       (.I0(\bottomI_out_reg[23]_i_10_0 [3]),
        .I1(mulOutI[3]),
        .O(\bottomI_out[7]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bottomI_out[7]_i_16 
       (.I0(\bottomI_out_reg[23]_i_10_0 [2]),
        .I1(mulOutI[2]),
        .O(\bottomI_out[7]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bottomI_out[7]_i_17 
       (.I0(\bottomI_out_reg[23]_i_10_0 [1]),
        .I1(mulOutI[1]),
        .O(\bottomI_out[7]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bottomI_out[7]_i_18 
       (.I0(\bottomI_out_reg[23]_i_10_0 [0]),
        .I1(mulOutI[0]),
        .O(\bottomI_out[7]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \bottomI_out[7]_i_2 
       (.I0(common[7]),
        .I1(ready0),
        .I2(mulOutI[7]),
        .I3(bottomI_out0[7]),
        .I4(ready01_out),
        .I5(outi0[7]),
        .O(\bottomI_out[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \bottomI_out[7]_i_3 
       (.I0(common[6]),
        .I1(ready0),
        .I2(mulOutI[6]),
        .I3(bottomI_out0[6]),
        .I4(ready01_out),
        .I5(outi0[6]),
        .O(\bottomI_out[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \bottomI_out[7]_i_4 
       (.I0(common[5]),
        .I1(ready0),
        .I2(mulOutI[5]),
        .I3(bottomI_out0[5]),
        .I4(ready01_out),
        .I5(outi0[5]),
        .O(\bottomI_out[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \bottomI_out[7]_i_5 
       (.I0(common[4]),
        .I1(ready0),
        .I2(mulOutI[4]),
        .I3(bottomI_out0[4]),
        .I4(ready01_out),
        .I5(outi0[4]),
        .O(\bottomI_out[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \bottomI_out[7]_i_6 
       (.I0(common[3]),
        .I1(ready0),
        .I2(mulOutI[3]),
        .I3(bottomI_out0[3]),
        .I4(ready01_out),
        .I5(outi0[3]),
        .O(\bottomI_out[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \bottomI_out[7]_i_7 
       (.I0(common[2]),
        .I1(ready0),
        .I2(mulOutI[2]),
        .I3(bottomI_out0[2]),
        .I4(ready01_out),
        .I5(outi0[2]),
        .O(\bottomI_out[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \bottomI_out[7]_i_8 
       (.I0(common[1]),
        .I1(ready0),
        .I2(mulOutI[1]),
        .I3(bottomI_out0[1]),
        .I4(ready01_out),
        .I5(outi0[1]),
        .O(\bottomI_out[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \bottomI_out[7]_i_9 
       (.I0(common[0]),
        .I1(ready0),
        .I2(mulOutI[0]),
        .I3(bottomI_out0[0]),
        .I4(ready01_out),
        .I5(outi0[0]),
        .O(\bottomI_out[7]_i_9_n_0 ));
  CARRY8 \bottomI_out_reg[15]_i_1 
       (.CI(\bottomI_out_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\bottomI_out_reg[15]_i_1_n_0 ,\bottomI_out_reg[15]_i_1_n_1 ,\bottomI_out_reg[15]_i_1_n_2 ,\bottomI_out_reg[15]_i_1_n_3 ,\bottomI_out_reg[15]_i_1_n_4 ,\bottomI_out_reg[15]_i_1_n_5 ,\bottomI_out_reg[15]_i_1_n_6 ,\bottomI_out_reg[15]_i_1_n_7 }),
        .DI({\bottomR_out[15]_i_2_n_0 ,\bottomR_out[15]_i_3_n_0 ,\bottomR_out[15]_i_4_n_0 ,\bottomR_out[15]_i_5_n_0 ,\bottomR_out[15]_i_6_n_0 ,\bottomR_out[15]_i_7_n_0 ,\bottomR_out[15]_i_8_n_0 ,\bottomR_out[15]_i_9_n_0 }),
        .O(\bottomI_out[23]_i_9_0 [15:8]),
        .S({\bottomI_out[15]_i_2_n_0 ,\bottomI_out[15]_i_3_n_0 ,\bottomI_out[15]_i_4_n_0 ,\bottomI_out[15]_i_5_n_0 ,\bottomI_out[15]_i_6_n_0 ,\bottomI_out[15]_i_7_n_0 ,\bottomI_out[15]_i_8_n_0 ,\bottomI_out[15]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \bottomI_out_reg[15]_i_10 
       (.CI(\bottomI_out_reg[7]_i_10_n_0 ),
        .CI_TOP(1'b0),
        .CO({\bottomI_out_reg[15]_i_10_n_0 ,\bottomI_out_reg[15]_i_10_n_1 ,\bottomI_out_reg[15]_i_10_n_2 ,\bottomI_out_reg[15]_i_10_n_3 ,\bottomI_out_reg[15]_i_10_n_4 ,\bottomI_out_reg[15]_i_10_n_5 ,\bottomI_out_reg[15]_i_10_n_6 ,\bottomI_out_reg[15]_i_10_n_7 }),
        .DI(\bottomI_out_reg[23]_i_10_0 [15:8]),
        .O(bottomI_out0[15:8]),
        .S({\bottomI_out[15]_i_11_n_0 ,\bottomI_out[15]_i_12_n_0 ,\bottomI_out[15]_i_13_n_0 ,\bottomI_out[15]_i_14_n_0 ,\bottomI_out[15]_i_15_n_0 ,\bottomI_out[15]_i_16_n_0 ,\bottomI_out[15]_i_17_n_0 ,\bottomI_out[15]_i_18_n_0 }));
  CARRY8 \bottomI_out_reg[23]_i_1 
       (.CI(\bottomI_out_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_bottomI_out_reg[23]_i_1_CO_UNCONNECTED [7],\bottomI_out_reg[23]_i_1_n_1 ,\bottomI_out_reg[23]_i_1_n_2 ,\bottomI_out_reg[23]_i_1_n_3 ,\bottomI_out_reg[23]_i_1_n_4 ,\bottomI_out_reg[23]_i_1_n_5 ,\bottomI_out_reg[23]_i_1_n_6 ,\bottomI_out_reg[23]_i_1_n_7 }),
        .DI({1'b0,\bottomR_out[23]_i_2_n_0 ,\bottomR_out[23]_i_3_n_0 ,\bottomR_out[23]_i_4_n_0 ,\bottomR_out[23]_i_5_n_0 ,\bottomR_out[23]_i_6_n_0 ,\bottomR_out[23]_i_7_n_0 ,\bottomR_out[23]_i_8_n_0 }),
        .O(\bottomI_out[23]_i_9_0 [23:16]),
        .S({\bottomI_out[23]_i_2_n_0 ,\bottomI_out[23]_i_3_n_0 ,\bottomI_out[23]_i_4_n_0 ,\bottomI_out[23]_i_5_n_0 ,\bottomI_out[23]_i_6_n_0 ,\bottomI_out[23]_i_7_n_0 ,\bottomI_out[23]_i_8_n_0 ,\bottomI_out[23]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \bottomI_out_reg[23]_i_10 
       (.CI(\bottomI_out_reg[15]_i_10_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_bottomI_out_reg[23]_i_10_CO_UNCONNECTED [7],\bottomI_out_reg[23]_i_10_n_1 ,\bottomI_out_reg[23]_i_10_n_2 ,\bottomI_out_reg[23]_i_10_n_3 ,\bottomI_out_reg[23]_i_10_n_4 ,\bottomI_out_reg[23]_i_10_n_5 ,\bottomI_out_reg[23]_i_10_n_6 ,\bottomI_out_reg[23]_i_10_n_7 }),
        .DI({1'b0,\bottomI_out_reg[23]_i_10_0 [22:16]}),
        .O(bottomI_out0[23:16]),
        .S({\bottomI_out[23]_i_11_n_0 ,\bottomI_out[23]_i_12_n_0 ,\bottomI_out[23]_i_13_n_0 ,\bottomI_out[23]_i_14_n_0 ,\bottomI_out[23]_i_15_n_0 ,\bottomI_out[23]_i_16_n_0 ,\bottomI_out[23]_i_17_n_0 ,\bottomI_out[23]_i_18_n_0 }));
  CARRY8 \bottomI_out_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\bottomI_out_reg[7]_i_1_n_0 ,\bottomI_out_reg[7]_i_1_n_1 ,\bottomI_out_reg[7]_i_1_n_2 ,\bottomI_out_reg[7]_i_1_n_3 ,\bottomI_out_reg[7]_i_1_n_4 ,\bottomI_out_reg[7]_i_1_n_5 ,\bottomI_out_reg[7]_i_1_n_6 ,\bottomI_out_reg[7]_i_1_n_7 }),
        .DI({\bottomR_out[7]_i_2_n_0 ,\bottomR_out[7]_i_3_n_0 ,\bottomR_out[7]_i_4_n_0 ,\bottomR_out[7]_i_5_n_0 ,\bottomR_out[7]_i_6_n_0 ,\bottomR_out[7]_i_7_n_0 ,\bottomR_out[7]_i_8_n_0 ,\bottomR_out[7]_i_9_n_0 }),
        .O(\bottomI_out[23]_i_9_0 [7:0]),
        .S({\bottomI_out[7]_i_2_n_0 ,\bottomI_out[7]_i_3_n_0 ,\bottomI_out[7]_i_4_n_0 ,\bottomI_out[7]_i_5_n_0 ,\bottomI_out[7]_i_6_n_0 ,\bottomI_out[7]_i_7_n_0 ,\bottomI_out[7]_i_8_n_0 ,\bottomI_out[7]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \bottomI_out_reg[7]_i_10 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\bottomI_out_reg[7]_i_10_n_0 ,\bottomI_out_reg[7]_i_10_n_1 ,\bottomI_out_reg[7]_i_10_n_2 ,\bottomI_out_reg[7]_i_10_n_3 ,\bottomI_out_reg[7]_i_10_n_4 ,\bottomI_out_reg[7]_i_10_n_5 ,\bottomI_out_reg[7]_i_10_n_6 ,\bottomI_out_reg[7]_i_10_n_7 }),
        .DI(\bottomI_out_reg[23]_i_10_0 [7:0]),
        .O(bottomI_out0[7:0]),
        .S({\bottomI_out[7]_i_11_n_0 ,\bottomI_out[7]_i_12_n_0 ,\bottomI_out[7]_i_13_n_0 ,\bottomI_out[7]_i_14_n_0 ,\bottomI_out[7]_i_15_n_0 ,\bottomI_out[7]_i_16_n_0 ,\bottomI_out[7]_i_17_n_0 ,\bottomI_out[7]_i_18_n_0 }));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \bottomR_out[15]_i_10 
       (.I0(common[15]),
        .I1(ready0),
        .I2(mulOutR[15]),
        .I3(bottomR_out0[15]),
        .I4(ready01_out),
        .I5(outr0[15]),
        .O(\bottomR_out[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \bottomR_out[15]_i_11 
       (.I0(common[14]),
        .I1(ready0),
        .I2(mulOutR[14]),
        .I3(bottomR_out0[14]),
        .I4(ready01_out),
        .I5(outr0[14]),
        .O(\bottomR_out[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \bottomR_out[15]_i_12 
       (.I0(common[13]),
        .I1(ready0),
        .I2(mulOutR[13]),
        .I3(bottomR_out0[13]),
        .I4(ready01_out),
        .I5(outr0[13]),
        .O(\bottomR_out[15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \bottomR_out[15]_i_13 
       (.I0(common[12]),
        .I1(ready0),
        .I2(mulOutR[12]),
        .I3(bottomR_out0[12]),
        .I4(ready01_out),
        .I5(outr0[12]),
        .O(\bottomR_out[15]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \bottomR_out[15]_i_14 
       (.I0(common[11]),
        .I1(ready0),
        .I2(mulOutR[11]),
        .I3(bottomR_out0[11]),
        .I4(ready01_out),
        .I5(outr0[11]),
        .O(\bottomR_out[15]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \bottomR_out[15]_i_15 
       (.I0(common[10]),
        .I1(ready0),
        .I2(mulOutR[10]),
        .I3(bottomR_out0[10]),
        .I4(ready01_out),
        .I5(outr0[10]),
        .O(\bottomR_out[15]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \bottomR_out[15]_i_16 
       (.I0(common[9]),
        .I1(ready0),
        .I2(mulOutR[9]),
        .I3(bottomR_out0[9]),
        .I4(ready01_out),
        .I5(outr0[9]),
        .O(\bottomR_out[15]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \bottomR_out[15]_i_17 
       (.I0(common[8]),
        .I1(ready0),
        .I2(mulOutR[8]),
        .I3(bottomR_out0[8]),
        .I4(ready01_out),
        .I5(outr0[8]),
        .O(\bottomR_out[15]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bottomR_out[15]_i_19 
       (.I0(Q[15]),
        .I1(mulOutR[15]),
        .O(\bottomR_out[15]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bottomR_out[15]_i_2 
       (.I0(common[15]),
        .I1(ready01_out),
        .O(\bottomR_out[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bottomR_out[15]_i_20 
       (.I0(Q[14]),
        .I1(mulOutR[14]),
        .O(\bottomR_out[15]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bottomR_out[15]_i_21 
       (.I0(Q[13]),
        .I1(mulOutR[13]),
        .O(\bottomR_out[15]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bottomR_out[15]_i_22 
       (.I0(Q[12]),
        .I1(mulOutR[12]),
        .O(\bottomR_out[15]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bottomR_out[15]_i_23 
       (.I0(Q[11]),
        .I1(mulOutR[11]),
        .O(\bottomR_out[15]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bottomR_out[15]_i_24 
       (.I0(Q[10]),
        .I1(mulOutR[10]),
        .O(\bottomR_out[15]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bottomR_out[15]_i_25 
       (.I0(Q[9]),
        .I1(mulOutR[9]),
        .O(\bottomR_out[15]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bottomR_out[15]_i_26 
       (.I0(Q[8]),
        .I1(mulOutR[8]),
        .O(\bottomR_out[15]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bottomR_out[15]_i_3 
       (.I0(common[14]),
        .I1(ready01_out),
        .O(\bottomR_out[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bottomR_out[15]_i_4 
       (.I0(common[13]),
        .I1(ready01_out),
        .O(\bottomR_out[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bottomR_out[15]_i_5 
       (.I0(common[12]),
        .I1(ready01_out),
        .O(\bottomR_out[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bottomR_out[15]_i_6 
       (.I0(common[11]),
        .I1(ready01_out),
        .O(\bottomR_out[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bottomR_out[15]_i_7 
       (.I0(common[10]),
        .I1(ready01_out),
        .O(\bottomR_out[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bottomR_out[15]_i_8 
       (.I0(common[9]),
        .I1(ready01_out),
        .O(\bottomR_out[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bottomR_out[15]_i_9 
       (.I0(common[8]),
        .I1(ready01_out),
        .O(\bottomR_out[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \bottomR_out[23]_i_10 
       (.I0(common[22]),
        .I1(ready0),
        .I2(mulOutR[22]),
        .I3(bottomR_out0[22]),
        .I4(ready01_out),
        .I5(outr0[22]),
        .O(\bottomR_out[23]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \bottomR_out[23]_i_11 
       (.I0(common[21]),
        .I1(ready0),
        .I2(mulOutR[21]),
        .I3(bottomR_out0[21]),
        .I4(ready01_out),
        .I5(outr0[21]),
        .O(\bottomR_out[23]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \bottomR_out[23]_i_12 
       (.I0(common[20]),
        .I1(ready0),
        .I2(mulOutR[20]),
        .I3(bottomR_out0[20]),
        .I4(ready01_out),
        .I5(outr0[20]),
        .O(\bottomR_out[23]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \bottomR_out[23]_i_13 
       (.I0(common[19]),
        .I1(ready0),
        .I2(mulOutR[19]),
        .I3(bottomR_out0[19]),
        .I4(ready01_out),
        .I5(outr0[19]),
        .O(\bottomR_out[23]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \bottomR_out[23]_i_14 
       (.I0(common[18]),
        .I1(ready0),
        .I2(mulOutR[18]),
        .I3(bottomR_out0[18]),
        .I4(ready01_out),
        .I5(outr0[18]),
        .O(\bottomR_out[23]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \bottomR_out[23]_i_15 
       (.I0(common[17]),
        .I1(ready0),
        .I2(mulOutR[17]),
        .I3(bottomR_out0[17]),
        .I4(ready01_out),
        .I5(outr0[17]),
        .O(\bottomR_out[23]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \bottomR_out[23]_i_16 
       (.I0(common[16]),
        .I1(ready0),
        .I2(mulOutR[16]),
        .I3(bottomR_out0[16]),
        .I4(ready01_out),
        .I5(outr0[16]),
        .O(\bottomR_out[23]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bottomR_out[23]_i_18 
       (.I0(Q[23]),
        .I1(mulOutR[23]),
        .O(\bottomR_out[23]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bottomR_out[23]_i_19 
       (.I0(Q[22]),
        .I1(mulOutR[22]),
        .O(\bottomR_out[23]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bottomR_out[23]_i_2 
       (.I0(common[22]),
        .I1(ready01_out),
        .O(\bottomR_out[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bottomR_out[23]_i_20 
       (.I0(Q[21]),
        .I1(mulOutR[21]),
        .O(\bottomR_out[23]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bottomR_out[23]_i_21 
       (.I0(Q[20]),
        .I1(mulOutR[20]),
        .O(\bottomR_out[23]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bottomR_out[23]_i_22 
       (.I0(Q[19]),
        .I1(mulOutR[19]),
        .O(\bottomR_out[23]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bottomR_out[23]_i_23 
       (.I0(Q[18]),
        .I1(mulOutR[18]),
        .O(\bottomR_out[23]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bottomR_out[23]_i_24 
       (.I0(Q[17]),
        .I1(mulOutR[17]),
        .O(\bottomR_out[23]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bottomR_out[23]_i_25 
       (.I0(Q[16]),
        .I1(mulOutR[16]),
        .O(\bottomR_out[23]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bottomR_out[23]_i_3 
       (.I0(common[21]),
        .I1(ready01_out),
        .O(\bottomR_out[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bottomR_out[23]_i_4 
       (.I0(common[20]),
        .I1(ready01_out),
        .O(\bottomR_out[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bottomR_out[23]_i_5 
       (.I0(common[19]),
        .I1(ready01_out),
        .O(\bottomR_out[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bottomR_out[23]_i_6 
       (.I0(common[18]),
        .I1(ready01_out),
        .O(\bottomR_out[23]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bottomR_out[23]_i_7 
       (.I0(common[17]),
        .I1(ready01_out),
        .O(\bottomR_out[23]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bottomR_out[23]_i_8 
       (.I0(common[16]),
        .I1(ready01_out),
        .O(\bottomR_out[23]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \bottomR_out[23]_i_9 
       (.I0(common[23]),
        .I1(ready0),
        .I2(mulOutR[23]),
        .I3(bottomR_out0[23]),
        .I4(ready01_out),
        .I5(outr0[23]),
        .O(\bottomR_out[23]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \bottomR_out[7]_i_10 
       (.I0(common[7]),
        .I1(ready0),
        .I2(mulOutR[7]),
        .I3(bottomR_out0[7]),
        .I4(ready01_out),
        .I5(outr0[7]),
        .O(\bottomR_out[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \bottomR_out[7]_i_11 
       (.I0(common[6]),
        .I1(ready0),
        .I2(mulOutR[6]),
        .I3(bottomR_out0[6]),
        .I4(ready01_out),
        .I5(outr0[6]),
        .O(\bottomR_out[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \bottomR_out[7]_i_12 
       (.I0(common[5]),
        .I1(ready0),
        .I2(mulOutR[5]),
        .I3(bottomR_out0[5]),
        .I4(ready01_out),
        .I5(outr0[5]),
        .O(\bottomR_out[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \bottomR_out[7]_i_13 
       (.I0(common[4]),
        .I1(ready0),
        .I2(mulOutR[4]),
        .I3(bottomR_out0[4]),
        .I4(ready01_out),
        .I5(outr0[4]),
        .O(\bottomR_out[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \bottomR_out[7]_i_14 
       (.I0(common[3]),
        .I1(ready0),
        .I2(mulOutR[3]),
        .I3(bottomR_out0[3]),
        .I4(ready01_out),
        .I5(outr0[3]),
        .O(\bottomR_out[7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \bottomR_out[7]_i_15 
       (.I0(common[2]),
        .I1(ready0),
        .I2(mulOutR[2]),
        .I3(bottomR_out0[2]),
        .I4(ready01_out),
        .I5(outr0[2]),
        .O(\bottomR_out[7]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \bottomR_out[7]_i_16 
       (.I0(common[1]),
        .I1(ready0),
        .I2(mulOutR[1]),
        .I3(bottomR_out0[1]),
        .I4(ready01_out),
        .I5(outr0[1]),
        .O(\bottomR_out[7]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC30AAAAFC30)) 
    \bottomR_out[7]_i_17 
       (.I0(common[0]),
        .I1(ready0),
        .I2(mulOutR[0]),
        .I3(bottomR_out0[0]),
        .I4(ready01_out),
        .I5(outr0[0]),
        .O(\bottomR_out[7]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bottomR_out[7]_i_19 
       (.I0(Q[7]),
        .I1(mulOutR[7]),
        .O(\bottomR_out[7]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bottomR_out[7]_i_2 
       (.I0(common[7]),
        .I1(ready01_out),
        .O(\bottomR_out[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bottomR_out[7]_i_20 
       (.I0(Q[6]),
        .I1(mulOutR[6]),
        .O(\bottomR_out[7]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bottomR_out[7]_i_21 
       (.I0(Q[5]),
        .I1(mulOutR[5]),
        .O(\bottomR_out[7]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bottomR_out[7]_i_22 
       (.I0(Q[4]),
        .I1(mulOutR[4]),
        .O(\bottomR_out[7]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bottomR_out[7]_i_23 
       (.I0(Q[3]),
        .I1(mulOutR[3]),
        .O(\bottomR_out[7]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bottomR_out[7]_i_24 
       (.I0(Q[2]),
        .I1(mulOutR[2]),
        .O(\bottomR_out[7]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bottomR_out[7]_i_25 
       (.I0(Q[1]),
        .I1(mulOutR[1]),
        .O(\bottomR_out[7]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bottomR_out[7]_i_26 
       (.I0(Q[0]),
        .I1(mulOutR[0]),
        .O(\bottomR_out[7]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bottomR_out[7]_i_3 
       (.I0(common[6]),
        .I1(ready01_out),
        .O(\bottomR_out[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bottomR_out[7]_i_4 
       (.I0(common[5]),
        .I1(ready01_out),
        .O(\bottomR_out[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bottomR_out[7]_i_5 
       (.I0(common[4]),
        .I1(ready01_out),
        .O(\bottomR_out[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bottomR_out[7]_i_6 
       (.I0(common[3]),
        .I1(ready01_out),
        .O(\bottomR_out[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bottomR_out[7]_i_7 
       (.I0(common[2]),
        .I1(ready01_out),
        .O(\bottomR_out[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bottomR_out[7]_i_8 
       (.I0(common[1]),
        .I1(ready01_out),
        .O(\bottomR_out[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bottomR_out[7]_i_9 
       (.I0(common[0]),
        .I1(ready01_out),
        .O(\bottomR_out[7]_i_9_n_0 ));
  CARRY8 \bottomR_out_reg[15]_i_1 
       (.CI(\bottomR_out_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\bottomR_out_reg[15]_i_1_n_0 ,\bottomR_out_reg[15]_i_1_n_1 ,\bottomR_out_reg[15]_i_1_n_2 ,\bottomR_out_reg[15]_i_1_n_3 ,\bottomR_out_reg[15]_i_1_n_4 ,\bottomR_out_reg[15]_i_1_n_5 ,\bottomR_out_reg[15]_i_1_n_6 ,\bottomR_out_reg[15]_i_1_n_7 }),
        .DI({\bottomR_out[15]_i_2_n_0 ,\bottomR_out[15]_i_3_n_0 ,\bottomR_out[15]_i_4_n_0 ,\bottomR_out[15]_i_5_n_0 ,\bottomR_out[15]_i_6_n_0 ,\bottomR_out[15]_i_7_n_0 ,\bottomR_out[15]_i_8_n_0 ,\bottomR_out[15]_i_9_n_0 }),
        .O(out[15:8]),
        .S({\bottomR_out[15]_i_10_n_0 ,\bottomR_out[15]_i_11_n_0 ,\bottomR_out[15]_i_12_n_0 ,\bottomR_out[15]_i_13_n_0 ,\bottomR_out[15]_i_14_n_0 ,\bottomR_out[15]_i_15_n_0 ,\bottomR_out[15]_i_16_n_0 ,\bottomR_out[15]_i_17_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \bottomR_out_reg[15]_i_18 
       (.CI(\bottomR_out_reg[7]_i_18_n_0 ),
        .CI_TOP(1'b0),
        .CO({\bottomR_out_reg[15]_i_18_n_0 ,\bottomR_out_reg[15]_i_18_n_1 ,\bottomR_out_reg[15]_i_18_n_2 ,\bottomR_out_reg[15]_i_18_n_3 ,\bottomR_out_reg[15]_i_18_n_4 ,\bottomR_out_reg[15]_i_18_n_5 ,\bottomR_out_reg[15]_i_18_n_6 ,\bottomR_out_reg[15]_i_18_n_7 }),
        .DI(Q[15:8]),
        .O(bottomR_out0[15:8]),
        .S({\bottomR_out[15]_i_19_n_0 ,\bottomR_out[15]_i_20_n_0 ,\bottomR_out[15]_i_21_n_0 ,\bottomR_out[15]_i_22_n_0 ,\bottomR_out[15]_i_23_n_0 ,\bottomR_out[15]_i_24_n_0 ,\bottomR_out[15]_i_25_n_0 ,\bottomR_out[15]_i_26_n_0 }));
  CARRY8 \bottomR_out_reg[23]_i_1 
       (.CI(\bottomR_out_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_bottomR_out_reg[23]_i_1_CO_UNCONNECTED [7],\bottomR_out_reg[23]_i_1_n_1 ,\bottomR_out_reg[23]_i_1_n_2 ,\bottomR_out_reg[23]_i_1_n_3 ,\bottomR_out_reg[23]_i_1_n_4 ,\bottomR_out_reg[23]_i_1_n_5 ,\bottomR_out_reg[23]_i_1_n_6 ,\bottomR_out_reg[23]_i_1_n_7 }),
        .DI({1'b0,\bottomR_out[23]_i_2_n_0 ,\bottomR_out[23]_i_3_n_0 ,\bottomR_out[23]_i_4_n_0 ,\bottomR_out[23]_i_5_n_0 ,\bottomR_out[23]_i_6_n_0 ,\bottomR_out[23]_i_7_n_0 ,\bottomR_out[23]_i_8_n_0 }),
        .O(out[23:16]),
        .S({\bottomR_out[23]_i_9_n_0 ,\bottomR_out[23]_i_10_n_0 ,\bottomR_out[23]_i_11_n_0 ,\bottomR_out[23]_i_12_n_0 ,\bottomR_out[23]_i_13_n_0 ,\bottomR_out[23]_i_14_n_0 ,\bottomR_out[23]_i_15_n_0 ,\bottomR_out[23]_i_16_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \bottomR_out_reg[23]_i_17 
       (.CI(\bottomR_out_reg[15]_i_18_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_bottomR_out_reg[23]_i_17_CO_UNCONNECTED [7],\bottomR_out_reg[23]_i_17_n_1 ,\bottomR_out_reg[23]_i_17_n_2 ,\bottomR_out_reg[23]_i_17_n_3 ,\bottomR_out_reg[23]_i_17_n_4 ,\bottomR_out_reg[23]_i_17_n_5 ,\bottomR_out_reg[23]_i_17_n_6 ,\bottomR_out_reg[23]_i_17_n_7 }),
        .DI({1'b0,Q[22:16]}),
        .O(bottomR_out0[23:16]),
        .S({\bottomR_out[23]_i_18_n_0 ,\bottomR_out[23]_i_19_n_0 ,\bottomR_out[23]_i_20_n_0 ,\bottomR_out[23]_i_21_n_0 ,\bottomR_out[23]_i_22_n_0 ,\bottomR_out[23]_i_23_n_0 ,\bottomR_out[23]_i_24_n_0 ,\bottomR_out[23]_i_25_n_0 }));
  CARRY8 \bottomR_out_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\bottomR_out_reg[7]_i_1_n_0 ,\bottomR_out_reg[7]_i_1_n_1 ,\bottomR_out_reg[7]_i_1_n_2 ,\bottomR_out_reg[7]_i_1_n_3 ,\bottomR_out_reg[7]_i_1_n_4 ,\bottomR_out_reg[7]_i_1_n_5 ,\bottomR_out_reg[7]_i_1_n_6 ,\bottomR_out_reg[7]_i_1_n_7 }),
        .DI({\bottomR_out[7]_i_2_n_0 ,\bottomR_out[7]_i_3_n_0 ,\bottomR_out[7]_i_4_n_0 ,\bottomR_out[7]_i_5_n_0 ,\bottomR_out[7]_i_6_n_0 ,\bottomR_out[7]_i_7_n_0 ,\bottomR_out[7]_i_8_n_0 ,\bottomR_out[7]_i_9_n_0 }),
        .O(out[7:0]),
        .S({\bottomR_out[7]_i_10_n_0 ,\bottomR_out[7]_i_11_n_0 ,\bottomR_out[7]_i_12_n_0 ,\bottomR_out[7]_i_13_n_0 ,\bottomR_out[7]_i_14_n_0 ,\bottomR_out[7]_i_15_n_0 ,\bottomR_out[7]_i_16_n_0 ,\bottomR_out[7]_i_17_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \bottomR_out_reg[7]_i_18 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\bottomR_out_reg[7]_i_18_n_0 ,\bottomR_out_reg[7]_i_18_n_1 ,\bottomR_out_reg[7]_i_18_n_2 ,\bottomR_out_reg[7]_i_18_n_3 ,\bottomR_out_reg[7]_i_18_n_4 ,\bottomR_out_reg[7]_i_18_n_5 ,\bottomR_out_reg[7]_i_18_n_6 ,\bottomR_out_reg[7]_i_18_n_7 }),
        .DI(Q[7:0]),
        .O(bottomR_out0[7:0]),
        .S({\bottomR_out[7]_i_19_n_0 ,\bottomR_out[7]_i_20_n_0 ,\bottomR_out[7]_i_21_n_0 ,\bottomR_out[7]_i_22_n_0 ,\bottomR_out[7]_i_23_n_0 ,\bottomR_out[7]_i_24_n_0 ,\bottomR_out[7]_i_25_n_0 ,\bottomR_out[7]_i_26_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 cMinusD_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({cMinusD_carry_n_0,cMinusD_carry_n_1,cMinusD_carry_n_2,cMinusD_carry_n_3,cMinusD_carry_n_4,cMinusD_carry_n_5,cMinusD_carry_n_6,cMinusD_carry_n_7}),
        .DI({mul2R[1],mul2R[3],mul2R[1],mul2R[1],mul2R[3],mul2R[1],mul2R[3],mul2R[0]}),
        .O(cMinusD[9:2]),
        .S({cMinusD_carry_i_1_n_0,cMinusD_carry_i_2_n_0,cMinusD_carry_i_3_n_0,cMinusD_carry_i_4_n_0,cMinusD_carry_i_5_n_0,cMinusD_carry_i_6_n_0,cMinusD_carry_i_7_n_0,1'b1}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 cMinusD_carry__0
       (.CI(cMinusD_carry_n_0),
        .CI_TOP(1'b0),
        .CO({cMinusD_carry__0_n_0,cMinusD_carry__0_n_1,cMinusD_carry__0_n_2,cMinusD_carry__0_n_3,cMinusD_carry__0_n_4,cMinusD_carry__0_n_5,cMinusD_carry__0_n_6,cMinusD_carry__0_n_7}),
        .DI({mul2R[3],mul2R[3],mul2R[3],mul2R[3],mul2R[3],mul2R[3],mul2R[3:2]}),
        .O(cMinusD[17:10]),
        .S({cMinusD_carry__0_i_1_n_0,cMinusD_carry__0_i_2_n_0,cMinusD_carry__0_i_3_n_0,cMinusD_carry__0_i_4_n_0,cMinusD_carry__0_i_5_n_0,cMinusD_carry__0_i_6_n_0,cMinusD_carry__0_i_7_n_0,cMinusD_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    cMinusD_carry__0_i_1
       (.I0(mul2R[3]),
        .I1(mul2I),
        .O(cMinusD_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cMinusD_carry__0_i_2
       (.I0(mul2R[3]),
        .I1(mul2I),
        .O(cMinusD_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cMinusD_carry__0_i_3
       (.I0(mul2R[3]),
        .I1(mul2I),
        .O(cMinusD_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cMinusD_carry__0_i_4
       (.I0(mul2R[3]),
        .I1(mul2I),
        .O(cMinusD_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cMinusD_carry__0_i_5
       (.I0(mul2R[3]),
        .I1(mul2I),
        .O(cMinusD_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cMinusD_carry__0_i_6
       (.I0(mul2R[3]),
        .I1(mul2I),
        .O(cMinusD_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cMinusD_carry__0_i_7
       (.I0(mul2R[3]),
        .I1(mul2I),
        .O(cMinusD_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cMinusD_carry__0_i_8
       (.I0(mul2R[2]),
        .I1(mul2I),
        .O(cMinusD_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 cMinusD_carry__1
       (.CI(cMinusD_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_cMinusD_carry__1_CO_UNCONNECTED[7:5],cMinusD_carry__1_n_3,cMinusD_carry__1_n_4,cMinusD_carry__1_n_5,cMinusD_carry__1_n_6,cMinusD_carry__1_n_7}),
        .DI({1'b0,1'b0,1'b0,mul2R[3],mul2R[3],mul2R[3],mul2R[3],mul2R[3]}),
        .O({NLW_cMinusD_carry__1_O_UNCONNECTED[7:6],cMinusD[23:18]}),
        .S({1'b0,1'b0,cMinusD_carry__1_i_1_n_0,cMinusD_carry__1_i_2_n_0,cMinusD_carry__1_i_3_n_0,cMinusD_carry__1_i_4_n_0,cMinusD_carry__1_i_5_n_0,cMinusD_carry__1_i_6_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    cMinusD_carry__1_i_1
       (.I0(mul2R[3]),
        .I1(mul2I),
        .O(cMinusD_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cMinusD_carry__1_i_2
       (.I0(mul2R[3]),
        .I1(mul2I),
        .O(cMinusD_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cMinusD_carry__1_i_3
       (.I0(mul2R[3]),
        .I1(mul2I),
        .O(cMinusD_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cMinusD_carry__1_i_4
       (.I0(mul2R[3]),
        .I1(mul2I),
        .O(cMinusD_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cMinusD_carry__1_i_5
       (.I0(mul2R[3]),
        .I1(mul2I),
        .O(cMinusD_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cMinusD_carry__1_i_6
       (.I0(mul2R[3]),
        .I1(mul2I),
        .O(cMinusD_carry__1_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cMinusD_carry_i_1
       (.I0(mul2R[1]),
        .O(cMinusD_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cMinusD_carry_i_2
       (.I0(mul2R[3]),
        .I1(mul2R[0]),
        .O(cMinusD_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cMinusD_carry_i_3
       (.I0(mul2R[1]),
        .O(cMinusD_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cMinusD_carry_i_4
       (.I0(mul2R[1]),
        .O(cMinusD_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cMinusD_carry_i_5
       (.I0(mul2R[3]),
        .I1(mul2R[0]),
        .O(cMinusD_carry_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cMinusD_carry_i_6
       (.I0(mul2R[1]),
        .O(cMinusD_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cMinusD_carry_i_7
       (.I0(mul2R[3]),
        .I1(mul2R[0]),
        .O(cMinusD_carry_i_7_n_0));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    cMinusDtimesA0
       (.A({\shift_reg[1] [23],\shift_reg[1] [23],\shift_reg[1] [23],\shift_reg[1] [23],\shift_reg[1] [23],\shift_reg[1] [23],\shift_reg[1] }),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_cMinusDtimesA0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,cMinusD[16:2],1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_cMinusDtimesA0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_cMinusDtimesA0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_cMinusDtimesA0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(CEA1),
        .CEA2(ready01_out),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(s00_axi_aclk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_cMinusDtimesA0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_cMinusDtimesA0_OVERFLOW_UNCONNECTED),
        .P({cMinusDtimesA0_n_58,cMinusDtimesA0_n_59,cMinusDtimesA0_n_60,cMinusDtimesA0_n_61,cMinusDtimesA0_n_62,cMinusDtimesA0_n_63,cMinusDtimesA0_n_64,cMinusDtimesA0_n_65,cMinusDtimesA0_n_66,cMinusDtimesA0_n_67,cMinusDtimesA0_n_68,cMinusDtimesA0_n_69,cMinusDtimesA0_n_70,cMinusDtimesA0_n_71,cMinusDtimesA0_n_72,cMinusDtimesA0_n_73,cMinusDtimesA0_n_74,cMinusDtimesA0_n_75,cMinusDtimesA0_n_76,cMinusDtimesA0_n_77,cMinusDtimesA0_n_78,cMinusDtimesA0_n_79,cMinusDtimesA0_n_80,cMinusDtimesA0_n_81,cMinusDtimesA0_n_82,cMinusDtimesA0_n_83,cMinusDtimesA0_n_84,cMinusDtimesA0_n_85,cMinusDtimesA0_n_86,cMinusDtimesA0_n_87,cMinusDtimesA0_n_88,cMinusDtimesA0_n_89,cMinusDtimesA0_n_90,cMinusDtimesA0_n_91,cMinusDtimesA0_n_92,cMinusDtimesA0_n_93,cMinusDtimesA0_n_94,cMinusDtimesA0_n_95,cMinusDtimesA0_n_96,cMinusDtimesA0_n_97,cMinusDtimesA0_n_98,cMinusDtimesA0_n_99,cMinusDtimesA0_n_100,cMinusDtimesA0_n_101,cMinusDtimesA0_n_102,cMinusDtimesA0_n_103,cMinusDtimesA0_n_104,cMinusDtimesA0_n_105}),
        .PATTERNBDETECT(NLW_cMinusDtimesA0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_cMinusDtimesA0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({cMinusDtimesA0_n_106,cMinusDtimesA0_n_107,cMinusDtimesA0_n_108,cMinusDtimesA0_n_109,cMinusDtimesA0_n_110,cMinusDtimesA0_n_111,cMinusDtimesA0_n_112,cMinusDtimesA0_n_113,cMinusDtimesA0_n_114,cMinusDtimesA0_n_115,cMinusDtimesA0_n_116,cMinusDtimesA0_n_117,cMinusDtimesA0_n_118,cMinusDtimesA0_n_119,cMinusDtimesA0_n_120,cMinusDtimesA0_n_121,cMinusDtimesA0_n_122,cMinusDtimesA0_n_123,cMinusDtimesA0_n_124,cMinusDtimesA0_n_125,cMinusDtimesA0_n_126,cMinusDtimesA0_n_127,cMinusDtimesA0_n_128,cMinusDtimesA0_n_129,cMinusDtimesA0_n_130,cMinusDtimesA0_n_131,cMinusDtimesA0_n_132,cMinusDtimesA0_n_133,cMinusDtimesA0_n_134,cMinusDtimesA0_n_135,cMinusDtimesA0_n_136,cMinusDtimesA0_n_137,cMinusDtimesA0_n_138,cMinusDtimesA0_n_139,cMinusDtimesA0_n_140,cMinusDtimesA0_n_141,cMinusDtimesA0_n_142,cMinusDtimesA0_n_143,cMinusDtimesA0_n_144,cMinusDtimesA0_n_145,cMinusDtimesA0_n_146,cMinusDtimesA0_n_147,cMinusDtimesA0_n_148,cMinusDtimesA0_n_149,cMinusDtimesA0_n_150,cMinusDtimesA0_n_151,cMinusDtimesA0_n_152,cMinusDtimesA0_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_cMinusDtimesA0_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_cMinusDtimesA0_XOROUT_UNCONNECTED[7:0]));
  LUT3 #(
    .INIT(8'h02)) 
    cMinusDtimesA0_i_1
       (.I0(\state_reg[1] ),
        .I1(\bottomIdx_reg[4] ),
        .I2(\mul2Q_reg[0] ),
        .O(CEA1));
  MUXF7 cMinusDtimesA0_i_10
       (.I0(cMinusDtimesA0_i_45_n_0),
        .I1(cMinusDtimesA0_i_46_n_0),
        .O(\shift_reg[1] [15]),
        .S(cMinusDtimesA0_i_28_n_0));
  MUXF7 cMinusDtimesA0_i_11
       (.I0(cMinusDtimesA0_i_47_n_0),
        .I1(cMinusDtimesA0_i_48_n_0),
        .O(\shift_reg[1] [14]),
        .S(cMinusDtimesA0_i_28_n_0));
  MUXF7 cMinusDtimesA0_i_12
       (.I0(cMinusDtimesA0_i_49_n_0),
        .I1(cMinusDtimesA0_i_50_n_0),
        .O(\shift_reg[1] [13]),
        .S(cMinusDtimesA0_i_28_n_0));
  MUXF7 cMinusDtimesA0_i_13
       (.I0(cMinusDtimesA0_i_51_n_0),
        .I1(cMinusDtimesA0_i_52_n_0),
        .O(\shift_reg[1] [12]),
        .S(cMinusDtimesA0_i_28_n_0));
  MUXF7 cMinusDtimesA0_i_14
       (.I0(cMinusDtimesA0_i_53_n_0),
        .I1(cMinusDtimesA0_i_54_n_0),
        .O(\shift_reg[1] [11]),
        .S(cMinusDtimesA0_i_28_n_0));
  MUXF7 cMinusDtimesA0_i_15
       (.I0(cMinusDtimesA0_i_55_n_0),
        .I1(cMinusDtimesA0_i_56_n_0),
        .O(\shift_reg[1] [10]),
        .S(cMinusDtimesA0_i_28_n_0));
  MUXF7 cMinusDtimesA0_i_16
       (.I0(cMinusDtimesA0_i_57_n_0),
        .I1(cMinusDtimesA0_i_58_n_0),
        .O(\shift_reg[1] [9]),
        .S(cMinusDtimesA0_i_28_n_0));
  MUXF7 cMinusDtimesA0_i_17
       (.I0(cMinusDtimesA0_i_59_n_0),
        .I1(cMinusDtimesA0_i_60_n_0),
        .O(\shift_reg[1] [8]),
        .S(cMinusDtimesA0_i_28_n_0));
  MUXF7 cMinusDtimesA0_i_18
       (.I0(cMinusDtimesA0_i_61_n_0),
        .I1(cMinusDtimesA0_i_62_n_0),
        .O(\shift_reg[1] [7]),
        .S(cMinusDtimesA0_i_28_n_0));
  MUXF7 cMinusDtimesA0_i_19
       (.I0(cMinusDtimesA0_i_63_n_0),
        .I1(cMinusDtimesA0_i_64_n_0),
        .O(\shift_reg[1] [6]),
        .S(cMinusDtimesA0_i_28_n_0));
  MUXF7 cMinusDtimesA0_i_2
       (.I0(cMinusDtimesA0_i_29_n_0),
        .I1(cMinusDtimesA0_i_30_n_0),
        .O(\shift_reg[1] [23]),
        .S(cMinusDtimesA0_i_28_n_0));
  MUXF7 cMinusDtimesA0_i_20
       (.I0(cMinusDtimesA0_i_65_n_0),
        .I1(cMinusDtimesA0_i_66_n_0),
        .O(\shift_reg[1] [5]),
        .S(cMinusDtimesA0_i_28_n_0));
  MUXF7 cMinusDtimesA0_i_21
       (.I0(cMinusDtimesA0_i_67_n_0),
        .I1(cMinusDtimesA0_i_68_n_0),
        .O(\shift_reg[1] [4]),
        .S(cMinusDtimesA0_i_28_n_0));
  MUXF7 cMinusDtimesA0_i_22
       (.I0(cMinusDtimesA0_i_69_n_0),
        .I1(cMinusDtimesA0_i_70_n_0),
        .O(\shift_reg[1] [3]),
        .S(cMinusDtimesA0_i_28_n_0));
  MUXF7 cMinusDtimesA0_i_23
       (.I0(cMinusDtimesA0_i_71_n_0),
        .I1(cMinusDtimesA0_i_72_n_0),
        .O(\shift_reg[1] [2]),
        .S(cMinusDtimesA0_i_28_n_0));
  MUXF7 cMinusDtimesA0_i_24
       (.I0(cMinusDtimesA0_i_73_n_0),
        .I1(cMinusDtimesA0_i_74_n_0),
        .O(\shift_reg[1] [1]),
        .S(cMinusDtimesA0_i_28_n_0));
  MUXF7 cMinusDtimesA0_i_25
       (.I0(cMinusDtimesA0_i_75_n_0),
        .I1(cMinusDtimesA0_i_76_n_0),
        .O(\shift_reg[1] [0]),
        .S(cMinusDtimesA0_i_28_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    cMinusDtimesA0_i_26
       (.I0(\mul2Q_reg[0]_1 [1]),
        .I1(\mul2Q_reg[0]_1 [0]),
        .O(\state_reg[1] ));
  LUT5 #(
    .INIT(32'h4D44DDDD)) 
    cMinusDtimesA0_i_27
       (.I0(\mul2Q_reg[0]_0 [3]),
        .I1(topIdx[3]),
        .I2(\mul2Q_reg[0]_0 [2]),
        .I3(topIdx[2]),
        .I4(\bottomIdx_reg[1] ),
        .O(\bottomIdx_reg[4] ));
  LUT6 #(
    .INIT(64'h69FFFFFF96000000)) 
    cMinusDtimesA0_i_28
       (.I0(\dataI[5][23]_i_4 [0]),
        .I1(\mul2Q_reg[0]_0 [1]),
        .I2(topIdx[1]),
        .I3(topIdx[0]),
        .I4(\mul2Q_reg[0]_0 [0]),
        .I5(\shift_reg[1]_1 ),
        .O(cMinusDtimesA0_i_28_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cMinusDtimesA0_i_29
       (.I0(dataI[119]),
        .I1(dataI[143]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataI[167]),
        .I4(\topIdx_reg[0] ),
        .I5(dataI[191]),
        .O(cMinusDtimesA0_i_29_n_0));
  MUXF7 cMinusDtimesA0_i_3
       (.I0(cMinusDtimesA0_i_31_n_0),
        .I1(cMinusDtimesA0_i_32_n_0),
        .O(\shift_reg[1] [22]),
        .S(cMinusDtimesA0_i_28_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cMinusDtimesA0_i_30
       (.I0(dataI[23]),
        .I1(dataI[47]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataI[71]),
        .I4(\topIdx_reg[0] ),
        .I5(dataI[95]),
        .O(cMinusDtimesA0_i_30_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cMinusDtimesA0_i_31
       (.I0(dataI[118]),
        .I1(dataI[142]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataI[166]),
        .I4(\topIdx_reg[0] ),
        .I5(dataI[190]),
        .O(cMinusDtimesA0_i_31_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cMinusDtimesA0_i_32
       (.I0(dataI[22]),
        .I1(dataI[46]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataI[70]),
        .I4(\topIdx_reg[0] ),
        .I5(dataI[94]),
        .O(cMinusDtimesA0_i_32_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cMinusDtimesA0_i_33
       (.I0(dataI[117]),
        .I1(dataI[141]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataI[165]),
        .I4(\topIdx_reg[0] ),
        .I5(dataI[189]),
        .O(cMinusDtimesA0_i_33_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cMinusDtimesA0_i_34
       (.I0(dataI[21]),
        .I1(dataI[45]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataI[69]),
        .I4(\topIdx_reg[0] ),
        .I5(dataI[93]),
        .O(cMinusDtimesA0_i_34_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cMinusDtimesA0_i_35
       (.I0(dataI[116]),
        .I1(dataI[140]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataI[164]),
        .I4(\topIdx_reg[0] ),
        .I5(dataI[188]),
        .O(cMinusDtimesA0_i_35_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cMinusDtimesA0_i_36
       (.I0(dataI[20]),
        .I1(dataI[44]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataI[68]),
        .I4(\topIdx_reg[0] ),
        .I5(dataI[92]),
        .O(cMinusDtimesA0_i_36_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cMinusDtimesA0_i_37
       (.I0(dataI[115]),
        .I1(dataI[139]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataI[163]),
        .I4(\topIdx_reg[0] ),
        .I5(dataI[187]),
        .O(cMinusDtimesA0_i_37_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cMinusDtimesA0_i_38
       (.I0(dataI[19]),
        .I1(dataI[43]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataI[67]),
        .I4(\topIdx_reg[0] ),
        .I5(dataI[91]),
        .O(cMinusDtimesA0_i_38_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cMinusDtimesA0_i_39
       (.I0(dataI[114]),
        .I1(dataI[138]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataI[162]),
        .I4(\topIdx_reg[0] ),
        .I5(dataI[186]),
        .O(cMinusDtimesA0_i_39_n_0));
  MUXF7 cMinusDtimesA0_i_4
       (.I0(cMinusDtimesA0_i_33_n_0),
        .I1(cMinusDtimesA0_i_34_n_0),
        .O(\shift_reg[1] [21]),
        .S(cMinusDtimesA0_i_28_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cMinusDtimesA0_i_40
       (.I0(dataI[18]),
        .I1(dataI[42]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataI[66]),
        .I4(\topIdx_reg[0] ),
        .I5(dataI[90]),
        .O(cMinusDtimesA0_i_40_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cMinusDtimesA0_i_41
       (.I0(dataI[113]),
        .I1(dataI[137]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataI[161]),
        .I4(\topIdx_reg[0] ),
        .I5(dataI[185]),
        .O(cMinusDtimesA0_i_41_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cMinusDtimesA0_i_42
       (.I0(dataI[17]),
        .I1(dataI[41]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataI[65]),
        .I4(\topIdx_reg[0] ),
        .I5(dataI[89]),
        .O(cMinusDtimesA0_i_42_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cMinusDtimesA0_i_43
       (.I0(dataI[112]),
        .I1(dataI[136]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataI[160]),
        .I4(\topIdx_reg[0] ),
        .I5(dataI[184]),
        .O(cMinusDtimesA0_i_43_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cMinusDtimesA0_i_44
       (.I0(dataI[16]),
        .I1(dataI[40]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataI[64]),
        .I4(\topIdx_reg[0] ),
        .I5(dataI[88]),
        .O(cMinusDtimesA0_i_44_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cMinusDtimesA0_i_45
       (.I0(dataI[111]),
        .I1(dataI[135]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataI[159]),
        .I4(\topIdx_reg[0] ),
        .I5(dataI[183]),
        .O(cMinusDtimesA0_i_45_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cMinusDtimesA0_i_46
       (.I0(dataI[15]),
        .I1(dataI[39]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataI[63]),
        .I4(\topIdx_reg[0] ),
        .I5(dataI[87]),
        .O(cMinusDtimesA0_i_46_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cMinusDtimesA0_i_47
       (.I0(dataI[110]),
        .I1(dataI[134]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataI[158]),
        .I4(\topIdx_reg[0] ),
        .I5(dataI[182]),
        .O(cMinusDtimesA0_i_47_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cMinusDtimesA0_i_48
       (.I0(dataI[14]),
        .I1(dataI[38]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataI[62]),
        .I4(\topIdx_reg[0] ),
        .I5(dataI[86]),
        .O(cMinusDtimesA0_i_48_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cMinusDtimesA0_i_49
       (.I0(dataI[109]),
        .I1(dataI[133]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataI[157]),
        .I4(\topIdx_reg[0] ),
        .I5(dataI[181]),
        .O(cMinusDtimesA0_i_49_n_0));
  MUXF7 cMinusDtimesA0_i_5
       (.I0(cMinusDtimesA0_i_35_n_0),
        .I1(cMinusDtimesA0_i_36_n_0),
        .O(\shift_reg[1] [20]),
        .S(cMinusDtimesA0_i_28_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cMinusDtimesA0_i_50
       (.I0(dataI[13]),
        .I1(dataI[37]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataI[61]),
        .I4(\topIdx_reg[0] ),
        .I5(dataI[85]),
        .O(cMinusDtimesA0_i_50_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cMinusDtimesA0_i_51
       (.I0(dataI[108]),
        .I1(dataI[132]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataI[156]),
        .I4(\topIdx_reg[0] ),
        .I5(dataI[180]),
        .O(cMinusDtimesA0_i_51_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cMinusDtimesA0_i_52
       (.I0(dataI[12]),
        .I1(dataI[36]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataI[60]),
        .I4(\topIdx_reg[0] ),
        .I5(dataI[84]),
        .O(cMinusDtimesA0_i_52_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cMinusDtimesA0_i_53
       (.I0(dataI[107]),
        .I1(dataI[131]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataI[155]),
        .I4(\topIdx_reg[0] ),
        .I5(dataI[179]),
        .O(cMinusDtimesA0_i_53_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cMinusDtimesA0_i_54
       (.I0(dataI[11]),
        .I1(dataI[35]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataI[59]),
        .I4(\topIdx_reg[0] ),
        .I5(dataI[83]),
        .O(cMinusDtimesA0_i_54_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cMinusDtimesA0_i_55
       (.I0(dataI[106]),
        .I1(dataI[130]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataI[154]),
        .I4(\topIdx_reg[0] ),
        .I5(dataI[178]),
        .O(cMinusDtimesA0_i_55_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cMinusDtimesA0_i_56
       (.I0(dataI[10]),
        .I1(dataI[34]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataI[58]),
        .I4(\topIdx_reg[0] ),
        .I5(dataI[82]),
        .O(cMinusDtimesA0_i_56_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cMinusDtimesA0_i_57
       (.I0(dataI[105]),
        .I1(dataI[129]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataI[153]),
        .I4(\topIdx_reg[0] ),
        .I5(dataI[177]),
        .O(cMinusDtimesA0_i_57_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cMinusDtimesA0_i_58
       (.I0(dataI[9]),
        .I1(dataI[33]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataI[57]),
        .I4(\topIdx_reg[0] ),
        .I5(dataI[81]),
        .O(cMinusDtimesA0_i_58_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cMinusDtimesA0_i_59
       (.I0(dataI[104]),
        .I1(dataI[128]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataI[152]),
        .I4(\topIdx_reg[0] ),
        .I5(dataI[176]),
        .O(cMinusDtimesA0_i_59_n_0));
  MUXF7 cMinusDtimesA0_i_6
       (.I0(cMinusDtimesA0_i_37_n_0),
        .I1(cMinusDtimesA0_i_38_n_0),
        .O(\shift_reg[1] [19]),
        .S(cMinusDtimesA0_i_28_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cMinusDtimesA0_i_60
       (.I0(dataI[8]),
        .I1(dataI[32]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataI[56]),
        .I4(\topIdx_reg[0] ),
        .I5(dataI[80]),
        .O(cMinusDtimesA0_i_60_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cMinusDtimesA0_i_61
       (.I0(dataI[103]),
        .I1(dataI[127]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataI[151]),
        .I4(\topIdx_reg[0] ),
        .I5(dataI[175]),
        .O(cMinusDtimesA0_i_61_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cMinusDtimesA0_i_62
       (.I0(dataI[7]),
        .I1(dataI[31]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataI[55]),
        .I4(\topIdx_reg[0] ),
        .I5(dataI[79]),
        .O(cMinusDtimesA0_i_62_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cMinusDtimesA0_i_63
       (.I0(dataI[102]),
        .I1(dataI[126]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataI[150]),
        .I4(\topIdx_reg[0] ),
        .I5(dataI[174]),
        .O(cMinusDtimesA0_i_63_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cMinusDtimesA0_i_64
       (.I0(dataI[6]),
        .I1(dataI[30]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataI[54]),
        .I4(\topIdx_reg[0] ),
        .I5(dataI[78]),
        .O(cMinusDtimesA0_i_64_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cMinusDtimesA0_i_65
       (.I0(dataI[101]),
        .I1(dataI[125]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataI[149]),
        .I4(\topIdx_reg[0] ),
        .I5(dataI[173]),
        .O(cMinusDtimesA0_i_65_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cMinusDtimesA0_i_66
       (.I0(dataI[5]),
        .I1(dataI[29]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataI[53]),
        .I4(\topIdx_reg[0] ),
        .I5(dataI[77]),
        .O(cMinusDtimesA0_i_66_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cMinusDtimesA0_i_67
       (.I0(dataI[100]),
        .I1(dataI[124]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataI[148]),
        .I4(\topIdx_reg[0] ),
        .I5(dataI[172]),
        .O(cMinusDtimesA0_i_67_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cMinusDtimesA0_i_68
       (.I0(dataI[4]),
        .I1(dataI[28]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataI[52]),
        .I4(\topIdx_reg[0] ),
        .I5(dataI[76]),
        .O(cMinusDtimesA0_i_68_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cMinusDtimesA0_i_69
       (.I0(dataI[99]),
        .I1(dataI[123]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataI[147]),
        .I4(\topIdx_reg[0] ),
        .I5(dataI[171]),
        .O(cMinusDtimesA0_i_69_n_0));
  MUXF7 cMinusDtimesA0_i_7
       (.I0(cMinusDtimesA0_i_39_n_0),
        .I1(cMinusDtimesA0_i_40_n_0),
        .O(\shift_reg[1] [18]),
        .S(cMinusDtimesA0_i_28_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cMinusDtimesA0_i_70
       (.I0(dataI[3]),
        .I1(dataI[27]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataI[51]),
        .I4(\topIdx_reg[0] ),
        .I5(dataI[75]),
        .O(cMinusDtimesA0_i_70_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cMinusDtimesA0_i_71
       (.I0(dataI[98]),
        .I1(dataI[122]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataI[146]),
        .I4(\topIdx_reg[0] ),
        .I5(dataI[170]),
        .O(cMinusDtimesA0_i_71_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cMinusDtimesA0_i_72
       (.I0(dataI[2]),
        .I1(dataI[26]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataI[50]),
        .I4(\topIdx_reg[0] ),
        .I5(dataI[74]),
        .O(cMinusDtimesA0_i_72_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cMinusDtimesA0_i_73
       (.I0(dataI[97]),
        .I1(dataI[121]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataI[145]),
        .I4(\topIdx_reg[0] ),
        .I5(dataI[169]),
        .O(cMinusDtimesA0_i_73_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cMinusDtimesA0_i_74
       (.I0(dataI[1]),
        .I1(dataI[25]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataI[49]),
        .I4(\topIdx_reg[0] ),
        .I5(dataI[73]),
        .O(cMinusDtimesA0_i_74_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cMinusDtimesA0_i_75
       (.I0(dataI[96]),
        .I1(dataI[120]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataI[144]),
        .I4(\topIdx_reg[0] ),
        .I5(dataI[168]),
        .O(cMinusDtimesA0_i_75_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cMinusDtimesA0_i_76
       (.I0(dataI[0]),
        .I1(dataI[24]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataI[48]),
        .I4(\topIdx_reg[0] ),
        .I5(dataI[72]),
        .O(cMinusDtimesA0_i_76_n_0));
  LUT6 #(
    .INIT(64'h22F200F0FFFF22F2)) 
    cMinusDtimesA0_i_77
       (.I0(\mul2Q_reg[0]_0 [0]),
        .I1(topIdx[0]),
        .I2(\mul2Q_reg[0]_0 [2]),
        .I3(topIdx[2]),
        .I4(\mul2Q_reg[0]_0 [1]),
        .I5(topIdx[1]),
        .O(\bottomIdx_reg[1] ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    cMinusDtimesA0_i_78
       (.I0(\dataI[5][23]_i_4 [0]),
        .I1(\mul2Q_reg[0]_0 [1]),
        .I2(topIdx[1]),
        .I3(\mul2Q_reg[0]_0 [2]),
        .I4(topIdx[2]),
        .I5(\dataI[5][23]_i_4 [1]),
        .O(\shift_reg[1]_1 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    cMinusDtimesA0_i_79
       (.I0(\mul2Q_reg[0]_0 [0]),
        .I1(topIdx[0]),
        .I2(topIdx[1]),
        .I3(\mul2Q_reg[0]_0 [1]),
        .I4(\dataI[5][23]_i_4 [0]),
        .O(\bottomIdx_reg[1]_0 ));
  MUXF7 cMinusDtimesA0_i_8
       (.I0(cMinusDtimesA0_i_41_n_0),
        .I1(cMinusDtimesA0_i_42_n_0),
        .O(\shift_reg[1] [17]),
        .S(cMinusDtimesA0_i_28_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cMinusDtimesA0_i_80
       (.I0(topIdx[0]),
        .I1(\mul2Q_reg[0]_0 [0]),
        .O(\topIdx_reg[0] ));
  MUXF7 cMinusDtimesA0_i_9
       (.I0(cMinusDtimesA0_i_43_n_0),
        .I1(cMinusDtimesA0_i_44_n_0),
        .O(\shift_reg[1] [16]),
        .S(cMinusDtimesA0_i_28_n_0));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    cMinusDtimesA_reg
       (.A({\shift_reg[1] [16],\shift_reg[1] [16],\shift_reg[1] [16],\shift_reg[1] [16],\shift_reg[1] [16],\shift_reg[1] [16],\shift_reg[1] [16],\shift_reg[1] [16],\shift_reg[1] [16],\shift_reg[1] [16],\shift_reg[1] [16],\shift_reg[1] [16],\shift_reg[1] [16],\shift_reg[1] [16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_cMinusDtimesA_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({cMinusD[23],cMinusD[23],cMinusD[23],cMinusD[23],cMinusD[23],cMinusD[23],cMinusD[23],cMinusD[23],cMinusD[23],cMinusD[23],cMinusD[23],cMinusD[23:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_cMinusDtimesA_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_cMinusDtimesA_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_cMinusDtimesA_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(CEA1),
        .CEA2(ready01_out),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(cMinusDtimesA),
        .CLK(s00_axi_aclk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_cMinusDtimesA_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_cMinusDtimesA_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_cMinusDtimesA_reg_P_UNCONNECTED[47:17],outr0[23:7]}),
        .PATTERNBDETECT(NLW_cMinusDtimesA_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_cMinusDtimesA_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({cMinusDtimesA0_n_106,cMinusDtimesA0_n_107,cMinusDtimesA0_n_108,cMinusDtimesA0_n_109,cMinusDtimesA0_n_110,cMinusDtimesA0_n_111,cMinusDtimesA0_n_112,cMinusDtimesA0_n_113,cMinusDtimesA0_n_114,cMinusDtimesA0_n_115,cMinusDtimesA0_n_116,cMinusDtimesA0_n_117,cMinusDtimesA0_n_118,cMinusDtimesA0_n_119,cMinusDtimesA0_n_120,cMinusDtimesA0_n_121,cMinusDtimesA0_n_122,cMinusDtimesA0_n_123,cMinusDtimesA0_n_124,cMinusDtimesA0_n_125,cMinusDtimesA0_n_126,cMinusDtimesA0_n_127,cMinusDtimesA0_n_128,cMinusDtimesA0_n_129,cMinusDtimesA0_n_130,cMinusDtimesA0_n_131,cMinusDtimesA0_n_132,cMinusDtimesA0_n_133,cMinusDtimesA0_n_134,cMinusDtimesA0_n_135,cMinusDtimesA0_n_136,cMinusDtimesA0_n_137,cMinusDtimesA0_n_138,cMinusDtimesA0_n_139,cMinusDtimesA0_n_140,cMinusDtimesA0_n_141,cMinusDtimesA0_n_142,cMinusDtimesA0_n_143,cMinusDtimesA0_n_144,cMinusDtimesA0_n_145,cMinusDtimesA0_n_146,cMinusDtimesA0_n_147,cMinusDtimesA0_n_148,cMinusDtimesA0_n_149,cMinusDtimesA0_n_150,cMinusDtimesA0_n_151,cMinusDtimesA0_n_152,cMinusDtimesA0_n_153}),
        .PCOUT(NLW_cMinusDtimesA_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_cMinusDtimesA_reg_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_cMinusDtimesA_reg_XOROUT_UNCONNECTED[7:0]));
  FDRE \cMinusDtimesA_reg[10] 
       (.C(s00_axi_aclk),
        .CE(cMinusDtimesA),
        .D(cMinusDtimesA0_n_95),
        .Q(outr0[0]),
        .R(1'b0));
  FDRE \cMinusDtimesA_reg[11] 
       (.C(s00_axi_aclk),
        .CE(cMinusDtimesA),
        .D(cMinusDtimesA0_n_94),
        .Q(outr0[1]),
        .R(1'b0));
  FDRE \cMinusDtimesA_reg[12] 
       (.C(s00_axi_aclk),
        .CE(cMinusDtimesA),
        .D(cMinusDtimesA0_n_93),
        .Q(outr0[2]),
        .R(1'b0));
  FDRE \cMinusDtimesA_reg[13] 
       (.C(s00_axi_aclk),
        .CE(cMinusDtimesA),
        .D(cMinusDtimesA0_n_92),
        .Q(outr0[3]),
        .R(1'b0));
  FDRE \cMinusDtimesA_reg[14] 
       (.C(s00_axi_aclk),
        .CE(cMinusDtimesA),
        .D(cMinusDtimesA0_n_91),
        .Q(outr0[4]),
        .R(1'b0));
  FDRE \cMinusDtimesA_reg[15] 
       (.C(s00_axi_aclk),
        .CE(cMinusDtimesA),
        .D(cMinusDtimesA0_n_90),
        .Q(outr0[5]),
        .R(1'b0));
  FDRE \cMinusDtimesA_reg[16] 
       (.C(s00_axi_aclk),
        .CE(cMinusDtimesA),
        .D(cMinusDtimesA0_n_89),
        .Q(outr0[6]),
        .R(1'b0));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    cPlusDtimesB0
       (.A({\shift_reg[1]_0 [23],\shift_reg[1]_0 [23],\shift_reg[1]_0 [23],\shift_reg[1]_0 [23],\shift_reg[1]_0 [23],\shift_reg[1]_0 [23],\shift_reg[1]_0 }),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_cPlusDtimesB0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,cPlusD[16:2],1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_cPlusDtimesB0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_cPlusDtimesB0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_cPlusDtimesB0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(CEA1),
        .CEA2(ready01_out),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(s00_axi_aclk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_cPlusDtimesB0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_cPlusDtimesB0_OVERFLOW_UNCONNECTED),
        .P({cPlusDtimesB0_n_58,cPlusDtimesB0_n_59,cPlusDtimesB0_n_60,cPlusDtimesB0_n_61,cPlusDtimesB0_n_62,cPlusDtimesB0_n_63,cPlusDtimesB0_n_64,cPlusDtimesB0_n_65,cPlusDtimesB0_n_66,cPlusDtimesB0_n_67,cPlusDtimesB0_n_68,cPlusDtimesB0_n_69,cPlusDtimesB0_n_70,cPlusDtimesB0_n_71,cPlusDtimesB0_n_72,cPlusDtimesB0_n_73,cPlusDtimesB0_n_74,cPlusDtimesB0_n_75,cPlusDtimesB0_n_76,cPlusDtimesB0_n_77,cPlusDtimesB0_n_78,cPlusDtimesB0_n_79,cPlusDtimesB0_n_80,cPlusDtimesB0_n_81,cPlusDtimesB0_n_82,cPlusDtimesB0_n_83,cPlusDtimesB0_n_84,cPlusDtimesB0_n_85,cPlusDtimesB0_n_86,cPlusDtimesB0_n_87,cPlusDtimesB0_n_88,cPlusDtimesB0_n_89,cPlusDtimesB0_n_90,cPlusDtimesB0_n_91,cPlusDtimesB0_n_92,cPlusDtimesB0_n_93,cPlusDtimesB0_n_94,cPlusDtimesB0_n_95,cPlusDtimesB0_n_96,cPlusDtimesB0_n_97,cPlusDtimesB0_n_98,cPlusDtimesB0_n_99,cPlusDtimesB0_n_100,cPlusDtimesB0_n_101,cPlusDtimesB0_n_102,cPlusDtimesB0_n_103,cPlusDtimesB0_n_104,cPlusDtimesB0_n_105}),
        .PATTERNBDETECT(NLW_cPlusDtimesB0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_cPlusDtimesB0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({cPlusDtimesB0_n_106,cPlusDtimesB0_n_107,cPlusDtimesB0_n_108,cPlusDtimesB0_n_109,cPlusDtimesB0_n_110,cPlusDtimesB0_n_111,cPlusDtimesB0_n_112,cPlusDtimesB0_n_113,cPlusDtimesB0_n_114,cPlusDtimesB0_n_115,cPlusDtimesB0_n_116,cPlusDtimesB0_n_117,cPlusDtimesB0_n_118,cPlusDtimesB0_n_119,cPlusDtimesB0_n_120,cPlusDtimesB0_n_121,cPlusDtimesB0_n_122,cPlusDtimesB0_n_123,cPlusDtimesB0_n_124,cPlusDtimesB0_n_125,cPlusDtimesB0_n_126,cPlusDtimesB0_n_127,cPlusDtimesB0_n_128,cPlusDtimesB0_n_129,cPlusDtimesB0_n_130,cPlusDtimesB0_n_131,cPlusDtimesB0_n_132,cPlusDtimesB0_n_133,cPlusDtimesB0_n_134,cPlusDtimesB0_n_135,cPlusDtimesB0_n_136,cPlusDtimesB0_n_137,cPlusDtimesB0_n_138,cPlusDtimesB0_n_139,cPlusDtimesB0_n_140,cPlusDtimesB0_n_141,cPlusDtimesB0_n_142,cPlusDtimesB0_n_143,cPlusDtimesB0_n_144,cPlusDtimesB0_n_145,cPlusDtimesB0_n_146,cPlusDtimesB0_n_147,cPlusDtimesB0_n_148,cPlusDtimesB0_n_149,cPlusDtimesB0_n_150,cPlusDtimesB0_n_151,cPlusDtimesB0_n_152,cPlusDtimesB0_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_cPlusDtimesB0_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_cPlusDtimesB0_XOROUT_UNCONNECTED[7:0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 cPlusDtimesB0_i_1
       (.CI(cPlusDtimesB0_i_2_n_0),
        .CI_TOP(1'b0),
        .CO({cPlusDtimesB0_i_1_n_0,cPlusDtimesB0_i_1_n_1,cPlusDtimesB0_i_1_n_2,cPlusDtimesB0_i_1_n_3,cPlusDtimesB0_i_1_n_4,cPlusDtimesB0_i_1_n_5,cPlusDtimesB0_i_1_n_6,cPlusDtimesB0_i_1_n_7}),
        .DI({mul2R[3],mul2R[3],mul2R[3],mul2R[3],mul2R[3],mul2R[3],mul2R[3:2]}),
        .O(cPlusD[17:10]),
        .S({cPlusDtimesB0_i_27_n_0,cPlusDtimesB0_i_28_n_0,cPlusDtimesB0_i_29_n_0,cPlusDtimesB0_i_30_n_0,cPlusDtimesB0_i_31_n_0,cPlusDtimesB0_i_32_n_0,cPlusDtimesB0_i_33_n_0,cPlusDtimesB0_i_34_n_0}));
  MUXF7 cPlusDtimesB0_i_10
       (.I0(cPlusDtimesB0_i_52_n_0),
        .I1(cPlusDtimesB0_i_53_n_0),
        .O(\shift_reg[1]_0 [16]),
        .S(cMinusDtimesA0_i_28_n_0));
  MUXF7 cPlusDtimesB0_i_11
       (.I0(cPlusDtimesB0_i_54_n_0),
        .I1(cPlusDtimesB0_i_55_n_0),
        .O(\shift_reg[1]_0 [15]),
        .S(cMinusDtimesA0_i_28_n_0));
  MUXF7 cPlusDtimesB0_i_12
       (.I0(cPlusDtimesB0_i_56_n_0),
        .I1(cPlusDtimesB0_i_57_n_0),
        .O(\shift_reg[1]_0 [14]),
        .S(cMinusDtimesA0_i_28_n_0));
  MUXF7 cPlusDtimesB0_i_13
       (.I0(cPlusDtimesB0_i_58_n_0),
        .I1(cPlusDtimesB0_i_59_n_0),
        .O(\shift_reg[1]_0 [13]),
        .S(cMinusDtimesA0_i_28_n_0));
  MUXF7 cPlusDtimesB0_i_14
       (.I0(cPlusDtimesB0_i_60_n_0),
        .I1(cPlusDtimesB0_i_61_n_0),
        .O(\shift_reg[1]_0 [12]),
        .S(cMinusDtimesA0_i_28_n_0));
  MUXF7 cPlusDtimesB0_i_15
       (.I0(cPlusDtimesB0_i_62_n_0),
        .I1(cPlusDtimesB0_i_63_n_0),
        .O(\shift_reg[1]_0 [11]),
        .S(cMinusDtimesA0_i_28_n_0));
  MUXF7 cPlusDtimesB0_i_16
       (.I0(cPlusDtimesB0_i_64_n_0),
        .I1(cPlusDtimesB0_i_65_n_0),
        .O(\shift_reg[1]_0 [10]),
        .S(cMinusDtimesA0_i_28_n_0));
  MUXF7 cPlusDtimesB0_i_17
       (.I0(cPlusDtimesB0_i_66_n_0),
        .I1(cPlusDtimesB0_i_67_n_0),
        .O(\shift_reg[1]_0 [9]),
        .S(cMinusDtimesA0_i_28_n_0));
  MUXF7 cPlusDtimesB0_i_18
       (.I0(cPlusDtimesB0_i_68_n_0),
        .I1(cPlusDtimesB0_i_69_n_0),
        .O(\shift_reg[1]_0 [8]),
        .S(cMinusDtimesA0_i_28_n_0));
  MUXF7 cPlusDtimesB0_i_19
       (.I0(cPlusDtimesB0_i_70_n_0),
        .I1(cPlusDtimesB0_i_71_n_0),
        .O(\shift_reg[1]_0 [7]),
        .S(cMinusDtimesA0_i_28_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 cPlusDtimesB0_i_2
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({cPlusDtimesB0_i_2_n_0,cPlusDtimesB0_i_2_n_1,cPlusDtimesB0_i_2_n_2,cPlusDtimesB0_i_2_n_3,cPlusDtimesB0_i_2_n_4,cPlusDtimesB0_i_2_n_5,cPlusDtimesB0_i_2_n_6,cPlusDtimesB0_i_2_n_7}),
        .DI({mul2R[1],mul2R[3],mul2R[1],mul2R[1],mul2R[3],mul2R[1],mul2R[3],mul2R[0]}),
        .O(cPlusD[9:2]),
        .S({mul2R[1],cPlusDtimesB0_i_35_n_0,mul2R[1],mul2R[1],cPlusDtimesB0_i_36_n_0,mul2R[1],cPlusDtimesB0_i_37_n_0,1'b0}));
  MUXF7 cPlusDtimesB0_i_20
       (.I0(cPlusDtimesB0_i_72_n_0),
        .I1(cPlusDtimesB0_i_73_n_0),
        .O(\shift_reg[1]_0 [6]),
        .S(cMinusDtimesA0_i_28_n_0));
  MUXF7 cPlusDtimesB0_i_21
       (.I0(cPlusDtimesB0_i_74_n_0),
        .I1(cPlusDtimesB0_i_75_n_0),
        .O(\shift_reg[1]_0 [5]),
        .S(cMinusDtimesA0_i_28_n_0));
  MUXF7 cPlusDtimesB0_i_22
       (.I0(cPlusDtimesB0_i_76_n_0),
        .I1(cPlusDtimesB0_i_77_n_0),
        .O(\shift_reg[1]_0 [4]),
        .S(cMinusDtimesA0_i_28_n_0));
  MUXF7 cPlusDtimesB0_i_23
       (.I0(cPlusDtimesB0_i_78_n_0),
        .I1(cPlusDtimesB0_i_79_n_0),
        .O(\shift_reg[1]_0 [3]),
        .S(cMinusDtimesA0_i_28_n_0));
  MUXF7 cPlusDtimesB0_i_24
       (.I0(cPlusDtimesB0_i_80_n_0),
        .I1(cPlusDtimesB0_i_81_n_0),
        .O(\shift_reg[1]_0 [2]),
        .S(cMinusDtimesA0_i_28_n_0));
  MUXF7 cPlusDtimesB0_i_25
       (.I0(cPlusDtimesB0_i_82_n_0),
        .I1(cPlusDtimesB0_i_83_n_0),
        .O(\shift_reg[1]_0 [1]),
        .S(cMinusDtimesA0_i_28_n_0));
  MUXF7 cPlusDtimesB0_i_26
       (.I0(cPlusDtimesB0_i_84_n_0),
        .I1(cPlusDtimesB0_i_85_n_0),
        .O(\shift_reg[1]_0 [0]),
        .S(cMinusDtimesA0_i_28_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cPlusDtimesB0_i_27
       (.I0(mul2I),
        .I1(mul2R[3]),
        .O(cPlusDtimesB0_i_27_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cPlusDtimesB0_i_28
       (.I0(mul2I),
        .I1(mul2R[3]),
        .O(cPlusDtimesB0_i_28_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cPlusDtimesB0_i_29
       (.I0(mul2I),
        .I1(mul2R[3]),
        .O(cPlusDtimesB0_i_29_n_0));
  MUXF7 cPlusDtimesB0_i_3
       (.I0(cPlusDtimesB0_i_38_n_0),
        .I1(cPlusDtimesB0_i_39_n_0),
        .O(\shift_reg[1]_0 [23]),
        .S(cMinusDtimesA0_i_28_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cPlusDtimesB0_i_30
       (.I0(mul2I),
        .I1(mul2R[3]),
        .O(cPlusDtimesB0_i_30_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cPlusDtimesB0_i_31
       (.I0(mul2I),
        .I1(mul2R[3]),
        .O(cPlusDtimesB0_i_31_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cPlusDtimesB0_i_32
       (.I0(mul2I),
        .I1(mul2R[3]),
        .O(cPlusDtimesB0_i_32_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cPlusDtimesB0_i_33
       (.I0(mul2I),
        .I1(mul2R[3]),
        .O(cPlusDtimesB0_i_33_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cPlusDtimesB0_i_34
       (.I0(mul2I),
        .I1(mul2R[2]),
        .O(cPlusDtimesB0_i_34_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cPlusDtimesB0_i_35
       (.I0(mul2R[0]),
        .I1(mul2R[3]),
        .O(cPlusDtimesB0_i_35_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cPlusDtimesB0_i_36
       (.I0(mul2R[0]),
        .I1(mul2R[3]),
        .O(cPlusDtimesB0_i_36_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cPlusDtimesB0_i_37
       (.I0(mul2R[0]),
        .I1(mul2R[3]),
        .O(cPlusDtimesB0_i_37_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cPlusDtimesB0_i_38
       (.I0(dataQ[119]),
        .I1(dataQ[143]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataQ[167]),
        .I4(\topIdx_reg[0] ),
        .I5(dataQ[191]),
        .O(cPlusDtimesB0_i_38_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cPlusDtimesB0_i_39
       (.I0(dataQ[23]),
        .I1(dataQ[47]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataQ[71]),
        .I4(\topIdx_reg[0] ),
        .I5(dataQ[95]),
        .O(cPlusDtimesB0_i_39_n_0));
  MUXF7 cPlusDtimesB0_i_4
       (.I0(cPlusDtimesB0_i_40_n_0),
        .I1(cPlusDtimesB0_i_41_n_0),
        .O(\shift_reg[1]_0 [22]),
        .S(cMinusDtimesA0_i_28_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cPlusDtimesB0_i_40
       (.I0(dataQ[118]),
        .I1(dataQ[142]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataQ[166]),
        .I4(\topIdx_reg[0] ),
        .I5(dataQ[190]),
        .O(cPlusDtimesB0_i_40_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cPlusDtimesB0_i_41
       (.I0(dataQ[22]),
        .I1(dataQ[46]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataQ[70]),
        .I4(\topIdx_reg[0] ),
        .I5(dataQ[94]),
        .O(cPlusDtimesB0_i_41_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cPlusDtimesB0_i_42
       (.I0(dataQ[117]),
        .I1(dataQ[141]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataQ[165]),
        .I4(\topIdx_reg[0] ),
        .I5(dataQ[189]),
        .O(cPlusDtimesB0_i_42_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cPlusDtimesB0_i_43
       (.I0(dataQ[21]),
        .I1(dataQ[45]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataQ[69]),
        .I4(\topIdx_reg[0] ),
        .I5(dataQ[93]),
        .O(cPlusDtimesB0_i_43_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cPlusDtimesB0_i_44
       (.I0(dataQ[116]),
        .I1(dataQ[140]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataQ[164]),
        .I4(\topIdx_reg[0] ),
        .I5(dataQ[188]),
        .O(cPlusDtimesB0_i_44_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cPlusDtimesB0_i_45
       (.I0(dataQ[20]),
        .I1(dataQ[44]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataQ[68]),
        .I4(\topIdx_reg[0] ),
        .I5(dataQ[92]),
        .O(cPlusDtimesB0_i_45_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cPlusDtimesB0_i_46
       (.I0(dataQ[115]),
        .I1(dataQ[139]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataQ[163]),
        .I4(\topIdx_reg[0] ),
        .I5(dataQ[187]),
        .O(cPlusDtimesB0_i_46_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cPlusDtimesB0_i_47
       (.I0(dataQ[19]),
        .I1(dataQ[43]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataQ[67]),
        .I4(\topIdx_reg[0] ),
        .I5(dataQ[91]),
        .O(cPlusDtimesB0_i_47_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cPlusDtimesB0_i_48
       (.I0(dataQ[114]),
        .I1(dataQ[138]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataQ[162]),
        .I4(\topIdx_reg[0] ),
        .I5(dataQ[186]),
        .O(cPlusDtimesB0_i_48_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cPlusDtimesB0_i_49
       (.I0(dataQ[18]),
        .I1(dataQ[42]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataQ[66]),
        .I4(\topIdx_reg[0] ),
        .I5(dataQ[90]),
        .O(cPlusDtimesB0_i_49_n_0));
  MUXF7 cPlusDtimesB0_i_5
       (.I0(cPlusDtimesB0_i_42_n_0),
        .I1(cPlusDtimesB0_i_43_n_0),
        .O(\shift_reg[1]_0 [21]),
        .S(cMinusDtimesA0_i_28_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cPlusDtimesB0_i_50
       (.I0(dataQ[113]),
        .I1(dataQ[137]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataQ[161]),
        .I4(\topIdx_reg[0] ),
        .I5(dataQ[185]),
        .O(cPlusDtimesB0_i_50_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cPlusDtimesB0_i_51
       (.I0(dataQ[17]),
        .I1(dataQ[41]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataQ[65]),
        .I4(\topIdx_reg[0] ),
        .I5(dataQ[89]),
        .O(cPlusDtimesB0_i_51_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cPlusDtimesB0_i_52
       (.I0(dataQ[112]),
        .I1(dataQ[136]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataQ[160]),
        .I4(\topIdx_reg[0] ),
        .I5(dataQ[184]),
        .O(cPlusDtimesB0_i_52_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cPlusDtimesB0_i_53
       (.I0(dataQ[16]),
        .I1(dataQ[40]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataQ[64]),
        .I4(\topIdx_reg[0] ),
        .I5(dataQ[88]),
        .O(cPlusDtimesB0_i_53_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cPlusDtimesB0_i_54
       (.I0(dataQ[111]),
        .I1(dataQ[135]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataQ[159]),
        .I4(\topIdx_reg[0] ),
        .I5(dataQ[183]),
        .O(cPlusDtimesB0_i_54_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cPlusDtimesB0_i_55
       (.I0(dataQ[15]),
        .I1(dataQ[39]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataQ[63]),
        .I4(\topIdx_reg[0] ),
        .I5(dataQ[87]),
        .O(cPlusDtimesB0_i_55_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cPlusDtimesB0_i_56
       (.I0(dataQ[110]),
        .I1(dataQ[134]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataQ[158]),
        .I4(\topIdx_reg[0] ),
        .I5(dataQ[182]),
        .O(cPlusDtimesB0_i_56_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cPlusDtimesB0_i_57
       (.I0(dataQ[14]),
        .I1(dataQ[38]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataQ[62]),
        .I4(\topIdx_reg[0] ),
        .I5(dataQ[86]),
        .O(cPlusDtimesB0_i_57_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cPlusDtimesB0_i_58
       (.I0(dataQ[109]),
        .I1(dataQ[133]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataQ[157]),
        .I4(\topIdx_reg[0] ),
        .I5(dataQ[181]),
        .O(cPlusDtimesB0_i_58_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cPlusDtimesB0_i_59
       (.I0(dataQ[13]),
        .I1(dataQ[37]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataQ[61]),
        .I4(\topIdx_reg[0] ),
        .I5(dataQ[85]),
        .O(cPlusDtimesB0_i_59_n_0));
  MUXF7 cPlusDtimesB0_i_6
       (.I0(cPlusDtimesB0_i_44_n_0),
        .I1(cPlusDtimesB0_i_45_n_0),
        .O(\shift_reg[1]_0 [20]),
        .S(cMinusDtimesA0_i_28_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cPlusDtimesB0_i_60
       (.I0(dataQ[108]),
        .I1(dataQ[132]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataQ[156]),
        .I4(\topIdx_reg[0] ),
        .I5(dataQ[180]),
        .O(cPlusDtimesB0_i_60_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cPlusDtimesB0_i_61
       (.I0(dataQ[12]),
        .I1(dataQ[36]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataQ[60]),
        .I4(\topIdx_reg[0] ),
        .I5(dataQ[84]),
        .O(cPlusDtimesB0_i_61_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cPlusDtimesB0_i_62
       (.I0(dataQ[107]),
        .I1(dataQ[131]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataQ[155]),
        .I4(\topIdx_reg[0] ),
        .I5(dataQ[179]),
        .O(cPlusDtimesB0_i_62_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cPlusDtimesB0_i_63
       (.I0(dataQ[11]),
        .I1(dataQ[35]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataQ[59]),
        .I4(\topIdx_reg[0] ),
        .I5(dataQ[83]),
        .O(cPlusDtimesB0_i_63_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cPlusDtimesB0_i_64
       (.I0(dataQ[106]),
        .I1(dataQ[130]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataQ[154]),
        .I4(\topIdx_reg[0] ),
        .I5(dataQ[178]),
        .O(cPlusDtimesB0_i_64_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cPlusDtimesB0_i_65
       (.I0(dataQ[10]),
        .I1(dataQ[34]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataQ[58]),
        .I4(\topIdx_reg[0] ),
        .I5(dataQ[82]),
        .O(cPlusDtimesB0_i_65_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cPlusDtimesB0_i_66
       (.I0(dataQ[105]),
        .I1(dataQ[129]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataQ[153]),
        .I4(\topIdx_reg[0] ),
        .I5(dataQ[177]),
        .O(cPlusDtimesB0_i_66_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cPlusDtimesB0_i_67
       (.I0(dataQ[9]),
        .I1(dataQ[33]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataQ[57]),
        .I4(\topIdx_reg[0] ),
        .I5(dataQ[81]),
        .O(cPlusDtimesB0_i_67_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cPlusDtimesB0_i_68
       (.I0(dataQ[104]),
        .I1(dataQ[128]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataQ[152]),
        .I4(\topIdx_reg[0] ),
        .I5(dataQ[176]),
        .O(cPlusDtimesB0_i_68_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cPlusDtimesB0_i_69
       (.I0(dataQ[8]),
        .I1(dataQ[32]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataQ[56]),
        .I4(\topIdx_reg[0] ),
        .I5(dataQ[80]),
        .O(cPlusDtimesB0_i_69_n_0));
  MUXF7 cPlusDtimesB0_i_7
       (.I0(cPlusDtimesB0_i_46_n_0),
        .I1(cPlusDtimesB0_i_47_n_0),
        .O(\shift_reg[1]_0 [19]),
        .S(cMinusDtimesA0_i_28_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cPlusDtimesB0_i_70
       (.I0(dataQ[103]),
        .I1(dataQ[127]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataQ[151]),
        .I4(\topIdx_reg[0] ),
        .I5(dataQ[175]),
        .O(cPlusDtimesB0_i_70_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cPlusDtimesB0_i_71
       (.I0(dataQ[7]),
        .I1(dataQ[31]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataQ[55]),
        .I4(\topIdx_reg[0] ),
        .I5(dataQ[79]),
        .O(cPlusDtimesB0_i_71_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cPlusDtimesB0_i_72
       (.I0(dataQ[102]),
        .I1(dataQ[126]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataQ[150]),
        .I4(\topIdx_reg[0] ),
        .I5(dataQ[174]),
        .O(cPlusDtimesB0_i_72_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cPlusDtimesB0_i_73
       (.I0(dataQ[6]),
        .I1(dataQ[30]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataQ[54]),
        .I4(\topIdx_reg[0] ),
        .I5(dataQ[78]),
        .O(cPlusDtimesB0_i_73_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cPlusDtimesB0_i_74
       (.I0(dataQ[101]),
        .I1(dataQ[125]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataQ[149]),
        .I4(\topIdx_reg[0] ),
        .I5(dataQ[173]),
        .O(cPlusDtimesB0_i_74_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cPlusDtimesB0_i_75
       (.I0(dataQ[5]),
        .I1(dataQ[29]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataQ[53]),
        .I4(\topIdx_reg[0] ),
        .I5(dataQ[77]),
        .O(cPlusDtimesB0_i_75_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cPlusDtimesB0_i_76
       (.I0(dataQ[100]),
        .I1(dataQ[124]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataQ[148]),
        .I4(\topIdx_reg[0] ),
        .I5(dataQ[172]),
        .O(cPlusDtimesB0_i_76_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cPlusDtimesB0_i_77
       (.I0(dataQ[4]),
        .I1(dataQ[28]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataQ[52]),
        .I4(\topIdx_reg[0] ),
        .I5(dataQ[76]),
        .O(cPlusDtimesB0_i_77_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cPlusDtimesB0_i_78
       (.I0(dataQ[99]),
        .I1(dataQ[123]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataQ[147]),
        .I4(\topIdx_reg[0] ),
        .I5(dataQ[171]),
        .O(cPlusDtimesB0_i_78_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cPlusDtimesB0_i_79
       (.I0(dataQ[3]),
        .I1(dataQ[27]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataQ[51]),
        .I4(\topIdx_reg[0] ),
        .I5(dataQ[75]),
        .O(cPlusDtimesB0_i_79_n_0));
  MUXF7 cPlusDtimesB0_i_8
       (.I0(cPlusDtimesB0_i_48_n_0),
        .I1(cPlusDtimesB0_i_49_n_0),
        .O(\shift_reg[1]_0 [18]),
        .S(cMinusDtimesA0_i_28_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cPlusDtimesB0_i_80
       (.I0(dataQ[98]),
        .I1(dataQ[122]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataQ[146]),
        .I4(\topIdx_reg[0] ),
        .I5(dataQ[170]),
        .O(cPlusDtimesB0_i_80_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cPlusDtimesB0_i_81
       (.I0(dataQ[2]),
        .I1(dataQ[26]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataQ[50]),
        .I4(\topIdx_reg[0] ),
        .I5(dataQ[74]),
        .O(cPlusDtimesB0_i_81_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cPlusDtimesB0_i_82
       (.I0(dataQ[97]),
        .I1(dataQ[121]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataQ[145]),
        .I4(\topIdx_reg[0] ),
        .I5(dataQ[169]),
        .O(cPlusDtimesB0_i_82_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cPlusDtimesB0_i_83
       (.I0(dataQ[1]),
        .I1(dataQ[25]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataQ[49]),
        .I4(\topIdx_reg[0] ),
        .I5(dataQ[73]),
        .O(cPlusDtimesB0_i_83_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cPlusDtimesB0_i_84
       (.I0(dataQ[96]),
        .I1(dataQ[120]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataQ[144]),
        .I4(\topIdx_reg[0] ),
        .I5(dataQ[168]),
        .O(cPlusDtimesB0_i_84_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    cPlusDtimesB0_i_85
       (.I0(dataQ[0]),
        .I1(dataQ[24]),
        .I2(\bottomIdx_reg[1]_0 ),
        .I3(dataQ[48]),
        .I4(\topIdx_reg[0] ),
        .I5(dataQ[72]),
        .O(cPlusDtimesB0_i_85_n_0));
  MUXF7 cPlusDtimesB0_i_9
       (.I0(cPlusDtimesB0_i_50_n_0),
        .I1(cPlusDtimesB0_i_51_n_0),
        .O(\shift_reg[1]_0 [17]),
        .S(cMinusDtimesA0_i_28_n_0));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    cPlusDtimesB_reg
       (.A({\shift_reg[1]_0 [16],\shift_reg[1]_0 [16],\shift_reg[1]_0 [16],\shift_reg[1]_0 [16],\shift_reg[1]_0 [16],\shift_reg[1]_0 [16],\shift_reg[1]_0 [16],\shift_reg[1]_0 [16],\shift_reg[1]_0 [16],\shift_reg[1]_0 [16],\shift_reg[1]_0 [16],\shift_reg[1]_0 [16],\shift_reg[1]_0 [16],\shift_reg[1]_0 [16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_cPlusDtimesB_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({cPlusD[23],cPlusD[23],cPlusD[23],cPlusD[23],cPlusD[23],cPlusD[23],cPlusD[23],cPlusD[23],cPlusD[23],cPlusD[23],cPlusD[23],cPlusD[23:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_cPlusDtimesB_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_cPlusDtimesB_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_cPlusDtimesB_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(CEA1),
        .CEA2(ready01_out),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(ready0_1),
        .CLK(s00_axi_aclk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_cPlusDtimesB_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_cPlusDtimesB_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_cPlusDtimesB_reg_P_UNCONNECTED[47:17],outi0[23:7]}),
        .PATTERNBDETECT(NLW_cPlusDtimesB_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_cPlusDtimesB_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({cPlusDtimesB0_n_106,cPlusDtimesB0_n_107,cPlusDtimesB0_n_108,cPlusDtimesB0_n_109,cPlusDtimesB0_n_110,cPlusDtimesB0_n_111,cPlusDtimesB0_n_112,cPlusDtimesB0_n_113,cPlusDtimesB0_n_114,cPlusDtimesB0_n_115,cPlusDtimesB0_n_116,cPlusDtimesB0_n_117,cPlusDtimesB0_n_118,cPlusDtimesB0_n_119,cPlusDtimesB0_n_120,cPlusDtimesB0_n_121,cPlusDtimesB0_n_122,cPlusDtimesB0_n_123,cPlusDtimesB0_n_124,cPlusDtimesB0_n_125,cPlusDtimesB0_n_126,cPlusDtimesB0_n_127,cPlusDtimesB0_n_128,cPlusDtimesB0_n_129,cPlusDtimesB0_n_130,cPlusDtimesB0_n_131,cPlusDtimesB0_n_132,cPlusDtimesB0_n_133,cPlusDtimesB0_n_134,cPlusDtimesB0_n_135,cPlusDtimesB0_n_136,cPlusDtimesB0_n_137,cPlusDtimesB0_n_138,cPlusDtimesB0_n_139,cPlusDtimesB0_n_140,cPlusDtimesB0_n_141,cPlusDtimesB0_n_142,cPlusDtimesB0_n_143,cPlusDtimesB0_n_144,cPlusDtimesB0_n_145,cPlusDtimesB0_n_146,cPlusDtimesB0_n_147,cPlusDtimesB0_n_148,cPlusDtimesB0_n_149,cPlusDtimesB0_n_150,cPlusDtimesB0_n_151,cPlusDtimesB0_n_152,cPlusDtimesB0_n_153}),
        .PCOUT(NLW_cPlusDtimesB_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_cPlusDtimesB_reg_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_cPlusDtimesB_reg_XOROUT_UNCONNECTED[7:0]));
  FDRE \cPlusDtimesB_reg[10] 
       (.C(s00_axi_aclk),
        .CE(ready0_1),
        .D(cPlusDtimesB0_n_95),
        .Q(outi0[0]),
        .R(1'b0));
  FDRE \cPlusDtimesB_reg[11] 
       (.C(s00_axi_aclk),
        .CE(ready0_1),
        .D(cPlusDtimesB0_n_94),
        .Q(outi0[1]),
        .R(1'b0));
  FDRE \cPlusDtimesB_reg[12] 
       (.C(s00_axi_aclk),
        .CE(ready0_1),
        .D(cPlusDtimesB0_n_93),
        .Q(outi0[2]),
        .R(1'b0));
  FDRE \cPlusDtimesB_reg[13] 
       (.C(s00_axi_aclk),
        .CE(ready0_1),
        .D(cPlusDtimesB0_n_92),
        .Q(outi0[3]),
        .R(1'b0));
  FDRE \cPlusDtimesB_reg[14] 
       (.C(s00_axi_aclk),
        .CE(ready0_1),
        .D(cPlusDtimesB0_n_91),
        .Q(outi0[4]),
        .R(1'b0));
  FDRE \cPlusDtimesB_reg[15] 
       (.C(s00_axi_aclk),
        .CE(ready0_1),
        .D(cPlusDtimesB0_n_90),
        .Q(outi0[5]),
        .R(1'b0));
  FDRE \cPlusDtimesB_reg[16] 
       (.C(s00_axi_aclk),
        .CE(ready0_1),
        .D(cPlusDtimesB0_n_89),
        .Q(outi0[6]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 cPlusDtimesB_reg_i_1
       (.CI(cPlusDtimesB0_i_1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_cPlusDtimesB_reg_i_1_CO_UNCONNECTED[7:5],cPlusDtimesB_reg_i_1_n_3,cPlusDtimesB_reg_i_1_n_4,cPlusDtimesB_reg_i_1_n_5,cPlusDtimesB_reg_i_1_n_6,cPlusDtimesB_reg_i_1_n_7}),
        .DI({1'b0,1'b0,1'b0,mul2R[3],mul2R[3],mul2R[3],mul2R[3],mul2R[3]}),
        .O({NLW_cPlusDtimesB_reg_i_1_O_UNCONNECTED[7:6],cPlusD[23:18]}),
        .S({1'b0,1'b0,cPlusDtimesB_reg_i_2_n_0,cPlusDtimesB_reg_i_3_n_0,cPlusDtimesB_reg_i_4_n_0,cPlusDtimesB_reg_i_5_n_0,cPlusDtimesB_reg_i_6_n_0,cPlusDtimesB_reg_i_7_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    cPlusDtimesB_reg_i_2
       (.I0(mul2I),
        .I1(mul2R[3]),
        .O(cPlusDtimesB_reg_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cPlusDtimesB_reg_i_3
       (.I0(mul2I),
        .I1(mul2R[3]),
        .O(cPlusDtimesB_reg_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cPlusDtimesB_reg_i_4
       (.I0(mul2I),
        .I1(mul2R[3]),
        .O(cPlusDtimesB_reg_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cPlusDtimesB_reg_i_5
       (.I0(mul2I),
        .I1(mul2R[3]),
        .O(cPlusDtimesB_reg_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cPlusDtimesB_reg_i_6
       (.I0(mul2I),
        .I1(mul2R[3]),
        .O(cPlusDtimesB_reg_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cPlusDtimesB_reg_i_7
       (.I0(mul2I),
        .I1(mul2R[3]),
        .O(cPlusDtimesB_reg_i_7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    lastStartState_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(mulStart),
        .Q(lastStartState_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFAEAA)) 
    \mul/ 
       (.I0(ready0_1),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(lastStartState_0),
        .I3(mulStart),
        .I4(cMinusDtimesA),
        .O(\mul/_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    mulStart_i_1
       (.I0(\mul2Q_reg[0] ),
        .I1(lastStartState),
        .O(ready01_out));
  LUT2 #(
    .INIT(4'h2)) 
    mulStart_i_2
       (.I0(mulReady),
        .I1(mulPreviousReady),
        .O(ready0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 outi_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({outi_carry_n_0,outi_carry_n_1,outi_carry_n_2,outi_carry_n_3,outi_carry_n_4,outi_carry_n_5,outi_carry_n_6,outi_carry_n_7}),
        .DI(outi0[7:0]),
        .O(mulOutI[7:0]),
        .S({outi_carry_i_1_n_0,outi_carry_i_2_n_0,outi_carry_i_3_n_0,outi_carry_i_4_n_0,outi_carry_i_5_n_0,outi_carry_i_6_n_0,outi_carry_i_7_n_0,outi_carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 outi_carry__0
       (.CI(outi_carry_n_0),
        .CI_TOP(1'b0),
        .CO({outi_carry__0_n_0,outi_carry__0_n_1,outi_carry__0_n_2,outi_carry__0_n_3,outi_carry__0_n_4,outi_carry__0_n_5,outi_carry__0_n_6,outi_carry__0_n_7}),
        .DI(outi0[15:8]),
        .O(mulOutI[15:8]),
        .S({outi_carry__0_i_1_n_0,outi_carry__0_i_2_n_0,outi_carry__0_i_3_n_0,outi_carry__0_i_4_n_0,outi_carry__0_i_5_n_0,outi_carry__0_i_6_n_0,outi_carry__0_i_7_n_0,outi_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    outi_carry__0_i_1
       (.I0(outi0[15]),
        .I1(common[15]),
        .O(outi_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    outi_carry__0_i_2
       (.I0(outi0[14]),
        .I1(common[14]),
        .O(outi_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    outi_carry__0_i_3
       (.I0(outi0[13]),
        .I1(common[13]),
        .O(outi_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    outi_carry__0_i_4
       (.I0(outi0[12]),
        .I1(common[12]),
        .O(outi_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    outi_carry__0_i_5
       (.I0(outi0[11]),
        .I1(common[11]),
        .O(outi_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    outi_carry__0_i_6
       (.I0(outi0[10]),
        .I1(common[10]),
        .O(outi_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    outi_carry__0_i_7
       (.I0(outi0[9]),
        .I1(common[9]),
        .O(outi_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    outi_carry__0_i_8
       (.I0(outi0[8]),
        .I1(common[8]),
        .O(outi_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 outi_carry__1
       (.CI(outi_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_outi_carry__1_CO_UNCONNECTED[7],outi_carry__1_n_1,outi_carry__1_n_2,outi_carry__1_n_3,outi_carry__1_n_4,outi_carry__1_n_5,outi_carry__1_n_6,outi_carry__1_n_7}),
        .DI({1'b0,outi0[22:16]}),
        .O(mulOutI[23:16]),
        .S({outi_carry__1_i_1_n_0,outi_carry__1_i_2_n_0,outi_carry__1_i_3_n_0,outi_carry__1_i_4_n_0,outi_carry__1_i_5_n_0,outi_carry__1_i_6_n_0,outi_carry__1_i_7_n_0,outi_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    outi_carry__1_i_1
       (.I0(outi0[23]),
        .I1(common[23]),
        .O(outi_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    outi_carry__1_i_2
       (.I0(outi0[22]),
        .I1(common[22]),
        .O(outi_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    outi_carry__1_i_3
       (.I0(outi0[21]),
        .I1(common[21]),
        .O(outi_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    outi_carry__1_i_4
       (.I0(outi0[20]),
        .I1(common[20]),
        .O(outi_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    outi_carry__1_i_5
       (.I0(outi0[19]),
        .I1(common[19]),
        .O(outi_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    outi_carry__1_i_6
       (.I0(outi0[18]),
        .I1(common[18]),
        .O(outi_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    outi_carry__1_i_7
       (.I0(outi0[17]),
        .I1(common[17]),
        .O(outi_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    outi_carry__1_i_8
       (.I0(outi0[16]),
        .I1(common[16]),
        .O(outi_carry__1_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    outi_carry_i_1
       (.I0(outi0[7]),
        .I1(common[7]),
        .O(outi_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    outi_carry_i_2
       (.I0(outi0[6]),
        .I1(common[6]),
        .O(outi_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    outi_carry_i_3
       (.I0(outi0[5]),
        .I1(common[5]),
        .O(outi_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    outi_carry_i_4
       (.I0(outi0[4]),
        .I1(common[4]),
        .O(outi_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    outi_carry_i_5
       (.I0(outi0[3]),
        .I1(common[3]),
        .O(outi_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    outi_carry_i_6
       (.I0(outi0[2]),
        .I1(common[2]),
        .O(outi_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    outi_carry_i_7
       (.I0(outi0[1]),
        .I1(common[1]),
        .O(outi_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    outi_carry_i_8
       (.I0(outi0[0]),
        .I1(common[0]),
        .O(outi_carry_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 outr_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({outr_carry_n_0,outr_carry_n_1,outr_carry_n_2,outr_carry_n_3,outr_carry_n_4,outr_carry_n_5,outr_carry_n_6,outr_carry_n_7}),
        .DI(outr0[7:0]),
        .O(mulOutR[7:0]),
        .S({outr_carry_i_1_n_0,outr_carry_i_2_n_0,outr_carry_i_3_n_0,outr_carry_i_4_n_0,outr_carry_i_5_n_0,outr_carry_i_6_n_0,outr_carry_i_7_n_0,outr_carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 outr_carry__0
       (.CI(outr_carry_n_0),
        .CI_TOP(1'b0),
        .CO({outr_carry__0_n_0,outr_carry__0_n_1,outr_carry__0_n_2,outr_carry__0_n_3,outr_carry__0_n_4,outr_carry__0_n_5,outr_carry__0_n_6,outr_carry__0_n_7}),
        .DI(outr0[15:8]),
        .O(mulOutR[15:8]),
        .S({outr_carry__0_i_1_n_0,outr_carry__0_i_2_n_0,outr_carry__0_i_3_n_0,outr_carry__0_i_4_n_0,outr_carry__0_i_5_n_0,outr_carry__0_i_6_n_0,outr_carry__0_i_7_n_0,outr_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    outr_carry__0_i_1
       (.I0(outr0[15]),
        .I1(common[15]),
        .O(outr_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    outr_carry__0_i_2
       (.I0(outr0[14]),
        .I1(common[14]),
        .O(outr_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    outr_carry__0_i_3
       (.I0(outr0[13]),
        .I1(common[13]),
        .O(outr_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    outr_carry__0_i_4
       (.I0(outr0[12]),
        .I1(common[12]),
        .O(outr_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    outr_carry__0_i_5
       (.I0(outr0[11]),
        .I1(common[11]),
        .O(outr_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    outr_carry__0_i_6
       (.I0(outr0[10]),
        .I1(common[10]),
        .O(outr_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    outr_carry__0_i_7
       (.I0(outr0[9]),
        .I1(common[9]),
        .O(outr_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    outr_carry__0_i_8
       (.I0(outr0[8]),
        .I1(common[8]),
        .O(outr_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 outr_carry__1
       (.CI(outr_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_outr_carry__1_CO_UNCONNECTED[7],outr_carry__1_n_1,outr_carry__1_n_2,outr_carry__1_n_3,outr_carry__1_n_4,outr_carry__1_n_5,outr_carry__1_n_6,outr_carry__1_n_7}),
        .DI({1'b0,outr0[22:16]}),
        .O(mulOutR[23:16]),
        .S({outr_carry__1_i_1_n_0,outr_carry__1_i_2_n_0,outr_carry__1_i_3_n_0,outr_carry__1_i_4_n_0,outr_carry__1_i_5_n_0,outr_carry__1_i_6_n_0,outr_carry__1_i_7_n_0,outr_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    outr_carry__1_i_1
       (.I0(outr0[23]),
        .I1(common[23]),
        .O(outr_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    outr_carry__1_i_2
       (.I0(outr0[22]),
        .I1(common[22]),
        .O(outr_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    outr_carry__1_i_3
       (.I0(outr0[21]),
        .I1(common[21]),
        .O(outr_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    outr_carry__1_i_4
       (.I0(outr0[20]),
        .I1(common[20]),
        .O(outr_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    outr_carry__1_i_5
       (.I0(outr0[19]),
        .I1(common[19]),
        .O(outr_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    outr_carry__1_i_6
       (.I0(outr0[18]),
        .I1(common[18]),
        .O(outr_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    outr_carry__1_i_7
       (.I0(outr0[17]),
        .I1(common[17]),
        .O(outr_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    outr_carry__1_i_8
       (.I0(outr0[16]),
        .I1(common[16]),
        .O(outr_carry__1_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    outr_carry_i_1
       (.I0(outr0[7]),
        .I1(common[7]),
        .O(outr_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    outr_carry_i_2
       (.I0(outr0[6]),
        .I1(common[6]),
        .O(outr_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    outr_carry_i_3
       (.I0(outr0[5]),
        .I1(common[5]),
        .O(outr_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    outr_carry_i_4
       (.I0(outr0[4]),
        .I1(common[4]),
        .O(outr_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    outr_carry_i_5
       (.I0(outr0[3]),
        .I1(common[3]),
        .O(outr_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    outr_carry_i_6
       (.I0(outr0[2]),
        .I1(common[2]),
        .O(outr_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    outr_carry_i_7
       (.I0(outr0[1]),
        .I1(common[1]),
        .O(outr_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    outr_carry_i_8
       (.I0(outr0[0]),
        .I1(common[0]),
        .O(outr_carry_i_8_n_0));
  LUT5 #(
    .INIT(32'hFFFFFB00)) 
    ready_i_1
       (.I0(cMinusDtimesA),
        .I1(mulStart),
        .I2(lastStartState_0),
        .I3(mulReady),
        .I4(ready0_1),
        .O(ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(ready_i_1_n_0),
        .Q(mulReady),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \topI_out[15]_i_2 
       (.I0(\topI_out_reg[23] [15]),
        .I1(mulOutI[15]),
        .O(\topI_out[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \topI_out[15]_i_3 
       (.I0(\topI_out_reg[23] [14]),
        .I1(mulOutI[14]),
        .O(\topI_out[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \topI_out[15]_i_4 
       (.I0(\topI_out_reg[23] [13]),
        .I1(mulOutI[13]),
        .O(\topI_out[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \topI_out[15]_i_5 
       (.I0(\topI_out_reg[23] [12]),
        .I1(mulOutI[12]),
        .O(\topI_out[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \topI_out[15]_i_6 
       (.I0(\topI_out_reg[23] [11]),
        .I1(mulOutI[11]),
        .O(\topI_out[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \topI_out[15]_i_7 
       (.I0(\topI_out_reg[23] [10]),
        .I1(mulOutI[10]),
        .O(\topI_out[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \topI_out[15]_i_8 
       (.I0(\topI_out_reg[23] [9]),
        .I1(mulOutI[9]),
        .O(\topI_out[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \topI_out[15]_i_9 
       (.I0(\topI_out_reg[23] [8]),
        .I1(mulOutI[8]),
        .O(\topI_out[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \topI_out[23]_i_2 
       (.I0(\topI_out_reg[23] [23]),
        .I1(mulOutI[23]),
        .O(\topI_out[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \topI_out[23]_i_3 
       (.I0(\topI_out_reg[23] [22]),
        .I1(mulOutI[22]),
        .O(\topI_out[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \topI_out[23]_i_4 
       (.I0(\topI_out_reg[23] [21]),
        .I1(mulOutI[21]),
        .O(\topI_out[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \topI_out[23]_i_5 
       (.I0(\topI_out_reg[23] [20]),
        .I1(mulOutI[20]),
        .O(\topI_out[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \topI_out[23]_i_6 
       (.I0(\topI_out_reg[23] [19]),
        .I1(mulOutI[19]),
        .O(\topI_out[23]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \topI_out[23]_i_7 
       (.I0(\topI_out_reg[23] [18]),
        .I1(mulOutI[18]),
        .O(\topI_out[23]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \topI_out[23]_i_8 
       (.I0(\topI_out_reg[23] [17]),
        .I1(mulOutI[17]),
        .O(\topI_out[23]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \topI_out[23]_i_9 
       (.I0(\topI_out_reg[23] [16]),
        .I1(mulOutI[16]),
        .O(\topI_out[23]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \topI_out[7]_i_2 
       (.I0(\topI_out_reg[23] [7]),
        .I1(mulOutI[7]),
        .O(\topI_out[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \topI_out[7]_i_3 
       (.I0(\topI_out_reg[23] [6]),
        .I1(mulOutI[6]),
        .O(\topI_out[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \topI_out[7]_i_4 
       (.I0(\topI_out_reg[23] [5]),
        .I1(mulOutI[5]),
        .O(\topI_out[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \topI_out[7]_i_5 
       (.I0(\topI_out_reg[23] [4]),
        .I1(mulOutI[4]),
        .O(\topI_out[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \topI_out[7]_i_6 
       (.I0(\topI_out_reg[23] [3]),
        .I1(mulOutI[3]),
        .O(\topI_out[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \topI_out[7]_i_7 
       (.I0(\topI_out_reg[23] [2]),
        .I1(mulOutI[2]),
        .O(\topI_out[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \topI_out[7]_i_8 
       (.I0(\topI_out_reg[23] [1]),
        .I1(mulOutI[1]),
        .O(\topI_out[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \topI_out[7]_i_9 
       (.I0(\topI_out_reg[23] [0]),
        .I1(mulOutI[0]),
        .O(\topI_out[7]_i_9_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \topI_out_reg[15]_i_1 
       (.CI(\topI_out_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\topI_out_reg[15]_i_1_n_0 ,\topI_out_reg[15]_i_1_n_1 ,\topI_out_reg[15]_i_1_n_2 ,\topI_out_reg[15]_i_1_n_3 ,\topI_out_reg[15]_i_1_n_4 ,\topI_out_reg[15]_i_1_n_5 ,\topI_out_reg[15]_i_1_n_6 ,\topI_out_reg[15]_i_1_n_7 }),
        .DI(\topI_out_reg[23] [15:8]),
        .O(O71[15:8]),
        .S({\topI_out[15]_i_2_n_0 ,\topI_out[15]_i_3_n_0 ,\topI_out[15]_i_4_n_0 ,\topI_out[15]_i_5_n_0 ,\topI_out[15]_i_6_n_0 ,\topI_out[15]_i_7_n_0 ,\topI_out[15]_i_8_n_0 ,\topI_out[15]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \topI_out_reg[23]_i_1 
       (.CI(\topI_out_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_topI_out_reg[23]_i_1_CO_UNCONNECTED [7],\topI_out_reg[23]_i_1_n_1 ,\topI_out_reg[23]_i_1_n_2 ,\topI_out_reg[23]_i_1_n_3 ,\topI_out_reg[23]_i_1_n_4 ,\topI_out_reg[23]_i_1_n_5 ,\topI_out_reg[23]_i_1_n_6 ,\topI_out_reg[23]_i_1_n_7 }),
        .DI({1'b0,\topI_out_reg[23] [22:16]}),
        .O(O71[23:16]),
        .S({\topI_out[23]_i_2_n_0 ,\topI_out[23]_i_3_n_0 ,\topI_out[23]_i_4_n_0 ,\topI_out[23]_i_5_n_0 ,\topI_out[23]_i_6_n_0 ,\topI_out[23]_i_7_n_0 ,\topI_out[23]_i_8_n_0 ,\topI_out[23]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \topI_out_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\topI_out_reg[7]_i_1_n_0 ,\topI_out_reg[7]_i_1_n_1 ,\topI_out_reg[7]_i_1_n_2 ,\topI_out_reg[7]_i_1_n_3 ,\topI_out_reg[7]_i_1_n_4 ,\topI_out_reg[7]_i_1_n_5 ,\topI_out_reg[7]_i_1_n_6 ,\topI_out_reg[7]_i_1_n_7 }),
        .DI(\topI_out_reg[23] [7:0]),
        .O(O71[7:0]),
        .S({\topI_out[7]_i_2_n_0 ,\topI_out[7]_i_3_n_0 ,\topI_out[7]_i_4_n_0 ,\topI_out[7]_i_5_n_0 ,\topI_out[7]_i_6_n_0 ,\topI_out[7]_i_7_n_0 ,\topI_out[7]_i_8_n_0 ,\topI_out[7]_i_9_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \topR_out[15]_i_2 
       (.I0(\topR_out_reg[23] [15]),
        .I1(mulOutR[15]),
        .O(\topR_out[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \topR_out[15]_i_3 
       (.I0(\topR_out_reg[23] [14]),
        .I1(mulOutR[14]),
        .O(\topR_out[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \topR_out[15]_i_4 
       (.I0(\topR_out_reg[23] [13]),
        .I1(mulOutR[13]),
        .O(\topR_out[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \topR_out[15]_i_5 
       (.I0(\topR_out_reg[23] [12]),
        .I1(mulOutR[12]),
        .O(\topR_out[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \topR_out[15]_i_6 
       (.I0(\topR_out_reg[23] [11]),
        .I1(mulOutR[11]),
        .O(\topR_out[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \topR_out[15]_i_7 
       (.I0(\topR_out_reg[23] [10]),
        .I1(mulOutR[10]),
        .O(\topR_out[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \topR_out[15]_i_8 
       (.I0(\topR_out_reg[23] [9]),
        .I1(mulOutR[9]),
        .O(\topR_out[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \topR_out[15]_i_9 
       (.I0(\topR_out_reg[23] [8]),
        .I1(mulOutR[8]),
        .O(\topR_out[15]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \topR_out[23]_i_1 
       (.I0(mulPreviousReady),
        .I1(mulReady),
        .I2(ready01_out),
        .O(E));
  LUT2 #(
    .INIT(4'h6)) 
    \topR_out[23]_i_10 
       (.I0(\topR_out_reg[23] [16]),
        .I1(mulOutR[16]),
        .O(\topR_out[23]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \topR_out[23]_i_3 
       (.I0(\topR_out_reg[23] [23]),
        .I1(mulOutR[23]),
        .O(\topR_out[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \topR_out[23]_i_4 
       (.I0(\topR_out_reg[23] [22]),
        .I1(mulOutR[22]),
        .O(\topR_out[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \topR_out[23]_i_5 
       (.I0(\topR_out_reg[23] [21]),
        .I1(mulOutR[21]),
        .O(\topR_out[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \topR_out[23]_i_6 
       (.I0(\topR_out_reg[23] [20]),
        .I1(mulOutR[20]),
        .O(\topR_out[23]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \topR_out[23]_i_7 
       (.I0(\topR_out_reg[23] [19]),
        .I1(mulOutR[19]),
        .O(\topR_out[23]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \topR_out[23]_i_8 
       (.I0(\topR_out_reg[23] [18]),
        .I1(mulOutR[18]),
        .O(\topR_out[23]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \topR_out[23]_i_9 
       (.I0(\topR_out_reg[23] [17]),
        .I1(mulOutR[17]),
        .O(\topR_out[23]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \topR_out[7]_i_2 
       (.I0(\topR_out_reg[23] [7]),
        .I1(mulOutR[7]),
        .O(\topR_out[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \topR_out[7]_i_3 
       (.I0(\topR_out_reg[23] [6]),
        .I1(mulOutR[6]),
        .O(\topR_out[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \topR_out[7]_i_4 
       (.I0(\topR_out_reg[23] [5]),
        .I1(mulOutR[5]),
        .O(\topR_out[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \topR_out[7]_i_5 
       (.I0(\topR_out_reg[23] [4]),
        .I1(mulOutR[4]),
        .O(\topR_out[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \topR_out[7]_i_6 
       (.I0(\topR_out_reg[23] [3]),
        .I1(mulOutR[3]),
        .O(\topR_out[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \topR_out[7]_i_7 
       (.I0(\topR_out_reg[23] [2]),
        .I1(mulOutR[2]),
        .O(\topR_out[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \topR_out[7]_i_8 
       (.I0(\topR_out_reg[23] [1]),
        .I1(mulOutR[1]),
        .O(\topR_out[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \topR_out[7]_i_9 
       (.I0(\topR_out_reg[23] [0]),
        .I1(mulOutR[0]),
        .O(\topR_out[7]_i_9_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \topR_out_reg[15]_i_1 
       (.CI(\topR_out_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\topR_out_reg[15]_i_1_n_0 ,\topR_out_reg[15]_i_1_n_1 ,\topR_out_reg[15]_i_1_n_2 ,\topR_out_reg[15]_i_1_n_3 ,\topR_out_reg[15]_i_1_n_4 ,\topR_out_reg[15]_i_1_n_5 ,\topR_out_reg[15]_i_1_n_6 ,\topR_out_reg[15]_i_1_n_7 }),
        .DI(\topR_out_reg[23] [15:8]),
        .O(D[15:8]),
        .S({\topR_out[15]_i_2_n_0 ,\topR_out[15]_i_3_n_0 ,\topR_out[15]_i_4_n_0 ,\topR_out[15]_i_5_n_0 ,\topR_out[15]_i_6_n_0 ,\topR_out[15]_i_7_n_0 ,\topR_out[15]_i_8_n_0 ,\topR_out[15]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \topR_out_reg[23]_i_2 
       (.CI(\topR_out_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_topR_out_reg[23]_i_2_CO_UNCONNECTED [7],\topR_out_reg[23]_i_2_n_1 ,\topR_out_reg[23]_i_2_n_2 ,\topR_out_reg[23]_i_2_n_3 ,\topR_out_reg[23]_i_2_n_4 ,\topR_out_reg[23]_i_2_n_5 ,\topR_out_reg[23]_i_2_n_6 ,\topR_out_reg[23]_i_2_n_7 }),
        .DI({1'b0,\topR_out_reg[23] [22:16]}),
        .O(D[23:16]),
        .S({\topR_out[23]_i_3_n_0 ,\topR_out[23]_i_4_n_0 ,\topR_out[23]_i_5_n_0 ,\topR_out[23]_i_6_n_0 ,\topR_out[23]_i_7_n_0 ,\topR_out[23]_i_8_n_0 ,\topR_out[23]_i_9_n_0 ,\topR_out[23]_i_10_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \topR_out_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\topR_out_reg[7]_i_1_n_0 ,\topR_out_reg[7]_i_1_n_1 ,\topR_out_reg[7]_i_1_n_2 ,\topR_out_reg[7]_i_1_n_3 ,\topR_out_reg[7]_i_1_n_4 ,\topR_out_reg[7]_i_1_n_5 ,\topR_out_reg[7]_i_1_n_6 ,\topR_out_reg[7]_i_1_n_7 }),
        .DI(\topR_out_reg[23] [7:0]),
        .O(D[7:0]),
        .S({\topR_out[7]_i_2_n_0 ,\topR_out[7]_i_3_n_0 ,\topR_out[7]_i_4_n_0 ,\topR_out[7]_i_5_n_0 ,\topR_out[7]_i_6_n_0 ,\topR_out[7]_i_7_n_0 ,\topR_out[7]_i_8_n_0 ,\topR_out[7]_i_9_n_0 }));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fft
   (last_data_en_state_reg_0,
    slv_wire4,
    Q,
    \twiddleIdx_reg[2]_0 ,
    \bottomIdx_reg[3]_0 ,
    \data_out_R_reg[23]_0 ,
    \data_out_I_reg[23]_0 ,
    last_data_en_state_reg_1,
    s00_axi_aclk,
    ready_reg_0,
    \state_reg[0]_0 ,
    \idx_reg[0]_0 ,
    s00_axi_aresetn,
    \dataQ_reg[0][23]_0 ,
    \dataI_reg[1][23]_0 ,
    A);
  output last_data_en_state_reg_0;
  output slv_wire4;
  output [0:0]Q;
  output [2:0]\twiddleIdx_reg[2]_0 ;
  output \bottomIdx_reg[3]_0 ;
  output [23:0]\data_out_R_reg[23]_0 ;
  output [23:0]\data_out_I_reg[23]_0 ;
  input last_data_en_state_reg_1;
  input s00_axi_aclk;
  input ready_reg_0;
  input [0:0]\state_reg[0]_0 ;
  input [0:0]\idx_reg[0]_0 ;
  input s00_axi_aresetn;
  input [23:0]\dataQ_reg[0][23]_0 ;
  input [23:0]\dataI_reg[1][23]_0 ;
  input [1:0]A;

  wire [1:0]A;
  wire [0:0]Q;
  wire \bottomIdx[1]_i_1_n_0 ;
  wire \bottomIdx[1]_i_2_n_0 ;
  wire \bottomIdx[2]_i_1_n_0 ;
  wire \bottomIdx[3]_i_1_n_0 ;
  wire \bottomIdx[4]_i_1_n_0 ;
  wire \bottomIdx[4]_i_2_n_0 ;
  wire \bottomIdx[4]_i_3_n_0 ;
  wire \bottomIdx_reg[3]_0 ;
  wire \bottomIdx_reg_n_0_[4] ;
  wire butterflyPreviousReady;
  wire butterflyStart_reg_n_0;
  wire butterfly_n_0;
  wire butterfly_n_1;
  wire butterfly_n_10;
  wire butterfly_n_100;
  wire butterfly_n_101;
  wire butterfly_n_102;
  wire butterfly_n_103;
  wire butterfly_n_104;
  wire butterfly_n_105;
  wire butterfly_n_106;
  wire butterfly_n_107;
  wire butterfly_n_108;
  wire butterfly_n_109;
  wire butterfly_n_11;
  wire butterfly_n_110;
  wire butterfly_n_111;
  wire butterfly_n_112;
  wire butterfly_n_113;
  wire butterfly_n_114;
  wire butterfly_n_115;
  wire butterfly_n_116;
  wire butterfly_n_117;
  wire butterfly_n_118;
  wire butterfly_n_119;
  wire butterfly_n_12;
  wire butterfly_n_120;
  wire butterfly_n_121;
  wire butterfly_n_122;
  wire butterfly_n_123;
  wire butterfly_n_124;
  wire butterfly_n_125;
  wire butterfly_n_126;
  wire butterfly_n_127;
  wire butterfly_n_128;
  wire butterfly_n_129;
  wire butterfly_n_13;
  wire butterfly_n_130;
  wire butterfly_n_131;
  wire butterfly_n_132;
  wire butterfly_n_133;
  wire butterfly_n_134;
  wire butterfly_n_135;
  wire butterfly_n_136;
  wire butterfly_n_137;
  wire butterfly_n_138;
  wire butterfly_n_139;
  wire butterfly_n_14;
  wire butterfly_n_140;
  wire butterfly_n_141;
  wire butterfly_n_142;
  wire butterfly_n_143;
  wire butterfly_n_144;
  wire butterfly_n_145;
  wire butterfly_n_146;
  wire butterfly_n_147;
  wire butterfly_n_148;
  wire butterfly_n_149;
  wire butterfly_n_15;
  wire butterfly_n_150;
  wire butterfly_n_151;
  wire butterfly_n_152;
  wire butterfly_n_153;
  wire butterfly_n_154;
  wire butterfly_n_155;
  wire butterfly_n_156;
  wire butterfly_n_157;
  wire butterfly_n_158;
  wire butterfly_n_159;
  wire butterfly_n_16;
  wire butterfly_n_160;
  wire butterfly_n_161;
  wire butterfly_n_162;
  wire butterfly_n_163;
  wire butterfly_n_164;
  wire butterfly_n_165;
  wire butterfly_n_166;
  wire butterfly_n_167;
  wire butterfly_n_168;
  wire butterfly_n_169;
  wire butterfly_n_17;
  wire butterfly_n_170;
  wire butterfly_n_171;
  wire butterfly_n_172;
  wire butterfly_n_173;
  wire butterfly_n_174;
  wire butterfly_n_175;
  wire butterfly_n_176;
  wire butterfly_n_177;
  wire butterfly_n_178;
  wire butterfly_n_179;
  wire butterfly_n_18;
  wire butterfly_n_180;
  wire butterfly_n_181;
  wire butterfly_n_182;
  wire butterfly_n_183;
  wire butterfly_n_184;
  wire butterfly_n_185;
  wire butterfly_n_186;
  wire butterfly_n_187;
  wire butterfly_n_188;
  wire butterfly_n_189;
  wire butterfly_n_19;
  wire butterfly_n_190;
  wire butterfly_n_191;
  wire butterfly_n_192;
  wire butterfly_n_193;
  wire butterfly_n_194;
  wire butterfly_n_195;
  wire butterfly_n_196;
  wire butterfly_n_197;
  wire butterfly_n_198;
  wire butterfly_n_199;
  wire butterfly_n_2;
  wire butterfly_n_20;
  wire butterfly_n_200;
  wire butterfly_n_201;
  wire butterfly_n_202;
  wire butterfly_n_203;
  wire butterfly_n_204;
  wire butterfly_n_205;
  wire butterfly_n_206;
  wire butterfly_n_207;
  wire butterfly_n_208;
  wire butterfly_n_209;
  wire butterfly_n_21;
  wire butterfly_n_210;
  wire butterfly_n_211;
  wire butterfly_n_212;
  wire butterfly_n_213;
  wire butterfly_n_214;
  wire butterfly_n_215;
  wire butterfly_n_216;
  wire butterfly_n_217;
  wire butterfly_n_218;
  wire butterfly_n_219;
  wire butterfly_n_22;
  wire butterfly_n_220;
  wire butterfly_n_221;
  wire butterfly_n_222;
  wire butterfly_n_223;
  wire butterfly_n_224;
  wire butterfly_n_225;
  wire butterfly_n_226;
  wire butterfly_n_227;
  wire butterfly_n_228;
  wire butterfly_n_229;
  wire butterfly_n_23;
  wire butterfly_n_230;
  wire butterfly_n_231;
  wire butterfly_n_232;
  wire butterfly_n_233;
  wire butterfly_n_234;
  wire butterfly_n_235;
  wire butterfly_n_236;
  wire butterfly_n_237;
  wire butterfly_n_238;
  wire butterfly_n_239;
  wire butterfly_n_24;
  wire butterfly_n_240;
  wire butterfly_n_241;
  wire butterfly_n_242;
  wire butterfly_n_243;
  wire butterfly_n_244;
  wire butterfly_n_245;
  wire butterfly_n_246;
  wire butterfly_n_247;
  wire butterfly_n_248;
  wire butterfly_n_249;
  wire butterfly_n_25;
  wire butterfly_n_250;
  wire butterfly_n_251;
  wire butterfly_n_252;
  wire butterfly_n_253;
  wire butterfly_n_254;
  wire butterfly_n_255;
  wire butterfly_n_256;
  wire butterfly_n_257;
  wire butterfly_n_258;
  wire butterfly_n_259;
  wire butterfly_n_26;
  wire butterfly_n_260;
  wire butterfly_n_261;
  wire butterfly_n_262;
  wire butterfly_n_263;
  wire butterfly_n_264;
  wire butterfly_n_265;
  wire butterfly_n_266;
  wire butterfly_n_267;
  wire butterfly_n_268;
  wire butterfly_n_269;
  wire butterfly_n_27;
  wire butterfly_n_270;
  wire butterfly_n_271;
  wire butterfly_n_272;
  wire butterfly_n_273;
  wire butterfly_n_274;
  wire butterfly_n_275;
  wire butterfly_n_276;
  wire butterfly_n_277;
  wire butterfly_n_278;
  wire butterfly_n_279;
  wire butterfly_n_28;
  wire butterfly_n_280;
  wire butterfly_n_281;
  wire butterfly_n_282;
  wire butterfly_n_283;
  wire butterfly_n_284;
  wire butterfly_n_285;
  wire butterfly_n_286;
  wire butterfly_n_287;
  wire butterfly_n_288;
  wire butterfly_n_289;
  wire butterfly_n_29;
  wire butterfly_n_290;
  wire butterfly_n_291;
  wire butterfly_n_292;
  wire butterfly_n_293;
  wire butterfly_n_294;
  wire butterfly_n_295;
  wire butterfly_n_296;
  wire butterfly_n_297;
  wire butterfly_n_298;
  wire butterfly_n_299;
  wire butterfly_n_3;
  wire butterfly_n_30;
  wire butterfly_n_300;
  wire butterfly_n_301;
  wire butterfly_n_302;
  wire butterfly_n_303;
  wire butterfly_n_304;
  wire butterfly_n_305;
  wire butterfly_n_306;
  wire butterfly_n_307;
  wire butterfly_n_308;
  wire butterfly_n_309;
  wire butterfly_n_31;
  wire butterfly_n_310;
  wire butterfly_n_311;
  wire butterfly_n_312;
  wire butterfly_n_313;
  wire butterfly_n_314;
  wire butterfly_n_315;
  wire butterfly_n_316;
  wire butterfly_n_317;
  wire butterfly_n_318;
  wire butterfly_n_319;
  wire butterfly_n_32;
  wire butterfly_n_320;
  wire butterfly_n_321;
  wire butterfly_n_322;
  wire butterfly_n_323;
  wire butterfly_n_324;
  wire butterfly_n_325;
  wire butterfly_n_326;
  wire butterfly_n_327;
  wire butterfly_n_328;
  wire butterfly_n_329;
  wire butterfly_n_33;
  wire butterfly_n_330;
  wire butterfly_n_331;
  wire butterfly_n_332;
  wire butterfly_n_333;
  wire butterfly_n_334;
  wire butterfly_n_335;
  wire butterfly_n_336;
  wire butterfly_n_337;
  wire butterfly_n_338;
  wire butterfly_n_339;
  wire butterfly_n_34;
  wire butterfly_n_340;
  wire butterfly_n_341;
  wire butterfly_n_342;
  wire butterfly_n_343;
  wire butterfly_n_344;
  wire butterfly_n_345;
  wire butterfly_n_346;
  wire butterfly_n_347;
  wire butterfly_n_348;
  wire butterfly_n_349;
  wire butterfly_n_35;
  wire butterfly_n_350;
  wire butterfly_n_351;
  wire butterfly_n_352;
  wire butterfly_n_353;
  wire butterfly_n_354;
  wire butterfly_n_355;
  wire butterfly_n_356;
  wire butterfly_n_357;
  wire butterfly_n_358;
  wire butterfly_n_359;
  wire butterfly_n_36;
  wire butterfly_n_360;
  wire butterfly_n_361;
  wire butterfly_n_362;
  wire butterfly_n_363;
  wire butterfly_n_364;
  wire butterfly_n_365;
  wire butterfly_n_366;
  wire butterfly_n_367;
  wire butterfly_n_368;
  wire butterfly_n_369;
  wire butterfly_n_37;
  wire butterfly_n_370;
  wire butterfly_n_371;
  wire butterfly_n_372;
  wire butterfly_n_373;
  wire butterfly_n_374;
  wire butterfly_n_375;
  wire butterfly_n_376;
  wire butterfly_n_377;
  wire butterfly_n_378;
  wire butterfly_n_379;
  wire butterfly_n_38;
  wire butterfly_n_380;
  wire butterfly_n_381;
  wire butterfly_n_382;
  wire butterfly_n_383;
  wire butterfly_n_384;
  wire butterfly_n_385;
  wire butterfly_n_386;
  wire butterfly_n_387;
  wire butterfly_n_388;
  wire butterfly_n_389;
  wire butterfly_n_39;
  wire butterfly_n_390;
  wire butterfly_n_391;
  wire butterfly_n_392;
  wire butterfly_n_393;
  wire butterfly_n_394;
  wire butterfly_n_395;
  wire butterfly_n_396;
  wire butterfly_n_397;
  wire butterfly_n_398;
  wire butterfly_n_399;
  wire butterfly_n_4;
  wire butterfly_n_40;
  wire butterfly_n_400;
  wire butterfly_n_401;
  wire butterfly_n_402;
  wire butterfly_n_403;
  wire butterfly_n_404;
  wire butterfly_n_405;
  wire butterfly_n_406;
  wire butterfly_n_407;
  wire butterfly_n_408;
  wire butterfly_n_409;
  wire butterfly_n_41;
  wire butterfly_n_410;
  wire butterfly_n_411;
  wire butterfly_n_412;
  wire butterfly_n_413;
  wire butterfly_n_414;
  wire butterfly_n_415;
  wire butterfly_n_416;
  wire butterfly_n_417;
  wire butterfly_n_418;
  wire butterfly_n_419;
  wire butterfly_n_42;
  wire butterfly_n_420;
  wire butterfly_n_421;
  wire butterfly_n_422;
  wire butterfly_n_423;
  wire butterfly_n_424;
  wire butterfly_n_425;
  wire butterfly_n_426;
  wire butterfly_n_427;
  wire butterfly_n_428;
  wire butterfly_n_429;
  wire butterfly_n_43;
  wire butterfly_n_430;
  wire butterfly_n_431;
  wire butterfly_n_432;
  wire butterfly_n_433;
  wire butterfly_n_434;
  wire butterfly_n_435;
  wire butterfly_n_436;
  wire butterfly_n_437;
  wire butterfly_n_438;
  wire butterfly_n_439;
  wire butterfly_n_44;
  wire butterfly_n_440;
  wire butterfly_n_441;
  wire butterfly_n_45;
  wire butterfly_n_46;
  wire butterfly_n_47;
  wire butterfly_n_48;
  wire butterfly_n_49;
  wire butterfly_n_5;
  wire butterfly_n_50;
  wire butterfly_n_51;
  wire butterfly_n_52;
  wire butterfly_n_53;
  wire butterfly_n_54;
  wire butterfly_n_55;
  wire butterfly_n_56;
  wire butterfly_n_57;
  wire butterfly_n_58;
  wire butterfly_n_59;
  wire butterfly_n_6;
  wire butterfly_n_60;
  wire butterfly_n_61;
  wire butterfly_n_62;
  wire butterfly_n_63;
  wire butterfly_n_64;
  wire butterfly_n_65;
  wire butterfly_n_66;
  wire butterfly_n_67;
  wire butterfly_n_68;
  wire butterfly_n_69;
  wire butterfly_n_7;
  wire butterfly_n_70;
  wire butterfly_n_71;
  wire butterfly_n_72;
  wire butterfly_n_73;
  wire butterfly_n_74;
  wire butterfly_n_75;
  wire butterfly_n_76;
  wire butterfly_n_77;
  wire butterfly_n_78;
  wire butterfly_n_79;
  wire butterfly_n_8;
  wire butterfly_n_80;
  wire butterfly_n_81;
  wire butterfly_n_82;
  wire butterfly_n_83;
  wire butterfly_n_84;
  wire butterfly_n_85;
  wire butterfly_n_86;
  wire butterfly_n_87;
  wire butterfly_n_88;
  wire butterfly_n_89;
  wire butterfly_n_9;
  wire butterfly_n_90;
  wire butterfly_n_91;
  wire butterfly_n_92;
  wire butterfly_n_93;
  wire butterfly_n_94;
  wire butterfly_n_95;
  wire butterfly_n_96;
  wire butterfly_n_97;
  wire butterfly_n_98;
  wire butterfly_n_99;
  wire [191:0]dataI;
  wire \dataI[0][22]_i_3_n_0 ;
  wire \dataI[0][23]_i_3_n_0 ;
  wire \dataI[0][23]_i_4_n_0 ;
  wire \dataI[0][23]_i_5_n_0 ;
  wire \dataI[0][23]_i_6_n_0 ;
  wire \dataI[1][23]_i_3_n_0 ;
  wire \dataI[1][23]_i_4_n_0 ;
  wire \dataI[1][23]_i_6_n_0 ;
  wire \dataI[2][0]_i_3_n_0 ;
  wire \dataI[2][10]_i_3_n_0 ;
  wire \dataI[2][11]_i_3_n_0 ;
  wire \dataI[2][12]_i_3_n_0 ;
  wire \dataI[2][13]_i_3_n_0 ;
  wire \dataI[2][14]_i_3_n_0 ;
  wire \dataI[2][15]_i_3_n_0 ;
  wire \dataI[2][16]_i_3_n_0 ;
  wire \dataI[2][17]_i_3_n_0 ;
  wire \dataI[2][18]_i_3_n_0 ;
  wire \dataI[2][19]_i_3_n_0 ;
  wire \dataI[2][1]_i_3_n_0 ;
  wire \dataI[2][20]_i_3_n_0 ;
  wire \dataI[2][21]_i_3_n_0 ;
  wire \dataI[2][22]_i_3_n_0 ;
  wire \dataI[2][23]_i_3_n_0 ;
  wire \dataI[2][23]_i_4_n_0 ;
  wire \dataI[2][23]_i_5_n_0 ;
  wire \dataI[2][23]_i_6_n_0 ;
  wire \dataI[2][2]_i_3_n_0 ;
  wire \dataI[2][3]_i_3_n_0 ;
  wire \dataI[2][4]_i_3_n_0 ;
  wire \dataI[2][5]_i_3_n_0 ;
  wire \dataI[2][6]_i_3_n_0 ;
  wire \dataI[2][7]_i_3_n_0 ;
  wire \dataI[2][8]_i_3_n_0 ;
  wire \dataI[2][9]_i_3_n_0 ;
  wire \dataI[3][0]_i_3_n_0 ;
  wire \dataI[3][11]_i_3_n_0 ;
  wire \dataI[3][12]_i_3_n_0 ;
  wire \dataI[3][14]_i_3_n_0 ;
  wire \dataI[3][15]_i_3_n_0 ;
  wire \dataI[3][16]_i_3_n_0 ;
  wire \dataI[3][18]_i_3_n_0 ;
  wire \dataI[3][19]_i_3_n_0 ;
  wire \dataI[3][1]_i_3_n_0 ;
  wire \dataI[3][20]_i_3_n_0 ;
  wire \dataI[3][21]_i_3_n_0 ;
  wire \dataI[3][22]_i_3_n_0 ;
  wire \dataI[3][23]_i_3_n_0 ;
  wire \dataI[3][23]_i_4_n_0 ;
  wire \dataI[3][23]_i_5_n_0 ;
  wire \dataI[3][23]_i_6_n_0 ;
  wire \dataI[3][2]_i_3_n_0 ;
  wire \dataI[3][3]_i_3_n_0 ;
  wire \dataI[3][4]_i_3_n_0 ;
  wire \dataI[3][5]_i_3_n_0 ;
  wire \dataI[3][6]_i_3_n_0 ;
  wire \dataI[4][23]_i_3_n_0 ;
  wire \dataI[4][23]_i_4_n_0 ;
  wire \dataI[4][23]_i_6_n_0 ;
  wire \dataI[5][23]_i_3_n_0 ;
  wire \dataI[5][23]_i_4_n_0 ;
  wire \dataI[5][23]_i_6_n_0 ;
  wire \dataI[5][23]_i_7_n_0 ;
  wire \dataI[6][0]_i_3_n_0 ;
  wire \dataI[6][0]_i_5_n_0 ;
  wire \dataI[6][0]_i_6_n_0 ;
  wire \dataI[6][10]_i_3_n_0 ;
  wire \dataI[6][10]_i_5_n_0 ;
  wire \dataI[6][10]_i_6_n_0 ;
  wire \dataI[6][11]_i_3_n_0 ;
  wire \dataI[6][11]_i_5_n_0 ;
  wire \dataI[6][11]_i_6_n_0 ;
  wire \dataI[6][12]_i_3_n_0 ;
  wire \dataI[6][12]_i_5_n_0 ;
  wire \dataI[6][12]_i_6_n_0 ;
  wire \dataI[6][13]_i_3_n_0 ;
  wire \dataI[6][13]_i_5_n_0 ;
  wire \dataI[6][13]_i_6_n_0 ;
  wire \dataI[6][14]_i_3_n_0 ;
  wire \dataI[6][14]_i_5_n_0 ;
  wire \dataI[6][14]_i_6_n_0 ;
  wire \dataI[6][15]_i_3_n_0 ;
  wire \dataI[6][15]_i_5_n_0 ;
  wire \dataI[6][15]_i_6_n_0 ;
  wire \dataI[6][16]_i_3_n_0 ;
  wire \dataI[6][16]_i_5_n_0 ;
  wire \dataI[6][16]_i_6_n_0 ;
  wire \dataI[6][17]_i_3_n_0 ;
  wire \dataI[6][17]_i_5_n_0 ;
  wire \dataI[6][17]_i_6_n_0 ;
  wire \dataI[6][18]_i_3_n_0 ;
  wire \dataI[6][18]_i_5_n_0 ;
  wire \dataI[6][18]_i_6_n_0 ;
  wire \dataI[6][19]_i_3_n_0 ;
  wire \dataI[6][19]_i_5_n_0 ;
  wire \dataI[6][19]_i_6_n_0 ;
  wire \dataI[6][1]_i_3_n_0 ;
  wire \dataI[6][1]_i_5_n_0 ;
  wire \dataI[6][1]_i_6_n_0 ;
  wire \dataI[6][20]_i_3_n_0 ;
  wire \dataI[6][20]_i_5_n_0 ;
  wire \dataI[6][20]_i_6_n_0 ;
  wire \dataI[6][21]_i_3_n_0 ;
  wire \dataI[6][21]_i_5_n_0 ;
  wire \dataI[6][21]_i_6_n_0 ;
  wire \dataI[6][22]_i_3_n_0 ;
  wire \dataI[6][22]_i_5_n_0 ;
  wire \dataI[6][22]_i_6_n_0 ;
  wire \dataI[6][23]_i_3_n_0 ;
  wire \dataI[6][23]_i_4_n_0 ;
  wire \dataI[6][23]_i_5_n_0 ;
  wire \dataI[6][23]_i_7_n_0 ;
  wire \dataI[6][23]_i_8_n_0 ;
  wire \dataI[6][2]_i_3_n_0 ;
  wire \dataI[6][2]_i_5_n_0 ;
  wire \dataI[6][2]_i_6_n_0 ;
  wire \dataI[6][3]_i_3_n_0 ;
  wire \dataI[6][3]_i_5_n_0 ;
  wire \dataI[6][3]_i_6_n_0 ;
  wire \dataI[6][4]_i_3_n_0 ;
  wire \dataI[6][4]_i_5_n_0 ;
  wire \dataI[6][4]_i_6_n_0 ;
  wire \dataI[6][5]_i_3_n_0 ;
  wire \dataI[6][5]_i_5_n_0 ;
  wire \dataI[6][5]_i_6_n_0 ;
  wire \dataI[6][6]_i_3_n_0 ;
  wire \dataI[6][6]_i_5_n_0 ;
  wire \dataI[6][6]_i_6_n_0 ;
  wire \dataI[6][7]_i_3_n_0 ;
  wire \dataI[6][7]_i_5_n_0 ;
  wire \dataI[6][7]_i_6_n_0 ;
  wire \dataI[6][8]_i_3_n_0 ;
  wire \dataI[6][8]_i_5_n_0 ;
  wire \dataI[6][8]_i_6_n_0 ;
  wire \dataI[6][9]_i_3_n_0 ;
  wire \dataI[6][9]_i_5_n_0 ;
  wire \dataI[6][9]_i_6_n_0 ;
  wire \dataI[7][0]_i_3_n_0 ;
  wire \dataI[7][10]_i_3_n_0 ;
  wire \dataI[7][11]_i_3_n_0 ;
  wire \dataI[7][12]_i_3_n_0 ;
  wire \dataI[7][13]_i_3_n_0 ;
  wire \dataI[7][14]_i_3_n_0 ;
  wire \dataI[7][15]_i_3_n_0 ;
  wire \dataI[7][16]_i_3_n_0 ;
  wire \dataI[7][17]_i_3_n_0 ;
  wire \dataI[7][18]_i_3_n_0 ;
  wire \dataI[7][19]_i_3_n_0 ;
  wire \dataI[7][1]_i_3_n_0 ;
  wire \dataI[7][20]_i_3_n_0 ;
  wire \dataI[7][21]_i_3_n_0 ;
  wire \dataI[7][22]_i_3_n_0 ;
  wire \dataI[7][23]_i_3_n_0 ;
  wire \dataI[7][23]_i_4_n_0 ;
  wire \dataI[7][23]_i_5_n_0 ;
  wire \dataI[7][23]_i_6_n_0 ;
  wire \dataI[7][2]_i_3_n_0 ;
  wire \dataI[7][3]_i_3_n_0 ;
  wire \dataI[7][4]_i_3_n_0 ;
  wire \dataI[7][5]_i_3_n_0 ;
  wire \dataI[7][6]_i_3_n_0 ;
  wire \dataI[7][7]_i_3_n_0 ;
  wire \dataI[7][8]_i_3_n_0 ;
  wire \dataI[7][9]_i_3_n_0 ;
  wire [23:0]\dataI_reg[1][23]_0 ;
  wire [191:0]dataQ;
  wire \dataQ[2][0]_i_3_n_0 ;
  wire \dataQ[2][10]_i_3_n_0 ;
  wire \dataQ[2][11]_i_3_n_0 ;
  wire \dataQ[2][13]_i_3_n_0 ;
  wire \dataQ[2][14]_i_3_n_0 ;
  wire \dataQ[2][15]_i_3_n_0 ;
  wire \dataQ[2][16]_i_3_n_0 ;
  wire \dataQ[2][17]_i_3_n_0 ;
  wire \dataQ[2][18]_i_3_n_0 ;
  wire \dataQ[2][1]_i_3_n_0 ;
  wire \dataQ[2][20]_i_3_n_0 ;
  wire \dataQ[2][21]_i_3_n_0 ;
  wire \dataQ[2][22]_i_3_n_0 ;
  wire \dataQ[2][23]_i_3_n_0 ;
  wire \dataQ[2][2]_i_3_n_0 ;
  wire \dataQ[2][3]_i_3_n_0 ;
  wire \dataQ[2][4]_i_3_n_0 ;
  wire \dataQ[2][5]_i_3_n_0 ;
  wire \dataQ[2][6]_i_3_n_0 ;
  wire \dataQ[2][7]_i_3_n_0 ;
  wire \dataQ[2][8]_i_3_n_0 ;
  wire \dataQ[3][10]_i_3_n_0 ;
  wire \dataQ[3][12]_i_3_n_0 ;
  wire \dataQ[3][13]_i_3_n_0 ;
  wire \dataQ[3][14]_i_3_n_0 ;
  wire \dataQ[3][15]_i_3_n_0 ;
  wire \dataQ[3][16]_i_3_n_0 ;
  wire \dataQ[3][17]_i_3_n_0 ;
  wire \dataQ[3][18]_i_3_n_0 ;
  wire \dataQ[3][19]_i_3_n_0 ;
  wire \dataQ[3][20]_i_3_n_0 ;
  wire \dataQ[3][21]_i_3_n_0 ;
  wire \dataQ[3][22]_i_3_n_0 ;
  wire \dataQ[3][23]_i_3_n_0 ;
  wire \dataQ[3][3]_i_3_n_0 ;
  wire \dataQ[3][5]_i_3_n_0 ;
  wire \dataQ[3][6]_i_3_n_0 ;
  wire \dataQ[3][7]_i_3_n_0 ;
  wire \dataQ[3][8]_i_3_n_0 ;
  wire \dataQ[3][9]_i_3_n_0 ;
  wire \dataQ[6][0]_i_3_n_0 ;
  wire \dataQ[6][0]_i_4_n_0 ;
  wire \dataQ[6][0]_i_5_n_0 ;
  wire \dataQ[6][0]_i_6_n_0 ;
  wire \dataQ[6][10]_i_3_n_0 ;
  wire \dataQ[6][10]_i_4_n_0 ;
  wire \dataQ[6][10]_i_5_n_0 ;
  wire \dataQ[6][10]_i_6_n_0 ;
  wire \dataQ[6][11]_i_3_n_0 ;
  wire \dataQ[6][11]_i_5_n_0 ;
  wire \dataQ[6][11]_i_6_n_0 ;
  wire \dataQ[6][12]_i_3_n_0 ;
  wire \dataQ[6][12]_i_4_n_0 ;
  wire \dataQ[6][12]_i_5_n_0 ;
  wire \dataQ[6][12]_i_6_n_0 ;
  wire \dataQ[6][13]_i_3_n_0 ;
  wire \dataQ[6][13]_i_4_n_0 ;
  wire \dataQ[6][13]_i_5_n_0 ;
  wire \dataQ[6][13]_i_6_n_0 ;
  wire \dataQ[6][14]_i_3_n_0 ;
  wire \dataQ[6][14]_i_4_n_0 ;
  wire \dataQ[6][14]_i_5_n_0 ;
  wire \dataQ[6][14]_i_6_n_0 ;
  wire \dataQ[6][15]_i_3_n_0 ;
  wire \dataQ[6][15]_i_4_n_0 ;
  wire \dataQ[6][15]_i_5_n_0 ;
  wire \dataQ[6][15]_i_6_n_0 ;
  wire \dataQ[6][16]_i_3_n_0 ;
  wire \dataQ[6][16]_i_4_n_0 ;
  wire \dataQ[6][16]_i_5_n_0 ;
  wire \dataQ[6][16]_i_6_n_0 ;
  wire \dataQ[6][17]_i_3_n_0 ;
  wire \dataQ[6][17]_i_5_n_0 ;
  wire \dataQ[6][17]_i_6_n_0 ;
  wire \dataQ[6][18]_i_3_n_0 ;
  wire \dataQ[6][18]_i_5_n_0 ;
  wire \dataQ[6][18]_i_6_n_0 ;
  wire \dataQ[6][19]_i_3_n_0 ;
  wire \dataQ[6][19]_i_4_n_0 ;
  wire \dataQ[6][19]_i_5_n_0 ;
  wire \dataQ[6][19]_i_6_n_0 ;
  wire \dataQ[6][1]_i_3_n_0 ;
  wire \dataQ[6][1]_i_4_n_0 ;
  wire \dataQ[6][1]_i_5_n_0 ;
  wire \dataQ[6][1]_i_6_n_0 ;
  wire \dataQ[6][20]_i_3_n_0 ;
  wire \dataQ[6][20]_i_4_n_0 ;
  wire \dataQ[6][20]_i_5_n_0 ;
  wire \dataQ[6][20]_i_6_n_0 ;
  wire \dataQ[6][21]_i_3_n_0 ;
  wire \dataQ[6][21]_i_4_n_0 ;
  wire \dataQ[6][21]_i_5_n_0 ;
  wire \dataQ[6][21]_i_6_n_0 ;
  wire \dataQ[6][22]_i_3_n_0 ;
  wire \dataQ[6][22]_i_4_n_0 ;
  wire \dataQ[6][22]_i_5_n_0 ;
  wire \dataQ[6][22]_i_6_n_0 ;
  wire \dataQ[6][22]_i_7_n_0 ;
  wire \dataQ[6][23]_i_3_n_0 ;
  wire \dataQ[6][23]_i_5_n_0 ;
  wire \dataQ[6][23]_i_6_n_0 ;
  wire \dataQ[6][2]_i_3_n_0 ;
  wire \dataQ[6][2]_i_4_n_0 ;
  wire \dataQ[6][2]_i_5_n_0 ;
  wire \dataQ[6][2]_i_6_n_0 ;
  wire \dataQ[6][3]_i_3_n_0 ;
  wire \dataQ[6][3]_i_4_n_0 ;
  wire \dataQ[6][3]_i_5_n_0 ;
  wire \dataQ[6][3]_i_6_n_0 ;
  wire \dataQ[6][4]_i_3_n_0 ;
  wire \dataQ[6][4]_i_4_n_0 ;
  wire \dataQ[6][4]_i_5_n_0 ;
  wire \dataQ[6][4]_i_6_n_0 ;
  wire \dataQ[6][5]_i_3_n_0 ;
  wire \dataQ[6][5]_i_5_n_0 ;
  wire \dataQ[6][5]_i_6_n_0 ;
  wire \dataQ[6][6]_i_3_n_0 ;
  wire \dataQ[6][6]_i_5_n_0 ;
  wire \dataQ[6][6]_i_6_n_0 ;
  wire \dataQ[6][7]_i_3_n_0 ;
  wire \dataQ[6][7]_i_4_n_0 ;
  wire \dataQ[6][7]_i_5_n_0 ;
  wire \dataQ[6][7]_i_6_n_0 ;
  wire \dataQ[6][8]_i_3_n_0 ;
  wire \dataQ[6][8]_i_4_n_0 ;
  wire \dataQ[6][8]_i_5_n_0 ;
  wire \dataQ[6][8]_i_6_n_0 ;
  wire \dataQ[6][9]_i_3_n_0 ;
  wire \dataQ[6][9]_i_4_n_0 ;
  wire \dataQ[6][9]_i_5_n_0 ;
  wire \dataQ[6][9]_i_6_n_0 ;
  wire \dataQ[7][0]_i_3_n_0 ;
  wire \dataQ[7][11]_i_3_n_0 ;
  wire \dataQ[7][13]_i_3_n_0 ;
  wire \dataQ[7][14]_i_3_n_0 ;
  wire \dataQ[7][15]_i_3_n_0 ;
  wire \dataQ[7][17]_i_3_n_0 ;
  wire \dataQ[7][19]_i_3_n_0 ;
  wire \dataQ[7][1]_i_3_n_0 ;
  wire \dataQ[7][21]_i_3_n_0 ;
  wire \dataQ[7][23]_i_3_n_0 ;
  wire \dataQ[7][3]_i_3_n_0 ;
  wire \dataQ[7][5]_i_3_n_0 ;
  wire \dataQ[7][6]_i_3_n_0 ;
  wire \dataQ[7][7]_i_3_n_0 ;
  wire \dataQ[7][9]_i_3_n_0 ;
  wire [23:0]\dataQ_reg[0][23]_0 ;
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
  wire \data_out_I[15]_i_3_n_0 ;
  wire \data_out_I[16]_i_2_n_0 ;
  wire \data_out_I[16]_i_3_n_0 ;
  wire \data_out_I[17]_i_2_n_0 ;
  wire \data_out_I[17]_i_3_n_0 ;
  wire \data_out_I[18]_i_2_n_0 ;
  wire \data_out_I[18]_i_3_n_0 ;
  wire \data_out_I[19]_i_2_n_0 ;
  wire \data_out_I[19]_i_3_n_0 ;
  wire \data_out_I[1]_i_2_n_0 ;
  wire \data_out_I[1]_i_3_n_0 ;
  wire \data_out_I[20]_i_2_n_0 ;
  wire \data_out_I[20]_i_3_n_0 ;
  wire \data_out_I[21]_i_2_n_0 ;
  wire \data_out_I[21]_i_3_n_0 ;
  wire \data_out_I[22]_i_2_n_0 ;
  wire \data_out_I[22]_i_3_n_0 ;
  wire \data_out_I[23]_i_2_n_0 ;
  wire \data_out_I[23]_i_3_n_0 ;
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
  wire \data_out_I_reg[0]_i_1_n_0 ;
  wire \data_out_I_reg[10]_i_1_n_0 ;
  wire \data_out_I_reg[11]_i_1_n_0 ;
  wire \data_out_I_reg[12]_i_1_n_0 ;
  wire \data_out_I_reg[13]_i_1_n_0 ;
  wire \data_out_I_reg[14]_i_1_n_0 ;
  wire \data_out_I_reg[15]_i_1_n_0 ;
  wire \data_out_I_reg[16]_i_1_n_0 ;
  wire \data_out_I_reg[17]_i_1_n_0 ;
  wire \data_out_I_reg[18]_i_1_n_0 ;
  wire \data_out_I_reg[19]_i_1_n_0 ;
  wire \data_out_I_reg[1]_i_1_n_0 ;
  wire \data_out_I_reg[20]_i_1_n_0 ;
  wire \data_out_I_reg[21]_i_1_n_0 ;
  wire \data_out_I_reg[22]_i_1_n_0 ;
  wire [23:0]\data_out_I_reg[23]_0 ;
  wire \data_out_I_reg[23]_i_1_n_0 ;
  wire \data_out_I_reg[2]_i_1_n_0 ;
  wire \data_out_I_reg[3]_i_1_n_0 ;
  wire \data_out_I_reg[4]_i_1_n_0 ;
  wire \data_out_I_reg[5]_i_1_n_0 ;
  wire \data_out_I_reg[6]_i_1_n_0 ;
  wire \data_out_I_reg[7]_i_1_n_0 ;
  wire \data_out_I_reg[8]_i_1_n_0 ;
  wire \data_out_I_reg[9]_i_1_n_0 ;
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
  wire \data_out_R[16]_i_2_n_0 ;
  wire \data_out_R[16]_i_3_n_0 ;
  wire \data_out_R[17]_i_2_n_0 ;
  wire \data_out_R[17]_i_3_n_0 ;
  wire \data_out_R[18]_i_2_n_0 ;
  wire \data_out_R[18]_i_3_n_0 ;
  wire \data_out_R[19]_i_2_n_0 ;
  wire \data_out_R[19]_i_3_n_0 ;
  wire \data_out_R[1]_i_2_n_0 ;
  wire \data_out_R[1]_i_3_n_0 ;
  wire \data_out_R[20]_i_2_n_0 ;
  wire \data_out_R[20]_i_3_n_0 ;
  wire \data_out_R[21]_i_2_n_0 ;
  wire \data_out_R[21]_i_3_n_0 ;
  wire \data_out_R[22]_i_2_n_0 ;
  wire \data_out_R[22]_i_3_n_0 ;
  wire \data_out_R[23]_i_1_n_0 ;
  wire \data_out_R[23]_i_3_n_0 ;
  wire \data_out_R[23]_i_4_n_0 ;
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
  wire \data_out_R_reg[0]_i_1_n_0 ;
  wire \data_out_R_reg[10]_i_1_n_0 ;
  wire \data_out_R_reg[11]_i_1_n_0 ;
  wire \data_out_R_reg[12]_i_1_n_0 ;
  wire \data_out_R_reg[13]_i_1_n_0 ;
  wire \data_out_R_reg[14]_i_1_n_0 ;
  wire \data_out_R_reg[15]_i_1_n_0 ;
  wire \data_out_R_reg[16]_i_1_n_0 ;
  wire \data_out_R_reg[17]_i_1_n_0 ;
  wire \data_out_R_reg[18]_i_1_n_0 ;
  wire \data_out_R_reg[19]_i_1_n_0 ;
  wire \data_out_R_reg[1]_i_1_n_0 ;
  wire \data_out_R_reg[20]_i_1_n_0 ;
  wire \data_out_R_reg[21]_i_1_n_0 ;
  wire \data_out_R_reg[22]_i_1_n_0 ;
  wire [23:0]\data_out_R_reg[23]_0 ;
  wire \data_out_R_reg[23]_i_2_n_0 ;
  wire \data_out_R_reg[2]_i_1_n_0 ;
  wire \data_out_R_reg[3]_i_1_n_0 ;
  wire \data_out_R_reg[4]_i_1_n_0 ;
  wire \data_out_R_reg[5]_i_1_n_0 ;
  wire \data_out_R_reg[6]_i_1_n_0 ;
  wire \data_out_R_reg[7]_i_1_n_0 ;
  wire \data_out_R_reg[8]_i_1_n_0 ;
  wire \data_out_R_reg[9]_i_1_n_0 ;
  wire \idx[0]_i_1_n_0 ;
  wire \idx[1]_i_1_n_0 ;
  wire \idx[2]_i_1_n_0 ;
  wire \idx[2]_i_2_n_0 ;
  wire \idx[2]_i_3_n_0 ;
  wire [0:0]\idx_reg[0]_0 ;
  wire [2:0]idxreversed;
  wire last_data_en_state_reg_0;
  wire last_data_en_state_reg_1;
  wire \mul1I[0]_i_2_n_0 ;
  wire \mul1I[0]_i_3_n_0 ;
  wire \mul1I[10]_i_2_n_0 ;
  wire \mul1I[10]_i_3_n_0 ;
  wire \mul1I[11]_i_2_n_0 ;
  wire \mul1I[11]_i_3_n_0 ;
  wire \mul1I[12]_i_2_n_0 ;
  wire \mul1I[12]_i_3_n_0 ;
  wire \mul1I[13]_i_2_n_0 ;
  wire \mul1I[13]_i_3_n_0 ;
  wire \mul1I[14]_i_2_n_0 ;
  wire \mul1I[14]_i_3_n_0 ;
  wire \mul1I[15]_i_2_n_0 ;
  wire \mul1I[15]_i_3_n_0 ;
  wire \mul1I[16]_i_2_n_0 ;
  wire \mul1I[16]_i_3_n_0 ;
  wire \mul1I[17]_i_2_n_0 ;
  wire \mul1I[17]_i_3_n_0 ;
  wire \mul1I[18]_i_2_n_0 ;
  wire \mul1I[18]_i_3_n_0 ;
  wire \mul1I[19]_i_2_n_0 ;
  wire \mul1I[19]_i_3_n_0 ;
  wire \mul1I[1]_i_2_n_0 ;
  wire \mul1I[1]_i_3_n_0 ;
  wire \mul1I[20]_i_2_n_0 ;
  wire \mul1I[20]_i_3_n_0 ;
  wire \mul1I[21]_i_2_n_0 ;
  wire \mul1I[21]_i_3_n_0 ;
  wire \mul1I[22]_i_2_n_0 ;
  wire \mul1I[22]_i_3_n_0 ;
  wire \mul1I[23]_i_2_n_0 ;
  wire \mul1I[23]_i_3_n_0 ;
  wire \mul1I[23]_i_4_n_0 ;
  wire \mul1I[23]_i_5_n_0 ;
  wire \mul1I[2]_i_2_n_0 ;
  wire \mul1I[2]_i_3_n_0 ;
  wire \mul1I[3]_i_2_n_0 ;
  wire \mul1I[3]_i_3_n_0 ;
  wire \mul1I[4]_i_2_n_0 ;
  wire \mul1I[4]_i_3_n_0 ;
  wire \mul1I[5]_i_2_n_0 ;
  wire \mul1I[5]_i_3_n_0 ;
  wire \mul1I[6]_i_2_n_0 ;
  wire \mul1I[6]_i_3_n_0 ;
  wire \mul1I[7]_i_2_n_0 ;
  wire \mul1I[7]_i_3_n_0 ;
  wire \mul1I[8]_i_2_n_0 ;
  wire \mul1I[8]_i_3_n_0 ;
  wire \mul1I[9]_i_2_n_0 ;
  wire \mul1I[9]_i_3_n_0 ;
  wire \mul1I_reg[0]_i_1_n_0 ;
  wire \mul1I_reg[10]_i_1_n_0 ;
  wire \mul1I_reg[11]_i_1_n_0 ;
  wire \mul1I_reg[12]_i_1_n_0 ;
  wire \mul1I_reg[13]_i_1_n_0 ;
  wire \mul1I_reg[14]_i_1_n_0 ;
  wire \mul1I_reg[15]_i_1_n_0 ;
  wire \mul1I_reg[16]_i_1_n_0 ;
  wire \mul1I_reg[17]_i_1_n_0 ;
  wire \mul1I_reg[18]_i_1_n_0 ;
  wire \mul1I_reg[19]_i_1_n_0 ;
  wire \mul1I_reg[1]_i_1_n_0 ;
  wire \mul1I_reg[20]_i_1_n_0 ;
  wire \mul1I_reg[21]_i_1_n_0 ;
  wire \mul1I_reg[22]_i_1_n_0 ;
  wire \mul1I_reg[23]_i_1_n_0 ;
  wire \mul1I_reg[2]_i_1_n_0 ;
  wire \mul1I_reg[3]_i_1_n_0 ;
  wire \mul1I_reg[4]_i_1_n_0 ;
  wire \mul1I_reg[5]_i_1_n_0 ;
  wire \mul1I_reg[6]_i_1_n_0 ;
  wire \mul1I_reg[7]_i_1_n_0 ;
  wire \mul1I_reg[8]_i_1_n_0 ;
  wire \mul1I_reg[9]_i_1_n_0 ;
  wire \mul1I_reg_n_0_[0] ;
  wire \mul1I_reg_n_0_[10] ;
  wire \mul1I_reg_n_0_[11] ;
  wire \mul1I_reg_n_0_[12] ;
  wire \mul1I_reg_n_0_[13] ;
  wire \mul1I_reg_n_0_[14] ;
  wire \mul1I_reg_n_0_[15] ;
  wire \mul1I_reg_n_0_[16] ;
  wire \mul1I_reg_n_0_[17] ;
  wire \mul1I_reg_n_0_[18] ;
  wire \mul1I_reg_n_0_[19] ;
  wire \mul1I_reg_n_0_[1] ;
  wire \mul1I_reg_n_0_[20] ;
  wire \mul1I_reg_n_0_[21] ;
  wire \mul1I_reg_n_0_[22] ;
  wire \mul1I_reg_n_0_[23] ;
  wire \mul1I_reg_n_0_[2] ;
  wire \mul1I_reg_n_0_[3] ;
  wire \mul1I_reg_n_0_[4] ;
  wire \mul1I_reg_n_0_[5] ;
  wire \mul1I_reg_n_0_[6] ;
  wire \mul1I_reg_n_0_[7] ;
  wire \mul1I_reg_n_0_[8] ;
  wire \mul1I_reg_n_0_[9] ;
  wire [23:0]mul1Q;
  wire \mul1Q[0]_i_2_n_0 ;
  wire \mul1Q[0]_i_3_n_0 ;
  wire \mul1Q[10]_i_2_n_0 ;
  wire \mul1Q[10]_i_3_n_0 ;
  wire \mul1Q[11]_i_2_n_0 ;
  wire \mul1Q[11]_i_3_n_0 ;
  wire \mul1Q[12]_i_2_n_0 ;
  wire \mul1Q[12]_i_3_n_0 ;
  wire \mul1Q[13]_i_2_n_0 ;
  wire \mul1Q[13]_i_3_n_0 ;
  wire \mul1Q[14]_i_2_n_0 ;
  wire \mul1Q[14]_i_3_n_0 ;
  wire \mul1Q[15]_i_2_n_0 ;
  wire \mul1Q[15]_i_3_n_0 ;
  wire \mul1Q[16]_i_2_n_0 ;
  wire \mul1Q[16]_i_3_n_0 ;
  wire \mul1Q[17]_i_2_n_0 ;
  wire \mul1Q[17]_i_3_n_0 ;
  wire \mul1Q[18]_i_2_n_0 ;
  wire \mul1Q[18]_i_3_n_0 ;
  wire \mul1Q[19]_i_2_n_0 ;
  wire \mul1Q[19]_i_3_n_0 ;
  wire \mul1Q[1]_i_2_n_0 ;
  wire \mul1Q[1]_i_3_n_0 ;
  wire \mul1Q[20]_i_2_n_0 ;
  wire \mul1Q[20]_i_3_n_0 ;
  wire \mul1Q[21]_i_2_n_0 ;
  wire \mul1Q[21]_i_3_n_0 ;
  wire \mul1Q[22]_i_2_n_0 ;
  wire \mul1Q[22]_i_3_n_0 ;
  wire \mul1Q[23]_i_2_n_0 ;
  wire \mul1Q[23]_i_3_n_0 ;
  wire \mul1Q[2]_i_2_n_0 ;
  wire \mul1Q[2]_i_3_n_0 ;
  wire \mul1Q[3]_i_2_n_0 ;
  wire \mul1Q[3]_i_3_n_0 ;
  wire \mul1Q[4]_i_2_n_0 ;
  wire \mul1Q[4]_i_3_n_0 ;
  wire \mul1Q[5]_i_2_n_0 ;
  wire \mul1Q[5]_i_3_n_0 ;
  wire \mul1Q[6]_i_2_n_0 ;
  wire \mul1Q[6]_i_3_n_0 ;
  wire \mul1Q[7]_i_2_n_0 ;
  wire \mul1Q[7]_i_3_n_0 ;
  wire \mul1Q[8]_i_2_n_0 ;
  wire \mul1Q[8]_i_3_n_0 ;
  wire \mul1Q[9]_i_2_n_0 ;
  wire \mul1Q[9]_i_3_n_0 ;
  wire \mul1Q_reg[0]_i_1_n_0 ;
  wire \mul1Q_reg[10]_i_1_n_0 ;
  wire \mul1Q_reg[11]_i_1_n_0 ;
  wire \mul1Q_reg[12]_i_1_n_0 ;
  wire \mul1Q_reg[13]_i_1_n_0 ;
  wire \mul1Q_reg[14]_i_1_n_0 ;
  wire \mul1Q_reg[15]_i_1_n_0 ;
  wire \mul1Q_reg[16]_i_1_n_0 ;
  wire \mul1Q_reg[17]_i_1_n_0 ;
  wire \mul1Q_reg[18]_i_1_n_0 ;
  wire \mul1Q_reg[19]_i_1_n_0 ;
  wire \mul1Q_reg[1]_i_1_n_0 ;
  wire \mul1Q_reg[20]_i_1_n_0 ;
  wire \mul1Q_reg[21]_i_1_n_0 ;
  wire \mul1Q_reg[22]_i_1_n_0 ;
  wire \mul1Q_reg[23]_i_1_n_0 ;
  wire \mul1Q_reg[2]_i_1_n_0 ;
  wire \mul1Q_reg[3]_i_1_n_0 ;
  wire \mul1Q_reg[4]_i_1_n_0 ;
  wire \mul1Q_reg[5]_i_1_n_0 ;
  wire \mul1Q_reg[6]_i_1_n_0 ;
  wire \mul1Q_reg[7]_i_1_n_0 ;
  wire \mul1Q_reg[8]_i_1_n_0 ;
  wire \mul1Q_reg[9]_i_1_n_0 ;
  wire [23:0]mul2I;
  wire [23:0]mul2Q;
  wire [3:0]outIdx;
  wire \outIdx[0]_i_1_n_0 ;
  wire \outIdx[1]_i_1_n_0 ;
  wire \outIdx[2]_i_1_n_0 ;
  wire \outIdx[3]_i_2_n_0 ;
  wire \outIdx[3]_i_3_n_0 ;
  wire \outIdx[3]_i_4_n_0 ;
  wire ready_reg_0;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire \shift[1]_i_1_n_0 ;
  wire \shift[1]_i_2_n_0 ;
  wire \shift[2]_i_1_n_0 ;
  wire \shift[2]_i_2_n_0 ;
  wire \shift[2]_i_3_n_0 ;
  wire \shift[3]_i_1_n_0 ;
  wire \shift[3]_i_2_n_0 ;
  wire \shift_reg_n_0_[1] ;
  wire \shift_reg_n_0_[2] ;
  wire \shift_reg_n_0_[3] ;
  wire slv_wire4;
  wire [1:1]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire \state[1]_i_4_n_0 ;
  wire [0:0]\state_reg[0]_0 ;
  wire [3:0]topIdx;
  wire \topIdx[0]_i_1_n_0 ;
  wire \topIdx[1]_i_1_n_0 ;
  wire \topIdx[2]_i_1_n_0 ;
  wire \topIdx[3]_i_3_n_0 ;
  wire \topIdx[3]_i_4_n_0 ;
  wire [2:0]twiddleIdx2;
  wire \twiddleIdx[0]_i_1_n_0 ;
  wire \twiddleIdx[1]_i_1_n_0 ;
  wire \twiddleIdx[2]_i_1_n_0 ;
  wire [2:0]\twiddleIdx_reg[2]_0 ;

  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \bottomIdx[1]_i_1 
       (.I0(idxreversed[0]),
        .I1(idxreversed[2]),
        .I2(idxreversed[1]),
        .I3(Q),
        .I4(state),
        .I5(\bottomIdx[1]_i_2_n_0 ),
        .O(\bottomIdx[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bottomIdx[1]_i_2 
       (.I0(\idx_reg[0]_0 ),
        .I1(last_data_en_state_reg_0),
        .O(\bottomIdx[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bottomIdx[2]_i_1 
       (.I0(twiddleIdx2[0]),
        .I1(\bottomIdx[1]_i_1_n_0 ),
        .O(\bottomIdx[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bottomIdx[3]_i_1 
       (.I0(twiddleIdx2[1]),
        .I1(\bottomIdx[1]_i_1_n_0 ),
        .O(\bottomIdx[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAB)) 
    \bottomIdx[4]_i_1 
       (.I0(\bottomIdx[1]_i_1_n_0 ),
        .I1(\bottomIdx[4]_i_3_n_0 ),
        .I2(\outIdx[3]_i_4_n_0 ),
        .O(\bottomIdx[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bottomIdx[4]_i_2 
       (.I0(twiddleIdx2[2]),
        .I1(\bottomIdx[1]_i_1_n_0 ),
        .O(\bottomIdx[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \bottomIdx[4]_i_3 
       (.I0(butterfly_n_2),
        .I1(butterfly_n_1),
        .O(\bottomIdx[4]_i_3_n_0 ));
  FDRE \bottomIdx_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\bottomIdx[4]_i_1_n_0 ),
        .D(\bottomIdx[1]_i_1_n_0 ),
        .Q(twiddleIdx2[0]),
        .R(1'b0));
  FDRE \bottomIdx_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\bottomIdx[4]_i_1_n_0 ),
        .D(\bottomIdx[2]_i_1_n_0 ),
        .Q(twiddleIdx2[1]),
        .R(1'b0));
  FDRE \bottomIdx_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\bottomIdx[4]_i_1_n_0 ),
        .D(\bottomIdx[3]_i_1_n_0 ),
        .Q(twiddleIdx2[2]),
        .R(1'b0));
  FDRE \bottomIdx_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\bottomIdx[4]_i_1_n_0 ),
        .D(\bottomIdx[4]_i_2_n_0 ),
        .Q(\bottomIdx_reg_n_0_[4] ),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_butterfly butterfly
       (.A(A),
        .CEA1(butterfly_n_3),
        .D({butterfly_n_6,butterfly_n_7,butterfly_n_8,butterfly_n_9,butterfly_n_10,butterfly_n_11,butterfly_n_12,butterfly_n_13,butterfly_n_14,butterfly_n_15,butterfly_n_16,butterfly_n_17,butterfly_n_18,butterfly_n_19,butterfly_n_20,butterfly_n_21,butterfly_n_22,butterfly_n_23,butterfly_n_24,butterfly_n_25,butterfly_n_26,butterfly_n_27,butterfly_n_28,butterfly_n_29}),
        .Q({state,Q}),
        .\bottomIdx_reg[1] (butterfly_n_440),
        .\bottomIdx_reg[4] (butterfly_n_2),
        .butterflyPreviousReady(butterflyPreviousReady),
        .dataI(dataI),
        .\dataI[1][23]_i_2_0 (\dataI[1][23]_i_6_n_0 ),
        .\dataI[4][23]_i_2_0 (\dataI[4][23]_i_6_n_0 ),
        .\dataI[5][23]_i_2_0 (\dataI[5][23]_i_7_n_0 ),
        .\dataI[5][23]_i_4 ({\shift_reg_n_0_[2] ,\shift_reg_n_0_[1] }),
        .\dataI_reg[0][0] (\dataI[6][0]_i_3_n_0 ),
        .\dataI_reg[0][10] (\dataI[6][10]_i_3_n_0 ),
        .\dataI_reg[0][11] (\dataI[6][11]_i_3_n_0 ),
        .\dataI_reg[0][12] (\dataI[6][12]_i_3_n_0 ),
        .\dataI_reg[0][13] (\dataI[6][13]_i_3_n_0 ),
        .\dataI_reg[0][14] (\dataI[6][14]_i_3_n_0 ),
        .\dataI_reg[0][15] (\dataI[6][15]_i_3_n_0 ),
        .\dataI_reg[0][16] (\dataI[6][16]_i_3_n_0 ),
        .\dataI_reg[0][17] (\dataI[6][17]_i_3_n_0 ),
        .\dataI_reg[0][18] (\dataI[6][18]_i_3_n_0 ),
        .\dataI_reg[0][19] (\dataI[6][19]_i_3_n_0 ),
        .\dataI_reg[0][1] (\dataI[6][1]_i_3_n_0 ),
        .\dataI_reg[0][20] (\dataI[6][20]_i_3_n_0 ),
        .\dataI_reg[0][22] (\dataI[6][22]_i_3_n_0 ),
        .\dataI_reg[0][22]_0 (\dataI[0][22]_i_3_n_0 ),
        .\dataI_reg[0][22]_1 (\dataI[0][23]_i_4_n_0 ),
        .\dataI_reg[0][23] ({butterfly_n_102,butterfly_n_103,butterfly_n_104,butterfly_n_105,butterfly_n_106,butterfly_n_107,butterfly_n_108,butterfly_n_109,butterfly_n_110,butterfly_n_111,butterfly_n_112,butterfly_n_113,butterfly_n_114,butterfly_n_115,butterfly_n_116,butterfly_n_117,butterfly_n_118,butterfly_n_119,butterfly_n_120,butterfly_n_121,butterfly_n_122,butterfly_n_123,butterfly_n_124,butterfly_n_125}),
        .\dataI_reg[0][23]_0 (\dataI[0][23]_i_3_n_0 ),
        .\dataI_reg[0][23]_1 (\dataI[0][23]_i_5_n_0 ),
        .\dataI_reg[0][2] (\dataI[6][2]_i_3_n_0 ),
        .\dataI_reg[0][3] (\dataI[6][3]_i_3_n_0 ),
        .\dataI_reg[0][4] (\dataI[6][4]_i_3_n_0 ),
        .\dataI_reg[0][5] (\dataI[6][5]_i_3_n_0 ),
        .\dataI_reg[0][6] (\dataI[6][6]_i_3_n_0 ),
        .\dataI_reg[0][7] (\dataI[6][7]_i_3_n_0 ),
        .\dataI_reg[0][8] (\dataI[6][8]_i_3_n_0 ),
        .\dataI_reg[0][9] (\dataI[6][9]_i_3_n_0 ),
        .\dataI_reg[1][23] ({butterfly_n_126,butterfly_n_127,butterfly_n_128,butterfly_n_129,butterfly_n_130,butterfly_n_131,butterfly_n_132,butterfly_n_133,butterfly_n_134,butterfly_n_135,butterfly_n_136,butterfly_n_137,butterfly_n_138,butterfly_n_139,butterfly_n_140,butterfly_n_141,butterfly_n_142,butterfly_n_143,butterfly_n_144,butterfly_n_145,butterfly_n_146,butterfly_n_147,butterfly_n_148,butterfly_n_149}),
        .\dataI_reg[1][23]_0 (\dataI[6][23]_i_3_n_0 ),
        .\dataI_reg[1][23]_1 (\dataI[1][23]_i_3_n_0 ),
        .\dataI_reg[1][23]_2 (\dataI[1][23]_i_4_n_0 ),
        .\dataI_reg[2][0] (\dataI[2][0]_i_3_n_0 ),
        .\dataI_reg[2][10] (\dataI[2][10]_i_3_n_0 ),
        .\dataI_reg[2][11] (\dataI[2][11]_i_3_n_0 ),
        .\dataI_reg[2][12] (\dataI[2][12]_i_3_n_0 ),
        .\dataI_reg[2][13] (\dataI[2][13]_i_3_n_0 ),
        .\dataI_reg[2][14] (\dataI[2][14]_i_3_n_0 ),
        .\dataI_reg[2][15] (\dataI[2][15]_i_3_n_0 ),
        .\dataI_reg[2][16] (\dataI[2][16]_i_3_n_0 ),
        .\dataI_reg[2][17] (\dataI[2][17]_i_3_n_0 ),
        .\dataI_reg[2][18] (\dataI[2][18]_i_3_n_0 ),
        .\dataI_reg[2][19] (\dataI[2][19]_i_3_n_0 ),
        .\dataI_reg[2][1] (\dataI[2][1]_i_3_n_0 ),
        .\dataI_reg[2][20] (\dataI[2][20]_i_3_n_0 ),
        .\dataI_reg[2][21] (\dataI[2][23]_i_3_n_0 ),
        .\dataI_reg[2][21]_0 (\dataI[2][21]_i_3_n_0 ),
        .\dataI_reg[2][22] (\dataI[2][22]_i_3_n_0 ),
        .\dataI_reg[2][23] ({butterfly_n_78,butterfly_n_79,butterfly_n_80,butterfly_n_81,butterfly_n_82,butterfly_n_83,butterfly_n_84,butterfly_n_85,butterfly_n_86,butterfly_n_87,butterfly_n_88,butterfly_n_89,butterfly_n_90,butterfly_n_91,butterfly_n_92,butterfly_n_93,butterfly_n_94,butterfly_n_95,butterfly_n_96,butterfly_n_97,butterfly_n_98,butterfly_n_99,butterfly_n_100,butterfly_n_101}),
        .\dataI_reg[2][23]_0 (\dataI[2][23]_i_4_n_0 ),
        .\dataI_reg[2][23]_1 (\dataI[2][23]_i_5_n_0 ),
        .\dataI_reg[2][23]_2 (\dataI[2][23]_i_6_n_0 ),
        .\dataI_reg[2][2] (\dataI[2][2]_i_3_n_0 ),
        .\dataI_reg[2][3] (\dataI[2][3]_i_3_n_0 ),
        .\dataI_reg[2][4] (\dataI[2][4]_i_3_n_0 ),
        .\dataI_reg[2][5] (\dataI[2][5]_i_3_n_0 ),
        .\dataI_reg[2][6] (\dataI[2][6]_i_3_n_0 ),
        .\dataI_reg[2][7] (\dataI[2][7]_i_3_n_0 ),
        .\dataI_reg[2][8] (\dataI[2][8]_i_3_n_0 ),
        .\dataI_reg[2][9] (\dataI[2][9]_i_3_n_0 ),
        .\dataI_reg[3][0] (\dataI[3][0]_i_3_n_0 ),
        .\dataI_reg[3][11] (\dataI[3][11]_i_3_n_0 ),
        .\dataI_reg[3][12] (\dataI[3][12]_i_3_n_0 ),
        .\dataI_reg[3][14] (\dataI[3][14]_i_3_n_0 ),
        .\dataI_reg[3][15] (\dataI[3][15]_i_3_n_0 ),
        .\dataI_reg[3][16] (\dataI[3][16]_i_3_n_0 ),
        .\dataI_reg[3][18] (\dataI[3][18]_i_3_n_0 ),
        .\dataI_reg[3][19] (\dataI[3][19]_i_3_n_0 ),
        .\dataI_reg[3][1] (\dataI[3][1]_i_3_n_0 ),
        .\dataI_reg[3][20] (\dataI[3][20]_i_3_n_0 ),
        .\dataI_reg[3][21] (\dataI[6][21]_i_3_n_0 ),
        .\dataI_reg[3][21]_0 (\dataI[3][23]_i_3_n_0 ),
        .\dataI_reg[3][21]_1 (\dataI[3][21]_i_3_n_0 ),
        .\dataI_reg[3][22] (\dataI[3][22]_i_3_n_0 ),
        .\dataI_reg[3][23] ({butterfly_n_54,butterfly_n_55,butterfly_n_56,butterfly_n_57,butterfly_n_58,butterfly_n_59,butterfly_n_60,butterfly_n_61,butterfly_n_62,butterfly_n_63,butterfly_n_64,butterfly_n_65,butterfly_n_66,butterfly_n_67,butterfly_n_68,butterfly_n_69,butterfly_n_70,butterfly_n_71,butterfly_n_72,butterfly_n_73,butterfly_n_74,butterfly_n_75,butterfly_n_76,butterfly_n_77}),
        .\dataI_reg[3][23]_0 (\dataI[3][23]_i_4_n_0 ),
        .\dataI_reg[3][23]_1 (\dataI[3][23]_i_5_n_0 ),
        .\dataI_reg[3][23]_2 (\dataI[3][23]_i_6_n_0 ),
        .\dataI_reg[3][2] (\dataI[3][2]_i_3_n_0 ),
        .\dataI_reg[3][3] (\dataI[3][3]_i_3_n_0 ),
        .\dataI_reg[3][4] (\dataI[3][4]_i_3_n_0 ),
        .\dataI_reg[3][5] (\dataI[3][5]_i_3_n_0 ),
        .\dataI_reg[3][6] (\dataI[3][6]_i_3_n_0 ),
        .\dataI_reg[4][23] ({butterfly_n_150,butterfly_n_151,butterfly_n_152,butterfly_n_153,butterfly_n_154,butterfly_n_155,butterfly_n_156,butterfly_n_157,butterfly_n_158,butterfly_n_159,butterfly_n_160,butterfly_n_161,butterfly_n_162,butterfly_n_163,butterfly_n_164,butterfly_n_165,butterfly_n_166,butterfly_n_167,butterfly_n_168,butterfly_n_169,butterfly_n_170,butterfly_n_171,butterfly_n_172,butterfly_n_173}),
        .\dataI_reg[4][23]_0 (\dataI[4][23]_i_3_n_0 ),
        .\dataI_reg[4][23]_1 (\dataI[4][23]_i_4_n_0 ),
        .\dataI_reg[5][23] ({butterfly_n_174,butterfly_n_175,butterfly_n_176,butterfly_n_177,butterfly_n_178,butterfly_n_179,butterfly_n_180,butterfly_n_181,butterfly_n_182,butterfly_n_183,butterfly_n_184,butterfly_n_185,butterfly_n_186,butterfly_n_187,butterfly_n_188,butterfly_n_189,butterfly_n_190,butterfly_n_191,butterfly_n_192,butterfly_n_193,butterfly_n_194,butterfly_n_195,butterfly_n_196,butterfly_n_197}),
        .\dataI_reg[5][23]_0 (\dataI[5][23]_i_3_n_0 ),
        .\dataI_reg[5][23]_1 (\dataI[5][23]_i_4_n_0 ),
        .\dataI_reg[6][23] ({butterfly_n_198,butterfly_n_199,butterfly_n_200,butterfly_n_201,butterfly_n_202,butterfly_n_203,butterfly_n_204,butterfly_n_205,butterfly_n_206,butterfly_n_207,butterfly_n_208,butterfly_n_209,butterfly_n_210,butterfly_n_211,butterfly_n_212,butterfly_n_213,butterfly_n_214,butterfly_n_215,butterfly_n_216,butterfly_n_217,butterfly_n_218,butterfly_n_219,butterfly_n_220,butterfly_n_221}),
        .\dataI_reg[6][23]_0 (\dataI[6][23]_i_5_n_0 ),
        .\dataI_reg[7][0] (\dataI[7][0]_i_3_n_0 ),
        .\dataI_reg[7][10] (\dataI[7][10]_i_3_n_0 ),
        .\dataI_reg[7][11] (\dataI[7][11]_i_3_n_0 ),
        .\dataI_reg[7][12] (\dataI[7][12]_i_3_n_0 ),
        .\dataI_reg[7][13] (\dataI[7][13]_i_3_n_0 ),
        .\dataI_reg[7][14] (\dataI[7][14]_i_3_n_0 ),
        .\dataI_reg[7][15] (\dataI[7][15]_i_3_n_0 ),
        .\dataI_reg[7][16] (\dataI[7][16]_i_3_n_0 ),
        .\dataI_reg[7][17] (\dataI[7][17]_i_3_n_0 ),
        .\dataI_reg[7][18] (\dataI[7][18]_i_3_n_0 ),
        .\dataI_reg[7][19] (\dataI[7][19]_i_3_n_0 ),
        .\dataI_reg[7][1] (\dataI[7][1]_i_3_n_0 ),
        .\dataI_reg[7][20] (\dataI[7][20]_i_3_n_0 ),
        .\dataI_reg[7][21] (\dataI[7][21]_i_3_n_0 ),
        .\dataI_reg[7][22] (\dataI[7][22]_i_3_n_0 ),
        .\dataI_reg[7][23] ({butterfly_n_222,butterfly_n_223,butterfly_n_224,butterfly_n_225,butterfly_n_226,butterfly_n_227,butterfly_n_228,butterfly_n_229,butterfly_n_230,butterfly_n_231,butterfly_n_232,butterfly_n_233,butterfly_n_234,butterfly_n_235,butterfly_n_236,butterfly_n_237,butterfly_n_238,butterfly_n_239,butterfly_n_240,butterfly_n_241,butterfly_n_242,butterfly_n_243,butterfly_n_244,butterfly_n_245}),
        .\dataI_reg[7][23]_0 (\dataI[7][23]_i_4_n_0 ),
        .\dataI_reg[7][23]_1 (\dataI[7][23]_i_5_n_0 ),
        .\dataI_reg[7][23]_2 (\dataI[7][23]_i_6_n_0 ),
        .\dataI_reg[7][2] (\dataI[7][2]_i_3_n_0 ),
        .\dataI_reg[7][3] (\dataI[7][3]_i_3_n_0 ),
        .\dataI_reg[7][4] (\dataI[7][4]_i_3_n_0 ),
        .\dataI_reg[7][5] (\dataI[7][5]_i_3_n_0 ),
        .\dataI_reg[7][6] (\dataI[7][6]_i_3_n_0 ),
        .\dataI_reg[7][7] (\dataI[7][7]_i_3_n_0 ),
        .\dataI_reg[7][8] (\dataI[7][8]_i_3_n_0 ),
        .\dataI_reg[7][9] (\dataI[7][9]_i_3_n_0 ),
        .dataQ(dataQ),
        .\dataQ_reg[0][0] (\dataQ[6][0]_i_3_n_0 ),
        .\dataQ_reg[0][10] (\dataQ[6][10]_i_3_n_0 ),
        .\dataQ_reg[0][11] (\dataQ[6][11]_i_3_n_0 ),
        .\dataQ_reg[0][12] (\dataQ[6][12]_i_3_n_0 ),
        .\dataQ_reg[0][13] (\dataQ[6][13]_i_3_n_0 ),
        .\dataQ_reg[0][14] (\dataQ[6][14]_i_3_n_0 ),
        .\dataQ_reg[0][15] (\dataQ[6][15]_i_3_n_0 ),
        .\dataQ_reg[0][16] (\dataQ[6][16]_i_3_n_0 ),
        .\dataQ_reg[0][17] (\dataQ[6][17]_i_3_n_0 ),
        .\dataQ_reg[0][18] (\dataQ[6][18]_i_3_n_0 ),
        .\dataQ_reg[0][19] (\dataQ[6][19]_i_3_n_0 ),
        .\dataQ_reg[0][1] (\dataQ[6][1]_i_3_n_0 ),
        .\dataQ_reg[0][20] (\dataQ[6][20]_i_3_n_0 ),
        .\dataQ_reg[0][21] (\dataQ[6][21]_i_3_n_0 ),
        .\dataQ_reg[0][22] (\dataQ[6][22]_i_3_n_0 ),
        .\dataQ_reg[0][23] ({butterfly_n_246,butterfly_n_247,butterfly_n_248,butterfly_n_249,butterfly_n_250,butterfly_n_251,butterfly_n_252,butterfly_n_253,butterfly_n_254,butterfly_n_255,butterfly_n_256,butterfly_n_257,butterfly_n_258,butterfly_n_259,butterfly_n_260,butterfly_n_261,butterfly_n_262,butterfly_n_263,butterfly_n_264,butterfly_n_265,butterfly_n_266,butterfly_n_267,butterfly_n_268,butterfly_n_269}),
        .\dataQ_reg[0][23]_0 (\dataQ[6][23]_i_3_n_0 ),
        .\dataQ_reg[0][2] (\dataQ[6][2]_i_3_n_0 ),
        .\dataQ_reg[0][3] (\dataQ[6][3]_i_3_n_0 ),
        .\dataQ_reg[0][4] (\dataQ[6][4]_i_3_n_0 ),
        .\dataQ_reg[0][5] (\dataQ[6][5]_i_3_n_0 ),
        .\dataQ_reg[0][6] (\dataQ[6][6]_i_3_n_0 ),
        .\dataQ_reg[0][8] (\dataQ[6][8]_i_3_n_0 ),
        .\dataQ_reg[0][9] (\dataQ[6][9]_i_3_n_0 ),
        .\dataQ_reg[1][23] ({butterfly_n_270,butterfly_n_271,butterfly_n_272,butterfly_n_273,butterfly_n_274,butterfly_n_275,butterfly_n_276,butterfly_n_277,butterfly_n_278,butterfly_n_279,butterfly_n_280,butterfly_n_281,butterfly_n_282,butterfly_n_283,butterfly_n_284,butterfly_n_285,butterfly_n_286,butterfly_n_287,butterfly_n_288,butterfly_n_289,butterfly_n_290,butterfly_n_291,butterfly_n_292,butterfly_n_293}),
        .\dataQ_reg[2][0] (\dataQ[2][0]_i_3_n_0 ),
        .\dataQ_reg[2][10] (\dataQ[2][10]_i_3_n_0 ),
        .\dataQ_reg[2][11] (\dataQ[2][11]_i_3_n_0 ),
        .\dataQ_reg[2][13] (\dataQ[2][13]_i_3_n_0 ),
        .\dataQ_reg[2][14] (\dataQ[2][14]_i_3_n_0 ),
        .\dataQ_reg[2][15] (\dataQ[2][15]_i_3_n_0 ),
        .\dataQ_reg[2][16] (\dataQ[2][16]_i_3_n_0 ),
        .\dataQ_reg[2][17] (\dataQ[2][17]_i_3_n_0 ),
        .\dataQ_reg[2][18] (\dataQ[2][18]_i_3_n_0 ),
        .\dataQ_reg[2][1] (\dataQ[2][1]_i_3_n_0 ),
        .\dataQ_reg[2][20] (\dataQ[2][20]_i_3_n_0 ),
        .\dataQ_reg[2][21] (\dataQ[2][21]_i_3_n_0 ),
        .\dataQ_reg[2][22] (\dataQ[2][22]_i_3_n_0 ),
        .\dataQ_reg[2][23] ({butterfly_n_294,butterfly_n_295,butterfly_n_296,butterfly_n_297,butterfly_n_298,butterfly_n_299,butterfly_n_300,butterfly_n_301,butterfly_n_302,butterfly_n_303,butterfly_n_304,butterfly_n_305,butterfly_n_306,butterfly_n_307,butterfly_n_308,butterfly_n_309,butterfly_n_310,butterfly_n_311,butterfly_n_312,butterfly_n_313,butterfly_n_314,butterfly_n_315,butterfly_n_316,butterfly_n_317}),
        .\dataQ_reg[2][23]_0 (\dataQ[2][23]_i_3_n_0 ),
        .\dataQ_reg[2][2] (\dataQ[2][2]_i_3_n_0 ),
        .\dataQ_reg[2][3] (\dataQ[2][3]_i_3_n_0 ),
        .\dataQ_reg[2][4] (\dataQ[2][4]_i_3_n_0 ),
        .\dataQ_reg[2][5] (\dataQ[2][5]_i_3_n_0 ),
        .\dataQ_reg[2][6] (\dataQ[2][6]_i_3_n_0 ),
        .\dataQ_reg[2][7] (\dataQ[2][7]_i_3_n_0 ),
        .\dataQ_reg[2][8] (\dataQ[2][8]_i_3_n_0 ),
        .\dataQ_reg[3][10] (\dataQ[3][10]_i_3_n_0 ),
        .\dataQ_reg[3][12] (\dataQ[3][12]_i_3_n_0 ),
        .\dataQ_reg[3][13] (\dataQ[3][13]_i_3_n_0 ),
        .\dataQ_reg[3][14] (\dataQ[3][14]_i_3_n_0 ),
        .\dataQ_reg[3][15] (\dataQ[3][15]_i_3_n_0 ),
        .\dataQ_reg[3][16] (\dataQ[3][16]_i_3_n_0 ),
        .\dataQ_reg[3][17] (\dataQ[3][17]_i_3_n_0 ),
        .\dataQ_reg[3][18] (\dataQ[3][18]_i_3_n_0 ),
        .\dataQ_reg[3][19] (\dataQ[3][19]_i_3_n_0 ),
        .\dataQ_reg[3][20] (\dataQ[3][20]_i_3_n_0 ),
        .\dataQ_reg[3][21] (\dataQ[3][21]_i_3_n_0 ),
        .\dataQ_reg[3][22] (\dataQ[3][22]_i_3_n_0 ),
        .\dataQ_reg[3][23] ({butterfly_n_318,butterfly_n_319,butterfly_n_320,butterfly_n_321,butterfly_n_322,butterfly_n_323,butterfly_n_324,butterfly_n_325,butterfly_n_326,butterfly_n_327,butterfly_n_328,butterfly_n_329,butterfly_n_330,butterfly_n_331,butterfly_n_332,butterfly_n_333,butterfly_n_334,butterfly_n_335,butterfly_n_336,butterfly_n_337,butterfly_n_338,butterfly_n_339,butterfly_n_340,butterfly_n_341}),
        .\dataQ_reg[3][23]_0 (\dataQ[3][23]_i_3_n_0 ),
        .\dataQ_reg[3][3] (\dataQ[3][3]_i_3_n_0 ),
        .\dataQ_reg[3][5] (\dataQ[3][5]_i_3_n_0 ),
        .\dataQ_reg[3][6] (\dataQ[3][6]_i_3_n_0 ),
        .\dataQ_reg[3][7] (\dataQ[3][7]_i_3_n_0 ),
        .\dataQ_reg[3][8] (\dataQ[3][8]_i_3_n_0 ),
        .\dataQ_reg[3][9] (\dataQ[3][9]_i_3_n_0 ),
        .\dataQ_reg[4][23] ({butterfly_n_342,butterfly_n_343,butterfly_n_344,butterfly_n_345,butterfly_n_346,butterfly_n_347,butterfly_n_348,butterfly_n_349,butterfly_n_350,butterfly_n_351,butterfly_n_352,butterfly_n_353,butterfly_n_354,butterfly_n_355,butterfly_n_356,butterfly_n_357,butterfly_n_358,butterfly_n_359,butterfly_n_360,butterfly_n_361,butterfly_n_362,butterfly_n_363,butterfly_n_364,butterfly_n_365}),
        .\dataQ_reg[5][23] ({butterfly_n_366,butterfly_n_367,butterfly_n_368,butterfly_n_369,butterfly_n_370,butterfly_n_371,butterfly_n_372,butterfly_n_373,butterfly_n_374,butterfly_n_375,butterfly_n_376,butterfly_n_377,butterfly_n_378,butterfly_n_379,butterfly_n_380,butterfly_n_381,butterfly_n_382,butterfly_n_383,butterfly_n_384,butterfly_n_385,butterfly_n_386,butterfly_n_387,butterfly_n_388,butterfly_n_389}),
        .\dataQ_reg[6][0] (\dataQ[6][0]_i_4_n_0 ),
        .\dataQ_reg[6][10] (\dataQ[6][10]_i_4_n_0 ),
        .\dataQ_reg[6][12] (\dataQ[6][12]_i_4_n_0 ),
        .\dataQ_reg[6][13] (\dataQ[6][13]_i_4_n_0 ),
        .\dataQ_reg[6][14] (\dataQ[6][14]_i_4_n_0 ),
        .\dataQ_reg[6][15] (\dataQ[6][15]_i_4_n_0 ),
        .\dataQ_reg[6][16] (\dataQ[6][16]_i_4_n_0 ),
        .\dataQ_reg[6][19] (\dataQ[6][19]_i_4_n_0 ),
        .\dataQ_reg[6][1] (\dataQ[6][1]_i_4_n_0 ),
        .\dataQ_reg[6][20] (\dataQ[6][20]_i_4_n_0 ),
        .\dataQ_reg[6][21] (\dataQ[6][21]_i_4_n_0 ),
        .\dataQ_reg[6][22] (\dataQ[6][22]_i_4_n_0 ),
        .\dataQ_reg[6][22]_0 (\dataQ[6][22]_i_5_n_0 ),
        .\dataQ_reg[6][23] ({butterfly_n_30,butterfly_n_31,butterfly_n_32,butterfly_n_33,butterfly_n_34,butterfly_n_35,butterfly_n_36,butterfly_n_37,butterfly_n_38,butterfly_n_39,butterfly_n_40,butterfly_n_41,butterfly_n_42,butterfly_n_43,butterfly_n_44,butterfly_n_45,butterfly_n_46,butterfly_n_47,butterfly_n_48,butterfly_n_49,butterfly_n_50,butterfly_n_51,butterfly_n_52,butterfly_n_53}),
        .\dataQ_reg[6][2] (\dataQ[6][2]_i_4_n_0 ),
        .\dataQ_reg[6][3] (\dataQ[6][3]_i_4_n_0 ),
        .\dataQ_reg[6][4] (\dataQ[6][4]_i_4_n_0 ),
        .\dataQ_reg[6][7] (\dataI[6][23]_i_4_n_0 ),
        .\dataQ_reg[6][7]_0 (\dataQ[6][7]_i_4_n_0 ),
        .\dataQ_reg[6][8] (\dataQ[6][8]_i_4_n_0 ),
        .\dataQ_reg[6][9] (\dataQ[6][9]_i_4_n_0 ),
        .\dataQ_reg[7][0] (\dataQ[7][0]_i_3_n_0 ),
        .\dataQ_reg[7][11] (\dataQ[7][11]_i_3_n_0 ),
        .\dataQ_reg[7][13] (\dataQ[7][13]_i_3_n_0 ),
        .\dataQ_reg[7][14] (\dataQ[7][14]_i_3_n_0 ),
        .\dataQ_reg[7][15] (\dataQ[7][15]_i_3_n_0 ),
        .\dataQ_reg[7][17] (\dataQ[7][17]_i_3_n_0 ),
        .\dataQ_reg[7][19] (\dataQ[7][19]_i_3_n_0 ),
        .\dataQ_reg[7][1] (\dataQ[7][1]_i_3_n_0 ),
        .\dataQ_reg[7][21] (\dataQ[7][21]_i_3_n_0 ),
        .\dataQ_reg[7][23] (\dataQ[7][23]_i_3_n_0 ),
        .\dataQ_reg[7][3] (\dataQ[7][3]_i_3_n_0 ),
        .\dataQ_reg[7][5] (\dataQ[7][5]_i_3_n_0 ),
        .\dataQ_reg[7][6] (\dataQ[7][6]_i_3_n_0 ),
        .\dataQ_reg[7][7] (\dataQ[6][7]_i_3_n_0 ),
        .\dataQ_reg[7][7]_0 (\dataI[7][23]_i_3_n_0 ),
        .\dataQ_reg[7][7]_1 (\dataQ[7][7]_i_3_n_0 ),
        .\dataQ_reg[7][9] (\dataQ[7][9]_i_3_n_0 ),
        .lastStartState_reg_0(butterflyStart_reg_n_0),
        .\mul1I_reg[23]_0 (mul2Q),
        .\mul1R_reg[23]_0 (mul2I),
        .\mul2Q_reg[0] ({\bottomIdx_reg_n_0_[4] ,twiddleIdx2}),
        .\mul2R_reg[22]_0 (\twiddleIdx_reg[2]_0 ),
        .ready_reg_0(butterfly_n_4),
        .ready_reg_1(butterfly_n_5),
        .s00_axi_aclk(s00_axi_aclk),
        .\shift_reg[1] ({butterfly_n_391,butterfly_n_392,butterfly_n_393,butterfly_n_394,butterfly_n_395,butterfly_n_396,butterfly_n_397,butterfly_n_398,butterfly_n_399,butterfly_n_400,butterfly_n_401,butterfly_n_402,butterfly_n_403,butterfly_n_404,butterfly_n_405,butterfly_n_406,butterfly_n_407,butterfly_n_408,butterfly_n_409,butterfly_n_410,butterfly_n_411,butterfly_n_412,butterfly_n_413,butterfly_n_414}),
        .\shift_reg[1]_0 ({butterfly_n_415,butterfly_n_416,butterfly_n_417,butterfly_n_418,butterfly_n_419,butterfly_n_420,butterfly_n_421,butterfly_n_422,butterfly_n_423,butterfly_n_424,butterfly_n_425,butterfly_n_426,butterfly_n_427,butterfly_n_428,butterfly_n_429,butterfly_n_430,butterfly_n_431,butterfly_n_432,butterfly_n_433,butterfly_n_434,butterfly_n_435,butterfly_n_436,butterfly_n_437,butterfly_n_438}),
        .\shift_reg[1]_1 (butterfly_n_439),
        .\state_reg[1] (butterfly_n_0),
        .\state_reg[1]_0 (butterfly_n_1),
        .\state_reg[1]_1 (butterfly_n_390),
        .\tempI_reg[23]_0 (mul1Q),
        .\tempR_reg[23]_0 ({\mul1I_reg_n_0_[23] ,\mul1I_reg_n_0_[22] ,\mul1I_reg_n_0_[21] ,\mul1I_reg_n_0_[20] ,\mul1I_reg_n_0_[19] ,\mul1I_reg_n_0_[18] ,\mul1I_reg_n_0_[17] ,\mul1I_reg_n_0_[16] ,\mul1I_reg_n_0_[15] ,\mul1I_reg_n_0_[14] ,\mul1I_reg_n_0_[13] ,\mul1I_reg_n_0_[12] ,\mul1I_reg_n_0_[11] ,\mul1I_reg_n_0_[10] ,\mul1I_reg_n_0_[9] ,\mul1I_reg_n_0_[8] ,\mul1I_reg_n_0_[7] ,\mul1I_reg_n_0_[6] ,\mul1I_reg_n_0_[5] ,\mul1I_reg_n_0_[4] ,\mul1I_reg_n_0_[3] ,\mul1I_reg_n_0_[2] ,\mul1I_reg_n_0_[1] ,\mul1I_reg_n_0_[0] }),
        .topIdx(topIdx),
        .\topIdx_reg[0] (butterfly_n_441),
        .\topIdx_reg[0]_0 (\bottomIdx[4]_i_3_n_0 ),
        .\topIdx_reg[3] (\bottomIdx[1]_i_1_n_0 ),
        .\topIdx_reg[3]_0 (\topIdx[3]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    butterflyPreviousReady_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_5),
        .Q(butterflyPreviousReady),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    butterflyStart_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_4),
        .Q(butterflyStart_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \dataI[0][22]_i_3 
       (.I0(state),
        .I1(Q),
        .I2(idxreversed[2]),
        .I3(idxreversed[1]),
        .I4(idxreversed[0]),
        .O(\dataI[0][22]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF0EF0020)) 
    \dataI[0][23]_i_3 
       (.I0(\dataI[6][23]_i_3_n_0 ),
        .I1(\dataI[0][23]_i_6_n_0 ),
        .I2(Q),
        .I3(state),
        .I4(dataI[191]),
        .O(\dataI[0][23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000015808015)) 
    \dataI[0][23]_i_4 
       (.I0(butterfly_n_439),
        .I1(twiddleIdx2[0]),
        .I2(topIdx[0]),
        .I3(\dataI[5][23]_i_6_n_0 ),
        .I4(\shift_reg_n_0_[1] ),
        .I5(butterfly_n_441),
        .O(\dataI[0][23]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00006009)) 
    \dataI[0][23]_i_5 
       (.I0(\shift_reg_n_0_[2] ),
        .I1(topIdx[2]),
        .I2(topIdx[1]),
        .I3(\shift_reg_n_0_[1] ),
        .I4(topIdx[0]),
        .O(\dataI[0][23]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \dataI[0][23]_i_6 
       (.I0(idxreversed[0]),
        .I1(idxreversed[1]),
        .I2(idxreversed[2]),
        .O(\dataI[0][23]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \dataI[1][23]_i_3 
       (.I0(state),
        .I1(Q),
        .I2(idxreversed[0]),
        .I3(idxreversed[2]),
        .I4(idxreversed[1]),
        .O(\dataI[1][23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0444800080000444)) 
    \dataI[1][23]_i_4 
       (.I0(butterfly_n_439),
        .I1(butterfly_n_441),
        .I2(twiddleIdx2[0]),
        .I3(topIdx[0]),
        .I4(\dataI[5][23]_i_6_n_0 ),
        .I5(\shift_reg_n_0_[1] ),
        .O(\dataI[1][23]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h60090000)) 
    \dataI[1][23]_i_6 
       (.I0(\shift_reg_n_0_[2] ),
        .I1(topIdx[2]),
        .I2(topIdx[1]),
        .I3(\shift_reg_n_0_[1] ),
        .I4(topIdx[0]),
        .O(\dataI[1][23]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[2][0]_i_3 
       (.I0(state),
        .I1(dataI[120]),
        .O(\dataI[2][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[2][10]_i_3 
       (.I0(state),
        .I1(dataI[130]),
        .O(\dataI[2][10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[2][11]_i_3 
       (.I0(state),
        .I1(dataI[131]),
        .O(\dataI[2][11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[2][12]_i_3 
       (.I0(state),
        .I1(dataI[132]),
        .O(\dataI[2][12]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[2][13]_i_3 
       (.I0(state),
        .I1(dataI[133]),
        .O(\dataI[2][13]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[2][14]_i_3 
       (.I0(state),
        .I1(dataI[134]),
        .O(\dataI[2][14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[2][15]_i_3 
       (.I0(state),
        .I1(dataI[135]),
        .O(\dataI[2][15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[2][16]_i_3 
       (.I0(state),
        .I1(dataI[136]),
        .O(\dataI[2][16]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[2][17]_i_3 
       (.I0(state),
        .I1(dataI[137]),
        .O(\dataI[2][17]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[2][18]_i_3 
       (.I0(state),
        .I1(dataI[138]),
        .O(\dataI[2][18]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[2][19]_i_3 
       (.I0(state),
        .I1(dataI[139]),
        .O(\dataI[2][19]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[2][1]_i_3 
       (.I0(state),
        .I1(dataI[121]),
        .O(\dataI[2][1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[2][20]_i_3 
       (.I0(state),
        .I1(dataI[140]),
        .O(\dataI[2][20]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[2][21]_i_3 
       (.I0(state),
        .I1(dataI[141]),
        .O(\dataI[2][21]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[2][22]_i_3 
       (.I0(state),
        .I1(dataI[142]),
        .O(\dataI[2][22]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \dataI[2][23]_i_3 
       (.I0(state),
        .I1(Q),
        .I2(idxreversed[2]),
        .I3(idxreversed[1]),
        .I4(idxreversed[0]),
        .O(\dataI[2][23]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000990)) 
    \dataI[2][23]_i_4 
       (.I0(\shift_reg_n_0_[2] ),
        .I1(topIdx[2]),
        .I2(topIdx[1]),
        .I3(\shift_reg_n_0_[1] ),
        .I4(topIdx[0]),
        .O(\dataI[2][23]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[2][23]_i_5 
       (.I0(state),
        .I1(dataI[143]),
        .O(\dataI[2][23]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \dataI[2][23]_i_6 
       (.I0(butterfly_n_441),
        .I1(butterfly_n_440),
        .I2(butterfly_n_439),
        .O(\dataI[2][23]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[2][2]_i_3 
       (.I0(state),
        .I1(dataI[122]),
        .O(\dataI[2][2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[2][3]_i_3 
       (.I0(state),
        .I1(dataI[123]),
        .O(\dataI[2][3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[2][4]_i_3 
       (.I0(state),
        .I1(dataI[124]),
        .O(\dataI[2][4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[2][5]_i_3 
       (.I0(state),
        .I1(dataI[125]),
        .O(\dataI[2][5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[2][6]_i_3 
       (.I0(state),
        .I1(dataI[126]),
        .O(\dataI[2][6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[2][7]_i_3 
       (.I0(state),
        .I1(dataI[127]),
        .O(\dataI[2][7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[2][8]_i_3 
       (.I0(state),
        .I1(dataI[128]),
        .O(\dataI[2][8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[2][9]_i_3 
       (.I0(state),
        .I1(dataI[129]),
        .O(\dataI[2][9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[3][0]_i_3 
       (.I0(state),
        .I1(dataI[96]),
        .O(\dataI[3][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[3][11]_i_3 
       (.I0(state),
        .I1(dataI[107]),
        .O(\dataI[3][11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[3][12]_i_3 
       (.I0(state),
        .I1(dataI[108]),
        .O(\dataI[3][12]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[3][14]_i_3 
       (.I0(state),
        .I1(dataI[110]),
        .O(\dataI[3][14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[3][15]_i_3 
       (.I0(state),
        .I1(dataI[111]),
        .O(\dataI[3][15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[3][16]_i_3 
       (.I0(state),
        .I1(dataI[112]),
        .O(\dataI[3][16]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[3][18]_i_3 
       (.I0(state),
        .I1(dataI[114]),
        .O(\dataI[3][18]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[3][19]_i_3 
       (.I0(state),
        .I1(dataI[115]),
        .O(\dataI[3][19]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[3][1]_i_3 
       (.I0(state),
        .I1(dataI[97]),
        .O(\dataI[3][1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[3][20]_i_3 
       (.I0(state),
        .I1(dataI[116]),
        .O(\dataI[3][20]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[3][21]_i_3 
       (.I0(state),
        .I1(dataI[117]),
        .O(\dataI[3][21]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[3][22]_i_3 
       (.I0(state),
        .I1(dataI[118]),
        .O(\dataI[3][22]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \dataI[3][23]_i_3 
       (.I0(state),
        .I1(Q),
        .I2(idxreversed[0]),
        .I3(idxreversed[2]),
        .I4(idxreversed[1]),
        .O(\dataI[3][23]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00909000)) 
    \dataI[3][23]_i_4 
       (.I0(\shift_reg_n_0_[2] ),
        .I1(topIdx[2]),
        .I2(topIdx[0]),
        .I3(topIdx[1]),
        .I4(\shift_reg_n_0_[1] ),
        .O(\dataI[3][23]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[3][23]_i_5 
       (.I0(state),
        .I1(dataI[119]),
        .O(\dataI[3][23]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \dataI[3][23]_i_6 
       (.I0(butterfly_n_441),
        .I1(butterfly_n_440),
        .I2(butterfly_n_439),
        .O(\dataI[3][23]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[3][2]_i_3 
       (.I0(state),
        .I1(dataI[98]),
        .O(\dataI[3][2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[3][3]_i_3 
       (.I0(state),
        .I1(dataI[99]),
        .O(\dataI[3][3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[3][4]_i_3 
       (.I0(state),
        .I1(dataI[100]),
        .O(\dataI[3][4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[3][5]_i_3 
       (.I0(state),
        .I1(dataI[101]),
        .O(\dataI[3][5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[3][6]_i_3 
       (.I0(state),
        .I1(dataI[102]),
        .O(\dataI[3][6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \dataI[4][23]_i_3 
       (.I0(state),
        .I1(Q),
        .I2(idxreversed[1]),
        .I3(idxreversed[2]),
        .I4(idxreversed[0]),
        .O(\dataI[4][23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000002A40402A)) 
    \dataI[4][23]_i_4 
       (.I0(butterfly_n_439),
        .I1(twiddleIdx2[0]),
        .I2(topIdx[0]),
        .I3(\dataI[5][23]_i_6_n_0 ),
        .I4(\shift_reg_n_0_[1] ),
        .I5(butterfly_n_441),
        .O(\dataI[4][23]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00009006)) 
    \dataI[4][23]_i_6 
       (.I0(topIdx[2]),
        .I1(\shift_reg_n_0_[2] ),
        .I2(topIdx[1]),
        .I3(\shift_reg_n_0_[1] ),
        .I4(topIdx[0]),
        .O(\dataI[4][23]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \dataI[5][23]_i_3 
       (.I0(state),
        .I1(Q),
        .I2(idxreversed[0]),
        .I3(idxreversed[1]),
        .I4(idxreversed[2]),
        .O(\dataI[5][23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0888400040000888)) 
    \dataI[5][23]_i_4 
       (.I0(butterfly_n_439),
        .I1(butterfly_n_441),
        .I2(twiddleIdx2[0]),
        .I3(topIdx[0]),
        .I4(\dataI[5][23]_i_6_n_0 ),
        .I5(\shift_reg_n_0_[1] ),
        .O(\dataI[5][23]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \dataI[5][23]_i_6 
       (.I0(topIdx[1]),
        .I1(twiddleIdx2[1]),
        .O(\dataI[5][23]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h90060000)) 
    \dataI[5][23]_i_7 
       (.I0(topIdx[2]),
        .I1(\shift_reg_n_0_[2] ),
        .I2(topIdx[1]),
        .I3(\shift_reg_n_0_[1] ),
        .I4(topIdx[0]),
        .O(\dataI[5][23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \dataI[6][0]_i_3 
       (.I0(\dataI_reg[1][23]_0 [0]),
        .I1(\idx_reg[0]_0 ),
        .I2(last_data_en_state_reg_0),
        .I3(\dataI[6][0]_i_5_n_0 ),
        .I4(idxreversed[2]),
        .I5(\dataI[6][0]_i_6_n_0 ),
        .O(\dataI[6][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataI[6][0]_i_5 
       (.I0(dataI[0]),
        .I1(dataI[24]),
        .I2(idxreversed[1]),
        .I3(dataI[48]),
        .I4(idxreversed[0]),
        .I5(dataI[72]),
        .O(\dataI[6][0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataI[6][0]_i_6 
       (.I0(dataI[96]),
        .I1(dataI[120]),
        .I2(idxreversed[1]),
        .I3(dataI[144]),
        .I4(idxreversed[0]),
        .I5(dataI[168]),
        .O(\dataI[6][0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \dataI[6][10]_i_3 
       (.I0(\dataI_reg[1][23]_0 [10]),
        .I1(\idx_reg[0]_0 ),
        .I2(last_data_en_state_reg_0),
        .I3(\dataI[6][10]_i_5_n_0 ),
        .I4(idxreversed[2]),
        .I5(\dataI[6][10]_i_6_n_0 ),
        .O(\dataI[6][10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataI[6][10]_i_5 
       (.I0(dataI[10]),
        .I1(dataI[34]),
        .I2(idxreversed[1]),
        .I3(dataI[58]),
        .I4(idxreversed[0]),
        .I5(dataI[82]),
        .O(\dataI[6][10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataI[6][10]_i_6 
       (.I0(dataI[106]),
        .I1(dataI[130]),
        .I2(idxreversed[1]),
        .I3(dataI[154]),
        .I4(idxreversed[0]),
        .I5(dataI[178]),
        .O(\dataI[6][10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \dataI[6][11]_i_3 
       (.I0(\dataI_reg[1][23]_0 [11]),
        .I1(\idx_reg[0]_0 ),
        .I2(last_data_en_state_reg_0),
        .I3(\dataI[6][11]_i_5_n_0 ),
        .I4(idxreversed[2]),
        .I5(\dataI[6][11]_i_6_n_0 ),
        .O(\dataI[6][11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataI[6][11]_i_5 
       (.I0(dataI[11]),
        .I1(dataI[35]),
        .I2(idxreversed[1]),
        .I3(dataI[59]),
        .I4(idxreversed[0]),
        .I5(dataI[83]),
        .O(\dataI[6][11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataI[6][11]_i_6 
       (.I0(dataI[107]),
        .I1(dataI[131]),
        .I2(idxreversed[1]),
        .I3(dataI[155]),
        .I4(idxreversed[0]),
        .I5(dataI[179]),
        .O(\dataI[6][11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \dataI[6][12]_i_3 
       (.I0(\dataI_reg[1][23]_0 [12]),
        .I1(\idx_reg[0]_0 ),
        .I2(last_data_en_state_reg_0),
        .I3(\dataI[6][12]_i_5_n_0 ),
        .I4(idxreversed[2]),
        .I5(\dataI[6][12]_i_6_n_0 ),
        .O(\dataI[6][12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataI[6][12]_i_5 
       (.I0(dataI[12]),
        .I1(dataI[36]),
        .I2(idxreversed[1]),
        .I3(dataI[60]),
        .I4(idxreversed[0]),
        .I5(dataI[84]),
        .O(\dataI[6][12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataI[6][12]_i_6 
       (.I0(dataI[108]),
        .I1(dataI[132]),
        .I2(idxreversed[1]),
        .I3(dataI[156]),
        .I4(idxreversed[0]),
        .I5(dataI[180]),
        .O(\dataI[6][12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \dataI[6][13]_i_3 
       (.I0(\dataI_reg[1][23]_0 [13]),
        .I1(\idx_reg[0]_0 ),
        .I2(last_data_en_state_reg_0),
        .I3(\dataI[6][13]_i_5_n_0 ),
        .I4(idxreversed[2]),
        .I5(\dataI[6][13]_i_6_n_0 ),
        .O(\dataI[6][13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataI[6][13]_i_5 
       (.I0(dataI[13]),
        .I1(dataI[37]),
        .I2(idxreversed[1]),
        .I3(dataI[61]),
        .I4(idxreversed[0]),
        .I5(dataI[85]),
        .O(\dataI[6][13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataI[6][13]_i_6 
       (.I0(dataI[109]),
        .I1(dataI[133]),
        .I2(idxreversed[1]),
        .I3(dataI[157]),
        .I4(idxreversed[0]),
        .I5(dataI[181]),
        .O(\dataI[6][13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \dataI[6][14]_i_3 
       (.I0(\dataI_reg[1][23]_0 [14]),
        .I1(\idx_reg[0]_0 ),
        .I2(last_data_en_state_reg_0),
        .I3(\dataI[6][14]_i_5_n_0 ),
        .I4(idxreversed[2]),
        .I5(\dataI[6][14]_i_6_n_0 ),
        .O(\dataI[6][14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataI[6][14]_i_5 
       (.I0(dataI[14]),
        .I1(dataI[38]),
        .I2(idxreversed[1]),
        .I3(dataI[62]),
        .I4(idxreversed[0]),
        .I5(dataI[86]),
        .O(\dataI[6][14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataI[6][14]_i_6 
       (.I0(dataI[110]),
        .I1(dataI[134]),
        .I2(idxreversed[1]),
        .I3(dataI[158]),
        .I4(idxreversed[0]),
        .I5(dataI[182]),
        .O(\dataI[6][14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \dataI[6][15]_i_3 
       (.I0(\dataI_reg[1][23]_0 [15]),
        .I1(\idx_reg[0]_0 ),
        .I2(last_data_en_state_reg_0),
        .I3(\dataI[6][15]_i_5_n_0 ),
        .I4(idxreversed[2]),
        .I5(\dataI[6][15]_i_6_n_0 ),
        .O(\dataI[6][15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataI[6][15]_i_5 
       (.I0(dataI[15]),
        .I1(dataI[39]),
        .I2(idxreversed[1]),
        .I3(dataI[63]),
        .I4(idxreversed[0]),
        .I5(dataI[87]),
        .O(\dataI[6][15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataI[6][15]_i_6 
       (.I0(dataI[111]),
        .I1(dataI[135]),
        .I2(idxreversed[1]),
        .I3(dataI[159]),
        .I4(idxreversed[0]),
        .I5(dataI[183]),
        .O(\dataI[6][15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \dataI[6][16]_i_3 
       (.I0(\dataI_reg[1][23]_0 [16]),
        .I1(\idx_reg[0]_0 ),
        .I2(last_data_en_state_reg_0),
        .I3(\dataI[6][16]_i_5_n_0 ),
        .I4(idxreversed[2]),
        .I5(\dataI[6][16]_i_6_n_0 ),
        .O(\dataI[6][16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataI[6][16]_i_5 
       (.I0(dataI[16]),
        .I1(dataI[40]),
        .I2(idxreversed[1]),
        .I3(dataI[64]),
        .I4(idxreversed[0]),
        .I5(dataI[88]),
        .O(\dataI[6][16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataI[6][16]_i_6 
       (.I0(dataI[112]),
        .I1(dataI[136]),
        .I2(idxreversed[1]),
        .I3(dataI[160]),
        .I4(idxreversed[0]),
        .I5(dataI[184]),
        .O(\dataI[6][16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \dataI[6][17]_i_3 
       (.I0(\dataI_reg[1][23]_0 [17]),
        .I1(\idx_reg[0]_0 ),
        .I2(last_data_en_state_reg_0),
        .I3(\dataI[6][17]_i_5_n_0 ),
        .I4(idxreversed[2]),
        .I5(\dataI[6][17]_i_6_n_0 ),
        .O(\dataI[6][17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataI[6][17]_i_5 
       (.I0(dataI[17]),
        .I1(dataI[41]),
        .I2(idxreversed[1]),
        .I3(dataI[65]),
        .I4(idxreversed[0]),
        .I5(dataI[89]),
        .O(\dataI[6][17]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataI[6][17]_i_6 
       (.I0(dataI[113]),
        .I1(dataI[137]),
        .I2(idxreversed[1]),
        .I3(dataI[161]),
        .I4(idxreversed[0]),
        .I5(dataI[185]),
        .O(\dataI[6][17]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \dataI[6][18]_i_3 
       (.I0(\dataI_reg[1][23]_0 [18]),
        .I1(\idx_reg[0]_0 ),
        .I2(last_data_en_state_reg_0),
        .I3(\dataI[6][18]_i_5_n_0 ),
        .I4(idxreversed[2]),
        .I5(\dataI[6][18]_i_6_n_0 ),
        .O(\dataI[6][18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataI[6][18]_i_5 
       (.I0(dataI[18]),
        .I1(dataI[42]),
        .I2(idxreversed[1]),
        .I3(dataI[66]),
        .I4(idxreversed[0]),
        .I5(dataI[90]),
        .O(\dataI[6][18]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataI[6][18]_i_6 
       (.I0(dataI[114]),
        .I1(dataI[138]),
        .I2(idxreversed[1]),
        .I3(dataI[162]),
        .I4(idxreversed[0]),
        .I5(dataI[186]),
        .O(\dataI[6][18]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \dataI[6][19]_i_3 
       (.I0(\dataI_reg[1][23]_0 [19]),
        .I1(\idx_reg[0]_0 ),
        .I2(last_data_en_state_reg_0),
        .I3(\dataI[6][19]_i_5_n_0 ),
        .I4(idxreversed[2]),
        .I5(\dataI[6][19]_i_6_n_0 ),
        .O(\dataI[6][19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataI[6][19]_i_5 
       (.I0(dataI[19]),
        .I1(dataI[43]),
        .I2(idxreversed[1]),
        .I3(dataI[67]),
        .I4(idxreversed[0]),
        .I5(dataI[91]),
        .O(\dataI[6][19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataI[6][19]_i_6 
       (.I0(dataI[115]),
        .I1(dataI[139]),
        .I2(idxreversed[1]),
        .I3(dataI[163]),
        .I4(idxreversed[0]),
        .I5(dataI[187]),
        .O(\dataI[6][19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \dataI[6][1]_i_3 
       (.I0(\dataI_reg[1][23]_0 [1]),
        .I1(\idx_reg[0]_0 ),
        .I2(last_data_en_state_reg_0),
        .I3(\dataI[6][1]_i_5_n_0 ),
        .I4(idxreversed[2]),
        .I5(\dataI[6][1]_i_6_n_0 ),
        .O(\dataI[6][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataI[6][1]_i_5 
       (.I0(dataI[1]),
        .I1(dataI[25]),
        .I2(idxreversed[1]),
        .I3(dataI[49]),
        .I4(idxreversed[0]),
        .I5(dataI[73]),
        .O(\dataI[6][1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataI[6][1]_i_6 
       (.I0(dataI[97]),
        .I1(dataI[121]),
        .I2(idxreversed[1]),
        .I3(dataI[145]),
        .I4(idxreversed[0]),
        .I5(dataI[169]),
        .O(\dataI[6][1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \dataI[6][20]_i_3 
       (.I0(\dataI_reg[1][23]_0 [20]),
        .I1(\idx_reg[0]_0 ),
        .I2(last_data_en_state_reg_0),
        .I3(\dataI[6][20]_i_5_n_0 ),
        .I4(idxreversed[2]),
        .I5(\dataI[6][20]_i_6_n_0 ),
        .O(\dataI[6][20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataI[6][20]_i_5 
       (.I0(dataI[20]),
        .I1(dataI[44]),
        .I2(idxreversed[1]),
        .I3(dataI[68]),
        .I4(idxreversed[0]),
        .I5(dataI[92]),
        .O(\dataI[6][20]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataI[6][20]_i_6 
       (.I0(dataI[116]),
        .I1(dataI[140]),
        .I2(idxreversed[1]),
        .I3(dataI[164]),
        .I4(idxreversed[0]),
        .I5(dataI[188]),
        .O(\dataI[6][20]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \dataI[6][21]_i_3 
       (.I0(\dataI_reg[1][23]_0 [21]),
        .I1(\idx_reg[0]_0 ),
        .I2(last_data_en_state_reg_0),
        .I3(\dataI[6][21]_i_5_n_0 ),
        .I4(idxreversed[2]),
        .I5(\dataI[6][21]_i_6_n_0 ),
        .O(\dataI[6][21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataI[6][21]_i_5 
       (.I0(dataI[21]),
        .I1(dataI[45]),
        .I2(idxreversed[1]),
        .I3(dataI[69]),
        .I4(idxreversed[0]),
        .I5(dataI[93]),
        .O(\dataI[6][21]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataI[6][21]_i_6 
       (.I0(dataI[117]),
        .I1(dataI[141]),
        .I2(idxreversed[1]),
        .I3(dataI[165]),
        .I4(idxreversed[0]),
        .I5(dataI[189]),
        .O(\dataI[6][21]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \dataI[6][22]_i_3 
       (.I0(\dataI_reg[1][23]_0 [22]),
        .I1(\idx_reg[0]_0 ),
        .I2(last_data_en_state_reg_0),
        .I3(\dataI[6][22]_i_5_n_0 ),
        .I4(idxreversed[2]),
        .I5(\dataI[6][22]_i_6_n_0 ),
        .O(\dataI[6][22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataI[6][22]_i_5 
       (.I0(dataI[22]),
        .I1(dataI[46]),
        .I2(idxreversed[1]),
        .I3(dataI[70]),
        .I4(idxreversed[0]),
        .I5(dataI[94]),
        .O(\dataI[6][22]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataI[6][22]_i_6 
       (.I0(dataI[118]),
        .I1(dataI[142]),
        .I2(idxreversed[1]),
        .I3(dataI[166]),
        .I4(idxreversed[0]),
        .I5(dataI[190]),
        .O(\dataI[6][22]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \dataI[6][23]_i_3 
       (.I0(\dataI_reg[1][23]_0 [23]),
        .I1(\idx_reg[0]_0 ),
        .I2(last_data_en_state_reg_0),
        .I3(\dataI[6][23]_i_7_n_0 ),
        .I4(idxreversed[2]),
        .I5(\dataI[6][23]_i_8_n_0 ),
        .O(\dataI[6][23]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \dataI[6][23]_i_4 
       (.I0(state),
        .I1(Q),
        .I2(idxreversed[2]),
        .I3(idxreversed[1]),
        .I4(idxreversed[0]),
        .O(\dataI[6][23]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \dataI[6][23]_i_5 
       (.I0(butterfly_n_441),
        .I1(butterfly_n_440),
        .I2(butterfly_n_439),
        .O(\dataI[6][23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataI[6][23]_i_7 
       (.I0(dataI[23]),
        .I1(dataI[47]),
        .I2(idxreversed[1]),
        .I3(dataI[71]),
        .I4(idxreversed[0]),
        .I5(dataI[95]),
        .O(\dataI[6][23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataI[6][23]_i_8 
       (.I0(dataI[119]),
        .I1(dataI[143]),
        .I2(idxreversed[1]),
        .I3(dataI[167]),
        .I4(idxreversed[0]),
        .I5(dataI[191]),
        .O(\dataI[6][23]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \dataI[6][2]_i_3 
       (.I0(\dataI_reg[1][23]_0 [2]),
        .I1(\idx_reg[0]_0 ),
        .I2(last_data_en_state_reg_0),
        .I3(\dataI[6][2]_i_5_n_0 ),
        .I4(idxreversed[2]),
        .I5(\dataI[6][2]_i_6_n_0 ),
        .O(\dataI[6][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataI[6][2]_i_5 
       (.I0(dataI[2]),
        .I1(dataI[26]),
        .I2(idxreversed[1]),
        .I3(dataI[50]),
        .I4(idxreversed[0]),
        .I5(dataI[74]),
        .O(\dataI[6][2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataI[6][2]_i_6 
       (.I0(dataI[98]),
        .I1(dataI[122]),
        .I2(idxreversed[1]),
        .I3(dataI[146]),
        .I4(idxreversed[0]),
        .I5(dataI[170]),
        .O(\dataI[6][2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \dataI[6][3]_i_3 
       (.I0(\dataI_reg[1][23]_0 [3]),
        .I1(\idx_reg[0]_0 ),
        .I2(last_data_en_state_reg_0),
        .I3(\dataI[6][3]_i_5_n_0 ),
        .I4(idxreversed[2]),
        .I5(\dataI[6][3]_i_6_n_0 ),
        .O(\dataI[6][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataI[6][3]_i_5 
       (.I0(dataI[3]),
        .I1(dataI[27]),
        .I2(idxreversed[1]),
        .I3(dataI[51]),
        .I4(idxreversed[0]),
        .I5(dataI[75]),
        .O(\dataI[6][3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataI[6][3]_i_6 
       (.I0(dataI[99]),
        .I1(dataI[123]),
        .I2(idxreversed[1]),
        .I3(dataI[147]),
        .I4(idxreversed[0]),
        .I5(dataI[171]),
        .O(\dataI[6][3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \dataI[6][4]_i_3 
       (.I0(\dataI_reg[1][23]_0 [4]),
        .I1(\idx_reg[0]_0 ),
        .I2(last_data_en_state_reg_0),
        .I3(\dataI[6][4]_i_5_n_0 ),
        .I4(idxreversed[2]),
        .I5(\dataI[6][4]_i_6_n_0 ),
        .O(\dataI[6][4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataI[6][4]_i_5 
       (.I0(dataI[4]),
        .I1(dataI[28]),
        .I2(idxreversed[1]),
        .I3(dataI[52]),
        .I4(idxreversed[0]),
        .I5(dataI[76]),
        .O(\dataI[6][4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataI[6][4]_i_6 
       (.I0(dataI[100]),
        .I1(dataI[124]),
        .I2(idxreversed[1]),
        .I3(dataI[148]),
        .I4(idxreversed[0]),
        .I5(dataI[172]),
        .O(\dataI[6][4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \dataI[6][5]_i_3 
       (.I0(\dataI_reg[1][23]_0 [5]),
        .I1(\idx_reg[0]_0 ),
        .I2(last_data_en_state_reg_0),
        .I3(\dataI[6][5]_i_5_n_0 ),
        .I4(idxreversed[2]),
        .I5(\dataI[6][5]_i_6_n_0 ),
        .O(\dataI[6][5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataI[6][5]_i_5 
       (.I0(dataI[5]),
        .I1(dataI[29]),
        .I2(idxreversed[1]),
        .I3(dataI[53]),
        .I4(idxreversed[0]),
        .I5(dataI[77]),
        .O(\dataI[6][5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataI[6][5]_i_6 
       (.I0(dataI[101]),
        .I1(dataI[125]),
        .I2(idxreversed[1]),
        .I3(dataI[149]),
        .I4(idxreversed[0]),
        .I5(dataI[173]),
        .O(\dataI[6][5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \dataI[6][6]_i_3 
       (.I0(\dataI_reg[1][23]_0 [6]),
        .I1(\idx_reg[0]_0 ),
        .I2(last_data_en_state_reg_0),
        .I3(\dataI[6][6]_i_5_n_0 ),
        .I4(idxreversed[2]),
        .I5(\dataI[6][6]_i_6_n_0 ),
        .O(\dataI[6][6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataI[6][6]_i_5 
       (.I0(dataI[6]),
        .I1(dataI[30]),
        .I2(idxreversed[1]),
        .I3(dataI[54]),
        .I4(idxreversed[0]),
        .I5(dataI[78]),
        .O(\dataI[6][6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataI[6][6]_i_6 
       (.I0(dataI[102]),
        .I1(dataI[126]),
        .I2(idxreversed[1]),
        .I3(dataI[150]),
        .I4(idxreversed[0]),
        .I5(dataI[174]),
        .O(\dataI[6][6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \dataI[6][7]_i_3 
       (.I0(\dataI_reg[1][23]_0 [7]),
        .I1(\idx_reg[0]_0 ),
        .I2(last_data_en_state_reg_0),
        .I3(\dataI[6][7]_i_5_n_0 ),
        .I4(idxreversed[2]),
        .I5(\dataI[6][7]_i_6_n_0 ),
        .O(\dataI[6][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataI[6][7]_i_5 
       (.I0(dataI[7]),
        .I1(dataI[31]),
        .I2(idxreversed[1]),
        .I3(dataI[55]),
        .I4(idxreversed[0]),
        .I5(dataI[79]),
        .O(\dataI[6][7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataI[6][7]_i_6 
       (.I0(dataI[103]),
        .I1(dataI[127]),
        .I2(idxreversed[1]),
        .I3(dataI[151]),
        .I4(idxreversed[0]),
        .I5(dataI[175]),
        .O(\dataI[6][7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \dataI[6][8]_i_3 
       (.I0(\dataI_reg[1][23]_0 [8]),
        .I1(\idx_reg[0]_0 ),
        .I2(last_data_en_state_reg_0),
        .I3(\dataI[6][8]_i_5_n_0 ),
        .I4(idxreversed[2]),
        .I5(\dataI[6][8]_i_6_n_0 ),
        .O(\dataI[6][8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataI[6][8]_i_5 
       (.I0(dataI[8]),
        .I1(dataI[32]),
        .I2(idxreversed[1]),
        .I3(dataI[56]),
        .I4(idxreversed[0]),
        .I5(dataI[80]),
        .O(\dataI[6][8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataI[6][8]_i_6 
       (.I0(dataI[104]),
        .I1(dataI[128]),
        .I2(idxreversed[1]),
        .I3(dataI[152]),
        .I4(idxreversed[0]),
        .I5(dataI[176]),
        .O(\dataI[6][8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \dataI[6][9]_i_3 
       (.I0(\dataI_reg[1][23]_0 [9]),
        .I1(\idx_reg[0]_0 ),
        .I2(last_data_en_state_reg_0),
        .I3(\dataI[6][9]_i_5_n_0 ),
        .I4(idxreversed[2]),
        .I5(\dataI[6][9]_i_6_n_0 ),
        .O(\dataI[6][9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataI[6][9]_i_5 
       (.I0(dataI[9]),
        .I1(dataI[33]),
        .I2(idxreversed[1]),
        .I3(dataI[57]),
        .I4(idxreversed[0]),
        .I5(dataI[81]),
        .O(\dataI[6][9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataI[6][9]_i_6 
       (.I0(dataI[105]),
        .I1(dataI[129]),
        .I2(idxreversed[1]),
        .I3(dataI[153]),
        .I4(idxreversed[0]),
        .I5(dataI[177]),
        .O(\dataI[6][9]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[7][0]_i_3 
       (.I0(state),
        .I1(dataI[0]),
        .O(\dataI[7][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[7][10]_i_3 
       (.I0(state),
        .I1(dataI[10]),
        .O(\dataI[7][10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[7][11]_i_3 
       (.I0(state),
        .I1(dataI[11]),
        .O(\dataI[7][11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[7][12]_i_3 
       (.I0(state),
        .I1(dataI[12]),
        .O(\dataI[7][12]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[7][13]_i_3 
       (.I0(state),
        .I1(dataI[13]),
        .O(\dataI[7][13]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[7][14]_i_3 
       (.I0(state),
        .I1(dataI[14]),
        .O(\dataI[7][14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[7][15]_i_3 
       (.I0(state),
        .I1(dataI[15]),
        .O(\dataI[7][15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[7][16]_i_3 
       (.I0(state),
        .I1(dataI[16]),
        .O(\dataI[7][16]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[7][17]_i_3 
       (.I0(state),
        .I1(dataI[17]),
        .O(\dataI[7][17]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[7][18]_i_3 
       (.I0(state),
        .I1(dataI[18]),
        .O(\dataI[7][18]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[7][19]_i_3 
       (.I0(state),
        .I1(dataI[19]),
        .O(\dataI[7][19]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[7][1]_i_3 
       (.I0(state),
        .I1(dataI[1]),
        .O(\dataI[7][1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[7][20]_i_3 
       (.I0(state),
        .I1(dataI[20]),
        .O(\dataI[7][20]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[7][21]_i_3 
       (.I0(state),
        .I1(dataI[21]),
        .O(\dataI[7][21]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[7][22]_i_3 
       (.I0(state),
        .I1(dataI[22]),
        .O(\dataI[7][22]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \dataI[7][23]_i_3 
       (.I0(idxreversed[0]),
        .I1(idxreversed[2]),
        .I2(idxreversed[1]),
        .I3(state),
        .I4(Q),
        .O(\dataI[7][23]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00606000)) 
    \dataI[7][23]_i_4 
       (.I0(topIdx[2]),
        .I1(\shift_reg_n_0_[2] ),
        .I2(topIdx[0]),
        .I3(topIdx[1]),
        .I4(\shift_reg_n_0_[1] ),
        .O(\dataI[7][23]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[7][23]_i_5 
       (.I0(state),
        .I1(dataI[23]),
        .O(\dataI[7][23]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \dataI[7][23]_i_6 
       (.I0(butterfly_n_441),
        .I1(butterfly_n_440),
        .I2(butterfly_n_439),
        .O(\dataI[7][23]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[7][2]_i_3 
       (.I0(state),
        .I1(dataI[2]),
        .O(\dataI[7][2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[7][3]_i_3 
       (.I0(state),
        .I1(dataI[3]),
        .O(\dataI[7][3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[7][4]_i_3 
       (.I0(state),
        .I1(dataI[4]),
        .O(\dataI[7][4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[7][5]_i_3 
       (.I0(state),
        .I1(dataI[5]),
        .O(\dataI[7][5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[7][6]_i_3 
       (.I0(state),
        .I1(dataI[6]),
        .O(\dataI[7][6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[7][7]_i_3 
       (.I0(state),
        .I1(dataI[7]),
        .O(\dataI[7][7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[7][8]_i_3 
       (.I0(state),
        .I1(dataI[8]),
        .O(\dataI[7][8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataI[7][9]_i_3 
       (.I0(state),
        .I1(dataI[9]),
        .O(\dataI[7][9]_i_3_n_0 ));
  FDRE \dataI_reg[0][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_125),
        .Q(dataI[168]),
        .R(1'b0));
  FDRE \dataI_reg[0][10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_115),
        .Q(dataI[178]),
        .R(1'b0));
  FDRE \dataI_reg[0][11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_114),
        .Q(dataI[179]),
        .R(1'b0));
  FDRE \dataI_reg[0][12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_113),
        .Q(dataI[180]),
        .R(1'b0));
  FDRE \dataI_reg[0][13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_112),
        .Q(dataI[181]),
        .R(1'b0));
  FDRE \dataI_reg[0][14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_111),
        .Q(dataI[182]),
        .R(1'b0));
  FDRE \dataI_reg[0][15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_110),
        .Q(dataI[183]),
        .R(1'b0));
  FDRE \dataI_reg[0][16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_109),
        .Q(dataI[184]),
        .R(1'b0));
  FDRE \dataI_reg[0][17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_108),
        .Q(dataI[185]),
        .R(1'b0));
  FDRE \dataI_reg[0][18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_107),
        .Q(dataI[186]),
        .R(1'b0));
  FDRE \dataI_reg[0][19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_106),
        .Q(dataI[187]),
        .R(1'b0));
  FDRE \dataI_reg[0][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_124),
        .Q(dataI[169]),
        .R(1'b0));
  FDRE \dataI_reg[0][20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_105),
        .Q(dataI[188]),
        .R(1'b0));
  FDRE \dataI_reg[0][21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_104),
        .Q(dataI[189]),
        .R(1'b0));
  FDRE \dataI_reg[0][22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_103),
        .Q(dataI[190]),
        .R(1'b0));
  FDRE \dataI_reg[0][23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_102),
        .Q(dataI[191]),
        .R(1'b0));
  FDRE \dataI_reg[0][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_123),
        .Q(dataI[170]),
        .R(1'b0));
  FDRE \dataI_reg[0][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_122),
        .Q(dataI[171]),
        .R(1'b0));
  FDRE \dataI_reg[0][4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_121),
        .Q(dataI[172]),
        .R(1'b0));
  FDRE \dataI_reg[0][5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_120),
        .Q(dataI[173]),
        .R(1'b0));
  FDRE \dataI_reg[0][6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_119),
        .Q(dataI[174]),
        .R(1'b0));
  FDRE \dataI_reg[0][7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_118),
        .Q(dataI[175]),
        .R(1'b0));
  FDRE \dataI_reg[0][8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_117),
        .Q(dataI[176]),
        .R(1'b0));
  FDRE \dataI_reg[0][9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_116),
        .Q(dataI[177]),
        .R(1'b0));
  FDRE \dataI_reg[1][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_149),
        .Q(dataI[144]),
        .R(1'b0));
  FDRE \dataI_reg[1][10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_139),
        .Q(dataI[154]),
        .R(1'b0));
  FDRE \dataI_reg[1][11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_138),
        .Q(dataI[155]),
        .R(1'b0));
  FDRE \dataI_reg[1][12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_137),
        .Q(dataI[156]),
        .R(1'b0));
  FDRE \dataI_reg[1][13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_136),
        .Q(dataI[157]),
        .R(1'b0));
  FDRE \dataI_reg[1][14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_135),
        .Q(dataI[158]),
        .R(1'b0));
  FDRE \dataI_reg[1][15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_134),
        .Q(dataI[159]),
        .R(1'b0));
  FDRE \dataI_reg[1][16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_133),
        .Q(dataI[160]),
        .R(1'b0));
  FDRE \dataI_reg[1][17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_132),
        .Q(dataI[161]),
        .R(1'b0));
  FDRE \dataI_reg[1][18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_131),
        .Q(dataI[162]),
        .R(1'b0));
  FDRE \dataI_reg[1][19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_130),
        .Q(dataI[163]),
        .R(1'b0));
  FDRE \dataI_reg[1][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_148),
        .Q(dataI[145]),
        .R(1'b0));
  FDRE \dataI_reg[1][20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_129),
        .Q(dataI[164]),
        .R(1'b0));
  FDRE \dataI_reg[1][21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_128),
        .Q(dataI[165]),
        .R(1'b0));
  FDRE \dataI_reg[1][22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_127),
        .Q(dataI[166]),
        .R(1'b0));
  FDRE \dataI_reg[1][23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_126),
        .Q(dataI[167]),
        .R(1'b0));
  FDRE \dataI_reg[1][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_147),
        .Q(dataI[146]),
        .R(1'b0));
  FDRE \dataI_reg[1][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_146),
        .Q(dataI[147]),
        .R(1'b0));
  FDRE \dataI_reg[1][4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_145),
        .Q(dataI[148]),
        .R(1'b0));
  FDRE \dataI_reg[1][5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_144),
        .Q(dataI[149]),
        .R(1'b0));
  FDRE \dataI_reg[1][6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_143),
        .Q(dataI[150]),
        .R(1'b0));
  FDRE \dataI_reg[1][7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_142),
        .Q(dataI[151]),
        .R(1'b0));
  FDRE \dataI_reg[1][8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_141),
        .Q(dataI[152]),
        .R(1'b0));
  FDRE \dataI_reg[1][9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_140),
        .Q(dataI[153]),
        .R(1'b0));
  FDRE \dataI_reg[2][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_101),
        .Q(dataI[120]),
        .R(1'b0));
  FDRE \dataI_reg[2][10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_91),
        .Q(dataI[130]),
        .R(1'b0));
  FDRE \dataI_reg[2][11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_90),
        .Q(dataI[131]),
        .R(1'b0));
  FDRE \dataI_reg[2][12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_89),
        .Q(dataI[132]),
        .R(1'b0));
  FDRE \dataI_reg[2][13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_88),
        .Q(dataI[133]),
        .R(1'b0));
  FDRE \dataI_reg[2][14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_87),
        .Q(dataI[134]),
        .R(1'b0));
  FDRE \dataI_reg[2][15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_86),
        .Q(dataI[135]),
        .R(1'b0));
  FDRE \dataI_reg[2][16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_85),
        .Q(dataI[136]),
        .R(1'b0));
  FDRE \dataI_reg[2][17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_84),
        .Q(dataI[137]),
        .R(1'b0));
  FDRE \dataI_reg[2][18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_83),
        .Q(dataI[138]),
        .R(1'b0));
  FDRE \dataI_reg[2][19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_82),
        .Q(dataI[139]),
        .R(1'b0));
  FDRE \dataI_reg[2][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_100),
        .Q(dataI[121]),
        .R(1'b0));
  FDRE \dataI_reg[2][20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_81),
        .Q(dataI[140]),
        .R(1'b0));
  FDRE \dataI_reg[2][21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_80),
        .Q(dataI[141]),
        .R(1'b0));
  FDRE \dataI_reg[2][22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_79),
        .Q(dataI[142]),
        .R(1'b0));
  FDRE \dataI_reg[2][23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_78),
        .Q(dataI[143]),
        .R(1'b0));
  FDRE \dataI_reg[2][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_99),
        .Q(dataI[122]),
        .R(1'b0));
  FDRE \dataI_reg[2][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_98),
        .Q(dataI[123]),
        .R(1'b0));
  FDRE \dataI_reg[2][4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_97),
        .Q(dataI[124]),
        .R(1'b0));
  FDRE \dataI_reg[2][5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_96),
        .Q(dataI[125]),
        .R(1'b0));
  FDRE \dataI_reg[2][6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_95),
        .Q(dataI[126]),
        .R(1'b0));
  FDRE \dataI_reg[2][7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_94),
        .Q(dataI[127]),
        .R(1'b0));
  FDRE \dataI_reg[2][8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_93),
        .Q(dataI[128]),
        .R(1'b0));
  FDRE \dataI_reg[2][9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_92),
        .Q(dataI[129]),
        .R(1'b0));
  FDRE \dataI_reg[3][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_77),
        .Q(dataI[96]),
        .R(1'b0));
  FDRE \dataI_reg[3][10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_67),
        .Q(dataI[106]),
        .R(1'b0));
  FDRE \dataI_reg[3][11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_66),
        .Q(dataI[107]),
        .R(1'b0));
  FDRE \dataI_reg[3][12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_65),
        .Q(dataI[108]),
        .R(1'b0));
  FDRE \dataI_reg[3][13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_64),
        .Q(dataI[109]),
        .R(1'b0));
  FDRE \dataI_reg[3][14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_63),
        .Q(dataI[110]),
        .R(1'b0));
  FDRE \dataI_reg[3][15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_62),
        .Q(dataI[111]),
        .R(1'b0));
  FDRE \dataI_reg[3][16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_61),
        .Q(dataI[112]),
        .R(1'b0));
  FDRE \dataI_reg[3][17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_60),
        .Q(dataI[113]),
        .R(1'b0));
  FDRE \dataI_reg[3][18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_59),
        .Q(dataI[114]),
        .R(1'b0));
  FDRE \dataI_reg[3][19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_58),
        .Q(dataI[115]),
        .R(1'b0));
  FDRE \dataI_reg[3][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_76),
        .Q(dataI[97]),
        .R(1'b0));
  FDRE \dataI_reg[3][20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_57),
        .Q(dataI[116]),
        .R(1'b0));
  FDRE \dataI_reg[3][21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_56),
        .Q(dataI[117]),
        .R(1'b0));
  FDRE \dataI_reg[3][22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_55),
        .Q(dataI[118]),
        .R(1'b0));
  FDRE \dataI_reg[3][23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_54),
        .Q(dataI[119]),
        .R(1'b0));
  FDRE \dataI_reg[3][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_75),
        .Q(dataI[98]),
        .R(1'b0));
  FDRE \dataI_reg[3][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_74),
        .Q(dataI[99]),
        .R(1'b0));
  FDRE \dataI_reg[3][4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_73),
        .Q(dataI[100]),
        .R(1'b0));
  FDRE \dataI_reg[3][5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_72),
        .Q(dataI[101]),
        .R(1'b0));
  FDRE \dataI_reg[3][6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_71),
        .Q(dataI[102]),
        .R(1'b0));
  FDRE \dataI_reg[3][7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_70),
        .Q(dataI[103]),
        .R(1'b0));
  FDRE \dataI_reg[3][8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_69),
        .Q(dataI[104]),
        .R(1'b0));
  FDRE \dataI_reg[3][9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_68),
        .Q(dataI[105]),
        .R(1'b0));
  FDRE \dataI_reg[4][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_173),
        .Q(dataI[72]),
        .R(1'b0));
  FDRE \dataI_reg[4][10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_163),
        .Q(dataI[82]),
        .R(1'b0));
  FDRE \dataI_reg[4][11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_162),
        .Q(dataI[83]),
        .R(1'b0));
  FDRE \dataI_reg[4][12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_161),
        .Q(dataI[84]),
        .R(1'b0));
  FDRE \dataI_reg[4][13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_160),
        .Q(dataI[85]),
        .R(1'b0));
  FDRE \dataI_reg[4][14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_159),
        .Q(dataI[86]),
        .R(1'b0));
  FDRE \dataI_reg[4][15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_158),
        .Q(dataI[87]),
        .R(1'b0));
  FDRE \dataI_reg[4][16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_157),
        .Q(dataI[88]),
        .R(1'b0));
  FDRE \dataI_reg[4][17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_156),
        .Q(dataI[89]),
        .R(1'b0));
  FDRE \dataI_reg[4][18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_155),
        .Q(dataI[90]),
        .R(1'b0));
  FDRE \dataI_reg[4][19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_154),
        .Q(dataI[91]),
        .R(1'b0));
  FDRE \dataI_reg[4][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_172),
        .Q(dataI[73]),
        .R(1'b0));
  FDRE \dataI_reg[4][20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_153),
        .Q(dataI[92]),
        .R(1'b0));
  FDRE \dataI_reg[4][21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_152),
        .Q(dataI[93]),
        .R(1'b0));
  FDRE \dataI_reg[4][22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_151),
        .Q(dataI[94]),
        .R(1'b0));
  FDRE \dataI_reg[4][23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_150),
        .Q(dataI[95]),
        .R(1'b0));
  FDRE \dataI_reg[4][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_171),
        .Q(dataI[74]),
        .R(1'b0));
  FDRE \dataI_reg[4][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_170),
        .Q(dataI[75]),
        .R(1'b0));
  FDRE \dataI_reg[4][4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_169),
        .Q(dataI[76]),
        .R(1'b0));
  FDRE \dataI_reg[4][5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_168),
        .Q(dataI[77]),
        .R(1'b0));
  FDRE \dataI_reg[4][6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_167),
        .Q(dataI[78]),
        .R(1'b0));
  FDRE \dataI_reg[4][7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_166),
        .Q(dataI[79]),
        .R(1'b0));
  FDRE \dataI_reg[4][8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_165),
        .Q(dataI[80]),
        .R(1'b0));
  FDRE \dataI_reg[4][9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_164),
        .Q(dataI[81]),
        .R(1'b0));
  FDRE \dataI_reg[5][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_197),
        .Q(dataI[48]),
        .R(1'b0));
  FDRE \dataI_reg[5][10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_187),
        .Q(dataI[58]),
        .R(1'b0));
  FDRE \dataI_reg[5][11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_186),
        .Q(dataI[59]),
        .R(1'b0));
  FDRE \dataI_reg[5][12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_185),
        .Q(dataI[60]),
        .R(1'b0));
  FDRE \dataI_reg[5][13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_184),
        .Q(dataI[61]),
        .R(1'b0));
  FDRE \dataI_reg[5][14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_183),
        .Q(dataI[62]),
        .R(1'b0));
  FDRE \dataI_reg[5][15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_182),
        .Q(dataI[63]),
        .R(1'b0));
  FDRE \dataI_reg[5][16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_181),
        .Q(dataI[64]),
        .R(1'b0));
  FDRE \dataI_reg[5][17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_180),
        .Q(dataI[65]),
        .R(1'b0));
  FDRE \dataI_reg[5][18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_179),
        .Q(dataI[66]),
        .R(1'b0));
  FDRE \dataI_reg[5][19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_178),
        .Q(dataI[67]),
        .R(1'b0));
  FDRE \dataI_reg[5][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_196),
        .Q(dataI[49]),
        .R(1'b0));
  FDRE \dataI_reg[5][20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_177),
        .Q(dataI[68]),
        .R(1'b0));
  FDRE \dataI_reg[5][21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_176),
        .Q(dataI[69]),
        .R(1'b0));
  FDRE \dataI_reg[5][22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_175),
        .Q(dataI[70]),
        .R(1'b0));
  FDRE \dataI_reg[5][23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_174),
        .Q(dataI[71]),
        .R(1'b0));
  FDRE \dataI_reg[5][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_195),
        .Q(dataI[50]),
        .R(1'b0));
  FDRE \dataI_reg[5][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_194),
        .Q(dataI[51]),
        .R(1'b0));
  FDRE \dataI_reg[5][4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_193),
        .Q(dataI[52]),
        .R(1'b0));
  FDRE \dataI_reg[5][5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_192),
        .Q(dataI[53]),
        .R(1'b0));
  FDRE \dataI_reg[5][6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_191),
        .Q(dataI[54]),
        .R(1'b0));
  FDRE \dataI_reg[5][7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_190),
        .Q(dataI[55]),
        .R(1'b0));
  FDRE \dataI_reg[5][8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_189),
        .Q(dataI[56]),
        .R(1'b0));
  FDRE \dataI_reg[5][9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_188),
        .Q(dataI[57]),
        .R(1'b0));
  FDRE \dataI_reg[6][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_221),
        .Q(dataI[24]),
        .R(1'b0));
  FDRE \dataI_reg[6][10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_211),
        .Q(dataI[34]),
        .R(1'b0));
  FDRE \dataI_reg[6][11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_210),
        .Q(dataI[35]),
        .R(1'b0));
  FDRE \dataI_reg[6][12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_209),
        .Q(dataI[36]),
        .R(1'b0));
  FDRE \dataI_reg[6][13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_208),
        .Q(dataI[37]),
        .R(1'b0));
  FDRE \dataI_reg[6][14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_207),
        .Q(dataI[38]),
        .R(1'b0));
  FDRE \dataI_reg[6][15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_206),
        .Q(dataI[39]),
        .R(1'b0));
  FDRE \dataI_reg[6][16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_205),
        .Q(dataI[40]),
        .R(1'b0));
  FDRE \dataI_reg[6][17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_204),
        .Q(dataI[41]),
        .R(1'b0));
  FDRE \dataI_reg[6][18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_203),
        .Q(dataI[42]),
        .R(1'b0));
  FDRE \dataI_reg[6][19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_202),
        .Q(dataI[43]),
        .R(1'b0));
  FDRE \dataI_reg[6][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_220),
        .Q(dataI[25]),
        .R(1'b0));
  FDRE \dataI_reg[6][20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_201),
        .Q(dataI[44]),
        .R(1'b0));
  FDRE \dataI_reg[6][21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_200),
        .Q(dataI[45]),
        .R(1'b0));
  FDRE \dataI_reg[6][22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_199),
        .Q(dataI[46]),
        .R(1'b0));
  FDRE \dataI_reg[6][23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_198),
        .Q(dataI[47]),
        .R(1'b0));
  FDRE \dataI_reg[6][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_219),
        .Q(dataI[26]),
        .R(1'b0));
  FDRE \dataI_reg[6][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_218),
        .Q(dataI[27]),
        .R(1'b0));
  FDRE \dataI_reg[6][4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_217),
        .Q(dataI[28]),
        .R(1'b0));
  FDRE \dataI_reg[6][5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_216),
        .Q(dataI[29]),
        .R(1'b0));
  FDRE \dataI_reg[6][6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_215),
        .Q(dataI[30]),
        .R(1'b0));
  FDRE \dataI_reg[6][7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_214),
        .Q(dataI[31]),
        .R(1'b0));
  FDRE \dataI_reg[6][8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_213),
        .Q(dataI[32]),
        .R(1'b0));
  FDRE \dataI_reg[6][9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_212),
        .Q(dataI[33]),
        .R(1'b0));
  FDRE \dataI_reg[7][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_245),
        .Q(dataI[0]),
        .R(1'b0));
  FDRE \dataI_reg[7][10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_235),
        .Q(dataI[10]),
        .R(1'b0));
  FDRE \dataI_reg[7][11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_234),
        .Q(dataI[11]),
        .R(1'b0));
  FDRE \dataI_reg[7][12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_233),
        .Q(dataI[12]),
        .R(1'b0));
  FDRE \dataI_reg[7][13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_232),
        .Q(dataI[13]),
        .R(1'b0));
  FDRE \dataI_reg[7][14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_231),
        .Q(dataI[14]),
        .R(1'b0));
  FDRE \dataI_reg[7][15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_230),
        .Q(dataI[15]),
        .R(1'b0));
  FDRE \dataI_reg[7][16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_229),
        .Q(dataI[16]),
        .R(1'b0));
  FDRE \dataI_reg[7][17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_228),
        .Q(dataI[17]),
        .R(1'b0));
  FDRE \dataI_reg[7][18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_227),
        .Q(dataI[18]),
        .R(1'b0));
  FDRE \dataI_reg[7][19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_226),
        .Q(dataI[19]),
        .R(1'b0));
  FDRE \dataI_reg[7][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_244),
        .Q(dataI[1]),
        .R(1'b0));
  FDRE \dataI_reg[7][20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_225),
        .Q(dataI[20]),
        .R(1'b0));
  FDRE \dataI_reg[7][21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_224),
        .Q(dataI[21]),
        .R(1'b0));
  FDRE \dataI_reg[7][22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_223),
        .Q(dataI[22]),
        .R(1'b0));
  FDRE \dataI_reg[7][23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_222),
        .Q(dataI[23]),
        .R(1'b0));
  FDRE \dataI_reg[7][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_243),
        .Q(dataI[2]),
        .R(1'b0));
  FDRE \dataI_reg[7][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_242),
        .Q(dataI[3]),
        .R(1'b0));
  FDRE \dataI_reg[7][4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_241),
        .Q(dataI[4]),
        .R(1'b0));
  FDRE \dataI_reg[7][5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_240),
        .Q(dataI[5]),
        .R(1'b0));
  FDRE \dataI_reg[7][6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_239),
        .Q(dataI[6]),
        .R(1'b0));
  FDRE \dataI_reg[7][7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_238),
        .Q(dataI[7]),
        .R(1'b0));
  FDRE \dataI_reg[7][8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_237),
        .Q(dataI[8]),
        .R(1'b0));
  FDRE \dataI_reg[7][9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_236),
        .Q(dataI[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[2][0]_i_3 
       (.I0(state),
        .I1(dataQ[120]),
        .O(\dataQ[2][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[2][10]_i_3 
       (.I0(state),
        .I1(dataQ[130]),
        .O(\dataQ[2][10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[2][11]_i_3 
       (.I0(state),
        .I1(dataQ[131]),
        .O(\dataQ[2][11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[2][13]_i_3 
       (.I0(state),
        .I1(dataQ[133]),
        .O(\dataQ[2][13]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[2][14]_i_3 
       (.I0(state),
        .I1(dataQ[134]),
        .O(\dataQ[2][14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[2][15]_i_3 
       (.I0(state),
        .I1(dataQ[135]),
        .O(\dataQ[2][15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[2][16]_i_3 
       (.I0(state),
        .I1(dataQ[136]),
        .O(\dataQ[2][16]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[2][17]_i_3 
       (.I0(state),
        .I1(dataQ[137]),
        .O(\dataQ[2][17]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[2][18]_i_3 
       (.I0(state),
        .I1(dataQ[138]),
        .O(\dataQ[2][18]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[2][1]_i_3 
       (.I0(state),
        .I1(dataQ[121]),
        .O(\dataQ[2][1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[2][20]_i_3 
       (.I0(state),
        .I1(dataQ[140]),
        .O(\dataQ[2][20]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[2][21]_i_3 
       (.I0(state),
        .I1(dataQ[141]),
        .O(\dataQ[2][21]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[2][22]_i_3 
       (.I0(state),
        .I1(dataQ[142]),
        .O(\dataQ[2][22]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[2][23]_i_3 
       (.I0(state),
        .I1(dataQ[143]),
        .O(\dataQ[2][23]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[2][2]_i_3 
       (.I0(state),
        .I1(dataQ[122]),
        .O(\dataQ[2][2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[2][3]_i_3 
       (.I0(state),
        .I1(dataQ[123]),
        .O(\dataQ[2][3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[2][4]_i_3 
       (.I0(state),
        .I1(dataQ[124]),
        .O(\dataQ[2][4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[2][5]_i_3 
       (.I0(state),
        .I1(dataQ[125]),
        .O(\dataQ[2][5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[2][6]_i_3 
       (.I0(state),
        .I1(dataQ[126]),
        .O(\dataQ[2][6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[2][7]_i_3 
       (.I0(state),
        .I1(dataQ[127]),
        .O(\dataQ[2][7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[2][8]_i_3 
       (.I0(state),
        .I1(dataQ[128]),
        .O(\dataQ[2][8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[3][10]_i_3 
       (.I0(state),
        .I1(dataQ[106]),
        .O(\dataQ[3][10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[3][12]_i_3 
       (.I0(state),
        .I1(dataQ[108]),
        .O(\dataQ[3][12]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[3][13]_i_3 
       (.I0(state),
        .I1(dataQ[109]),
        .O(\dataQ[3][13]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[3][14]_i_3 
       (.I0(state),
        .I1(dataQ[110]),
        .O(\dataQ[3][14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[3][15]_i_3 
       (.I0(state),
        .I1(dataQ[111]),
        .O(\dataQ[3][15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[3][16]_i_3 
       (.I0(state),
        .I1(dataQ[112]),
        .O(\dataQ[3][16]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[3][17]_i_3 
       (.I0(state),
        .I1(dataQ[113]),
        .O(\dataQ[3][17]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[3][18]_i_3 
       (.I0(state),
        .I1(dataQ[114]),
        .O(\dataQ[3][18]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[3][19]_i_3 
       (.I0(state),
        .I1(dataQ[115]),
        .O(\dataQ[3][19]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[3][20]_i_3 
       (.I0(state),
        .I1(dataQ[116]),
        .O(\dataQ[3][20]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[3][21]_i_3 
       (.I0(state),
        .I1(dataQ[117]),
        .O(\dataQ[3][21]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[3][22]_i_3 
       (.I0(state),
        .I1(dataQ[118]),
        .O(\dataQ[3][22]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[3][23]_i_3 
       (.I0(state),
        .I1(dataQ[119]),
        .O(\dataQ[3][23]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[3][3]_i_3 
       (.I0(state),
        .I1(dataQ[99]),
        .O(\dataQ[3][3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[3][5]_i_3 
       (.I0(state),
        .I1(dataQ[101]),
        .O(\dataQ[3][5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[3][6]_i_3 
       (.I0(state),
        .I1(dataQ[102]),
        .O(\dataQ[3][6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[3][7]_i_3 
       (.I0(state),
        .I1(dataQ[103]),
        .O(\dataQ[3][7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[3][8]_i_3 
       (.I0(state),
        .I1(dataQ[104]),
        .O(\dataQ[3][8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[3][9]_i_3 
       (.I0(state),
        .I1(dataQ[105]),
        .O(\dataQ[3][9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \dataQ[6][0]_i_3 
       (.I0(\dataQ_reg[0][23]_0 [0]),
        .I1(\idx_reg[0]_0 ),
        .I2(last_data_en_state_reg_0),
        .I3(\dataQ[6][0]_i_5_n_0 ),
        .I4(idxreversed[2]),
        .I5(\dataQ[6][0]_i_6_n_0 ),
        .O(\dataQ[6][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[6][0]_i_4 
       (.I0(state),
        .I1(dataQ[24]),
        .O(\dataQ[6][0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataQ[6][0]_i_5 
       (.I0(dataQ[0]),
        .I1(dataQ[24]),
        .I2(idxreversed[1]),
        .I3(dataQ[48]),
        .I4(idxreversed[0]),
        .I5(dataQ[72]),
        .O(\dataQ[6][0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataQ[6][0]_i_6 
       (.I0(dataQ[96]),
        .I1(dataQ[120]),
        .I2(idxreversed[1]),
        .I3(dataQ[144]),
        .I4(idxreversed[0]),
        .I5(dataQ[168]),
        .O(\dataQ[6][0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \dataQ[6][10]_i_3 
       (.I0(\dataQ_reg[0][23]_0 [10]),
        .I1(\idx_reg[0]_0 ),
        .I2(last_data_en_state_reg_0),
        .I3(\dataQ[6][10]_i_5_n_0 ),
        .I4(idxreversed[2]),
        .I5(\dataQ[6][10]_i_6_n_0 ),
        .O(\dataQ[6][10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[6][10]_i_4 
       (.I0(state),
        .I1(dataQ[34]),
        .O(\dataQ[6][10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataQ[6][10]_i_5 
       (.I0(dataQ[10]),
        .I1(dataQ[34]),
        .I2(idxreversed[1]),
        .I3(dataQ[58]),
        .I4(idxreversed[0]),
        .I5(dataQ[82]),
        .O(\dataQ[6][10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataQ[6][10]_i_6 
       (.I0(dataQ[106]),
        .I1(dataQ[130]),
        .I2(idxreversed[1]),
        .I3(dataQ[154]),
        .I4(idxreversed[0]),
        .I5(dataQ[178]),
        .O(\dataQ[6][10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \dataQ[6][11]_i_3 
       (.I0(\dataQ_reg[0][23]_0 [11]),
        .I1(\idx_reg[0]_0 ),
        .I2(last_data_en_state_reg_0),
        .I3(\dataQ[6][11]_i_5_n_0 ),
        .I4(idxreversed[2]),
        .I5(\dataQ[6][11]_i_6_n_0 ),
        .O(\dataQ[6][11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataQ[6][11]_i_5 
       (.I0(dataQ[11]),
        .I1(dataQ[35]),
        .I2(idxreversed[1]),
        .I3(dataQ[59]),
        .I4(idxreversed[0]),
        .I5(dataQ[83]),
        .O(\dataQ[6][11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataQ[6][11]_i_6 
       (.I0(dataQ[107]),
        .I1(dataQ[131]),
        .I2(idxreversed[1]),
        .I3(dataQ[155]),
        .I4(idxreversed[0]),
        .I5(dataQ[179]),
        .O(\dataQ[6][11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \dataQ[6][12]_i_3 
       (.I0(\dataQ_reg[0][23]_0 [12]),
        .I1(\idx_reg[0]_0 ),
        .I2(last_data_en_state_reg_0),
        .I3(\dataQ[6][12]_i_5_n_0 ),
        .I4(idxreversed[2]),
        .I5(\dataQ[6][12]_i_6_n_0 ),
        .O(\dataQ[6][12]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[6][12]_i_4 
       (.I0(state),
        .I1(dataQ[36]),
        .O(\dataQ[6][12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataQ[6][12]_i_5 
       (.I0(dataQ[12]),
        .I1(dataQ[36]),
        .I2(idxreversed[1]),
        .I3(dataQ[60]),
        .I4(idxreversed[0]),
        .I5(dataQ[84]),
        .O(\dataQ[6][12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataQ[6][12]_i_6 
       (.I0(dataQ[108]),
        .I1(dataQ[132]),
        .I2(idxreversed[1]),
        .I3(dataQ[156]),
        .I4(idxreversed[0]),
        .I5(dataQ[180]),
        .O(\dataQ[6][12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \dataQ[6][13]_i_3 
       (.I0(\dataQ_reg[0][23]_0 [13]),
        .I1(\idx_reg[0]_0 ),
        .I2(last_data_en_state_reg_0),
        .I3(\dataQ[6][13]_i_5_n_0 ),
        .I4(idxreversed[2]),
        .I5(\dataQ[6][13]_i_6_n_0 ),
        .O(\dataQ[6][13]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[6][13]_i_4 
       (.I0(state),
        .I1(dataQ[37]),
        .O(\dataQ[6][13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataQ[6][13]_i_5 
       (.I0(dataQ[13]),
        .I1(dataQ[37]),
        .I2(idxreversed[1]),
        .I3(dataQ[61]),
        .I4(idxreversed[0]),
        .I5(dataQ[85]),
        .O(\dataQ[6][13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataQ[6][13]_i_6 
       (.I0(dataQ[109]),
        .I1(dataQ[133]),
        .I2(idxreversed[1]),
        .I3(dataQ[157]),
        .I4(idxreversed[0]),
        .I5(dataQ[181]),
        .O(\dataQ[6][13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \dataQ[6][14]_i_3 
       (.I0(\dataQ_reg[0][23]_0 [14]),
        .I1(\idx_reg[0]_0 ),
        .I2(last_data_en_state_reg_0),
        .I3(\dataQ[6][14]_i_5_n_0 ),
        .I4(idxreversed[2]),
        .I5(\dataQ[6][14]_i_6_n_0 ),
        .O(\dataQ[6][14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[6][14]_i_4 
       (.I0(state),
        .I1(dataQ[38]),
        .O(\dataQ[6][14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataQ[6][14]_i_5 
       (.I0(dataQ[14]),
        .I1(dataQ[38]),
        .I2(idxreversed[1]),
        .I3(dataQ[62]),
        .I4(idxreversed[0]),
        .I5(dataQ[86]),
        .O(\dataQ[6][14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataQ[6][14]_i_6 
       (.I0(dataQ[110]),
        .I1(dataQ[134]),
        .I2(idxreversed[1]),
        .I3(dataQ[158]),
        .I4(idxreversed[0]),
        .I5(dataQ[182]),
        .O(\dataQ[6][14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \dataQ[6][15]_i_3 
       (.I0(\dataQ_reg[0][23]_0 [15]),
        .I1(\idx_reg[0]_0 ),
        .I2(last_data_en_state_reg_0),
        .I3(\dataQ[6][15]_i_5_n_0 ),
        .I4(idxreversed[2]),
        .I5(\dataQ[6][15]_i_6_n_0 ),
        .O(\dataQ[6][15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[6][15]_i_4 
       (.I0(state),
        .I1(dataQ[39]),
        .O(\dataQ[6][15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataQ[6][15]_i_5 
       (.I0(dataQ[15]),
        .I1(dataQ[39]),
        .I2(idxreversed[1]),
        .I3(dataQ[63]),
        .I4(idxreversed[0]),
        .I5(dataQ[87]),
        .O(\dataQ[6][15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataQ[6][15]_i_6 
       (.I0(dataQ[111]),
        .I1(dataQ[135]),
        .I2(idxreversed[1]),
        .I3(dataQ[159]),
        .I4(idxreversed[0]),
        .I5(dataQ[183]),
        .O(\dataQ[6][15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \dataQ[6][16]_i_3 
       (.I0(\dataQ_reg[0][23]_0 [16]),
        .I1(\idx_reg[0]_0 ),
        .I2(last_data_en_state_reg_0),
        .I3(\dataQ[6][16]_i_5_n_0 ),
        .I4(idxreversed[2]),
        .I5(\dataQ[6][16]_i_6_n_0 ),
        .O(\dataQ[6][16]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[6][16]_i_4 
       (.I0(state),
        .I1(dataQ[40]),
        .O(\dataQ[6][16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataQ[6][16]_i_5 
       (.I0(dataQ[16]),
        .I1(dataQ[40]),
        .I2(idxreversed[1]),
        .I3(dataQ[64]),
        .I4(idxreversed[0]),
        .I5(dataQ[88]),
        .O(\dataQ[6][16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataQ[6][16]_i_6 
       (.I0(dataQ[112]),
        .I1(dataQ[136]),
        .I2(idxreversed[1]),
        .I3(dataQ[160]),
        .I4(idxreversed[0]),
        .I5(dataQ[184]),
        .O(\dataQ[6][16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \dataQ[6][17]_i_3 
       (.I0(\dataQ_reg[0][23]_0 [17]),
        .I1(\idx_reg[0]_0 ),
        .I2(last_data_en_state_reg_0),
        .I3(\dataQ[6][17]_i_5_n_0 ),
        .I4(idxreversed[2]),
        .I5(\dataQ[6][17]_i_6_n_0 ),
        .O(\dataQ[6][17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataQ[6][17]_i_5 
       (.I0(dataQ[17]),
        .I1(dataQ[41]),
        .I2(idxreversed[1]),
        .I3(dataQ[65]),
        .I4(idxreversed[0]),
        .I5(dataQ[89]),
        .O(\dataQ[6][17]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataQ[6][17]_i_6 
       (.I0(dataQ[113]),
        .I1(dataQ[137]),
        .I2(idxreversed[1]),
        .I3(dataQ[161]),
        .I4(idxreversed[0]),
        .I5(dataQ[185]),
        .O(\dataQ[6][17]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \dataQ[6][18]_i_3 
       (.I0(\dataQ_reg[0][23]_0 [18]),
        .I1(\idx_reg[0]_0 ),
        .I2(last_data_en_state_reg_0),
        .I3(\dataQ[6][18]_i_5_n_0 ),
        .I4(idxreversed[2]),
        .I5(\dataQ[6][18]_i_6_n_0 ),
        .O(\dataQ[6][18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataQ[6][18]_i_5 
       (.I0(dataQ[18]),
        .I1(dataQ[42]),
        .I2(idxreversed[1]),
        .I3(dataQ[66]),
        .I4(idxreversed[0]),
        .I5(dataQ[90]),
        .O(\dataQ[6][18]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataQ[6][18]_i_6 
       (.I0(dataQ[114]),
        .I1(dataQ[138]),
        .I2(idxreversed[1]),
        .I3(dataQ[162]),
        .I4(idxreversed[0]),
        .I5(dataQ[186]),
        .O(\dataQ[6][18]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \dataQ[6][19]_i_3 
       (.I0(\dataQ_reg[0][23]_0 [19]),
        .I1(\idx_reg[0]_0 ),
        .I2(last_data_en_state_reg_0),
        .I3(\dataQ[6][19]_i_5_n_0 ),
        .I4(idxreversed[2]),
        .I5(\dataQ[6][19]_i_6_n_0 ),
        .O(\dataQ[6][19]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[6][19]_i_4 
       (.I0(state),
        .I1(dataQ[43]),
        .O(\dataQ[6][19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataQ[6][19]_i_5 
       (.I0(dataQ[19]),
        .I1(dataQ[43]),
        .I2(idxreversed[1]),
        .I3(dataQ[67]),
        .I4(idxreversed[0]),
        .I5(dataQ[91]),
        .O(\dataQ[6][19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataQ[6][19]_i_6 
       (.I0(dataQ[115]),
        .I1(dataQ[139]),
        .I2(idxreversed[1]),
        .I3(dataQ[163]),
        .I4(idxreversed[0]),
        .I5(dataQ[187]),
        .O(\dataQ[6][19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \dataQ[6][1]_i_3 
       (.I0(\dataQ_reg[0][23]_0 [1]),
        .I1(\idx_reg[0]_0 ),
        .I2(last_data_en_state_reg_0),
        .I3(\dataQ[6][1]_i_5_n_0 ),
        .I4(idxreversed[2]),
        .I5(\dataQ[6][1]_i_6_n_0 ),
        .O(\dataQ[6][1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[6][1]_i_4 
       (.I0(state),
        .I1(dataQ[25]),
        .O(\dataQ[6][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataQ[6][1]_i_5 
       (.I0(dataQ[1]),
        .I1(dataQ[25]),
        .I2(idxreversed[1]),
        .I3(dataQ[49]),
        .I4(idxreversed[0]),
        .I5(dataQ[73]),
        .O(\dataQ[6][1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataQ[6][1]_i_6 
       (.I0(dataQ[97]),
        .I1(dataQ[121]),
        .I2(idxreversed[1]),
        .I3(dataQ[145]),
        .I4(idxreversed[0]),
        .I5(dataQ[169]),
        .O(\dataQ[6][1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \dataQ[6][20]_i_3 
       (.I0(\dataQ_reg[0][23]_0 [20]),
        .I1(\idx_reg[0]_0 ),
        .I2(last_data_en_state_reg_0),
        .I3(\dataQ[6][20]_i_5_n_0 ),
        .I4(idxreversed[2]),
        .I5(\dataQ[6][20]_i_6_n_0 ),
        .O(\dataQ[6][20]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[6][20]_i_4 
       (.I0(state),
        .I1(dataQ[44]),
        .O(\dataQ[6][20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataQ[6][20]_i_5 
       (.I0(dataQ[20]),
        .I1(dataQ[44]),
        .I2(idxreversed[1]),
        .I3(dataQ[68]),
        .I4(idxreversed[0]),
        .I5(dataQ[92]),
        .O(\dataQ[6][20]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataQ[6][20]_i_6 
       (.I0(dataQ[116]),
        .I1(dataQ[140]),
        .I2(idxreversed[1]),
        .I3(dataQ[164]),
        .I4(idxreversed[0]),
        .I5(dataQ[188]),
        .O(\dataQ[6][20]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \dataQ[6][21]_i_3 
       (.I0(\dataQ_reg[0][23]_0 [21]),
        .I1(\idx_reg[0]_0 ),
        .I2(last_data_en_state_reg_0),
        .I3(\dataQ[6][21]_i_5_n_0 ),
        .I4(idxreversed[2]),
        .I5(\dataQ[6][21]_i_6_n_0 ),
        .O(\dataQ[6][21]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[6][21]_i_4 
       (.I0(state),
        .I1(dataQ[45]),
        .O(\dataQ[6][21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataQ[6][21]_i_5 
       (.I0(dataQ[21]),
        .I1(dataQ[45]),
        .I2(idxreversed[1]),
        .I3(dataQ[69]),
        .I4(idxreversed[0]),
        .I5(dataQ[93]),
        .O(\dataQ[6][21]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataQ[6][21]_i_6 
       (.I0(dataQ[117]),
        .I1(dataQ[141]),
        .I2(idxreversed[1]),
        .I3(dataQ[165]),
        .I4(idxreversed[0]),
        .I5(dataQ[189]),
        .O(\dataQ[6][21]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \dataQ[6][22]_i_3 
       (.I0(\dataQ_reg[0][23]_0 [22]),
        .I1(\idx_reg[0]_0 ),
        .I2(last_data_en_state_reg_0),
        .I3(\dataQ[6][22]_i_6_n_0 ),
        .I4(idxreversed[2]),
        .I5(\dataQ[6][22]_i_7_n_0 ),
        .O(\dataQ[6][22]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000660)) 
    \dataQ[6][22]_i_4 
       (.I0(topIdx[2]),
        .I1(\shift_reg_n_0_[2] ),
        .I2(topIdx[1]),
        .I3(\shift_reg_n_0_[1] ),
        .I4(topIdx[0]),
        .O(\dataQ[6][22]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[6][22]_i_5 
       (.I0(state),
        .I1(dataQ[46]),
        .O(\dataQ[6][22]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataQ[6][22]_i_6 
       (.I0(dataQ[22]),
        .I1(dataQ[46]),
        .I2(idxreversed[1]),
        .I3(dataQ[70]),
        .I4(idxreversed[0]),
        .I5(dataQ[94]),
        .O(\dataQ[6][22]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataQ[6][22]_i_7 
       (.I0(dataQ[118]),
        .I1(dataQ[142]),
        .I2(idxreversed[1]),
        .I3(dataQ[166]),
        .I4(idxreversed[0]),
        .I5(dataQ[190]),
        .O(\dataQ[6][22]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \dataQ[6][23]_i_3 
       (.I0(\dataQ_reg[0][23]_0 [23]),
        .I1(\idx_reg[0]_0 ),
        .I2(last_data_en_state_reg_0),
        .I3(\dataQ[6][23]_i_5_n_0 ),
        .I4(idxreversed[2]),
        .I5(\dataQ[6][23]_i_6_n_0 ),
        .O(\dataQ[6][23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataQ[6][23]_i_5 
       (.I0(dataQ[23]),
        .I1(dataQ[47]),
        .I2(idxreversed[1]),
        .I3(dataQ[71]),
        .I4(idxreversed[0]),
        .I5(dataQ[95]),
        .O(\dataQ[6][23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataQ[6][23]_i_6 
       (.I0(dataQ[119]),
        .I1(dataQ[143]),
        .I2(idxreversed[1]),
        .I3(dataQ[167]),
        .I4(idxreversed[0]),
        .I5(dataQ[191]),
        .O(\dataQ[6][23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \dataQ[6][2]_i_3 
       (.I0(\dataQ_reg[0][23]_0 [2]),
        .I1(\idx_reg[0]_0 ),
        .I2(last_data_en_state_reg_0),
        .I3(\dataQ[6][2]_i_5_n_0 ),
        .I4(idxreversed[2]),
        .I5(\dataQ[6][2]_i_6_n_0 ),
        .O(\dataQ[6][2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[6][2]_i_4 
       (.I0(state),
        .I1(dataQ[26]),
        .O(\dataQ[6][2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataQ[6][2]_i_5 
       (.I0(dataQ[2]),
        .I1(dataQ[26]),
        .I2(idxreversed[1]),
        .I3(dataQ[50]),
        .I4(idxreversed[0]),
        .I5(dataQ[74]),
        .O(\dataQ[6][2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataQ[6][2]_i_6 
       (.I0(dataQ[98]),
        .I1(dataQ[122]),
        .I2(idxreversed[1]),
        .I3(dataQ[146]),
        .I4(idxreversed[0]),
        .I5(dataQ[170]),
        .O(\dataQ[6][2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \dataQ[6][3]_i_3 
       (.I0(\dataQ_reg[0][23]_0 [3]),
        .I1(\idx_reg[0]_0 ),
        .I2(last_data_en_state_reg_0),
        .I3(\dataQ[6][3]_i_5_n_0 ),
        .I4(idxreversed[2]),
        .I5(\dataQ[6][3]_i_6_n_0 ),
        .O(\dataQ[6][3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[6][3]_i_4 
       (.I0(state),
        .I1(dataQ[27]),
        .O(\dataQ[6][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataQ[6][3]_i_5 
       (.I0(dataQ[3]),
        .I1(dataQ[27]),
        .I2(idxreversed[1]),
        .I3(dataQ[51]),
        .I4(idxreversed[0]),
        .I5(dataQ[75]),
        .O(\dataQ[6][3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataQ[6][3]_i_6 
       (.I0(dataQ[99]),
        .I1(dataQ[123]),
        .I2(idxreversed[1]),
        .I3(dataQ[147]),
        .I4(idxreversed[0]),
        .I5(dataQ[171]),
        .O(\dataQ[6][3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \dataQ[6][4]_i_3 
       (.I0(\dataQ_reg[0][23]_0 [4]),
        .I1(\idx_reg[0]_0 ),
        .I2(last_data_en_state_reg_0),
        .I3(\dataQ[6][4]_i_5_n_0 ),
        .I4(idxreversed[2]),
        .I5(\dataQ[6][4]_i_6_n_0 ),
        .O(\dataQ[6][4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[6][4]_i_4 
       (.I0(state),
        .I1(dataQ[28]),
        .O(\dataQ[6][4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataQ[6][4]_i_5 
       (.I0(dataQ[4]),
        .I1(dataQ[28]),
        .I2(idxreversed[1]),
        .I3(dataQ[52]),
        .I4(idxreversed[0]),
        .I5(dataQ[76]),
        .O(\dataQ[6][4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataQ[6][4]_i_6 
       (.I0(dataQ[100]),
        .I1(dataQ[124]),
        .I2(idxreversed[1]),
        .I3(dataQ[148]),
        .I4(idxreversed[0]),
        .I5(dataQ[172]),
        .O(\dataQ[6][4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \dataQ[6][5]_i_3 
       (.I0(\dataQ_reg[0][23]_0 [5]),
        .I1(\idx_reg[0]_0 ),
        .I2(last_data_en_state_reg_0),
        .I3(\dataQ[6][5]_i_5_n_0 ),
        .I4(idxreversed[2]),
        .I5(\dataQ[6][5]_i_6_n_0 ),
        .O(\dataQ[6][5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataQ[6][5]_i_5 
       (.I0(dataQ[5]),
        .I1(dataQ[29]),
        .I2(idxreversed[1]),
        .I3(dataQ[53]),
        .I4(idxreversed[0]),
        .I5(dataQ[77]),
        .O(\dataQ[6][5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataQ[6][5]_i_6 
       (.I0(dataQ[101]),
        .I1(dataQ[125]),
        .I2(idxreversed[1]),
        .I3(dataQ[149]),
        .I4(idxreversed[0]),
        .I5(dataQ[173]),
        .O(\dataQ[6][5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \dataQ[6][6]_i_3 
       (.I0(\dataQ_reg[0][23]_0 [6]),
        .I1(\idx_reg[0]_0 ),
        .I2(last_data_en_state_reg_0),
        .I3(\dataQ[6][6]_i_5_n_0 ),
        .I4(idxreversed[2]),
        .I5(\dataQ[6][6]_i_6_n_0 ),
        .O(\dataQ[6][6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataQ[6][6]_i_5 
       (.I0(dataQ[6]),
        .I1(dataQ[30]),
        .I2(idxreversed[1]),
        .I3(dataQ[54]),
        .I4(idxreversed[0]),
        .I5(dataQ[78]),
        .O(\dataQ[6][6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataQ[6][6]_i_6 
       (.I0(dataQ[102]),
        .I1(dataQ[126]),
        .I2(idxreversed[1]),
        .I3(dataQ[150]),
        .I4(idxreversed[0]),
        .I5(dataQ[174]),
        .O(\dataQ[6][6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \dataQ[6][7]_i_3 
       (.I0(\dataQ_reg[0][23]_0 [7]),
        .I1(\idx_reg[0]_0 ),
        .I2(last_data_en_state_reg_0),
        .I3(\dataQ[6][7]_i_5_n_0 ),
        .I4(idxreversed[2]),
        .I5(\dataQ[6][7]_i_6_n_0 ),
        .O(\dataQ[6][7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[6][7]_i_4 
       (.I0(state),
        .I1(dataQ[31]),
        .O(\dataQ[6][7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataQ[6][7]_i_5 
       (.I0(dataQ[7]),
        .I1(dataQ[31]),
        .I2(idxreversed[1]),
        .I3(dataQ[55]),
        .I4(idxreversed[0]),
        .I5(dataQ[79]),
        .O(\dataQ[6][7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataQ[6][7]_i_6 
       (.I0(dataQ[103]),
        .I1(dataQ[127]),
        .I2(idxreversed[1]),
        .I3(dataQ[151]),
        .I4(idxreversed[0]),
        .I5(dataQ[175]),
        .O(\dataQ[6][7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \dataQ[6][8]_i_3 
       (.I0(\dataQ_reg[0][23]_0 [8]),
        .I1(\idx_reg[0]_0 ),
        .I2(last_data_en_state_reg_0),
        .I3(\dataQ[6][8]_i_5_n_0 ),
        .I4(idxreversed[2]),
        .I5(\dataQ[6][8]_i_6_n_0 ),
        .O(\dataQ[6][8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[6][8]_i_4 
       (.I0(state),
        .I1(dataQ[32]),
        .O(\dataQ[6][8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataQ[6][8]_i_5 
       (.I0(dataQ[8]),
        .I1(dataQ[32]),
        .I2(idxreversed[1]),
        .I3(dataQ[56]),
        .I4(idxreversed[0]),
        .I5(dataQ[80]),
        .O(\dataQ[6][8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataQ[6][8]_i_6 
       (.I0(dataQ[104]),
        .I1(dataQ[128]),
        .I2(idxreversed[1]),
        .I3(dataQ[152]),
        .I4(idxreversed[0]),
        .I5(dataQ[176]),
        .O(\dataQ[6][8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \dataQ[6][9]_i_3 
       (.I0(\dataQ_reg[0][23]_0 [9]),
        .I1(\idx_reg[0]_0 ),
        .I2(last_data_en_state_reg_0),
        .I3(\dataQ[6][9]_i_5_n_0 ),
        .I4(idxreversed[2]),
        .I5(\dataQ[6][9]_i_6_n_0 ),
        .O(\dataQ[6][9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[6][9]_i_4 
       (.I0(state),
        .I1(dataQ[33]),
        .O(\dataQ[6][9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataQ[6][9]_i_5 
       (.I0(dataQ[9]),
        .I1(dataQ[33]),
        .I2(idxreversed[1]),
        .I3(dataQ[57]),
        .I4(idxreversed[0]),
        .I5(dataQ[81]),
        .O(\dataQ[6][9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataQ[6][9]_i_6 
       (.I0(dataQ[105]),
        .I1(dataQ[129]),
        .I2(idxreversed[1]),
        .I3(dataQ[153]),
        .I4(idxreversed[0]),
        .I5(dataQ[177]),
        .O(\dataQ[6][9]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[7][0]_i_3 
       (.I0(state),
        .I1(dataQ[0]),
        .O(\dataQ[7][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[7][11]_i_3 
       (.I0(state),
        .I1(dataQ[11]),
        .O(\dataQ[7][11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[7][13]_i_3 
       (.I0(state),
        .I1(dataQ[13]),
        .O(\dataQ[7][13]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[7][14]_i_3 
       (.I0(state),
        .I1(dataQ[14]),
        .O(\dataQ[7][14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[7][15]_i_3 
       (.I0(state),
        .I1(dataQ[15]),
        .O(\dataQ[7][15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[7][17]_i_3 
       (.I0(state),
        .I1(dataQ[17]),
        .O(\dataQ[7][17]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[7][19]_i_3 
       (.I0(state),
        .I1(dataQ[19]),
        .O(\dataQ[7][19]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[7][1]_i_3 
       (.I0(state),
        .I1(dataQ[1]),
        .O(\dataQ[7][1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[7][21]_i_3 
       (.I0(state),
        .I1(dataQ[21]),
        .O(\dataQ[7][21]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[7][23]_i_3 
       (.I0(state),
        .I1(dataQ[23]),
        .O(\dataQ[7][23]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[7][3]_i_3 
       (.I0(state),
        .I1(dataQ[3]),
        .O(\dataQ[7][3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[7][5]_i_3 
       (.I0(state),
        .I1(dataQ[5]),
        .O(\dataQ[7][5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[7][6]_i_3 
       (.I0(state),
        .I1(dataQ[6]),
        .O(\dataQ[7][6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[7][7]_i_3 
       (.I0(state),
        .I1(dataQ[7]),
        .O(\dataQ[7][7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataQ[7][9]_i_3 
       (.I0(state),
        .I1(dataQ[9]),
        .O(\dataQ[7][9]_i_3_n_0 ));
  FDRE \dataQ_reg[0][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_269),
        .Q(dataQ[168]),
        .R(1'b0));
  FDRE \dataQ_reg[0][10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_259),
        .Q(dataQ[178]),
        .R(1'b0));
  FDRE \dataQ_reg[0][11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_258),
        .Q(dataQ[179]),
        .R(1'b0));
  FDRE \dataQ_reg[0][12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_257),
        .Q(dataQ[180]),
        .R(1'b0));
  FDRE \dataQ_reg[0][13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_256),
        .Q(dataQ[181]),
        .R(1'b0));
  FDRE \dataQ_reg[0][14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_255),
        .Q(dataQ[182]),
        .R(1'b0));
  FDRE \dataQ_reg[0][15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_254),
        .Q(dataQ[183]),
        .R(1'b0));
  FDRE \dataQ_reg[0][16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_253),
        .Q(dataQ[184]),
        .R(1'b0));
  FDRE \dataQ_reg[0][17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_252),
        .Q(dataQ[185]),
        .R(1'b0));
  FDRE \dataQ_reg[0][18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_251),
        .Q(dataQ[186]),
        .R(1'b0));
  FDRE \dataQ_reg[0][19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_250),
        .Q(dataQ[187]),
        .R(1'b0));
  FDRE \dataQ_reg[0][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_268),
        .Q(dataQ[169]),
        .R(1'b0));
  FDRE \dataQ_reg[0][20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_249),
        .Q(dataQ[188]),
        .R(1'b0));
  FDRE \dataQ_reg[0][21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_248),
        .Q(dataQ[189]),
        .R(1'b0));
  FDRE \dataQ_reg[0][22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_247),
        .Q(dataQ[190]),
        .R(1'b0));
  FDRE \dataQ_reg[0][23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_246),
        .Q(dataQ[191]),
        .R(1'b0));
  FDRE \dataQ_reg[0][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_267),
        .Q(dataQ[170]),
        .R(1'b0));
  FDRE \dataQ_reg[0][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_266),
        .Q(dataQ[171]),
        .R(1'b0));
  FDRE \dataQ_reg[0][4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_265),
        .Q(dataQ[172]),
        .R(1'b0));
  FDRE \dataQ_reg[0][5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_264),
        .Q(dataQ[173]),
        .R(1'b0));
  FDRE \dataQ_reg[0][6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_263),
        .Q(dataQ[174]),
        .R(1'b0));
  FDRE \dataQ_reg[0][7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_262),
        .Q(dataQ[175]),
        .R(1'b0));
  FDRE \dataQ_reg[0][8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_261),
        .Q(dataQ[176]),
        .R(1'b0));
  FDRE \dataQ_reg[0][9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_260),
        .Q(dataQ[177]),
        .R(1'b0));
  FDRE \dataQ_reg[1][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_293),
        .Q(dataQ[144]),
        .R(1'b0));
  FDRE \dataQ_reg[1][10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_283),
        .Q(dataQ[154]),
        .R(1'b0));
  FDRE \dataQ_reg[1][11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_282),
        .Q(dataQ[155]),
        .R(1'b0));
  FDRE \dataQ_reg[1][12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_281),
        .Q(dataQ[156]),
        .R(1'b0));
  FDRE \dataQ_reg[1][13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_280),
        .Q(dataQ[157]),
        .R(1'b0));
  FDRE \dataQ_reg[1][14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_279),
        .Q(dataQ[158]),
        .R(1'b0));
  FDRE \dataQ_reg[1][15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_278),
        .Q(dataQ[159]),
        .R(1'b0));
  FDRE \dataQ_reg[1][16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_277),
        .Q(dataQ[160]),
        .R(1'b0));
  FDRE \dataQ_reg[1][17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_276),
        .Q(dataQ[161]),
        .R(1'b0));
  FDRE \dataQ_reg[1][18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_275),
        .Q(dataQ[162]),
        .R(1'b0));
  FDRE \dataQ_reg[1][19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_274),
        .Q(dataQ[163]),
        .R(1'b0));
  FDRE \dataQ_reg[1][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_292),
        .Q(dataQ[145]),
        .R(1'b0));
  FDRE \dataQ_reg[1][20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_273),
        .Q(dataQ[164]),
        .R(1'b0));
  FDRE \dataQ_reg[1][21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_272),
        .Q(dataQ[165]),
        .R(1'b0));
  FDRE \dataQ_reg[1][22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_271),
        .Q(dataQ[166]),
        .R(1'b0));
  FDRE \dataQ_reg[1][23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_270),
        .Q(dataQ[167]),
        .R(1'b0));
  FDRE \dataQ_reg[1][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_291),
        .Q(dataQ[146]),
        .R(1'b0));
  FDRE \dataQ_reg[1][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_290),
        .Q(dataQ[147]),
        .R(1'b0));
  FDRE \dataQ_reg[1][4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_289),
        .Q(dataQ[148]),
        .R(1'b0));
  FDRE \dataQ_reg[1][5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_288),
        .Q(dataQ[149]),
        .R(1'b0));
  FDRE \dataQ_reg[1][6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_287),
        .Q(dataQ[150]),
        .R(1'b0));
  FDRE \dataQ_reg[1][7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_286),
        .Q(dataQ[151]),
        .R(1'b0));
  FDRE \dataQ_reg[1][8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_285),
        .Q(dataQ[152]),
        .R(1'b0));
  FDRE \dataQ_reg[1][9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_284),
        .Q(dataQ[153]),
        .R(1'b0));
  FDRE \dataQ_reg[2][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_317),
        .Q(dataQ[120]),
        .R(1'b0));
  FDRE \dataQ_reg[2][10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_307),
        .Q(dataQ[130]),
        .R(1'b0));
  FDRE \dataQ_reg[2][11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_306),
        .Q(dataQ[131]),
        .R(1'b0));
  FDRE \dataQ_reg[2][12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_305),
        .Q(dataQ[132]),
        .R(1'b0));
  FDRE \dataQ_reg[2][13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_304),
        .Q(dataQ[133]),
        .R(1'b0));
  FDRE \dataQ_reg[2][14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_303),
        .Q(dataQ[134]),
        .R(1'b0));
  FDRE \dataQ_reg[2][15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_302),
        .Q(dataQ[135]),
        .R(1'b0));
  FDRE \dataQ_reg[2][16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_301),
        .Q(dataQ[136]),
        .R(1'b0));
  FDRE \dataQ_reg[2][17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_300),
        .Q(dataQ[137]),
        .R(1'b0));
  FDRE \dataQ_reg[2][18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_299),
        .Q(dataQ[138]),
        .R(1'b0));
  FDRE \dataQ_reg[2][19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_298),
        .Q(dataQ[139]),
        .R(1'b0));
  FDRE \dataQ_reg[2][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_316),
        .Q(dataQ[121]),
        .R(1'b0));
  FDRE \dataQ_reg[2][20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_297),
        .Q(dataQ[140]),
        .R(1'b0));
  FDRE \dataQ_reg[2][21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_296),
        .Q(dataQ[141]),
        .R(1'b0));
  FDRE \dataQ_reg[2][22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_295),
        .Q(dataQ[142]),
        .R(1'b0));
  FDRE \dataQ_reg[2][23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_294),
        .Q(dataQ[143]),
        .R(1'b0));
  FDRE \dataQ_reg[2][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_315),
        .Q(dataQ[122]),
        .R(1'b0));
  FDRE \dataQ_reg[2][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_314),
        .Q(dataQ[123]),
        .R(1'b0));
  FDRE \dataQ_reg[2][4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_313),
        .Q(dataQ[124]),
        .R(1'b0));
  FDRE \dataQ_reg[2][5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_312),
        .Q(dataQ[125]),
        .R(1'b0));
  FDRE \dataQ_reg[2][6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_311),
        .Q(dataQ[126]),
        .R(1'b0));
  FDRE \dataQ_reg[2][7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_310),
        .Q(dataQ[127]),
        .R(1'b0));
  FDRE \dataQ_reg[2][8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_309),
        .Q(dataQ[128]),
        .R(1'b0));
  FDRE \dataQ_reg[2][9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_308),
        .Q(dataQ[129]),
        .R(1'b0));
  FDRE \dataQ_reg[3][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_341),
        .Q(dataQ[96]),
        .R(1'b0));
  FDRE \dataQ_reg[3][10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_331),
        .Q(dataQ[106]),
        .R(1'b0));
  FDRE \dataQ_reg[3][11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_330),
        .Q(dataQ[107]),
        .R(1'b0));
  FDRE \dataQ_reg[3][12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_329),
        .Q(dataQ[108]),
        .R(1'b0));
  FDRE \dataQ_reg[3][13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_328),
        .Q(dataQ[109]),
        .R(1'b0));
  FDRE \dataQ_reg[3][14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_327),
        .Q(dataQ[110]),
        .R(1'b0));
  FDRE \dataQ_reg[3][15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_326),
        .Q(dataQ[111]),
        .R(1'b0));
  FDRE \dataQ_reg[3][16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_325),
        .Q(dataQ[112]),
        .R(1'b0));
  FDRE \dataQ_reg[3][17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_324),
        .Q(dataQ[113]),
        .R(1'b0));
  FDRE \dataQ_reg[3][18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_323),
        .Q(dataQ[114]),
        .R(1'b0));
  FDRE \dataQ_reg[3][19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_322),
        .Q(dataQ[115]),
        .R(1'b0));
  FDRE \dataQ_reg[3][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_340),
        .Q(dataQ[97]),
        .R(1'b0));
  FDRE \dataQ_reg[3][20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_321),
        .Q(dataQ[116]),
        .R(1'b0));
  FDRE \dataQ_reg[3][21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_320),
        .Q(dataQ[117]),
        .R(1'b0));
  FDRE \dataQ_reg[3][22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_319),
        .Q(dataQ[118]),
        .R(1'b0));
  FDRE \dataQ_reg[3][23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_318),
        .Q(dataQ[119]),
        .R(1'b0));
  FDRE \dataQ_reg[3][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_339),
        .Q(dataQ[98]),
        .R(1'b0));
  FDRE \dataQ_reg[3][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_338),
        .Q(dataQ[99]),
        .R(1'b0));
  FDRE \dataQ_reg[3][4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_337),
        .Q(dataQ[100]),
        .R(1'b0));
  FDRE \dataQ_reg[3][5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_336),
        .Q(dataQ[101]),
        .R(1'b0));
  FDRE \dataQ_reg[3][6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_335),
        .Q(dataQ[102]),
        .R(1'b0));
  FDRE \dataQ_reg[3][7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_334),
        .Q(dataQ[103]),
        .R(1'b0));
  FDRE \dataQ_reg[3][8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_333),
        .Q(dataQ[104]),
        .R(1'b0));
  FDRE \dataQ_reg[3][9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_332),
        .Q(dataQ[105]),
        .R(1'b0));
  FDRE \dataQ_reg[4][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_365),
        .Q(dataQ[72]),
        .R(1'b0));
  FDRE \dataQ_reg[4][10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_355),
        .Q(dataQ[82]),
        .R(1'b0));
  FDRE \dataQ_reg[4][11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_354),
        .Q(dataQ[83]),
        .R(1'b0));
  FDRE \dataQ_reg[4][12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_353),
        .Q(dataQ[84]),
        .R(1'b0));
  FDRE \dataQ_reg[4][13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_352),
        .Q(dataQ[85]),
        .R(1'b0));
  FDRE \dataQ_reg[4][14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_351),
        .Q(dataQ[86]),
        .R(1'b0));
  FDRE \dataQ_reg[4][15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_350),
        .Q(dataQ[87]),
        .R(1'b0));
  FDRE \dataQ_reg[4][16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_349),
        .Q(dataQ[88]),
        .R(1'b0));
  FDRE \dataQ_reg[4][17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_348),
        .Q(dataQ[89]),
        .R(1'b0));
  FDRE \dataQ_reg[4][18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_347),
        .Q(dataQ[90]),
        .R(1'b0));
  FDRE \dataQ_reg[4][19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_346),
        .Q(dataQ[91]),
        .R(1'b0));
  FDRE \dataQ_reg[4][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_364),
        .Q(dataQ[73]),
        .R(1'b0));
  FDRE \dataQ_reg[4][20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_345),
        .Q(dataQ[92]),
        .R(1'b0));
  FDRE \dataQ_reg[4][21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_344),
        .Q(dataQ[93]),
        .R(1'b0));
  FDRE \dataQ_reg[4][22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_343),
        .Q(dataQ[94]),
        .R(1'b0));
  FDRE \dataQ_reg[4][23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_342),
        .Q(dataQ[95]),
        .R(1'b0));
  FDRE \dataQ_reg[4][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_363),
        .Q(dataQ[74]),
        .R(1'b0));
  FDRE \dataQ_reg[4][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_362),
        .Q(dataQ[75]),
        .R(1'b0));
  FDRE \dataQ_reg[4][4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_361),
        .Q(dataQ[76]),
        .R(1'b0));
  FDRE \dataQ_reg[4][5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_360),
        .Q(dataQ[77]),
        .R(1'b0));
  FDRE \dataQ_reg[4][6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_359),
        .Q(dataQ[78]),
        .R(1'b0));
  FDRE \dataQ_reg[4][7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_358),
        .Q(dataQ[79]),
        .R(1'b0));
  FDRE \dataQ_reg[4][8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_357),
        .Q(dataQ[80]),
        .R(1'b0));
  FDRE \dataQ_reg[4][9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_356),
        .Q(dataQ[81]),
        .R(1'b0));
  FDRE \dataQ_reg[5][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_389),
        .Q(dataQ[48]),
        .R(1'b0));
  FDRE \dataQ_reg[5][10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_379),
        .Q(dataQ[58]),
        .R(1'b0));
  FDRE \dataQ_reg[5][11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_378),
        .Q(dataQ[59]),
        .R(1'b0));
  FDRE \dataQ_reg[5][12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_377),
        .Q(dataQ[60]),
        .R(1'b0));
  FDRE \dataQ_reg[5][13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_376),
        .Q(dataQ[61]),
        .R(1'b0));
  FDRE \dataQ_reg[5][14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_375),
        .Q(dataQ[62]),
        .R(1'b0));
  FDRE \dataQ_reg[5][15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_374),
        .Q(dataQ[63]),
        .R(1'b0));
  FDRE \dataQ_reg[5][16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_373),
        .Q(dataQ[64]),
        .R(1'b0));
  FDRE \dataQ_reg[5][17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_372),
        .Q(dataQ[65]),
        .R(1'b0));
  FDRE \dataQ_reg[5][18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_371),
        .Q(dataQ[66]),
        .R(1'b0));
  FDRE \dataQ_reg[5][19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_370),
        .Q(dataQ[67]),
        .R(1'b0));
  FDRE \dataQ_reg[5][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_388),
        .Q(dataQ[49]),
        .R(1'b0));
  FDRE \dataQ_reg[5][20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_369),
        .Q(dataQ[68]),
        .R(1'b0));
  FDRE \dataQ_reg[5][21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_368),
        .Q(dataQ[69]),
        .R(1'b0));
  FDRE \dataQ_reg[5][22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_367),
        .Q(dataQ[70]),
        .R(1'b0));
  FDRE \dataQ_reg[5][23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_366),
        .Q(dataQ[71]),
        .R(1'b0));
  FDRE \dataQ_reg[5][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_387),
        .Q(dataQ[50]),
        .R(1'b0));
  FDRE \dataQ_reg[5][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_386),
        .Q(dataQ[51]),
        .R(1'b0));
  FDRE \dataQ_reg[5][4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_385),
        .Q(dataQ[52]),
        .R(1'b0));
  FDRE \dataQ_reg[5][5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_384),
        .Q(dataQ[53]),
        .R(1'b0));
  FDRE \dataQ_reg[5][6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_383),
        .Q(dataQ[54]),
        .R(1'b0));
  FDRE \dataQ_reg[5][7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_382),
        .Q(dataQ[55]),
        .R(1'b0));
  FDRE \dataQ_reg[5][8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_381),
        .Q(dataQ[56]),
        .R(1'b0));
  FDRE \dataQ_reg[5][9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_380),
        .Q(dataQ[57]),
        .R(1'b0));
  FDRE \dataQ_reg[6][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_53),
        .Q(dataQ[24]),
        .R(1'b0));
  FDRE \dataQ_reg[6][10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_43),
        .Q(dataQ[34]),
        .R(1'b0));
  FDRE \dataQ_reg[6][11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_42),
        .Q(dataQ[35]),
        .R(1'b0));
  FDRE \dataQ_reg[6][12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_41),
        .Q(dataQ[36]),
        .R(1'b0));
  FDRE \dataQ_reg[6][13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_40),
        .Q(dataQ[37]),
        .R(1'b0));
  FDRE \dataQ_reg[6][14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_39),
        .Q(dataQ[38]),
        .R(1'b0));
  FDRE \dataQ_reg[6][15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_38),
        .Q(dataQ[39]),
        .R(1'b0));
  FDRE \dataQ_reg[6][16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_37),
        .Q(dataQ[40]),
        .R(1'b0));
  FDRE \dataQ_reg[6][17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_36),
        .Q(dataQ[41]),
        .R(1'b0));
  FDRE \dataQ_reg[6][18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_35),
        .Q(dataQ[42]),
        .R(1'b0));
  FDRE \dataQ_reg[6][19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_34),
        .Q(dataQ[43]),
        .R(1'b0));
  FDRE \dataQ_reg[6][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_52),
        .Q(dataQ[25]),
        .R(1'b0));
  FDRE \dataQ_reg[6][20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_33),
        .Q(dataQ[44]),
        .R(1'b0));
  FDRE \dataQ_reg[6][21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_32),
        .Q(dataQ[45]),
        .R(1'b0));
  FDRE \dataQ_reg[6][22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_31),
        .Q(dataQ[46]),
        .R(1'b0));
  FDRE \dataQ_reg[6][23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_30),
        .Q(dataQ[47]),
        .R(1'b0));
  FDRE \dataQ_reg[6][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_51),
        .Q(dataQ[26]),
        .R(1'b0));
  FDRE \dataQ_reg[6][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_50),
        .Q(dataQ[27]),
        .R(1'b0));
  FDRE \dataQ_reg[6][4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_49),
        .Q(dataQ[28]),
        .R(1'b0));
  FDRE \dataQ_reg[6][5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_48),
        .Q(dataQ[29]),
        .R(1'b0));
  FDRE \dataQ_reg[6][6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_47),
        .Q(dataQ[30]),
        .R(1'b0));
  FDRE \dataQ_reg[6][7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_46),
        .Q(dataQ[31]),
        .R(1'b0));
  FDRE \dataQ_reg[6][8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_45),
        .Q(dataQ[32]),
        .R(1'b0));
  FDRE \dataQ_reg[6][9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_44),
        .Q(dataQ[33]),
        .R(1'b0));
  FDRE \dataQ_reg[7][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_29),
        .Q(dataQ[0]),
        .R(1'b0));
  FDRE \dataQ_reg[7][10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_19),
        .Q(dataQ[10]),
        .R(1'b0));
  FDRE \dataQ_reg[7][11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_18),
        .Q(dataQ[11]),
        .R(1'b0));
  FDRE \dataQ_reg[7][12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_17),
        .Q(dataQ[12]),
        .R(1'b0));
  FDRE \dataQ_reg[7][13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_16),
        .Q(dataQ[13]),
        .R(1'b0));
  FDRE \dataQ_reg[7][14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_15),
        .Q(dataQ[14]),
        .R(1'b0));
  FDRE \dataQ_reg[7][15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_14),
        .Q(dataQ[15]),
        .R(1'b0));
  FDRE \dataQ_reg[7][16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_13),
        .Q(dataQ[16]),
        .R(1'b0));
  FDRE \dataQ_reg[7][17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_12),
        .Q(dataQ[17]),
        .R(1'b0));
  FDRE \dataQ_reg[7][18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_11),
        .Q(dataQ[18]),
        .R(1'b0));
  FDRE \dataQ_reg[7][19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_10),
        .Q(dataQ[19]),
        .R(1'b0));
  FDRE \dataQ_reg[7][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_28),
        .Q(dataQ[1]),
        .R(1'b0));
  FDRE \dataQ_reg[7][20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_9),
        .Q(dataQ[20]),
        .R(1'b0));
  FDRE \dataQ_reg[7][21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_8),
        .Q(dataQ[21]),
        .R(1'b0));
  FDRE \dataQ_reg[7][22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_7),
        .Q(dataQ[22]),
        .R(1'b0));
  FDRE \dataQ_reg[7][23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_6),
        .Q(dataQ[23]),
        .R(1'b0));
  FDRE \dataQ_reg[7][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_27),
        .Q(dataQ[2]),
        .R(1'b0));
  FDRE \dataQ_reg[7][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_26),
        .Q(dataQ[3]),
        .R(1'b0));
  FDRE \dataQ_reg[7][4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_25),
        .Q(dataQ[4]),
        .R(1'b0));
  FDRE \dataQ_reg[7][5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_24),
        .Q(dataQ[5]),
        .R(1'b0));
  FDRE \dataQ_reg[7][6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_23),
        .Q(dataQ[6]),
        .R(1'b0));
  FDRE \dataQ_reg[7][7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_22),
        .Q(dataQ[7]),
        .R(1'b0));
  FDRE \dataQ_reg[7][8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_21),
        .Q(dataQ[8]),
        .R(1'b0));
  FDRE \dataQ_reg[7][9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(butterfly_n_20),
        .Q(dataQ[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[0]_i_2 
       (.I0(dataQ[96]),
        .I1(dataQ[120]),
        .I2(outIdx[1]),
        .I3(dataQ[144]),
        .I4(outIdx[0]),
        .I5(dataQ[168]),
        .O(\data_out_I[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[0]_i_3 
       (.I0(dataQ[0]),
        .I1(dataQ[24]),
        .I2(outIdx[1]),
        .I3(dataQ[48]),
        .I4(outIdx[0]),
        .I5(dataQ[72]),
        .O(\data_out_I[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[10]_i_2 
       (.I0(dataQ[106]),
        .I1(dataQ[130]),
        .I2(outIdx[1]),
        .I3(dataQ[154]),
        .I4(outIdx[0]),
        .I5(dataQ[178]),
        .O(\data_out_I[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[10]_i_3 
       (.I0(dataQ[10]),
        .I1(dataQ[34]),
        .I2(outIdx[1]),
        .I3(dataQ[58]),
        .I4(outIdx[0]),
        .I5(dataQ[82]),
        .O(\data_out_I[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[11]_i_2 
       (.I0(dataQ[107]),
        .I1(dataQ[131]),
        .I2(outIdx[1]),
        .I3(dataQ[155]),
        .I4(outIdx[0]),
        .I5(dataQ[179]),
        .O(\data_out_I[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[11]_i_3 
       (.I0(dataQ[11]),
        .I1(dataQ[35]),
        .I2(outIdx[1]),
        .I3(dataQ[59]),
        .I4(outIdx[0]),
        .I5(dataQ[83]),
        .O(\data_out_I[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[12]_i_2 
       (.I0(dataQ[108]),
        .I1(dataQ[132]),
        .I2(outIdx[1]),
        .I3(dataQ[156]),
        .I4(outIdx[0]),
        .I5(dataQ[180]),
        .O(\data_out_I[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[12]_i_3 
       (.I0(dataQ[12]),
        .I1(dataQ[36]),
        .I2(outIdx[1]),
        .I3(dataQ[60]),
        .I4(outIdx[0]),
        .I5(dataQ[84]),
        .O(\data_out_I[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[13]_i_2 
       (.I0(dataQ[109]),
        .I1(dataQ[133]),
        .I2(outIdx[1]),
        .I3(dataQ[157]),
        .I4(outIdx[0]),
        .I5(dataQ[181]),
        .O(\data_out_I[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[13]_i_3 
       (.I0(dataQ[13]),
        .I1(dataQ[37]),
        .I2(outIdx[1]),
        .I3(dataQ[61]),
        .I4(outIdx[0]),
        .I5(dataQ[85]),
        .O(\data_out_I[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[14]_i_2 
       (.I0(dataQ[110]),
        .I1(dataQ[134]),
        .I2(outIdx[1]),
        .I3(dataQ[158]),
        .I4(outIdx[0]),
        .I5(dataQ[182]),
        .O(\data_out_I[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[14]_i_3 
       (.I0(dataQ[14]),
        .I1(dataQ[38]),
        .I2(outIdx[1]),
        .I3(dataQ[62]),
        .I4(outIdx[0]),
        .I5(dataQ[86]),
        .O(\data_out_I[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[15]_i_2 
       (.I0(dataQ[111]),
        .I1(dataQ[135]),
        .I2(outIdx[1]),
        .I3(dataQ[159]),
        .I4(outIdx[0]),
        .I5(dataQ[183]),
        .O(\data_out_I[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[15]_i_3 
       (.I0(dataQ[15]),
        .I1(dataQ[39]),
        .I2(outIdx[1]),
        .I3(dataQ[63]),
        .I4(outIdx[0]),
        .I5(dataQ[87]),
        .O(\data_out_I[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[16]_i_2 
       (.I0(dataQ[112]),
        .I1(dataQ[136]),
        .I2(outIdx[1]),
        .I3(dataQ[160]),
        .I4(outIdx[0]),
        .I5(dataQ[184]),
        .O(\data_out_I[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[16]_i_3 
       (.I0(dataQ[16]),
        .I1(dataQ[40]),
        .I2(outIdx[1]),
        .I3(dataQ[64]),
        .I4(outIdx[0]),
        .I5(dataQ[88]),
        .O(\data_out_I[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[17]_i_2 
       (.I0(dataQ[113]),
        .I1(dataQ[137]),
        .I2(outIdx[1]),
        .I3(dataQ[161]),
        .I4(outIdx[0]),
        .I5(dataQ[185]),
        .O(\data_out_I[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[17]_i_3 
       (.I0(dataQ[17]),
        .I1(dataQ[41]),
        .I2(outIdx[1]),
        .I3(dataQ[65]),
        .I4(outIdx[0]),
        .I5(dataQ[89]),
        .O(\data_out_I[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[18]_i_2 
       (.I0(dataQ[114]),
        .I1(dataQ[138]),
        .I2(outIdx[1]),
        .I3(dataQ[162]),
        .I4(outIdx[0]),
        .I5(dataQ[186]),
        .O(\data_out_I[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[18]_i_3 
       (.I0(dataQ[18]),
        .I1(dataQ[42]),
        .I2(outIdx[1]),
        .I3(dataQ[66]),
        .I4(outIdx[0]),
        .I5(dataQ[90]),
        .O(\data_out_I[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[19]_i_2 
       (.I0(dataQ[115]),
        .I1(dataQ[139]),
        .I2(outIdx[1]),
        .I3(dataQ[163]),
        .I4(outIdx[0]),
        .I5(dataQ[187]),
        .O(\data_out_I[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[19]_i_3 
       (.I0(dataQ[19]),
        .I1(dataQ[43]),
        .I2(outIdx[1]),
        .I3(dataQ[67]),
        .I4(outIdx[0]),
        .I5(dataQ[91]),
        .O(\data_out_I[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[1]_i_2 
       (.I0(dataQ[97]),
        .I1(dataQ[121]),
        .I2(outIdx[1]),
        .I3(dataQ[145]),
        .I4(outIdx[0]),
        .I5(dataQ[169]),
        .O(\data_out_I[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[1]_i_3 
       (.I0(dataQ[1]),
        .I1(dataQ[25]),
        .I2(outIdx[1]),
        .I3(dataQ[49]),
        .I4(outIdx[0]),
        .I5(dataQ[73]),
        .O(\data_out_I[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[20]_i_2 
       (.I0(dataQ[116]),
        .I1(dataQ[140]),
        .I2(outIdx[1]),
        .I3(dataQ[164]),
        .I4(outIdx[0]),
        .I5(dataQ[188]),
        .O(\data_out_I[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[20]_i_3 
       (.I0(dataQ[20]),
        .I1(dataQ[44]),
        .I2(outIdx[1]),
        .I3(dataQ[68]),
        .I4(outIdx[0]),
        .I5(dataQ[92]),
        .O(\data_out_I[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[21]_i_2 
       (.I0(dataQ[117]),
        .I1(dataQ[141]),
        .I2(outIdx[1]),
        .I3(dataQ[165]),
        .I4(outIdx[0]),
        .I5(dataQ[189]),
        .O(\data_out_I[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[21]_i_3 
       (.I0(dataQ[21]),
        .I1(dataQ[45]),
        .I2(outIdx[1]),
        .I3(dataQ[69]),
        .I4(outIdx[0]),
        .I5(dataQ[93]),
        .O(\data_out_I[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[22]_i_2 
       (.I0(dataQ[118]),
        .I1(dataQ[142]),
        .I2(outIdx[1]),
        .I3(dataQ[166]),
        .I4(outIdx[0]),
        .I5(dataQ[190]),
        .O(\data_out_I[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[22]_i_3 
       (.I0(dataQ[22]),
        .I1(dataQ[46]),
        .I2(outIdx[1]),
        .I3(dataQ[70]),
        .I4(outIdx[0]),
        .I5(dataQ[94]),
        .O(\data_out_I[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[23]_i_2 
       (.I0(dataQ[119]),
        .I1(dataQ[143]),
        .I2(outIdx[1]),
        .I3(dataQ[167]),
        .I4(outIdx[0]),
        .I5(dataQ[191]),
        .O(\data_out_I[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[23]_i_3 
       (.I0(dataQ[23]),
        .I1(dataQ[47]),
        .I2(outIdx[1]),
        .I3(dataQ[71]),
        .I4(outIdx[0]),
        .I5(dataQ[95]),
        .O(\data_out_I[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[2]_i_2 
       (.I0(dataQ[98]),
        .I1(dataQ[122]),
        .I2(outIdx[1]),
        .I3(dataQ[146]),
        .I4(outIdx[0]),
        .I5(dataQ[170]),
        .O(\data_out_I[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[2]_i_3 
       (.I0(dataQ[2]),
        .I1(dataQ[26]),
        .I2(outIdx[1]),
        .I3(dataQ[50]),
        .I4(outIdx[0]),
        .I5(dataQ[74]),
        .O(\data_out_I[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[3]_i_2 
       (.I0(dataQ[99]),
        .I1(dataQ[123]),
        .I2(outIdx[1]),
        .I3(dataQ[147]),
        .I4(outIdx[0]),
        .I5(dataQ[171]),
        .O(\data_out_I[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[3]_i_3 
       (.I0(dataQ[3]),
        .I1(dataQ[27]),
        .I2(outIdx[1]),
        .I3(dataQ[51]),
        .I4(outIdx[0]),
        .I5(dataQ[75]),
        .O(\data_out_I[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[4]_i_2 
       (.I0(dataQ[100]),
        .I1(dataQ[124]),
        .I2(outIdx[1]),
        .I3(dataQ[148]),
        .I4(outIdx[0]),
        .I5(dataQ[172]),
        .O(\data_out_I[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[4]_i_3 
       (.I0(dataQ[4]),
        .I1(dataQ[28]),
        .I2(outIdx[1]),
        .I3(dataQ[52]),
        .I4(outIdx[0]),
        .I5(dataQ[76]),
        .O(\data_out_I[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[5]_i_2 
       (.I0(dataQ[101]),
        .I1(dataQ[125]),
        .I2(outIdx[1]),
        .I3(dataQ[149]),
        .I4(outIdx[0]),
        .I5(dataQ[173]),
        .O(\data_out_I[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[5]_i_3 
       (.I0(dataQ[5]),
        .I1(dataQ[29]),
        .I2(outIdx[1]),
        .I3(dataQ[53]),
        .I4(outIdx[0]),
        .I5(dataQ[77]),
        .O(\data_out_I[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[6]_i_2 
       (.I0(dataQ[102]),
        .I1(dataQ[126]),
        .I2(outIdx[1]),
        .I3(dataQ[150]),
        .I4(outIdx[0]),
        .I5(dataQ[174]),
        .O(\data_out_I[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[6]_i_3 
       (.I0(dataQ[6]),
        .I1(dataQ[30]),
        .I2(outIdx[1]),
        .I3(dataQ[54]),
        .I4(outIdx[0]),
        .I5(dataQ[78]),
        .O(\data_out_I[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[7]_i_2 
       (.I0(dataQ[103]),
        .I1(dataQ[127]),
        .I2(outIdx[1]),
        .I3(dataQ[151]),
        .I4(outIdx[0]),
        .I5(dataQ[175]),
        .O(\data_out_I[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[7]_i_3 
       (.I0(dataQ[7]),
        .I1(dataQ[31]),
        .I2(outIdx[1]),
        .I3(dataQ[55]),
        .I4(outIdx[0]),
        .I5(dataQ[79]),
        .O(\data_out_I[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[8]_i_2 
       (.I0(dataQ[104]),
        .I1(dataQ[128]),
        .I2(outIdx[1]),
        .I3(dataQ[152]),
        .I4(outIdx[0]),
        .I5(dataQ[176]),
        .O(\data_out_I[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[8]_i_3 
       (.I0(dataQ[8]),
        .I1(dataQ[32]),
        .I2(outIdx[1]),
        .I3(dataQ[56]),
        .I4(outIdx[0]),
        .I5(dataQ[80]),
        .O(\data_out_I[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[9]_i_2 
       (.I0(dataQ[105]),
        .I1(dataQ[129]),
        .I2(outIdx[1]),
        .I3(dataQ[153]),
        .I4(outIdx[0]),
        .I5(dataQ[177]),
        .O(\data_out_I[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_I[9]_i_3 
       (.I0(dataQ[9]),
        .I1(dataQ[33]),
        .I2(outIdx[1]),
        .I3(dataQ[57]),
        .I4(outIdx[0]),
        .I5(dataQ[81]),
        .O(\data_out_I[9]_i_3_n_0 ));
  FDRE \data_out_I_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\data_out_R[23]_i_1_n_0 ),
        .D(\data_out_I_reg[0]_i_1_n_0 ),
        .Q(\data_out_I_reg[23]_0 [0]),
        .R(1'b0));
  MUXF7 \data_out_I_reg[0]_i_1 
       (.I0(\data_out_I[0]_i_2_n_0 ),
        .I1(\data_out_I[0]_i_3_n_0 ),
        .O(\data_out_I_reg[0]_i_1_n_0 ),
        .S(outIdx[2]));
  FDRE \data_out_I_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\data_out_R[23]_i_1_n_0 ),
        .D(\data_out_I_reg[10]_i_1_n_0 ),
        .Q(\data_out_I_reg[23]_0 [10]),
        .R(1'b0));
  MUXF7 \data_out_I_reg[10]_i_1 
       (.I0(\data_out_I[10]_i_2_n_0 ),
        .I1(\data_out_I[10]_i_3_n_0 ),
        .O(\data_out_I_reg[10]_i_1_n_0 ),
        .S(outIdx[2]));
  FDRE \data_out_I_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\data_out_R[23]_i_1_n_0 ),
        .D(\data_out_I_reg[11]_i_1_n_0 ),
        .Q(\data_out_I_reg[23]_0 [11]),
        .R(1'b0));
  MUXF7 \data_out_I_reg[11]_i_1 
       (.I0(\data_out_I[11]_i_2_n_0 ),
        .I1(\data_out_I[11]_i_3_n_0 ),
        .O(\data_out_I_reg[11]_i_1_n_0 ),
        .S(outIdx[2]));
  FDRE \data_out_I_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\data_out_R[23]_i_1_n_0 ),
        .D(\data_out_I_reg[12]_i_1_n_0 ),
        .Q(\data_out_I_reg[23]_0 [12]),
        .R(1'b0));
  MUXF7 \data_out_I_reg[12]_i_1 
       (.I0(\data_out_I[12]_i_2_n_0 ),
        .I1(\data_out_I[12]_i_3_n_0 ),
        .O(\data_out_I_reg[12]_i_1_n_0 ),
        .S(outIdx[2]));
  FDRE \data_out_I_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\data_out_R[23]_i_1_n_0 ),
        .D(\data_out_I_reg[13]_i_1_n_0 ),
        .Q(\data_out_I_reg[23]_0 [13]),
        .R(1'b0));
  MUXF7 \data_out_I_reg[13]_i_1 
       (.I0(\data_out_I[13]_i_2_n_0 ),
        .I1(\data_out_I[13]_i_3_n_0 ),
        .O(\data_out_I_reg[13]_i_1_n_0 ),
        .S(outIdx[2]));
  FDRE \data_out_I_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\data_out_R[23]_i_1_n_0 ),
        .D(\data_out_I_reg[14]_i_1_n_0 ),
        .Q(\data_out_I_reg[23]_0 [14]),
        .R(1'b0));
  MUXF7 \data_out_I_reg[14]_i_1 
       (.I0(\data_out_I[14]_i_2_n_0 ),
        .I1(\data_out_I[14]_i_3_n_0 ),
        .O(\data_out_I_reg[14]_i_1_n_0 ),
        .S(outIdx[2]));
  FDRE \data_out_I_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\data_out_R[23]_i_1_n_0 ),
        .D(\data_out_I_reg[15]_i_1_n_0 ),
        .Q(\data_out_I_reg[23]_0 [15]),
        .R(1'b0));
  MUXF7 \data_out_I_reg[15]_i_1 
       (.I0(\data_out_I[15]_i_2_n_0 ),
        .I1(\data_out_I[15]_i_3_n_0 ),
        .O(\data_out_I_reg[15]_i_1_n_0 ),
        .S(outIdx[2]));
  FDRE \data_out_I_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\data_out_R[23]_i_1_n_0 ),
        .D(\data_out_I_reg[16]_i_1_n_0 ),
        .Q(\data_out_I_reg[23]_0 [16]),
        .R(1'b0));
  MUXF7 \data_out_I_reg[16]_i_1 
       (.I0(\data_out_I[16]_i_2_n_0 ),
        .I1(\data_out_I[16]_i_3_n_0 ),
        .O(\data_out_I_reg[16]_i_1_n_0 ),
        .S(outIdx[2]));
  FDRE \data_out_I_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\data_out_R[23]_i_1_n_0 ),
        .D(\data_out_I_reg[17]_i_1_n_0 ),
        .Q(\data_out_I_reg[23]_0 [17]),
        .R(1'b0));
  MUXF7 \data_out_I_reg[17]_i_1 
       (.I0(\data_out_I[17]_i_2_n_0 ),
        .I1(\data_out_I[17]_i_3_n_0 ),
        .O(\data_out_I_reg[17]_i_1_n_0 ),
        .S(outIdx[2]));
  FDRE \data_out_I_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\data_out_R[23]_i_1_n_0 ),
        .D(\data_out_I_reg[18]_i_1_n_0 ),
        .Q(\data_out_I_reg[23]_0 [18]),
        .R(1'b0));
  MUXF7 \data_out_I_reg[18]_i_1 
       (.I0(\data_out_I[18]_i_2_n_0 ),
        .I1(\data_out_I[18]_i_3_n_0 ),
        .O(\data_out_I_reg[18]_i_1_n_0 ),
        .S(outIdx[2]));
  FDRE \data_out_I_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\data_out_R[23]_i_1_n_0 ),
        .D(\data_out_I_reg[19]_i_1_n_0 ),
        .Q(\data_out_I_reg[23]_0 [19]),
        .R(1'b0));
  MUXF7 \data_out_I_reg[19]_i_1 
       (.I0(\data_out_I[19]_i_2_n_0 ),
        .I1(\data_out_I[19]_i_3_n_0 ),
        .O(\data_out_I_reg[19]_i_1_n_0 ),
        .S(outIdx[2]));
  FDRE \data_out_I_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\data_out_R[23]_i_1_n_0 ),
        .D(\data_out_I_reg[1]_i_1_n_0 ),
        .Q(\data_out_I_reg[23]_0 [1]),
        .R(1'b0));
  MUXF7 \data_out_I_reg[1]_i_1 
       (.I0(\data_out_I[1]_i_2_n_0 ),
        .I1(\data_out_I[1]_i_3_n_0 ),
        .O(\data_out_I_reg[1]_i_1_n_0 ),
        .S(outIdx[2]));
  FDRE \data_out_I_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\data_out_R[23]_i_1_n_0 ),
        .D(\data_out_I_reg[20]_i_1_n_0 ),
        .Q(\data_out_I_reg[23]_0 [20]),
        .R(1'b0));
  MUXF7 \data_out_I_reg[20]_i_1 
       (.I0(\data_out_I[20]_i_2_n_0 ),
        .I1(\data_out_I[20]_i_3_n_0 ),
        .O(\data_out_I_reg[20]_i_1_n_0 ),
        .S(outIdx[2]));
  FDRE \data_out_I_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\data_out_R[23]_i_1_n_0 ),
        .D(\data_out_I_reg[21]_i_1_n_0 ),
        .Q(\data_out_I_reg[23]_0 [21]),
        .R(1'b0));
  MUXF7 \data_out_I_reg[21]_i_1 
       (.I0(\data_out_I[21]_i_2_n_0 ),
        .I1(\data_out_I[21]_i_3_n_0 ),
        .O(\data_out_I_reg[21]_i_1_n_0 ),
        .S(outIdx[2]));
  FDRE \data_out_I_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\data_out_R[23]_i_1_n_0 ),
        .D(\data_out_I_reg[22]_i_1_n_0 ),
        .Q(\data_out_I_reg[23]_0 [22]),
        .R(1'b0));
  MUXF7 \data_out_I_reg[22]_i_1 
       (.I0(\data_out_I[22]_i_2_n_0 ),
        .I1(\data_out_I[22]_i_3_n_0 ),
        .O(\data_out_I_reg[22]_i_1_n_0 ),
        .S(outIdx[2]));
  FDRE \data_out_I_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\data_out_R[23]_i_1_n_0 ),
        .D(\data_out_I_reg[23]_i_1_n_0 ),
        .Q(\data_out_I_reg[23]_0 [23]),
        .R(1'b0));
  MUXF7 \data_out_I_reg[23]_i_1 
       (.I0(\data_out_I[23]_i_2_n_0 ),
        .I1(\data_out_I[23]_i_3_n_0 ),
        .O(\data_out_I_reg[23]_i_1_n_0 ),
        .S(outIdx[2]));
  FDRE \data_out_I_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\data_out_R[23]_i_1_n_0 ),
        .D(\data_out_I_reg[2]_i_1_n_0 ),
        .Q(\data_out_I_reg[23]_0 [2]),
        .R(1'b0));
  MUXF7 \data_out_I_reg[2]_i_1 
       (.I0(\data_out_I[2]_i_2_n_0 ),
        .I1(\data_out_I[2]_i_3_n_0 ),
        .O(\data_out_I_reg[2]_i_1_n_0 ),
        .S(outIdx[2]));
  FDRE \data_out_I_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\data_out_R[23]_i_1_n_0 ),
        .D(\data_out_I_reg[3]_i_1_n_0 ),
        .Q(\data_out_I_reg[23]_0 [3]),
        .R(1'b0));
  MUXF7 \data_out_I_reg[3]_i_1 
       (.I0(\data_out_I[3]_i_2_n_0 ),
        .I1(\data_out_I[3]_i_3_n_0 ),
        .O(\data_out_I_reg[3]_i_1_n_0 ),
        .S(outIdx[2]));
  FDRE \data_out_I_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\data_out_R[23]_i_1_n_0 ),
        .D(\data_out_I_reg[4]_i_1_n_0 ),
        .Q(\data_out_I_reg[23]_0 [4]),
        .R(1'b0));
  MUXF7 \data_out_I_reg[4]_i_1 
       (.I0(\data_out_I[4]_i_2_n_0 ),
        .I1(\data_out_I[4]_i_3_n_0 ),
        .O(\data_out_I_reg[4]_i_1_n_0 ),
        .S(outIdx[2]));
  FDRE \data_out_I_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\data_out_R[23]_i_1_n_0 ),
        .D(\data_out_I_reg[5]_i_1_n_0 ),
        .Q(\data_out_I_reg[23]_0 [5]),
        .R(1'b0));
  MUXF7 \data_out_I_reg[5]_i_1 
       (.I0(\data_out_I[5]_i_2_n_0 ),
        .I1(\data_out_I[5]_i_3_n_0 ),
        .O(\data_out_I_reg[5]_i_1_n_0 ),
        .S(outIdx[2]));
  FDRE \data_out_I_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\data_out_R[23]_i_1_n_0 ),
        .D(\data_out_I_reg[6]_i_1_n_0 ),
        .Q(\data_out_I_reg[23]_0 [6]),
        .R(1'b0));
  MUXF7 \data_out_I_reg[6]_i_1 
       (.I0(\data_out_I[6]_i_2_n_0 ),
        .I1(\data_out_I[6]_i_3_n_0 ),
        .O(\data_out_I_reg[6]_i_1_n_0 ),
        .S(outIdx[2]));
  FDRE \data_out_I_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\data_out_R[23]_i_1_n_0 ),
        .D(\data_out_I_reg[7]_i_1_n_0 ),
        .Q(\data_out_I_reg[23]_0 [7]),
        .R(1'b0));
  MUXF7 \data_out_I_reg[7]_i_1 
       (.I0(\data_out_I[7]_i_2_n_0 ),
        .I1(\data_out_I[7]_i_3_n_0 ),
        .O(\data_out_I_reg[7]_i_1_n_0 ),
        .S(outIdx[2]));
  FDRE \data_out_I_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\data_out_R[23]_i_1_n_0 ),
        .D(\data_out_I_reg[8]_i_1_n_0 ),
        .Q(\data_out_I_reg[23]_0 [8]),
        .R(1'b0));
  MUXF7 \data_out_I_reg[8]_i_1 
       (.I0(\data_out_I[8]_i_2_n_0 ),
        .I1(\data_out_I[8]_i_3_n_0 ),
        .O(\data_out_I_reg[8]_i_1_n_0 ),
        .S(outIdx[2]));
  FDRE \data_out_I_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\data_out_R[23]_i_1_n_0 ),
        .D(\data_out_I_reg[9]_i_1_n_0 ),
        .Q(\data_out_I_reg[23]_0 [9]),
        .R(1'b0));
  MUXF7 \data_out_I_reg[9]_i_1 
       (.I0(\data_out_I[9]_i_2_n_0 ),
        .I1(\data_out_I[9]_i_3_n_0 ),
        .O(\data_out_I_reg[9]_i_1_n_0 ),
        .S(outIdx[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[0]_i_2 
       (.I0(dataI[96]),
        .I1(dataI[120]),
        .I2(outIdx[1]),
        .I3(dataI[144]),
        .I4(outIdx[0]),
        .I5(dataI[168]),
        .O(\data_out_R[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[0]_i_3 
       (.I0(dataI[0]),
        .I1(dataI[24]),
        .I2(outIdx[1]),
        .I3(dataI[48]),
        .I4(outIdx[0]),
        .I5(dataI[72]),
        .O(\data_out_R[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[10]_i_2 
       (.I0(dataI[106]),
        .I1(dataI[130]),
        .I2(outIdx[1]),
        .I3(dataI[154]),
        .I4(outIdx[0]),
        .I5(dataI[178]),
        .O(\data_out_R[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[10]_i_3 
       (.I0(dataI[10]),
        .I1(dataI[34]),
        .I2(outIdx[1]),
        .I3(dataI[58]),
        .I4(outIdx[0]),
        .I5(dataI[82]),
        .O(\data_out_R[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[11]_i_2 
       (.I0(dataI[107]),
        .I1(dataI[131]),
        .I2(outIdx[1]),
        .I3(dataI[155]),
        .I4(outIdx[0]),
        .I5(dataI[179]),
        .O(\data_out_R[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[11]_i_3 
       (.I0(dataI[11]),
        .I1(dataI[35]),
        .I2(outIdx[1]),
        .I3(dataI[59]),
        .I4(outIdx[0]),
        .I5(dataI[83]),
        .O(\data_out_R[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[12]_i_2 
       (.I0(dataI[108]),
        .I1(dataI[132]),
        .I2(outIdx[1]),
        .I3(dataI[156]),
        .I4(outIdx[0]),
        .I5(dataI[180]),
        .O(\data_out_R[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[12]_i_3 
       (.I0(dataI[12]),
        .I1(dataI[36]),
        .I2(outIdx[1]),
        .I3(dataI[60]),
        .I4(outIdx[0]),
        .I5(dataI[84]),
        .O(\data_out_R[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[13]_i_2 
       (.I0(dataI[109]),
        .I1(dataI[133]),
        .I2(outIdx[1]),
        .I3(dataI[157]),
        .I4(outIdx[0]),
        .I5(dataI[181]),
        .O(\data_out_R[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[13]_i_3 
       (.I0(dataI[13]),
        .I1(dataI[37]),
        .I2(outIdx[1]),
        .I3(dataI[61]),
        .I4(outIdx[0]),
        .I5(dataI[85]),
        .O(\data_out_R[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[14]_i_2 
       (.I0(dataI[110]),
        .I1(dataI[134]),
        .I2(outIdx[1]),
        .I3(dataI[158]),
        .I4(outIdx[0]),
        .I5(dataI[182]),
        .O(\data_out_R[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[14]_i_3 
       (.I0(dataI[14]),
        .I1(dataI[38]),
        .I2(outIdx[1]),
        .I3(dataI[62]),
        .I4(outIdx[0]),
        .I5(dataI[86]),
        .O(\data_out_R[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[15]_i_2 
       (.I0(dataI[111]),
        .I1(dataI[135]),
        .I2(outIdx[1]),
        .I3(dataI[159]),
        .I4(outIdx[0]),
        .I5(dataI[183]),
        .O(\data_out_R[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[15]_i_3 
       (.I0(dataI[15]),
        .I1(dataI[39]),
        .I2(outIdx[1]),
        .I3(dataI[63]),
        .I4(outIdx[0]),
        .I5(dataI[87]),
        .O(\data_out_R[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[16]_i_2 
       (.I0(dataI[112]),
        .I1(dataI[136]),
        .I2(outIdx[1]),
        .I3(dataI[160]),
        .I4(outIdx[0]),
        .I5(dataI[184]),
        .O(\data_out_R[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[16]_i_3 
       (.I0(dataI[16]),
        .I1(dataI[40]),
        .I2(outIdx[1]),
        .I3(dataI[64]),
        .I4(outIdx[0]),
        .I5(dataI[88]),
        .O(\data_out_R[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[17]_i_2 
       (.I0(dataI[113]),
        .I1(dataI[137]),
        .I2(outIdx[1]),
        .I3(dataI[161]),
        .I4(outIdx[0]),
        .I5(dataI[185]),
        .O(\data_out_R[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[17]_i_3 
       (.I0(dataI[17]),
        .I1(dataI[41]),
        .I2(outIdx[1]),
        .I3(dataI[65]),
        .I4(outIdx[0]),
        .I5(dataI[89]),
        .O(\data_out_R[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[18]_i_2 
       (.I0(dataI[114]),
        .I1(dataI[138]),
        .I2(outIdx[1]),
        .I3(dataI[162]),
        .I4(outIdx[0]),
        .I5(dataI[186]),
        .O(\data_out_R[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[18]_i_3 
       (.I0(dataI[18]),
        .I1(dataI[42]),
        .I2(outIdx[1]),
        .I3(dataI[66]),
        .I4(outIdx[0]),
        .I5(dataI[90]),
        .O(\data_out_R[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[19]_i_2 
       (.I0(dataI[115]),
        .I1(dataI[139]),
        .I2(outIdx[1]),
        .I3(dataI[163]),
        .I4(outIdx[0]),
        .I5(dataI[187]),
        .O(\data_out_R[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[19]_i_3 
       (.I0(dataI[19]),
        .I1(dataI[43]),
        .I2(outIdx[1]),
        .I3(dataI[67]),
        .I4(outIdx[0]),
        .I5(dataI[91]),
        .O(\data_out_R[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[1]_i_2 
       (.I0(dataI[97]),
        .I1(dataI[121]),
        .I2(outIdx[1]),
        .I3(dataI[145]),
        .I4(outIdx[0]),
        .I5(dataI[169]),
        .O(\data_out_R[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[1]_i_3 
       (.I0(dataI[1]),
        .I1(dataI[25]),
        .I2(outIdx[1]),
        .I3(dataI[49]),
        .I4(outIdx[0]),
        .I5(dataI[73]),
        .O(\data_out_R[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[20]_i_2 
       (.I0(dataI[116]),
        .I1(dataI[140]),
        .I2(outIdx[1]),
        .I3(dataI[164]),
        .I4(outIdx[0]),
        .I5(dataI[188]),
        .O(\data_out_R[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[20]_i_3 
       (.I0(dataI[20]),
        .I1(dataI[44]),
        .I2(outIdx[1]),
        .I3(dataI[68]),
        .I4(outIdx[0]),
        .I5(dataI[92]),
        .O(\data_out_R[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[21]_i_2 
       (.I0(dataI[117]),
        .I1(dataI[141]),
        .I2(outIdx[1]),
        .I3(dataI[165]),
        .I4(outIdx[0]),
        .I5(dataI[189]),
        .O(\data_out_R[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[21]_i_3 
       (.I0(dataI[21]),
        .I1(dataI[45]),
        .I2(outIdx[1]),
        .I3(dataI[69]),
        .I4(outIdx[0]),
        .I5(dataI[93]),
        .O(\data_out_R[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[22]_i_2 
       (.I0(dataI[118]),
        .I1(dataI[142]),
        .I2(outIdx[1]),
        .I3(dataI[166]),
        .I4(outIdx[0]),
        .I5(dataI[190]),
        .O(\data_out_R[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[22]_i_3 
       (.I0(dataI[22]),
        .I1(dataI[46]),
        .I2(outIdx[1]),
        .I3(dataI[70]),
        .I4(outIdx[0]),
        .I5(dataI[94]),
        .O(\data_out_R[22]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \data_out_R[23]_i_1 
       (.I0(last_data_en_state_reg_0),
        .I1(\idx_reg[0]_0 ),
        .I2(Q),
        .I3(state),
        .O(\data_out_R[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[23]_i_3 
       (.I0(dataI[119]),
        .I1(dataI[143]),
        .I2(outIdx[1]),
        .I3(dataI[167]),
        .I4(outIdx[0]),
        .I5(dataI[191]),
        .O(\data_out_R[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[23]_i_4 
       (.I0(dataI[23]),
        .I1(dataI[47]),
        .I2(outIdx[1]),
        .I3(dataI[71]),
        .I4(outIdx[0]),
        .I5(dataI[95]),
        .O(\data_out_R[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[2]_i_2 
       (.I0(dataI[98]),
        .I1(dataI[122]),
        .I2(outIdx[1]),
        .I3(dataI[146]),
        .I4(outIdx[0]),
        .I5(dataI[170]),
        .O(\data_out_R[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[2]_i_3 
       (.I0(dataI[2]),
        .I1(dataI[26]),
        .I2(outIdx[1]),
        .I3(dataI[50]),
        .I4(outIdx[0]),
        .I5(dataI[74]),
        .O(\data_out_R[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[3]_i_2 
       (.I0(dataI[99]),
        .I1(dataI[123]),
        .I2(outIdx[1]),
        .I3(dataI[147]),
        .I4(outIdx[0]),
        .I5(dataI[171]),
        .O(\data_out_R[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[3]_i_3 
       (.I0(dataI[3]),
        .I1(dataI[27]),
        .I2(outIdx[1]),
        .I3(dataI[51]),
        .I4(outIdx[0]),
        .I5(dataI[75]),
        .O(\data_out_R[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[4]_i_2 
       (.I0(dataI[100]),
        .I1(dataI[124]),
        .I2(outIdx[1]),
        .I3(dataI[148]),
        .I4(outIdx[0]),
        .I5(dataI[172]),
        .O(\data_out_R[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[4]_i_3 
       (.I0(dataI[4]),
        .I1(dataI[28]),
        .I2(outIdx[1]),
        .I3(dataI[52]),
        .I4(outIdx[0]),
        .I5(dataI[76]),
        .O(\data_out_R[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[5]_i_2 
       (.I0(dataI[101]),
        .I1(dataI[125]),
        .I2(outIdx[1]),
        .I3(dataI[149]),
        .I4(outIdx[0]),
        .I5(dataI[173]),
        .O(\data_out_R[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[5]_i_3 
       (.I0(dataI[5]),
        .I1(dataI[29]),
        .I2(outIdx[1]),
        .I3(dataI[53]),
        .I4(outIdx[0]),
        .I5(dataI[77]),
        .O(\data_out_R[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[6]_i_2 
       (.I0(dataI[102]),
        .I1(dataI[126]),
        .I2(outIdx[1]),
        .I3(dataI[150]),
        .I4(outIdx[0]),
        .I5(dataI[174]),
        .O(\data_out_R[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[6]_i_3 
       (.I0(dataI[6]),
        .I1(dataI[30]),
        .I2(outIdx[1]),
        .I3(dataI[54]),
        .I4(outIdx[0]),
        .I5(dataI[78]),
        .O(\data_out_R[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[7]_i_2 
       (.I0(dataI[103]),
        .I1(dataI[127]),
        .I2(outIdx[1]),
        .I3(dataI[151]),
        .I4(outIdx[0]),
        .I5(dataI[175]),
        .O(\data_out_R[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[7]_i_3 
       (.I0(dataI[7]),
        .I1(dataI[31]),
        .I2(outIdx[1]),
        .I3(dataI[55]),
        .I4(outIdx[0]),
        .I5(dataI[79]),
        .O(\data_out_R[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[8]_i_2 
       (.I0(dataI[104]),
        .I1(dataI[128]),
        .I2(outIdx[1]),
        .I3(dataI[152]),
        .I4(outIdx[0]),
        .I5(dataI[176]),
        .O(\data_out_R[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[8]_i_3 
       (.I0(dataI[8]),
        .I1(dataI[32]),
        .I2(outIdx[1]),
        .I3(dataI[56]),
        .I4(outIdx[0]),
        .I5(dataI[80]),
        .O(\data_out_R[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[9]_i_2 
       (.I0(dataI[105]),
        .I1(dataI[129]),
        .I2(outIdx[1]),
        .I3(dataI[153]),
        .I4(outIdx[0]),
        .I5(dataI[177]),
        .O(\data_out_R[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_R[9]_i_3 
       (.I0(dataI[9]),
        .I1(dataI[33]),
        .I2(outIdx[1]),
        .I3(dataI[57]),
        .I4(outIdx[0]),
        .I5(dataI[81]),
        .O(\data_out_R[9]_i_3_n_0 ));
  FDRE \data_out_R_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\data_out_R[23]_i_1_n_0 ),
        .D(\data_out_R_reg[0]_i_1_n_0 ),
        .Q(\data_out_R_reg[23]_0 [0]),
        .R(1'b0));
  MUXF7 \data_out_R_reg[0]_i_1 
       (.I0(\data_out_R[0]_i_2_n_0 ),
        .I1(\data_out_R[0]_i_3_n_0 ),
        .O(\data_out_R_reg[0]_i_1_n_0 ),
        .S(outIdx[2]));
  FDRE \data_out_R_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\data_out_R[23]_i_1_n_0 ),
        .D(\data_out_R_reg[10]_i_1_n_0 ),
        .Q(\data_out_R_reg[23]_0 [10]),
        .R(1'b0));
  MUXF7 \data_out_R_reg[10]_i_1 
       (.I0(\data_out_R[10]_i_2_n_0 ),
        .I1(\data_out_R[10]_i_3_n_0 ),
        .O(\data_out_R_reg[10]_i_1_n_0 ),
        .S(outIdx[2]));
  FDRE \data_out_R_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\data_out_R[23]_i_1_n_0 ),
        .D(\data_out_R_reg[11]_i_1_n_0 ),
        .Q(\data_out_R_reg[23]_0 [11]),
        .R(1'b0));
  MUXF7 \data_out_R_reg[11]_i_1 
       (.I0(\data_out_R[11]_i_2_n_0 ),
        .I1(\data_out_R[11]_i_3_n_0 ),
        .O(\data_out_R_reg[11]_i_1_n_0 ),
        .S(outIdx[2]));
  FDRE \data_out_R_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\data_out_R[23]_i_1_n_0 ),
        .D(\data_out_R_reg[12]_i_1_n_0 ),
        .Q(\data_out_R_reg[23]_0 [12]),
        .R(1'b0));
  MUXF7 \data_out_R_reg[12]_i_1 
       (.I0(\data_out_R[12]_i_2_n_0 ),
        .I1(\data_out_R[12]_i_3_n_0 ),
        .O(\data_out_R_reg[12]_i_1_n_0 ),
        .S(outIdx[2]));
  FDRE \data_out_R_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\data_out_R[23]_i_1_n_0 ),
        .D(\data_out_R_reg[13]_i_1_n_0 ),
        .Q(\data_out_R_reg[23]_0 [13]),
        .R(1'b0));
  MUXF7 \data_out_R_reg[13]_i_1 
       (.I0(\data_out_R[13]_i_2_n_0 ),
        .I1(\data_out_R[13]_i_3_n_0 ),
        .O(\data_out_R_reg[13]_i_1_n_0 ),
        .S(outIdx[2]));
  FDRE \data_out_R_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\data_out_R[23]_i_1_n_0 ),
        .D(\data_out_R_reg[14]_i_1_n_0 ),
        .Q(\data_out_R_reg[23]_0 [14]),
        .R(1'b0));
  MUXF7 \data_out_R_reg[14]_i_1 
       (.I0(\data_out_R[14]_i_2_n_0 ),
        .I1(\data_out_R[14]_i_3_n_0 ),
        .O(\data_out_R_reg[14]_i_1_n_0 ),
        .S(outIdx[2]));
  FDRE \data_out_R_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\data_out_R[23]_i_1_n_0 ),
        .D(\data_out_R_reg[15]_i_1_n_0 ),
        .Q(\data_out_R_reg[23]_0 [15]),
        .R(1'b0));
  MUXF7 \data_out_R_reg[15]_i_1 
       (.I0(\data_out_R[15]_i_2_n_0 ),
        .I1(\data_out_R[15]_i_3_n_0 ),
        .O(\data_out_R_reg[15]_i_1_n_0 ),
        .S(outIdx[2]));
  FDRE \data_out_R_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\data_out_R[23]_i_1_n_0 ),
        .D(\data_out_R_reg[16]_i_1_n_0 ),
        .Q(\data_out_R_reg[23]_0 [16]),
        .R(1'b0));
  MUXF7 \data_out_R_reg[16]_i_1 
       (.I0(\data_out_R[16]_i_2_n_0 ),
        .I1(\data_out_R[16]_i_3_n_0 ),
        .O(\data_out_R_reg[16]_i_1_n_0 ),
        .S(outIdx[2]));
  FDRE \data_out_R_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\data_out_R[23]_i_1_n_0 ),
        .D(\data_out_R_reg[17]_i_1_n_0 ),
        .Q(\data_out_R_reg[23]_0 [17]),
        .R(1'b0));
  MUXF7 \data_out_R_reg[17]_i_1 
       (.I0(\data_out_R[17]_i_2_n_0 ),
        .I1(\data_out_R[17]_i_3_n_0 ),
        .O(\data_out_R_reg[17]_i_1_n_0 ),
        .S(outIdx[2]));
  FDRE \data_out_R_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\data_out_R[23]_i_1_n_0 ),
        .D(\data_out_R_reg[18]_i_1_n_0 ),
        .Q(\data_out_R_reg[23]_0 [18]),
        .R(1'b0));
  MUXF7 \data_out_R_reg[18]_i_1 
       (.I0(\data_out_R[18]_i_2_n_0 ),
        .I1(\data_out_R[18]_i_3_n_0 ),
        .O(\data_out_R_reg[18]_i_1_n_0 ),
        .S(outIdx[2]));
  FDRE \data_out_R_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\data_out_R[23]_i_1_n_0 ),
        .D(\data_out_R_reg[19]_i_1_n_0 ),
        .Q(\data_out_R_reg[23]_0 [19]),
        .R(1'b0));
  MUXF7 \data_out_R_reg[19]_i_1 
       (.I0(\data_out_R[19]_i_2_n_0 ),
        .I1(\data_out_R[19]_i_3_n_0 ),
        .O(\data_out_R_reg[19]_i_1_n_0 ),
        .S(outIdx[2]));
  FDRE \data_out_R_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\data_out_R[23]_i_1_n_0 ),
        .D(\data_out_R_reg[1]_i_1_n_0 ),
        .Q(\data_out_R_reg[23]_0 [1]),
        .R(1'b0));
  MUXF7 \data_out_R_reg[1]_i_1 
       (.I0(\data_out_R[1]_i_2_n_0 ),
        .I1(\data_out_R[1]_i_3_n_0 ),
        .O(\data_out_R_reg[1]_i_1_n_0 ),
        .S(outIdx[2]));
  FDRE \data_out_R_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\data_out_R[23]_i_1_n_0 ),
        .D(\data_out_R_reg[20]_i_1_n_0 ),
        .Q(\data_out_R_reg[23]_0 [20]),
        .R(1'b0));
  MUXF7 \data_out_R_reg[20]_i_1 
       (.I0(\data_out_R[20]_i_2_n_0 ),
        .I1(\data_out_R[20]_i_3_n_0 ),
        .O(\data_out_R_reg[20]_i_1_n_0 ),
        .S(outIdx[2]));
  FDRE \data_out_R_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\data_out_R[23]_i_1_n_0 ),
        .D(\data_out_R_reg[21]_i_1_n_0 ),
        .Q(\data_out_R_reg[23]_0 [21]),
        .R(1'b0));
  MUXF7 \data_out_R_reg[21]_i_1 
       (.I0(\data_out_R[21]_i_2_n_0 ),
        .I1(\data_out_R[21]_i_3_n_0 ),
        .O(\data_out_R_reg[21]_i_1_n_0 ),
        .S(outIdx[2]));
  FDRE \data_out_R_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\data_out_R[23]_i_1_n_0 ),
        .D(\data_out_R_reg[22]_i_1_n_0 ),
        .Q(\data_out_R_reg[23]_0 [22]),
        .R(1'b0));
  MUXF7 \data_out_R_reg[22]_i_1 
       (.I0(\data_out_R[22]_i_2_n_0 ),
        .I1(\data_out_R[22]_i_3_n_0 ),
        .O(\data_out_R_reg[22]_i_1_n_0 ),
        .S(outIdx[2]));
  FDRE \data_out_R_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\data_out_R[23]_i_1_n_0 ),
        .D(\data_out_R_reg[23]_i_2_n_0 ),
        .Q(\data_out_R_reg[23]_0 [23]),
        .R(1'b0));
  MUXF7 \data_out_R_reg[23]_i_2 
       (.I0(\data_out_R[23]_i_3_n_0 ),
        .I1(\data_out_R[23]_i_4_n_0 ),
        .O(\data_out_R_reg[23]_i_2_n_0 ),
        .S(outIdx[2]));
  FDRE \data_out_R_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\data_out_R[23]_i_1_n_0 ),
        .D(\data_out_R_reg[2]_i_1_n_0 ),
        .Q(\data_out_R_reg[23]_0 [2]),
        .R(1'b0));
  MUXF7 \data_out_R_reg[2]_i_1 
       (.I0(\data_out_R[2]_i_2_n_0 ),
        .I1(\data_out_R[2]_i_3_n_0 ),
        .O(\data_out_R_reg[2]_i_1_n_0 ),
        .S(outIdx[2]));
  FDRE \data_out_R_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\data_out_R[23]_i_1_n_0 ),
        .D(\data_out_R_reg[3]_i_1_n_0 ),
        .Q(\data_out_R_reg[23]_0 [3]),
        .R(1'b0));
  MUXF7 \data_out_R_reg[3]_i_1 
       (.I0(\data_out_R[3]_i_2_n_0 ),
        .I1(\data_out_R[3]_i_3_n_0 ),
        .O(\data_out_R_reg[3]_i_1_n_0 ),
        .S(outIdx[2]));
  FDRE \data_out_R_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\data_out_R[23]_i_1_n_0 ),
        .D(\data_out_R_reg[4]_i_1_n_0 ),
        .Q(\data_out_R_reg[23]_0 [4]),
        .R(1'b0));
  MUXF7 \data_out_R_reg[4]_i_1 
       (.I0(\data_out_R[4]_i_2_n_0 ),
        .I1(\data_out_R[4]_i_3_n_0 ),
        .O(\data_out_R_reg[4]_i_1_n_0 ),
        .S(outIdx[2]));
  FDRE \data_out_R_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\data_out_R[23]_i_1_n_0 ),
        .D(\data_out_R_reg[5]_i_1_n_0 ),
        .Q(\data_out_R_reg[23]_0 [5]),
        .R(1'b0));
  MUXF7 \data_out_R_reg[5]_i_1 
       (.I0(\data_out_R[5]_i_2_n_0 ),
        .I1(\data_out_R[5]_i_3_n_0 ),
        .O(\data_out_R_reg[5]_i_1_n_0 ),
        .S(outIdx[2]));
  FDRE \data_out_R_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\data_out_R[23]_i_1_n_0 ),
        .D(\data_out_R_reg[6]_i_1_n_0 ),
        .Q(\data_out_R_reg[23]_0 [6]),
        .R(1'b0));
  MUXF7 \data_out_R_reg[6]_i_1 
       (.I0(\data_out_R[6]_i_2_n_0 ),
        .I1(\data_out_R[6]_i_3_n_0 ),
        .O(\data_out_R_reg[6]_i_1_n_0 ),
        .S(outIdx[2]));
  FDRE \data_out_R_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\data_out_R[23]_i_1_n_0 ),
        .D(\data_out_R_reg[7]_i_1_n_0 ),
        .Q(\data_out_R_reg[23]_0 [7]),
        .R(1'b0));
  MUXF7 \data_out_R_reg[7]_i_1 
       (.I0(\data_out_R[7]_i_2_n_0 ),
        .I1(\data_out_R[7]_i_3_n_0 ),
        .O(\data_out_R_reg[7]_i_1_n_0 ),
        .S(outIdx[2]));
  FDRE \data_out_R_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\data_out_R[23]_i_1_n_0 ),
        .D(\data_out_R_reg[8]_i_1_n_0 ),
        .Q(\data_out_R_reg[23]_0 [8]),
        .R(1'b0));
  MUXF7 \data_out_R_reg[8]_i_1 
       (.I0(\data_out_R[8]_i_2_n_0 ),
        .I1(\data_out_R[8]_i_3_n_0 ),
        .O(\data_out_R_reg[8]_i_1_n_0 ),
        .S(outIdx[2]));
  FDRE \data_out_R_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\data_out_R[23]_i_1_n_0 ),
        .D(\data_out_R_reg[9]_i_1_n_0 ),
        .Q(\data_out_R_reg[23]_0 [9]),
        .R(1'b0));
  MUXF7 \data_out_R_reg[9]_i_1 
       (.I0(\data_out_R[9]_i_2_n_0 ),
        .I1(\data_out_R[9]_i_3_n_0 ),
        .O(\data_out_R_reg[9]_i_1_n_0 ),
        .S(outIdx[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    \idx[0]_i_1 
       (.I0(state),
        .I1(Q),
        .I2(s00_axi_aresetn),
        .I3(idxreversed[2]),
        .O(\idx[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00E0E000)) 
    \idx[1]_i_1 
       (.I0(state),
        .I1(Q),
        .I2(s00_axi_aresetn),
        .I3(idxreversed[1]),
        .I4(idxreversed[2]),
        .O(\idx[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000400FFFFFFFFFF)) 
    \idx[2]_i_1 
       (.I0(last_data_en_state_reg_0),
        .I1(\idx_reg[0]_0 ),
        .I2(\idx[2]_i_3_n_0 ),
        .I3(state),
        .I4(Q),
        .I5(s00_axi_aresetn),
        .O(\idx[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E0E0E0E0000000)) 
    \idx[2]_i_2 
       (.I0(state),
        .I1(Q),
        .I2(s00_axi_aresetn),
        .I3(idxreversed[2]),
        .I4(idxreversed[1]),
        .I5(idxreversed[0]),
        .O(\idx[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \idx[2]_i_3 
       (.I0(idxreversed[1]),
        .I1(idxreversed[2]),
        .I2(idxreversed[0]),
        .O(\idx[2]_i_3_n_0 ));
  FDRE \idx_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\idx[2]_i_1_n_0 ),
        .D(\idx[0]_i_1_n_0 ),
        .Q(idxreversed[2]),
        .R(1'b0));
  FDRE \idx_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\idx[2]_i_1_n_0 ),
        .D(\idx[1]_i_1_n_0 ),
        .Q(idxreversed[1]),
        .R(1'b0));
  FDRE \idx_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\idx[2]_i_1_n_0 ),
        .D(\idx[2]_i_2_n_0 ),
        .Q(idxreversed[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    last_data_en_state_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(last_data_en_state_reg_1),
        .Q(last_data_en_state_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1I[0]_i_2 
       (.I0(dataI[48]),
        .I1(dataI[72]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataI[0]),
        .I4(topIdx[0]),
        .I5(dataI[24]),
        .O(\mul1I[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1I[0]_i_3 
       (.I0(dataI[144]),
        .I1(dataI[168]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataI[96]),
        .I4(topIdx[0]),
        .I5(dataI[120]),
        .O(\mul1I[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1I[10]_i_2 
       (.I0(dataI[58]),
        .I1(dataI[82]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataI[10]),
        .I4(topIdx[0]),
        .I5(dataI[34]),
        .O(\mul1I[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1I[10]_i_3 
       (.I0(dataI[154]),
        .I1(dataI[178]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataI[106]),
        .I4(topIdx[0]),
        .I5(dataI[130]),
        .O(\mul1I[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1I[11]_i_2 
       (.I0(dataI[59]),
        .I1(dataI[83]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataI[11]),
        .I4(topIdx[0]),
        .I5(dataI[35]),
        .O(\mul1I[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1I[11]_i_3 
       (.I0(dataI[155]),
        .I1(dataI[179]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataI[107]),
        .I4(topIdx[0]),
        .I5(dataI[131]),
        .O(\mul1I[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1I[12]_i_2 
       (.I0(dataI[60]),
        .I1(dataI[84]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataI[12]),
        .I4(topIdx[0]),
        .I5(dataI[36]),
        .O(\mul1I[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1I[12]_i_3 
       (.I0(dataI[156]),
        .I1(dataI[180]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataI[108]),
        .I4(topIdx[0]),
        .I5(dataI[132]),
        .O(\mul1I[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1I[13]_i_2 
       (.I0(dataI[61]),
        .I1(dataI[85]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataI[13]),
        .I4(topIdx[0]),
        .I5(dataI[37]),
        .O(\mul1I[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1I[13]_i_3 
       (.I0(dataI[157]),
        .I1(dataI[181]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataI[109]),
        .I4(topIdx[0]),
        .I5(dataI[133]),
        .O(\mul1I[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1I[14]_i_2 
       (.I0(dataI[62]),
        .I1(dataI[86]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataI[14]),
        .I4(topIdx[0]),
        .I5(dataI[38]),
        .O(\mul1I[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1I[14]_i_3 
       (.I0(dataI[158]),
        .I1(dataI[182]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataI[110]),
        .I4(topIdx[0]),
        .I5(dataI[134]),
        .O(\mul1I[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1I[15]_i_2 
       (.I0(dataI[63]),
        .I1(dataI[87]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataI[15]),
        .I4(topIdx[0]),
        .I5(dataI[39]),
        .O(\mul1I[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1I[15]_i_3 
       (.I0(dataI[159]),
        .I1(dataI[183]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataI[111]),
        .I4(topIdx[0]),
        .I5(dataI[135]),
        .O(\mul1I[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1I[16]_i_2 
       (.I0(dataI[64]),
        .I1(dataI[88]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataI[16]),
        .I4(topIdx[0]),
        .I5(dataI[40]),
        .O(\mul1I[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1I[16]_i_3 
       (.I0(dataI[160]),
        .I1(dataI[184]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataI[112]),
        .I4(topIdx[0]),
        .I5(dataI[136]),
        .O(\mul1I[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1I[17]_i_2 
       (.I0(dataI[65]),
        .I1(dataI[89]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataI[17]),
        .I4(topIdx[0]),
        .I5(dataI[41]),
        .O(\mul1I[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1I[17]_i_3 
       (.I0(dataI[161]),
        .I1(dataI[185]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataI[113]),
        .I4(topIdx[0]),
        .I5(dataI[137]),
        .O(\mul1I[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1I[18]_i_2 
       (.I0(dataI[66]),
        .I1(dataI[90]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataI[18]),
        .I4(topIdx[0]),
        .I5(dataI[42]),
        .O(\mul1I[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1I[18]_i_3 
       (.I0(dataI[162]),
        .I1(dataI[186]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataI[114]),
        .I4(topIdx[0]),
        .I5(dataI[138]),
        .O(\mul1I[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1I[19]_i_2 
       (.I0(dataI[67]),
        .I1(dataI[91]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataI[19]),
        .I4(topIdx[0]),
        .I5(dataI[43]),
        .O(\mul1I[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1I[19]_i_3 
       (.I0(dataI[163]),
        .I1(dataI[187]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataI[115]),
        .I4(topIdx[0]),
        .I5(dataI[139]),
        .O(\mul1I[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1I[1]_i_2 
       (.I0(dataI[49]),
        .I1(dataI[73]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataI[1]),
        .I4(topIdx[0]),
        .I5(dataI[25]),
        .O(\mul1I[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1I[1]_i_3 
       (.I0(dataI[145]),
        .I1(dataI[169]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataI[97]),
        .I4(topIdx[0]),
        .I5(dataI[121]),
        .O(\mul1I[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1I[20]_i_2 
       (.I0(dataI[68]),
        .I1(dataI[92]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataI[20]),
        .I4(topIdx[0]),
        .I5(dataI[44]),
        .O(\mul1I[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1I[20]_i_3 
       (.I0(dataI[164]),
        .I1(dataI[188]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataI[116]),
        .I4(topIdx[0]),
        .I5(dataI[140]),
        .O(\mul1I[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1I[21]_i_2 
       (.I0(dataI[69]),
        .I1(dataI[93]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataI[21]),
        .I4(topIdx[0]),
        .I5(dataI[45]),
        .O(\mul1I[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1I[21]_i_3 
       (.I0(dataI[165]),
        .I1(dataI[189]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataI[117]),
        .I4(topIdx[0]),
        .I5(dataI[141]),
        .O(\mul1I[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1I[22]_i_2 
       (.I0(dataI[70]),
        .I1(dataI[94]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataI[22]),
        .I4(topIdx[0]),
        .I5(dataI[46]),
        .O(\mul1I[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1I[22]_i_3 
       (.I0(dataI[166]),
        .I1(dataI[190]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataI[118]),
        .I4(topIdx[0]),
        .I5(dataI[142]),
        .O(\mul1I[22]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \mul1I[23]_i_2 
       (.I0(topIdx[2]),
        .I1(\shift_reg_n_0_[2] ),
        .I2(\shift_reg_n_0_[1] ),
        .I3(topIdx[1]),
        .O(\mul1I[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1I[23]_i_3 
       (.I0(dataI[71]),
        .I1(dataI[95]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataI[23]),
        .I4(topIdx[0]),
        .I5(dataI[47]),
        .O(\mul1I[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1I[23]_i_4 
       (.I0(dataI[167]),
        .I1(dataI[191]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataI[119]),
        .I4(topIdx[0]),
        .I5(dataI[143]),
        .O(\mul1I[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mul1I[23]_i_5 
       (.I0(topIdx[1]),
        .I1(\shift_reg_n_0_[1] ),
        .O(\mul1I[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1I[2]_i_2 
       (.I0(dataI[50]),
        .I1(dataI[74]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataI[2]),
        .I4(topIdx[0]),
        .I5(dataI[26]),
        .O(\mul1I[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1I[2]_i_3 
       (.I0(dataI[146]),
        .I1(dataI[170]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataI[98]),
        .I4(topIdx[0]),
        .I5(dataI[122]),
        .O(\mul1I[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1I[3]_i_2 
       (.I0(dataI[51]),
        .I1(dataI[75]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataI[3]),
        .I4(topIdx[0]),
        .I5(dataI[27]),
        .O(\mul1I[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1I[3]_i_3 
       (.I0(dataI[147]),
        .I1(dataI[171]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataI[99]),
        .I4(topIdx[0]),
        .I5(dataI[123]),
        .O(\mul1I[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1I[4]_i_2 
       (.I0(dataI[52]),
        .I1(dataI[76]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataI[4]),
        .I4(topIdx[0]),
        .I5(dataI[28]),
        .O(\mul1I[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1I[4]_i_3 
       (.I0(dataI[148]),
        .I1(dataI[172]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataI[100]),
        .I4(topIdx[0]),
        .I5(dataI[124]),
        .O(\mul1I[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1I[5]_i_2 
       (.I0(dataI[53]),
        .I1(dataI[77]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataI[5]),
        .I4(topIdx[0]),
        .I5(dataI[29]),
        .O(\mul1I[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1I[5]_i_3 
       (.I0(dataI[149]),
        .I1(dataI[173]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataI[101]),
        .I4(topIdx[0]),
        .I5(dataI[125]),
        .O(\mul1I[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1I[6]_i_2 
       (.I0(dataI[54]),
        .I1(dataI[78]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataI[6]),
        .I4(topIdx[0]),
        .I5(dataI[30]),
        .O(\mul1I[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1I[6]_i_3 
       (.I0(dataI[150]),
        .I1(dataI[174]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataI[102]),
        .I4(topIdx[0]),
        .I5(dataI[126]),
        .O(\mul1I[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1I[7]_i_2 
       (.I0(dataI[55]),
        .I1(dataI[79]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataI[7]),
        .I4(topIdx[0]),
        .I5(dataI[31]),
        .O(\mul1I[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1I[7]_i_3 
       (.I0(dataI[151]),
        .I1(dataI[175]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataI[103]),
        .I4(topIdx[0]),
        .I5(dataI[127]),
        .O(\mul1I[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1I[8]_i_2 
       (.I0(dataI[56]),
        .I1(dataI[80]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataI[8]),
        .I4(topIdx[0]),
        .I5(dataI[32]),
        .O(\mul1I[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1I[8]_i_3 
       (.I0(dataI[152]),
        .I1(dataI[176]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataI[104]),
        .I4(topIdx[0]),
        .I5(dataI[128]),
        .O(\mul1I[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1I[9]_i_2 
       (.I0(dataI[57]),
        .I1(dataI[81]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataI[9]),
        .I4(topIdx[0]),
        .I5(dataI[33]),
        .O(\mul1I[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1I[9]_i_3 
       (.I0(dataI[153]),
        .I1(dataI[177]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataI[105]),
        .I4(topIdx[0]),
        .I5(dataI[129]),
        .O(\mul1I[9]_i_3_n_0 ));
  FDRE \mul1I_reg[0] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(\mul1I_reg[0]_i_1_n_0 ),
        .Q(\mul1I_reg_n_0_[0] ),
        .R(1'b0));
  MUXF7 \mul1I_reg[0]_i_1 
       (.I0(\mul1I[0]_i_2_n_0 ),
        .I1(\mul1I[0]_i_3_n_0 ),
        .O(\mul1I_reg[0]_i_1_n_0 ),
        .S(\mul1I[23]_i_2_n_0 ));
  FDRE \mul1I_reg[10] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(\mul1I_reg[10]_i_1_n_0 ),
        .Q(\mul1I_reg_n_0_[10] ),
        .R(1'b0));
  MUXF7 \mul1I_reg[10]_i_1 
       (.I0(\mul1I[10]_i_2_n_0 ),
        .I1(\mul1I[10]_i_3_n_0 ),
        .O(\mul1I_reg[10]_i_1_n_0 ),
        .S(\mul1I[23]_i_2_n_0 ));
  FDRE \mul1I_reg[11] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(\mul1I_reg[11]_i_1_n_0 ),
        .Q(\mul1I_reg_n_0_[11] ),
        .R(1'b0));
  MUXF7 \mul1I_reg[11]_i_1 
       (.I0(\mul1I[11]_i_2_n_0 ),
        .I1(\mul1I[11]_i_3_n_0 ),
        .O(\mul1I_reg[11]_i_1_n_0 ),
        .S(\mul1I[23]_i_2_n_0 ));
  FDRE \mul1I_reg[12] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(\mul1I_reg[12]_i_1_n_0 ),
        .Q(\mul1I_reg_n_0_[12] ),
        .R(1'b0));
  MUXF7 \mul1I_reg[12]_i_1 
       (.I0(\mul1I[12]_i_2_n_0 ),
        .I1(\mul1I[12]_i_3_n_0 ),
        .O(\mul1I_reg[12]_i_1_n_0 ),
        .S(\mul1I[23]_i_2_n_0 ));
  FDRE \mul1I_reg[13] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(\mul1I_reg[13]_i_1_n_0 ),
        .Q(\mul1I_reg_n_0_[13] ),
        .R(1'b0));
  MUXF7 \mul1I_reg[13]_i_1 
       (.I0(\mul1I[13]_i_2_n_0 ),
        .I1(\mul1I[13]_i_3_n_0 ),
        .O(\mul1I_reg[13]_i_1_n_0 ),
        .S(\mul1I[23]_i_2_n_0 ));
  FDRE \mul1I_reg[14] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(\mul1I_reg[14]_i_1_n_0 ),
        .Q(\mul1I_reg_n_0_[14] ),
        .R(1'b0));
  MUXF7 \mul1I_reg[14]_i_1 
       (.I0(\mul1I[14]_i_2_n_0 ),
        .I1(\mul1I[14]_i_3_n_0 ),
        .O(\mul1I_reg[14]_i_1_n_0 ),
        .S(\mul1I[23]_i_2_n_0 ));
  FDRE \mul1I_reg[15] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(\mul1I_reg[15]_i_1_n_0 ),
        .Q(\mul1I_reg_n_0_[15] ),
        .R(1'b0));
  MUXF7 \mul1I_reg[15]_i_1 
       (.I0(\mul1I[15]_i_2_n_0 ),
        .I1(\mul1I[15]_i_3_n_0 ),
        .O(\mul1I_reg[15]_i_1_n_0 ),
        .S(\mul1I[23]_i_2_n_0 ));
  FDRE \mul1I_reg[16] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(\mul1I_reg[16]_i_1_n_0 ),
        .Q(\mul1I_reg_n_0_[16] ),
        .R(1'b0));
  MUXF7 \mul1I_reg[16]_i_1 
       (.I0(\mul1I[16]_i_2_n_0 ),
        .I1(\mul1I[16]_i_3_n_0 ),
        .O(\mul1I_reg[16]_i_1_n_0 ),
        .S(\mul1I[23]_i_2_n_0 ));
  FDRE \mul1I_reg[17] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(\mul1I_reg[17]_i_1_n_0 ),
        .Q(\mul1I_reg_n_0_[17] ),
        .R(1'b0));
  MUXF7 \mul1I_reg[17]_i_1 
       (.I0(\mul1I[17]_i_2_n_0 ),
        .I1(\mul1I[17]_i_3_n_0 ),
        .O(\mul1I_reg[17]_i_1_n_0 ),
        .S(\mul1I[23]_i_2_n_0 ));
  FDRE \mul1I_reg[18] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(\mul1I_reg[18]_i_1_n_0 ),
        .Q(\mul1I_reg_n_0_[18] ),
        .R(1'b0));
  MUXF7 \mul1I_reg[18]_i_1 
       (.I0(\mul1I[18]_i_2_n_0 ),
        .I1(\mul1I[18]_i_3_n_0 ),
        .O(\mul1I_reg[18]_i_1_n_0 ),
        .S(\mul1I[23]_i_2_n_0 ));
  FDRE \mul1I_reg[19] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(\mul1I_reg[19]_i_1_n_0 ),
        .Q(\mul1I_reg_n_0_[19] ),
        .R(1'b0));
  MUXF7 \mul1I_reg[19]_i_1 
       (.I0(\mul1I[19]_i_2_n_0 ),
        .I1(\mul1I[19]_i_3_n_0 ),
        .O(\mul1I_reg[19]_i_1_n_0 ),
        .S(\mul1I[23]_i_2_n_0 ));
  FDRE \mul1I_reg[1] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(\mul1I_reg[1]_i_1_n_0 ),
        .Q(\mul1I_reg_n_0_[1] ),
        .R(1'b0));
  MUXF7 \mul1I_reg[1]_i_1 
       (.I0(\mul1I[1]_i_2_n_0 ),
        .I1(\mul1I[1]_i_3_n_0 ),
        .O(\mul1I_reg[1]_i_1_n_0 ),
        .S(\mul1I[23]_i_2_n_0 ));
  FDRE \mul1I_reg[20] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(\mul1I_reg[20]_i_1_n_0 ),
        .Q(\mul1I_reg_n_0_[20] ),
        .R(1'b0));
  MUXF7 \mul1I_reg[20]_i_1 
       (.I0(\mul1I[20]_i_2_n_0 ),
        .I1(\mul1I[20]_i_3_n_0 ),
        .O(\mul1I_reg[20]_i_1_n_0 ),
        .S(\mul1I[23]_i_2_n_0 ));
  FDRE \mul1I_reg[21] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(\mul1I_reg[21]_i_1_n_0 ),
        .Q(\mul1I_reg_n_0_[21] ),
        .R(1'b0));
  MUXF7 \mul1I_reg[21]_i_1 
       (.I0(\mul1I[21]_i_2_n_0 ),
        .I1(\mul1I[21]_i_3_n_0 ),
        .O(\mul1I_reg[21]_i_1_n_0 ),
        .S(\mul1I[23]_i_2_n_0 ));
  FDRE \mul1I_reg[22] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(\mul1I_reg[22]_i_1_n_0 ),
        .Q(\mul1I_reg_n_0_[22] ),
        .R(1'b0));
  MUXF7 \mul1I_reg[22]_i_1 
       (.I0(\mul1I[22]_i_2_n_0 ),
        .I1(\mul1I[22]_i_3_n_0 ),
        .O(\mul1I_reg[22]_i_1_n_0 ),
        .S(\mul1I[23]_i_2_n_0 ));
  FDRE \mul1I_reg[23] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(\mul1I_reg[23]_i_1_n_0 ),
        .Q(\mul1I_reg_n_0_[23] ),
        .R(1'b0));
  MUXF7 \mul1I_reg[23]_i_1 
       (.I0(\mul1I[23]_i_3_n_0 ),
        .I1(\mul1I[23]_i_4_n_0 ),
        .O(\mul1I_reg[23]_i_1_n_0 ),
        .S(\mul1I[23]_i_2_n_0 ));
  FDRE \mul1I_reg[2] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(\mul1I_reg[2]_i_1_n_0 ),
        .Q(\mul1I_reg_n_0_[2] ),
        .R(1'b0));
  MUXF7 \mul1I_reg[2]_i_1 
       (.I0(\mul1I[2]_i_2_n_0 ),
        .I1(\mul1I[2]_i_3_n_0 ),
        .O(\mul1I_reg[2]_i_1_n_0 ),
        .S(\mul1I[23]_i_2_n_0 ));
  FDRE \mul1I_reg[3] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(\mul1I_reg[3]_i_1_n_0 ),
        .Q(\mul1I_reg_n_0_[3] ),
        .R(1'b0));
  MUXF7 \mul1I_reg[3]_i_1 
       (.I0(\mul1I[3]_i_2_n_0 ),
        .I1(\mul1I[3]_i_3_n_0 ),
        .O(\mul1I_reg[3]_i_1_n_0 ),
        .S(\mul1I[23]_i_2_n_0 ));
  FDRE \mul1I_reg[4] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(\mul1I_reg[4]_i_1_n_0 ),
        .Q(\mul1I_reg_n_0_[4] ),
        .R(1'b0));
  MUXF7 \mul1I_reg[4]_i_1 
       (.I0(\mul1I[4]_i_2_n_0 ),
        .I1(\mul1I[4]_i_3_n_0 ),
        .O(\mul1I_reg[4]_i_1_n_0 ),
        .S(\mul1I[23]_i_2_n_0 ));
  FDRE \mul1I_reg[5] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(\mul1I_reg[5]_i_1_n_0 ),
        .Q(\mul1I_reg_n_0_[5] ),
        .R(1'b0));
  MUXF7 \mul1I_reg[5]_i_1 
       (.I0(\mul1I[5]_i_2_n_0 ),
        .I1(\mul1I[5]_i_3_n_0 ),
        .O(\mul1I_reg[5]_i_1_n_0 ),
        .S(\mul1I[23]_i_2_n_0 ));
  FDRE \mul1I_reg[6] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(\mul1I_reg[6]_i_1_n_0 ),
        .Q(\mul1I_reg_n_0_[6] ),
        .R(1'b0));
  MUXF7 \mul1I_reg[6]_i_1 
       (.I0(\mul1I[6]_i_2_n_0 ),
        .I1(\mul1I[6]_i_3_n_0 ),
        .O(\mul1I_reg[6]_i_1_n_0 ),
        .S(\mul1I[23]_i_2_n_0 ));
  FDRE \mul1I_reg[7] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(\mul1I_reg[7]_i_1_n_0 ),
        .Q(\mul1I_reg_n_0_[7] ),
        .R(1'b0));
  MUXF7 \mul1I_reg[7]_i_1 
       (.I0(\mul1I[7]_i_2_n_0 ),
        .I1(\mul1I[7]_i_3_n_0 ),
        .O(\mul1I_reg[7]_i_1_n_0 ),
        .S(\mul1I[23]_i_2_n_0 ));
  FDRE \mul1I_reg[8] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(\mul1I_reg[8]_i_1_n_0 ),
        .Q(\mul1I_reg_n_0_[8] ),
        .R(1'b0));
  MUXF7 \mul1I_reg[8]_i_1 
       (.I0(\mul1I[8]_i_2_n_0 ),
        .I1(\mul1I[8]_i_3_n_0 ),
        .O(\mul1I_reg[8]_i_1_n_0 ),
        .S(\mul1I[23]_i_2_n_0 ));
  FDRE \mul1I_reg[9] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(\mul1I_reg[9]_i_1_n_0 ),
        .Q(\mul1I_reg_n_0_[9] ),
        .R(1'b0));
  MUXF7 \mul1I_reg[9]_i_1 
       (.I0(\mul1I[9]_i_2_n_0 ),
        .I1(\mul1I[9]_i_3_n_0 ),
        .O(\mul1I_reg[9]_i_1_n_0 ),
        .S(\mul1I[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1Q[0]_i_2 
       (.I0(dataQ[48]),
        .I1(dataQ[72]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataQ[0]),
        .I4(topIdx[0]),
        .I5(dataQ[24]),
        .O(\mul1Q[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1Q[0]_i_3 
       (.I0(dataQ[144]),
        .I1(dataQ[168]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataQ[96]),
        .I4(topIdx[0]),
        .I5(dataQ[120]),
        .O(\mul1Q[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1Q[10]_i_2 
       (.I0(dataQ[58]),
        .I1(dataQ[82]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataQ[10]),
        .I4(topIdx[0]),
        .I5(dataQ[34]),
        .O(\mul1Q[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1Q[10]_i_3 
       (.I0(dataQ[154]),
        .I1(dataQ[178]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataQ[106]),
        .I4(topIdx[0]),
        .I5(dataQ[130]),
        .O(\mul1Q[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1Q[11]_i_2 
       (.I0(dataQ[59]),
        .I1(dataQ[83]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataQ[11]),
        .I4(topIdx[0]),
        .I5(dataQ[35]),
        .O(\mul1Q[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1Q[11]_i_3 
       (.I0(dataQ[155]),
        .I1(dataQ[179]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataQ[107]),
        .I4(topIdx[0]),
        .I5(dataQ[131]),
        .O(\mul1Q[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1Q[12]_i_2 
       (.I0(dataQ[60]),
        .I1(dataQ[84]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataQ[12]),
        .I4(topIdx[0]),
        .I5(dataQ[36]),
        .O(\mul1Q[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1Q[12]_i_3 
       (.I0(dataQ[156]),
        .I1(dataQ[180]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataQ[108]),
        .I4(topIdx[0]),
        .I5(dataQ[132]),
        .O(\mul1Q[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1Q[13]_i_2 
       (.I0(dataQ[61]),
        .I1(dataQ[85]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataQ[13]),
        .I4(topIdx[0]),
        .I5(dataQ[37]),
        .O(\mul1Q[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1Q[13]_i_3 
       (.I0(dataQ[157]),
        .I1(dataQ[181]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataQ[109]),
        .I4(topIdx[0]),
        .I5(dataQ[133]),
        .O(\mul1Q[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1Q[14]_i_2 
       (.I0(dataQ[62]),
        .I1(dataQ[86]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataQ[14]),
        .I4(topIdx[0]),
        .I5(dataQ[38]),
        .O(\mul1Q[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1Q[14]_i_3 
       (.I0(dataQ[158]),
        .I1(dataQ[182]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataQ[110]),
        .I4(topIdx[0]),
        .I5(dataQ[134]),
        .O(\mul1Q[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1Q[15]_i_2 
       (.I0(dataQ[63]),
        .I1(dataQ[87]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataQ[15]),
        .I4(topIdx[0]),
        .I5(dataQ[39]),
        .O(\mul1Q[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1Q[15]_i_3 
       (.I0(dataQ[159]),
        .I1(dataQ[183]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataQ[111]),
        .I4(topIdx[0]),
        .I5(dataQ[135]),
        .O(\mul1Q[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1Q[16]_i_2 
       (.I0(dataQ[64]),
        .I1(dataQ[88]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataQ[16]),
        .I4(topIdx[0]),
        .I5(dataQ[40]),
        .O(\mul1Q[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1Q[16]_i_3 
       (.I0(dataQ[160]),
        .I1(dataQ[184]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataQ[112]),
        .I4(topIdx[0]),
        .I5(dataQ[136]),
        .O(\mul1Q[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1Q[17]_i_2 
       (.I0(dataQ[65]),
        .I1(dataQ[89]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataQ[17]),
        .I4(topIdx[0]),
        .I5(dataQ[41]),
        .O(\mul1Q[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1Q[17]_i_3 
       (.I0(dataQ[161]),
        .I1(dataQ[185]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataQ[113]),
        .I4(topIdx[0]),
        .I5(dataQ[137]),
        .O(\mul1Q[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1Q[18]_i_2 
       (.I0(dataQ[66]),
        .I1(dataQ[90]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataQ[18]),
        .I4(topIdx[0]),
        .I5(dataQ[42]),
        .O(\mul1Q[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1Q[18]_i_3 
       (.I0(dataQ[162]),
        .I1(dataQ[186]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataQ[114]),
        .I4(topIdx[0]),
        .I5(dataQ[138]),
        .O(\mul1Q[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1Q[19]_i_2 
       (.I0(dataQ[67]),
        .I1(dataQ[91]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataQ[19]),
        .I4(topIdx[0]),
        .I5(dataQ[43]),
        .O(\mul1Q[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1Q[19]_i_3 
       (.I0(dataQ[163]),
        .I1(dataQ[187]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataQ[115]),
        .I4(topIdx[0]),
        .I5(dataQ[139]),
        .O(\mul1Q[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1Q[1]_i_2 
       (.I0(dataQ[49]),
        .I1(dataQ[73]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataQ[1]),
        .I4(topIdx[0]),
        .I5(dataQ[25]),
        .O(\mul1Q[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1Q[1]_i_3 
       (.I0(dataQ[145]),
        .I1(dataQ[169]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataQ[97]),
        .I4(topIdx[0]),
        .I5(dataQ[121]),
        .O(\mul1Q[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1Q[20]_i_2 
       (.I0(dataQ[68]),
        .I1(dataQ[92]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataQ[20]),
        .I4(topIdx[0]),
        .I5(dataQ[44]),
        .O(\mul1Q[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1Q[20]_i_3 
       (.I0(dataQ[164]),
        .I1(dataQ[188]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataQ[116]),
        .I4(topIdx[0]),
        .I5(dataQ[140]),
        .O(\mul1Q[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1Q[21]_i_2 
       (.I0(dataQ[69]),
        .I1(dataQ[93]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataQ[21]),
        .I4(topIdx[0]),
        .I5(dataQ[45]),
        .O(\mul1Q[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1Q[21]_i_3 
       (.I0(dataQ[165]),
        .I1(dataQ[189]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataQ[117]),
        .I4(topIdx[0]),
        .I5(dataQ[141]),
        .O(\mul1Q[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1Q[22]_i_2 
       (.I0(dataQ[70]),
        .I1(dataQ[94]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataQ[22]),
        .I4(topIdx[0]),
        .I5(dataQ[46]),
        .O(\mul1Q[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1Q[22]_i_3 
       (.I0(dataQ[166]),
        .I1(dataQ[190]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataQ[118]),
        .I4(topIdx[0]),
        .I5(dataQ[142]),
        .O(\mul1Q[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1Q[23]_i_2 
       (.I0(dataQ[71]),
        .I1(dataQ[95]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataQ[23]),
        .I4(topIdx[0]),
        .I5(dataQ[47]),
        .O(\mul1Q[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1Q[23]_i_3 
       (.I0(dataQ[167]),
        .I1(dataQ[191]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataQ[119]),
        .I4(topIdx[0]),
        .I5(dataQ[143]),
        .O(\mul1Q[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1Q[2]_i_2 
       (.I0(dataQ[50]),
        .I1(dataQ[74]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataQ[2]),
        .I4(topIdx[0]),
        .I5(dataQ[26]),
        .O(\mul1Q[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1Q[2]_i_3 
       (.I0(dataQ[146]),
        .I1(dataQ[170]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataQ[98]),
        .I4(topIdx[0]),
        .I5(dataQ[122]),
        .O(\mul1Q[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1Q[3]_i_2 
       (.I0(dataQ[51]),
        .I1(dataQ[75]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataQ[3]),
        .I4(topIdx[0]),
        .I5(dataQ[27]),
        .O(\mul1Q[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1Q[3]_i_3 
       (.I0(dataQ[147]),
        .I1(dataQ[171]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataQ[99]),
        .I4(topIdx[0]),
        .I5(dataQ[123]),
        .O(\mul1Q[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1Q[4]_i_2 
       (.I0(dataQ[52]),
        .I1(dataQ[76]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataQ[4]),
        .I4(topIdx[0]),
        .I5(dataQ[28]),
        .O(\mul1Q[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1Q[4]_i_3 
       (.I0(dataQ[148]),
        .I1(dataQ[172]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataQ[100]),
        .I4(topIdx[0]),
        .I5(dataQ[124]),
        .O(\mul1Q[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1Q[5]_i_2 
       (.I0(dataQ[53]),
        .I1(dataQ[77]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataQ[5]),
        .I4(topIdx[0]),
        .I5(dataQ[29]),
        .O(\mul1Q[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1Q[5]_i_3 
       (.I0(dataQ[149]),
        .I1(dataQ[173]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataQ[101]),
        .I4(topIdx[0]),
        .I5(dataQ[125]),
        .O(\mul1Q[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1Q[6]_i_2 
       (.I0(dataQ[54]),
        .I1(dataQ[78]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataQ[6]),
        .I4(topIdx[0]),
        .I5(dataQ[30]),
        .O(\mul1Q[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1Q[6]_i_3 
       (.I0(dataQ[150]),
        .I1(dataQ[174]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataQ[102]),
        .I4(topIdx[0]),
        .I5(dataQ[126]),
        .O(\mul1Q[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1Q[7]_i_2 
       (.I0(dataQ[55]),
        .I1(dataQ[79]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataQ[7]),
        .I4(topIdx[0]),
        .I5(dataQ[31]),
        .O(\mul1Q[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1Q[7]_i_3 
       (.I0(dataQ[151]),
        .I1(dataQ[175]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataQ[103]),
        .I4(topIdx[0]),
        .I5(dataQ[127]),
        .O(\mul1Q[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1Q[8]_i_2 
       (.I0(dataQ[56]),
        .I1(dataQ[80]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataQ[8]),
        .I4(topIdx[0]),
        .I5(dataQ[32]),
        .O(\mul1Q[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1Q[8]_i_3 
       (.I0(dataQ[152]),
        .I1(dataQ[176]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataQ[104]),
        .I4(topIdx[0]),
        .I5(dataQ[128]),
        .O(\mul1Q[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1Q[9]_i_2 
       (.I0(dataQ[57]),
        .I1(dataQ[81]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataQ[9]),
        .I4(topIdx[0]),
        .I5(dataQ[33]),
        .O(\mul1Q[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mul1Q[9]_i_3 
       (.I0(dataQ[153]),
        .I1(dataQ[177]),
        .I2(\mul1I[23]_i_5_n_0 ),
        .I3(dataQ[105]),
        .I4(topIdx[0]),
        .I5(dataQ[129]),
        .O(\mul1Q[9]_i_3_n_0 ));
  FDRE \mul1Q_reg[0] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(\mul1Q_reg[0]_i_1_n_0 ),
        .Q(mul1Q[0]),
        .R(1'b0));
  MUXF7 \mul1Q_reg[0]_i_1 
       (.I0(\mul1Q[0]_i_2_n_0 ),
        .I1(\mul1Q[0]_i_3_n_0 ),
        .O(\mul1Q_reg[0]_i_1_n_0 ),
        .S(\mul1I[23]_i_2_n_0 ));
  FDRE \mul1Q_reg[10] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(\mul1Q_reg[10]_i_1_n_0 ),
        .Q(mul1Q[10]),
        .R(1'b0));
  MUXF7 \mul1Q_reg[10]_i_1 
       (.I0(\mul1Q[10]_i_2_n_0 ),
        .I1(\mul1Q[10]_i_3_n_0 ),
        .O(\mul1Q_reg[10]_i_1_n_0 ),
        .S(\mul1I[23]_i_2_n_0 ));
  FDRE \mul1Q_reg[11] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(\mul1Q_reg[11]_i_1_n_0 ),
        .Q(mul1Q[11]),
        .R(1'b0));
  MUXF7 \mul1Q_reg[11]_i_1 
       (.I0(\mul1Q[11]_i_2_n_0 ),
        .I1(\mul1Q[11]_i_3_n_0 ),
        .O(\mul1Q_reg[11]_i_1_n_0 ),
        .S(\mul1I[23]_i_2_n_0 ));
  FDRE \mul1Q_reg[12] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(\mul1Q_reg[12]_i_1_n_0 ),
        .Q(mul1Q[12]),
        .R(1'b0));
  MUXF7 \mul1Q_reg[12]_i_1 
       (.I0(\mul1Q[12]_i_2_n_0 ),
        .I1(\mul1Q[12]_i_3_n_0 ),
        .O(\mul1Q_reg[12]_i_1_n_0 ),
        .S(\mul1I[23]_i_2_n_0 ));
  FDRE \mul1Q_reg[13] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(\mul1Q_reg[13]_i_1_n_0 ),
        .Q(mul1Q[13]),
        .R(1'b0));
  MUXF7 \mul1Q_reg[13]_i_1 
       (.I0(\mul1Q[13]_i_2_n_0 ),
        .I1(\mul1Q[13]_i_3_n_0 ),
        .O(\mul1Q_reg[13]_i_1_n_0 ),
        .S(\mul1I[23]_i_2_n_0 ));
  FDRE \mul1Q_reg[14] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(\mul1Q_reg[14]_i_1_n_0 ),
        .Q(mul1Q[14]),
        .R(1'b0));
  MUXF7 \mul1Q_reg[14]_i_1 
       (.I0(\mul1Q[14]_i_2_n_0 ),
        .I1(\mul1Q[14]_i_3_n_0 ),
        .O(\mul1Q_reg[14]_i_1_n_0 ),
        .S(\mul1I[23]_i_2_n_0 ));
  FDRE \mul1Q_reg[15] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(\mul1Q_reg[15]_i_1_n_0 ),
        .Q(mul1Q[15]),
        .R(1'b0));
  MUXF7 \mul1Q_reg[15]_i_1 
       (.I0(\mul1Q[15]_i_2_n_0 ),
        .I1(\mul1Q[15]_i_3_n_0 ),
        .O(\mul1Q_reg[15]_i_1_n_0 ),
        .S(\mul1I[23]_i_2_n_0 ));
  FDRE \mul1Q_reg[16] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(\mul1Q_reg[16]_i_1_n_0 ),
        .Q(mul1Q[16]),
        .R(1'b0));
  MUXF7 \mul1Q_reg[16]_i_1 
       (.I0(\mul1Q[16]_i_2_n_0 ),
        .I1(\mul1Q[16]_i_3_n_0 ),
        .O(\mul1Q_reg[16]_i_1_n_0 ),
        .S(\mul1I[23]_i_2_n_0 ));
  FDRE \mul1Q_reg[17] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(\mul1Q_reg[17]_i_1_n_0 ),
        .Q(mul1Q[17]),
        .R(1'b0));
  MUXF7 \mul1Q_reg[17]_i_1 
       (.I0(\mul1Q[17]_i_2_n_0 ),
        .I1(\mul1Q[17]_i_3_n_0 ),
        .O(\mul1Q_reg[17]_i_1_n_0 ),
        .S(\mul1I[23]_i_2_n_0 ));
  FDRE \mul1Q_reg[18] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(\mul1Q_reg[18]_i_1_n_0 ),
        .Q(mul1Q[18]),
        .R(1'b0));
  MUXF7 \mul1Q_reg[18]_i_1 
       (.I0(\mul1Q[18]_i_2_n_0 ),
        .I1(\mul1Q[18]_i_3_n_0 ),
        .O(\mul1Q_reg[18]_i_1_n_0 ),
        .S(\mul1I[23]_i_2_n_0 ));
  FDRE \mul1Q_reg[19] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(\mul1Q_reg[19]_i_1_n_0 ),
        .Q(mul1Q[19]),
        .R(1'b0));
  MUXF7 \mul1Q_reg[19]_i_1 
       (.I0(\mul1Q[19]_i_2_n_0 ),
        .I1(\mul1Q[19]_i_3_n_0 ),
        .O(\mul1Q_reg[19]_i_1_n_0 ),
        .S(\mul1I[23]_i_2_n_0 ));
  FDRE \mul1Q_reg[1] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(\mul1Q_reg[1]_i_1_n_0 ),
        .Q(mul1Q[1]),
        .R(1'b0));
  MUXF7 \mul1Q_reg[1]_i_1 
       (.I0(\mul1Q[1]_i_2_n_0 ),
        .I1(\mul1Q[1]_i_3_n_0 ),
        .O(\mul1Q_reg[1]_i_1_n_0 ),
        .S(\mul1I[23]_i_2_n_0 ));
  FDRE \mul1Q_reg[20] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(\mul1Q_reg[20]_i_1_n_0 ),
        .Q(mul1Q[20]),
        .R(1'b0));
  MUXF7 \mul1Q_reg[20]_i_1 
       (.I0(\mul1Q[20]_i_2_n_0 ),
        .I1(\mul1Q[20]_i_3_n_0 ),
        .O(\mul1Q_reg[20]_i_1_n_0 ),
        .S(\mul1I[23]_i_2_n_0 ));
  FDRE \mul1Q_reg[21] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(\mul1Q_reg[21]_i_1_n_0 ),
        .Q(mul1Q[21]),
        .R(1'b0));
  MUXF7 \mul1Q_reg[21]_i_1 
       (.I0(\mul1Q[21]_i_2_n_0 ),
        .I1(\mul1Q[21]_i_3_n_0 ),
        .O(\mul1Q_reg[21]_i_1_n_0 ),
        .S(\mul1I[23]_i_2_n_0 ));
  FDRE \mul1Q_reg[22] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(\mul1Q_reg[22]_i_1_n_0 ),
        .Q(mul1Q[22]),
        .R(1'b0));
  MUXF7 \mul1Q_reg[22]_i_1 
       (.I0(\mul1Q[22]_i_2_n_0 ),
        .I1(\mul1Q[22]_i_3_n_0 ),
        .O(\mul1Q_reg[22]_i_1_n_0 ),
        .S(\mul1I[23]_i_2_n_0 ));
  FDRE \mul1Q_reg[23] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(\mul1Q_reg[23]_i_1_n_0 ),
        .Q(mul1Q[23]),
        .R(1'b0));
  MUXF7 \mul1Q_reg[23]_i_1 
       (.I0(\mul1Q[23]_i_2_n_0 ),
        .I1(\mul1Q[23]_i_3_n_0 ),
        .O(\mul1Q_reg[23]_i_1_n_0 ),
        .S(\mul1I[23]_i_2_n_0 ));
  FDRE \mul1Q_reg[2] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(\mul1Q_reg[2]_i_1_n_0 ),
        .Q(mul1Q[2]),
        .R(1'b0));
  MUXF7 \mul1Q_reg[2]_i_1 
       (.I0(\mul1Q[2]_i_2_n_0 ),
        .I1(\mul1Q[2]_i_3_n_0 ),
        .O(\mul1Q_reg[2]_i_1_n_0 ),
        .S(\mul1I[23]_i_2_n_0 ));
  FDRE \mul1Q_reg[3] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(\mul1Q_reg[3]_i_1_n_0 ),
        .Q(mul1Q[3]),
        .R(1'b0));
  MUXF7 \mul1Q_reg[3]_i_1 
       (.I0(\mul1Q[3]_i_2_n_0 ),
        .I1(\mul1Q[3]_i_3_n_0 ),
        .O(\mul1Q_reg[3]_i_1_n_0 ),
        .S(\mul1I[23]_i_2_n_0 ));
  FDRE \mul1Q_reg[4] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(\mul1Q_reg[4]_i_1_n_0 ),
        .Q(mul1Q[4]),
        .R(1'b0));
  MUXF7 \mul1Q_reg[4]_i_1 
       (.I0(\mul1Q[4]_i_2_n_0 ),
        .I1(\mul1Q[4]_i_3_n_0 ),
        .O(\mul1Q_reg[4]_i_1_n_0 ),
        .S(\mul1I[23]_i_2_n_0 ));
  FDRE \mul1Q_reg[5] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(\mul1Q_reg[5]_i_1_n_0 ),
        .Q(mul1Q[5]),
        .R(1'b0));
  MUXF7 \mul1Q_reg[5]_i_1 
       (.I0(\mul1Q[5]_i_2_n_0 ),
        .I1(\mul1Q[5]_i_3_n_0 ),
        .O(\mul1Q_reg[5]_i_1_n_0 ),
        .S(\mul1I[23]_i_2_n_0 ));
  FDRE \mul1Q_reg[6] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(\mul1Q_reg[6]_i_1_n_0 ),
        .Q(mul1Q[6]),
        .R(1'b0));
  MUXF7 \mul1Q_reg[6]_i_1 
       (.I0(\mul1Q[6]_i_2_n_0 ),
        .I1(\mul1Q[6]_i_3_n_0 ),
        .O(\mul1Q_reg[6]_i_1_n_0 ),
        .S(\mul1I[23]_i_2_n_0 ));
  FDRE \mul1Q_reg[7] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(\mul1Q_reg[7]_i_1_n_0 ),
        .Q(mul1Q[7]),
        .R(1'b0));
  MUXF7 \mul1Q_reg[7]_i_1 
       (.I0(\mul1Q[7]_i_2_n_0 ),
        .I1(\mul1Q[7]_i_3_n_0 ),
        .O(\mul1Q_reg[7]_i_1_n_0 ),
        .S(\mul1I[23]_i_2_n_0 ));
  FDRE \mul1Q_reg[8] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(\mul1Q_reg[8]_i_1_n_0 ),
        .Q(mul1Q[8]),
        .R(1'b0));
  MUXF7 \mul1Q_reg[8]_i_1 
       (.I0(\mul1Q[8]_i_2_n_0 ),
        .I1(\mul1Q[8]_i_3_n_0 ),
        .O(\mul1Q_reg[8]_i_1_n_0 ),
        .S(\mul1I[23]_i_2_n_0 ));
  FDRE \mul1Q_reg[9] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(\mul1Q_reg[9]_i_1_n_0 ),
        .Q(mul1Q[9]),
        .R(1'b0));
  MUXF7 \mul1Q_reg[9]_i_1 
       (.I0(\mul1Q[9]_i_2_n_0 ),
        .I1(\mul1Q[9]_i_3_n_0 ),
        .O(\mul1Q_reg[9]_i_1_n_0 ),
        .S(\mul1I[23]_i_2_n_0 ));
  FDRE \mul2I_reg[0] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(butterfly_n_438),
        .Q(mul2I[0]),
        .R(1'b0));
  FDRE \mul2I_reg[10] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(butterfly_n_428),
        .Q(mul2I[10]),
        .R(1'b0));
  FDRE \mul2I_reg[11] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(butterfly_n_427),
        .Q(mul2I[11]),
        .R(1'b0));
  FDRE \mul2I_reg[12] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(butterfly_n_426),
        .Q(mul2I[12]),
        .R(1'b0));
  FDRE \mul2I_reg[13] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(butterfly_n_425),
        .Q(mul2I[13]),
        .R(1'b0));
  FDRE \mul2I_reg[14] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(butterfly_n_424),
        .Q(mul2I[14]),
        .R(1'b0));
  FDRE \mul2I_reg[15] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(butterfly_n_423),
        .Q(mul2I[15]),
        .R(1'b0));
  FDRE \mul2I_reg[16] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(butterfly_n_422),
        .Q(mul2I[16]),
        .R(1'b0));
  FDRE \mul2I_reg[17] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(butterfly_n_421),
        .Q(mul2I[17]),
        .R(1'b0));
  FDRE \mul2I_reg[18] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(butterfly_n_420),
        .Q(mul2I[18]),
        .R(1'b0));
  FDRE \mul2I_reg[19] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(butterfly_n_419),
        .Q(mul2I[19]),
        .R(1'b0));
  FDRE \mul2I_reg[1] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(butterfly_n_437),
        .Q(mul2I[1]),
        .R(1'b0));
  FDRE \mul2I_reg[20] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(butterfly_n_418),
        .Q(mul2I[20]),
        .R(1'b0));
  FDRE \mul2I_reg[21] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(butterfly_n_417),
        .Q(mul2I[21]),
        .R(1'b0));
  FDRE \mul2I_reg[22] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(butterfly_n_416),
        .Q(mul2I[22]),
        .R(1'b0));
  FDRE \mul2I_reg[23] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(butterfly_n_415),
        .Q(mul2I[23]),
        .R(1'b0));
  FDRE \mul2I_reg[2] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(butterfly_n_436),
        .Q(mul2I[2]),
        .R(1'b0));
  FDRE \mul2I_reg[3] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(butterfly_n_435),
        .Q(mul2I[3]),
        .R(1'b0));
  FDRE \mul2I_reg[4] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(butterfly_n_434),
        .Q(mul2I[4]),
        .R(1'b0));
  FDRE \mul2I_reg[5] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(butterfly_n_433),
        .Q(mul2I[5]),
        .R(1'b0));
  FDRE \mul2I_reg[6] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(butterfly_n_432),
        .Q(mul2I[6]),
        .R(1'b0));
  FDRE \mul2I_reg[7] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(butterfly_n_431),
        .Q(mul2I[7]),
        .R(1'b0));
  FDRE \mul2I_reg[8] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(butterfly_n_430),
        .Q(mul2I[8]),
        .R(1'b0));
  FDRE \mul2I_reg[9] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(butterfly_n_429),
        .Q(mul2I[9]),
        .R(1'b0));
  FDRE \mul2Q_reg[0] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(butterfly_n_414),
        .Q(mul2Q[0]),
        .R(1'b0));
  FDRE \mul2Q_reg[10] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(butterfly_n_404),
        .Q(mul2Q[10]),
        .R(1'b0));
  FDRE \mul2Q_reg[11] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(butterfly_n_403),
        .Q(mul2Q[11]),
        .R(1'b0));
  FDRE \mul2Q_reg[12] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(butterfly_n_402),
        .Q(mul2Q[12]),
        .R(1'b0));
  FDRE \mul2Q_reg[13] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(butterfly_n_401),
        .Q(mul2Q[13]),
        .R(1'b0));
  FDRE \mul2Q_reg[14] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(butterfly_n_400),
        .Q(mul2Q[14]),
        .R(1'b0));
  FDRE \mul2Q_reg[15] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(butterfly_n_399),
        .Q(mul2Q[15]),
        .R(1'b0));
  FDRE \mul2Q_reg[16] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(butterfly_n_398),
        .Q(mul2Q[16]),
        .R(1'b0));
  FDRE \mul2Q_reg[17] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(butterfly_n_397),
        .Q(mul2Q[17]),
        .R(1'b0));
  FDRE \mul2Q_reg[18] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(butterfly_n_396),
        .Q(mul2Q[18]),
        .R(1'b0));
  FDRE \mul2Q_reg[19] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(butterfly_n_395),
        .Q(mul2Q[19]),
        .R(1'b0));
  FDRE \mul2Q_reg[1] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(butterfly_n_413),
        .Q(mul2Q[1]),
        .R(1'b0));
  FDRE \mul2Q_reg[20] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(butterfly_n_394),
        .Q(mul2Q[20]),
        .R(1'b0));
  FDRE \mul2Q_reg[21] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(butterfly_n_393),
        .Q(mul2Q[21]),
        .R(1'b0));
  FDRE \mul2Q_reg[22] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(butterfly_n_392),
        .Q(mul2Q[22]),
        .R(1'b0));
  FDRE \mul2Q_reg[23] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(butterfly_n_391),
        .Q(mul2Q[23]),
        .R(1'b0));
  FDRE \mul2Q_reg[2] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(butterfly_n_412),
        .Q(mul2Q[2]),
        .R(1'b0));
  FDRE \mul2Q_reg[3] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(butterfly_n_411),
        .Q(mul2Q[3]),
        .R(1'b0));
  FDRE \mul2Q_reg[4] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(butterfly_n_410),
        .Q(mul2Q[4]),
        .R(1'b0));
  FDRE \mul2Q_reg[5] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(butterfly_n_409),
        .Q(mul2Q[5]),
        .R(1'b0));
  FDRE \mul2Q_reg[6] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(butterfly_n_408),
        .Q(mul2Q[6]),
        .R(1'b0));
  FDRE \mul2Q_reg[7] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(butterfly_n_407),
        .Q(mul2Q[7]),
        .R(1'b0));
  FDRE \mul2Q_reg[8] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(butterfly_n_406),
        .Q(mul2Q[8]),
        .R(1'b0));
  FDRE \mul2Q_reg[9] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(butterfly_n_405),
        .Q(mul2Q[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \outIdx[0]_i_1 
       (.I0(outIdx[0]),
        .O(\outIdx[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \outIdx[1]_i_1 
       (.I0(outIdx[1]),
        .I1(outIdx[0]),
        .O(\outIdx[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \outIdx[2]_i_1 
       (.I0(outIdx[2]),
        .I1(outIdx[0]),
        .I2(outIdx[1]),
        .O(\outIdx[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5444000000000000)) 
    \outIdx[3]_i_1 
       (.I0(\outIdx[3]_i_4_n_0 ),
        .I1(twiddleIdx2[2]),
        .I2(twiddleIdx2[1]),
        .I3(twiddleIdx2[0]),
        .I4(butterfly_n_1),
        .I5(butterfly_n_2),
        .O(\bottomIdx_reg[3]_0 ));
  LUT5 #(
    .INIT(32'hFF7F0000)) 
    \outIdx[3]_i_2 
       (.I0(outIdx[2]),
        .I1(outIdx[1]),
        .I2(outIdx[0]),
        .I3(outIdx[3]),
        .I4(\data_out_R[23]_i_1_n_0 ),
        .O(\outIdx[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \outIdx[3]_i_3 
       (.I0(outIdx[3]),
        .I1(outIdx[2]),
        .I2(outIdx[1]),
        .I3(outIdx[0]),
        .O(\outIdx[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1777E888E8881777)) 
    \outIdx[3]_i_4 
       (.I0(\shift_reg_n_0_[2] ),
        .I1(twiddleIdx2[1]),
        .I2(twiddleIdx2[0]),
        .I3(\shift_reg_n_0_[1] ),
        .I4(\shift_reg_n_0_[3] ),
        .I5(twiddleIdx2[2]),
        .O(\outIdx[3]_i_4_n_0 ));
  FDRE \outIdx_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\outIdx[3]_i_2_n_0 ),
        .D(\outIdx[0]_i_1_n_0 ),
        .Q(outIdx[0]),
        .R(\bottomIdx_reg[3]_0 ));
  FDRE \outIdx_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\outIdx[3]_i_2_n_0 ),
        .D(\outIdx[1]_i_1_n_0 ),
        .Q(outIdx[1]),
        .R(\bottomIdx_reg[3]_0 ));
  FDRE \outIdx_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\outIdx[3]_i_2_n_0 ),
        .D(\outIdx[2]_i_1_n_0 ),
        .Q(outIdx[2]),
        .R(\bottomIdx_reg[3]_0 ));
  FDRE \outIdx_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\outIdx[3]_i_2_n_0 ),
        .D(\outIdx[3]_i_3_n_0 ),
        .Q(outIdx[3]),
        .R(\bottomIdx_reg[3]_0 ));
  FDRE ready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(ready_reg_0),
        .Q(slv_wire4),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6066606060666066)) 
    \shift[1]_i_1 
       (.I0(twiddleIdx2[0]),
        .I1(\shift_reg_n_0_[1] ),
        .I2(\shift[1]_i_2_n_0 ),
        .I3(\bottomIdx[1]_i_1_n_0 ),
        .I4(\bottomIdx[4]_i_3_n_0 ),
        .I5(\shift[2]_i_3_n_0 ),
        .O(\shift[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shift[1]_i_2 
       (.I0(\outIdx[3]_i_4_n_0 ),
        .I1(butterfly_n_1),
        .O(\shift[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h80AA808080AA80AA)) 
    \shift[2]_i_1 
       (.I0(\shift[2]_i_2_n_0 ),
        .I1(\outIdx[3]_i_4_n_0 ),
        .I2(butterfly_n_1),
        .I3(\bottomIdx[1]_i_1_n_0 ),
        .I4(\bottomIdx[4]_i_3_n_0 ),
        .I5(\shift[2]_i_3_n_0 ),
        .O(\shift[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \shift[2]_i_2 
       (.I0(twiddleIdx2[0]),
        .I1(\shift_reg_n_0_[1] ),
        .I2(\shift_reg_n_0_[2] ),
        .I3(twiddleIdx2[1]),
        .O(\shift[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h15)) 
    \shift[2]_i_3 
       (.I0(twiddleIdx2[2]),
        .I1(twiddleIdx2[1]),
        .I2(twiddleIdx2[0]),
        .O(\shift[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \shift[3]_i_1 
       (.I0(\bottomIdx[1]_i_1_n_0 ),
        .I1(\bottomIdx[4]_i_3_n_0 ),
        .O(\shift[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055555540)) 
    \shift[3]_i_2 
       (.I0(\outIdx[3]_i_4_n_0 ),
        .I1(twiddleIdx2[0]),
        .I2(twiddleIdx2[1]),
        .I3(twiddleIdx2[2]),
        .I4(\bottomIdx[4]_i_3_n_0 ),
        .I5(\bottomIdx[1]_i_1_n_0 ),
        .O(\shift[3]_i_2_n_0 ));
  FDRE \shift_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\shift[3]_i_1_n_0 ),
        .D(\shift[1]_i_1_n_0 ),
        .Q(\shift_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \shift_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\shift[3]_i_1_n_0 ),
        .D(\shift[2]_i_1_n_0 ),
        .Q(\shift_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \shift_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\shift[3]_i_1_n_0 ),
        .D(\shift[3]_i_2_n_0 ),
        .Q(\shift_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hABAA)) 
    \state[0]_i_1 
       (.I0(\bottomIdx_reg[3]_0 ),
        .I1(state),
        .I2(Q),
        .I3(\state_reg[0]_0 ),
        .O(\state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF02)) 
    \state[1]_i_1 
       (.I0(\state_reg[0]_0 ),
        .I1(Q),
        .I2(state),
        .I3(\bottomIdx_reg[3]_0 ),
        .I4(\state[1]_i_3_n_0 ),
        .O(\state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \state[1]_i_2 
       (.I0(\bottomIdx[1]_i_1_n_0 ),
        .I1(\bottomIdx_reg[3]_0 ),
        .O(\state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFF8F)) 
    \state[1]_i_3 
       (.I0(\data_out_R[23]_i_1_n_0 ),
        .I1(\state[1]_i_4_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(\bottomIdx[1]_i_1_n_0 ),
        .O(\state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \state[1]_i_4 
       (.I0(outIdx[2]),
        .I1(outIdx[1]),
        .I2(outIdx[0]),
        .I3(outIdx[3]),
        .O(\state[1]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\state[1]_i_1_n_0 ),
        .D(\state[0]_i_1_n_0 ),
        .Q(Q),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\state[1]_i_1_n_0 ),
        .D(\state[1]_i_2_n_0 ),
        .Q(state),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \topIdx[0]_i_1 
       (.I0(topIdx[0]),
        .O(\topIdx[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \topIdx[1]_i_1 
       (.I0(topIdx[0]),
        .I1(topIdx[1]),
        .O(\topIdx[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \topIdx[2]_i_1 
       (.I0(topIdx[2]),
        .I1(topIdx[1]),
        .I2(topIdx[0]),
        .O(\topIdx[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \topIdx[3]_i_3 
       (.I0(topIdx[3]),
        .I1(topIdx[0]),
        .I2(topIdx[1]),
        .I3(topIdx[2]),
        .O(\topIdx[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9988822296222222)) 
    \topIdx[3]_i_4 
       (.I0(twiddleIdx2[2]),
        .I1(\shift_reg_n_0_[3] ),
        .I2(\shift_reg_n_0_[1] ),
        .I3(twiddleIdx2[0]),
        .I4(twiddleIdx2[1]),
        .I5(\shift_reg_n_0_[2] ),
        .O(\topIdx[3]_i_4_n_0 ));
  FDRE \topIdx_reg[0] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_390),
        .D(\topIdx[0]_i_1_n_0 ),
        .Q(topIdx[0]),
        .R(butterfly_n_0));
  FDRE \topIdx_reg[1] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_390),
        .D(\topIdx[1]_i_1_n_0 ),
        .Q(topIdx[1]),
        .R(butterfly_n_0));
  FDRE \topIdx_reg[2] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_390),
        .D(\topIdx[2]_i_1_n_0 ),
        .Q(topIdx[2]),
        .R(butterfly_n_0));
  FDRE \topIdx_reg[3] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_390),
        .D(\topIdx[3]_i_3_n_0 ),
        .Q(topIdx[3]),
        .R(butterfly_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    \twiddleIdx[0]_i_1 
       (.I0(twiddleIdx2[0]),
        .I1(topIdx[0]),
        .O(\twiddleIdx[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h6669)) 
    \twiddleIdx[1]_i_1 
       (.I0(twiddleIdx2[1]),
        .I1(topIdx[1]),
        .I2(twiddleIdx2[0]),
        .I3(topIdx[0]),
        .O(\twiddleIdx[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9666966696666669)) 
    \twiddleIdx[2]_i_1 
       (.I0(twiddleIdx2[2]),
        .I1(topIdx[2]),
        .I2(topIdx[1]),
        .I3(twiddleIdx2[1]),
        .I4(topIdx[0]),
        .I5(twiddleIdx2[0]),
        .O(\twiddleIdx[2]_i_1_n_0 ));
  FDRE \twiddleIdx_reg[0] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(\twiddleIdx[0]_i_1_n_0 ),
        .Q(\twiddleIdx_reg[2]_0 [0]),
        .R(1'b0));
  FDRE \twiddleIdx_reg[1] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(\twiddleIdx[1]_i_1_n_0 ),
        .Q(\twiddleIdx_reg[2]_0 [1]),
        .R(1'b0));
  FDRE \twiddleIdx_reg[2] 
       (.C(s00_axi_aclk),
        .CE(butterfly_n_3),
        .D(\twiddleIdx[2]_i_1_n_0 ),
        .Q(\twiddleIdx_reg[2]_0 [2]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "fft_seq_fft_seq_ip_0_0,fft_seq_ip_v3_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "fft_seq_ip_v3_0,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN fft_seq_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [5:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [5:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 10, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99999001, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN fft_seq_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;

  wire \<const0> ;
  wire s00_axi_aclk;
  wire [5:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [5:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fft_seq_ip_v3_0 inst
       (.S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[5:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[5:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fft_seq_ip_v3_0
   (S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_wstrb,
    s00_axi_arvalid,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input [3:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_araddr;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_arvalid;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fft_seq_ip_v3_0_S00_AXI fft_seq_ip_v3_0_S00_AXI_inst
       (.S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fft_seq_ip_v3_0_S00_AXI
   (S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_wstrb,
    s00_axi_arvalid,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input [3:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_araddr;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_arvalid;
  input s00_axi_bready;
  input s00_axi_rready;

  wire ARESET;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire aMinusBtimesD0_i_1_n_0;
  wire aMinusBtimesD0_i_2_n_0;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire axi_arready0;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[0]_i_3_n_0 ;
  wire \axi_rdata[0]_i_4_n_0 ;
  wire \axi_rdata[10]_i_2_n_0 ;
  wire \axi_rdata[10]_i_3_n_0 ;
  wire \axi_rdata[10]_i_4_n_0 ;
  wire \axi_rdata[11]_i_2_n_0 ;
  wire \axi_rdata[11]_i_3_n_0 ;
  wire \axi_rdata[11]_i_4_n_0 ;
  wire \axi_rdata[12]_i_2_n_0 ;
  wire \axi_rdata[12]_i_3_n_0 ;
  wire \axi_rdata[12]_i_4_n_0 ;
  wire \axi_rdata[13]_i_2_n_0 ;
  wire \axi_rdata[13]_i_3_n_0 ;
  wire \axi_rdata[13]_i_4_n_0 ;
  wire \axi_rdata[14]_i_2_n_0 ;
  wire \axi_rdata[14]_i_3_n_0 ;
  wire \axi_rdata[14]_i_4_n_0 ;
  wire \axi_rdata[15]_i_2_n_0 ;
  wire \axi_rdata[15]_i_3_n_0 ;
  wire \axi_rdata[15]_i_4_n_0 ;
  wire \axi_rdata[16]_i_2_n_0 ;
  wire \axi_rdata[16]_i_3_n_0 ;
  wire \axi_rdata[16]_i_4_n_0 ;
  wire \axi_rdata[17]_i_2_n_0 ;
  wire \axi_rdata[17]_i_3_n_0 ;
  wire \axi_rdata[17]_i_4_n_0 ;
  wire \axi_rdata[18]_i_2_n_0 ;
  wire \axi_rdata[18]_i_3_n_0 ;
  wire \axi_rdata[18]_i_4_n_0 ;
  wire \axi_rdata[19]_i_2_n_0 ;
  wire \axi_rdata[19]_i_3_n_0 ;
  wire \axi_rdata[19]_i_4_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[1]_i_3_n_0 ;
  wire \axi_rdata[1]_i_4_n_0 ;
  wire \axi_rdata[20]_i_2_n_0 ;
  wire \axi_rdata[20]_i_3_n_0 ;
  wire \axi_rdata[20]_i_4_n_0 ;
  wire \axi_rdata[21]_i_2_n_0 ;
  wire \axi_rdata[21]_i_3_n_0 ;
  wire \axi_rdata[21]_i_4_n_0 ;
  wire \axi_rdata[22]_i_2_n_0 ;
  wire \axi_rdata[22]_i_3_n_0 ;
  wire \axi_rdata[22]_i_4_n_0 ;
  wire \axi_rdata[23]_i_2_n_0 ;
  wire \axi_rdata[23]_i_3_n_0 ;
  wire \axi_rdata[23]_i_4_n_0 ;
  wire \axi_rdata[24]_i_2_n_0 ;
  wire \axi_rdata[24]_i_3_n_0 ;
  wire \axi_rdata[25]_i_2_n_0 ;
  wire \axi_rdata[25]_i_3_n_0 ;
  wire \axi_rdata[26]_i_2_n_0 ;
  wire \axi_rdata[26]_i_3_n_0 ;
  wire \axi_rdata[27]_i_2_n_0 ;
  wire \axi_rdata[27]_i_3_n_0 ;
  wire \axi_rdata[28]_i_2_n_0 ;
  wire \axi_rdata[28]_i_3_n_0 ;
  wire \axi_rdata[29]_i_2_n_0 ;
  wire \axi_rdata[29]_i_3_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[2]_i_3_n_0 ;
  wire \axi_rdata[2]_i_4_n_0 ;
  wire \axi_rdata[30]_i_2_n_0 ;
  wire \axi_rdata[30]_i_3_n_0 ;
  wire \axi_rdata[31]_i_2_n_0 ;
  wire \axi_rdata[31]_i_3_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[3]_i_3_n_0 ;
  wire \axi_rdata[3]_i_4_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[4]_i_3_n_0 ;
  wire \axi_rdata[4]_i_4_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[5]_i_3_n_0 ;
  wire \axi_rdata[5]_i_4_n_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[6]_i_3_n_0 ;
  wire \axi_rdata[6]_i_4_n_0 ;
  wire \axi_rdata[7]_i_2_n_0 ;
  wire \axi_rdata[7]_i_3_n_0 ;
  wire \axi_rdata[7]_i_4_n_0 ;
  wire \axi_rdata[8]_i_2_n_0 ;
  wire \axi_rdata[8]_i_3_n_0 ;
  wire \axi_rdata[8]_i_4_n_0 ;
  wire \axi_rdata[9]_i_2_n_0 ;
  wire \axi_rdata[9]_i_3_n_0 ;
  wire \axi_rdata[9]_i_4_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire fft_seq_n_0;
  wire fft_seq_n_6;
  wire last_data_en_state_i_1_n_0;
  wire [3:0]p_0_in;
  wire ready_i_1__0_n_0;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [3:0]sel0;
  wire [31:0]slv_reg0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire [31:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [0:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire \slv_reg2_reg_n_0_[10] ;
  wire \slv_reg2_reg_n_0_[11] ;
  wire \slv_reg2_reg_n_0_[12] ;
  wire \slv_reg2_reg_n_0_[13] ;
  wire \slv_reg2_reg_n_0_[14] ;
  wire \slv_reg2_reg_n_0_[15] ;
  wire \slv_reg2_reg_n_0_[16] ;
  wire \slv_reg2_reg_n_0_[17] ;
  wire \slv_reg2_reg_n_0_[18] ;
  wire \slv_reg2_reg_n_0_[19] ;
  wire \slv_reg2_reg_n_0_[1] ;
  wire \slv_reg2_reg_n_0_[20] ;
  wire \slv_reg2_reg_n_0_[21] ;
  wire \slv_reg2_reg_n_0_[22] ;
  wire \slv_reg2_reg_n_0_[23] ;
  wire \slv_reg2_reg_n_0_[24] ;
  wire \slv_reg2_reg_n_0_[25] ;
  wire \slv_reg2_reg_n_0_[26] ;
  wire \slv_reg2_reg_n_0_[27] ;
  wire \slv_reg2_reg_n_0_[28] ;
  wire \slv_reg2_reg_n_0_[29] ;
  wire \slv_reg2_reg_n_0_[2] ;
  wire \slv_reg2_reg_n_0_[30] ;
  wire \slv_reg2_reg_n_0_[31] ;
  wire \slv_reg2_reg_n_0_[3] ;
  wire \slv_reg2_reg_n_0_[4] ;
  wire \slv_reg2_reg_n_0_[5] ;
  wire \slv_reg2_reg_n_0_[6] ;
  wire \slv_reg2_reg_n_0_[7] ;
  wire \slv_reg2_reg_n_0_[8] ;
  wire \slv_reg2_reg_n_0_[9] ;
  wire [0:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire \slv_reg3_reg_n_0_[10] ;
  wire \slv_reg3_reg_n_0_[11] ;
  wire \slv_reg3_reg_n_0_[12] ;
  wire \slv_reg3_reg_n_0_[13] ;
  wire \slv_reg3_reg_n_0_[14] ;
  wire \slv_reg3_reg_n_0_[15] ;
  wire \slv_reg3_reg_n_0_[16] ;
  wire \slv_reg3_reg_n_0_[17] ;
  wire \slv_reg3_reg_n_0_[18] ;
  wire \slv_reg3_reg_n_0_[19] ;
  wire \slv_reg3_reg_n_0_[1] ;
  wire \slv_reg3_reg_n_0_[20] ;
  wire \slv_reg3_reg_n_0_[21] ;
  wire \slv_reg3_reg_n_0_[22] ;
  wire \slv_reg3_reg_n_0_[23] ;
  wire \slv_reg3_reg_n_0_[24] ;
  wire \slv_reg3_reg_n_0_[25] ;
  wire \slv_reg3_reg_n_0_[26] ;
  wire \slv_reg3_reg_n_0_[27] ;
  wire \slv_reg3_reg_n_0_[28] ;
  wire \slv_reg3_reg_n_0_[29] ;
  wire \slv_reg3_reg_n_0_[2] ;
  wire \slv_reg3_reg_n_0_[30] ;
  wire \slv_reg3_reg_n_0_[31] ;
  wire \slv_reg3_reg_n_0_[3] ;
  wire \slv_reg3_reg_n_0_[4] ;
  wire \slv_reg3_reg_n_0_[5] ;
  wire \slv_reg3_reg_n_0_[6] ;
  wire \slv_reg3_reg_n_0_[7] ;
  wire \slv_reg3_reg_n_0_[8] ;
  wire \slv_reg3_reg_n_0_[9] ;
  wire slv_reg4;
  wire [23:0]slv_reg5;
  wire \slv_reg5[15]_i_1_n_0 ;
  wire \slv_reg5[23]_i_1_n_0 ;
  wire \slv_reg5[31]_i_1_n_0 ;
  wire \slv_reg5[7]_i_1_n_0 ;
  wire \slv_reg5_reg_n_0_[24] ;
  wire \slv_reg5_reg_n_0_[25] ;
  wire \slv_reg5_reg_n_0_[26] ;
  wire \slv_reg5_reg_n_0_[27] ;
  wire \slv_reg5_reg_n_0_[28] ;
  wire \slv_reg5_reg_n_0_[29] ;
  wire \slv_reg5_reg_n_0_[30] ;
  wire \slv_reg5_reg_n_0_[31] ;
  wire [23:0]slv_reg6;
  wire \slv_reg6[15]_i_1_n_0 ;
  wire \slv_reg6[23]_i_1_n_0 ;
  wire \slv_reg6[31]_i_1_n_0 ;
  wire \slv_reg6[7]_i_1_n_0 ;
  wire \slv_reg6_reg_n_0_[24] ;
  wire \slv_reg6_reg_n_0_[25] ;
  wire \slv_reg6_reg_n_0_[26] ;
  wire \slv_reg6_reg_n_0_[27] ;
  wire \slv_reg6_reg_n_0_[28] ;
  wire \slv_reg6_reg_n_0_[29] ;
  wire \slv_reg6_reg_n_0_[30] ;
  wire \slv_reg6_reg_n_0_[31] ;
  wire [23:0]slv_reg7;
  wire [23:0]slv_reg8;
  wire [31:0]slv_reg9;
  wire \slv_reg9[15]_i_1_n_0 ;
  wire \slv_reg9[23]_i_1_n_0 ;
  wire \slv_reg9[31]_i_1_n_0 ;
  wire \slv_reg9[7]_i_1_n_0 ;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;
  wire slv_wire4;
  wire [23:0]slv_wire7;
  wire [23:0]slv_wire8;
  wire [0:0]state;
  wire [2:0]twiddleIdx;

  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    aMinusBtimesD0_i_1
       (.I0(twiddleIdx[2]),
        .I1(twiddleIdx[1]),
        .I2(twiddleIdx[0]),
        .O(aMinusBtimesD0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h2)) 
    aMinusBtimesD0_i_2
       (.I0(twiddleIdx[2]),
        .I1(twiddleIdx[0]),
        .O(aMinusBtimesD0_i_2_n_0));
  LUT6 #(
    .INIT(64'hF7FFC4CCC4CCC4CC)) 
    aw_en_i_1
       (.I0(s00_axi_awvalid),
        .I1(aw_en_reg_n_0),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(ARESET));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[0]),
        .Q(sel0[0]),
        .R(ARESET));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[1]),
        .Q(sel0[1]),
        .R(ARESET));
  FDRE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[2]),
        .Q(sel0[2]),
        .R(ARESET));
  FDRE \axi_araddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[3]),
        .Q(sel0[3]),
        .R(ARESET));
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(ARESET));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[0]),
        .Q(p_0_in[0]),
        .R(ARESET));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[1]),
        .Q(p_0_in[1]),
        .R(ARESET));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[2]),
        .Q(p_0_in[2]),
        .R(ARESET));
  FDRE \axi_awaddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[3]),
        .Q(p_0_in[3]),
        .R(ARESET));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(ARESET));
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_2
       (.I0(s00_axi_wvalid),
        .I1(S_AXI_AWREADY),
        .I2(aw_en_reg_n_0),
        .I3(s00_axi_awvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(ARESET));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(ARESET));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi_rdata[0]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[0]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[0]_i_4_n_0 ),
        .O(reg_data_out[0]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[0]_i_2 
       (.I0(sel0[1]),
        .I1(slv_reg9[0]),
        .I2(sel0[0]),
        .I3(slv_reg8[0]),
        .I4(sel0[2]),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_3 
       (.I0(slv_reg7[0]),
        .I1(slv_reg6[0]),
        .I2(sel0[1]),
        .I3(slv_reg5[0]),
        .I4(sel0[0]),
        .I5(slv_reg4),
        .O(\axi_rdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_4 
       (.I0(slv_reg3),
        .I1(slv_reg2),
        .I2(sel0[1]),
        .I3(slv_reg1[0]),
        .I4(sel0[0]),
        .I5(slv_reg0[0]),
        .O(\axi_rdata[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[10]_i_1 
       (.I0(\axi_rdata[10]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[10]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[10]_i_4_n_0 ),
        .O(reg_data_out[10]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[10]_i_2 
       (.I0(sel0[1]),
        .I1(slv_reg9[10]),
        .I2(sel0[0]),
        .I3(slv_reg8[10]),
        .I4(sel0[2]),
        .O(\axi_rdata[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \axi_rdata[10]_i_3 
       (.I0(slv_reg7[10]),
        .I1(slv_reg6[10]),
        .I2(sel0[1]),
        .I3(slv_reg5[10]),
        .I4(sel0[0]),
        .O(\axi_rdata[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_4 
       (.I0(\slv_reg3_reg_n_0_[10] ),
        .I1(\slv_reg2_reg_n_0_[10] ),
        .I2(sel0[1]),
        .I3(slv_reg1[10]),
        .I4(sel0[0]),
        .I5(slv_reg0[10]),
        .O(\axi_rdata[10]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[11]_i_1 
       (.I0(\axi_rdata[11]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[11]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[11]_i_4_n_0 ),
        .O(reg_data_out[11]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[11]_i_2 
       (.I0(sel0[1]),
        .I1(slv_reg9[11]),
        .I2(sel0[0]),
        .I3(slv_reg8[11]),
        .I4(sel0[2]),
        .O(\axi_rdata[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \axi_rdata[11]_i_3 
       (.I0(slv_reg7[11]),
        .I1(slv_reg6[11]),
        .I2(sel0[1]),
        .I3(slv_reg5[11]),
        .I4(sel0[0]),
        .O(\axi_rdata[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_4 
       (.I0(\slv_reg3_reg_n_0_[11] ),
        .I1(\slv_reg2_reg_n_0_[11] ),
        .I2(sel0[1]),
        .I3(slv_reg1[11]),
        .I4(sel0[0]),
        .I5(slv_reg0[11]),
        .O(\axi_rdata[11]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[12]_i_1 
       (.I0(\axi_rdata[12]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[12]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[12]_i_4_n_0 ),
        .O(reg_data_out[12]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[12]_i_2 
       (.I0(sel0[1]),
        .I1(slv_reg9[12]),
        .I2(sel0[0]),
        .I3(slv_reg8[12]),
        .I4(sel0[2]),
        .O(\axi_rdata[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \axi_rdata[12]_i_3 
       (.I0(slv_reg7[12]),
        .I1(slv_reg6[12]),
        .I2(sel0[1]),
        .I3(slv_reg5[12]),
        .I4(sel0[0]),
        .O(\axi_rdata[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_4 
       (.I0(\slv_reg3_reg_n_0_[12] ),
        .I1(\slv_reg2_reg_n_0_[12] ),
        .I2(sel0[1]),
        .I3(slv_reg1[12]),
        .I4(sel0[0]),
        .I5(slv_reg0[12]),
        .O(\axi_rdata[12]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[13]_i_1 
       (.I0(\axi_rdata[13]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[13]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[13]_i_4_n_0 ),
        .O(reg_data_out[13]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[13]_i_2 
       (.I0(sel0[1]),
        .I1(slv_reg9[13]),
        .I2(sel0[0]),
        .I3(slv_reg8[13]),
        .I4(sel0[2]),
        .O(\axi_rdata[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \axi_rdata[13]_i_3 
       (.I0(slv_reg7[13]),
        .I1(slv_reg6[13]),
        .I2(sel0[1]),
        .I3(slv_reg5[13]),
        .I4(sel0[0]),
        .O(\axi_rdata[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_4 
       (.I0(\slv_reg3_reg_n_0_[13] ),
        .I1(\slv_reg2_reg_n_0_[13] ),
        .I2(sel0[1]),
        .I3(slv_reg1[13]),
        .I4(sel0[0]),
        .I5(slv_reg0[13]),
        .O(\axi_rdata[13]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[14]_i_1 
       (.I0(\axi_rdata[14]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[14]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[14]_i_4_n_0 ),
        .O(reg_data_out[14]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[14]_i_2 
       (.I0(sel0[1]),
        .I1(slv_reg9[14]),
        .I2(sel0[0]),
        .I3(slv_reg8[14]),
        .I4(sel0[2]),
        .O(\axi_rdata[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \axi_rdata[14]_i_3 
       (.I0(slv_reg7[14]),
        .I1(slv_reg6[14]),
        .I2(sel0[1]),
        .I3(slv_reg5[14]),
        .I4(sel0[0]),
        .O(\axi_rdata[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_4 
       (.I0(\slv_reg3_reg_n_0_[14] ),
        .I1(\slv_reg2_reg_n_0_[14] ),
        .I2(sel0[1]),
        .I3(slv_reg1[14]),
        .I4(sel0[0]),
        .I5(slv_reg0[14]),
        .O(\axi_rdata[14]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[15]_i_1 
       (.I0(\axi_rdata[15]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[15]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[15]_i_4_n_0 ),
        .O(reg_data_out[15]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[15]_i_2 
       (.I0(sel0[1]),
        .I1(slv_reg9[15]),
        .I2(sel0[0]),
        .I3(slv_reg8[15]),
        .I4(sel0[2]),
        .O(\axi_rdata[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \axi_rdata[15]_i_3 
       (.I0(slv_reg7[15]),
        .I1(slv_reg6[15]),
        .I2(sel0[1]),
        .I3(slv_reg5[15]),
        .I4(sel0[0]),
        .O(\axi_rdata[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_4 
       (.I0(\slv_reg3_reg_n_0_[15] ),
        .I1(\slv_reg2_reg_n_0_[15] ),
        .I2(sel0[1]),
        .I3(slv_reg1[15]),
        .I4(sel0[0]),
        .I5(slv_reg0[15]),
        .O(\axi_rdata[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[16]_i_1 
       (.I0(\axi_rdata[16]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[16]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[16]_i_4_n_0 ),
        .O(reg_data_out[16]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[16]_i_2 
       (.I0(sel0[1]),
        .I1(slv_reg9[16]),
        .I2(sel0[0]),
        .I3(slv_reg8[16]),
        .I4(sel0[2]),
        .O(\axi_rdata[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \axi_rdata[16]_i_3 
       (.I0(slv_reg7[16]),
        .I1(slv_reg6[16]),
        .I2(sel0[1]),
        .I3(slv_reg5[16]),
        .I4(sel0[0]),
        .O(\axi_rdata[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_4 
       (.I0(\slv_reg3_reg_n_0_[16] ),
        .I1(\slv_reg2_reg_n_0_[16] ),
        .I2(sel0[1]),
        .I3(slv_reg1[16]),
        .I4(sel0[0]),
        .I5(slv_reg0[16]),
        .O(\axi_rdata[16]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[17]_i_1 
       (.I0(\axi_rdata[17]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[17]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[17]_i_4_n_0 ),
        .O(reg_data_out[17]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[17]_i_2 
       (.I0(sel0[1]),
        .I1(slv_reg9[17]),
        .I2(sel0[0]),
        .I3(slv_reg8[17]),
        .I4(sel0[2]),
        .O(\axi_rdata[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \axi_rdata[17]_i_3 
       (.I0(slv_reg7[17]),
        .I1(slv_reg6[17]),
        .I2(sel0[1]),
        .I3(slv_reg5[17]),
        .I4(sel0[0]),
        .O(\axi_rdata[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_4 
       (.I0(\slv_reg3_reg_n_0_[17] ),
        .I1(\slv_reg2_reg_n_0_[17] ),
        .I2(sel0[1]),
        .I3(slv_reg1[17]),
        .I4(sel0[0]),
        .I5(slv_reg0[17]),
        .O(\axi_rdata[17]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[18]_i_1 
       (.I0(\axi_rdata[18]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[18]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[18]_i_4_n_0 ),
        .O(reg_data_out[18]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[18]_i_2 
       (.I0(sel0[1]),
        .I1(slv_reg9[18]),
        .I2(sel0[0]),
        .I3(slv_reg8[18]),
        .I4(sel0[2]),
        .O(\axi_rdata[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \axi_rdata[18]_i_3 
       (.I0(slv_reg7[18]),
        .I1(slv_reg6[18]),
        .I2(sel0[1]),
        .I3(slv_reg5[18]),
        .I4(sel0[0]),
        .O(\axi_rdata[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_4 
       (.I0(\slv_reg3_reg_n_0_[18] ),
        .I1(\slv_reg2_reg_n_0_[18] ),
        .I2(sel0[1]),
        .I3(slv_reg1[18]),
        .I4(sel0[0]),
        .I5(slv_reg0[18]),
        .O(\axi_rdata[18]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[19]_i_1 
       (.I0(\axi_rdata[19]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[19]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[19]_i_4_n_0 ),
        .O(reg_data_out[19]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[19]_i_2 
       (.I0(sel0[1]),
        .I1(slv_reg9[19]),
        .I2(sel0[0]),
        .I3(slv_reg8[19]),
        .I4(sel0[2]),
        .O(\axi_rdata[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \axi_rdata[19]_i_3 
       (.I0(slv_reg7[19]),
        .I1(slv_reg6[19]),
        .I2(sel0[1]),
        .I3(slv_reg5[19]),
        .I4(sel0[0]),
        .O(\axi_rdata[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_4 
       (.I0(\slv_reg3_reg_n_0_[19] ),
        .I1(\slv_reg2_reg_n_0_[19] ),
        .I2(sel0[1]),
        .I3(slv_reg1[19]),
        .I4(sel0[0]),
        .I5(slv_reg0[19]),
        .O(\axi_rdata[19]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[1]_i_1 
       (.I0(\axi_rdata[1]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[1]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[1]_i_4_n_0 ),
        .O(reg_data_out[1]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[1]_i_2 
       (.I0(sel0[1]),
        .I1(slv_reg9[1]),
        .I2(sel0[0]),
        .I3(slv_reg8[1]),
        .I4(sel0[2]),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \axi_rdata[1]_i_3 
       (.I0(slv_reg7[1]),
        .I1(slv_reg6[1]),
        .I2(sel0[1]),
        .I3(slv_reg5[1]),
        .I4(sel0[0]),
        .O(\axi_rdata[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_4 
       (.I0(\slv_reg3_reg_n_0_[1] ),
        .I1(\slv_reg2_reg_n_0_[1] ),
        .I2(sel0[1]),
        .I3(slv_reg1[1]),
        .I4(sel0[0]),
        .I5(slv_reg0[1]),
        .O(\axi_rdata[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[20]_i_1 
       (.I0(\axi_rdata[20]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[20]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[20]_i_4_n_0 ),
        .O(reg_data_out[20]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[20]_i_2 
       (.I0(sel0[1]),
        .I1(slv_reg9[20]),
        .I2(sel0[0]),
        .I3(slv_reg8[20]),
        .I4(sel0[2]),
        .O(\axi_rdata[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \axi_rdata[20]_i_3 
       (.I0(slv_reg7[20]),
        .I1(slv_reg6[20]),
        .I2(sel0[1]),
        .I3(slv_reg5[20]),
        .I4(sel0[0]),
        .O(\axi_rdata[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_4 
       (.I0(\slv_reg3_reg_n_0_[20] ),
        .I1(\slv_reg2_reg_n_0_[20] ),
        .I2(sel0[1]),
        .I3(slv_reg1[20]),
        .I4(sel0[0]),
        .I5(slv_reg0[20]),
        .O(\axi_rdata[20]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[21]_i_1 
       (.I0(\axi_rdata[21]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[21]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[21]_i_4_n_0 ),
        .O(reg_data_out[21]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[21]_i_2 
       (.I0(sel0[1]),
        .I1(slv_reg9[21]),
        .I2(sel0[0]),
        .I3(slv_reg8[21]),
        .I4(sel0[2]),
        .O(\axi_rdata[21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \axi_rdata[21]_i_3 
       (.I0(slv_reg7[21]),
        .I1(slv_reg6[21]),
        .I2(sel0[1]),
        .I3(slv_reg5[21]),
        .I4(sel0[0]),
        .O(\axi_rdata[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_4 
       (.I0(\slv_reg3_reg_n_0_[21] ),
        .I1(\slv_reg2_reg_n_0_[21] ),
        .I2(sel0[1]),
        .I3(slv_reg1[21]),
        .I4(sel0[0]),
        .I5(slv_reg0[21]),
        .O(\axi_rdata[21]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[22]_i_1 
       (.I0(\axi_rdata[22]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[22]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[22]_i_4_n_0 ),
        .O(reg_data_out[22]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[22]_i_2 
       (.I0(sel0[1]),
        .I1(slv_reg9[22]),
        .I2(sel0[0]),
        .I3(slv_reg8[22]),
        .I4(sel0[2]),
        .O(\axi_rdata[22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \axi_rdata[22]_i_3 
       (.I0(slv_reg7[22]),
        .I1(slv_reg6[22]),
        .I2(sel0[1]),
        .I3(slv_reg5[22]),
        .I4(sel0[0]),
        .O(\axi_rdata[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_4 
       (.I0(\slv_reg3_reg_n_0_[22] ),
        .I1(\slv_reg2_reg_n_0_[22] ),
        .I2(sel0[1]),
        .I3(slv_reg1[22]),
        .I4(sel0[0]),
        .I5(slv_reg0[22]),
        .O(\axi_rdata[22]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[23]_i_1 
       (.I0(\axi_rdata[23]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[23]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[23]_i_4_n_0 ),
        .O(reg_data_out[23]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[23]_i_2 
       (.I0(sel0[1]),
        .I1(slv_reg9[23]),
        .I2(sel0[0]),
        .I3(slv_reg8[23]),
        .I4(sel0[2]),
        .O(\axi_rdata[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \axi_rdata[23]_i_3 
       (.I0(slv_reg7[23]),
        .I1(slv_reg6[23]),
        .I2(sel0[1]),
        .I3(slv_reg5[23]),
        .I4(sel0[0]),
        .O(\axi_rdata[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_4 
       (.I0(\slv_reg3_reg_n_0_[23] ),
        .I1(\slv_reg2_reg_n_0_[23] ),
        .I2(sel0[1]),
        .I3(slv_reg1[23]),
        .I4(sel0[0]),
        .I5(slv_reg0[23]),
        .O(\axi_rdata[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0008FFFF00080000)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg9[24]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(sel0[3]),
        .I5(\axi_rdata[24]_i_2_n_0 ),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'h3088FFFF30880000)) 
    \axi_rdata[24]_i_2 
       (.I0(\slv_reg6_reg_n_0_[24] ),
        .I1(sel0[1]),
        .I2(\slv_reg5_reg_n_0_[24] ),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(\axi_rdata[24]_i_3_n_0 ),
        .O(\axi_rdata[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_3 
       (.I0(\slv_reg3_reg_n_0_[24] ),
        .I1(\slv_reg2_reg_n_0_[24] ),
        .I2(sel0[1]),
        .I3(slv_reg1[24]),
        .I4(sel0[0]),
        .I5(slv_reg0[24]),
        .O(\axi_rdata[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0008FFFF00080000)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg9[25]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(sel0[3]),
        .I5(\axi_rdata[25]_i_2_n_0 ),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'h3088FFFF30880000)) 
    \axi_rdata[25]_i_2 
       (.I0(\slv_reg6_reg_n_0_[25] ),
        .I1(sel0[1]),
        .I2(\slv_reg5_reg_n_0_[25] ),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(\axi_rdata[25]_i_3_n_0 ),
        .O(\axi_rdata[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_3 
       (.I0(\slv_reg3_reg_n_0_[25] ),
        .I1(\slv_reg2_reg_n_0_[25] ),
        .I2(sel0[1]),
        .I3(slv_reg1[25]),
        .I4(sel0[0]),
        .I5(slv_reg0[25]),
        .O(\axi_rdata[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0008FFFF00080000)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg9[26]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(sel0[3]),
        .I5(\axi_rdata[26]_i_2_n_0 ),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'h3088FFFF30880000)) 
    \axi_rdata[26]_i_2 
       (.I0(\slv_reg6_reg_n_0_[26] ),
        .I1(sel0[1]),
        .I2(\slv_reg5_reg_n_0_[26] ),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(\axi_rdata[26]_i_3_n_0 ),
        .O(\axi_rdata[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_3 
       (.I0(\slv_reg3_reg_n_0_[26] ),
        .I1(\slv_reg2_reg_n_0_[26] ),
        .I2(sel0[1]),
        .I3(slv_reg1[26]),
        .I4(sel0[0]),
        .I5(slv_reg0[26]),
        .O(\axi_rdata[26]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0008FFFF00080000)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg9[27]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(sel0[3]),
        .I5(\axi_rdata[27]_i_2_n_0 ),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'h3088FFFF30880000)) 
    \axi_rdata[27]_i_2 
       (.I0(\slv_reg6_reg_n_0_[27] ),
        .I1(sel0[1]),
        .I2(\slv_reg5_reg_n_0_[27] ),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(\axi_rdata[27]_i_3_n_0 ),
        .O(\axi_rdata[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_3 
       (.I0(\slv_reg3_reg_n_0_[27] ),
        .I1(\slv_reg2_reg_n_0_[27] ),
        .I2(sel0[1]),
        .I3(slv_reg1[27]),
        .I4(sel0[0]),
        .I5(slv_reg0[27]),
        .O(\axi_rdata[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0008FFFF00080000)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg9[28]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(sel0[3]),
        .I5(\axi_rdata[28]_i_2_n_0 ),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'h3088FFFF30880000)) 
    \axi_rdata[28]_i_2 
       (.I0(\slv_reg6_reg_n_0_[28] ),
        .I1(sel0[1]),
        .I2(\slv_reg5_reg_n_0_[28] ),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(\axi_rdata[28]_i_3_n_0 ),
        .O(\axi_rdata[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_3 
       (.I0(\slv_reg3_reg_n_0_[28] ),
        .I1(\slv_reg2_reg_n_0_[28] ),
        .I2(sel0[1]),
        .I3(slv_reg1[28]),
        .I4(sel0[0]),
        .I5(slv_reg0[28]),
        .O(\axi_rdata[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0008FFFF00080000)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg9[29]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(sel0[3]),
        .I5(\axi_rdata[29]_i_2_n_0 ),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'h3088FFFF30880000)) 
    \axi_rdata[29]_i_2 
       (.I0(\slv_reg6_reg_n_0_[29] ),
        .I1(sel0[1]),
        .I2(\slv_reg5_reg_n_0_[29] ),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(\axi_rdata[29]_i_3_n_0 ),
        .O(\axi_rdata[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_3 
       (.I0(\slv_reg3_reg_n_0_[29] ),
        .I1(\slv_reg2_reg_n_0_[29] ),
        .I2(sel0[1]),
        .I3(slv_reg1[29]),
        .I4(sel0[0]),
        .I5(slv_reg0[29]),
        .O(\axi_rdata[29]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[2]_i_1 
       (.I0(\axi_rdata[2]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[2]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[2]_i_4_n_0 ),
        .O(reg_data_out[2]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[2]_i_2 
       (.I0(sel0[1]),
        .I1(slv_reg9[2]),
        .I2(sel0[0]),
        .I3(slv_reg8[2]),
        .I4(sel0[2]),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \axi_rdata[2]_i_3 
       (.I0(slv_reg7[2]),
        .I1(slv_reg6[2]),
        .I2(sel0[1]),
        .I3(slv_reg5[2]),
        .I4(sel0[0]),
        .O(\axi_rdata[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_4 
       (.I0(\slv_reg3_reg_n_0_[2] ),
        .I1(\slv_reg2_reg_n_0_[2] ),
        .I2(sel0[1]),
        .I3(slv_reg1[2]),
        .I4(sel0[0]),
        .I5(slv_reg0[2]),
        .O(\axi_rdata[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0008FFFF00080000)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg9[30]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(sel0[3]),
        .I5(\axi_rdata[30]_i_2_n_0 ),
        .O(reg_data_out[30]));
  LUT6 #(
    .INIT(64'h3088FFFF30880000)) 
    \axi_rdata[30]_i_2 
       (.I0(\slv_reg6_reg_n_0_[30] ),
        .I1(sel0[1]),
        .I2(\slv_reg5_reg_n_0_[30] ),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(\axi_rdata[30]_i_3_n_0 ),
        .O(\axi_rdata[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_3 
       (.I0(\slv_reg3_reg_n_0_[30] ),
        .I1(\slv_reg2_reg_n_0_[30] ),
        .I2(sel0[1]),
        .I3(slv_reg1[30]),
        .I4(sel0[0]),
        .I5(slv_reg0[30]),
        .O(\axi_rdata[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0008FFFF00080000)) 
    \axi_rdata[31]_i_1 
       (.I0(slv_reg9[31]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(sel0[3]),
        .I5(\axi_rdata[31]_i_2_n_0 ),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'h3088FFFF30880000)) 
    \axi_rdata[31]_i_2 
       (.I0(\slv_reg6_reg_n_0_[31] ),
        .I1(sel0[1]),
        .I2(\slv_reg5_reg_n_0_[31] ),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(\axi_rdata[31]_i_3_n_0 ),
        .O(\axi_rdata[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_3 
       (.I0(\slv_reg3_reg_n_0_[31] ),
        .I1(\slv_reg2_reg_n_0_[31] ),
        .I2(sel0[1]),
        .I3(slv_reg1[31]),
        .I4(sel0[0]),
        .I5(slv_reg0[31]),
        .O(\axi_rdata[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[3]_i_1 
       (.I0(\axi_rdata[3]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[3]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[3]_i_4_n_0 ),
        .O(reg_data_out[3]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[3]_i_2 
       (.I0(sel0[1]),
        .I1(slv_reg9[3]),
        .I2(sel0[0]),
        .I3(slv_reg8[3]),
        .I4(sel0[2]),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \axi_rdata[3]_i_3 
       (.I0(slv_reg7[3]),
        .I1(slv_reg6[3]),
        .I2(sel0[1]),
        .I3(slv_reg5[3]),
        .I4(sel0[0]),
        .O(\axi_rdata[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_4 
       (.I0(\slv_reg3_reg_n_0_[3] ),
        .I1(\slv_reg2_reg_n_0_[3] ),
        .I2(sel0[1]),
        .I3(slv_reg1[3]),
        .I4(sel0[0]),
        .I5(slv_reg0[3]),
        .O(\axi_rdata[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[4]_i_1 
       (.I0(\axi_rdata[4]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[4]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[4]_i_4_n_0 ),
        .O(reg_data_out[4]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[4]_i_2 
       (.I0(sel0[1]),
        .I1(slv_reg9[4]),
        .I2(sel0[0]),
        .I3(slv_reg8[4]),
        .I4(sel0[2]),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \axi_rdata[4]_i_3 
       (.I0(slv_reg7[4]),
        .I1(slv_reg6[4]),
        .I2(sel0[1]),
        .I3(slv_reg5[4]),
        .I4(sel0[0]),
        .O(\axi_rdata[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_4 
       (.I0(\slv_reg3_reg_n_0_[4] ),
        .I1(\slv_reg2_reg_n_0_[4] ),
        .I2(sel0[1]),
        .I3(slv_reg1[4]),
        .I4(sel0[0]),
        .I5(slv_reg0[4]),
        .O(\axi_rdata[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[5]_i_1 
       (.I0(\axi_rdata[5]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[5]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[5]_i_4_n_0 ),
        .O(reg_data_out[5]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[5]_i_2 
       (.I0(sel0[1]),
        .I1(slv_reg9[5]),
        .I2(sel0[0]),
        .I3(slv_reg8[5]),
        .I4(sel0[2]),
        .O(\axi_rdata[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \axi_rdata[5]_i_3 
       (.I0(slv_reg7[5]),
        .I1(slv_reg6[5]),
        .I2(sel0[1]),
        .I3(slv_reg5[5]),
        .I4(sel0[0]),
        .O(\axi_rdata[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_4 
       (.I0(\slv_reg3_reg_n_0_[5] ),
        .I1(\slv_reg2_reg_n_0_[5] ),
        .I2(sel0[1]),
        .I3(slv_reg1[5]),
        .I4(sel0[0]),
        .I5(slv_reg0[5]),
        .O(\axi_rdata[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[6]_i_1 
       (.I0(\axi_rdata[6]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[6]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[6]_i_4_n_0 ),
        .O(reg_data_out[6]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[6]_i_2 
       (.I0(sel0[1]),
        .I1(slv_reg9[6]),
        .I2(sel0[0]),
        .I3(slv_reg8[6]),
        .I4(sel0[2]),
        .O(\axi_rdata[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \axi_rdata[6]_i_3 
       (.I0(slv_reg7[6]),
        .I1(slv_reg6[6]),
        .I2(sel0[1]),
        .I3(slv_reg5[6]),
        .I4(sel0[0]),
        .O(\axi_rdata[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_4 
       (.I0(\slv_reg3_reg_n_0_[6] ),
        .I1(\slv_reg2_reg_n_0_[6] ),
        .I2(sel0[1]),
        .I3(slv_reg1[6]),
        .I4(sel0[0]),
        .I5(slv_reg0[6]),
        .O(\axi_rdata[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[7]_i_1 
       (.I0(\axi_rdata[7]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[7]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[7]_i_4_n_0 ),
        .O(reg_data_out[7]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[7]_i_2 
       (.I0(sel0[1]),
        .I1(slv_reg9[7]),
        .I2(sel0[0]),
        .I3(slv_reg8[7]),
        .I4(sel0[2]),
        .O(\axi_rdata[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \axi_rdata[7]_i_3 
       (.I0(slv_reg7[7]),
        .I1(slv_reg6[7]),
        .I2(sel0[1]),
        .I3(slv_reg5[7]),
        .I4(sel0[0]),
        .O(\axi_rdata[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_4 
       (.I0(\slv_reg3_reg_n_0_[7] ),
        .I1(\slv_reg2_reg_n_0_[7] ),
        .I2(sel0[1]),
        .I3(slv_reg1[7]),
        .I4(sel0[0]),
        .I5(slv_reg0[7]),
        .O(\axi_rdata[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[8]_i_1 
       (.I0(\axi_rdata[8]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[8]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[8]_i_4_n_0 ),
        .O(reg_data_out[8]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[8]_i_2 
       (.I0(sel0[1]),
        .I1(slv_reg9[8]),
        .I2(sel0[0]),
        .I3(slv_reg8[8]),
        .I4(sel0[2]),
        .O(\axi_rdata[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \axi_rdata[8]_i_3 
       (.I0(slv_reg7[8]),
        .I1(slv_reg6[8]),
        .I2(sel0[1]),
        .I3(slv_reg5[8]),
        .I4(sel0[0]),
        .O(\axi_rdata[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_4 
       (.I0(\slv_reg3_reg_n_0_[8] ),
        .I1(\slv_reg2_reg_n_0_[8] ),
        .I2(sel0[1]),
        .I3(slv_reg1[8]),
        .I4(sel0[0]),
        .I5(slv_reg0[8]),
        .O(\axi_rdata[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[9]_i_1 
       (.I0(\axi_rdata[9]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[9]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[9]_i_4_n_0 ),
        .O(reg_data_out[9]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[9]_i_2 
       (.I0(sel0[1]),
        .I1(slv_reg9[9]),
        .I2(sel0[0]),
        .I3(slv_reg8[9]),
        .I4(sel0[2]),
        .O(\axi_rdata[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \axi_rdata[9]_i_3 
       (.I0(slv_reg7[9]),
        .I1(slv_reg6[9]),
        .I2(sel0[1]),
        .I3(slv_reg5[9]),
        .I4(sel0[0]),
        .O(\axi_rdata[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_4 
       (.I0(\slv_reg3_reg_n_0_[9] ),
        .I1(\slv_reg2_reg_n_0_[9] ),
        .I2(sel0[1]),
        .I3(slv_reg1[9]),
        .I4(sel0[0]),
        .I5(slv_reg0[9]),
        .O(\axi_rdata[9]_i_4_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(ARESET));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(ARESET));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(ARESET));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(ARESET));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(ARESET));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(ARESET));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(ARESET));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(ARESET));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(ARESET));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(ARESET));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(ARESET));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(ARESET));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(ARESET));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(ARESET));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(ARESET));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(ARESET));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(ARESET));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(ARESET));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(ARESET));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(ARESET));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(ARESET));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(ARESET));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(ARESET));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(ARESET));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(ARESET));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(ARESET));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(ARESET));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(ARESET));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(ARESET));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(ARESET));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(ARESET));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(ARESET));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(ARESET));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_WREADY),
        .I3(aw_en_reg_n_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(ARESET));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fft fft_seq
       (.A({aMinusBtimesD0_i_1_n_0,aMinusBtimesD0_i_2_n_0}),
        .Q(state),
        .\bottomIdx_reg[3]_0 (fft_seq_n_6),
        .\dataI_reg[1][23]_0 (slv_reg5),
        .\dataQ_reg[0][23]_0 (slv_reg6),
        .\data_out_I_reg[23]_0 (slv_wire8),
        .\data_out_R_reg[23]_0 (slv_wire7),
        .\idx_reg[0]_0 (slv_reg3),
        .last_data_en_state_reg_0(fft_seq_n_0),
        .last_data_en_state_reg_1(last_data_en_state_i_1_n_0),
        .ready_reg_0(ready_i_1__0_n_0),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .slv_wire4(slv_wire4),
        .\state_reg[0]_0 (slv_reg2),
        .\twiddleIdx_reg[2]_0 (twiddleIdx));
  LUT3 #(
    .INIT(8'hB8)) 
    last_data_en_state_i_1
       (.I0(slv_reg3),
        .I1(state),
        .I2(fft_seq_n_0),
        .O(last_data_en_state_i_1_n_0));
  LUT3 #(
    .INIT(8'hEA)) 
    ready_i_1__0
       (.I0(fft_seq_n_6),
        .I1(s00_axi_aresetn),
        .I2(slv_wire4),
        .O(ready_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(s00_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(s00_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(s00_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(s00_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg0[0]),
        .R(ARESET));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg0[10]),
        .R(ARESET));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg0[11]),
        .R(ARESET));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg0[12]),
        .R(ARESET));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg0[13]),
        .R(ARESET));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg0[14]),
        .R(ARESET));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg0[15]),
        .R(ARESET));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg0[16]),
        .R(ARESET));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg0[17]),
        .R(ARESET));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg0[18]),
        .R(ARESET));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg0[19]),
        .R(ARESET));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(ARESET));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg0[20]),
        .R(ARESET));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg0[21]),
        .R(ARESET));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg0[22]),
        .R(ARESET));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg0[23]),
        .R(ARESET));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg0[24]),
        .R(ARESET));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg0[25]),
        .R(ARESET));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg0[26]),
        .R(ARESET));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg0[27]),
        .R(ARESET));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg0[28]),
        .R(ARESET));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg0[29]),
        .R(ARESET));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(ARESET));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg0[30]),
        .R(ARESET));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg0[31]),
        .R(ARESET));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg0[3]),
        .R(ARESET));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg0[4]),
        .R(ARESET));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg0[5]),
        .R(ARESET));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg0[6]),
        .R(ARESET));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg0[7]),
        .R(ARESET));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg0[8]),
        .R(ARESET));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg0[9]),
        .R(ARESET));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(p_0_in[0]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(p_0_in[0]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(p_0_in[0]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(p_0_in[0]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg1[0]),
        .R(ARESET));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(ARESET));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(ARESET));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(ARESET));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(ARESET));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(ARESET));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(ARESET));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(ARESET));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(ARESET));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(ARESET));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(ARESET));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(ARESET));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(ARESET));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(ARESET));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(ARESET));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(ARESET));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(ARESET));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(ARESET));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(ARESET));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(ARESET));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(ARESET));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(ARESET));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(ARESET));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(ARESET));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(ARESET));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(ARESET));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(ARESET));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(ARESET));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(ARESET));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(ARESET));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(ARESET));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(ARESET));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[1]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[1]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[1]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg2[31]_i_2 
       (.I0(S_AXI_WREADY),
        .I1(S_AXI_AWREADY),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__0));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[1]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2),
        .R(ARESET));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg2_reg_n_0_[10] ),
        .R(ARESET));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg2_reg_n_0_[11] ),
        .R(ARESET));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg2_reg_n_0_[12] ),
        .R(ARESET));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg2_reg_n_0_[13] ),
        .R(ARESET));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg2_reg_n_0_[14] ),
        .R(ARESET));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg2_reg_n_0_[15] ),
        .R(ARESET));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg2_reg_n_0_[16] ),
        .R(ARESET));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg2_reg_n_0_[17] ),
        .R(ARESET));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg2_reg_n_0_[18] ),
        .R(ARESET));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg2_reg_n_0_[19] ),
        .R(ARESET));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg2_reg_n_0_[1] ),
        .R(ARESET));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg2_reg_n_0_[20] ),
        .R(ARESET));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg2_reg_n_0_[21] ),
        .R(ARESET));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg2_reg_n_0_[22] ),
        .R(ARESET));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg2_reg_n_0_[23] ),
        .R(ARESET));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg2_reg_n_0_[24] ),
        .R(ARESET));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg2_reg_n_0_[25] ),
        .R(ARESET));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg2_reg_n_0_[26] ),
        .R(ARESET));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg2_reg_n_0_[27] ),
        .R(ARESET));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg2_reg_n_0_[28] ),
        .R(ARESET));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg2_reg_n_0_[29] ),
        .R(ARESET));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg2_reg_n_0_[2] ),
        .R(ARESET));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg2_reg_n_0_[30] ),
        .R(ARESET));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg2_reg_n_0_[31] ),
        .R(ARESET));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg2_reg_n_0_[3] ),
        .R(ARESET));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg2_reg_n_0_[4] ),
        .R(ARESET));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg2_reg_n_0_[5] ),
        .R(ARESET));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg2_reg_n_0_[6] ),
        .R(ARESET));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg2_reg_n_0_[7] ),
        .R(ARESET));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg2_reg_n_0_[8] ),
        .R(ARESET));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg2_reg_n_0_[9] ),
        .R(ARESET));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3),
        .R(ARESET));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg3_reg_n_0_[10] ),
        .R(ARESET));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg3_reg_n_0_[11] ),
        .R(ARESET));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg3_reg_n_0_[12] ),
        .R(ARESET));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg3_reg_n_0_[13] ),
        .R(ARESET));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg3_reg_n_0_[14] ),
        .R(ARESET));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg3_reg_n_0_[15] ),
        .R(ARESET));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg3_reg_n_0_[16] ),
        .R(ARESET));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg3_reg_n_0_[17] ),
        .R(ARESET));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg3_reg_n_0_[18] ),
        .R(ARESET));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg3_reg_n_0_[19] ),
        .R(ARESET));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg3_reg_n_0_[1] ),
        .R(ARESET));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg3_reg_n_0_[20] ),
        .R(ARESET));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg3_reg_n_0_[21] ),
        .R(ARESET));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg3_reg_n_0_[22] ),
        .R(ARESET));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg3_reg_n_0_[23] ),
        .R(ARESET));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg3_reg_n_0_[24] ),
        .R(ARESET));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg3_reg_n_0_[25] ),
        .R(ARESET));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg3_reg_n_0_[26] ),
        .R(ARESET));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg3_reg_n_0_[27] ),
        .R(ARESET));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg3_reg_n_0_[28] ),
        .R(ARESET));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg3_reg_n_0_[29] ),
        .R(ARESET));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg3_reg_n_0_[2] ),
        .R(ARESET));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg3_reg_n_0_[30] ),
        .R(ARESET));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg3_reg_n_0_[31] ),
        .R(ARESET));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg3_reg_n_0_[3] ),
        .R(ARESET));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg3_reg_n_0_[4] ),
        .R(ARESET));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg3_reg_n_0_[5] ),
        .R(ARESET));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg3_reg_n_0_[6] ),
        .R(ARESET));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg3_reg_n_0_[7] ),
        .R(ARESET));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg3_reg_n_0_[8] ),
        .R(ARESET));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg3_reg_n_0_[9] ),
        .R(ARESET));
  FDRE \slv_reg4_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire4),
        .Q(slv_reg4),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg5[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg5[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg5[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg5[7]_i_1_n_0 ));
  FDRE \slv_reg5_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg5[0]),
        .R(ARESET));
  FDRE \slv_reg5_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg5[10]),
        .R(ARESET));
  FDRE \slv_reg5_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg5[11]),
        .R(ARESET));
  FDRE \slv_reg5_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg5[12]),
        .R(ARESET));
  FDRE \slv_reg5_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg5[13]),
        .R(ARESET));
  FDRE \slv_reg5_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg5[14]),
        .R(ARESET));
  FDRE \slv_reg5_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg5[15]),
        .R(ARESET));
  FDRE \slv_reg5_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg5[16]),
        .R(ARESET));
  FDRE \slv_reg5_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg5[17]),
        .R(ARESET));
  FDRE \slv_reg5_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg5[18]),
        .R(ARESET));
  FDRE \slv_reg5_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg5[19]),
        .R(ARESET));
  FDRE \slv_reg5_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg5[1]),
        .R(ARESET));
  FDRE \slv_reg5_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg5[20]),
        .R(ARESET));
  FDRE \slv_reg5_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg5[21]),
        .R(ARESET));
  FDRE \slv_reg5_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg5[22]),
        .R(ARESET));
  FDRE \slv_reg5_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg5[23]),
        .R(ARESET));
  FDRE \slv_reg5_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg5_reg_n_0_[24] ),
        .R(ARESET));
  FDRE \slv_reg5_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg5_reg_n_0_[25] ),
        .R(ARESET));
  FDRE \slv_reg5_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg5_reg_n_0_[26] ),
        .R(ARESET));
  FDRE \slv_reg5_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg5_reg_n_0_[27] ),
        .R(ARESET));
  FDRE \slv_reg5_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg5_reg_n_0_[28] ),
        .R(ARESET));
  FDRE \slv_reg5_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg5_reg_n_0_[29] ),
        .R(ARESET));
  FDRE \slv_reg5_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg5[2]),
        .R(ARESET));
  FDRE \slv_reg5_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg5_reg_n_0_[30] ),
        .R(ARESET));
  FDRE \slv_reg5_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg5_reg_n_0_[31] ),
        .R(ARESET));
  FDRE \slv_reg5_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg5[3]),
        .R(ARESET));
  FDRE \slv_reg5_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg5[4]),
        .R(ARESET));
  FDRE \slv_reg5_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg5[5]),
        .R(ARESET));
  FDRE \slv_reg5_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg5[6]),
        .R(ARESET));
  FDRE \slv_reg5_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg5[7]),
        .R(ARESET));
  FDRE \slv_reg5_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg5[8]),
        .R(ARESET));
  FDRE \slv_reg5_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg5[9]),
        .R(ARESET));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg6[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[3]),
        .O(\slv_reg6[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg6[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[3]),
        .O(\slv_reg6[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg6[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[3]),
        .O(\slv_reg6[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg6[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[3]),
        .O(\slv_reg6[7]_i_1_n_0 ));
  FDRE \slv_reg6_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg6[0]),
        .R(ARESET));
  FDRE \slv_reg6_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg6[10]),
        .R(ARESET));
  FDRE \slv_reg6_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg6[11]),
        .R(ARESET));
  FDRE \slv_reg6_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg6[12]),
        .R(ARESET));
  FDRE \slv_reg6_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg6[13]),
        .R(ARESET));
  FDRE \slv_reg6_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg6[14]),
        .R(ARESET));
  FDRE \slv_reg6_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg6[15]),
        .R(ARESET));
  FDRE \slv_reg6_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg6[16]),
        .R(ARESET));
  FDRE \slv_reg6_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg6[17]),
        .R(ARESET));
  FDRE \slv_reg6_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg6[18]),
        .R(ARESET));
  FDRE \slv_reg6_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg6[19]),
        .R(ARESET));
  FDRE \slv_reg6_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg6[1]),
        .R(ARESET));
  FDRE \slv_reg6_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg6[20]),
        .R(ARESET));
  FDRE \slv_reg6_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg6[21]),
        .R(ARESET));
  FDRE \slv_reg6_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg6[22]),
        .R(ARESET));
  FDRE \slv_reg6_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg6[23]),
        .R(ARESET));
  FDRE \slv_reg6_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg6_reg_n_0_[24] ),
        .R(ARESET));
  FDRE \slv_reg6_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg6_reg_n_0_[25] ),
        .R(ARESET));
  FDRE \slv_reg6_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg6_reg_n_0_[26] ),
        .R(ARESET));
  FDRE \slv_reg6_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg6_reg_n_0_[27] ),
        .R(ARESET));
  FDRE \slv_reg6_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg6_reg_n_0_[28] ),
        .R(ARESET));
  FDRE \slv_reg6_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg6_reg_n_0_[29] ),
        .R(ARESET));
  FDRE \slv_reg6_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg6[2]),
        .R(ARESET));
  FDRE \slv_reg6_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg6_reg_n_0_[30] ),
        .R(ARESET));
  FDRE \slv_reg6_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg6_reg_n_0_[31] ),
        .R(ARESET));
  FDRE \slv_reg6_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg6[3]),
        .R(ARESET));
  FDRE \slv_reg6_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg6[4]),
        .R(ARESET));
  FDRE \slv_reg6_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg6[5]),
        .R(ARESET));
  FDRE \slv_reg6_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg6[6]),
        .R(ARESET));
  FDRE \slv_reg6_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg6[7]),
        .R(ARESET));
  FDRE \slv_reg6_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg6[8]),
        .R(ARESET));
  FDRE \slv_reg6_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg6[9]),
        .R(ARESET));
  FDRE \slv_reg7_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire7[0]),
        .Q(slv_reg7[0]),
        .R(1'b0));
  FDRE \slv_reg7_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire7[10]),
        .Q(slv_reg7[10]),
        .R(1'b0));
  FDRE \slv_reg7_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire7[11]),
        .Q(slv_reg7[11]),
        .R(1'b0));
  FDRE \slv_reg7_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire7[12]),
        .Q(slv_reg7[12]),
        .R(1'b0));
  FDRE \slv_reg7_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire7[13]),
        .Q(slv_reg7[13]),
        .R(1'b0));
  FDRE \slv_reg7_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire7[14]),
        .Q(slv_reg7[14]),
        .R(1'b0));
  FDRE \slv_reg7_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire7[15]),
        .Q(slv_reg7[15]),
        .R(1'b0));
  FDRE \slv_reg7_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire7[16]),
        .Q(slv_reg7[16]),
        .R(1'b0));
  FDRE \slv_reg7_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire7[17]),
        .Q(slv_reg7[17]),
        .R(1'b0));
  FDRE \slv_reg7_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire7[18]),
        .Q(slv_reg7[18]),
        .R(1'b0));
  FDRE \slv_reg7_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire7[19]),
        .Q(slv_reg7[19]),
        .R(1'b0));
  FDRE \slv_reg7_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire7[1]),
        .Q(slv_reg7[1]),
        .R(1'b0));
  FDRE \slv_reg7_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire7[20]),
        .Q(slv_reg7[20]),
        .R(1'b0));
  FDRE \slv_reg7_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire7[21]),
        .Q(slv_reg7[21]),
        .R(1'b0));
  FDRE \slv_reg7_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire7[22]),
        .Q(slv_reg7[22]),
        .R(1'b0));
  FDRE \slv_reg7_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire7[23]),
        .Q(slv_reg7[23]),
        .R(1'b0));
  FDRE \slv_reg7_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire7[2]),
        .Q(slv_reg7[2]),
        .R(1'b0));
  FDRE \slv_reg7_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire7[3]),
        .Q(slv_reg7[3]),
        .R(1'b0));
  FDRE \slv_reg7_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire7[4]),
        .Q(slv_reg7[4]),
        .R(1'b0));
  FDRE \slv_reg7_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire7[5]),
        .Q(slv_reg7[5]),
        .R(1'b0));
  FDRE \slv_reg7_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire7[6]),
        .Q(slv_reg7[6]),
        .R(1'b0));
  FDRE \slv_reg7_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire7[7]),
        .Q(slv_reg7[7]),
        .R(1'b0));
  FDRE \slv_reg7_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire7[8]),
        .Q(slv_reg7[8]),
        .R(1'b0));
  FDRE \slv_reg7_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire7[9]),
        .Q(slv_reg7[9]),
        .R(1'b0));
  FDRE \slv_reg8_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire8[0]),
        .Q(slv_reg8[0]),
        .R(1'b0));
  FDRE \slv_reg8_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire8[10]),
        .Q(slv_reg8[10]),
        .R(1'b0));
  FDRE \slv_reg8_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire8[11]),
        .Q(slv_reg8[11]),
        .R(1'b0));
  FDRE \slv_reg8_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire8[12]),
        .Q(slv_reg8[12]),
        .R(1'b0));
  FDRE \slv_reg8_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire8[13]),
        .Q(slv_reg8[13]),
        .R(1'b0));
  FDRE \slv_reg8_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire8[14]),
        .Q(slv_reg8[14]),
        .R(1'b0));
  FDRE \slv_reg8_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire8[15]),
        .Q(slv_reg8[15]),
        .R(1'b0));
  FDRE \slv_reg8_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire8[16]),
        .Q(slv_reg8[16]),
        .R(1'b0));
  FDRE \slv_reg8_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire8[17]),
        .Q(slv_reg8[17]),
        .R(1'b0));
  FDRE \slv_reg8_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire8[18]),
        .Q(slv_reg8[18]),
        .R(1'b0));
  FDRE \slv_reg8_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire8[19]),
        .Q(slv_reg8[19]),
        .R(1'b0));
  FDRE \slv_reg8_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire8[1]),
        .Q(slv_reg8[1]),
        .R(1'b0));
  FDRE \slv_reg8_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire8[20]),
        .Q(slv_reg8[20]),
        .R(1'b0));
  FDRE \slv_reg8_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire8[21]),
        .Q(slv_reg8[21]),
        .R(1'b0));
  FDRE \slv_reg8_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire8[22]),
        .Q(slv_reg8[22]),
        .R(1'b0));
  FDRE \slv_reg8_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire8[23]),
        .Q(slv_reg8[23]),
        .R(1'b0));
  FDRE \slv_reg8_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire8[2]),
        .Q(slv_reg8[2]),
        .R(1'b0));
  FDRE \slv_reg8_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire8[3]),
        .Q(slv_reg8[3]),
        .R(1'b0));
  FDRE \slv_reg8_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire8[4]),
        .Q(slv_reg8[4]),
        .R(1'b0));
  FDRE \slv_reg8_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire8[5]),
        .Q(slv_reg8[5]),
        .R(1'b0));
  FDRE \slv_reg8_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire8[6]),
        .Q(slv_reg8[6]),
        .R(1'b0));
  FDRE \slv_reg8_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire8[7]),
        .Q(slv_reg8[7]),
        .R(1'b0));
  FDRE \slv_reg8_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire8[8]),
        .Q(slv_reg8[8]),
        .R(1'b0));
  FDRE \slv_reg8_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire8[9]),
        .Q(slv_reg8[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg9[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[1]),
        .I4(p_0_in[1]),
        .I5(p_0_in[2]),
        .O(\slv_reg9[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg9[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[2]),
        .I4(p_0_in[1]),
        .I5(p_0_in[2]),
        .O(\slv_reg9[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg9[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[3]),
        .I4(p_0_in[1]),
        .I5(p_0_in[2]),
        .O(\slv_reg9[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg9[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[2]),
        .O(\slv_reg9[7]_i_1_n_0 ));
  FDRE \slv_reg9_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg9[0]),
        .R(ARESET));
  FDRE \slv_reg9_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg9[10]),
        .R(ARESET));
  FDRE \slv_reg9_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg9[11]),
        .R(ARESET));
  FDRE \slv_reg9_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg9[12]),
        .R(ARESET));
  FDRE \slv_reg9_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg9[13]),
        .R(ARESET));
  FDRE \slv_reg9_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg9[14]),
        .R(ARESET));
  FDRE \slv_reg9_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg9[15]),
        .R(ARESET));
  FDRE \slv_reg9_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg9[16]),
        .R(ARESET));
  FDRE \slv_reg9_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg9[17]),
        .R(ARESET));
  FDRE \slv_reg9_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg9[18]),
        .R(ARESET));
  FDRE \slv_reg9_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg9[19]),
        .R(ARESET));
  FDRE \slv_reg9_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg9[1]),
        .R(ARESET));
  FDRE \slv_reg9_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg9[20]),
        .R(ARESET));
  FDRE \slv_reg9_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg9[21]),
        .R(ARESET));
  FDRE \slv_reg9_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg9[22]),
        .R(ARESET));
  FDRE \slv_reg9_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg9[23]),
        .R(ARESET));
  FDRE \slv_reg9_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg9[24]),
        .R(ARESET));
  FDRE \slv_reg9_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg9[25]),
        .R(ARESET));
  FDRE \slv_reg9_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg9[26]),
        .R(ARESET));
  FDRE \slv_reg9_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg9[27]),
        .R(ARESET));
  FDRE \slv_reg9_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg9[28]),
        .R(ARESET));
  FDRE \slv_reg9_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg9[29]),
        .R(ARESET));
  FDRE \slv_reg9_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg9[2]),
        .R(ARESET));
  FDRE \slv_reg9_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg9[30]),
        .R(ARESET));
  FDRE \slv_reg9_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg9[31]),
        .R(ARESET));
  FDRE \slv_reg9_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg9[3]),
        .R(ARESET));
  FDRE \slv_reg9_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg9[4]),
        .R(ARESET));
  FDRE \slv_reg9_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg9[5]),
        .R(ARESET));
  FDRE \slv_reg9_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg9[6]),
        .R(ARESET));
  FDRE \slv_reg9_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg9[7]),
        .R(ARESET));
  FDRE \slv_reg9_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg9[8]),
        .R(ARESET));
  FDRE \slv_reg9_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg9[9]),
        .R(ARESET));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(S_AXI_ARREADY),
        .O(slv_reg_rden__0));
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
