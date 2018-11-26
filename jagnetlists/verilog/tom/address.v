/* verilator lint_off LITENDIAN */
`include "defs.v"

module address
(
	output gpu_dout_0_out,
	output gpu_dout_0_oe,
	input gpu_dout_0_in,
	output gpu_dout_1_out,
	output gpu_dout_1_oe,
	input gpu_dout_1_in,
	output gpu_dout_2_out,
	output gpu_dout_2_oe,
	input gpu_dout_2_in,
	output gpu_dout_3_out,
	output gpu_dout_3_oe,
	input gpu_dout_3_in,
	output gpu_dout_4_out,
	output gpu_dout_4_oe,
	input gpu_dout_4_in,
	output gpu_dout_5_out,
	output gpu_dout_5_oe,
	input gpu_dout_5_in,
	output gpu_dout_6_out,
	output gpu_dout_6_oe,
	input gpu_dout_6_in,
	output gpu_dout_7_out,
	output gpu_dout_7_oe,
	input gpu_dout_7_in,
	output gpu_dout_8_out,
	output gpu_dout_8_oe,
	input gpu_dout_8_in,
	output gpu_dout_9_out,
	output gpu_dout_9_oe,
	input gpu_dout_9_in,
	output gpu_dout_10_out,
	output gpu_dout_10_oe,
	input gpu_dout_10_in,
	output gpu_dout_11_out,
	output gpu_dout_11_oe,
	input gpu_dout_11_in,
	output gpu_dout_12_out,
	output gpu_dout_12_oe,
	input gpu_dout_12_in,
	output gpu_dout_13_out,
	output gpu_dout_13_oe,
	input gpu_dout_13_in,
	output gpu_dout_14_out,
	output gpu_dout_14_oe,
	input gpu_dout_14_in,
	output gpu_dout_15_out,
	output gpu_dout_15_oe,
	input gpu_dout_15_in,
	output gpu_dout_16_out,
	output gpu_dout_16_oe,
	input gpu_dout_16_in,
	output gpu_dout_17_out,
	output gpu_dout_17_oe,
	input gpu_dout_17_in,
	output gpu_dout_18_out,
	output gpu_dout_18_oe,
	input gpu_dout_18_in,
	output gpu_dout_19_out,
	output gpu_dout_19_oe,
	input gpu_dout_19_in,
	output gpu_dout_20_out,
	output gpu_dout_20_oe,
	input gpu_dout_20_in,
	output gpu_dout_21_out,
	output gpu_dout_21_oe,
	input gpu_dout_21_in,
	output gpu_dout_22_out,
	output gpu_dout_22_oe,
	input gpu_dout_22_in,
	output gpu_dout_23_out,
	output gpu_dout_23_oe,
	input gpu_dout_23_in,
	output gpu_dout_24_out,
	output gpu_dout_24_oe,
	input gpu_dout_24_in,
	output gpu_dout_25_out,
	output gpu_dout_25_oe,
	input gpu_dout_25_in,
	output gpu_dout_26_out,
	output gpu_dout_26_oe,
	input gpu_dout_26_in,
	output gpu_dout_27_out,
	output gpu_dout_27_oe,
	input gpu_dout_27_in,
	output gpu_dout_28_out,
	output gpu_dout_28_oe,
	input gpu_dout_28_in,
	output gpu_dout_29_out,
	output gpu_dout_29_oe,
	input gpu_dout_29_in,
	output gpu_dout_30_out,
	output gpu_dout_30_oe,
	input gpu_dout_30_in,
	output gpu_dout_31_out,
	output gpu_dout_31_oe,
	input gpu_dout_31_in,
	output a1_outside,
	output a1_pixsize_0,
	output a1_pixsize_1,
	output a1_pixsize_2,
	output [0:14] a1_win_x,
	output [0:15] a1_x,
	output a1addx_0,
	output a1addx_1,
	output a1addy,
	output a1xsign,
	output a1ysign,
	output a2_pixsize_0,
	output a2_pixsize_1,
	output a2_pixsize_2,
	output [0:15] a2_x,
	output a2addx_0,
	output a2addx_1,
	output a2addy,
	output a2xsign,
	output a2ysign,
	output [0:23] address,
	output pixa_0,
	output pixa_1,
	output pixa_2,
	input addasel_0,
	input addasel_1,
	input addasel_2,
	input addbsel_0,
	input addbsel_1,
	input addqsel,
	input adda_xconst_0,
	input adda_xconst_1,
	input adda_xconst_2,
	input adda_yconst,
	input addareg,
	input a1baseld,
	input a1flagld,
	input a1fracld,
	input a1incld,
	input a1incfld,
	input a1posrd,
	input a1posfrd,
	input a1ptrld,
	input a1stepld,
	input a1stepfld,
	input a1winld,
	input a2baseld,
	input a2flagld,
	input a2posrd,
	input a2ptrld,
	input a2stepld,
	input a2winld,
	input apipe,
	input clk,
	input gena2,
	input [0:31] gpu_din,
	input load_strobe,
	input modx_0,
	input modx_1,
	input modx_2,
	input suba_x,
	input suba_y,
	input zaddr,
	input sys_clk // Generated
);
wire [0:14] gpu_d_lo15;
wire [0:14] gpu_d_hi15;
wire [0:14] a1_win_y;
wire [0:15] a1_y;
wire [0:15] a1_frac_x;
wire [0:15] a1_frac_y;
wire [0:15] a1_inc_x;
wire [0:15] a1_inc_y;
wire [0:15] a1_incf_x;
wire [0:15] a1_incf_y;
wire [0:15] a2_xm;
wire [0:15] a2_ym;
wire [0:15] a2_xr;
wire [0:15] a2_yr;
wire [0:15] adda_x;
wire [0:15] adda_y;
wire [0:15] addb_x;
wire [0:15] addb_y;
wire [0:15] addq_x;
wire [0:15] addq_y;
wire [0:15] data_x;
wire [0:15] data_y;
wire [0:15] a1_xt;
wire [0:15] a2_mask_x;
wire [0:15] a2_mask_y;
wire [0:15] gpu_d_lo16;
wire [0:15] gpu_d_hi16;
wire [0:20] a1_flags;
wire [0:20] a2_flags;
wire [0:20] gpu_d_lo21;
wire [0:20] a1_base;
wire [0:20] a2_base;
wire [0:20] gpu_d_m21;
wire [0:15] a1_step_x;
wire [0:15] a1_step_y;
wire [0:15] a1_stepf_x;
wire [0:15] a1_stepf_y;
wire [0:15] a2_y;
wire [0:15] a2_step_x;
wire [0:15] a2_step_y;
wire a1baseldg;
wire a1flagldg;
wire a1_pitch_0;
wire a1_pitch_1;
wire a1_zoffset_0;
wire a1_zoffset_1;
wire unused_0;
wire a1_width_0;
wire a1_width_1;
wire a1_width_2;
wire a1_width_3;
wire a1_width_4;
wire a1_width_5;
wire unused_1;
wire a1winldg;
wire a1stepldg;
wire a1stepfldg;
wire a1incldg;
wire a1incfldg;
wire a2baseldg;
wire a2flagldg;
wire a2_pitch_0;
wire a2_pitch_1;
wire a2_zoffset_0;
wire a2_zoffset_1;
wire unused_2;
wire a2_width_0;
wire a2_width_1;
wire a2_width_2;
wire a2_width_3;
wire a2_width_4;
wire a2_width_5;
wire a2_mask;
wire a2winldg;
wire a2stepldg;
wire a1_pos_0;
wire a1_pos_1;
wire a1_pos_2;
wire a1_pos_3;
wire a1_pos_4;
wire a1_pos_5;
wire a1_pos_6;
wire a1_pos_7;
wire a1_pos_8;
wire a1_pos_9;
wire a1_pos_10;
wire a1_pos_11;
wire a1_pos_12;
wire a1_pos_13;
wire a1_pos_14;
wire a1_pos_15;
wire a1_pos_16;
wire a1_pos_17;
wire a1_pos_18;
wire a1_pos_19;
wire a1_pos_20;
wire a1_pos_21;
wire a1_pos_22;
wire a1_pos_23;
wire a1_pos_24;
wire a1_pos_25;
wire a1_pos_26;
wire a1_pos_27;
wire a1_pos_28;
wire a1_pos_29;
wire a1_pos_30;
wire a1_pos_31;
wire a1_posf_0;
wire a1_posf_1;
wire a1_posf_2;
wire a1_posf_3;
wire a1_posf_4;
wire a1_posf_5;
wire a1_posf_6;
wire a1_posf_7;
wire a1_posf_8;
wire a1_posf_9;
wire a1_posf_10;
wire a1_posf_11;
wire a1_posf_12;
wire a1_posf_13;
wire a1_posf_14;
wire a1_posf_15;
wire a1_posf_16;
wire a1_posf_17;
wire a1_posf_18;
wire a1_posf_19;
wire a1_posf_20;
wire a1_posf_21;
wire a1_posf_22;
wire a1_posf_23;
wire a1_posf_24;
wire a1_posf_25;
wire a1_posf_26;
wire a1_posf_27;
wire a1_posf_28;
wire a1_posf_29;
wire a1_posf_30;
wire a1_posf_31;
wire a2_pos_0;
wire a2_pos_1;
wire a2_pos_2;
wire a2_pos_3;
wire a2_pos_4;
wire a2_pos_5;
wire a2_pos_6;
wire a2_pos_7;
wire a2_pos_8;
wire a2_pos_9;
wire a2_pos_10;
wire a2_pos_11;
wire a2_pos_12;
wire a2_pos_13;
wire a2_pos_14;
wire a2_pos_15;
wire a2_pos_16;
wire a2_pos_17;
wire a2_pos_18;
wire a2_pos_19;
wire a2_pos_20;
wire a2_pos_21;
wire a2_pos_22;
wire a2_pos_23;
wire a2_pos_24;
wire a2_pos_25;
wire a2_pos_26;
wire a2_pos_27;
wire a2_pos_28;
wire a2_pos_29;
wire a2_pos_30;
wire a2_pos_31;
wire grdt0_0;
wire grdt0_1;
wire grdt0_2;
wire grdt0_3;
wire grdt0_4;
wire grdt0_5;
wire grdt0_6;
wire grdt0_7;
wire grdt0_8;
wire grdt0_9;
wire grdt0_10;
wire grdt0_11;
wire grdt0_12;
wire grdt0_13;
wire grdt0_14;
wire grdt0_15;
wire grdt0_16;
wire grdt0_17;
wire grdt0_18;
wire grdt0_19;
wire grdt0_20;
wire grdt0_21;
wire grdt0_22;
wire grdt0_23;
wire grdt0_24;
wire grdt0_25;
wire grdt0_26;
wire grdt0_27;
wire grdt0_28;
wire grdt0_29;
wire grdt0_30;
wire grdt0_31;
wire grdt1_0;
wire grdt1_1;
wire grdt1_2;
wire grdt1_3;
wire grdt1_4;
wire grdt1_5;
wire grdt1_6;
wire grdt1_7;
wire grdt1_8;
wire grdt1_9;
wire grdt1_10;
wire grdt1_11;
wire grdt1_12;
wire grdt1_13;
wire grdt1_14;
wire grdt1_15;
wire grdt1_16;
wire grdt1_17;
wire grdt1_18;
wire grdt1_19;
wire grdt1_20;
wire grdt1_21;
wire grdt1_22;
wire grdt1_23;
wire grdt1_24;
wire grdt1_25;
wire grdt1_26;
wire grdt1_27;
wire grdt1_28;
wire grdt1_29;
wire grdt1_30;
wire grdt1_31;
wire grden;

// Output buffers
wire a1_pixsize_0_obuf;
wire a1_pixsize_1_obuf;
wire a1_pixsize_2_obuf;
wire a1_win_x_b0_obuf;
wire a1_win_x_b1_obuf;
wire a1_win_x_b2_obuf;
wire a1_win_x_b3_obuf;
wire a1_win_x_b4_obuf;
wire a1_win_x_b5_obuf;
wire a1_win_x_b6_obuf;
wire a1_win_x_b7_obuf;
wire a1_win_x_b8_obuf;
wire a1_win_x_b9_obuf;
wire a1_win_x_b10_obuf;
wire a1_win_x_b11_obuf;
wire a1_win_x_b12_obuf;
wire a1_win_x_b13_obuf;
wire a1_win_x_b14_obuf;
wire a1_x_b0_obuf;
wire a1_x_b1_obuf;
wire a1_x_b2_obuf;
wire a1_x_b3_obuf;
wire a1_x_b4_obuf;
wire a1_x_b5_obuf;
wire a1_x_b6_obuf;
wire a1_x_b7_obuf;
wire a1_x_b8_obuf;
wire a1_x_b9_obuf;
wire a1_x_b10_obuf;
wire a1_x_b11_obuf;
wire a1_x_b12_obuf;
wire a1_x_b13_obuf;
wire a1_x_b14_obuf;
wire a1_x_b15_obuf;
wire a2_pixsize_0_obuf;
wire a2_pixsize_1_obuf;
wire a2_pixsize_2_obuf;
wire a2_x_b0_obuf;
wire a2_x_b1_obuf;
wire a2_x_b2_obuf;
wire a2_x_b3_obuf;
wire a2_x_b4_obuf;
wire a2_x_b5_obuf;
wire a2_x_b6_obuf;
wire a2_x_b7_obuf;
wire a2_x_b8_obuf;
wire a2_x_b9_obuf;
wire a2_x_b10_obuf;
wire a2_x_b11_obuf;
wire a2_x_b12_obuf;
wire a2_x_b13_obuf;
wire a2_x_b14_obuf;
wire a2_x_b15_obuf;


// Output buffers
assign a1_pixsize_0 = a1_pixsize_0_obuf;
assign a1_pixsize_1 = a1_pixsize_1_obuf;
assign a1_pixsize_2 = a1_pixsize_2_obuf;
assign a1_win_x[0] = a1_win_x_b0_obuf;
assign a1_win_x[1] = a1_win_x_b1_obuf;
assign a1_win_x[2] = a1_win_x_b2_obuf;
assign a1_win_x[3] = a1_win_x_b3_obuf;
assign a1_win_x[4] = a1_win_x_b4_obuf;
assign a1_win_x[5] = a1_win_x_b5_obuf;
assign a1_win_x[6] = a1_win_x_b6_obuf;
assign a1_win_x[7] = a1_win_x_b7_obuf;
assign a1_win_x[8] = a1_win_x_b8_obuf;
assign a1_win_x[9] = a1_win_x_b9_obuf;
assign a1_win_x[10] = a1_win_x_b10_obuf;
assign a1_win_x[11] = a1_win_x_b11_obuf;
assign a1_win_x[12] = a1_win_x_b12_obuf;
assign a1_win_x[13] = a1_win_x_b13_obuf;
assign a1_win_x[14] = a1_win_x_b14_obuf;
assign a1_x[0] = a1_x_b0_obuf;
assign a1_x[1] = a1_x_b1_obuf;
assign a1_x[2] = a1_x_b2_obuf;
assign a1_x[3] = a1_x_b3_obuf;
assign a1_x[4] = a1_x_b4_obuf;
assign a1_x[5] = a1_x_b5_obuf;
assign a1_x[6] = a1_x_b6_obuf;
assign a1_x[7] = a1_x_b7_obuf;
assign a1_x[8] = a1_x_b8_obuf;
assign a1_x[9] = a1_x_b9_obuf;
assign a1_x[10] = a1_x_b10_obuf;
assign a1_x[11] = a1_x_b11_obuf;
assign a1_x[12] = a1_x_b12_obuf;
assign a1_x[13] = a1_x_b13_obuf;
assign a1_x[14] = a1_x_b14_obuf;
assign a1_x[15] = a1_x_b15_obuf;
assign a2_pixsize_0 = a2_pixsize_0_obuf;
assign a2_pixsize_1 = a2_pixsize_1_obuf;
assign a2_pixsize_2 = a2_pixsize_2_obuf;
assign a2_x[0] = a2_x_b0_obuf;
assign a2_x[1] = a2_x_b1_obuf;
assign a2_x[2] = a2_x_b2_obuf;
assign a2_x[3] = a2_x_b3_obuf;
assign a2_x[4] = a2_x_b4_obuf;
assign a2_x[5] = a2_x_b5_obuf;
assign a2_x[6] = a2_x_b6_obuf;
assign a2_x[7] = a2_x_b7_obuf;
assign a2_x[8] = a2_x_b8_obuf;
assign a2_x[9] = a2_x_b9_obuf;
assign a2_x[10] = a2_x_b10_obuf;
assign a2_x[11] = a2_x_b11_obuf;
assign a2_x[12] = a2_x_b12_obuf;
assign a2_x[13] = a2_x_b13_obuf;
assign a2_x[14] = a2_x_b14_obuf;
assign a2_x[15] = a2_x_b15_obuf;


// ADDRESS.NET (81) - gpulo15 : join
assign gpu_d_lo15[0] = gpu_din[0];
assign gpu_d_lo15[1] = gpu_din[1];
assign gpu_d_lo15[2] = gpu_din[2];
assign gpu_d_lo15[3] = gpu_din[3];
assign gpu_d_lo15[4] = gpu_din[4];
assign gpu_d_lo15[5] = gpu_din[5];
assign gpu_d_lo15[6] = gpu_din[6];
assign gpu_d_lo15[7] = gpu_din[7];
assign gpu_d_lo15[8] = gpu_din[8];
assign gpu_d_lo15[9] = gpu_din[9];
assign gpu_d_lo15[10] = gpu_din[10];
assign gpu_d_lo15[11] = gpu_din[11];
assign gpu_d_lo15[12] = gpu_din[12];
assign gpu_d_lo15[13] = gpu_din[13];
assign gpu_d_lo15[14] = gpu_din[14];

// ADDRESS.NET (82) - gpuhi15 : join
assign gpu_d_hi15[0] = gpu_din[16];
assign gpu_d_hi15[1] = gpu_din[17];
assign gpu_d_hi15[2] = gpu_din[18];
assign gpu_d_hi15[3] = gpu_din[19];
assign gpu_d_hi15[4] = gpu_din[20];
assign gpu_d_hi15[5] = gpu_din[21];
assign gpu_d_hi15[6] = gpu_din[22];
assign gpu_d_hi15[7] = gpu_din[23];
assign gpu_d_hi15[8] = gpu_din[24];
assign gpu_d_hi15[9] = gpu_din[25];
assign gpu_d_hi15[10] = gpu_din[26];
assign gpu_d_hi15[11] = gpu_din[27];
assign gpu_d_hi15[12] = gpu_din[28];
assign gpu_d_hi15[13] = gpu_din[29];
assign gpu_d_hi15[14] = gpu_din[30];

// ADDRESS.NET (83) - gpulo16 : join
assign gpu_d_lo16[0] = gpu_din[0];
assign gpu_d_lo16[1] = gpu_din[1];
assign gpu_d_lo16[2] = gpu_din[2];
assign gpu_d_lo16[3] = gpu_din[3];
assign gpu_d_lo16[4] = gpu_din[4];
assign gpu_d_lo16[5] = gpu_din[5];
assign gpu_d_lo16[6] = gpu_din[6];
assign gpu_d_lo16[7] = gpu_din[7];
assign gpu_d_lo16[8] = gpu_din[8];
assign gpu_d_lo16[9] = gpu_din[9];
assign gpu_d_lo16[10] = gpu_din[10];
assign gpu_d_lo16[11] = gpu_din[11];
assign gpu_d_lo16[12] = gpu_din[12];
assign gpu_d_lo16[13] = gpu_din[13];
assign gpu_d_lo16[14] = gpu_din[14];
assign gpu_d_lo16[15] = gpu_din[15];

// ADDRESS.NET (84) - gpuhi16 : join
assign gpu_d_hi16[0] = gpu_din[16];
assign gpu_d_hi16[1] = gpu_din[17];
assign gpu_d_hi16[2] = gpu_din[18];
assign gpu_d_hi16[3] = gpu_din[19];
assign gpu_d_hi16[4] = gpu_din[20];
assign gpu_d_hi16[5] = gpu_din[21];
assign gpu_d_hi16[6] = gpu_din[22];
assign gpu_d_hi16[7] = gpu_din[23];
assign gpu_d_hi16[8] = gpu_din[24];
assign gpu_d_hi16[9] = gpu_din[25];
assign gpu_d_hi16[10] = gpu_din[26];
assign gpu_d_hi16[11] = gpu_din[27];
assign gpu_d_hi16[12] = gpu_din[28];
assign gpu_d_hi16[13] = gpu_din[29];
assign gpu_d_hi16[14] = gpu_din[30];
assign gpu_d_hi16[15] = gpu_din[31];

// ADDRESS.NET (85) - gpulo21 : join
assign gpu_d_lo21[0] = gpu_din[0];
assign gpu_d_lo21[1] = gpu_din[1];
assign gpu_d_lo21[2] = gpu_din[2];
assign gpu_d_lo21[3] = gpu_din[3];
assign gpu_d_lo21[4] = gpu_din[4];
assign gpu_d_lo21[5] = gpu_din[5];
assign gpu_d_lo21[6] = gpu_din[6];
assign gpu_d_lo21[7] = gpu_din[7];
assign gpu_d_lo21[8] = gpu_din[8];
assign gpu_d_lo21[9] = gpu_din[9];
assign gpu_d_lo21[10] = gpu_din[10];
assign gpu_d_lo21[11] = gpu_din[11];
assign gpu_d_lo21[12] = gpu_din[12];
assign gpu_d_lo21[13] = gpu_din[13];
assign gpu_d_lo21[14] = gpu_din[14];
assign gpu_d_lo21[15] = gpu_din[15];
assign gpu_d_lo21[16] = gpu_din[16];
assign gpu_d_lo21[17] = gpu_din[17];
assign gpu_d_lo21[18] = gpu_din[18];
assign gpu_d_lo21[19] = gpu_din[19];
assign gpu_d_lo21[20] = gpu_din[20];

// ADDRESS.NET (86) - gpuhi29 : join
assign gpu_d_m21[0] = gpu_din[3];
assign gpu_d_m21[1] = gpu_din[4];
assign gpu_d_m21[2] = gpu_din[5];
assign gpu_d_m21[3] = gpu_din[6];
assign gpu_d_m21[4] = gpu_din[7];
assign gpu_d_m21[5] = gpu_din[8];
assign gpu_d_m21[6] = gpu_din[9];
assign gpu_d_m21[7] = gpu_din[10];
assign gpu_d_m21[8] = gpu_din[11];
assign gpu_d_m21[9] = gpu_din[12];
assign gpu_d_m21[10] = gpu_din[13];
assign gpu_d_m21[11] = gpu_din[14];
assign gpu_d_m21[12] = gpu_din[15];
assign gpu_d_m21[13] = gpu_din[16];
assign gpu_d_m21[14] = gpu_din[17];
assign gpu_d_m21[15] = gpu_din[18];
assign gpu_d_m21[16] = gpu_din[19];
assign gpu_d_m21[17] = gpu_din[20];
assign gpu_d_m21[18] = gpu_din[21];
assign gpu_d_m21[19] = gpu_din[22];
assign gpu_d_m21[20] = gpu_din[23];

// ADDRESS.NET (92) - a1baseldg : an2u
assign a1baseldg = a1baseld & load_strobe;

// ADDRESS.NET (93) - a1base : ldp1q
ldp1q a1base_inst_0
(
	.q /* OUT */ (a1_base[0]),
	.d /* IN */ (gpu_d_m21[0]),
	.g /* IN */ (a1baseldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1base_inst_1
(
	.q /* OUT */ (a1_base[1]),
	.d /* IN */ (gpu_d_m21[1]),
	.g /* IN */ (a1baseldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1base_inst_2
(
	.q /* OUT */ (a1_base[2]),
	.d /* IN */ (gpu_d_m21[2]),
	.g /* IN */ (a1baseldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1base_inst_3
(
	.q /* OUT */ (a1_base[3]),
	.d /* IN */ (gpu_d_m21[3]),
	.g /* IN */ (a1baseldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1base_inst_4
(
	.q /* OUT */ (a1_base[4]),
	.d /* IN */ (gpu_d_m21[4]),
	.g /* IN */ (a1baseldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1base_inst_5
(
	.q /* OUT */ (a1_base[5]),
	.d /* IN */ (gpu_d_m21[5]),
	.g /* IN */ (a1baseldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1base_inst_6
(
	.q /* OUT */ (a1_base[6]),
	.d /* IN */ (gpu_d_m21[6]),
	.g /* IN */ (a1baseldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1base_inst_7
(
	.q /* OUT */ (a1_base[7]),
	.d /* IN */ (gpu_d_m21[7]),
	.g /* IN */ (a1baseldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1base_inst_8
(
	.q /* OUT */ (a1_base[8]),
	.d /* IN */ (gpu_d_m21[8]),
	.g /* IN */ (a1baseldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1base_inst_9
(
	.q /* OUT */ (a1_base[9]),
	.d /* IN */ (gpu_d_m21[9]),
	.g /* IN */ (a1baseldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1base_inst_10
(
	.q /* OUT */ (a1_base[10]),
	.d /* IN */ (gpu_d_m21[10]),
	.g /* IN */ (a1baseldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1base_inst_11
(
	.q /* OUT */ (a1_base[11]),
	.d /* IN */ (gpu_d_m21[11]),
	.g /* IN */ (a1baseldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1base_inst_12
(
	.q /* OUT */ (a1_base[12]),
	.d /* IN */ (gpu_d_m21[12]),
	.g /* IN */ (a1baseldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1base_inst_13
(
	.q /* OUT */ (a1_base[13]),
	.d /* IN */ (gpu_d_m21[13]),
	.g /* IN */ (a1baseldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1base_inst_14
(
	.q /* OUT */ (a1_base[14]),
	.d /* IN */ (gpu_d_m21[14]),
	.g /* IN */ (a1baseldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1base_inst_15
(
	.q /* OUT */ (a1_base[15]),
	.d /* IN */ (gpu_d_m21[15]),
	.g /* IN */ (a1baseldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1base_inst_16
(
	.q /* OUT */ (a1_base[16]),
	.d /* IN */ (gpu_d_m21[16]),
	.g /* IN */ (a1baseldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1base_inst_17
(
	.q /* OUT */ (a1_base[17]),
	.d /* IN */ (gpu_d_m21[17]),
	.g /* IN */ (a1baseldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1base_inst_18
(
	.q /* OUT */ (a1_base[18]),
	.d /* IN */ (gpu_d_m21[18]),
	.g /* IN */ (a1baseldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1base_inst_19
(
	.q /* OUT */ (a1_base[19]),
	.d /* IN */ (gpu_d_m21[19]),
	.g /* IN */ (a1baseldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1base_inst_20
(
	.q /* OUT */ (a1_base[20]),
	.d /* IN */ (gpu_d_m21[20]),
	.g /* IN */ (a1baseldg),
	.sys_clk(sys_clk) // Generated
);

// ADDRESS.NET (97) - a1flagldg : an2h
assign a1flagldg = a1flagld & load_strobe;

// ADDRESS.NET (98) - a1flags : ldp1q
ldp1q a1flags_inst_0
(
	.q /* OUT */ (a1_flags[0]),
	.d /* IN */ (gpu_d_lo21[0]),
	.g /* IN */ (a1flagldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1flags_inst_1
(
	.q /* OUT */ (a1_flags[1]),
	.d /* IN */ (gpu_d_lo21[1]),
	.g /* IN */ (a1flagldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1flags_inst_2
(
	.q /* OUT */ (a1_flags[2]),
	.d /* IN */ (gpu_d_lo21[2]),
	.g /* IN */ (a1flagldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1flags_inst_3
(
	.q /* OUT */ (a1_flags[3]),
	.d /* IN */ (gpu_d_lo21[3]),
	.g /* IN */ (a1flagldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1flags_inst_4
(
	.q /* OUT */ (a1_flags[4]),
	.d /* IN */ (gpu_d_lo21[4]),
	.g /* IN */ (a1flagldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1flags_inst_5
(
	.q /* OUT */ (a1_flags[5]),
	.d /* IN */ (gpu_d_lo21[5]),
	.g /* IN */ (a1flagldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1flags_inst_6
(
	.q /* OUT */ (a1_flags[6]),
	.d /* IN */ (gpu_d_lo21[6]),
	.g /* IN */ (a1flagldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1flags_inst_7
(
	.q /* OUT */ (a1_flags[7]),
	.d /* IN */ (gpu_d_lo21[7]),
	.g /* IN */ (a1flagldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1flags_inst_8
(
	.q /* OUT */ (a1_flags[8]),
	.d /* IN */ (gpu_d_lo21[8]),
	.g /* IN */ (a1flagldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1flags_inst_9
(
	.q /* OUT */ (a1_flags[9]),
	.d /* IN */ (gpu_d_lo21[9]),
	.g /* IN */ (a1flagldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1flags_inst_10
(
	.q /* OUT */ (a1_flags[10]),
	.d /* IN */ (gpu_d_lo21[10]),
	.g /* IN */ (a1flagldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1flags_inst_11
(
	.q /* OUT */ (a1_flags[11]),
	.d /* IN */ (gpu_d_lo21[11]),
	.g /* IN */ (a1flagldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1flags_inst_12
(
	.q /* OUT */ (a1_flags[12]),
	.d /* IN */ (gpu_d_lo21[12]),
	.g /* IN */ (a1flagldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1flags_inst_13
(
	.q /* OUT */ (a1_flags[13]),
	.d /* IN */ (gpu_d_lo21[13]),
	.g /* IN */ (a1flagldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1flags_inst_14
(
	.q /* OUT */ (a1_flags[14]),
	.d /* IN */ (gpu_d_lo21[14]),
	.g /* IN */ (a1flagldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1flags_inst_15
(
	.q /* OUT */ (a1_flags[15]),
	.d /* IN */ (gpu_d_lo21[15]),
	.g /* IN */ (a1flagldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1flags_inst_16
(
	.q /* OUT */ (a1_flags[16]),
	.d /* IN */ (gpu_d_lo21[16]),
	.g /* IN */ (a1flagldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1flags_inst_17
(
	.q /* OUT */ (a1_flags[17]),
	.d /* IN */ (gpu_d_lo21[17]),
	.g /* IN */ (a1flagldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1flags_inst_18
(
	.q /* OUT */ (a1_flags[18]),
	.d /* IN */ (gpu_d_lo21[18]),
	.g /* IN */ (a1flagldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1flags_inst_19
(
	.q /* OUT */ (a1_flags[19]),
	.d /* IN */ (gpu_d_lo21[19]),
	.g /* IN */ (a1flagldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1flags_inst_20
(
	.q /* OUT */ (a1_flags[20]),
	.d /* IN */ (gpu_d_lo21[20]),
	.g /* IN */ (a1flagldg),
	.sys_clk(sys_clk) // Generated
);

// ADDRESS.NET (99) - a1_pixp[0-1] : join
assign a1_pitch_0 = a1_flags[0];
assign a1_pitch_1 = a1_flags[1];

// ADDRESS.NET (100) - a1_pixs[0-2] : join
assign a1_pixsize_0_obuf = a1_flags[3];
assign a1_pixsize_1_obuf = a1_flags[4];
assign a1_pixsize_2_obuf = a1_flags[5];

// ADDRESS.NET (101) - a1_zoff[0-1] : join
assign a1_zoffset_0 = a1_flags[6];
assign a1_zoffset_1 = a1_flags[7];

// ADDRESS.NET (102) - a1unused[0] : join
assign unused_0 = a1_flags[8];

// ADDRESS.NET (103) - a1_wdth[0-5] : join
assign a1_width_0 = a1_flags[9];
assign a1_width_1 = a1_flags[10];
assign a1_width_2 = a1_flags[11];
assign a1_width_3 = a1_flags[12];
assign a1_width_4 = a1_flags[13];
assign a1_width_5 = a1_flags[14];

// ADDRESS.NET (104) - a1unused[1] : join
assign unused_1 = a1_flags[15];

// ADDRESS.NET (105) - a1addx[0] : nivm
assign a1addx_0 = a1_flags[16];

// ADDRESS.NET (106) - a1addx[1] : nivm
assign a1addx_1 = a1_flags[17];

// ADDRESS.NET (107) - a1addy : join
assign a1addy = a1_flags[18];

// ADDRESS.NET (108) - a1xsign : join
assign a1xsign = a1_flags[19];

// ADDRESS.NET (109) - a1ysign : join
assign a1ysign = a1_flags[20];

// ADDRESS.NET (113) - a1winldg : an2u
assign a1winldg = a1winld & load_strobe;

// ADDRESS.NET (114) - a1winx : ldp1q
ldp1q a1winx_inst_0
(
	.q /* OUT */ (a1_win_x_b0_obuf),
	.d /* IN */ (gpu_d_lo15[0]),
	.g /* IN */ (a1winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1winx_inst_1
(
	.q /* OUT */ (a1_win_x_b1_obuf),
	.d /* IN */ (gpu_d_lo15[1]),
	.g /* IN */ (a1winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1winx_inst_2
(
	.q /* OUT */ (a1_win_x_b2_obuf),
	.d /* IN */ (gpu_d_lo15[2]),
	.g /* IN */ (a1winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1winx_inst_3
(
	.q /* OUT */ (a1_win_x_b3_obuf),
	.d /* IN */ (gpu_d_lo15[3]),
	.g /* IN */ (a1winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1winx_inst_4
(
	.q /* OUT */ (a1_win_x_b4_obuf),
	.d /* IN */ (gpu_d_lo15[4]),
	.g /* IN */ (a1winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1winx_inst_5
(
	.q /* OUT */ (a1_win_x_b5_obuf),
	.d /* IN */ (gpu_d_lo15[5]),
	.g /* IN */ (a1winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1winx_inst_6
(
	.q /* OUT */ (a1_win_x_b6_obuf),
	.d /* IN */ (gpu_d_lo15[6]),
	.g /* IN */ (a1winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1winx_inst_7
(
	.q /* OUT */ (a1_win_x_b7_obuf),
	.d /* IN */ (gpu_d_lo15[7]),
	.g /* IN */ (a1winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1winx_inst_8
(
	.q /* OUT */ (a1_win_x_b8_obuf),
	.d /* IN */ (gpu_d_lo15[8]),
	.g /* IN */ (a1winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1winx_inst_9
(
	.q /* OUT */ (a1_win_x_b9_obuf),
	.d /* IN */ (gpu_d_lo15[9]),
	.g /* IN */ (a1winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1winx_inst_10
(
	.q /* OUT */ (a1_win_x_b10_obuf),
	.d /* IN */ (gpu_d_lo15[10]),
	.g /* IN */ (a1winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1winx_inst_11
(
	.q /* OUT */ (a1_win_x_b11_obuf),
	.d /* IN */ (gpu_d_lo15[11]),
	.g /* IN */ (a1winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1winx_inst_12
(
	.q /* OUT */ (a1_win_x_b12_obuf),
	.d /* IN */ (gpu_d_lo15[12]),
	.g /* IN */ (a1winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1winx_inst_13
(
	.q /* OUT */ (a1_win_x_b13_obuf),
	.d /* IN */ (gpu_d_lo15[13]),
	.g /* IN */ (a1winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1winx_inst_14
(
	.q /* OUT */ (a1_win_x_b14_obuf),
	.d /* IN */ (gpu_d_lo15[14]),
	.g /* IN */ (a1winldg),
	.sys_clk(sys_clk) // Generated
);

// ADDRESS.NET (115) - a1winy : ldp1q
ldp1q a1winy_inst_0
(
	.q /* OUT */ (a1_win_y[0]),
	.d /* IN */ (gpu_d_hi15[0]),
	.g /* IN */ (a1winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1winy_inst_1
(
	.q /* OUT */ (a1_win_y[1]),
	.d /* IN */ (gpu_d_hi15[1]),
	.g /* IN */ (a1winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1winy_inst_2
(
	.q /* OUT */ (a1_win_y[2]),
	.d /* IN */ (gpu_d_hi15[2]),
	.g /* IN */ (a1winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1winy_inst_3
(
	.q /* OUT */ (a1_win_y[3]),
	.d /* IN */ (gpu_d_hi15[3]),
	.g /* IN */ (a1winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1winy_inst_4
(
	.q /* OUT */ (a1_win_y[4]),
	.d /* IN */ (gpu_d_hi15[4]),
	.g /* IN */ (a1winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1winy_inst_5
(
	.q /* OUT */ (a1_win_y[5]),
	.d /* IN */ (gpu_d_hi15[5]),
	.g /* IN */ (a1winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1winy_inst_6
(
	.q /* OUT */ (a1_win_y[6]),
	.d /* IN */ (gpu_d_hi15[6]),
	.g /* IN */ (a1winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1winy_inst_7
(
	.q /* OUT */ (a1_win_y[7]),
	.d /* IN */ (gpu_d_hi15[7]),
	.g /* IN */ (a1winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1winy_inst_8
(
	.q /* OUT */ (a1_win_y[8]),
	.d /* IN */ (gpu_d_hi15[8]),
	.g /* IN */ (a1winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1winy_inst_9
(
	.q /* OUT */ (a1_win_y[9]),
	.d /* IN */ (gpu_d_hi15[9]),
	.g /* IN */ (a1winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1winy_inst_10
(
	.q /* OUT */ (a1_win_y[10]),
	.d /* IN */ (gpu_d_hi15[10]),
	.g /* IN */ (a1winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1winy_inst_11
(
	.q /* OUT */ (a1_win_y[11]),
	.d /* IN */ (gpu_d_hi15[11]),
	.g /* IN */ (a1winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1winy_inst_12
(
	.q /* OUT */ (a1_win_y[12]),
	.d /* IN */ (gpu_d_hi15[12]),
	.g /* IN */ (a1winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1winy_inst_13
(
	.q /* OUT */ (a1_win_y[13]),
	.d /* IN */ (gpu_d_hi15[13]),
	.g /* IN */ (a1winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1winy_inst_14
(
	.q /* OUT */ (a1_win_y[14]),
	.d /* IN */ (gpu_d_hi15[14]),
	.g /* IN */ (a1winldg),
	.sys_clk(sys_clk) // Generated
);

// ADDRESS.NET (119) - a1xt : fdsync16
fdsync16 a1xt_inst
(
	.q /* OUT */ ({a1_xt[0],a1_xt[1],a1_xt[2],a1_xt[3],a1_xt[4],a1_xt[5],a1_xt[6],a1_xt[7],a1_xt[8],a1_xt[9],a1_xt[10],a1_xt[11],a1_xt[12],a1_xt[13],a1_xt[14],a1_xt[15]}),
	.d /* IN */ ({data_x[0],data_x[1],data_x[2],data_x[3],data_x[4],data_x[5],data_x[6],data_x[7],data_x[8],data_x[9],data_x[10],data_x[11],data_x[12],data_x[13],data_x[14],data_x[15]}),
	.ld /* IN */ (a1ptrld),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// ADDRESS.NET (120) - a1x : nivm
assign a1_x_b0_obuf = a1_xt[0];
assign a1_x_b1_obuf = a1_xt[1];
assign a1_x_b2_obuf = a1_xt[2];
assign a1_x_b3_obuf = a1_xt[3];
assign a1_x_b4_obuf = a1_xt[4];
assign a1_x_b5_obuf = a1_xt[5];
assign a1_x_b6_obuf = a1_xt[6];
assign a1_x_b7_obuf = a1_xt[7];
assign a1_x_b8_obuf = a1_xt[8];
assign a1_x_b9_obuf = a1_xt[9];
assign a1_x_b10_obuf = a1_xt[10];
assign a1_x_b11_obuf = a1_xt[11];
assign a1_x_b12_obuf = a1_xt[12];
assign a1_x_b13_obuf = a1_xt[13];
assign a1_x_b14_obuf = a1_xt[14];
assign a1_x_b15_obuf = a1_xt[15];

// ADDRESS.NET (121) - a1y : fdsync16
fdsync16 a1y_inst
(
	.q /* OUT */ ({a1_y[0],a1_y[1],a1_y[2],a1_y[3],a1_y[4],a1_y[5],a1_y[6],a1_y[7],a1_y[8],a1_y[9],a1_y[10],a1_y[11],a1_y[12],a1_y[13],a1_y[14],a1_y[15]}),
	.d /* IN */ ({data_y[0],data_y[1],data_y[2],data_y[3],data_y[4],data_y[5],data_y[6],data_y[7],data_y[8],data_y[9],data_y[10],data_y[11],data_y[12],data_y[13],data_y[14],data_y[15]}),
	.ld /* IN */ (a1ptrld),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// ADDRESS.NET (125) - a1stepldg : an2u
assign a1stepldg = a1stepld & load_strobe;

// ADDRESS.NET (126) - a1stepfldg : an2u
assign a1stepfldg = a1stepfld & load_strobe;

// ADDRESS.NET (127) - a1stepx : ldp1q
ldp1q a1stepx_inst_0
(
	.q /* OUT */ (a1_step_x[0]),
	.d /* IN */ (gpu_d_lo16[0]),
	.g /* IN */ (a1stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepx_inst_1
(
	.q /* OUT */ (a1_step_x[1]),
	.d /* IN */ (gpu_d_lo16[1]),
	.g /* IN */ (a1stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepx_inst_2
(
	.q /* OUT */ (a1_step_x[2]),
	.d /* IN */ (gpu_d_lo16[2]),
	.g /* IN */ (a1stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepx_inst_3
(
	.q /* OUT */ (a1_step_x[3]),
	.d /* IN */ (gpu_d_lo16[3]),
	.g /* IN */ (a1stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepx_inst_4
(
	.q /* OUT */ (a1_step_x[4]),
	.d /* IN */ (gpu_d_lo16[4]),
	.g /* IN */ (a1stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepx_inst_5
(
	.q /* OUT */ (a1_step_x[5]),
	.d /* IN */ (gpu_d_lo16[5]),
	.g /* IN */ (a1stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepx_inst_6
(
	.q /* OUT */ (a1_step_x[6]),
	.d /* IN */ (gpu_d_lo16[6]),
	.g /* IN */ (a1stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepx_inst_7
(
	.q /* OUT */ (a1_step_x[7]),
	.d /* IN */ (gpu_d_lo16[7]),
	.g /* IN */ (a1stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepx_inst_8
(
	.q /* OUT */ (a1_step_x[8]),
	.d /* IN */ (gpu_d_lo16[8]),
	.g /* IN */ (a1stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepx_inst_9
(
	.q /* OUT */ (a1_step_x[9]),
	.d /* IN */ (gpu_d_lo16[9]),
	.g /* IN */ (a1stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepx_inst_10
(
	.q /* OUT */ (a1_step_x[10]),
	.d /* IN */ (gpu_d_lo16[10]),
	.g /* IN */ (a1stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepx_inst_11
(
	.q /* OUT */ (a1_step_x[11]),
	.d /* IN */ (gpu_d_lo16[11]),
	.g /* IN */ (a1stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepx_inst_12
(
	.q /* OUT */ (a1_step_x[12]),
	.d /* IN */ (gpu_d_lo16[12]),
	.g /* IN */ (a1stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepx_inst_13
(
	.q /* OUT */ (a1_step_x[13]),
	.d /* IN */ (gpu_d_lo16[13]),
	.g /* IN */ (a1stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepx_inst_14
(
	.q /* OUT */ (a1_step_x[14]),
	.d /* IN */ (gpu_d_lo16[14]),
	.g /* IN */ (a1stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepx_inst_15
(
	.q /* OUT */ (a1_step_x[15]),
	.d /* IN */ (gpu_d_lo16[15]),
	.g /* IN */ (a1stepldg),
	.sys_clk(sys_clk) // Generated
);

// ADDRESS.NET (128) - a1stepy : ldp1q
ldp1q a1stepy_inst_0
(
	.q /* OUT */ (a1_step_y[0]),
	.d /* IN */ (gpu_d_hi16[0]),
	.g /* IN */ (a1stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepy_inst_1
(
	.q /* OUT */ (a1_step_y[1]),
	.d /* IN */ (gpu_d_hi16[1]),
	.g /* IN */ (a1stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepy_inst_2
(
	.q /* OUT */ (a1_step_y[2]),
	.d /* IN */ (gpu_d_hi16[2]),
	.g /* IN */ (a1stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepy_inst_3
(
	.q /* OUT */ (a1_step_y[3]),
	.d /* IN */ (gpu_d_hi16[3]),
	.g /* IN */ (a1stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepy_inst_4
(
	.q /* OUT */ (a1_step_y[4]),
	.d /* IN */ (gpu_d_hi16[4]),
	.g /* IN */ (a1stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepy_inst_5
(
	.q /* OUT */ (a1_step_y[5]),
	.d /* IN */ (gpu_d_hi16[5]),
	.g /* IN */ (a1stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepy_inst_6
(
	.q /* OUT */ (a1_step_y[6]),
	.d /* IN */ (gpu_d_hi16[6]),
	.g /* IN */ (a1stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepy_inst_7
(
	.q /* OUT */ (a1_step_y[7]),
	.d /* IN */ (gpu_d_hi16[7]),
	.g /* IN */ (a1stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepy_inst_8
(
	.q /* OUT */ (a1_step_y[8]),
	.d /* IN */ (gpu_d_hi16[8]),
	.g /* IN */ (a1stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepy_inst_9
(
	.q /* OUT */ (a1_step_y[9]),
	.d /* IN */ (gpu_d_hi16[9]),
	.g /* IN */ (a1stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepy_inst_10
(
	.q /* OUT */ (a1_step_y[10]),
	.d /* IN */ (gpu_d_hi16[10]),
	.g /* IN */ (a1stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepy_inst_11
(
	.q /* OUT */ (a1_step_y[11]),
	.d /* IN */ (gpu_d_hi16[11]),
	.g /* IN */ (a1stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepy_inst_12
(
	.q /* OUT */ (a1_step_y[12]),
	.d /* IN */ (gpu_d_hi16[12]),
	.g /* IN */ (a1stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepy_inst_13
(
	.q /* OUT */ (a1_step_y[13]),
	.d /* IN */ (gpu_d_hi16[13]),
	.g /* IN */ (a1stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepy_inst_14
(
	.q /* OUT */ (a1_step_y[14]),
	.d /* IN */ (gpu_d_hi16[14]),
	.g /* IN */ (a1stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepy_inst_15
(
	.q /* OUT */ (a1_step_y[15]),
	.d /* IN */ (gpu_d_hi16[15]),
	.g /* IN */ (a1stepldg),
	.sys_clk(sys_clk) // Generated
);

// ADDRESS.NET (129) - a1stepfx : ldp1q
ldp1q a1stepfx_inst_0
(
	.q /* OUT */ (a1_stepf_x[0]),
	.d /* IN */ (gpu_d_lo16[0]),
	.g /* IN */ (a1stepfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepfx_inst_1
(
	.q /* OUT */ (a1_stepf_x[1]),
	.d /* IN */ (gpu_d_lo16[1]),
	.g /* IN */ (a1stepfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepfx_inst_2
(
	.q /* OUT */ (a1_stepf_x[2]),
	.d /* IN */ (gpu_d_lo16[2]),
	.g /* IN */ (a1stepfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepfx_inst_3
(
	.q /* OUT */ (a1_stepf_x[3]),
	.d /* IN */ (gpu_d_lo16[3]),
	.g /* IN */ (a1stepfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepfx_inst_4
(
	.q /* OUT */ (a1_stepf_x[4]),
	.d /* IN */ (gpu_d_lo16[4]),
	.g /* IN */ (a1stepfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepfx_inst_5
(
	.q /* OUT */ (a1_stepf_x[5]),
	.d /* IN */ (gpu_d_lo16[5]),
	.g /* IN */ (a1stepfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepfx_inst_6
(
	.q /* OUT */ (a1_stepf_x[6]),
	.d /* IN */ (gpu_d_lo16[6]),
	.g /* IN */ (a1stepfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepfx_inst_7
(
	.q /* OUT */ (a1_stepf_x[7]),
	.d /* IN */ (gpu_d_lo16[7]),
	.g /* IN */ (a1stepfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepfx_inst_8
(
	.q /* OUT */ (a1_stepf_x[8]),
	.d /* IN */ (gpu_d_lo16[8]),
	.g /* IN */ (a1stepfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepfx_inst_9
(
	.q /* OUT */ (a1_stepf_x[9]),
	.d /* IN */ (gpu_d_lo16[9]),
	.g /* IN */ (a1stepfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepfx_inst_10
(
	.q /* OUT */ (a1_stepf_x[10]),
	.d /* IN */ (gpu_d_lo16[10]),
	.g /* IN */ (a1stepfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepfx_inst_11
(
	.q /* OUT */ (a1_stepf_x[11]),
	.d /* IN */ (gpu_d_lo16[11]),
	.g /* IN */ (a1stepfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepfx_inst_12
(
	.q /* OUT */ (a1_stepf_x[12]),
	.d /* IN */ (gpu_d_lo16[12]),
	.g /* IN */ (a1stepfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepfx_inst_13
(
	.q /* OUT */ (a1_stepf_x[13]),
	.d /* IN */ (gpu_d_lo16[13]),
	.g /* IN */ (a1stepfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepfx_inst_14
(
	.q /* OUT */ (a1_stepf_x[14]),
	.d /* IN */ (gpu_d_lo16[14]),
	.g /* IN */ (a1stepfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepfx_inst_15
(
	.q /* OUT */ (a1_stepf_x[15]),
	.d /* IN */ (gpu_d_lo16[15]),
	.g /* IN */ (a1stepfldg),
	.sys_clk(sys_clk) // Generated
);

// ADDRESS.NET (130) - a1stepfy : ldp1q
ldp1q a1stepfy_inst_0
(
	.q /* OUT */ (a1_stepf_y[0]),
	.d /* IN */ (gpu_d_hi16[0]),
	.g /* IN */ (a1stepfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepfy_inst_1
(
	.q /* OUT */ (a1_stepf_y[1]),
	.d /* IN */ (gpu_d_hi16[1]),
	.g /* IN */ (a1stepfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepfy_inst_2
(
	.q /* OUT */ (a1_stepf_y[2]),
	.d /* IN */ (gpu_d_hi16[2]),
	.g /* IN */ (a1stepfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepfy_inst_3
(
	.q /* OUT */ (a1_stepf_y[3]),
	.d /* IN */ (gpu_d_hi16[3]),
	.g /* IN */ (a1stepfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepfy_inst_4
(
	.q /* OUT */ (a1_stepf_y[4]),
	.d /* IN */ (gpu_d_hi16[4]),
	.g /* IN */ (a1stepfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepfy_inst_5
(
	.q /* OUT */ (a1_stepf_y[5]),
	.d /* IN */ (gpu_d_hi16[5]),
	.g /* IN */ (a1stepfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepfy_inst_6
(
	.q /* OUT */ (a1_stepf_y[6]),
	.d /* IN */ (gpu_d_hi16[6]),
	.g /* IN */ (a1stepfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepfy_inst_7
(
	.q /* OUT */ (a1_stepf_y[7]),
	.d /* IN */ (gpu_d_hi16[7]),
	.g /* IN */ (a1stepfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepfy_inst_8
(
	.q /* OUT */ (a1_stepf_y[8]),
	.d /* IN */ (gpu_d_hi16[8]),
	.g /* IN */ (a1stepfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepfy_inst_9
(
	.q /* OUT */ (a1_stepf_y[9]),
	.d /* IN */ (gpu_d_hi16[9]),
	.g /* IN */ (a1stepfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepfy_inst_10
(
	.q /* OUT */ (a1_stepf_y[10]),
	.d /* IN */ (gpu_d_hi16[10]),
	.g /* IN */ (a1stepfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepfy_inst_11
(
	.q /* OUT */ (a1_stepf_y[11]),
	.d /* IN */ (gpu_d_hi16[11]),
	.g /* IN */ (a1stepfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepfy_inst_12
(
	.q /* OUT */ (a1_stepf_y[12]),
	.d /* IN */ (gpu_d_hi16[12]),
	.g /* IN */ (a1stepfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepfy_inst_13
(
	.q /* OUT */ (a1_stepf_y[13]),
	.d /* IN */ (gpu_d_hi16[13]),
	.g /* IN */ (a1stepfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepfy_inst_14
(
	.q /* OUT */ (a1_stepf_y[14]),
	.d /* IN */ (gpu_d_hi16[14]),
	.g /* IN */ (a1stepfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1stepfy_inst_15
(
	.q /* OUT */ (a1_stepf_y[15]),
	.d /* IN */ (gpu_d_hi16[15]),
	.g /* IN */ (a1stepfldg),
	.sys_clk(sys_clk) // Generated
);

// ADDRESS.NET (134) - a1fracx : fdsync16
fdsync16 a1fracx_inst
(
	.q /* OUT */ ({a1_frac_x[0],a1_frac_x[1],a1_frac_x[2],a1_frac_x[3],a1_frac_x[4],a1_frac_x[5],a1_frac_x[6],a1_frac_x[7],a1_frac_x[8],a1_frac_x[9],a1_frac_x[10],a1_frac_x[11],a1_frac_x[12],a1_frac_x[13],a1_frac_x[14],a1_frac_x[15]}),
	.d /* IN */ ({data_x[0],data_x[1],data_x[2],data_x[3],data_x[4],data_x[5],data_x[6],data_x[7],data_x[8],data_x[9],data_x[10],data_x[11],data_x[12],data_x[13],data_x[14],data_x[15]}),
	.ld /* IN */ (a1fracld),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// ADDRESS.NET (135) - a1fracy : fdsync16
fdsync16 a1fracy_inst
(
	.q /* OUT */ ({a1_frac_y[0],a1_frac_y[1],a1_frac_y[2],a1_frac_y[3],a1_frac_y[4],a1_frac_y[5],a1_frac_y[6],a1_frac_y[7],a1_frac_y[8],a1_frac_y[9],a1_frac_y[10],a1_frac_y[11],a1_frac_y[12],a1_frac_y[13],a1_frac_y[14],a1_frac_y[15]}),
	.d /* IN */ ({data_y[0],data_y[1],data_y[2],data_y[3],data_y[4],data_y[5],data_y[6],data_y[7],data_y[8],data_y[9],data_y[10],data_y[11],data_y[12],data_y[13],data_y[14],data_y[15]}),
	.ld /* IN */ (a1fracld),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// ADDRESS.NET (139) - a1incldg : an2u
assign a1incldg = a1incld & load_strobe;

// ADDRESS.NET (140) - a1incfldg : an2u
assign a1incfldg = a1incfld & load_strobe;

// ADDRESS.NET (141) - a1incx : ldp1q
ldp1q a1incx_inst_0
(
	.q /* OUT */ (a1_inc_x[0]),
	.d /* IN */ (gpu_d_lo16[0]),
	.g /* IN */ (a1incldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incx_inst_1
(
	.q /* OUT */ (a1_inc_x[1]),
	.d /* IN */ (gpu_d_lo16[1]),
	.g /* IN */ (a1incldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incx_inst_2
(
	.q /* OUT */ (a1_inc_x[2]),
	.d /* IN */ (gpu_d_lo16[2]),
	.g /* IN */ (a1incldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incx_inst_3
(
	.q /* OUT */ (a1_inc_x[3]),
	.d /* IN */ (gpu_d_lo16[3]),
	.g /* IN */ (a1incldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incx_inst_4
(
	.q /* OUT */ (a1_inc_x[4]),
	.d /* IN */ (gpu_d_lo16[4]),
	.g /* IN */ (a1incldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incx_inst_5
(
	.q /* OUT */ (a1_inc_x[5]),
	.d /* IN */ (gpu_d_lo16[5]),
	.g /* IN */ (a1incldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incx_inst_6
(
	.q /* OUT */ (a1_inc_x[6]),
	.d /* IN */ (gpu_d_lo16[6]),
	.g /* IN */ (a1incldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incx_inst_7
(
	.q /* OUT */ (a1_inc_x[7]),
	.d /* IN */ (gpu_d_lo16[7]),
	.g /* IN */ (a1incldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incx_inst_8
(
	.q /* OUT */ (a1_inc_x[8]),
	.d /* IN */ (gpu_d_lo16[8]),
	.g /* IN */ (a1incldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incx_inst_9
(
	.q /* OUT */ (a1_inc_x[9]),
	.d /* IN */ (gpu_d_lo16[9]),
	.g /* IN */ (a1incldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incx_inst_10
(
	.q /* OUT */ (a1_inc_x[10]),
	.d /* IN */ (gpu_d_lo16[10]),
	.g /* IN */ (a1incldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incx_inst_11
(
	.q /* OUT */ (a1_inc_x[11]),
	.d /* IN */ (gpu_d_lo16[11]),
	.g /* IN */ (a1incldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incx_inst_12
(
	.q /* OUT */ (a1_inc_x[12]),
	.d /* IN */ (gpu_d_lo16[12]),
	.g /* IN */ (a1incldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incx_inst_13
(
	.q /* OUT */ (a1_inc_x[13]),
	.d /* IN */ (gpu_d_lo16[13]),
	.g /* IN */ (a1incldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incx_inst_14
(
	.q /* OUT */ (a1_inc_x[14]),
	.d /* IN */ (gpu_d_lo16[14]),
	.g /* IN */ (a1incldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incx_inst_15
(
	.q /* OUT */ (a1_inc_x[15]),
	.d /* IN */ (gpu_d_lo16[15]),
	.g /* IN */ (a1incldg),
	.sys_clk(sys_clk) // Generated
);

// ADDRESS.NET (142) - a1incy : ldp1q
ldp1q a1incy_inst_0
(
	.q /* OUT */ (a1_inc_y[0]),
	.d /* IN */ (gpu_d_hi16[0]),
	.g /* IN */ (a1incldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incy_inst_1
(
	.q /* OUT */ (a1_inc_y[1]),
	.d /* IN */ (gpu_d_hi16[1]),
	.g /* IN */ (a1incldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incy_inst_2
(
	.q /* OUT */ (a1_inc_y[2]),
	.d /* IN */ (gpu_d_hi16[2]),
	.g /* IN */ (a1incldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incy_inst_3
(
	.q /* OUT */ (a1_inc_y[3]),
	.d /* IN */ (gpu_d_hi16[3]),
	.g /* IN */ (a1incldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incy_inst_4
(
	.q /* OUT */ (a1_inc_y[4]),
	.d /* IN */ (gpu_d_hi16[4]),
	.g /* IN */ (a1incldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incy_inst_5
(
	.q /* OUT */ (a1_inc_y[5]),
	.d /* IN */ (gpu_d_hi16[5]),
	.g /* IN */ (a1incldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incy_inst_6
(
	.q /* OUT */ (a1_inc_y[6]),
	.d /* IN */ (gpu_d_hi16[6]),
	.g /* IN */ (a1incldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incy_inst_7
(
	.q /* OUT */ (a1_inc_y[7]),
	.d /* IN */ (gpu_d_hi16[7]),
	.g /* IN */ (a1incldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incy_inst_8
(
	.q /* OUT */ (a1_inc_y[8]),
	.d /* IN */ (gpu_d_hi16[8]),
	.g /* IN */ (a1incldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incy_inst_9
(
	.q /* OUT */ (a1_inc_y[9]),
	.d /* IN */ (gpu_d_hi16[9]),
	.g /* IN */ (a1incldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incy_inst_10
(
	.q /* OUT */ (a1_inc_y[10]),
	.d /* IN */ (gpu_d_hi16[10]),
	.g /* IN */ (a1incldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incy_inst_11
(
	.q /* OUT */ (a1_inc_y[11]),
	.d /* IN */ (gpu_d_hi16[11]),
	.g /* IN */ (a1incldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incy_inst_12
(
	.q /* OUT */ (a1_inc_y[12]),
	.d /* IN */ (gpu_d_hi16[12]),
	.g /* IN */ (a1incldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incy_inst_13
(
	.q /* OUT */ (a1_inc_y[13]),
	.d /* IN */ (gpu_d_hi16[13]),
	.g /* IN */ (a1incldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incy_inst_14
(
	.q /* OUT */ (a1_inc_y[14]),
	.d /* IN */ (gpu_d_hi16[14]),
	.g /* IN */ (a1incldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incy_inst_15
(
	.q /* OUT */ (a1_inc_y[15]),
	.d /* IN */ (gpu_d_hi16[15]),
	.g /* IN */ (a1incldg),
	.sys_clk(sys_clk) // Generated
);

// ADDRESS.NET (143) - a1incfx : ldp1q
ldp1q a1incfx_inst_0
(
	.q /* OUT */ (a1_incf_x[0]),
	.d /* IN */ (gpu_d_lo16[0]),
	.g /* IN */ (a1incfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incfx_inst_1
(
	.q /* OUT */ (a1_incf_x[1]),
	.d /* IN */ (gpu_d_lo16[1]),
	.g /* IN */ (a1incfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incfx_inst_2
(
	.q /* OUT */ (a1_incf_x[2]),
	.d /* IN */ (gpu_d_lo16[2]),
	.g /* IN */ (a1incfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incfx_inst_3
(
	.q /* OUT */ (a1_incf_x[3]),
	.d /* IN */ (gpu_d_lo16[3]),
	.g /* IN */ (a1incfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incfx_inst_4
(
	.q /* OUT */ (a1_incf_x[4]),
	.d /* IN */ (gpu_d_lo16[4]),
	.g /* IN */ (a1incfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incfx_inst_5
(
	.q /* OUT */ (a1_incf_x[5]),
	.d /* IN */ (gpu_d_lo16[5]),
	.g /* IN */ (a1incfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incfx_inst_6
(
	.q /* OUT */ (a1_incf_x[6]),
	.d /* IN */ (gpu_d_lo16[6]),
	.g /* IN */ (a1incfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incfx_inst_7
(
	.q /* OUT */ (a1_incf_x[7]),
	.d /* IN */ (gpu_d_lo16[7]),
	.g /* IN */ (a1incfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incfx_inst_8
(
	.q /* OUT */ (a1_incf_x[8]),
	.d /* IN */ (gpu_d_lo16[8]),
	.g /* IN */ (a1incfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incfx_inst_9
(
	.q /* OUT */ (a1_incf_x[9]),
	.d /* IN */ (gpu_d_lo16[9]),
	.g /* IN */ (a1incfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incfx_inst_10
(
	.q /* OUT */ (a1_incf_x[10]),
	.d /* IN */ (gpu_d_lo16[10]),
	.g /* IN */ (a1incfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incfx_inst_11
(
	.q /* OUT */ (a1_incf_x[11]),
	.d /* IN */ (gpu_d_lo16[11]),
	.g /* IN */ (a1incfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incfx_inst_12
(
	.q /* OUT */ (a1_incf_x[12]),
	.d /* IN */ (gpu_d_lo16[12]),
	.g /* IN */ (a1incfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incfx_inst_13
(
	.q /* OUT */ (a1_incf_x[13]),
	.d /* IN */ (gpu_d_lo16[13]),
	.g /* IN */ (a1incfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incfx_inst_14
(
	.q /* OUT */ (a1_incf_x[14]),
	.d /* IN */ (gpu_d_lo16[14]),
	.g /* IN */ (a1incfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incfx_inst_15
(
	.q /* OUT */ (a1_incf_x[15]),
	.d /* IN */ (gpu_d_lo16[15]),
	.g /* IN */ (a1incfldg),
	.sys_clk(sys_clk) // Generated
);

// ADDRESS.NET (144) - a1incfy : ldp1q
ldp1q a1incfy_inst_0
(
	.q /* OUT */ (a1_incf_y[0]),
	.d /* IN */ (gpu_d_hi16[0]),
	.g /* IN */ (a1incfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incfy_inst_1
(
	.q /* OUT */ (a1_incf_y[1]),
	.d /* IN */ (gpu_d_hi16[1]),
	.g /* IN */ (a1incfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incfy_inst_2
(
	.q /* OUT */ (a1_incf_y[2]),
	.d /* IN */ (gpu_d_hi16[2]),
	.g /* IN */ (a1incfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incfy_inst_3
(
	.q /* OUT */ (a1_incf_y[3]),
	.d /* IN */ (gpu_d_hi16[3]),
	.g /* IN */ (a1incfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incfy_inst_4
(
	.q /* OUT */ (a1_incf_y[4]),
	.d /* IN */ (gpu_d_hi16[4]),
	.g /* IN */ (a1incfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incfy_inst_5
(
	.q /* OUT */ (a1_incf_y[5]),
	.d /* IN */ (gpu_d_hi16[5]),
	.g /* IN */ (a1incfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incfy_inst_6
(
	.q /* OUT */ (a1_incf_y[6]),
	.d /* IN */ (gpu_d_hi16[6]),
	.g /* IN */ (a1incfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incfy_inst_7
(
	.q /* OUT */ (a1_incf_y[7]),
	.d /* IN */ (gpu_d_hi16[7]),
	.g /* IN */ (a1incfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incfy_inst_8
(
	.q /* OUT */ (a1_incf_y[8]),
	.d /* IN */ (gpu_d_hi16[8]),
	.g /* IN */ (a1incfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incfy_inst_9
(
	.q /* OUT */ (a1_incf_y[9]),
	.d /* IN */ (gpu_d_hi16[9]),
	.g /* IN */ (a1incfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incfy_inst_10
(
	.q /* OUT */ (a1_incf_y[10]),
	.d /* IN */ (gpu_d_hi16[10]),
	.g /* IN */ (a1incfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incfy_inst_11
(
	.q /* OUT */ (a1_incf_y[11]),
	.d /* IN */ (gpu_d_hi16[11]),
	.g /* IN */ (a1incfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incfy_inst_12
(
	.q /* OUT */ (a1_incf_y[12]),
	.d /* IN */ (gpu_d_hi16[12]),
	.g /* IN */ (a1incfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incfy_inst_13
(
	.q /* OUT */ (a1_incf_y[13]),
	.d /* IN */ (gpu_d_hi16[13]),
	.g /* IN */ (a1incfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incfy_inst_14
(
	.q /* OUT */ (a1_incf_y[14]),
	.d /* IN */ (gpu_d_hi16[14]),
	.g /* IN */ (a1incfldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a1incfy_inst_15
(
	.q /* OUT */ (a1_incf_y[15]),
	.d /* IN */ (gpu_d_hi16[15]),
	.g /* IN */ (a1incfldg),
	.sys_clk(sys_clk) // Generated
);

// ADDRESS.NET (150) - a2baseldg : an2u
assign a2baseldg = a2baseld & load_strobe;

// ADDRESS.NET (151) - a2base : ldp1q
ldp1q a2base_inst_0
(
	.q /* OUT */ (a2_base[0]),
	.d /* IN */ (gpu_d_m21[0]),
	.g /* IN */ (a2baseldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2base_inst_1
(
	.q /* OUT */ (a2_base[1]),
	.d /* IN */ (gpu_d_m21[1]),
	.g /* IN */ (a2baseldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2base_inst_2
(
	.q /* OUT */ (a2_base[2]),
	.d /* IN */ (gpu_d_m21[2]),
	.g /* IN */ (a2baseldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2base_inst_3
(
	.q /* OUT */ (a2_base[3]),
	.d /* IN */ (gpu_d_m21[3]),
	.g /* IN */ (a2baseldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2base_inst_4
(
	.q /* OUT */ (a2_base[4]),
	.d /* IN */ (gpu_d_m21[4]),
	.g /* IN */ (a2baseldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2base_inst_5
(
	.q /* OUT */ (a2_base[5]),
	.d /* IN */ (gpu_d_m21[5]),
	.g /* IN */ (a2baseldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2base_inst_6
(
	.q /* OUT */ (a2_base[6]),
	.d /* IN */ (gpu_d_m21[6]),
	.g /* IN */ (a2baseldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2base_inst_7
(
	.q /* OUT */ (a2_base[7]),
	.d /* IN */ (gpu_d_m21[7]),
	.g /* IN */ (a2baseldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2base_inst_8
(
	.q /* OUT */ (a2_base[8]),
	.d /* IN */ (gpu_d_m21[8]),
	.g /* IN */ (a2baseldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2base_inst_9
(
	.q /* OUT */ (a2_base[9]),
	.d /* IN */ (gpu_d_m21[9]),
	.g /* IN */ (a2baseldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2base_inst_10
(
	.q /* OUT */ (a2_base[10]),
	.d /* IN */ (gpu_d_m21[10]),
	.g /* IN */ (a2baseldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2base_inst_11
(
	.q /* OUT */ (a2_base[11]),
	.d /* IN */ (gpu_d_m21[11]),
	.g /* IN */ (a2baseldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2base_inst_12
(
	.q /* OUT */ (a2_base[12]),
	.d /* IN */ (gpu_d_m21[12]),
	.g /* IN */ (a2baseldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2base_inst_13
(
	.q /* OUT */ (a2_base[13]),
	.d /* IN */ (gpu_d_m21[13]),
	.g /* IN */ (a2baseldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2base_inst_14
(
	.q /* OUT */ (a2_base[14]),
	.d /* IN */ (gpu_d_m21[14]),
	.g /* IN */ (a2baseldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2base_inst_15
(
	.q /* OUT */ (a2_base[15]),
	.d /* IN */ (gpu_d_m21[15]),
	.g /* IN */ (a2baseldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2base_inst_16
(
	.q /* OUT */ (a2_base[16]),
	.d /* IN */ (gpu_d_m21[16]),
	.g /* IN */ (a2baseldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2base_inst_17
(
	.q /* OUT */ (a2_base[17]),
	.d /* IN */ (gpu_d_m21[17]),
	.g /* IN */ (a2baseldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2base_inst_18
(
	.q /* OUT */ (a2_base[18]),
	.d /* IN */ (gpu_d_m21[18]),
	.g /* IN */ (a2baseldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2base_inst_19
(
	.q /* OUT */ (a2_base[19]),
	.d /* IN */ (gpu_d_m21[19]),
	.g /* IN */ (a2baseldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2base_inst_20
(
	.q /* OUT */ (a2_base[20]),
	.d /* IN */ (gpu_d_m21[20]),
	.g /* IN */ (a2baseldg),
	.sys_clk(sys_clk) // Generated
);

// ADDRESS.NET (155) - a2flagldg : an2h
assign a2flagldg = a2flagld & load_strobe;

// ADDRESS.NET (156) - a2flags : ldp1q
ldp1q a2flags_inst_0
(
	.q /* OUT */ (a2_flags[0]),
	.d /* IN */ (gpu_d_lo21[0]),
	.g /* IN */ (a2flagldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2flags_inst_1
(
	.q /* OUT */ (a2_flags[1]),
	.d /* IN */ (gpu_d_lo21[1]),
	.g /* IN */ (a2flagldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2flags_inst_2
(
	.q /* OUT */ (a2_flags[2]),
	.d /* IN */ (gpu_d_lo21[2]),
	.g /* IN */ (a2flagldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2flags_inst_3
(
	.q /* OUT */ (a2_flags[3]),
	.d /* IN */ (gpu_d_lo21[3]),
	.g /* IN */ (a2flagldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2flags_inst_4
(
	.q /* OUT */ (a2_flags[4]),
	.d /* IN */ (gpu_d_lo21[4]),
	.g /* IN */ (a2flagldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2flags_inst_5
(
	.q /* OUT */ (a2_flags[5]),
	.d /* IN */ (gpu_d_lo21[5]),
	.g /* IN */ (a2flagldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2flags_inst_6
(
	.q /* OUT */ (a2_flags[6]),
	.d /* IN */ (gpu_d_lo21[6]),
	.g /* IN */ (a2flagldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2flags_inst_7
(
	.q /* OUT */ (a2_flags[7]),
	.d /* IN */ (gpu_d_lo21[7]),
	.g /* IN */ (a2flagldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2flags_inst_8
(
	.q /* OUT */ (a2_flags[8]),
	.d /* IN */ (gpu_d_lo21[8]),
	.g /* IN */ (a2flagldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2flags_inst_9
(
	.q /* OUT */ (a2_flags[9]),
	.d /* IN */ (gpu_d_lo21[9]),
	.g /* IN */ (a2flagldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2flags_inst_10
(
	.q /* OUT */ (a2_flags[10]),
	.d /* IN */ (gpu_d_lo21[10]),
	.g /* IN */ (a2flagldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2flags_inst_11
(
	.q /* OUT */ (a2_flags[11]),
	.d /* IN */ (gpu_d_lo21[11]),
	.g /* IN */ (a2flagldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2flags_inst_12
(
	.q /* OUT */ (a2_flags[12]),
	.d /* IN */ (gpu_d_lo21[12]),
	.g /* IN */ (a2flagldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2flags_inst_13
(
	.q /* OUT */ (a2_flags[13]),
	.d /* IN */ (gpu_d_lo21[13]),
	.g /* IN */ (a2flagldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2flags_inst_14
(
	.q /* OUT */ (a2_flags[14]),
	.d /* IN */ (gpu_d_lo21[14]),
	.g /* IN */ (a2flagldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2flags_inst_15
(
	.q /* OUT */ (a2_flags[15]),
	.d /* IN */ (gpu_d_lo21[15]),
	.g /* IN */ (a2flagldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2flags_inst_16
(
	.q /* OUT */ (a2_flags[16]),
	.d /* IN */ (gpu_d_lo21[16]),
	.g /* IN */ (a2flagldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2flags_inst_17
(
	.q /* OUT */ (a2_flags[17]),
	.d /* IN */ (gpu_d_lo21[17]),
	.g /* IN */ (a2flagldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2flags_inst_18
(
	.q /* OUT */ (a2_flags[18]),
	.d /* IN */ (gpu_d_lo21[18]),
	.g /* IN */ (a2flagldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2flags_inst_19
(
	.q /* OUT */ (a2_flags[19]),
	.d /* IN */ (gpu_d_lo21[19]),
	.g /* IN */ (a2flagldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2flags_inst_20
(
	.q /* OUT */ (a2_flags[20]),
	.d /* IN */ (gpu_d_lo21[20]),
	.g /* IN */ (a2flagldg),
	.sys_clk(sys_clk) // Generated
);

// ADDRESS.NET (157) - a2_pixp[0-1] : join
assign a2_pitch_0 = a2_flags[0];
assign a2_pitch_1 = a2_flags[1];

// ADDRESS.NET (158) - a2_pixs[0-2] : join
assign a2_pixsize_0_obuf = a2_flags[3];
assign a2_pixsize_1_obuf = a2_flags[4];
assign a2_pixsize_2_obuf = a2_flags[5];

// ADDRESS.NET (159) - a2_zoff[0-1] : join
assign a2_zoffset_0 = a2_flags[6];
assign a2_zoffset_1 = a2_flags[7];

// ADDRESS.NET (160) - a2unused[2] : join
assign unused_2 = a2_flags[8];

// ADDRESS.NET (161) - a2_wdth[0-5] : join
assign a2_width_0 = a2_flags[9];
assign a2_width_1 = a2_flags[10];
assign a2_width_2 = a2_flags[11];
assign a2_width_3 = a2_flags[12];
assign a2_width_4 = a2_flags[13];
assign a2_width_5 = a2_flags[14];

// ADDRESS.NET (162) - a2_mask : nivu
assign a2_mask = a2_flags[15];

// ADDRESS.NET (163) - a2addx[0-1] : join
assign a2addx_0 = a2_flags[16];
assign a2addx_1 = a2_flags[17];

// ADDRESS.NET (164) - a2addy : join
assign a2addy = a2_flags[18];

// ADDRESS.NET (165) - a2xsign : join
assign a2xsign = a2_flags[19];

// ADDRESS.NET (166) - a2ysign : join
assign a2ysign = a2_flags[20];

// ADDRESS.NET (171) - a2winldg : an2u
assign a2winldg = a2winld & load_strobe;

// ADDRESS.NET (172) - a2winx : ldp1q
ldp1q a2winx_inst_0
(
	.q /* OUT */ (a2_mask_x[0]),
	.d /* IN */ (gpu_d_lo16[0]),
	.g /* IN */ (a2winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2winx_inst_1
(
	.q /* OUT */ (a2_mask_x[1]),
	.d /* IN */ (gpu_d_lo16[1]),
	.g /* IN */ (a2winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2winx_inst_2
(
	.q /* OUT */ (a2_mask_x[2]),
	.d /* IN */ (gpu_d_lo16[2]),
	.g /* IN */ (a2winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2winx_inst_3
(
	.q /* OUT */ (a2_mask_x[3]),
	.d /* IN */ (gpu_d_lo16[3]),
	.g /* IN */ (a2winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2winx_inst_4
(
	.q /* OUT */ (a2_mask_x[4]),
	.d /* IN */ (gpu_d_lo16[4]),
	.g /* IN */ (a2winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2winx_inst_5
(
	.q /* OUT */ (a2_mask_x[5]),
	.d /* IN */ (gpu_d_lo16[5]),
	.g /* IN */ (a2winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2winx_inst_6
(
	.q /* OUT */ (a2_mask_x[6]),
	.d /* IN */ (gpu_d_lo16[6]),
	.g /* IN */ (a2winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2winx_inst_7
(
	.q /* OUT */ (a2_mask_x[7]),
	.d /* IN */ (gpu_d_lo16[7]),
	.g /* IN */ (a2winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2winx_inst_8
(
	.q /* OUT */ (a2_mask_x[8]),
	.d /* IN */ (gpu_d_lo16[8]),
	.g /* IN */ (a2winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2winx_inst_9
(
	.q /* OUT */ (a2_mask_x[9]),
	.d /* IN */ (gpu_d_lo16[9]),
	.g /* IN */ (a2winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2winx_inst_10
(
	.q /* OUT */ (a2_mask_x[10]),
	.d /* IN */ (gpu_d_lo16[10]),
	.g /* IN */ (a2winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2winx_inst_11
(
	.q /* OUT */ (a2_mask_x[11]),
	.d /* IN */ (gpu_d_lo16[11]),
	.g /* IN */ (a2winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2winx_inst_12
(
	.q /* OUT */ (a2_mask_x[12]),
	.d /* IN */ (gpu_d_lo16[12]),
	.g /* IN */ (a2winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2winx_inst_13
(
	.q /* OUT */ (a2_mask_x[13]),
	.d /* IN */ (gpu_d_lo16[13]),
	.g /* IN */ (a2winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2winx_inst_14
(
	.q /* OUT */ (a2_mask_x[14]),
	.d /* IN */ (gpu_d_lo16[14]),
	.g /* IN */ (a2winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2winx_inst_15
(
	.q /* OUT */ (a2_mask_x[15]),
	.d /* IN */ (gpu_d_lo16[15]),
	.g /* IN */ (a2winldg),
	.sys_clk(sys_clk) // Generated
);

// ADDRESS.NET (173) - a2winy : ldp1q
ldp1q a2winy_inst_0
(
	.q /* OUT */ (a2_mask_y[0]),
	.d /* IN */ (gpu_d_hi16[0]),
	.g /* IN */ (a2winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2winy_inst_1
(
	.q /* OUT */ (a2_mask_y[1]),
	.d /* IN */ (gpu_d_hi16[1]),
	.g /* IN */ (a2winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2winy_inst_2
(
	.q /* OUT */ (a2_mask_y[2]),
	.d /* IN */ (gpu_d_hi16[2]),
	.g /* IN */ (a2winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2winy_inst_3
(
	.q /* OUT */ (a2_mask_y[3]),
	.d /* IN */ (gpu_d_hi16[3]),
	.g /* IN */ (a2winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2winy_inst_4
(
	.q /* OUT */ (a2_mask_y[4]),
	.d /* IN */ (gpu_d_hi16[4]),
	.g /* IN */ (a2winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2winy_inst_5
(
	.q /* OUT */ (a2_mask_y[5]),
	.d /* IN */ (gpu_d_hi16[5]),
	.g /* IN */ (a2winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2winy_inst_6
(
	.q /* OUT */ (a2_mask_y[6]),
	.d /* IN */ (gpu_d_hi16[6]),
	.g /* IN */ (a2winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2winy_inst_7
(
	.q /* OUT */ (a2_mask_y[7]),
	.d /* IN */ (gpu_d_hi16[7]),
	.g /* IN */ (a2winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2winy_inst_8
(
	.q /* OUT */ (a2_mask_y[8]),
	.d /* IN */ (gpu_d_hi16[8]),
	.g /* IN */ (a2winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2winy_inst_9
(
	.q /* OUT */ (a2_mask_y[9]),
	.d /* IN */ (gpu_d_hi16[9]),
	.g /* IN */ (a2winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2winy_inst_10
(
	.q /* OUT */ (a2_mask_y[10]),
	.d /* IN */ (gpu_d_hi16[10]),
	.g /* IN */ (a2winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2winy_inst_11
(
	.q /* OUT */ (a2_mask_y[11]),
	.d /* IN */ (gpu_d_hi16[11]),
	.g /* IN */ (a2winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2winy_inst_12
(
	.q /* OUT */ (a2_mask_y[12]),
	.d /* IN */ (gpu_d_hi16[12]),
	.g /* IN */ (a2winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2winy_inst_13
(
	.q /* OUT */ (a2_mask_y[13]),
	.d /* IN */ (gpu_d_hi16[13]),
	.g /* IN */ (a2winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2winy_inst_14
(
	.q /* OUT */ (a2_mask_y[14]),
	.d /* IN */ (gpu_d_hi16[14]),
	.g /* IN */ (a2winldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2winy_inst_15
(
	.q /* OUT */ (a2_mask_y[15]),
	.d /* IN */ (gpu_d_hi16[15]),
	.g /* IN */ (a2winldg),
	.sys_clk(sys_clk) // Generated
);

// ADDRESS.NET (177) - a2x : fdsync16
fdsync16 a2x_inst
(
	.q /* OUT */ ({a2_xr[0],a2_xr[1],a2_xr[2],a2_xr[3],a2_xr[4],a2_xr[5],a2_xr[6],a2_xr[7],a2_xr[8],a2_xr[9],a2_xr[10],a2_xr[11],a2_xr[12],a2_xr[13],a2_xr[14],a2_xr[15]}),
	.d /* IN */ ({data_x[0],data_x[1],data_x[2],data_x[3],data_x[4],data_x[5],data_x[6],data_x[7],data_x[8],data_x[9],data_x[10],data_x[11],data_x[12],data_x[13],data_x[14],data_x[15]}),
	.ld /* IN */ (a2ptrld),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// ADDRESS.NET (178) - a2y : fdsync16
fdsync16 a2y_inst
(
	.q /* OUT */ ({a2_yr[0],a2_yr[1],a2_yr[2],a2_yr[3],a2_yr[4],a2_yr[5],a2_yr[6],a2_yr[7],a2_yr[8],a2_yr[9],a2_yr[10],a2_yr[11],a2_yr[12],a2_yr[13],a2_yr[14],a2_yr[15]}),
	.d /* IN */ ({data_y[0],data_y[1],data_y[2],data_y[3],data_y[4],data_y[5],data_y[6],data_y[7],data_y[8],data_y[9],data_y[10],data_y[11],data_y[12],data_y[13],data_y[14],data_y[15]}),
	.ld /* IN */ (a2ptrld),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// ADDRESS.NET (182) - a2_xm : an2
assign a2_xm[0] = a2_xr[0] & a2_mask_x[0];
assign a2_xm[1] = a2_xr[1] & a2_mask_x[1];
assign a2_xm[2] = a2_xr[2] & a2_mask_x[2];
assign a2_xm[3] = a2_xr[3] & a2_mask_x[3];
assign a2_xm[4] = a2_xr[4] & a2_mask_x[4];
assign a2_xm[5] = a2_xr[5] & a2_mask_x[5];
assign a2_xm[6] = a2_xr[6] & a2_mask_x[6];
assign a2_xm[7] = a2_xr[7] & a2_mask_x[7];
assign a2_xm[8] = a2_xr[8] & a2_mask_x[8];
assign a2_xm[9] = a2_xr[9] & a2_mask_x[9];
assign a2_xm[10] = a2_xr[10] & a2_mask_x[10];
assign a2_xm[11] = a2_xr[11] & a2_mask_x[11];
assign a2_xm[12] = a2_xr[12] & a2_mask_x[12];
assign a2_xm[13] = a2_xr[13] & a2_mask_x[13];
assign a2_xm[14] = a2_xr[14] & a2_mask_x[14];
assign a2_xm[15] = a2_xr[15] & a2_mask_x[15];

// ADDRESS.NET (183) - a2_x : mx2
assign a2_x_b0_obuf = (a2_mask) ? a2_xm[0] : a2_xr[0];
assign a2_x_b1_obuf = (a2_mask) ? a2_xm[1] : a2_xr[1];
assign a2_x_b2_obuf = (a2_mask) ? a2_xm[2] : a2_xr[2];
assign a2_x_b3_obuf = (a2_mask) ? a2_xm[3] : a2_xr[3];
assign a2_x_b4_obuf = (a2_mask) ? a2_xm[4] : a2_xr[4];
assign a2_x_b5_obuf = (a2_mask) ? a2_xm[5] : a2_xr[5];
assign a2_x_b6_obuf = (a2_mask) ? a2_xm[6] : a2_xr[6];
assign a2_x_b7_obuf = (a2_mask) ? a2_xm[7] : a2_xr[7];
assign a2_x_b8_obuf = (a2_mask) ? a2_xm[8] : a2_xr[8];
assign a2_x_b9_obuf = (a2_mask) ? a2_xm[9] : a2_xr[9];
assign a2_x_b10_obuf = (a2_mask) ? a2_xm[10] : a2_xr[10];
assign a2_x_b11_obuf = (a2_mask) ? a2_xm[11] : a2_xr[11];
assign a2_x_b12_obuf = (a2_mask) ? a2_xm[12] : a2_xr[12];
assign a2_x_b13_obuf = (a2_mask) ? a2_xm[13] : a2_xr[13];
assign a2_x_b14_obuf = (a2_mask) ? a2_xm[14] : a2_xr[14];
assign a2_x_b15_obuf = (a2_mask) ? a2_xm[15] : a2_xr[15];

// ADDRESS.NET (184) - a2_ym : an2
assign a2_ym[0] = a2_yr[0] & a2_mask_y[0];
assign a2_ym[1] = a2_yr[1] & a2_mask_y[1];
assign a2_ym[2] = a2_yr[2] & a2_mask_y[2];
assign a2_ym[3] = a2_yr[3] & a2_mask_y[3];
assign a2_ym[4] = a2_yr[4] & a2_mask_y[4];
assign a2_ym[5] = a2_yr[5] & a2_mask_y[5];
assign a2_ym[6] = a2_yr[6] & a2_mask_y[6];
assign a2_ym[7] = a2_yr[7] & a2_mask_y[7];
assign a2_ym[8] = a2_yr[8] & a2_mask_y[8];
assign a2_ym[9] = a2_yr[9] & a2_mask_y[9];
assign a2_ym[10] = a2_yr[10] & a2_mask_y[10];
assign a2_ym[11] = a2_yr[11] & a2_mask_y[11];
assign a2_ym[12] = a2_yr[12] & a2_mask_y[12];
assign a2_ym[13] = a2_yr[13] & a2_mask_y[13];
assign a2_ym[14] = a2_yr[14] & a2_mask_y[14];
assign a2_ym[15] = a2_yr[15] & a2_mask_y[15];

// ADDRESS.NET (185) - a2_y : mx2
assign a2_y[0] = (a2_mask) ? a2_ym[0] : a2_yr[0];
assign a2_y[1] = (a2_mask) ? a2_ym[1] : a2_yr[1];
assign a2_y[2] = (a2_mask) ? a2_ym[2] : a2_yr[2];
assign a2_y[3] = (a2_mask) ? a2_ym[3] : a2_yr[3];
assign a2_y[4] = (a2_mask) ? a2_ym[4] : a2_yr[4];
assign a2_y[5] = (a2_mask) ? a2_ym[5] : a2_yr[5];
assign a2_y[6] = (a2_mask) ? a2_ym[6] : a2_yr[6];
assign a2_y[7] = (a2_mask) ? a2_ym[7] : a2_yr[7];
assign a2_y[8] = (a2_mask) ? a2_ym[8] : a2_yr[8];
assign a2_y[9] = (a2_mask) ? a2_ym[9] : a2_yr[9];
assign a2_y[10] = (a2_mask) ? a2_ym[10] : a2_yr[10];
assign a2_y[11] = (a2_mask) ? a2_ym[11] : a2_yr[11];
assign a2_y[12] = (a2_mask) ? a2_ym[12] : a2_yr[12];
assign a2_y[13] = (a2_mask) ? a2_ym[13] : a2_yr[13];
assign a2_y[14] = (a2_mask) ? a2_ym[14] : a2_yr[14];
assign a2_y[15] = (a2_mask) ? a2_ym[15] : a2_yr[15];

// ADDRESS.NET (189) - a2stepldg : an2u
assign a2stepldg = a2stepld & load_strobe;

// ADDRESS.NET (190) - a2stepx : ldp1q
ldp1q a2stepx_inst_0
(
	.q /* OUT */ (a2_step_x[0]),
	.d /* IN */ (gpu_d_lo16[0]),
	.g /* IN */ (a2stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2stepx_inst_1
(
	.q /* OUT */ (a2_step_x[1]),
	.d /* IN */ (gpu_d_lo16[1]),
	.g /* IN */ (a2stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2stepx_inst_2
(
	.q /* OUT */ (a2_step_x[2]),
	.d /* IN */ (gpu_d_lo16[2]),
	.g /* IN */ (a2stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2stepx_inst_3
(
	.q /* OUT */ (a2_step_x[3]),
	.d /* IN */ (gpu_d_lo16[3]),
	.g /* IN */ (a2stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2stepx_inst_4
(
	.q /* OUT */ (a2_step_x[4]),
	.d /* IN */ (gpu_d_lo16[4]),
	.g /* IN */ (a2stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2stepx_inst_5
(
	.q /* OUT */ (a2_step_x[5]),
	.d /* IN */ (gpu_d_lo16[5]),
	.g /* IN */ (a2stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2stepx_inst_6
(
	.q /* OUT */ (a2_step_x[6]),
	.d /* IN */ (gpu_d_lo16[6]),
	.g /* IN */ (a2stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2stepx_inst_7
(
	.q /* OUT */ (a2_step_x[7]),
	.d /* IN */ (gpu_d_lo16[7]),
	.g /* IN */ (a2stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2stepx_inst_8
(
	.q /* OUT */ (a2_step_x[8]),
	.d /* IN */ (gpu_d_lo16[8]),
	.g /* IN */ (a2stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2stepx_inst_9
(
	.q /* OUT */ (a2_step_x[9]),
	.d /* IN */ (gpu_d_lo16[9]),
	.g /* IN */ (a2stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2stepx_inst_10
(
	.q /* OUT */ (a2_step_x[10]),
	.d /* IN */ (gpu_d_lo16[10]),
	.g /* IN */ (a2stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2stepx_inst_11
(
	.q /* OUT */ (a2_step_x[11]),
	.d /* IN */ (gpu_d_lo16[11]),
	.g /* IN */ (a2stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2stepx_inst_12
(
	.q /* OUT */ (a2_step_x[12]),
	.d /* IN */ (gpu_d_lo16[12]),
	.g /* IN */ (a2stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2stepx_inst_13
(
	.q /* OUT */ (a2_step_x[13]),
	.d /* IN */ (gpu_d_lo16[13]),
	.g /* IN */ (a2stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2stepx_inst_14
(
	.q /* OUT */ (a2_step_x[14]),
	.d /* IN */ (gpu_d_lo16[14]),
	.g /* IN */ (a2stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2stepx_inst_15
(
	.q /* OUT */ (a2_step_x[15]),
	.d /* IN */ (gpu_d_lo16[15]),
	.g /* IN */ (a2stepldg),
	.sys_clk(sys_clk) // Generated
);

// ADDRESS.NET (191) - a2stepy : ldp1q
ldp1q a2stepy_inst_0
(
	.q /* OUT */ (a2_step_y[0]),
	.d /* IN */ (gpu_d_hi16[0]),
	.g /* IN */ (a2stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2stepy_inst_1
(
	.q /* OUT */ (a2_step_y[1]),
	.d /* IN */ (gpu_d_hi16[1]),
	.g /* IN */ (a2stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2stepy_inst_2
(
	.q /* OUT */ (a2_step_y[2]),
	.d /* IN */ (gpu_d_hi16[2]),
	.g /* IN */ (a2stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2stepy_inst_3
(
	.q /* OUT */ (a2_step_y[3]),
	.d /* IN */ (gpu_d_hi16[3]),
	.g /* IN */ (a2stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2stepy_inst_4
(
	.q /* OUT */ (a2_step_y[4]),
	.d /* IN */ (gpu_d_hi16[4]),
	.g /* IN */ (a2stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2stepy_inst_5
(
	.q /* OUT */ (a2_step_y[5]),
	.d /* IN */ (gpu_d_hi16[5]),
	.g /* IN */ (a2stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2stepy_inst_6
(
	.q /* OUT */ (a2_step_y[6]),
	.d /* IN */ (gpu_d_hi16[6]),
	.g /* IN */ (a2stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2stepy_inst_7
(
	.q /* OUT */ (a2_step_y[7]),
	.d /* IN */ (gpu_d_hi16[7]),
	.g /* IN */ (a2stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2stepy_inst_8
(
	.q /* OUT */ (a2_step_y[8]),
	.d /* IN */ (gpu_d_hi16[8]),
	.g /* IN */ (a2stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2stepy_inst_9
(
	.q /* OUT */ (a2_step_y[9]),
	.d /* IN */ (gpu_d_hi16[9]),
	.g /* IN */ (a2stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2stepy_inst_10
(
	.q /* OUT */ (a2_step_y[10]),
	.d /* IN */ (gpu_d_hi16[10]),
	.g /* IN */ (a2stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2stepy_inst_11
(
	.q /* OUT */ (a2_step_y[11]),
	.d /* IN */ (gpu_d_hi16[11]),
	.g /* IN */ (a2stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2stepy_inst_12
(
	.q /* OUT */ (a2_step_y[12]),
	.d /* IN */ (gpu_d_hi16[12]),
	.g /* IN */ (a2stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2stepy_inst_13
(
	.q /* OUT */ (a2_step_y[13]),
	.d /* IN */ (gpu_d_hi16[13]),
	.g /* IN */ (a2stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2stepy_inst_14
(
	.q /* OUT */ (a2_step_y[14]),
	.d /* IN */ (gpu_d_hi16[14]),
	.g /* IN */ (a2stepldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q a2stepy_inst_15
(
	.q /* OUT */ (a2_step_y[15]),
	.d /* IN */ (gpu_d_hi16[15]),
	.g /* IN */ (a2stepldg),
	.sys_clk(sys_clk) // Generated
);

// ADDRESS.NET (195) - addamux : addamux
addamux addamux_inst
(
	.adda_x /* OUT */ ({adda_x[0],adda_x[1],adda_x[2],adda_x[3],adda_x[4],adda_x[5],adda_x[6],adda_x[7],adda_x[8],adda_x[9],adda_x[10],adda_x[11],adda_x[12],adda_x[13],adda_x[14],adda_x[15]}),
	.adda_y /* OUT */ ({adda_y[0],adda_y[1],adda_y[2],adda_y[3],adda_y[4],adda_y[5],adda_y[6],adda_y[7],adda_y[8],adda_y[9],adda_y[10],adda_y[11],adda_y[12],adda_y[13],adda_y[14],adda_y[15]}),
	.addasel_0 /* IN */ (addasel_0),
	.addasel_1 /* IN */ (addasel_1),
	.addasel_2 /* IN */ (addasel_2),
	.a1_step_x /* IN */ ({a1_step_x[0],a1_step_x[1],a1_step_x[2],a1_step_x[3],a1_step_x[4],a1_step_x[5],a1_step_x[6],a1_step_x[7],a1_step_x[8],a1_step_x[9],a1_step_x[10],a1_step_x[11],a1_step_x[12],a1_step_x[13],a1_step_x[14],a1_step_x[15]}),
	.a1_step_y /* IN */ ({a1_step_y[0],a1_step_y[1],a1_step_y[2],a1_step_y[3],a1_step_y[4],a1_step_y[5],a1_step_y[6],a1_step_y[7],a1_step_y[8],a1_step_y[9],a1_step_y[10],a1_step_y[11],a1_step_y[12],a1_step_y[13],a1_step_y[14],a1_step_y[15]}),
	.a1_stepf_x /* IN */ ({a1_stepf_x[0],a1_stepf_x[1],a1_stepf_x[2],a1_stepf_x[3],a1_stepf_x[4],a1_stepf_x[5],a1_stepf_x[6],a1_stepf_x[7],a1_stepf_x[8],a1_stepf_x[9],a1_stepf_x[10],a1_stepf_x[11],a1_stepf_x[12],a1_stepf_x[13],a1_stepf_x[14],a1_stepf_x[15]}),
	.a1_stepf_y /* IN */ ({a1_stepf_y[0],a1_stepf_y[1],a1_stepf_y[2],a1_stepf_y[3],a1_stepf_y[4],a1_stepf_y[5],a1_stepf_y[6],a1_stepf_y[7],a1_stepf_y[8],a1_stepf_y[9],a1_stepf_y[10],a1_stepf_y[11],a1_stepf_y[12],a1_stepf_y[13],a1_stepf_y[14],a1_stepf_y[15]}),
	.a2_step_x /* IN */ ({a2_step_x[0],a2_step_x[1],a2_step_x[2],a2_step_x[3],a2_step_x[4],a2_step_x[5],a2_step_x[6],a2_step_x[7],a2_step_x[8],a2_step_x[9],a2_step_x[10],a2_step_x[11],a2_step_x[12],a2_step_x[13],a2_step_x[14],a2_step_x[15]}),
	.a2_step_y /* IN */ ({a2_step_y[0],a2_step_y[1],a2_step_y[2],a2_step_y[3],a2_step_y[4],a2_step_y[5],a2_step_y[6],a2_step_y[7],a2_step_y[8],a2_step_y[9],a2_step_y[10],a2_step_y[11],a2_step_y[12],a2_step_y[13],a2_step_y[14],a2_step_y[15]}),
	.a1_inc_x /* IN */ ({a1_inc_x[0],a1_inc_x[1],a1_inc_x[2],a1_inc_x[3],a1_inc_x[4],a1_inc_x[5],a1_inc_x[6],a1_inc_x[7],a1_inc_x[8],a1_inc_x[9],a1_inc_x[10],a1_inc_x[11],a1_inc_x[12],a1_inc_x[13],a1_inc_x[14],a1_inc_x[15]}),
	.a1_inc_y /* IN */ ({a1_inc_y[0],a1_inc_y[1],a1_inc_y[2],a1_inc_y[3],a1_inc_y[4],a1_inc_y[5],a1_inc_y[6],a1_inc_y[7],a1_inc_y[8],a1_inc_y[9],a1_inc_y[10],a1_inc_y[11],a1_inc_y[12],a1_inc_y[13],a1_inc_y[14],a1_inc_y[15]}),
	.a1_incf_x /* IN */ ({a1_incf_x[0],a1_incf_x[1],a1_incf_x[2],a1_incf_x[3],a1_incf_x[4],a1_incf_x[5],a1_incf_x[6],a1_incf_x[7],a1_incf_x[8],a1_incf_x[9],a1_incf_x[10],a1_incf_x[11],a1_incf_x[12],a1_incf_x[13],a1_incf_x[14],a1_incf_x[15]}),
	.a1_incf_y /* IN */ ({a1_incf_y[0],a1_incf_y[1],a1_incf_y[2],a1_incf_y[3],a1_incf_y[4],a1_incf_y[5],a1_incf_y[6],a1_incf_y[7],a1_incf_y[8],a1_incf_y[9],a1_incf_y[10],a1_incf_y[11],a1_incf_y[12],a1_incf_y[13],a1_incf_y[14],a1_incf_y[15]}),
	.adda_xconst_0 /* IN */ (adda_xconst_0),
	.adda_xconst_1 /* IN */ (adda_xconst_1),
	.adda_xconst_2 /* IN */ (adda_xconst_2),
	.adda_yconst /* IN */ (adda_yconst),
	.addareg /* IN */ (addareg),
	.suba_x /* IN */ (suba_x),
	.suba_y /* IN */ (suba_y)
);

// ADDRESS.NET (202) - addbmux : addbmux
addbmux addbmux_inst
(
	.addb_x /* OUT */ ({addb_x[0],addb_x[1],addb_x[2],addb_x[3],addb_x[4],addb_x[5],addb_x[6],addb_x[7],addb_x[8],addb_x[9],addb_x[10],addb_x[11],addb_x[12],addb_x[13],addb_x[14],addb_x[15]}),
	.addb_y /* OUT */ ({addb_y[0],addb_y[1],addb_y[2],addb_y[3],addb_y[4],addb_y[5],addb_y[6],addb_y[7],addb_y[8],addb_y[9],addb_y[10],addb_y[11],addb_y[12],addb_y[13],addb_y[14],addb_y[15]}),
	.addbsel_0 /* IN */ (addbsel_0),
	.addbsel_1 /* IN */ (addbsel_1),
	.a1_x /* IN */ ({a1_x_b0_obuf,a1_x_b1_obuf,a1_x_b2_obuf,a1_x_b3_obuf,a1_x_b4_obuf,a1_x_b5_obuf,a1_x_b6_obuf,a1_x_b7_obuf,a1_x_b8_obuf,a1_x_b9_obuf,a1_x_b10_obuf,a1_x_b11_obuf,a1_x_b12_obuf,a1_x_b13_obuf,a1_x_b14_obuf,a1_x_b15_obuf}),
	.a1_y /* IN */ ({a1_y[0],a1_y[1],a1_y[2],a1_y[3],a1_y[4],a1_y[5],a1_y[6],a1_y[7],a1_y[8],a1_y[9],a1_y[10],a1_y[11],a1_y[12],a1_y[13],a1_y[14],a1_y[15]}),
	.a2_x /* IN */ ({a2_x_b0_obuf,a2_x_b1_obuf,a2_x_b2_obuf,a2_x_b3_obuf,a2_x_b4_obuf,a2_x_b5_obuf,a2_x_b6_obuf,a2_x_b7_obuf,a2_x_b8_obuf,a2_x_b9_obuf,a2_x_b10_obuf,a2_x_b11_obuf,a2_x_b12_obuf,a2_x_b13_obuf,a2_x_b14_obuf,a2_x_b15_obuf}),
	.a2_y /* IN */ ({a2_y[0],a2_y[1],a2_y[2],a2_y[3],a2_y[4],a2_y[5],a2_y[6],a2_y[7],a2_y[8],a2_y[9],a2_y[10],a2_y[11],a2_y[12],a2_y[13],a2_y[14],a2_y[15]}),
	.a1_frac_x /* IN */ ({a1_frac_x[0],a1_frac_x[1],a1_frac_x[2],a1_frac_x[3],a1_frac_x[4],a1_frac_x[5],a1_frac_x[6],a1_frac_x[7],a1_frac_x[8],a1_frac_x[9],a1_frac_x[10],a1_frac_x[11],a1_frac_x[12],a1_frac_x[13],a1_frac_x[14],a1_frac_x[15]}),
	.a1_frac_y /* IN */ ({a1_frac_y[0],a1_frac_y[1],a1_frac_y[2],a1_frac_y[3],a1_frac_y[4],a1_frac_y[5],a1_frac_y[6],a1_frac_y[7],a1_frac_y[8],a1_frac_y[9],a1_frac_y[10],a1_frac_y[11],a1_frac_y[12],a1_frac_y[13],a1_frac_y[14],a1_frac_y[15]})
);

// ADDRESS.NET (205) - addradd : addradd
addradd addradd_inst
(
	.addq_x /* OUT */ ({addq_x[0],addq_x[1],addq_x[2],addq_x[3],addq_x[4],addq_x[5],addq_x[6],addq_x[7],addq_x[8],addq_x[9],addq_x[10],addq_x[11],addq_x[12],addq_x[13],addq_x[14],addq_x[15]}),
	.addq_y /* OUT */ ({addq_y[0],addq_y[1],addq_y[2],addq_y[3],addq_y[4],addq_y[5],addq_y[6],addq_y[7],addq_y[8],addq_y[9],addq_y[10],addq_y[11],addq_y[12],addq_y[13],addq_y[14],addq_y[15]}),
	.a1fracld /* IN */ (a1fracld),
	.adda_x /* IN */ ({adda_x[0],adda_x[1],adda_x[2],adda_x[3],adda_x[4],adda_x[5],adda_x[6],adda_x[7],adda_x[8],adda_x[9],adda_x[10],adda_x[11],adda_x[12],adda_x[13],adda_x[14],adda_x[15]}),
	.adda_y /* IN */ ({adda_y[0],adda_y[1],adda_y[2],adda_y[3],adda_y[4],adda_y[5],adda_y[6],adda_y[7],adda_y[8],adda_y[9],adda_y[10],adda_y[11],adda_y[12],adda_y[13],adda_y[14],adda_y[15]}),
	.addb_x /* IN */ ({addb_x[0],addb_x[1],addb_x[2],addb_x[3],addb_x[4],addb_x[5],addb_x[6],addb_x[7],addb_x[8],addb_x[9],addb_x[10],addb_x[11],addb_x[12],addb_x[13],addb_x[14],addb_x[15]}),
	.addb_y /* IN */ ({addb_y[0],addb_y[1],addb_y[2],addb_y[3],addb_y[4],addb_y[5],addb_y[6],addb_y[7],addb_y[8],addb_y[9],addb_y[10],addb_y[11],addb_y[12],addb_y[13],addb_y[14],addb_y[15]}),
	.clk_0 /* IN */ (clk),
	.modx_0 /* IN */ (modx_0),
	.modx_1 /* IN */ (modx_1),
	.modx_2 /* IN */ (modx_2),
	.suba_x /* IN */ (suba_x),
	.suba_y /* IN */ (suba_y),
	.sys_clk(sys_clk) // Generated
);

// ADDRESS.NET (211) - datamux : datamux
datamux datamux_inst
(
	.data_x /* OUT */ ({data_x[0],data_x[1],data_x[2],data_x[3],data_x[4],data_x[5],data_x[6],data_x[7],data_x[8],data_x[9],data_x[10],data_x[11],data_x[12],data_x[13],data_x[14],data_x[15]}),
	.data_y /* OUT */ ({data_y[0],data_y[1],data_y[2],data_y[3],data_y[4],data_y[5],data_y[6],data_y[7],data_y[8],data_y[9],data_y[10],data_y[11],data_y[12],data_y[13],data_y[14],data_y[15]}),
	.gpu_din /* IN */ ({gpu_din[0],gpu_din[1],gpu_din[2],gpu_din[3],gpu_din[4],gpu_din[5],gpu_din[6],gpu_din[7],gpu_din[8],gpu_din[9],gpu_din[10],gpu_din[11],gpu_din[12],gpu_din[13],gpu_din[14],gpu_din[15],gpu_din[16],gpu_din[17],gpu_din[18],gpu_din[19],gpu_din[20],gpu_din[21],gpu_din[22],gpu_din[23],gpu_din[24],gpu_din[25],gpu_din[26],gpu_din[27],gpu_din[28],gpu_din[29],gpu_din[30],gpu_din[31]}),
	.addq_x /* IN */ ({addq_x[0],addq_x[1],addq_x[2],addq_x[3],addq_x[4],addq_x[5],addq_x[6],addq_x[7],addq_x[8],addq_x[9],addq_x[10],addq_x[11],addq_x[12],addq_x[13],addq_x[14],addq_x[15]}),
	.addq_y /* IN */ ({addq_y[0],addq_y[1],addq_y[2],addq_y[3],addq_y[4],addq_y[5],addq_y[6],addq_y[7],addq_y[8],addq_y[9],addq_y[10],addq_y[11],addq_y[12],addq_y[13],addq_y[14],addq_y[15]}),
	.addqsel /* IN */ (addqsel)
);

// ADDRESS.NET (216) - addrgen : addrgen
addrgen addrgen_inst
(
	.address /* OUT */ ({address[0],address[1],address[2],address[3],address[4],address[5],address[6],address[7],address[8],address[9],address[10],address[11],address[12],address[13],address[14],address[15],address[16],address[17],address[18],address[19],address[20],address[21],address[22],address[23]}),
	.pixa_0 /* OUT */ (pixa_0),
	.pixa_1 /* OUT */ (pixa_1),
	.pixa_2 /* OUT */ (pixa_2),
	.a1_x /* IN */ ({a1_x_b0_obuf,a1_x_b1_obuf,a1_x_b2_obuf,a1_x_b3_obuf,a1_x_b4_obuf,a1_x_b5_obuf,a1_x_b6_obuf,a1_x_b7_obuf,a1_x_b8_obuf,a1_x_b9_obuf,a1_x_b10_obuf,a1_x_b11_obuf,a1_x_b12_obuf,a1_x_b13_obuf,a1_x_b14_obuf,a1_x_b15_obuf}),
	.a1_y /* IN */ ({a1_y[0],a1_y[1],a1_y[2],a1_y[3],a1_y[4],a1_y[5],a1_y[6],a1_y[7],a1_y[8],a1_y[9],a1_y[10],a1_y[11],a1_y[12],a1_y[13],a1_y[14],a1_y[15]}),
	.a1_base /* IN */ ({a1_base[0],a1_base[1],a1_base[2],a1_base[3],a1_base[4],a1_base[5],a1_base[6],a1_base[7],a1_base[8],a1_base[9],a1_base[10],a1_base[11],a1_base[12],a1_base[13],a1_base[14],a1_base[15],a1_base[16],a1_base[17],a1_base[18],a1_base[19],a1_base[20]}),
	.a1_pitch_0 /* IN */ (a1_pitch_0),
	.a1_pitch_1 /* IN */ (a1_pitch_1),
	.a1_pixsize_0 /* IN */ (a1_pixsize_0_obuf),
	.a1_pixsize_1 /* IN */ (a1_pixsize_1_obuf),
	.a1_pixsize_2 /* IN */ (a1_pixsize_2_obuf),
	.a1_width_0 /* IN */ (a1_width_0),
	.a1_width_1 /* IN */ (a1_width_1),
	.a1_width_2 /* IN */ (a1_width_2),
	.a1_width_3 /* IN */ (a1_width_3),
	.a1_width_4 /* IN */ (a1_width_4),
	.a1_width_5 /* IN */ (a1_width_5),
	.a1_zoffset_0 /* IN */ (a1_zoffset_0),
	.a1_zoffset_1 /* IN */ (a1_zoffset_1),
	.a2_x /* IN */ ({a2_x_b0_obuf,a2_x_b1_obuf,a2_x_b2_obuf,a2_x_b3_obuf,a2_x_b4_obuf,a2_x_b5_obuf,a2_x_b6_obuf,a2_x_b7_obuf,a2_x_b8_obuf,a2_x_b9_obuf,a2_x_b10_obuf,a2_x_b11_obuf,a2_x_b12_obuf,a2_x_b13_obuf,a2_x_b14_obuf,a2_x_b15_obuf}),
	.a2_y /* IN */ ({a2_y[0],a2_y[1],a2_y[2],a2_y[3],a2_y[4],a2_y[5],a2_y[6],a2_y[7],a2_y[8],a2_y[9],a2_y[10],a2_y[11],a2_y[12],a2_y[13],a2_y[14],a2_y[15]}),
	.a2_base /* IN */ ({a2_base[0],a2_base[1],a2_base[2],a2_base[3],a2_base[4],a2_base[5],a2_base[6],a2_base[7],a2_base[8],a2_base[9],a2_base[10],a2_base[11],a2_base[12],a2_base[13],a2_base[14],a2_base[15],a2_base[16],a2_base[17],a2_base[18],a2_base[19],a2_base[20]}),
	.a2_pitch_0 /* IN */ (a2_pitch_0),
	.a2_pitch_1 /* IN */ (a2_pitch_1),
	.a2_pixsize_0 /* IN */ (a2_pixsize_0_obuf),
	.a2_pixsize_1 /* IN */ (a2_pixsize_1_obuf),
	.a2_pixsize_2 /* IN */ (a2_pixsize_2_obuf),
	.a2_width_0 /* IN */ (a2_width_0),
	.a2_width_1 /* IN */ (a2_width_1),
	.a2_width_2 /* IN */ (a2_width_2),
	.a2_width_3 /* IN */ (a2_width_3),
	.a2_width_4 /* IN */ (a2_width_4),
	.a2_width_5 /* IN */ (a2_width_5),
	.a2_zoffset_0 /* IN */ (a2_zoffset_0),
	.a2_zoffset_1 /* IN */ (a2_zoffset_1),
	.apipe /* IN */ (apipe),
	.clk /* IN */ (clk),
	.gena2 /* IN */ (gena2),
	.zaddr /* IN */ (zaddr),
	.sys_clk(sys_clk) // Generated
);

// ADDRESS.NET (226) - addrcomp : addrcomp
addrcomp addrcomp_inst
(
	.a1_outside /* OUT */ (a1_outside),
	.a1_x /* IN */ ({a1_x_b0_obuf,a1_x_b1_obuf,a1_x_b2_obuf,a1_x_b3_obuf,a1_x_b4_obuf,a1_x_b5_obuf,a1_x_b6_obuf,a1_x_b7_obuf,a1_x_b8_obuf,a1_x_b9_obuf,a1_x_b10_obuf,a1_x_b11_obuf,a1_x_b12_obuf,a1_x_b13_obuf,a1_x_b14_obuf,a1_x_b15_obuf}),
	.a1_y /* IN */ ({a1_y[0],a1_y[1],a1_y[2],a1_y[3],a1_y[4],a1_y[5],a1_y[6],a1_y[7],a1_y[8],a1_y[9],a1_y[10],a1_y[11],a1_y[12],a1_y[13],a1_y[14],a1_y[15]}),
	.a1_win_x /* IN */ ({a1_win_x_b0_obuf,a1_win_x_b1_obuf,a1_win_x_b2_obuf,a1_win_x_b3_obuf,a1_win_x_b4_obuf,a1_win_x_b5_obuf,a1_win_x_b6_obuf,a1_win_x_b7_obuf,a1_win_x_b8_obuf,a1_win_x_b9_obuf,a1_win_x_b10_obuf,a1_win_x_b11_obuf,a1_win_x_b12_obuf,a1_win_x_b13_obuf,a1_win_x_b14_obuf}),
	.a1_win_y /* IN */ ({a1_win_y[0],a1_win_y[1],a1_win_y[2],a1_win_y[3],a1_win_y[4],a1_win_y[5],a1_win_y[6],a1_win_y[7],a1_win_y[8],a1_win_y[9],a1_win_y[10],a1_win_y[11],a1_win_y[12],a1_win_y[13],a1_win_y[14]})
);

// ADDRESS.NET (231) - a1_pos[0-15] : join
assign a1_pos_0 = a1_x_b0_obuf;
assign a1_pos_1 = a1_x_b1_obuf;
assign a1_pos_2 = a1_x_b2_obuf;
assign a1_pos_3 = a1_x_b3_obuf;
assign a1_pos_4 = a1_x_b4_obuf;
assign a1_pos_5 = a1_x_b5_obuf;
assign a1_pos_6 = a1_x_b6_obuf;
assign a1_pos_7 = a1_x_b7_obuf;
assign a1_pos_8 = a1_x_b8_obuf;
assign a1_pos_9 = a1_x_b9_obuf;
assign a1_pos_10 = a1_x_b10_obuf;
assign a1_pos_11 = a1_x_b11_obuf;
assign a1_pos_12 = a1_x_b12_obuf;
assign a1_pos_13 = a1_x_b13_obuf;
assign a1_pos_14 = a1_x_b14_obuf;
assign a1_pos_15 = a1_x_b15_obuf;

// ADDRESS.NET (232) - a1_pos[16-31] : join
assign a1_pos_16 = a1_y[0];
assign a1_pos_17 = a1_y[1];
assign a1_pos_18 = a1_y[2];
assign a1_pos_19 = a1_y[3];
assign a1_pos_20 = a1_y[4];
assign a1_pos_21 = a1_y[5];
assign a1_pos_22 = a1_y[6];
assign a1_pos_23 = a1_y[7];
assign a1_pos_24 = a1_y[8];
assign a1_pos_25 = a1_y[9];
assign a1_pos_26 = a1_y[10];
assign a1_pos_27 = a1_y[11];
assign a1_pos_28 = a1_y[12];
assign a1_pos_29 = a1_y[13];
assign a1_pos_30 = a1_y[14];
assign a1_pos_31 = a1_y[15];

// ADDRESS.NET (233) - a1_posf[0-15] : join
assign a1_posf_0 = a1_frac_x[0];
assign a1_posf_1 = a1_frac_x[1];
assign a1_posf_2 = a1_frac_x[2];
assign a1_posf_3 = a1_frac_x[3];
assign a1_posf_4 = a1_frac_x[4];
assign a1_posf_5 = a1_frac_x[5];
assign a1_posf_6 = a1_frac_x[6];
assign a1_posf_7 = a1_frac_x[7];
assign a1_posf_8 = a1_frac_x[8];
assign a1_posf_9 = a1_frac_x[9];
assign a1_posf_10 = a1_frac_x[10];
assign a1_posf_11 = a1_frac_x[11];
assign a1_posf_12 = a1_frac_x[12];
assign a1_posf_13 = a1_frac_x[13];
assign a1_posf_14 = a1_frac_x[14];
assign a1_posf_15 = a1_frac_x[15];

// ADDRESS.NET (234) - a1_posf[16-31] : join
assign a1_posf_16 = a1_frac_y[0];
assign a1_posf_17 = a1_frac_y[1];
assign a1_posf_18 = a1_frac_y[2];
assign a1_posf_19 = a1_frac_y[3];
assign a1_posf_20 = a1_frac_y[4];
assign a1_posf_21 = a1_frac_y[5];
assign a1_posf_22 = a1_frac_y[6];
assign a1_posf_23 = a1_frac_y[7];
assign a1_posf_24 = a1_frac_y[8];
assign a1_posf_25 = a1_frac_y[9];
assign a1_posf_26 = a1_frac_y[10];
assign a1_posf_27 = a1_frac_y[11];
assign a1_posf_28 = a1_frac_y[12];
assign a1_posf_29 = a1_frac_y[13];
assign a1_posf_30 = a1_frac_y[14];
assign a1_posf_31 = a1_frac_y[15];

// ADDRESS.NET (235) - a2_pos[0-15] : join
assign a2_pos_0 = a2_x_b0_obuf;
assign a2_pos_1 = a2_x_b1_obuf;
assign a2_pos_2 = a2_x_b2_obuf;
assign a2_pos_3 = a2_x_b3_obuf;
assign a2_pos_4 = a2_x_b4_obuf;
assign a2_pos_5 = a2_x_b5_obuf;
assign a2_pos_6 = a2_x_b6_obuf;
assign a2_pos_7 = a2_x_b7_obuf;
assign a2_pos_8 = a2_x_b8_obuf;
assign a2_pos_9 = a2_x_b9_obuf;
assign a2_pos_10 = a2_x_b10_obuf;
assign a2_pos_11 = a2_x_b11_obuf;
assign a2_pos_12 = a2_x_b12_obuf;
assign a2_pos_13 = a2_x_b13_obuf;
assign a2_pos_14 = a2_x_b14_obuf;
assign a2_pos_15 = a2_x_b15_obuf;

// ADDRESS.NET (236) - a2_pos[16-31] : join
assign a2_pos_16 = a2_y[0];
assign a2_pos_17 = a2_y[1];
assign a2_pos_18 = a2_y[2];
assign a2_pos_19 = a2_y[3];
assign a2_pos_20 = a2_y[4];
assign a2_pos_21 = a2_y[5];
assign a2_pos_22 = a2_y[6];
assign a2_pos_23 = a2_y[7];
assign a2_pos_24 = a2_y[8];
assign a2_pos_25 = a2_y[9];
assign a2_pos_26 = a2_y[10];
assign a2_pos_27 = a2_y[11];
assign a2_pos_28 = a2_y[12];
assign a2_pos_29 = a2_y[13];
assign a2_pos_30 = a2_y[14];
assign a2_pos_31 = a2_y[15];

// ADDRESS.NET (238) - grdt0[0-31] : mx2
assign grdt0_0 = (a1posfrd) ? a1_posf_0 : a1_pos_0;
assign grdt0_1 = (a1posfrd) ? a1_posf_1 : a1_pos_1;
assign grdt0_2 = (a1posfrd) ? a1_posf_2 : a1_pos_2;
assign grdt0_3 = (a1posfrd) ? a1_posf_3 : a1_pos_3;
assign grdt0_4 = (a1posfrd) ? a1_posf_4 : a1_pos_4;
assign grdt0_5 = (a1posfrd) ? a1_posf_5 : a1_pos_5;
assign grdt0_6 = (a1posfrd) ? a1_posf_6 : a1_pos_6;
assign grdt0_7 = (a1posfrd) ? a1_posf_7 : a1_pos_7;
assign grdt0_8 = (a1posfrd) ? a1_posf_8 : a1_pos_8;
assign grdt0_9 = (a1posfrd) ? a1_posf_9 : a1_pos_9;
assign grdt0_10 = (a1posfrd) ? a1_posf_10 : a1_pos_10;
assign grdt0_11 = (a1posfrd) ? a1_posf_11 : a1_pos_11;
assign grdt0_12 = (a1posfrd) ? a1_posf_12 : a1_pos_12;
assign grdt0_13 = (a1posfrd) ? a1_posf_13 : a1_pos_13;
assign grdt0_14 = (a1posfrd) ? a1_posf_14 : a1_pos_14;
assign grdt0_15 = (a1posfrd) ? a1_posf_15 : a1_pos_15;
assign grdt0_16 = (a1posfrd) ? a1_posf_16 : a1_pos_16;
assign grdt0_17 = (a1posfrd) ? a1_posf_17 : a1_pos_17;
assign grdt0_18 = (a1posfrd) ? a1_posf_18 : a1_pos_18;
assign grdt0_19 = (a1posfrd) ? a1_posf_19 : a1_pos_19;
assign grdt0_20 = (a1posfrd) ? a1_posf_20 : a1_pos_20;
assign grdt0_21 = (a1posfrd) ? a1_posf_21 : a1_pos_21;
assign grdt0_22 = (a1posfrd) ? a1_posf_22 : a1_pos_22;
assign grdt0_23 = (a1posfrd) ? a1_posf_23 : a1_pos_23;
assign grdt0_24 = (a1posfrd) ? a1_posf_24 : a1_pos_24;
assign grdt0_25 = (a1posfrd) ? a1_posf_25 : a1_pos_25;
assign grdt0_26 = (a1posfrd) ? a1_posf_26 : a1_pos_26;
assign grdt0_27 = (a1posfrd) ? a1_posf_27 : a1_pos_27;
assign grdt0_28 = (a1posfrd) ? a1_posf_28 : a1_pos_28;
assign grdt0_29 = (a1posfrd) ? a1_posf_29 : a1_pos_29;
assign grdt0_30 = (a1posfrd) ? a1_posf_30 : a1_pos_30;
assign grdt0_31 = (a1posfrd) ? a1_posf_31 : a1_pos_31;

// ADDRESS.NET (240) - grdt1[0-31] : mx2
assign grdt1_0 = (a2posrd) ? a2_pos_0 : grdt0_0;
assign grdt1_1 = (a2posrd) ? a2_pos_1 : grdt0_1;
assign grdt1_2 = (a2posrd) ? a2_pos_2 : grdt0_2;
assign grdt1_3 = (a2posrd) ? a2_pos_3 : grdt0_3;
assign grdt1_4 = (a2posrd) ? a2_pos_4 : grdt0_4;
assign grdt1_5 = (a2posrd) ? a2_pos_5 : grdt0_5;
assign grdt1_6 = (a2posrd) ? a2_pos_6 : grdt0_6;
assign grdt1_7 = (a2posrd) ? a2_pos_7 : grdt0_7;
assign grdt1_8 = (a2posrd) ? a2_pos_8 : grdt0_8;
assign grdt1_9 = (a2posrd) ? a2_pos_9 : grdt0_9;
assign grdt1_10 = (a2posrd) ? a2_pos_10 : grdt0_10;
assign grdt1_11 = (a2posrd) ? a2_pos_11 : grdt0_11;
assign grdt1_12 = (a2posrd) ? a2_pos_12 : grdt0_12;
assign grdt1_13 = (a2posrd) ? a2_pos_13 : grdt0_13;
assign grdt1_14 = (a2posrd) ? a2_pos_14 : grdt0_14;
assign grdt1_15 = (a2posrd) ? a2_pos_15 : grdt0_15;
assign grdt1_16 = (a2posrd) ? a2_pos_16 : grdt0_16;
assign grdt1_17 = (a2posrd) ? a2_pos_17 : grdt0_17;
assign grdt1_18 = (a2posrd) ? a2_pos_18 : grdt0_18;
assign grdt1_19 = (a2posrd) ? a2_pos_19 : grdt0_19;
assign grdt1_20 = (a2posrd) ? a2_pos_20 : grdt0_20;
assign grdt1_21 = (a2posrd) ? a2_pos_21 : grdt0_21;
assign grdt1_22 = (a2posrd) ? a2_pos_22 : grdt0_22;
assign grdt1_23 = (a2posrd) ? a2_pos_23 : grdt0_23;
assign grdt1_24 = (a2posrd) ? a2_pos_24 : grdt0_24;
assign grdt1_25 = (a2posrd) ? a2_pos_25 : grdt0_25;
assign grdt1_26 = (a2posrd) ? a2_pos_26 : grdt0_26;
assign grdt1_27 = (a2posrd) ? a2_pos_27 : grdt0_27;
assign grdt1_28 = (a2posrd) ? a2_pos_28 : grdt0_28;
assign grdt1_29 = (a2posrd) ? a2_pos_29 : grdt0_29;
assign grdt1_30 = (a2posrd) ? a2_pos_30 : grdt0_30;
assign grdt1_31 = (a2posrd) ? a2_pos_31 : grdt0_31;

// ADDRESS.NET (242) - grden : or3u
assign grden = a1posrd | a1posfrd | a2posrd;

// ADDRESS.NET (243) - grd[0-31] : ts
assign gpu_dout_0_out = grdt1_0;
assign gpu_dout_0_oe = grden;
assign gpu_dout_1_out = grdt1_1;
assign gpu_dout_1_oe = grden;
assign gpu_dout_2_out = grdt1_2;
assign gpu_dout_2_oe = grden;
assign gpu_dout_3_out = grdt1_3;
assign gpu_dout_3_oe = grden;
assign gpu_dout_4_out = grdt1_4;
assign gpu_dout_4_oe = grden;
assign gpu_dout_5_out = grdt1_5;
assign gpu_dout_5_oe = grden;
assign gpu_dout_6_out = grdt1_6;
assign gpu_dout_6_oe = grden;
assign gpu_dout_7_out = grdt1_7;
assign gpu_dout_7_oe = grden;
assign gpu_dout_8_out = grdt1_8;
assign gpu_dout_8_oe = grden;
assign gpu_dout_9_out = grdt1_9;
assign gpu_dout_9_oe = grden;
assign gpu_dout_10_out = grdt1_10;
assign gpu_dout_10_oe = grden;
assign gpu_dout_11_out = grdt1_11;
assign gpu_dout_11_oe = grden;
assign gpu_dout_12_out = grdt1_12;
assign gpu_dout_12_oe = grden;
assign gpu_dout_13_out = grdt1_13;
assign gpu_dout_13_oe = grden;
assign gpu_dout_14_out = grdt1_14;
assign gpu_dout_14_oe = grden;
assign gpu_dout_15_out = grdt1_15;
assign gpu_dout_15_oe = grden;
assign gpu_dout_16_out = grdt1_16;
assign gpu_dout_16_oe = grden;
assign gpu_dout_17_out = grdt1_17;
assign gpu_dout_17_oe = grden;
assign gpu_dout_18_out = grdt1_18;
assign gpu_dout_18_oe = grden;
assign gpu_dout_19_out = grdt1_19;
assign gpu_dout_19_oe = grden;
assign gpu_dout_20_out = grdt1_20;
assign gpu_dout_20_oe = grden;
assign gpu_dout_21_out = grdt1_21;
assign gpu_dout_21_oe = grden;
assign gpu_dout_22_out = grdt1_22;
assign gpu_dout_22_oe = grden;
assign gpu_dout_23_out = grdt1_23;
assign gpu_dout_23_oe = grden;
assign gpu_dout_24_out = grdt1_24;
assign gpu_dout_24_oe = grden;
assign gpu_dout_25_out = grdt1_25;
assign gpu_dout_25_oe = grden;
assign gpu_dout_26_out = grdt1_26;
assign gpu_dout_26_oe = grden;
assign gpu_dout_27_out = grdt1_27;
assign gpu_dout_27_oe = grden;
assign gpu_dout_28_out = grdt1_28;
assign gpu_dout_28_oe = grden;
assign gpu_dout_29_out = grdt1_29;
assign gpu_dout_29_oe = grden;
assign gpu_dout_30_out = grdt1_30;
assign gpu_dout_30_oe = grden;
assign gpu_dout_31_out = grdt1_31;
assign gpu_dout_31_oe = grden;

// ADDRESS.NET (245) - unused[0-2] : dummy
endmodule
/* verilator lint_on LITENDIAN */
