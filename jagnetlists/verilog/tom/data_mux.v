/* verilator lint_off LITENDIAN */
`include "defs.v"

module data_mux
(
	output wdata_0_out,
	output wdata_0_oe,
	input wdata_0_in,
	output wdata_1_out,
	output wdata_1_oe,
	input wdata_1_in,
	output wdata_2_out,
	output wdata_2_oe,
	input wdata_2_in,
	output wdata_3_out,
	output wdata_3_oe,
	input wdata_3_in,
	output wdata_4_out,
	output wdata_4_oe,
	input wdata_4_in,
	output wdata_5_out,
	output wdata_5_oe,
	input wdata_5_in,
	output wdata_6_out,
	output wdata_6_oe,
	input wdata_6_in,
	output wdata_7_out,
	output wdata_7_oe,
	input wdata_7_in,
	output wdata_8_out,
	output wdata_8_oe,
	input wdata_8_in,
	output wdata_9_out,
	output wdata_9_oe,
	input wdata_9_in,
	output wdata_10_out,
	output wdata_10_oe,
	input wdata_10_in,
	output wdata_11_out,
	output wdata_11_oe,
	input wdata_11_in,
	output wdata_12_out,
	output wdata_12_oe,
	input wdata_12_in,
	output wdata_13_out,
	output wdata_13_oe,
	input wdata_13_in,
	output wdata_14_out,
	output wdata_14_oe,
	input wdata_14_in,
	output wdata_15_out,
	output wdata_15_oe,
	input wdata_15_in,
	output wdata_16_out,
	output wdata_16_oe,
	input wdata_16_in,
	output wdata_17_out,
	output wdata_17_oe,
	input wdata_17_in,
	output wdata_18_out,
	output wdata_18_oe,
	input wdata_18_in,
	output wdata_19_out,
	output wdata_19_oe,
	input wdata_19_in,
	output wdata_20_out,
	output wdata_20_oe,
	input wdata_20_in,
	output wdata_21_out,
	output wdata_21_oe,
	input wdata_21_in,
	output wdata_22_out,
	output wdata_22_oe,
	input wdata_22_in,
	output wdata_23_out,
	output wdata_23_oe,
	input wdata_23_in,
	output wdata_24_out,
	output wdata_24_oe,
	input wdata_24_in,
	output wdata_25_out,
	output wdata_25_oe,
	input wdata_25_in,
	output wdata_26_out,
	output wdata_26_oe,
	input wdata_26_in,
	output wdata_27_out,
	output wdata_27_oe,
	input wdata_27_in,
	output wdata_28_out,
	output wdata_28_oe,
	input wdata_28_in,
	output wdata_29_out,
	output wdata_29_oe,
	input wdata_29_in,
	output wdata_30_out,
	output wdata_30_oe,
	input wdata_30_in,
	output wdata_31_out,
	output wdata_31_oe,
	input wdata_31_in,
	output wdata_32_out,
	output wdata_32_oe,
	input wdata_32_in,
	output wdata_33_out,
	output wdata_33_oe,
	input wdata_33_in,
	output wdata_34_out,
	output wdata_34_oe,
	input wdata_34_in,
	output wdata_35_out,
	output wdata_35_oe,
	input wdata_35_in,
	output wdata_36_out,
	output wdata_36_oe,
	input wdata_36_in,
	output wdata_37_out,
	output wdata_37_oe,
	input wdata_37_in,
	output wdata_38_out,
	output wdata_38_oe,
	input wdata_38_in,
	output wdata_39_out,
	output wdata_39_oe,
	input wdata_39_in,
	output wdata_40_out,
	output wdata_40_oe,
	input wdata_40_in,
	output wdata_41_out,
	output wdata_41_oe,
	input wdata_41_in,
	output wdata_42_out,
	output wdata_42_oe,
	input wdata_42_in,
	output wdata_43_out,
	output wdata_43_oe,
	input wdata_43_in,
	output wdata_44_out,
	output wdata_44_oe,
	input wdata_44_in,
	output wdata_45_out,
	output wdata_45_oe,
	input wdata_45_in,
	output wdata_46_out,
	output wdata_46_oe,
	input wdata_46_in,
	output wdata_47_out,
	output wdata_47_oe,
	input wdata_47_in,
	output wdata_48_out,
	output wdata_48_oe,
	input wdata_48_in,
	output wdata_49_out,
	output wdata_49_oe,
	input wdata_49_in,
	output wdata_50_out,
	output wdata_50_oe,
	input wdata_50_in,
	output wdata_51_out,
	output wdata_51_oe,
	input wdata_51_in,
	output wdata_52_out,
	output wdata_52_oe,
	input wdata_52_in,
	output wdata_53_out,
	output wdata_53_oe,
	input wdata_53_in,
	output wdata_54_out,
	output wdata_54_oe,
	input wdata_54_in,
	output wdata_55_out,
	output wdata_55_oe,
	input wdata_55_in,
	output wdata_56_out,
	output wdata_56_oe,
	input wdata_56_in,
	output wdata_57_out,
	output wdata_57_oe,
	input wdata_57_in,
	output wdata_58_out,
	output wdata_58_oe,
	input wdata_58_in,
	output wdata_59_out,
	output wdata_59_oe,
	input wdata_59_in,
	output wdata_60_out,
	output wdata_60_oe,
	input wdata_60_in,
	output wdata_61_out,
	output wdata_61_oe,
	input wdata_61_in,
	output wdata_62_out,
	output wdata_62_oe,
	input wdata_62_in,
	output wdata_63_out,
	output wdata_63_oe,
	input wdata_63_in,
	input [0:15] addq_0,
	input [0:15] addq_1,
	input [0:15] addq_2,
	input [0:15] addq_3,
	input big_pix,
	input [0:31] dstdlo,
	input [0:31] dstdhi,
	input [0:31] dstzlo,
	input [0:31] dstzhi,
	input data_sel_0,
	input data_sel_1,
	input data_ena,
	input dstart_0,
	input dstart_1,
	input dstart_2,
	input dstart_3,
	input dstart_4,
	input dstart_5,
	input dend_0,
	input dend_1,
	input dend_2,
	input dend_3,
	input dend_4,
	input dend_5,
	input dbinh_n_0,
	input dbinh_n_1,
	input dbinh_n_2,
	input dbinh_n_3,
	input dbinh_n_4,
	input dbinh_n_5,
	input dbinh_n_6,
	input dbinh_n_7,
	input [0:31] lfu_0,
	input [0:31] lfu_1,
	input [0:31] patd_0,
	input [0:31] patd_1,
	input phrase_mode,
	input [0:31] srczlo,
	input [0:31] srczhi
);
wire [0:31] addql_0;
wire [0:31] addql_1;
wire [0:31] ddatlo;
wire [0:31] ddathi;
wire [0:31] zero32;
wire phrase_mode_n;
wire zero;
wire edis_n;
wire e_coarse_n_0;
wire e_coarse_n_1;
wire e_coarse_n_2;
wire e_coarse_n_3;
wire e_coarse_n_4;
wire e_coarse_n_5;
wire e_coarse_n_6;
wire e_coarse_n_7;
wire e_coarse_0;
wire unused_0;
wire e_fine_n_1;
wire e_fine_n_2;
wire e_fine_n_3;
wire e_fine_n_4;
wire e_fine_n_5;
wire e_fine_n_6;
wire e_fine_n_7;
wire s_coarse_0;
wire s_coarse_1;
wire s_coarse_2;
wire s_coarse_3;
wire s_coarse_4;
wire s_coarse_5;
wire s_coarse_6;
wire s_coarse_7;
wire sfen_n;
wire s_fine_0;
wire s_fine_1;
wire s_fine_2;
wire s_fine_3;
wire s_fine_4;
wire s_fine_5;
wire s_fine_6;
wire s_fine_7;
wire maskt_0;
wire maskt_1;
wire maskt_2;
wire maskt_3;
wire maskt_4;
wire maskt_5;
wire maskt_6;
wire maskt_7;
wire masktla;
wire maskt_8;
wire maskt_9;
wire maskt_10;
wire maskt_11;
wire maskt_12;
wire maskt_13;
wire maskt_14;
wire mir_bit;
wire mir_byte;
wire masktb_14;
wire masku_0;
wire masku_1;
wire masku_2;
wire masku_3;
wire masku_4;
wire masku_5;
wire masku_6;
wire masku_7;
wire masku_8;
wire masku_9;
wire masku_10;
wire masku_11;
wire masku_12;
wire masku_13;
wire masku_14;
wire mask_0;
wire mask_1;
wire mask_2;
wire mask_3;
wire mask_4;
wire mask_5;
wire mask_6;
wire mask_7;
wire mask_8;
wire mask_9;
wire mask_10;
wire mask_11;
wire mask_12;
wire mask_13;
wire mask_14;
wire dsel0b_0;
wire dsel0b_1;
wire dsel1b_0;
wire dsel1b_1;
wire zed_sel;
wire zed_selb_0;
wire zed_selb_1;
wire dat_0;
wire dat_1;
wire dat_2;
wire dat_3;
wire dat_4;
wire dat_5;
wire dat_6;
wire dat_7;
wire dat_8;
wire dat_9;
wire dat_10;
wire dat_11;
wire dat_12;
wire dat_13;
wire dat_14;
wire dat_15;
wire dat_16;
wire dat_17;
wire dat_18;
wire dat_19;
wire dat_20;
wire dat_21;
wire dat_22;
wire dat_23;
wire dat_24;
wire dat_25;
wire dat_26;
wire dat_27;
wire dat_28;
wire dat_29;
wire dat_30;
wire dat_31;
wire dat_32;
wire dat_33;
wire dat_34;
wire dat_35;
wire dat_36;
wire dat_37;
wire dat_38;
wire dat_39;
wire dat_40;
wire dat_41;
wire dat_42;
wire dat_43;
wire dat_44;
wire dat_45;
wire dat_46;
wire dat_47;
wire dat_48;
wire dat_49;
wire dat_50;
wire dat_51;
wire dat_52;
wire dat_53;
wire dat_54;
wire dat_55;
wire dat_56;
wire dat_57;
wire dat_58;
wire dat_59;
wire dat_60;
wire dat_61;
wire dat_62;
wire dat_63;
wire data_enab_0;
wire data_enab_1;

// DATAMUX.NET (192) - phrase_mode\ : iv
assign phrase_mode_n = ~phrase_mode;

// DATAMUX.NET (193) - zero : tie0
assign zero = 1'b0;

// DATAMUX.NET (194) - zero32 : join
assign zero32[0] = zero;
assign zero32[1] = zero;
assign zero32[2] = zero;
assign zero32[3] = zero;
assign zero32[4] = zero;
assign zero32[5] = zero;
assign zero32[6] = zero;
assign zero32[7] = zero;
assign zero32[8] = zero;
assign zero32[9] = zero;
assign zero32[10] = zero;
assign zero32[11] = zero;
assign zero32[12] = zero;
assign zero32[13] = zero;
assign zero32[14] = zero;
assign zero32[15] = zero;
assign zero32[16] = zero;
assign zero32[17] = zero;
assign zero32[18] = zero;
assign zero32[19] = zero;
assign zero32[20] = zero;
assign zero32[21] = zero;
assign zero32[22] = zero;
assign zero32[23] = zero;
assign zero32[24] = zero;
assign zero32[25] = zero;
assign zero32[26] = zero;
assign zero32[27] = zero;
assign zero32[28] = zero;
assign zero32[29] = zero;
assign zero32[30] = zero;
assign zero32[31] = zero;

// DATAMUX.NET (202) - edis : or6
assign edis_n = dend_0 | dend_1 | dend_2 | dend_3 | dend_4 | dend_5;

// DATAMUX.NET (203) - ecoarse : decl38e
decl38e ecoarse_inst
(
	.q_0 /* OUT */ (e_coarse_n_0),
	.q_1 /* OUT */ (e_coarse_n_1),
	.q_2 /* OUT */ (e_coarse_n_2),
	.q_3 /* OUT */ (e_coarse_n_3),
	.q_4 /* OUT */ (e_coarse_n_4),
	.q_5 /* OUT */ (e_coarse_n_5),
	.q_6 /* OUT */ (e_coarse_n_6),
	.q_7 /* OUT */ (e_coarse_n_7),
	.a /* IN */ (dend_3),
	.b /* IN */ (dend_4),
	.c /* IN */ (dend_5),
	.en /* IN */ (edis_n)
);

// DATAMUX.NET (204) - e_coarse[0] : iv
assign e_coarse_0 = ~e_coarse_n_0;

// DATAMUX.NET (205) - efine : decl38e
decl38e efine_inst
(
	.q_0 /* OUT */ (unused_0),
	.q_1 /* OUT */ (e_fine_n_1),
	.q_2 /* OUT */ (e_fine_n_2),
	.q_3 /* OUT */ (e_fine_n_3),
	.q_4 /* OUT */ (e_fine_n_4),
	.q_5 /* OUT */ (e_fine_n_5),
	.q_6 /* OUT */ (e_fine_n_6),
	.q_7 /* OUT */ (e_fine_n_7),
	.a /* IN */ (dend_0),
	.b /* IN */ (dend_1),
	.c /* IN */ (dend_2),
	.en /* IN */ (e_coarse_0)
);

// DATAMUX.NET (208) - scoarse : dech38
dech38 scoarse_inst
(
	.q_0 /* OUT */ (s_coarse_0),
	.q_1 /* OUT */ (s_coarse_1),
	.q_2 /* OUT */ (s_coarse_2),
	.q_3 /* OUT */ (s_coarse_3),
	.q_4 /* OUT */ (s_coarse_4),
	.q_5 /* OUT */ (s_coarse_5),
	.q_6 /* OUT */ (s_coarse_6),
	.q_7 /* OUT */ (s_coarse_7),
	.a /* IN */ (dstart_3),
	.b /* IN */ (dstart_4),
	.c /* IN */ (dstart_5)
);

// DATAMUX.NET (209) - sfen\ : iv
assign sfen_n = ~s_coarse_0;

// DATAMUX.NET (210) - sfine : dech38el
dech38el sfine_inst
(
	.q_0 /* OUT */ (s_fine_0),
	.q_1 /* OUT */ (s_fine_1),
	.q_2 /* OUT */ (s_fine_2),
	.q_3 /* OUT */ (s_fine_3),
	.q_4 /* OUT */ (s_fine_4),
	.q_5 /* OUT */ (s_fine_5),
	.q_6 /* OUT */ (s_fine_6),
	.q_7 /* OUT */ (s_fine_7),
	.a /* IN */ (dstart_0),
	.b /* IN */ (dstart_1),
	.c /* IN */ (dstart_2),
	.en /* IN */ (sfen_n)
);

// DATAMUX.NET (212) - maskt[0] : niv
assign maskt_0 = s_fine_0;

// DATAMUX.NET (213) - maskt[1-7] : oan1p
assign maskt_1 = (maskt_0 | s_fine_1) & e_fine_n_1;
assign maskt_2 = (maskt_1 | s_fine_2) & e_fine_n_2;
assign maskt_3 = (maskt_2 | s_fine_3) & e_fine_n_3;
assign maskt_4 = (maskt_3 | s_fine_4) & e_fine_n_4;
assign maskt_5 = (maskt_4 | s_fine_5) & e_fine_n_5;
assign maskt_6 = (maskt_5 | s_fine_6) & e_fine_n_6;
assign maskt_7 = (maskt_6 | s_fine_7) & e_fine_n_7;

// DATAMUX.NET (218) - masktla : an2
assign masktla = s_coarse_0 & e_coarse_n_0;

// DATAMUX.NET (219) - maskt[8] : oan1p
assign maskt_8 = (masktla | s_coarse_1) & e_coarse_n_1;

// DATAMUX.NET (221) - maskt[9-14] : oan1p
assign maskt_9 = (maskt_8 | s_coarse_2) & e_coarse_n_2;
assign maskt_10 = (maskt_9 | s_coarse_3) & e_coarse_n_3;
assign maskt_11 = (maskt_10 | s_coarse_4) & e_coarse_n_4;
assign maskt_12 = (maskt_11 | s_coarse_5) & e_coarse_n_5;
assign maskt_13 = (maskt_12 | s_coarse_6) & e_coarse_n_6;
assign maskt_14 = (maskt_13 | s_coarse_7) & e_coarse_n_7;

// DATAMUX.NET (228) - mirror_bit : an2m
assign mir_bit = phrase_mode_n & big_pix;

// DATAMUX.NET (229) - mirror_byte : an2h
assign mir_byte = phrase_mode & big_pix;

// DATAMUX.NET (231) - masktb[14] : niv
assign masktb_14 = maskt_14;

// DATAMUX.NET (232) - masku[0] : mx4
mx4 masku_index_0_inst
(
	.z /* OUT */ (masku_0),
	.a0 /* IN */ (maskt_0),
	.a1 /* IN */ (maskt_7),
	.a2 /* IN */ (maskt_14),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (mir_bit),
	.s1 /* IN */ (mir_byte)
);

// DATAMUX.NET (234) - masku[1] : mx4
mx4 masku_index_1_inst
(
	.z /* OUT */ (masku_1),
	.a0 /* IN */ (maskt_1),
	.a1 /* IN */ (maskt_6),
	.a2 /* IN */ (maskt_14),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (mir_bit),
	.s1 /* IN */ (mir_byte)
);

// DATAMUX.NET (236) - masku[2] : mx4
mx4 masku_index_2_inst
(
	.z /* OUT */ (masku_2),
	.a0 /* IN */ (maskt_2),
	.a1 /* IN */ (maskt_5),
	.a2 /* IN */ (maskt_14),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (mir_bit),
	.s1 /* IN */ (mir_byte)
);

// DATAMUX.NET (238) - masku[3] : mx4
mx4 masku_index_3_inst
(
	.z /* OUT */ (masku_3),
	.a0 /* IN */ (maskt_3),
	.a1 /* IN */ (maskt_4),
	.a2 /* IN */ (masktb_14),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (mir_bit),
	.s1 /* IN */ (mir_byte)
);

// DATAMUX.NET (240) - masku[4] : mx4
mx4 masku_index_4_inst
(
	.z /* OUT */ (masku_4),
	.a0 /* IN */ (maskt_4),
	.a1 /* IN */ (maskt_3),
	.a2 /* IN */ (masktb_14),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (mir_bit),
	.s1 /* IN */ (mir_byte)
);

// DATAMUX.NET (242) - masku[5] : mx4
mx4 masku_index_5_inst
(
	.z /* OUT */ (masku_5),
	.a0 /* IN */ (maskt_5),
	.a1 /* IN */ (maskt_2),
	.a2 /* IN */ (masktb_14),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (mir_bit),
	.s1 /* IN */ (mir_byte)
);

// DATAMUX.NET (244) - masku[6] : mx4
mx4 masku_index_6_inst
(
	.z /* OUT */ (masku_6),
	.a0 /* IN */ (maskt_6),
	.a1 /* IN */ (maskt_1),
	.a2 /* IN */ (masktb_14),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (mir_bit),
	.s1 /* IN */ (mir_byte)
);

// DATAMUX.NET (246) - masku[7] : mx4
mx4 masku_index_7_inst
(
	.z /* OUT */ (masku_7),
	.a0 /* IN */ (maskt_7),
	.a1 /* IN */ (maskt_0),
	.a2 /* IN */ (masktb_14),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (mir_bit),
	.s1 /* IN */ (mir_byte)
);

// DATAMUX.NET (248) - masku[8] : mx2
assign masku_8 = (mir_byte) ? maskt_13 : maskt_8;

// DATAMUX.NET (249) - masku[9] : mx2
assign masku_9 = (mir_byte) ? maskt_12 : maskt_9;

// DATAMUX.NET (250) - masku[10] : mx2
assign masku_10 = (mir_byte) ? maskt_11 : maskt_10;

// DATAMUX.NET (251) - masku[11] : mx2
assign masku_11 = (mir_byte) ? maskt_10 : maskt_11;

// DATAMUX.NET (252) - masku[12] : mx2
assign masku_12 = (mir_byte) ? maskt_9 : maskt_12;

// DATAMUX.NET (253) - masku[13] : mx2
assign masku_13 = (mir_byte) ? maskt_8 : maskt_13;

// DATAMUX.NET (254) - masku[14] : mx2
assign masku_14 = (mir_byte) ? maskt_0 : maskt_14;

// DATAMUX.NET (259) - mask[0-7] : an2
assign mask_0 = masku_0 & dbinh_n_0;
assign mask_1 = masku_1 & dbinh_n_0;
assign mask_2 = masku_2 & dbinh_n_0;
assign mask_3 = masku_3 & dbinh_n_0;
assign mask_4 = masku_4 & dbinh_n_0;
assign mask_5 = masku_5 & dbinh_n_0;
assign mask_6 = masku_6 & dbinh_n_0;
assign mask_7 = masku_7 & dbinh_n_0;

// DATAMUX.NET (260) - mask[8-14] : an2h
assign mask_8 = masku_8 & dbinh_n_1;
assign mask_9 = masku_9 & dbinh_n_2;
assign mask_10 = masku_10 & dbinh_n_3;
assign mask_11 = masku_11 & dbinh_n_4;
assign mask_12 = masku_12 & dbinh_n_5;
assign mask_13 = masku_13 & dbinh_n_6;
assign mask_14 = masku_14 & dbinh_n_7;

// DATAMUX.NET (262) - addql[0] : join
assign addql_0[0] = addq_0[0];
assign addql_0[1] = addq_0[1];
assign addql_0[2] = addq_0[2];
assign addql_0[3] = addq_0[3];
assign addql_0[4] = addq_0[4];
assign addql_0[5] = addq_0[5];
assign addql_0[6] = addq_0[6];
assign addql_0[7] = addq_0[7];
assign addql_0[8] = addq_0[8];
assign addql_0[9] = addq_0[9];
assign addql_0[10] = addq_0[10];
assign addql_0[11] = addq_0[11];
assign addql_0[12] = addq_0[12];
assign addql_0[13] = addq_0[13];
assign addql_0[14] = addq_0[14];
assign addql_0[15] = addq_0[15];
assign addql_0[16] = addq_1[0];
assign addql_0[17] = addq_1[1];
assign addql_0[18] = addq_1[2];
assign addql_0[19] = addq_1[3];
assign addql_0[20] = addq_1[4];
assign addql_0[21] = addq_1[5];
assign addql_0[22] = addq_1[6];
assign addql_0[23] = addq_1[7];
assign addql_0[24] = addq_1[8];
assign addql_0[25] = addq_1[9];
assign addql_0[26] = addq_1[10];
assign addql_0[27] = addq_1[11];
assign addql_0[28] = addq_1[12];
assign addql_0[29] = addq_1[13];
assign addql_0[30] = addq_1[14];
assign addql_0[31] = addq_1[15];

// DATAMUX.NET (263) - addql[1] : join
assign addql_1[0] = addq_2[0];
assign addql_1[1] = addq_2[1];
assign addql_1[2] = addq_2[2];
assign addql_1[3] = addq_2[3];
assign addql_1[4] = addq_2[4];
assign addql_1[5] = addq_2[5];
assign addql_1[6] = addq_2[6];
assign addql_1[7] = addq_2[7];
assign addql_1[8] = addq_2[8];
assign addql_1[9] = addq_2[9];
assign addql_1[10] = addq_2[10];
assign addql_1[11] = addq_2[11];
assign addql_1[12] = addq_2[12];
assign addql_1[13] = addq_2[13];
assign addql_1[14] = addq_2[14];
assign addql_1[15] = addq_2[15];
assign addql_1[16] = addq_3[0];
assign addql_1[17] = addq_3[1];
assign addql_1[18] = addq_3[2];
assign addql_1[19] = addq_3[3];
assign addql_1[20] = addq_3[4];
assign addql_1[21] = addq_3[5];
assign addql_1[22] = addq_3[6];
assign addql_1[23] = addq_3[7];
assign addql_1[24] = addq_3[8];
assign addql_1[25] = addq_3[9];
assign addql_1[26] = addq_3[10];
assign addql_1[27] = addq_3[11];
assign addql_1[28] = addq_3[12];
assign addql_1[29] = addq_3[13];
assign addql_1[30] = addq_3[14];
assign addql_1[31] = addq_3[15];

// DATAMUX.NET (265) - dsel0b[0-1] : nivu
assign dsel0b_0 = data_sel_0;
assign dsel0b_1 = data_sel_0;

// DATAMUX.NET (266) - dsel1b[0-1] : nivu
assign dsel1b_0 = data_sel_1;
assign dsel1b_1 = data_sel_1;

// DATAMUX.NET (267) - ddatlo : mx4
mx4 ddatlo_inst_0
(
	.z /* OUT */ (ddatlo[0]),
	.a0 /* IN */ (patd_0[0]),
	.a1 /* IN */ (lfu_0[0]),
	.a2 /* IN */ (addql_0[0]),
	.a3 /* IN */ (zero32[0]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 ddatlo_inst_1
(
	.z /* OUT */ (ddatlo[1]),
	.a0 /* IN */ (patd_0[1]),
	.a1 /* IN */ (lfu_0[1]),
	.a2 /* IN */ (addql_0[1]),
	.a3 /* IN */ (zero32[1]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 ddatlo_inst_2
(
	.z /* OUT */ (ddatlo[2]),
	.a0 /* IN */ (patd_0[2]),
	.a1 /* IN */ (lfu_0[2]),
	.a2 /* IN */ (addql_0[2]),
	.a3 /* IN */ (zero32[2]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 ddatlo_inst_3
(
	.z /* OUT */ (ddatlo[3]),
	.a0 /* IN */ (patd_0[3]),
	.a1 /* IN */ (lfu_0[3]),
	.a2 /* IN */ (addql_0[3]),
	.a3 /* IN */ (zero32[3]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 ddatlo_inst_4
(
	.z /* OUT */ (ddatlo[4]),
	.a0 /* IN */ (patd_0[4]),
	.a1 /* IN */ (lfu_0[4]),
	.a2 /* IN */ (addql_0[4]),
	.a3 /* IN */ (zero32[4]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 ddatlo_inst_5
(
	.z /* OUT */ (ddatlo[5]),
	.a0 /* IN */ (patd_0[5]),
	.a1 /* IN */ (lfu_0[5]),
	.a2 /* IN */ (addql_0[5]),
	.a3 /* IN */ (zero32[5]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 ddatlo_inst_6
(
	.z /* OUT */ (ddatlo[6]),
	.a0 /* IN */ (patd_0[6]),
	.a1 /* IN */ (lfu_0[6]),
	.a2 /* IN */ (addql_0[6]),
	.a3 /* IN */ (zero32[6]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 ddatlo_inst_7
(
	.z /* OUT */ (ddatlo[7]),
	.a0 /* IN */ (patd_0[7]),
	.a1 /* IN */ (lfu_0[7]),
	.a2 /* IN */ (addql_0[7]),
	.a3 /* IN */ (zero32[7]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 ddatlo_inst_8
(
	.z /* OUT */ (ddatlo[8]),
	.a0 /* IN */ (patd_0[8]),
	.a1 /* IN */ (lfu_0[8]),
	.a2 /* IN */ (addql_0[8]),
	.a3 /* IN */ (zero32[8]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 ddatlo_inst_9
(
	.z /* OUT */ (ddatlo[9]),
	.a0 /* IN */ (patd_0[9]),
	.a1 /* IN */ (lfu_0[9]),
	.a2 /* IN */ (addql_0[9]),
	.a3 /* IN */ (zero32[9]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 ddatlo_inst_10
(
	.z /* OUT */ (ddatlo[10]),
	.a0 /* IN */ (patd_0[10]),
	.a1 /* IN */ (lfu_0[10]),
	.a2 /* IN */ (addql_0[10]),
	.a3 /* IN */ (zero32[10]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 ddatlo_inst_11
(
	.z /* OUT */ (ddatlo[11]),
	.a0 /* IN */ (patd_0[11]),
	.a1 /* IN */ (lfu_0[11]),
	.a2 /* IN */ (addql_0[11]),
	.a3 /* IN */ (zero32[11]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 ddatlo_inst_12
(
	.z /* OUT */ (ddatlo[12]),
	.a0 /* IN */ (patd_0[12]),
	.a1 /* IN */ (lfu_0[12]),
	.a2 /* IN */ (addql_0[12]),
	.a3 /* IN */ (zero32[12]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 ddatlo_inst_13
(
	.z /* OUT */ (ddatlo[13]),
	.a0 /* IN */ (patd_0[13]),
	.a1 /* IN */ (lfu_0[13]),
	.a2 /* IN */ (addql_0[13]),
	.a3 /* IN */ (zero32[13]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 ddatlo_inst_14
(
	.z /* OUT */ (ddatlo[14]),
	.a0 /* IN */ (patd_0[14]),
	.a1 /* IN */ (lfu_0[14]),
	.a2 /* IN */ (addql_0[14]),
	.a3 /* IN */ (zero32[14]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 ddatlo_inst_15
(
	.z /* OUT */ (ddatlo[15]),
	.a0 /* IN */ (patd_0[15]),
	.a1 /* IN */ (lfu_0[15]),
	.a2 /* IN */ (addql_0[15]),
	.a3 /* IN */ (zero32[15]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 ddatlo_inst_16
(
	.z /* OUT */ (ddatlo[16]),
	.a0 /* IN */ (patd_0[16]),
	.a1 /* IN */ (lfu_0[16]),
	.a2 /* IN */ (addql_0[16]),
	.a3 /* IN */ (zero32[16]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 ddatlo_inst_17
(
	.z /* OUT */ (ddatlo[17]),
	.a0 /* IN */ (patd_0[17]),
	.a1 /* IN */ (lfu_0[17]),
	.a2 /* IN */ (addql_0[17]),
	.a3 /* IN */ (zero32[17]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 ddatlo_inst_18
(
	.z /* OUT */ (ddatlo[18]),
	.a0 /* IN */ (patd_0[18]),
	.a1 /* IN */ (lfu_0[18]),
	.a2 /* IN */ (addql_0[18]),
	.a3 /* IN */ (zero32[18]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 ddatlo_inst_19
(
	.z /* OUT */ (ddatlo[19]),
	.a0 /* IN */ (patd_0[19]),
	.a1 /* IN */ (lfu_0[19]),
	.a2 /* IN */ (addql_0[19]),
	.a3 /* IN */ (zero32[19]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 ddatlo_inst_20
(
	.z /* OUT */ (ddatlo[20]),
	.a0 /* IN */ (patd_0[20]),
	.a1 /* IN */ (lfu_0[20]),
	.a2 /* IN */ (addql_0[20]),
	.a3 /* IN */ (zero32[20]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 ddatlo_inst_21
(
	.z /* OUT */ (ddatlo[21]),
	.a0 /* IN */ (patd_0[21]),
	.a1 /* IN */ (lfu_0[21]),
	.a2 /* IN */ (addql_0[21]),
	.a3 /* IN */ (zero32[21]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 ddatlo_inst_22
(
	.z /* OUT */ (ddatlo[22]),
	.a0 /* IN */ (patd_0[22]),
	.a1 /* IN */ (lfu_0[22]),
	.a2 /* IN */ (addql_0[22]),
	.a3 /* IN */ (zero32[22]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 ddatlo_inst_23
(
	.z /* OUT */ (ddatlo[23]),
	.a0 /* IN */ (patd_0[23]),
	.a1 /* IN */ (lfu_0[23]),
	.a2 /* IN */ (addql_0[23]),
	.a3 /* IN */ (zero32[23]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 ddatlo_inst_24
(
	.z /* OUT */ (ddatlo[24]),
	.a0 /* IN */ (patd_0[24]),
	.a1 /* IN */ (lfu_0[24]),
	.a2 /* IN */ (addql_0[24]),
	.a3 /* IN */ (zero32[24]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 ddatlo_inst_25
(
	.z /* OUT */ (ddatlo[25]),
	.a0 /* IN */ (patd_0[25]),
	.a1 /* IN */ (lfu_0[25]),
	.a2 /* IN */ (addql_0[25]),
	.a3 /* IN */ (zero32[25]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 ddatlo_inst_26
(
	.z /* OUT */ (ddatlo[26]),
	.a0 /* IN */ (patd_0[26]),
	.a1 /* IN */ (lfu_0[26]),
	.a2 /* IN */ (addql_0[26]),
	.a3 /* IN */ (zero32[26]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 ddatlo_inst_27
(
	.z /* OUT */ (ddatlo[27]),
	.a0 /* IN */ (patd_0[27]),
	.a1 /* IN */ (lfu_0[27]),
	.a2 /* IN */ (addql_0[27]),
	.a3 /* IN */ (zero32[27]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 ddatlo_inst_28
(
	.z /* OUT */ (ddatlo[28]),
	.a0 /* IN */ (patd_0[28]),
	.a1 /* IN */ (lfu_0[28]),
	.a2 /* IN */ (addql_0[28]),
	.a3 /* IN */ (zero32[28]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 ddatlo_inst_29
(
	.z /* OUT */ (ddatlo[29]),
	.a0 /* IN */ (patd_0[29]),
	.a1 /* IN */ (lfu_0[29]),
	.a2 /* IN */ (addql_0[29]),
	.a3 /* IN */ (zero32[29]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 ddatlo_inst_30
(
	.z /* OUT */ (ddatlo[30]),
	.a0 /* IN */ (patd_0[30]),
	.a1 /* IN */ (lfu_0[30]),
	.a2 /* IN */ (addql_0[30]),
	.a3 /* IN */ (zero32[30]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 ddatlo_inst_31
(
	.z /* OUT */ (ddatlo[31]),
	.a0 /* IN */ (patd_0[31]),
	.a1 /* IN */ (lfu_0[31]),
	.a2 /* IN */ (addql_0[31]),
	.a3 /* IN */ (zero32[31]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);

// DATAMUX.NET (269) - ddathi : mx4
mx4 ddathi_inst_0
(
	.z /* OUT */ (ddathi[0]),
	.a0 /* IN */ (patd_1[0]),
	.a1 /* IN */ (lfu_1[0]),
	.a2 /* IN */ (addql_1[0]),
	.a3 /* IN */ (zero32[0]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 ddathi_inst_1
(
	.z /* OUT */ (ddathi[1]),
	.a0 /* IN */ (patd_1[1]),
	.a1 /* IN */ (lfu_1[1]),
	.a2 /* IN */ (addql_1[1]),
	.a3 /* IN */ (zero32[1]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 ddathi_inst_2
(
	.z /* OUT */ (ddathi[2]),
	.a0 /* IN */ (patd_1[2]),
	.a1 /* IN */ (lfu_1[2]),
	.a2 /* IN */ (addql_1[2]),
	.a3 /* IN */ (zero32[2]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 ddathi_inst_3
(
	.z /* OUT */ (ddathi[3]),
	.a0 /* IN */ (patd_1[3]),
	.a1 /* IN */ (lfu_1[3]),
	.a2 /* IN */ (addql_1[3]),
	.a3 /* IN */ (zero32[3]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 ddathi_inst_4
(
	.z /* OUT */ (ddathi[4]),
	.a0 /* IN */ (patd_1[4]),
	.a1 /* IN */ (lfu_1[4]),
	.a2 /* IN */ (addql_1[4]),
	.a3 /* IN */ (zero32[4]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 ddathi_inst_5
(
	.z /* OUT */ (ddathi[5]),
	.a0 /* IN */ (patd_1[5]),
	.a1 /* IN */ (lfu_1[5]),
	.a2 /* IN */ (addql_1[5]),
	.a3 /* IN */ (zero32[5]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 ddathi_inst_6
(
	.z /* OUT */ (ddathi[6]),
	.a0 /* IN */ (patd_1[6]),
	.a1 /* IN */ (lfu_1[6]),
	.a2 /* IN */ (addql_1[6]),
	.a3 /* IN */ (zero32[6]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 ddathi_inst_7
(
	.z /* OUT */ (ddathi[7]),
	.a0 /* IN */ (patd_1[7]),
	.a1 /* IN */ (lfu_1[7]),
	.a2 /* IN */ (addql_1[7]),
	.a3 /* IN */ (zero32[7]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 ddathi_inst_8
(
	.z /* OUT */ (ddathi[8]),
	.a0 /* IN */ (patd_1[8]),
	.a1 /* IN */ (lfu_1[8]),
	.a2 /* IN */ (addql_1[8]),
	.a3 /* IN */ (zero32[8]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 ddathi_inst_9
(
	.z /* OUT */ (ddathi[9]),
	.a0 /* IN */ (patd_1[9]),
	.a1 /* IN */ (lfu_1[9]),
	.a2 /* IN */ (addql_1[9]),
	.a3 /* IN */ (zero32[9]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 ddathi_inst_10
(
	.z /* OUT */ (ddathi[10]),
	.a0 /* IN */ (patd_1[10]),
	.a1 /* IN */ (lfu_1[10]),
	.a2 /* IN */ (addql_1[10]),
	.a3 /* IN */ (zero32[10]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 ddathi_inst_11
(
	.z /* OUT */ (ddathi[11]),
	.a0 /* IN */ (patd_1[11]),
	.a1 /* IN */ (lfu_1[11]),
	.a2 /* IN */ (addql_1[11]),
	.a3 /* IN */ (zero32[11]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 ddathi_inst_12
(
	.z /* OUT */ (ddathi[12]),
	.a0 /* IN */ (patd_1[12]),
	.a1 /* IN */ (lfu_1[12]),
	.a2 /* IN */ (addql_1[12]),
	.a3 /* IN */ (zero32[12]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 ddathi_inst_13
(
	.z /* OUT */ (ddathi[13]),
	.a0 /* IN */ (patd_1[13]),
	.a1 /* IN */ (lfu_1[13]),
	.a2 /* IN */ (addql_1[13]),
	.a3 /* IN */ (zero32[13]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 ddathi_inst_14
(
	.z /* OUT */ (ddathi[14]),
	.a0 /* IN */ (patd_1[14]),
	.a1 /* IN */ (lfu_1[14]),
	.a2 /* IN */ (addql_1[14]),
	.a3 /* IN */ (zero32[14]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 ddathi_inst_15
(
	.z /* OUT */ (ddathi[15]),
	.a0 /* IN */ (patd_1[15]),
	.a1 /* IN */ (lfu_1[15]),
	.a2 /* IN */ (addql_1[15]),
	.a3 /* IN */ (zero32[15]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 ddathi_inst_16
(
	.z /* OUT */ (ddathi[16]),
	.a0 /* IN */ (patd_1[16]),
	.a1 /* IN */ (lfu_1[16]),
	.a2 /* IN */ (addql_1[16]),
	.a3 /* IN */ (zero32[16]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 ddathi_inst_17
(
	.z /* OUT */ (ddathi[17]),
	.a0 /* IN */ (patd_1[17]),
	.a1 /* IN */ (lfu_1[17]),
	.a2 /* IN */ (addql_1[17]),
	.a3 /* IN */ (zero32[17]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 ddathi_inst_18
(
	.z /* OUT */ (ddathi[18]),
	.a0 /* IN */ (patd_1[18]),
	.a1 /* IN */ (lfu_1[18]),
	.a2 /* IN */ (addql_1[18]),
	.a3 /* IN */ (zero32[18]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 ddathi_inst_19
(
	.z /* OUT */ (ddathi[19]),
	.a0 /* IN */ (patd_1[19]),
	.a1 /* IN */ (lfu_1[19]),
	.a2 /* IN */ (addql_1[19]),
	.a3 /* IN */ (zero32[19]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 ddathi_inst_20
(
	.z /* OUT */ (ddathi[20]),
	.a0 /* IN */ (patd_1[20]),
	.a1 /* IN */ (lfu_1[20]),
	.a2 /* IN */ (addql_1[20]),
	.a3 /* IN */ (zero32[20]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 ddathi_inst_21
(
	.z /* OUT */ (ddathi[21]),
	.a0 /* IN */ (patd_1[21]),
	.a1 /* IN */ (lfu_1[21]),
	.a2 /* IN */ (addql_1[21]),
	.a3 /* IN */ (zero32[21]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 ddathi_inst_22
(
	.z /* OUT */ (ddathi[22]),
	.a0 /* IN */ (patd_1[22]),
	.a1 /* IN */ (lfu_1[22]),
	.a2 /* IN */ (addql_1[22]),
	.a3 /* IN */ (zero32[22]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 ddathi_inst_23
(
	.z /* OUT */ (ddathi[23]),
	.a0 /* IN */ (patd_1[23]),
	.a1 /* IN */ (lfu_1[23]),
	.a2 /* IN */ (addql_1[23]),
	.a3 /* IN */ (zero32[23]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 ddathi_inst_24
(
	.z /* OUT */ (ddathi[24]),
	.a0 /* IN */ (patd_1[24]),
	.a1 /* IN */ (lfu_1[24]),
	.a2 /* IN */ (addql_1[24]),
	.a3 /* IN */ (zero32[24]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 ddathi_inst_25
(
	.z /* OUT */ (ddathi[25]),
	.a0 /* IN */ (patd_1[25]),
	.a1 /* IN */ (lfu_1[25]),
	.a2 /* IN */ (addql_1[25]),
	.a3 /* IN */ (zero32[25]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 ddathi_inst_26
(
	.z /* OUT */ (ddathi[26]),
	.a0 /* IN */ (patd_1[26]),
	.a1 /* IN */ (lfu_1[26]),
	.a2 /* IN */ (addql_1[26]),
	.a3 /* IN */ (zero32[26]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 ddathi_inst_27
(
	.z /* OUT */ (ddathi[27]),
	.a0 /* IN */ (patd_1[27]),
	.a1 /* IN */ (lfu_1[27]),
	.a2 /* IN */ (addql_1[27]),
	.a3 /* IN */ (zero32[27]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 ddathi_inst_28
(
	.z /* OUT */ (ddathi[28]),
	.a0 /* IN */ (patd_1[28]),
	.a1 /* IN */ (lfu_1[28]),
	.a2 /* IN */ (addql_1[28]),
	.a3 /* IN */ (zero32[28]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 ddathi_inst_29
(
	.z /* OUT */ (ddathi[29]),
	.a0 /* IN */ (patd_1[29]),
	.a1 /* IN */ (lfu_1[29]),
	.a2 /* IN */ (addql_1[29]),
	.a3 /* IN */ (zero32[29]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 ddathi_inst_30
(
	.z /* OUT */ (ddathi[30]),
	.a0 /* IN */ (patd_1[30]),
	.a1 /* IN */ (lfu_1[30]),
	.a2 /* IN */ (addql_1[30]),
	.a3 /* IN */ (zero32[30]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 ddathi_inst_31
(
	.z /* OUT */ (ddathi[31]),
	.a0 /* IN */ (patd_1[31]),
	.a1 /* IN */ (lfu_1[31]),
	.a2 /* IN */ (addql_1[31]),
	.a3 /* IN */ (zero32[31]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);

// DATAMUX.NET (272) - zed_sel : an2
assign zed_sel = data_sel_0 & data_sel_1;

// DATAMUX.NET (273) - zed_selb[0-1] : nivu
assign zed_selb_0 = zed_sel;
assign zed_selb_1 = zed_sel;

// DATAMUX.NET (275) - dat[0-7] : mx4
mx4 dat_from_0_to_7_inst_0
(
	.z /* OUT */ (dat_0),
	.a0 /* IN */ (dstdlo[0]),
	.a1 /* IN */ (ddatlo[0]),
	.a2 /* IN */ (dstzlo[0]),
	.a3 /* IN */ (srczlo[0]),
	.s0 /* IN */ (mask_0),
	.s1 /* IN */ (zed_selb_0)
);
mx4 dat_from_0_to_7_inst_1
(
	.z /* OUT */ (dat_1),
	.a0 /* IN */ (dstdlo[1]),
	.a1 /* IN */ (ddatlo[1]),
	.a2 /* IN */ (dstzlo[1]),
	.a3 /* IN */ (srczlo[1]),
	.s0 /* IN */ (mask_1),
	.s1 /* IN */ (zed_selb_0)
);
mx4 dat_from_0_to_7_inst_2
(
	.z /* OUT */ (dat_2),
	.a0 /* IN */ (dstdlo[2]),
	.a1 /* IN */ (ddatlo[2]),
	.a2 /* IN */ (dstzlo[2]),
	.a3 /* IN */ (srczlo[2]),
	.s0 /* IN */ (mask_2),
	.s1 /* IN */ (zed_selb_0)
);
mx4 dat_from_0_to_7_inst_3
(
	.z /* OUT */ (dat_3),
	.a0 /* IN */ (dstdlo[3]),
	.a1 /* IN */ (ddatlo[3]),
	.a2 /* IN */ (dstzlo[3]),
	.a3 /* IN */ (srczlo[3]),
	.s0 /* IN */ (mask_3),
	.s1 /* IN */ (zed_selb_0)
);
mx4 dat_from_0_to_7_inst_4
(
	.z /* OUT */ (dat_4),
	.a0 /* IN */ (dstdlo[4]),
	.a1 /* IN */ (ddatlo[4]),
	.a2 /* IN */ (dstzlo[4]),
	.a3 /* IN */ (srczlo[4]),
	.s0 /* IN */ (mask_4),
	.s1 /* IN */ (zed_selb_0)
);
mx4 dat_from_0_to_7_inst_5
(
	.z /* OUT */ (dat_5),
	.a0 /* IN */ (dstdlo[5]),
	.a1 /* IN */ (ddatlo[5]),
	.a2 /* IN */ (dstzlo[5]),
	.a3 /* IN */ (srczlo[5]),
	.s0 /* IN */ (mask_5),
	.s1 /* IN */ (zed_selb_0)
);
mx4 dat_from_0_to_7_inst_6
(
	.z /* OUT */ (dat_6),
	.a0 /* IN */ (dstdlo[6]),
	.a1 /* IN */ (ddatlo[6]),
	.a2 /* IN */ (dstzlo[6]),
	.a3 /* IN */ (srczlo[6]),
	.s0 /* IN */ (mask_6),
	.s1 /* IN */ (zed_selb_0)
);
mx4 dat_from_0_to_7_inst_7
(
	.z /* OUT */ (dat_7),
	.a0 /* IN */ (dstdlo[7]),
	.a1 /* IN */ (ddatlo[7]),
	.a2 /* IN */ (dstzlo[7]),
	.a3 /* IN */ (srczlo[7]),
	.s0 /* IN */ (mask_7),
	.s1 /* IN */ (zed_selb_0)
);

// DATAMUX.NET (278) - dat[8-15] : mx4
mx4 dat_from_8_to_15_inst_0
(
	.z /* OUT */ (dat_8),
	.a0 /* IN */ (dstdlo[8]),
	.a1 /* IN */ (ddatlo[8]),
	.a2 /* IN */ (dstzlo[8]),
	.a3 /* IN */ (srczlo[8]),
	.s0 /* IN */ (mask_8),
	.s1 /* IN */ (zed_selb_0)
);
mx4 dat_from_8_to_15_inst_1
(
	.z /* OUT */ (dat_9),
	.a0 /* IN */ (dstdlo[9]),
	.a1 /* IN */ (ddatlo[9]),
	.a2 /* IN */ (dstzlo[9]),
	.a3 /* IN */ (srczlo[9]),
	.s0 /* IN */ (mask_8),
	.s1 /* IN */ (zed_selb_0)
);
mx4 dat_from_8_to_15_inst_2
(
	.z /* OUT */ (dat_10),
	.a0 /* IN */ (dstdlo[10]),
	.a1 /* IN */ (ddatlo[10]),
	.a2 /* IN */ (dstzlo[10]),
	.a3 /* IN */ (srczlo[10]),
	.s0 /* IN */ (mask_8),
	.s1 /* IN */ (zed_selb_0)
);
mx4 dat_from_8_to_15_inst_3
(
	.z /* OUT */ (dat_11),
	.a0 /* IN */ (dstdlo[11]),
	.a1 /* IN */ (ddatlo[11]),
	.a2 /* IN */ (dstzlo[11]),
	.a3 /* IN */ (srczlo[11]),
	.s0 /* IN */ (mask_8),
	.s1 /* IN */ (zed_selb_0)
);
mx4 dat_from_8_to_15_inst_4
(
	.z /* OUT */ (dat_12),
	.a0 /* IN */ (dstdlo[12]),
	.a1 /* IN */ (ddatlo[12]),
	.a2 /* IN */ (dstzlo[12]),
	.a3 /* IN */ (srczlo[12]),
	.s0 /* IN */ (mask_8),
	.s1 /* IN */ (zed_selb_0)
);
mx4 dat_from_8_to_15_inst_5
(
	.z /* OUT */ (dat_13),
	.a0 /* IN */ (dstdlo[13]),
	.a1 /* IN */ (ddatlo[13]),
	.a2 /* IN */ (dstzlo[13]),
	.a3 /* IN */ (srczlo[13]),
	.s0 /* IN */ (mask_8),
	.s1 /* IN */ (zed_selb_0)
);
mx4 dat_from_8_to_15_inst_6
(
	.z /* OUT */ (dat_14),
	.a0 /* IN */ (dstdlo[14]),
	.a1 /* IN */ (ddatlo[14]),
	.a2 /* IN */ (dstzlo[14]),
	.a3 /* IN */ (srczlo[14]),
	.s0 /* IN */ (mask_8),
	.s1 /* IN */ (zed_selb_0)
);
mx4 dat_from_8_to_15_inst_7
(
	.z /* OUT */ (dat_15),
	.a0 /* IN */ (dstdlo[15]),
	.a1 /* IN */ (ddatlo[15]),
	.a2 /* IN */ (dstzlo[15]),
	.a3 /* IN */ (srczlo[15]),
	.s0 /* IN */ (mask_8),
	.s1 /* IN */ (zed_selb_0)
);

// DATAMUX.NET (281) - dat[16-23] : mx4
mx4 dat_from_16_to_23_inst_0
(
	.z /* OUT */ (dat_16),
	.a0 /* IN */ (dstdlo[16]),
	.a1 /* IN */ (ddatlo[16]),
	.a2 /* IN */ (dstzlo[16]),
	.a3 /* IN */ (srczlo[16]),
	.s0 /* IN */ (mask_9),
	.s1 /* IN */ (zed_selb_0)
);
mx4 dat_from_16_to_23_inst_1
(
	.z /* OUT */ (dat_17),
	.a0 /* IN */ (dstdlo[17]),
	.a1 /* IN */ (ddatlo[17]),
	.a2 /* IN */ (dstzlo[17]),
	.a3 /* IN */ (srczlo[17]),
	.s0 /* IN */ (mask_9),
	.s1 /* IN */ (zed_selb_0)
);
mx4 dat_from_16_to_23_inst_2
(
	.z /* OUT */ (dat_18),
	.a0 /* IN */ (dstdlo[18]),
	.a1 /* IN */ (ddatlo[18]),
	.a2 /* IN */ (dstzlo[18]),
	.a3 /* IN */ (srczlo[18]),
	.s0 /* IN */ (mask_9),
	.s1 /* IN */ (zed_selb_0)
);
mx4 dat_from_16_to_23_inst_3
(
	.z /* OUT */ (dat_19),
	.a0 /* IN */ (dstdlo[19]),
	.a1 /* IN */ (ddatlo[19]),
	.a2 /* IN */ (dstzlo[19]),
	.a3 /* IN */ (srczlo[19]),
	.s0 /* IN */ (mask_9),
	.s1 /* IN */ (zed_selb_0)
);
mx4 dat_from_16_to_23_inst_4
(
	.z /* OUT */ (dat_20),
	.a0 /* IN */ (dstdlo[20]),
	.a1 /* IN */ (ddatlo[20]),
	.a2 /* IN */ (dstzlo[20]),
	.a3 /* IN */ (srczlo[20]),
	.s0 /* IN */ (mask_9),
	.s1 /* IN */ (zed_selb_0)
);
mx4 dat_from_16_to_23_inst_5
(
	.z /* OUT */ (dat_21),
	.a0 /* IN */ (dstdlo[21]),
	.a1 /* IN */ (ddatlo[21]),
	.a2 /* IN */ (dstzlo[21]),
	.a3 /* IN */ (srczlo[21]),
	.s0 /* IN */ (mask_9),
	.s1 /* IN */ (zed_selb_0)
);
mx4 dat_from_16_to_23_inst_6
(
	.z /* OUT */ (dat_22),
	.a0 /* IN */ (dstdlo[22]),
	.a1 /* IN */ (ddatlo[22]),
	.a2 /* IN */ (dstzlo[22]),
	.a3 /* IN */ (srczlo[22]),
	.s0 /* IN */ (mask_9),
	.s1 /* IN */ (zed_selb_0)
);
mx4 dat_from_16_to_23_inst_7
(
	.z /* OUT */ (dat_23),
	.a0 /* IN */ (dstdlo[23]),
	.a1 /* IN */ (ddatlo[23]),
	.a2 /* IN */ (dstzlo[23]),
	.a3 /* IN */ (srczlo[23]),
	.s0 /* IN */ (mask_9),
	.s1 /* IN */ (zed_selb_0)
);

// DATAMUX.NET (284) - dat[24-31] : mx4
mx4 dat_from_24_to_31_inst_0
(
	.z /* OUT */ (dat_24),
	.a0 /* IN */ (dstdlo[24]),
	.a1 /* IN */ (ddatlo[24]),
	.a2 /* IN */ (dstzlo[24]),
	.a3 /* IN */ (srczlo[24]),
	.s0 /* IN */ (mask_10),
	.s1 /* IN */ (zed_selb_0)
);
mx4 dat_from_24_to_31_inst_1
(
	.z /* OUT */ (dat_25),
	.a0 /* IN */ (dstdlo[25]),
	.a1 /* IN */ (ddatlo[25]),
	.a2 /* IN */ (dstzlo[25]),
	.a3 /* IN */ (srczlo[25]),
	.s0 /* IN */ (mask_10),
	.s1 /* IN */ (zed_selb_0)
);
mx4 dat_from_24_to_31_inst_2
(
	.z /* OUT */ (dat_26),
	.a0 /* IN */ (dstdlo[26]),
	.a1 /* IN */ (ddatlo[26]),
	.a2 /* IN */ (dstzlo[26]),
	.a3 /* IN */ (srczlo[26]),
	.s0 /* IN */ (mask_10),
	.s1 /* IN */ (zed_selb_0)
);
mx4 dat_from_24_to_31_inst_3
(
	.z /* OUT */ (dat_27),
	.a0 /* IN */ (dstdlo[27]),
	.a1 /* IN */ (ddatlo[27]),
	.a2 /* IN */ (dstzlo[27]),
	.a3 /* IN */ (srczlo[27]),
	.s0 /* IN */ (mask_10),
	.s1 /* IN */ (zed_selb_0)
);
mx4 dat_from_24_to_31_inst_4
(
	.z /* OUT */ (dat_28),
	.a0 /* IN */ (dstdlo[28]),
	.a1 /* IN */ (ddatlo[28]),
	.a2 /* IN */ (dstzlo[28]),
	.a3 /* IN */ (srczlo[28]),
	.s0 /* IN */ (mask_10),
	.s1 /* IN */ (zed_selb_0)
);
mx4 dat_from_24_to_31_inst_5
(
	.z /* OUT */ (dat_29),
	.a0 /* IN */ (dstdlo[29]),
	.a1 /* IN */ (ddatlo[29]),
	.a2 /* IN */ (dstzlo[29]),
	.a3 /* IN */ (srczlo[29]),
	.s0 /* IN */ (mask_10),
	.s1 /* IN */ (zed_selb_0)
);
mx4 dat_from_24_to_31_inst_6
(
	.z /* OUT */ (dat_30),
	.a0 /* IN */ (dstdlo[30]),
	.a1 /* IN */ (ddatlo[30]),
	.a2 /* IN */ (dstzlo[30]),
	.a3 /* IN */ (srczlo[30]),
	.s0 /* IN */ (mask_10),
	.s1 /* IN */ (zed_selb_0)
);
mx4 dat_from_24_to_31_inst_7
(
	.z /* OUT */ (dat_31),
	.a0 /* IN */ (dstdlo[31]),
	.a1 /* IN */ (ddatlo[31]),
	.a2 /* IN */ (dstzlo[31]),
	.a3 /* IN */ (srczlo[31]),
	.s0 /* IN */ (mask_10),
	.s1 /* IN */ (zed_selb_0)
);

// DATAMUX.NET (287) - dat[32-39] : mx4
mx4 dat_from_32_to_39_inst_0
(
	.z /* OUT */ (dat_32),
	.a0 /* IN */ (dstdhi[0]),
	.a1 /* IN */ (ddathi[0]),
	.a2 /* IN */ (dstzhi[0]),
	.a3 /* IN */ (srczhi[0]),
	.s0 /* IN */ (mask_11),
	.s1 /* IN */ (zed_selb_1)
);
mx4 dat_from_32_to_39_inst_1
(
	.z /* OUT */ (dat_33),
	.a0 /* IN */ (dstdhi[1]),
	.a1 /* IN */ (ddathi[1]),
	.a2 /* IN */ (dstzhi[1]),
	.a3 /* IN */ (srczhi[1]),
	.s0 /* IN */ (mask_11),
	.s1 /* IN */ (zed_selb_1)
);
mx4 dat_from_32_to_39_inst_2
(
	.z /* OUT */ (dat_34),
	.a0 /* IN */ (dstdhi[2]),
	.a1 /* IN */ (ddathi[2]),
	.a2 /* IN */ (dstzhi[2]),
	.a3 /* IN */ (srczhi[2]),
	.s0 /* IN */ (mask_11),
	.s1 /* IN */ (zed_selb_1)
);
mx4 dat_from_32_to_39_inst_3
(
	.z /* OUT */ (dat_35),
	.a0 /* IN */ (dstdhi[3]),
	.a1 /* IN */ (ddathi[3]),
	.a2 /* IN */ (dstzhi[3]),
	.a3 /* IN */ (srczhi[3]),
	.s0 /* IN */ (mask_11),
	.s1 /* IN */ (zed_selb_1)
);
mx4 dat_from_32_to_39_inst_4
(
	.z /* OUT */ (dat_36),
	.a0 /* IN */ (dstdhi[4]),
	.a1 /* IN */ (ddathi[4]),
	.a2 /* IN */ (dstzhi[4]),
	.a3 /* IN */ (srczhi[4]),
	.s0 /* IN */ (mask_11),
	.s1 /* IN */ (zed_selb_1)
);
mx4 dat_from_32_to_39_inst_5
(
	.z /* OUT */ (dat_37),
	.a0 /* IN */ (dstdhi[5]),
	.a1 /* IN */ (ddathi[5]),
	.a2 /* IN */ (dstzhi[5]),
	.a3 /* IN */ (srczhi[5]),
	.s0 /* IN */ (mask_11),
	.s1 /* IN */ (zed_selb_1)
);
mx4 dat_from_32_to_39_inst_6
(
	.z /* OUT */ (dat_38),
	.a0 /* IN */ (dstdhi[6]),
	.a1 /* IN */ (ddathi[6]),
	.a2 /* IN */ (dstzhi[6]),
	.a3 /* IN */ (srczhi[6]),
	.s0 /* IN */ (mask_11),
	.s1 /* IN */ (zed_selb_1)
);
mx4 dat_from_32_to_39_inst_7
(
	.z /* OUT */ (dat_39),
	.a0 /* IN */ (dstdhi[7]),
	.a1 /* IN */ (ddathi[7]),
	.a2 /* IN */ (dstzhi[7]),
	.a3 /* IN */ (srczhi[7]),
	.s0 /* IN */ (mask_11),
	.s1 /* IN */ (zed_selb_1)
);

// DATAMUX.NET (290) - dat[40-47] : mx4
mx4 dat_from_40_to_47_inst_0
(
	.z /* OUT */ (dat_40),
	.a0 /* IN */ (dstdhi[8]),
	.a1 /* IN */ (ddathi[8]),
	.a2 /* IN */ (dstzhi[8]),
	.a3 /* IN */ (srczhi[8]),
	.s0 /* IN */ (mask_12),
	.s1 /* IN */ (zed_selb_1)
);
mx4 dat_from_40_to_47_inst_1
(
	.z /* OUT */ (dat_41),
	.a0 /* IN */ (dstdhi[9]),
	.a1 /* IN */ (ddathi[9]),
	.a2 /* IN */ (dstzhi[9]),
	.a3 /* IN */ (srczhi[9]),
	.s0 /* IN */ (mask_12),
	.s1 /* IN */ (zed_selb_1)
);
mx4 dat_from_40_to_47_inst_2
(
	.z /* OUT */ (dat_42),
	.a0 /* IN */ (dstdhi[10]),
	.a1 /* IN */ (ddathi[10]),
	.a2 /* IN */ (dstzhi[10]),
	.a3 /* IN */ (srczhi[10]),
	.s0 /* IN */ (mask_12),
	.s1 /* IN */ (zed_selb_1)
);
mx4 dat_from_40_to_47_inst_3
(
	.z /* OUT */ (dat_43),
	.a0 /* IN */ (dstdhi[11]),
	.a1 /* IN */ (ddathi[11]),
	.a2 /* IN */ (dstzhi[11]),
	.a3 /* IN */ (srczhi[11]),
	.s0 /* IN */ (mask_12),
	.s1 /* IN */ (zed_selb_1)
);
mx4 dat_from_40_to_47_inst_4
(
	.z /* OUT */ (dat_44),
	.a0 /* IN */ (dstdhi[12]),
	.a1 /* IN */ (ddathi[12]),
	.a2 /* IN */ (dstzhi[12]),
	.a3 /* IN */ (srczhi[12]),
	.s0 /* IN */ (mask_12),
	.s1 /* IN */ (zed_selb_1)
);
mx4 dat_from_40_to_47_inst_5
(
	.z /* OUT */ (dat_45),
	.a0 /* IN */ (dstdhi[13]),
	.a1 /* IN */ (ddathi[13]),
	.a2 /* IN */ (dstzhi[13]),
	.a3 /* IN */ (srczhi[13]),
	.s0 /* IN */ (mask_12),
	.s1 /* IN */ (zed_selb_1)
);
mx4 dat_from_40_to_47_inst_6
(
	.z /* OUT */ (dat_46),
	.a0 /* IN */ (dstdhi[14]),
	.a1 /* IN */ (ddathi[14]),
	.a2 /* IN */ (dstzhi[14]),
	.a3 /* IN */ (srczhi[14]),
	.s0 /* IN */ (mask_12),
	.s1 /* IN */ (zed_selb_1)
);
mx4 dat_from_40_to_47_inst_7
(
	.z /* OUT */ (dat_47),
	.a0 /* IN */ (dstdhi[15]),
	.a1 /* IN */ (ddathi[15]),
	.a2 /* IN */ (dstzhi[15]),
	.a3 /* IN */ (srczhi[15]),
	.s0 /* IN */ (mask_12),
	.s1 /* IN */ (zed_selb_1)
);

// DATAMUX.NET (293) - dat[48-55] : mx4
mx4 dat_from_48_to_55_inst_0
(
	.z /* OUT */ (dat_48),
	.a0 /* IN */ (dstdhi[16]),
	.a1 /* IN */ (ddathi[16]),
	.a2 /* IN */ (dstzhi[16]),
	.a3 /* IN */ (srczhi[16]),
	.s0 /* IN */ (mask_13),
	.s1 /* IN */ (zed_selb_1)
);
mx4 dat_from_48_to_55_inst_1
(
	.z /* OUT */ (dat_49),
	.a0 /* IN */ (dstdhi[17]),
	.a1 /* IN */ (ddathi[17]),
	.a2 /* IN */ (dstzhi[17]),
	.a3 /* IN */ (srczhi[17]),
	.s0 /* IN */ (mask_13),
	.s1 /* IN */ (zed_selb_1)
);
mx4 dat_from_48_to_55_inst_2
(
	.z /* OUT */ (dat_50),
	.a0 /* IN */ (dstdhi[18]),
	.a1 /* IN */ (ddathi[18]),
	.a2 /* IN */ (dstzhi[18]),
	.a3 /* IN */ (srczhi[18]),
	.s0 /* IN */ (mask_13),
	.s1 /* IN */ (zed_selb_1)
);
mx4 dat_from_48_to_55_inst_3
(
	.z /* OUT */ (dat_51),
	.a0 /* IN */ (dstdhi[19]),
	.a1 /* IN */ (ddathi[19]),
	.a2 /* IN */ (dstzhi[19]),
	.a3 /* IN */ (srczhi[19]),
	.s0 /* IN */ (mask_13),
	.s1 /* IN */ (zed_selb_1)
);
mx4 dat_from_48_to_55_inst_4
(
	.z /* OUT */ (dat_52),
	.a0 /* IN */ (dstdhi[20]),
	.a1 /* IN */ (ddathi[20]),
	.a2 /* IN */ (dstzhi[20]),
	.a3 /* IN */ (srczhi[20]),
	.s0 /* IN */ (mask_13),
	.s1 /* IN */ (zed_selb_1)
);
mx4 dat_from_48_to_55_inst_5
(
	.z /* OUT */ (dat_53),
	.a0 /* IN */ (dstdhi[21]),
	.a1 /* IN */ (ddathi[21]),
	.a2 /* IN */ (dstzhi[21]),
	.a3 /* IN */ (srczhi[21]),
	.s0 /* IN */ (mask_13),
	.s1 /* IN */ (zed_selb_1)
);
mx4 dat_from_48_to_55_inst_6
(
	.z /* OUT */ (dat_54),
	.a0 /* IN */ (dstdhi[22]),
	.a1 /* IN */ (ddathi[22]),
	.a2 /* IN */ (dstzhi[22]),
	.a3 /* IN */ (srczhi[22]),
	.s0 /* IN */ (mask_13),
	.s1 /* IN */ (zed_selb_1)
);
mx4 dat_from_48_to_55_inst_7
(
	.z /* OUT */ (dat_55),
	.a0 /* IN */ (dstdhi[23]),
	.a1 /* IN */ (ddathi[23]),
	.a2 /* IN */ (dstzhi[23]),
	.a3 /* IN */ (srczhi[23]),
	.s0 /* IN */ (mask_13),
	.s1 /* IN */ (zed_selb_1)
);

// DATAMUX.NET (296) - dat[56-63] : mx4
mx4 dat_from_56_to_63_inst_0
(
	.z /* OUT */ (dat_56),
	.a0 /* IN */ (dstdhi[24]),
	.a1 /* IN */ (ddathi[24]),
	.a2 /* IN */ (dstzhi[24]),
	.a3 /* IN */ (srczhi[24]),
	.s0 /* IN */ (mask_14),
	.s1 /* IN */ (zed_selb_1)
);
mx4 dat_from_56_to_63_inst_1
(
	.z /* OUT */ (dat_57),
	.a0 /* IN */ (dstdhi[25]),
	.a1 /* IN */ (ddathi[25]),
	.a2 /* IN */ (dstzhi[25]),
	.a3 /* IN */ (srczhi[25]),
	.s0 /* IN */ (mask_14),
	.s1 /* IN */ (zed_selb_1)
);
mx4 dat_from_56_to_63_inst_2
(
	.z /* OUT */ (dat_58),
	.a0 /* IN */ (dstdhi[26]),
	.a1 /* IN */ (ddathi[26]),
	.a2 /* IN */ (dstzhi[26]),
	.a3 /* IN */ (srczhi[26]),
	.s0 /* IN */ (mask_14),
	.s1 /* IN */ (zed_selb_1)
);
mx4 dat_from_56_to_63_inst_3
(
	.z /* OUT */ (dat_59),
	.a0 /* IN */ (dstdhi[27]),
	.a1 /* IN */ (ddathi[27]),
	.a2 /* IN */ (dstzhi[27]),
	.a3 /* IN */ (srczhi[27]),
	.s0 /* IN */ (mask_14),
	.s1 /* IN */ (zed_selb_1)
);
mx4 dat_from_56_to_63_inst_4
(
	.z /* OUT */ (dat_60),
	.a0 /* IN */ (dstdhi[28]),
	.a1 /* IN */ (ddathi[28]),
	.a2 /* IN */ (dstzhi[28]),
	.a3 /* IN */ (srczhi[28]),
	.s0 /* IN */ (mask_14),
	.s1 /* IN */ (zed_selb_1)
);
mx4 dat_from_56_to_63_inst_5
(
	.z /* OUT */ (dat_61),
	.a0 /* IN */ (dstdhi[29]),
	.a1 /* IN */ (ddathi[29]),
	.a2 /* IN */ (dstzhi[29]),
	.a3 /* IN */ (srczhi[29]),
	.s0 /* IN */ (mask_14),
	.s1 /* IN */ (zed_selb_1)
);
mx4 dat_from_56_to_63_inst_6
(
	.z /* OUT */ (dat_62),
	.a0 /* IN */ (dstdhi[30]),
	.a1 /* IN */ (ddathi[30]),
	.a2 /* IN */ (dstzhi[30]),
	.a3 /* IN */ (srczhi[30]),
	.s0 /* IN */ (mask_14),
	.s1 /* IN */ (zed_selb_1)
);
mx4 dat_from_56_to_63_inst_7
(
	.z /* OUT */ (dat_63),
	.a0 /* IN */ (dstdhi[31]),
	.a1 /* IN */ (ddathi[31]),
	.a2 /* IN */ (dstzhi[31]),
	.a3 /* IN */ (srczhi[31]),
	.s0 /* IN */ (mask_14),
	.s1 /* IN */ (zed_selb_1)
);

// DATAMUX.NET (300) - data_enab[0-1] : nivu
assign data_enab_0 = data_ena;
assign data_enab_1 = data_ena;

// DATAMUX.NET (301) - datadrv[0-31] : ts
assign wdata_0_out = dat_0;
assign wdata_0_oe = data_enab_0;
assign wdata_1_out = dat_1;
assign wdata_1_oe = data_enab_0;
assign wdata_2_out = dat_2;
assign wdata_2_oe = data_enab_0;
assign wdata_3_out = dat_3;
assign wdata_3_oe = data_enab_0;
assign wdata_4_out = dat_4;
assign wdata_4_oe = data_enab_0;
assign wdata_5_out = dat_5;
assign wdata_5_oe = data_enab_0;
assign wdata_6_out = dat_6;
assign wdata_6_oe = data_enab_0;
assign wdata_7_out = dat_7;
assign wdata_7_oe = data_enab_0;
assign wdata_8_out = dat_8;
assign wdata_8_oe = data_enab_0;
assign wdata_9_out = dat_9;
assign wdata_9_oe = data_enab_0;
assign wdata_10_out = dat_10;
assign wdata_10_oe = data_enab_0;
assign wdata_11_out = dat_11;
assign wdata_11_oe = data_enab_0;
assign wdata_12_out = dat_12;
assign wdata_12_oe = data_enab_0;
assign wdata_13_out = dat_13;
assign wdata_13_oe = data_enab_0;
assign wdata_14_out = dat_14;
assign wdata_14_oe = data_enab_0;
assign wdata_15_out = dat_15;
assign wdata_15_oe = data_enab_0;
assign wdata_16_out = dat_16;
assign wdata_16_oe = data_enab_0;
assign wdata_17_out = dat_17;
assign wdata_17_oe = data_enab_0;
assign wdata_18_out = dat_18;
assign wdata_18_oe = data_enab_0;
assign wdata_19_out = dat_19;
assign wdata_19_oe = data_enab_0;
assign wdata_20_out = dat_20;
assign wdata_20_oe = data_enab_0;
assign wdata_21_out = dat_21;
assign wdata_21_oe = data_enab_0;
assign wdata_22_out = dat_22;
assign wdata_22_oe = data_enab_0;
assign wdata_23_out = dat_23;
assign wdata_23_oe = data_enab_0;
assign wdata_24_out = dat_24;
assign wdata_24_oe = data_enab_0;
assign wdata_25_out = dat_25;
assign wdata_25_oe = data_enab_0;
assign wdata_26_out = dat_26;
assign wdata_26_oe = data_enab_0;
assign wdata_27_out = dat_27;
assign wdata_27_oe = data_enab_0;
assign wdata_28_out = dat_28;
assign wdata_28_oe = data_enab_0;
assign wdata_29_out = dat_29;
assign wdata_29_oe = data_enab_0;
assign wdata_30_out = dat_30;
assign wdata_30_oe = data_enab_0;
assign wdata_31_out = dat_31;
assign wdata_31_oe = data_enab_0;

// DATAMUX.NET (302) - datadrv[32-63] : ts
assign wdata_32_out = dat_32;
assign wdata_32_oe = data_enab_1;
assign wdata_33_out = dat_33;
assign wdata_33_oe = data_enab_1;
assign wdata_34_out = dat_34;
assign wdata_34_oe = data_enab_1;
assign wdata_35_out = dat_35;
assign wdata_35_oe = data_enab_1;
assign wdata_36_out = dat_36;
assign wdata_36_oe = data_enab_1;
assign wdata_37_out = dat_37;
assign wdata_37_oe = data_enab_1;
assign wdata_38_out = dat_38;
assign wdata_38_oe = data_enab_1;
assign wdata_39_out = dat_39;
assign wdata_39_oe = data_enab_1;
assign wdata_40_out = dat_40;
assign wdata_40_oe = data_enab_1;
assign wdata_41_out = dat_41;
assign wdata_41_oe = data_enab_1;
assign wdata_42_out = dat_42;
assign wdata_42_oe = data_enab_1;
assign wdata_43_out = dat_43;
assign wdata_43_oe = data_enab_1;
assign wdata_44_out = dat_44;
assign wdata_44_oe = data_enab_1;
assign wdata_45_out = dat_45;
assign wdata_45_oe = data_enab_1;
assign wdata_46_out = dat_46;
assign wdata_46_oe = data_enab_1;
assign wdata_47_out = dat_47;
assign wdata_47_oe = data_enab_1;
assign wdata_48_out = dat_48;
assign wdata_48_oe = data_enab_1;
assign wdata_49_out = dat_49;
assign wdata_49_oe = data_enab_1;
assign wdata_50_out = dat_50;
assign wdata_50_oe = data_enab_1;
assign wdata_51_out = dat_51;
assign wdata_51_oe = data_enab_1;
assign wdata_52_out = dat_52;
assign wdata_52_oe = data_enab_1;
assign wdata_53_out = dat_53;
assign wdata_53_oe = data_enab_1;
assign wdata_54_out = dat_54;
assign wdata_54_oe = data_enab_1;
assign wdata_55_out = dat_55;
assign wdata_55_oe = data_enab_1;
assign wdata_56_out = dat_56;
assign wdata_56_oe = data_enab_1;
assign wdata_57_out = dat_57;
assign wdata_57_oe = data_enab_1;
assign wdata_58_out = dat_58;
assign wdata_58_oe = data_enab_1;
assign wdata_59_out = dat_59;
assign wdata_59_oe = data_enab_1;
assign wdata_60_out = dat_60;
assign wdata_60_oe = data_enab_1;
assign wdata_61_out = dat_61;
assign wdata_61_oe = data_enab_1;
assign wdata_62_out = dat_62;
assign wdata_62_oe = data_enab_1;
assign wdata_63_out = dat_63;
assign wdata_63_oe = data_enab_1;

// DATAMUX.NET (304) - unused[0] : dummy
endmodule
/* verilator lint_on LITENDIAN */
