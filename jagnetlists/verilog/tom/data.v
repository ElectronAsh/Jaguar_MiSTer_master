/* verilator lint_off LITENDIAN */
`include "defs.v"

module data
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
	output dcomp_0,
	output dcomp_1,
	output dcomp_2,
	output dcomp_3,
	output dcomp_4,
	output dcomp_5,
	output dcomp_6,
	output dcomp_7,
	output srcd_0,
	output srcd_1,
	output srcd_2,
	output srcd_3,
	output srcd_4,
	output srcd_5,
	output srcd_6,
	output srcd_7,
	output zcomp_0,
	output zcomp_1,
	output zcomp_2,
	output zcomp_3,
	input big_pix,
	input blit_back,
	input blit_breq_0,
	input blit_breq_1,
	input clk,
	input clk2,
	input cmpdst,
	input daddasel_0,
	input daddasel_1,
	input daddasel_2,
	input daddbsel_0,
	input daddbsel_1,
	input daddbsel_2,
	input daddmode_0,
	input daddmode_1,
	input daddmode_2,
	input daddq_sel,
	input data_0,
	input data_1,
	input data_2,
	input data_3,
	input data_4,
	input data_5,
	input data_6,
	input data_7,
	input data_8,
	input data_9,
	input data_10,
	input data_11,
	input data_12,
	input data_13,
	input data_14,
	input data_15,
	input data_16,
	input data_17,
	input data_18,
	input data_19,
	input data_20,
	input data_21,
	input data_22,
	input data_23,
	input data_24,
	input data_25,
	input data_26,
	input data_27,
	input data_28,
	input data_29,
	input data_30,
	input data_31,
	input data_32,
	input data_33,
	input data_34,
	input data_35,
	input data_36,
	input data_37,
	input data_38,
	input data_39,
	input data_40,
	input data_41,
	input data_42,
	input data_43,
	input data_44,
	input data_45,
	input data_46,
	input data_47,
	input data_48,
	input data_49,
	input data_50,
	input data_51,
	input data_52,
	input data_53,
	input data_54,
	input data_55,
	input data_56,
	input data_57,
	input data_58,
	input data_59,
	input data_60,
	input data_61,
	input data_62,
	input data_63,
	input data_ena,
	input data_sel_0,
	input data_sel_1,
	input dbinh_n_0,
	input dbinh_n_1,
	input dbinh_n_2,
	input dbinh_n_3,
	input dbinh_n_4,
	input dbinh_n_5,
	input dbinh_n_6,
	input dbinh_n_7,
	input dend_0,
	input dend_1,
	input dend_2,
	input dend_3,
	input dend_4,
	input dend_5,
	input dpipe_0,
	input dpipe_1,
	input dstart_0,
	input dstart_1,
	input dstart_2,
	input dstart_3,
	input dstart_4,
	input dstart_5,
	input dstdld_0,
	input dstdld_1,
	input dstzld_0,
	input dstzld_1,
	input [0:31] gpu_din,
	input iincld,
	input intld_0,
	input intld_1,
	input intld_2,
	input intld_3,
	input lfu_func_0,
	input lfu_func_1,
	input lfu_func_2,
	input lfu_func_3,
	input load_strobe,
	input patdld_0,
	input patdld_1,
	input phrase_mode,
	input reset_n,
	input srcd1ld_0,
	input srcd1ld_1,
	input srcdread,
	input srczread,
	input srcshift_0,
	input srcshift_1,
	input srcshift_2,
	input srcshift_3,
	input srcshift_4,
	input srcshift_5,
	input srcz1ld_0,
	input srcz1ld_1,
	input srcz2add,
	input srcz2ld_0,
	input srcz2ld_1,
	input zedld_0,
	input zedld_1,
	input zedld_2,
	input zedld_3,
	input zincld,
	input zmode_0,
	input zmode_1,
	input zmode_2,
	input zpipe_0,
	input zpipe_1,
	input sys_clk // Generated
);
wire [0:15] addb_0;
wire [0:15] addb_1;
wire [0:15] addb_2;
wire [0:15] addb_3;
wire [0:15] gpu_dinlo;
wire [0:15] gpu_dinhi;
wire [0:15] zero16;
wire [0:15] local_data0lo;
wire [0:15] local_data0hi;
wire [0:15] local_data1lo;
wire [0:15] local_data1hi;
wire [0:15] sz1_0;
wire [0:15] sz1_1;
wire [0:15] sz1_2;
wire [0:15] sz1_3;
wire [0:15] srcz1i_0;
wire [0:15] srcz1i_1;
wire [0:15] srcz1i_2;
wire [0:15] srcz1i_3;
wire [0:15] sz2_0;
wire [0:15] sz2_1;
wire [0:15] sz2_2;
wire [0:15] sz2_3;
wire [0:15] srcz2i_0;
wire [0:15] srcz2i_1;
wire [0:15] srcz2i_2;
wire [0:15] srcz2i_3;
wire [0:15] srcd1i_0;
wire [0:15] srcd1i_1;
wire [0:15] srcd1i_2;
wire [0:15] srcd1i_3;
wire [0:15] sd1_0;
wire [0:15] sd1_1;
wire [0:15] sd1_2;
wire [0:15] sd1_3;
wire [0:31] dstd_0;
wire [0:31] dstd_1;
wire [0:31] dstz_0;
wire [0:31] dstz_1;
wire [0:31] iinc;
wire [0:31] lfu_0;
wire [0:31] lfu_1;
wire [0:31] local_data_0;
wire [0:31] local_data_1;
wire [0:31] local_data0;
wire [0:31] local_data1;
wire [0:31] patd_0;
wire [0:31] patd_1;
wire [0:31] patdu_0;
wire [0:31] patdu_1;
wire [0:31] patdo_0;
wire [0:31] patdo_1;
wire [0:31] srcd1_0;
wire [0:31] srcd1_1;
wire [0:31] srcd2_0;
wire [0:31] srcd2_1;
wire [0:31] srcz1_0;
wire [0:31] srcz1_1;
wire [0:31] srcz2_0;
wire [0:31] srcz2_1;
wire [0:31] srczo_0;
wire [0:31] srczo_1;
wire [0:31] srczp_0;
wire [0:31] srczp_1;
wire [0:31] srczpt_0;
wire [0:31] srczpt_1;
wire [0:31] srcdlo;
wire [0:31] srcdhi;
wire [0:31] zinc;
wire [0:31] load_data_0;
wire [0:31] load_data_1;
wire [0:31] srcz_0;
wire [0:31] srcz_1;
wire [0:15] adda_0;
wire [0:15] adda_1;
wire [0:15] adda_2;
wire [0:15] adda_3;
wire [0:15] addq_0;
wire [0:15] addq_1;
wire [0:15] addq_2;
wire [0:15] addq_3;
wire zero;
wire intldb_0;
wire intldb_1;
wire intldb_2;
wire intldb_3;
wire srcd2ldg_0;
wire srcd2ldg_1;
wire zedldb_0;
wire zedldb_1;
wire zedldb_2;
wire zedldb_3;
wire sz20sel_0;
wire sz20sel_1;
wire sz21sel_0;
wire sz21sel_1;
wire sz22sel_0;
wire sz22sel_1;
wire sz23sel_0;
wire sz23sel_1;
wire dstdldg_0;
wire dstdldg_1;
wire dstzldg_0;
wire dstzldg_1;
wire patdi_0;
wire patdi_1;
wire patdi_2;
wire patdi_3;
wire patdi_4;
wire patdi_5;
wire patdi_6;
wire patdi_7;
wire pdu_0;
wire pdu_1;
wire pdu_2;
wire pdu_3;
wire pdu_4;
wire pdu_5;
wire pdu_6;
wire pdu_7;
wire patdi_8;
wire patdi_9;
wire patdi_10;
wire patdi_11;
wire patdi_12;
wire patdi_13;
wire patdi_14;
wire patdi_15;
wire pdu_8;
wire pdu_9;
wire pdu_10;
wire pdu_11;
wire pdu_12;
wire pdu_13;
wire pdu_14;
wire pdu_15;
wire patdi_16;
wire patdi_17;
wire patdi_18;
wire patdi_19;
wire patdi_20;
wire patdi_21;
wire patdi_22;
wire patdi_23;
wire pdu_16;
wire pdu_17;
wire pdu_18;
wire pdu_19;
wire pdu_20;
wire pdu_21;
wire pdu_22;
wire pdu_23;
wire patdi_24;
wire patdi_25;
wire patdi_26;
wire patdi_27;
wire patdi_28;
wire patdi_29;
wire patdi_30;
wire patdi_31;
wire pdu_24;
wire pdu_25;
wire pdu_26;
wire pdu_27;
wire pdu_28;
wire pdu_29;
wire pdu_30;
wire pdu_31;
wire patdi_32;
wire patdi_33;
wire patdi_34;
wire patdi_35;
wire patdi_36;
wire patdi_37;
wire patdi_38;
wire patdi_39;
wire pdu_32;
wire pdu_33;
wire pdu_34;
wire pdu_35;
wire pdu_36;
wire pdu_37;
wire pdu_38;
wire pdu_39;
wire patdi_40;
wire patdi_41;
wire patdi_42;
wire patdi_43;
wire patdi_44;
wire patdi_45;
wire patdi_46;
wire patdi_47;
wire pdu_40;
wire pdu_41;
wire pdu_42;
wire pdu_43;
wire pdu_44;
wire pdu_45;
wire pdu_46;
wire pdu_47;
wire patdi_48;
wire patdi_49;
wire patdi_50;
wire patdi_51;
wire patdi_52;
wire patdi_53;
wire patdi_54;
wire patdi_55;
wire pdu_48;
wire pdu_49;
wire pdu_50;
wire pdu_51;
wire pdu_52;
wire pdu_53;
wire pdu_54;
wire pdu_55;
wire patdi_56;
wire patdi_57;
wire patdi_58;
wire patdi_59;
wire patdi_60;
wire patdi_61;
wire patdi_62;
wire patdi_63;
wire pdu_56;
wire pdu_57;
wire pdu_58;
wire pdu_59;
wire pdu_60;
wire pdu_61;
wire pdu_62;
wire pdu_63;
wire dpipeg_0;
wire dpipeg_1;
wire dpipe1b_0;
wire dpipe1b_1;
wire zincldg;
wire iincldg;
wire zpipe0b_0;
wire zpipe0b_1;
wire zpipe1b_0;
wire zpipe1b_1;

// DATA.NET (76) - gpu_datalo : join
assign gpu_dinlo[0] = gpu_din[0];
assign gpu_dinlo[1] = gpu_din[1];
assign gpu_dinlo[2] = gpu_din[2];
assign gpu_dinlo[3] = gpu_din[3];
assign gpu_dinlo[4] = gpu_din[4];
assign gpu_dinlo[5] = gpu_din[5];
assign gpu_dinlo[6] = gpu_din[6];
assign gpu_dinlo[7] = gpu_din[7];
assign gpu_dinlo[8] = gpu_din[8];
assign gpu_dinlo[9] = gpu_din[9];
assign gpu_dinlo[10] = gpu_din[10];
assign gpu_dinlo[11] = gpu_din[11];
assign gpu_dinlo[12] = gpu_din[12];
assign gpu_dinlo[13] = gpu_din[13];
assign gpu_dinlo[14] = gpu_din[14];
assign gpu_dinlo[15] = gpu_din[15];

// DATA.NET (77) - gpu_datahi : join
assign gpu_dinhi[0] = gpu_din[16];
assign gpu_dinhi[1] = gpu_din[17];
assign gpu_dinhi[2] = gpu_din[18];
assign gpu_dinhi[3] = gpu_din[19];
assign gpu_dinhi[4] = gpu_din[20];
assign gpu_dinhi[5] = gpu_din[21];
assign gpu_dinhi[6] = gpu_din[22];
assign gpu_dinhi[7] = gpu_din[23];
assign gpu_dinhi[8] = gpu_din[24];
assign gpu_dinhi[9] = gpu_din[25];
assign gpu_dinhi[10] = gpu_din[26];
assign gpu_dinhi[11] = gpu_din[27];
assign gpu_dinhi[12] = gpu_din[28];
assign gpu_dinhi[13] = gpu_din[29];
assign gpu_dinhi[14] = gpu_din[30];
assign gpu_dinhi[15] = gpu_din[31];

// DATA.NET (78) - zero : tie0
assign zero = 1'b0;

// DATA.NET (79) - zero16 : join
assign zero16[0] = zero;
assign zero16[1] = zero;
assign zero16[2] = zero;
assign zero16[3] = zero;
assign zero16[4] = zero;
assign zero16[5] = zero;
assign zero16[6] = zero;
assign zero16[7] = zero;
assign zero16[8] = zero;
assign zero16[9] = zero;
assign zero16[10] = zero;
assign zero16[11] = zero;
assign zero16[12] = zero;
assign zero16[13] = zero;
assign zero16[14] = zero;
assign zero16[15] = zero;

// DATA.NET (90) - intldb[0-3] : nivu
assign intldb_0 = intld_0;
assign intldb_1 = intld_1;
assign intldb_2 = intld_2;
assign intldb_3 = intld_3;

// DATA.NET (91) - srcd1i[0] : mx4
mx4 srcd1i_index_0_inst_0
(
	.z /* OUT */ (srcd1i_0[0]),
	.a0 /* IN */ (sd1_0[0]),
	.a1 /* IN */ (local_data0lo[0]),
	.a2 /* IN */ (gpu_dinlo[0]),
	.a3 /* IN */ (zero16[0]),
	.s0 /* IN */ (srcd1ld_0),
	.s1 /* IN */ (intldb_0)
);
mx4 srcd1i_index_0_inst_1
(
	.z /* OUT */ (srcd1i_0[1]),
	.a0 /* IN */ (sd1_0[1]),
	.a1 /* IN */ (local_data0lo[1]),
	.a2 /* IN */ (gpu_dinlo[1]),
	.a3 /* IN */ (zero16[1]),
	.s0 /* IN */ (srcd1ld_0),
	.s1 /* IN */ (intldb_0)
);
mx4 srcd1i_index_0_inst_2
(
	.z /* OUT */ (srcd1i_0[2]),
	.a0 /* IN */ (sd1_0[2]),
	.a1 /* IN */ (local_data0lo[2]),
	.a2 /* IN */ (gpu_dinlo[2]),
	.a3 /* IN */ (zero16[2]),
	.s0 /* IN */ (srcd1ld_0),
	.s1 /* IN */ (intldb_0)
);
mx4 srcd1i_index_0_inst_3
(
	.z /* OUT */ (srcd1i_0[3]),
	.a0 /* IN */ (sd1_0[3]),
	.a1 /* IN */ (local_data0lo[3]),
	.a2 /* IN */ (gpu_dinlo[3]),
	.a3 /* IN */ (zero16[3]),
	.s0 /* IN */ (srcd1ld_0),
	.s1 /* IN */ (intldb_0)
);
mx4 srcd1i_index_0_inst_4
(
	.z /* OUT */ (srcd1i_0[4]),
	.a0 /* IN */ (sd1_0[4]),
	.a1 /* IN */ (local_data0lo[4]),
	.a2 /* IN */ (gpu_dinlo[4]),
	.a3 /* IN */ (zero16[4]),
	.s0 /* IN */ (srcd1ld_0),
	.s1 /* IN */ (intldb_0)
);
mx4 srcd1i_index_0_inst_5
(
	.z /* OUT */ (srcd1i_0[5]),
	.a0 /* IN */ (sd1_0[5]),
	.a1 /* IN */ (local_data0lo[5]),
	.a2 /* IN */ (gpu_dinlo[5]),
	.a3 /* IN */ (zero16[5]),
	.s0 /* IN */ (srcd1ld_0),
	.s1 /* IN */ (intldb_0)
);
mx4 srcd1i_index_0_inst_6
(
	.z /* OUT */ (srcd1i_0[6]),
	.a0 /* IN */ (sd1_0[6]),
	.a1 /* IN */ (local_data0lo[6]),
	.a2 /* IN */ (gpu_dinlo[6]),
	.a3 /* IN */ (zero16[6]),
	.s0 /* IN */ (srcd1ld_0),
	.s1 /* IN */ (intldb_0)
);
mx4 srcd1i_index_0_inst_7
(
	.z /* OUT */ (srcd1i_0[7]),
	.a0 /* IN */ (sd1_0[7]),
	.a1 /* IN */ (local_data0lo[7]),
	.a2 /* IN */ (gpu_dinlo[7]),
	.a3 /* IN */ (zero16[7]),
	.s0 /* IN */ (srcd1ld_0),
	.s1 /* IN */ (intldb_0)
);
mx4 srcd1i_index_0_inst_8
(
	.z /* OUT */ (srcd1i_0[8]),
	.a0 /* IN */ (sd1_0[8]),
	.a1 /* IN */ (local_data0lo[8]),
	.a2 /* IN */ (gpu_dinlo[8]),
	.a3 /* IN */ (zero16[8]),
	.s0 /* IN */ (srcd1ld_0),
	.s1 /* IN */ (intldb_0)
);
mx4 srcd1i_index_0_inst_9
(
	.z /* OUT */ (srcd1i_0[9]),
	.a0 /* IN */ (sd1_0[9]),
	.a1 /* IN */ (local_data0lo[9]),
	.a2 /* IN */ (gpu_dinlo[9]),
	.a3 /* IN */ (zero16[9]),
	.s0 /* IN */ (srcd1ld_0),
	.s1 /* IN */ (intldb_0)
);
mx4 srcd1i_index_0_inst_10
(
	.z /* OUT */ (srcd1i_0[10]),
	.a0 /* IN */ (sd1_0[10]),
	.a1 /* IN */ (local_data0lo[10]),
	.a2 /* IN */ (gpu_dinlo[10]),
	.a3 /* IN */ (zero16[10]),
	.s0 /* IN */ (srcd1ld_0),
	.s1 /* IN */ (intldb_0)
);
mx4 srcd1i_index_0_inst_11
(
	.z /* OUT */ (srcd1i_0[11]),
	.a0 /* IN */ (sd1_0[11]),
	.a1 /* IN */ (local_data0lo[11]),
	.a2 /* IN */ (gpu_dinlo[11]),
	.a3 /* IN */ (zero16[11]),
	.s0 /* IN */ (srcd1ld_0),
	.s1 /* IN */ (intldb_0)
);
mx4 srcd1i_index_0_inst_12
(
	.z /* OUT */ (srcd1i_0[12]),
	.a0 /* IN */ (sd1_0[12]),
	.a1 /* IN */ (local_data0lo[12]),
	.a2 /* IN */ (gpu_dinlo[12]),
	.a3 /* IN */ (zero16[12]),
	.s0 /* IN */ (srcd1ld_0),
	.s1 /* IN */ (intldb_0)
);
mx4 srcd1i_index_0_inst_13
(
	.z /* OUT */ (srcd1i_0[13]),
	.a0 /* IN */ (sd1_0[13]),
	.a1 /* IN */ (local_data0lo[13]),
	.a2 /* IN */ (gpu_dinlo[13]),
	.a3 /* IN */ (zero16[13]),
	.s0 /* IN */ (srcd1ld_0),
	.s1 /* IN */ (intldb_0)
);
mx4 srcd1i_index_0_inst_14
(
	.z /* OUT */ (srcd1i_0[14]),
	.a0 /* IN */ (sd1_0[14]),
	.a1 /* IN */ (local_data0lo[14]),
	.a2 /* IN */ (gpu_dinlo[14]),
	.a3 /* IN */ (zero16[14]),
	.s0 /* IN */ (srcd1ld_0),
	.s1 /* IN */ (intldb_0)
);
mx4 srcd1i_index_0_inst_15
(
	.z /* OUT */ (srcd1i_0[15]),
	.a0 /* IN */ (sd1_0[15]),
	.a1 /* IN */ (local_data0lo[15]),
	.a2 /* IN */ (gpu_dinlo[15]),
	.a3 /* IN */ (zero16[15]),
	.s0 /* IN */ (srcd1ld_0),
	.s1 /* IN */ (intldb_0)
);

// DATA.NET (93) - srcd1i[1] : mx4
mx4 srcd1i_index_1_inst_0
(
	.z /* OUT */ (srcd1i_1[0]),
	.a0 /* IN */ (sd1_1[0]),
	.a1 /* IN */ (local_data0hi[0]),
	.a2 /* IN */ (gpu_dinlo[0]),
	.a3 /* IN */ (zero16[0]),
	.s0 /* IN */ (srcd1ld_0),
	.s1 /* IN */ (intldb_1)
);
mx4 srcd1i_index_1_inst_1
(
	.z /* OUT */ (srcd1i_1[1]),
	.a0 /* IN */ (sd1_1[1]),
	.a1 /* IN */ (local_data0hi[1]),
	.a2 /* IN */ (gpu_dinlo[1]),
	.a3 /* IN */ (zero16[1]),
	.s0 /* IN */ (srcd1ld_0),
	.s1 /* IN */ (intldb_1)
);
mx4 srcd1i_index_1_inst_2
(
	.z /* OUT */ (srcd1i_1[2]),
	.a0 /* IN */ (sd1_1[2]),
	.a1 /* IN */ (local_data0hi[2]),
	.a2 /* IN */ (gpu_dinlo[2]),
	.a3 /* IN */ (zero16[2]),
	.s0 /* IN */ (srcd1ld_0),
	.s1 /* IN */ (intldb_1)
);
mx4 srcd1i_index_1_inst_3
(
	.z /* OUT */ (srcd1i_1[3]),
	.a0 /* IN */ (sd1_1[3]),
	.a1 /* IN */ (local_data0hi[3]),
	.a2 /* IN */ (gpu_dinlo[3]),
	.a3 /* IN */ (zero16[3]),
	.s0 /* IN */ (srcd1ld_0),
	.s1 /* IN */ (intldb_1)
);
mx4 srcd1i_index_1_inst_4
(
	.z /* OUT */ (srcd1i_1[4]),
	.a0 /* IN */ (sd1_1[4]),
	.a1 /* IN */ (local_data0hi[4]),
	.a2 /* IN */ (gpu_dinlo[4]),
	.a3 /* IN */ (zero16[4]),
	.s0 /* IN */ (srcd1ld_0),
	.s1 /* IN */ (intldb_1)
);
mx4 srcd1i_index_1_inst_5
(
	.z /* OUT */ (srcd1i_1[5]),
	.a0 /* IN */ (sd1_1[5]),
	.a1 /* IN */ (local_data0hi[5]),
	.a2 /* IN */ (gpu_dinlo[5]),
	.a3 /* IN */ (zero16[5]),
	.s0 /* IN */ (srcd1ld_0),
	.s1 /* IN */ (intldb_1)
);
mx4 srcd1i_index_1_inst_6
(
	.z /* OUT */ (srcd1i_1[6]),
	.a0 /* IN */ (sd1_1[6]),
	.a1 /* IN */ (local_data0hi[6]),
	.a2 /* IN */ (gpu_dinlo[6]),
	.a3 /* IN */ (zero16[6]),
	.s0 /* IN */ (srcd1ld_0),
	.s1 /* IN */ (intldb_1)
);
mx4 srcd1i_index_1_inst_7
(
	.z /* OUT */ (srcd1i_1[7]),
	.a0 /* IN */ (sd1_1[7]),
	.a1 /* IN */ (local_data0hi[7]),
	.a2 /* IN */ (gpu_dinlo[7]),
	.a3 /* IN */ (zero16[7]),
	.s0 /* IN */ (srcd1ld_0),
	.s1 /* IN */ (intldb_1)
);
mx4 srcd1i_index_1_inst_8
(
	.z /* OUT */ (srcd1i_1[8]),
	.a0 /* IN */ (sd1_1[8]),
	.a1 /* IN */ (local_data0hi[8]),
	.a2 /* IN */ (gpu_dinlo[8]),
	.a3 /* IN */ (zero16[8]),
	.s0 /* IN */ (srcd1ld_0),
	.s1 /* IN */ (intldb_1)
);
mx4 srcd1i_index_1_inst_9
(
	.z /* OUT */ (srcd1i_1[9]),
	.a0 /* IN */ (sd1_1[9]),
	.a1 /* IN */ (local_data0hi[9]),
	.a2 /* IN */ (gpu_dinlo[9]),
	.a3 /* IN */ (zero16[9]),
	.s0 /* IN */ (srcd1ld_0),
	.s1 /* IN */ (intldb_1)
);
mx4 srcd1i_index_1_inst_10
(
	.z /* OUT */ (srcd1i_1[10]),
	.a0 /* IN */ (sd1_1[10]),
	.a1 /* IN */ (local_data0hi[10]),
	.a2 /* IN */ (gpu_dinlo[10]),
	.a3 /* IN */ (zero16[10]),
	.s0 /* IN */ (srcd1ld_0),
	.s1 /* IN */ (intldb_1)
);
mx4 srcd1i_index_1_inst_11
(
	.z /* OUT */ (srcd1i_1[11]),
	.a0 /* IN */ (sd1_1[11]),
	.a1 /* IN */ (local_data0hi[11]),
	.a2 /* IN */ (gpu_dinlo[11]),
	.a3 /* IN */ (zero16[11]),
	.s0 /* IN */ (srcd1ld_0),
	.s1 /* IN */ (intldb_1)
);
mx4 srcd1i_index_1_inst_12
(
	.z /* OUT */ (srcd1i_1[12]),
	.a0 /* IN */ (sd1_1[12]),
	.a1 /* IN */ (local_data0hi[12]),
	.a2 /* IN */ (gpu_dinlo[12]),
	.a3 /* IN */ (zero16[12]),
	.s0 /* IN */ (srcd1ld_0),
	.s1 /* IN */ (intldb_1)
);
mx4 srcd1i_index_1_inst_13
(
	.z /* OUT */ (srcd1i_1[13]),
	.a0 /* IN */ (sd1_1[13]),
	.a1 /* IN */ (local_data0hi[13]),
	.a2 /* IN */ (gpu_dinlo[13]),
	.a3 /* IN */ (zero16[13]),
	.s0 /* IN */ (srcd1ld_0),
	.s1 /* IN */ (intldb_1)
);
mx4 srcd1i_index_1_inst_14
(
	.z /* OUT */ (srcd1i_1[14]),
	.a0 /* IN */ (sd1_1[14]),
	.a1 /* IN */ (local_data0hi[14]),
	.a2 /* IN */ (gpu_dinlo[14]),
	.a3 /* IN */ (zero16[14]),
	.s0 /* IN */ (srcd1ld_0),
	.s1 /* IN */ (intldb_1)
);
mx4 srcd1i_index_1_inst_15
(
	.z /* OUT */ (srcd1i_1[15]),
	.a0 /* IN */ (sd1_1[15]),
	.a1 /* IN */ (local_data0hi[15]),
	.a2 /* IN */ (gpu_dinlo[15]),
	.a3 /* IN */ (zero16[15]),
	.s0 /* IN */ (srcd1ld_0),
	.s1 /* IN */ (intldb_1)
);

// DATA.NET (95) - srcd1i[2] : mx4
mx4 srcd1i_index_2_inst_0
(
	.z /* OUT */ (srcd1i_2[0]),
	.a0 /* IN */ (sd1_2[0]),
	.a1 /* IN */ (local_data1lo[0]),
	.a2 /* IN */ (gpu_dinlo[0]),
	.a3 /* IN */ (zero16[0]),
	.s0 /* IN */ (srcd1ld_1),
	.s1 /* IN */ (intldb_2)
);
mx4 srcd1i_index_2_inst_1
(
	.z /* OUT */ (srcd1i_2[1]),
	.a0 /* IN */ (sd1_2[1]),
	.a1 /* IN */ (local_data1lo[1]),
	.a2 /* IN */ (gpu_dinlo[1]),
	.a3 /* IN */ (zero16[1]),
	.s0 /* IN */ (srcd1ld_1),
	.s1 /* IN */ (intldb_2)
);
mx4 srcd1i_index_2_inst_2
(
	.z /* OUT */ (srcd1i_2[2]),
	.a0 /* IN */ (sd1_2[2]),
	.a1 /* IN */ (local_data1lo[2]),
	.a2 /* IN */ (gpu_dinlo[2]),
	.a3 /* IN */ (zero16[2]),
	.s0 /* IN */ (srcd1ld_1),
	.s1 /* IN */ (intldb_2)
);
mx4 srcd1i_index_2_inst_3
(
	.z /* OUT */ (srcd1i_2[3]),
	.a0 /* IN */ (sd1_2[3]),
	.a1 /* IN */ (local_data1lo[3]),
	.a2 /* IN */ (gpu_dinlo[3]),
	.a3 /* IN */ (zero16[3]),
	.s0 /* IN */ (srcd1ld_1),
	.s1 /* IN */ (intldb_2)
);
mx4 srcd1i_index_2_inst_4
(
	.z /* OUT */ (srcd1i_2[4]),
	.a0 /* IN */ (sd1_2[4]),
	.a1 /* IN */ (local_data1lo[4]),
	.a2 /* IN */ (gpu_dinlo[4]),
	.a3 /* IN */ (zero16[4]),
	.s0 /* IN */ (srcd1ld_1),
	.s1 /* IN */ (intldb_2)
);
mx4 srcd1i_index_2_inst_5
(
	.z /* OUT */ (srcd1i_2[5]),
	.a0 /* IN */ (sd1_2[5]),
	.a1 /* IN */ (local_data1lo[5]),
	.a2 /* IN */ (gpu_dinlo[5]),
	.a3 /* IN */ (zero16[5]),
	.s0 /* IN */ (srcd1ld_1),
	.s1 /* IN */ (intldb_2)
);
mx4 srcd1i_index_2_inst_6
(
	.z /* OUT */ (srcd1i_2[6]),
	.a0 /* IN */ (sd1_2[6]),
	.a1 /* IN */ (local_data1lo[6]),
	.a2 /* IN */ (gpu_dinlo[6]),
	.a3 /* IN */ (zero16[6]),
	.s0 /* IN */ (srcd1ld_1),
	.s1 /* IN */ (intldb_2)
);
mx4 srcd1i_index_2_inst_7
(
	.z /* OUT */ (srcd1i_2[7]),
	.a0 /* IN */ (sd1_2[7]),
	.a1 /* IN */ (local_data1lo[7]),
	.a2 /* IN */ (gpu_dinlo[7]),
	.a3 /* IN */ (zero16[7]),
	.s0 /* IN */ (srcd1ld_1),
	.s1 /* IN */ (intldb_2)
);
mx4 srcd1i_index_2_inst_8
(
	.z /* OUT */ (srcd1i_2[8]),
	.a0 /* IN */ (sd1_2[8]),
	.a1 /* IN */ (local_data1lo[8]),
	.a2 /* IN */ (gpu_dinlo[8]),
	.a3 /* IN */ (zero16[8]),
	.s0 /* IN */ (srcd1ld_1),
	.s1 /* IN */ (intldb_2)
);
mx4 srcd1i_index_2_inst_9
(
	.z /* OUT */ (srcd1i_2[9]),
	.a0 /* IN */ (sd1_2[9]),
	.a1 /* IN */ (local_data1lo[9]),
	.a2 /* IN */ (gpu_dinlo[9]),
	.a3 /* IN */ (zero16[9]),
	.s0 /* IN */ (srcd1ld_1),
	.s1 /* IN */ (intldb_2)
);
mx4 srcd1i_index_2_inst_10
(
	.z /* OUT */ (srcd1i_2[10]),
	.a0 /* IN */ (sd1_2[10]),
	.a1 /* IN */ (local_data1lo[10]),
	.a2 /* IN */ (gpu_dinlo[10]),
	.a3 /* IN */ (zero16[10]),
	.s0 /* IN */ (srcd1ld_1),
	.s1 /* IN */ (intldb_2)
);
mx4 srcd1i_index_2_inst_11
(
	.z /* OUT */ (srcd1i_2[11]),
	.a0 /* IN */ (sd1_2[11]),
	.a1 /* IN */ (local_data1lo[11]),
	.a2 /* IN */ (gpu_dinlo[11]),
	.a3 /* IN */ (zero16[11]),
	.s0 /* IN */ (srcd1ld_1),
	.s1 /* IN */ (intldb_2)
);
mx4 srcd1i_index_2_inst_12
(
	.z /* OUT */ (srcd1i_2[12]),
	.a0 /* IN */ (sd1_2[12]),
	.a1 /* IN */ (local_data1lo[12]),
	.a2 /* IN */ (gpu_dinlo[12]),
	.a3 /* IN */ (zero16[12]),
	.s0 /* IN */ (srcd1ld_1),
	.s1 /* IN */ (intldb_2)
);
mx4 srcd1i_index_2_inst_13
(
	.z /* OUT */ (srcd1i_2[13]),
	.a0 /* IN */ (sd1_2[13]),
	.a1 /* IN */ (local_data1lo[13]),
	.a2 /* IN */ (gpu_dinlo[13]),
	.a3 /* IN */ (zero16[13]),
	.s0 /* IN */ (srcd1ld_1),
	.s1 /* IN */ (intldb_2)
);
mx4 srcd1i_index_2_inst_14
(
	.z /* OUT */ (srcd1i_2[14]),
	.a0 /* IN */ (sd1_2[14]),
	.a1 /* IN */ (local_data1lo[14]),
	.a2 /* IN */ (gpu_dinlo[14]),
	.a3 /* IN */ (zero16[14]),
	.s0 /* IN */ (srcd1ld_1),
	.s1 /* IN */ (intldb_2)
);
mx4 srcd1i_index_2_inst_15
(
	.z /* OUT */ (srcd1i_2[15]),
	.a0 /* IN */ (sd1_2[15]),
	.a1 /* IN */ (local_data1lo[15]),
	.a2 /* IN */ (gpu_dinlo[15]),
	.a3 /* IN */ (zero16[15]),
	.s0 /* IN */ (srcd1ld_1),
	.s1 /* IN */ (intldb_2)
);

// DATA.NET (97) - srcd1i[3] : mx4
mx4 srcd1i_index_3_inst_0
(
	.z /* OUT */ (srcd1i_3[0]),
	.a0 /* IN */ (sd1_3[0]),
	.a1 /* IN */ (local_data1hi[0]),
	.a2 /* IN */ (gpu_dinlo[0]),
	.a3 /* IN */ (zero16[0]),
	.s0 /* IN */ (srcd1ld_1),
	.s1 /* IN */ (intldb_3)
);
mx4 srcd1i_index_3_inst_1
(
	.z /* OUT */ (srcd1i_3[1]),
	.a0 /* IN */ (sd1_3[1]),
	.a1 /* IN */ (local_data1hi[1]),
	.a2 /* IN */ (gpu_dinlo[1]),
	.a3 /* IN */ (zero16[1]),
	.s0 /* IN */ (srcd1ld_1),
	.s1 /* IN */ (intldb_3)
);
mx4 srcd1i_index_3_inst_2
(
	.z /* OUT */ (srcd1i_3[2]),
	.a0 /* IN */ (sd1_3[2]),
	.a1 /* IN */ (local_data1hi[2]),
	.a2 /* IN */ (gpu_dinlo[2]),
	.a3 /* IN */ (zero16[2]),
	.s0 /* IN */ (srcd1ld_1),
	.s1 /* IN */ (intldb_3)
);
mx4 srcd1i_index_3_inst_3
(
	.z /* OUT */ (srcd1i_3[3]),
	.a0 /* IN */ (sd1_3[3]),
	.a1 /* IN */ (local_data1hi[3]),
	.a2 /* IN */ (gpu_dinlo[3]),
	.a3 /* IN */ (zero16[3]),
	.s0 /* IN */ (srcd1ld_1),
	.s1 /* IN */ (intldb_3)
);
mx4 srcd1i_index_3_inst_4
(
	.z /* OUT */ (srcd1i_3[4]),
	.a0 /* IN */ (sd1_3[4]),
	.a1 /* IN */ (local_data1hi[4]),
	.a2 /* IN */ (gpu_dinlo[4]),
	.a3 /* IN */ (zero16[4]),
	.s0 /* IN */ (srcd1ld_1),
	.s1 /* IN */ (intldb_3)
);
mx4 srcd1i_index_3_inst_5
(
	.z /* OUT */ (srcd1i_3[5]),
	.a0 /* IN */ (sd1_3[5]),
	.a1 /* IN */ (local_data1hi[5]),
	.a2 /* IN */ (gpu_dinlo[5]),
	.a3 /* IN */ (zero16[5]),
	.s0 /* IN */ (srcd1ld_1),
	.s1 /* IN */ (intldb_3)
);
mx4 srcd1i_index_3_inst_6
(
	.z /* OUT */ (srcd1i_3[6]),
	.a0 /* IN */ (sd1_3[6]),
	.a1 /* IN */ (local_data1hi[6]),
	.a2 /* IN */ (gpu_dinlo[6]),
	.a3 /* IN */ (zero16[6]),
	.s0 /* IN */ (srcd1ld_1),
	.s1 /* IN */ (intldb_3)
);
mx4 srcd1i_index_3_inst_7
(
	.z /* OUT */ (srcd1i_3[7]),
	.a0 /* IN */ (sd1_3[7]),
	.a1 /* IN */ (local_data1hi[7]),
	.a2 /* IN */ (gpu_dinlo[7]),
	.a3 /* IN */ (zero16[7]),
	.s0 /* IN */ (srcd1ld_1),
	.s1 /* IN */ (intldb_3)
);
mx4 srcd1i_index_3_inst_8
(
	.z /* OUT */ (srcd1i_3[8]),
	.a0 /* IN */ (sd1_3[8]),
	.a1 /* IN */ (local_data1hi[8]),
	.a2 /* IN */ (gpu_dinlo[8]),
	.a3 /* IN */ (zero16[8]),
	.s0 /* IN */ (srcd1ld_1),
	.s1 /* IN */ (intldb_3)
);
mx4 srcd1i_index_3_inst_9
(
	.z /* OUT */ (srcd1i_3[9]),
	.a0 /* IN */ (sd1_3[9]),
	.a1 /* IN */ (local_data1hi[9]),
	.a2 /* IN */ (gpu_dinlo[9]),
	.a3 /* IN */ (zero16[9]),
	.s0 /* IN */ (srcd1ld_1),
	.s1 /* IN */ (intldb_3)
);
mx4 srcd1i_index_3_inst_10
(
	.z /* OUT */ (srcd1i_3[10]),
	.a0 /* IN */ (sd1_3[10]),
	.a1 /* IN */ (local_data1hi[10]),
	.a2 /* IN */ (gpu_dinlo[10]),
	.a3 /* IN */ (zero16[10]),
	.s0 /* IN */ (srcd1ld_1),
	.s1 /* IN */ (intldb_3)
);
mx4 srcd1i_index_3_inst_11
(
	.z /* OUT */ (srcd1i_3[11]),
	.a0 /* IN */ (sd1_3[11]),
	.a1 /* IN */ (local_data1hi[11]),
	.a2 /* IN */ (gpu_dinlo[11]),
	.a3 /* IN */ (zero16[11]),
	.s0 /* IN */ (srcd1ld_1),
	.s1 /* IN */ (intldb_3)
);
mx4 srcd1i_index_3_inst_12
(
	.z /* OUT */ (srcd1i_3[12]),
	.a0 /* IN */ (sd1_3[12]),
	.a1 /* IN */ (local_data1hi[12]),
	.a2 /* IN */ (gpu_dinlo[12]),
	.a3 /* IN */ (zero16[12]),
	.s0 /* IN */ (srcd1ld_1),
	.s1 /* IN */ (intldb_3)
);
mx4 srcd1i_index_3_inst_13
(
	.z /* OUT */ (srcd1i_3[13]),
	.a0 /* IN */ (sd1_3[13]),
	.a1 /* IN */ (local_data1hi[13]),
	.a2 /* IN */ (gpu_dinlo[13]),
	.a3 /* IN */ (zero16[13]),
	.s0 /* IN */ (srcd1ld_1),
	.s1 /* IN */ (intldb_3)
);
mx4 srcd1i_index_3_inst_14
(
	.z /* OUT */ (srcd1i_3[14]),
	.a0 /* IN */ (sd1_3[14]),
	.a1 /* IN */ (local_data1hi[14]),
	.a2 /* IN */ (gpu_dinlo[14]),
	.a3 /* IN */ (zero16[14]),
	.s0 /* IN */ (srcd1ld_1),
	.s1 /* IN */ (intldb_3)
);
mx4 srcd1i_index_3_inst_15
(
	.z /* OUT */ (srcd1i_3[15]),
	.a0 /* IN */ (sd1_3[15]),
	.a1 /* IN */ (local_data1hi[15]),
	.a2 /* IN */ (gpu_dinlo[15]),
	.a3 /* IN */ (zero16[15]),
	.s0 /* IN */ (srcd1ld_1),
	.s1 /* IN */ (intldb_3)
);

// DATA.NET (99) - sd1[0-3] : fd1qp
fd1q sd1_from_0_to_3_inst_0
(
	.q /* OUT */ (sd1_0[0]),
	.d /* IN */ (srcd1i_0[0]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_1
(
	.q /* OUT */ (sd1_0[1]),
	.d /* IN */ (srcd1i_0[1]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_2
(
	.q /* OUT */ (sd1_0[2]),
	.d /* IN */ (srcd1i_0[2]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_3
(
	.q /* OUT */ (sd1_0[3]),
	.d /* IN */ (srcd1i_0[3]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_4
(
	.q /* OUT */ (sd1_0[4]),
	.d /* IN */ (srcd1i_0[4]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_5
(
	.q /* OUT */ (sd1_0[5]),
	.d /* IN */ (srcd1i_0[5]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_6
(
	.q /* OUT */ (sd1_0[6]),
	.d /* IN */ (srcd1i_0[6]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_7
(
	.q /* OUT */ (sd1_0[7]),
	.d /* IN */ (srcd1i_0[7]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_8
(
	.q /* OUT */ (sd1_0[8]),
	.d /* IN */ (srcd1i_0[8]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_9
(
	.q /* OUT */ (sd1_0[9]),
	.d /* IN */ (srcd1i_0[9]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_10
(
	.q /* OUT */ (sd1_0[10]),
	.d /* IN */ (srcd1i_0[10]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_11
(
	.q /* OUT */ (sd1_0[11]),
	.d /* IN */ (srcd1i_0[11]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_12
(
	.q /* OUT */ (sd1_0[12]),
	.d /* IN */ (srcd1i_0[12]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_13
(
	.q /* OUT */ (sd1_0[13]),
	.d /* IN */ (srcd1i_0[13]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_14
(
	.q /* OUT */ (sd1_0[14]),
	.d /* IN */ (srcd1i_0[14]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_15
(
	.q /* OUT */ (sd1_0[15]),
	.d /* IN */ (srcd1i_0[15]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_16
(
	.q /* OUT */ (sd1_1[0]),
	.d /* IN */ (srcd1i_1[0]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_17
(
	.q /* OUT */ (sd1_1[1]),
	.d /* IN */ (srcd1i_1[1]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_18
(
	.q /* OUT */ (sd1_1[2]),
	.d /* IN */ (srcd1i_1[2]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_19
(
	.q /* OUT */ (sd1_1[3]),
	.d /* IN */ (srcd1i_1[3]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_20
(
	.q /* OUT */ (sd1_1[4]),
	.d /* IN */ (srcd1i_1[4]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_21
(
	.q /* OUT */ (sd1_1[5]),
	.d /* IN */ (srcd1i_1[5]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_22
(
	.q /* OUT */ (sd1_1[6]),
	.d /* IN */ (srcd1i_1[6]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_23
(
	.q /* OUT */ (sd1_1[7]),
	.d /* IN */ (srcd1i_1[7]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_24
(
	.q /* OUT */ (sd1_1[8]),
	.d /* IN */ (srcd1i_1[8]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_25
(
	.q /* OUT */ (sd1_1[9]),
	.d /* IN */ (srcd1i_1[9]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_26
(
	.q /* OUT */ (sd1_1[10]),
	.d /* IN */ (srcd1i_1[10]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_27
(
	.q /* OUT */ (sd1_1[11]),
	.d /* IN */ (srcd1i_1[11]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_28
(
	.q /* OUT */ (sd1_1[12]),
	.d /* IN */ (srcd1i_1[12]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_29
(
	.q /* OUT */ (sd1_1[13]),
	.d /* IN */ (srcd1i_1[13]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_30
(
	.q /* OUT */ (sd1_1[14]),
	.d /* IN */ (srcd1i_1[14]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_31
(
	.q /* OUT */ (sd1_1[15]),
	.d /* IN */ (srcd1i_1[15]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_32
(
	.q /* OUT */ (sd1_2[0]),
	.d /* IN */ (srcd1i_2[0]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_33
(
	.q /* OUT */ (sd1_2[1]),
	.d /* IN */ (srcd1i_2[1]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_34
(
	.q /* OUT */ (sd1_2[2]),
	.d /* IN */ (srcd1i_2[2]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_35
(
	.q /* OUT */ (sd1_2[3]),
	.d /* IN */ (srcd1i_2[3]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_36
(
	.q /* OUT */ (sd1_2[4]),
	.d /* IN */ (srcd1i_2[4]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_37
(
	.q /* OUT */ (sd1_2[5]),
	.d /* IN */ (srcd1i_2[5]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_38
(
	.q /* OUT */ (sd1_2[6]),
	.d /* IN */ (srcd1i_2[6]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_39
(
	.q /* OUT */ (sd1_2[7]),
	.d /* IN */ (srcd1i_2[7]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_40
(
	.q /* OUT */ (sd1_2[8]),
	.d /* IN */ (srcd1i_2[8]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_41
(
	.q /* OUT */ (sd1_2[9]),
	.d /* IN */ (srcd1i_2[9]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_42
(
	.q /* OUT */ (sd1_2[10]),
	.d /* IN */ (srcd1i_2[10]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_43
(
	.q /* OUT */ (sd1_2[11]),
	.d /* IN */ (srcd1i_2[11]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_44
(
	.q /* OUT */ (sd1_2[12]),
	.d /* IN */ (srcd1i_2[12]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_45
(
	.q /* OUT */ (sd1_2[13]),
	.d /* IN */ (srcd1i_2[13]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_46
(
	.q /* OUT */ (sd1_2[14]),
	.d /* IN */ (srcd1i_2[14]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_47
(
	.q /* OUT */ (sd1_2[15]),
	.d /* IN */ (srcd1i_2[15]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_48
(
	.q /* OUT */ (sd1_3[0]),
	.d /* IN */ (srcd1i_3[0]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_49
(
	.q /* OUT */ (sd1_3[1]),
	.d /* IN */ (srcd1i_3[1]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_50
(
	.q /* OUT */ (sd1_3[2]),
	.d /* IN */ (srcd1i_3[2]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_51
(
	.q /* OUT */ (sd1_3[3]),
	.d /* IN */ (srcd1i_3[3]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_52
(
	.q /* OUT */ (sd1_3[4]),
	.d /* IN */ (srcd1i_3[4]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_53
(
	.q /* OUT */ (sd1_3[5]),
	.d /* IN */ (srcd1i_3[5]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_54
(
	.q /* OUT */ (sd1_3[6]),
	.d /* IN */ (srcd1i_3[6]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_55
(
	.q /* OUT */ (sd1_3[7]),
	.d /* IN */ (srcd1i_3[7]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_56
(
	.q /* OUT */ (sd1_3[8]),
	.d /* IN */ (srcd1i_3[8]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_57
(
	.q /* OUT */ (sd1_3[9]),
	.d /* IN */ (srcd1i_3[9]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_58
(
	.q /* OUT */ (sd1_3[10]),
	.d /* IN */ (srcd1i_3[10]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_59
(
	.q /* OUT */ (sd1_3[11]),
	.d /* IN */ (srcd1i_3[11]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_60
(
	.q /* OUT */ (sd1_3[12]),
	.d /* IN */ (srcd1i_3[12]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_61
(
	.q /* OUT */ (sd1_3[13]),
	.d /* IN */ (srcd1i_3[13]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_62
(
	.q /* OUT */ (sd1_3[14]),
	.d /* IN */ (srcd1i_3[14]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sd1_from_0_to_3_inst_63
(
	.q /* OUT */ (sd1_3[15]),
	.d /* IN */ (srcd1i_3[15]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DATA.NET (100) - srcd1[0] : join
assign srcd1_0[0] = sd1_0[0];
assign srcd1_0[1] = sd1_0[1];
assign srcd1_0[2] = sd1_0[2];
assign srcd1_0[3] = sd1_0[3];
assign srcd1_0[4] = sd1_0[4];
assign srcd1_0[5] = sd1_0[5];
assign srcd1_0[6] = sd1_0[6];
assign srcd1_0[7] = sd1_0[7];
assign srcd1_0[8] = sd1_0[8];
assign srcd1_0[9] = sd1_0[9];
assign srcd1_0[10] = sd1_0[10];
assign srcd1_0[11] = sd1_0[11];
assign srcd1_0[12] = sd1_0[12];
assign srcd1_0[13] = sd1_0[13];
assign srcd1_0[14] = sd1_0[14];
assign srcd1_0[15] = sd1_0[15];
assign srcd1_0[16] = sd1_1[0];
assign srcd1_0[17] = sd1_1[1];
assign srcd1_0[18] = sd1_1[2];
assign srcd1_0[19] = sd1_1[3];
assign srcd1_0[20] = sd1_1[4];
assign srcd1_0[21] = sd1_1[5];
assign srcd1_0[22] = sd1_1[6];
assign srcd1_0[23] = sd1_1[7];
assign srcd1_0[24] = sd1_1[8];
assign srcd1_0[25] = sd1_1[9];
assign srcd1_0[26] = sd1_1[10];
assign srcd1_0[27] = sd1_1[11];
assign srcd1_0[28] = sd1_1[12];
assign srcd1_0[29] = sd1_1[13];
assign srcd1_0[30] = sd1_1[14];
assign srcd1_0[31] = sd1_1[15];

// DATA.NET (101) - srcd1[1] : join
assign srcd1_1[0] = sd1_2[0];
assign srcd1_1[1] = sd1_2[1];
assign srcd1_1[2] = sd1_2[2];
assign srcd1_1[3] = sd1_2[3];
assign srcd1_1[4] = sd1_2[4];
assign srcd1_1[5] = sd1_2[5];
assign srcd1_1[6] = sd1_2[6];
assign srcd1_1[7] = sd1_2[7];
assign srcd1_1[8] = sd1_2[8];
assign srcd1_1[9] = sd1_2[9];
assign srcd1_1[10] = sd1_2[10];
assign srcd1_1[11] = sd1_2[11];
assign srcd1_1[12] = sd1_2[12];
assign srcd1_1[13] = sd1_2[13];
assign srcd1_1[14] = sd1_2[14];
assign srcd1_1[15] = sd1_2[15];
assign srcd1_1[16] = sd1_3[0];
assign srcd1_1[17] = sd1_3[1];
assign srcd1_1[18] = sd1_3[2];
assign srcd1_1[19] = sd1_3[3];
assign srcd1_1[20] = sd1_3[4];
assign srcd1_1[21] = sd1_3[5];
assign srcd1_1[22] = sd1_3[6];
assign srcd1_1[23] = sd1_3[7];
assign srcd1_1[24] = sd1_3[8];
assign srcd1_1[25] = sd1_3[9];
assign srcd1_1[26] = sd1_3[10];
assign srcd1_1[27] = sd1_3[11];
assign srcd1_1[28] = sd1_3[12];
assign srcd1_1[29] = sd1_3[13];
assign srcd1_1[30] = sd1_3[14];
assign srcd1_1[31] = sd1_3[15];

// DATA.NET (103) - srcd2ldg[0-1] : an2u
assign srcd2ldg_0 = srcdread & load_strobe;
assign srcd2ldg_1 = srcdread & load_strobe;

// DATA.NET (104) - srcd2[0-1] : ldp1q
ldp1q srcd2_from_0_to_1_inst_0
(
	.q /* OUT */ (srcd2_0[0]),
	.d /* IN */ (srcd1_0[0]),
	.g /* IN */ (srcd2ldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_1
(
	.q /* OUT */ (srcd2_0[1]),
	.d /* IN */ (srcd1_0[1]),
	.g /* IN */ (srcd2ldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_2
(
	.q /* OUT */ (srcd2_0[2]),
	.d /* IN */ (srcd1_0[2]),
	.g /* IN */ (srcd2ldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_3
(
	.q /* OUT */ (srcd2_0[3]),
	.d /* IN */ (srcd1_0[3]),
	.g /* IN */ (srcd2ldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_4
(
	.q /* OUT */ (srcd2_0[4]),
	.d /* IN */ (srcd1_0[4]),
	.g /* IN */ (srcd2ldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_5
(
	.q /* OUT */ (srcd2_0[5]),
	.d /* IN */ (srcd1_0[5]),
	.g /* IN */ (srcd2ldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_6
(
	.q /* OUT */ (srcd2_0[6]),
	.d /* IN */ (srcd1_0[6]),
	.g /* IN */ (srcd2ldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_7
(
	.q /* OUT */ (srcd2_0[7]),
	.d /* IN */ (srcd1_0[7]),
	.g /* IN */ (srcd2ldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_8
(
	.q /* OUT */ (srcd2_0[8]),
	.d /* IN */ (srcd1_0[8]),
	.g /* IN */ (srcd2ldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_9
(
	.q /* OUT */ (srcd2_0[9]),
	.d /* IN */ (srcd1_0[9]),
	.g /* IN */ (srcd2ldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_10
(
	.q /* OUT */ (srcd2_0[10]),
	.d /* IN */ (srcd1_0[10]),
	.g /* IN */ (srcd2ldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_11
(
	.q /* OUT */ (srcd2_0[11]),
	.d /* IN */ (srcd1_0[11]),
	.g /* IN */ (srcd2ldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_12
(
	.q /* OUT */ (srcd2_0[12]),
	.d /* IN */ (srcd1_0[12]),
	.g /* IN */ (srcd2ldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_13
(
	.q /* OUT */ (srcd2_0[13]),
	.d /* IN */ (srcd1_0[13]),
	.g /* IN */ (srcd2ldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_14
(
	.q /* OUT */ (srcd2_0[14]),
	.d /* IN */ (srcd1_0[14]),
	.g /* IN */ (srcd2ldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_15
(
	.q /* OUT */ (srcd2_0[15]),
	.d /* IN */ (srcd1_0[15]),
	.g /* IN */ (srcd2ldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_16
(
	.q /* OUT */ (srcd2_0[16]),
	.d /* IN */ (srcd1_0[16]),
	.g /* IN */ (srcd2ldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_17
(
	.q /* OUT */ (srcd2_0[17]),
	.d /* IN */ (srcd1_0[17]),
	.g /* IN */ (srcd2ldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_18
(
	.q /* OUT */ (srcd2_0[18]),
	.d /* IN */ (srcd1_0[18]),
	.g /* IN */ (srcd2ldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_19
(
	.q /* OUT */ (srcd2_0[19]),
	.d /* IN */ (srcd1_0[19]),
	.g /* IN */ (srcd2ldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_20
(
	.q /* OUT */ (srcd2_0[20]),
	.d /* IN */ (srcd1_0[20]),
	.g /* IN */ (srcd2ldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_21
(
	.q /* OUT */ (srcd2_0[21]),
	.d /* IN */ (srcd1_0[21]),
	.g /* IN */ (srcd2ldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_22
(
	.q /* OUT */ (srcd2_0[22]),
	.d /* IN */ (srcd1_0[22]),
	.g /* IN */ (srcd2ldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_23
(
	.q /* OUT */ (srcd2_0[23]),
	.d /* IN */ (srcd1_0[23]),
	.g /* IN */ (srcd2ldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_24
(
	.q /* OUT */ (srcd2_0[24]),
	.d /* IN */ (srcd1_0[24]),
	.g /* IN */ (srcd2ldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_25
(
	.q /* OUT */ (srcd2_0[25]),
	.d /* IN */ (srcd1_0[25]),
	.g /* IN */ (srcd2ldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_26
(
	.q /* OUT */ (srcd2_0[26]),
	.d /* IN */ (srcd1_0[26]),
	.g /* IN */ (srcd2ldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_27
(
	.q /* OUT */ (srcd2_0[27]),
	.d /* IN */ (srcd1_0[27]),
	.g /* IN */ (srcd2ldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_28
(
	.q /* OUT */ (srcd2_0[28]),
	.d /* IN */ (srcd1_0[28]),
	.g /* IN */ (srcd2ldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_29
(
	.q /* OUT */ (srcd2_0[29]),
	.d /* IN */ (srcd1_0[29]),
	.g /* IN */ (srcd2ldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_30
(
	.q /* OUT */ (srcd2_0[30]),
	.d /* IN */ (srcd1_0[30]),
	.g /* IN */ (srcd2ldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_31
(
	.q /* OUT */ (srcd2_0[31]),
	.d /* IN */ (srcd1_0[31]),
	.g /* IN */ (srcd2ldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_32
(
	.q /* OUT */ (srcd2_1[0]),
	.d /* IN */ (srcd1_1[0]),
	.g /* IN */ (srcd2ldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_33
(
	.q /* OUT */ (srcd2_1[1]),
	.d /* IN */ (srcd1_1[1]),
	.g /* IN */ (srcd2ldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_34
(
	.q /* OUT */ (srcd2_1[2]),
	.d /* IN */ (srcd1_1[2]),
	.g /* IN */ (srcd2ldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_35
(
	.q /* OUT */ (srcd2_1[3]),
	.d /* IN */ (srcd1_1[3]),
	.g /* IN */ (srcd2ldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_36
(
	.q /* OUT */ (srcd2_1[4]),
	.d /* IN */ (srcd1_1[4]),
	.g /* IN */ (srcd2ldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_37
(
	.q /* OUT */ (srcd2_1[5]),
	.d /* IN */ (srcd1_1[5]),
	.g /* IN */ (srcd2ldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_38
(
	.q /* OUT */ (srcd2_1[6]),
	.d /* IN */ (srcd1_1[6]),
	.g /* IN */ (srcd2ldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_39
(
	.q /* OUT */ (srcd2_1[7]),
	.d /* IN */ (srcd1_1[7]),
	.g /* IN */ (srcd2ldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_40
(
	.q /* OUT */ (srcd2_1[8]),
	.d /* IN */ (srcd1_1[8]),
	.g /* IN */ (srcd2ldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_41
(
	.q /* OUT */ (srcd2_1[9]),
	.d /* IN */ (srcd1_1[9]),
	.g /* IN */ (srcd2ldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_42
(
	.q /* OUT */ (srcd2_1[10]),
	.d /* IN */ (srcd1_1[10]),
	.g /* IN */ (srcd2ldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_43
(
	.q /* OUT */ (srcd2_1[11]),
	.d /* IN */ (srcd1_1[11]),
	.g /* IN */ (srcd2ldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_44
(
	.q /* OUT */ (srcd2_1[12]),
	.d /* IN */ (srcd1_1[12]),
	.g /* IN */ (srcd2ldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_45
(
	.q /* OUT */ (srcd2_1[13]),
	.d /* IN */ (srcd1_1[13]),
	.g /* IN */ (srcd2ldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_46
(
	.q /* OUT */ (srcd2_1[14]),
	.d /* IN */ (srcd1_1[14]),
	.g /* IN */ (srcd2ldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_47
(
	.q /* OUT */ (srcd2_1[15]),
	.d /* IN */ (srcd1_1[15]),
	.g /* IN */ (srcd2ldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_48
(
	.q /* OUT */ (srcd2_1[16]),
	.d /* IN */ (srcd1_1[16]),
	.g /* IN */ (srcd2ldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_49
(
	.q /* OUT */ (srcd2_1[17]),
	.d /* IN */ (srcd1_1[17]),
	.g /* IN */ (srcd2ldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_50
(
	.q /* OUT */ (srcd2_1[18]),
	.d /* IN */ (srcd1_1[18]),
	.g /* IN */ (srcd2ldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_51
(
	.q /* OUT */ (srcd2_1[19]),
	.d /* IN */ (srcd1_1[19]),
	.g /* IN */ (srcd2ldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_52
(
	.q /* OUT */ (srcd2_1[20]),
	.d /* IN */ (srcd1_1[20]),
	.g /* IN */ (srcd2ldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_53
(
	.q /* OUT */ (srcd2_1[21]),
	.d /* IN */ (srcd1_1[21]),
	.g /* IN */ (srcd2ldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_54
(
	.q /* OUT */ (srcd2_1[22]),
	.d /* IN */ (srcd1_1[22]),
	.g /* IN */ (srcd2ldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_55
(
	.q /* OUT */ (srcd2_1[23]),
	.d /* IN */ (srcd1_1[23]),
	.g /* IN */ (srcd2ldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_56
(
	.q /* OUT */ (srcd2_1[24]),
	.d /* IN */ (srcd1_1[24]),
	.g /* IN */ (srcd2ldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_57
(
	.q /* OUT */ (srcd2_1[25]),
	.d /* IN */ (srcd1_1[25]),
	.g /* IN */ (srcd2ldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_58
(
	.q /* OUT */ (srcd2_1[26]),
	.d /* IN */ (srcd1_1[26]),
	.g /* IN */ (srcd2ldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_59
(
	.q /* OUT */ (srcd2_1[27]),
	.d /* IN */ (srcd1_1[27]),
	.g /* IN */ (srcd2ldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_60
(
	.q /* OUT */ (srcd2_1[28]),
	.d /* IN */ (srcd1_1[28]),
	.g /* IN */ (srcd2ldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_61
(
	.q /* OUT */ (srcd2_1[29]),
	.d /* IN */ (srcd1_1[29]),
	.g /* IN */ (srcd2ldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_62
(
	.q /* OUT */ (srcd2_1[30]),
	.d /* IN */ (srcd1_1[30]),
	.g /* IN */ (srcd2ldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcd2_from_0_to_1_inst_63
(
	.q /* OUT */ (srcd2_1[31]),
	.d /* IN */ (srcd1_1[31]),
	.g /* IN */ (srcd2ldg_1),
	.sys_clk(sys_clk) // Generated
);

// DATA.NET (108) - src_shift : srcshift
srcshift src_shift_inst
(
	.srcd_0 /* OUT */ ({srcdlo[0],srcdlo[1],srcdlo[2],srcdlo[3],srcdlo[4],srcdlo[5],srcdlo[6],srcdlo[7],srcdlo[8],srcdlo[9],srcdlo[10],srcdlo[11],srcdlo[12],srcdlo[13],srcdlo[14],srcdlo[15],srcdlo[16],srcdlo[17],srcdlo[18],srcdlo[19],srcdlo[20],srcdlo[21],srcdlo[22],srcdlo[23],srcdlo[24],srcdlo[25],srcdlo[26],srcdlo[27],srcdlo[28],srcdlo[29],srcdlo[30],srcdlo[31]}),
	.srcd_1 /* OUT */ ({srcdhi[0],srcdhi[1],srcdhi[2],srcdhi[3],srcdhi[4],srcdhi[5],srcdhi[6],srcdhi[7],srcdhi[8],srcdhi[9],srcdhi[10],srcdhi[11],srcdhi[12],srcdhi[13],srcdhi[14],srcdhi[15],srcdhi[16],srcdhi[17],srcdhi[18],srcdhi[19],srcdhi[20],srcdhi[21],srcdhi[22],srcdhi[23],srcdhi[24],srcdhi[25],srcdhi[26],srcdhi[27],srcdhi[28],srcdhi[29],srcdhi[30],srcdhi[31]}),
	.big_pix /* IN */ (big_pix),
	.srcd1lo /* IN */ ({srcd1_0[0],srcd1_0[1],srcd1_0[2],srcd1_0[3],srcd1_0[4],srcd1_0[5],srcd1_0[6],srcd1_0[7],srcd1_0[8],srcd1_0[9],srcd1_0[10],srcd1_0[11],srcd1_0[12],srcd1_0[13],srcd1_0[14],srcd1_0[15],srcd1_0[16],srcd1_0[17],srcd1_0[18],srcd1_0[19],srcd1_0[20],srcd1_0[21],srcd1_0[22],srcd1_0[23],srcd1_0[24],srcd1_0[25],srcd1_0[26],srcd1_0[27],srcd1_0[28],srcd1_0[29],srcd1_0[30],srcd1_0[31]}),
	.srcd1hi /* IN */ ({srcd1_1[0],srcd1_1[1],srcd1_1[2],srcd1_1[3],srcd1_1[4],srcd1_1[5],srcd1_1[6],srcd1_1[7],srcd1_1[8],srcd1_1[9],srcd1_1[10],srcd1_1[11],srcd1_1[12],srcd1_1[13],srcd1_1[14],srcd1_1[15],srcd1_1[16],srcd1_1[17],srcd1_1[18],srcd1_1[19],srcd1_1[20],srcd1_1[21],srcd1_1[22],srcd1_1[23],srcd1_1[24],srcd1_1[25],srcd1_1[26],srcd1_1[27],srcd1_1[28],srcd1_1[29],srcd1_1[30],srcd1_1[31]}),
	.srcd2lo /* IN */ ({srcd2_0[0],srcd2_0[1],srcd2_0[2],srcd2_0[3],srcd2_0[4],srcd2_0[5],srcd2_0[6],srcd2_0[7],srcd2_0[8],srcd2_0[9],srcd2_0[10],srcd2_0[11],srcd2_0[12],srcd2_0[13],srcd2_0[14],srcd2_0[15],srcd2_0[16],srcd2_0[17],srcd2_0[18],srcd2_0[19],srcd2_0[20],srcd2_0[21],srcd2_0[22],srcd2_0[23],srcd2_0[24],srcd2_0[25],srcd2_0[26],srcd2_0[27],srcd2_0[28],srcd2_0[29],srcd2_0[30],srcd2_0[31]}),
	.srcd2hi /* IN */ ({srcd2_1[0],srcd2_1[1],srcd2_1[2],srcd2_1[3],srcd2_1[4],srcd2_1[5],srcd2_1[6],srcd2_1[7],srcd2_1[8],srcd2_1[9],srcd2_1[10],srcd2_1[11],srcd2_1[12],srcd2_1[13],srcd2_1[14],srcd2_1[15],srcd2_1[16],srcd2_1[17],srcd2_1[18],srcd2_1[19],srcd2_1[20],srcd2_1[21],srcd2_1[22],srcd2_1[23],srcd2_1[24],srcd2_1[25],srcd2_1[26],srcd2_1[27],srcd2_1[28],srcd2_1[29],srcd2_1[30],srcd2_1[31]}),
	.srcshift_0 /* IN */ (srcshift_0),
	.srcshift_1 /* IN */ (srcshift_1),
	.srcshift_2 /* IN */ (srcshift_2),
	.srcshift_3 /* IN */ (srcshift_3),
	.srcshift_4 /* IN */ (srcshift_4),
	.srcshift_5 /* IN */ (srcshift_5)
);

// DATA.NET (111) - srcd[0-7] : niv
assign srcd_0 = srcdlo[0];
assign srcd_1 = srcdlo[1];
assign srcd_2 = srcdlo[2];
assign srcd_3 = srcdlo[3];
assign srcd_4 = srcdlo[4];
assign srcd_5 = srcdlo[5];
assign srcd_6 = srcdlo[6];
assign srcd_7 = srcdlo[7];

// DATA.NET (121) - zedldb[0-3] : nivh
assign zedldb_0 = zedld_0;
assign zedldb_1 = zedld_1;
assign zedldb_2 = zedld_2;
assign zedldb_3 = zedld_3;

// DATA.NET (122) - srcz1i[0] : mx4
mx4 srcz1i_index_0_inst_0
(
	.z /* OUT */ (srcz1i_0[0]),
	.a0 /* IN */ (sz1_0[0]),
	.a1 /* IN */ (local_data0lo[0]),
	.a2 /* IN */ (gpu_dinhi[0]),
	.a3 /* IN */ (zero16[0]),
	.s0 /* IN */ (srcz1ld_0),
	.s1 /* IN */ (zedldb_0)
);
mx4 srcz1i_index_0_inst_1
(
	.z /* OUT */ (srcz1i_0[1]),
	.a0 /* IN */ (sz1_0[1]),
	.a1 /* IN */ (local_data0lo[1]),
	.a2 /* IN */ (gpu_dinhi[1]),
	.a3 /* IN */ (zero16[1]),
	.s0 /* IN */ (srcz1ld_0),
	.s1 /* IN */ (zedldb_0)
);
mx4 srcz1i_index_0_inst_2
(
	.z /* OUT */ (srcz1i_0[2]),
	.a0 /* IN */ (sz1_0[2]),
	.a1 /* IN */ (local_data0lo[2]),
	.a2 /* IN */ (gpu_dinhi[2]),
	.a3 /* IN */ (zero16[2]),
	.s0 /* IN */ (srcz1ld_0),
	.s1 /* IN */ (zedldb_0)
);
mx4 srcz1i_index_0_inst_3
(
	.z /* OUT */ (srcz1i_0[3]),
	.a0 /* IN */ (sz1_0[3]),
	.a1 /* IN */ (local_data0lo[3]),
	.a2 /* IN */ (gpu_dinhi[3]),
	.a3 /* IN */ (zero16[3]),
	.s0 /* IN */ (srcz1ld_0),
	.s1 /* IN */ (zedldb_0)
);
mx4 srcz1i_index_0_inst_4
(
	.z /* OUT */ (srcz1i_0[4]),
	.a0 /* IN */ (sz1_0[4]),
	.a1 /* IN */ (local_data0lo[4]),
	.a2 /* IN */ (gpu_dinhi[4]),
	.a3 /* IN */ (zero16[4]),
	.s0 /* IN */ (srcz1ld_0),
	.s1 /* IN */ (zedldb_0)
);
mx4 srcz1i_index_0_inst_5
(
	.z /* OUT */ (srcz1i_0[5]),
	.a0 /* IN */ (sz1_0[5]),
	.a1 /* IN */ (local_data0lo[5]),
	.a2 /* IN */ (gpu_dinhi[5]),
	.a3 /* IN */ (zero16[5]),
	.s0 /* IN */ (srcz1ld_0),
	.s1 /* IN */ (zedldb_0)
);
mx4 srcz1i_index_0_inst_6
(
	.z /* OUT */ (srcz1i_0[6]),
	.a0 /* IN */ (sz1_0[6]),
	.a1 /* IN */ (local_data0lo[6]),
	.a2 /* IN */ (gpu_dinhi[6]),
	.a3 /* IN */ (zero16[6]),
	.s0 /* IN */ (srcz1ld_0),
	.s1 /* IN */ (zedldb_0)
);
mx4 srcz1i_index_0_inst_7
(
	.z /* OUT */ (srcz1i_0[7]),
	.a0 /* IN */ (sz1_0[7]),
	.a1 /* IN */ (local_data0lo[7]),
	.a2 /* IN */ (gpu_dinhi[7]),
	.a3 /* IN */ (zero16[7]),
	.s0 /* IN */ (srcz1ld_0),
	.s1 /* IN */ (zedldb_0)
);
mx4 srcz1i_index_0_inst_8
(
	.z /* OUT */ (srcz1i_0[8]),
	.a0 /* IN */ (sz1_0[8]),
	.a1 /* IN */ (local_data0lo[8]),
	.a2 /* IN */ (gpu_dinhi[8]),
	.a3 /* IN */ (zero16[8]),
	.s0 /* IN */ (srcz1ld_0),
	.s1 /* IN */ (zedldb_0)
);
mx4 srcz1i_index_0_inst_9
(
	.z /* OUT */ (srcz1i_0[9]),
	.a0 /* IN */ (sz1_0[9]),
	.a1 /* IN */ (local_data0lo[9]),
	.a2 /* IN */ (gpu_dinhi[9]),
	.a3 /* IN */ (zero16[9]),
	.s0 /* IN */ (srcz1ld_0),
	.s1 /* IN */ (zedldb_0)
);
mx4 srcz1i_index_0_inst_10
(
	.z /* OUT */ (srcz1i_0[10]),
	.a0 /* IN */ (sz1_0[10]),
	.a1 /* IN */ (local_data0lo[10]),
	.a2 /* IN */ (gpu_dinhi[10]),
	.a3 /* IN */ (zero16[10]),
	.s0 /* IN */ (srcz1ld_0),
	.s1 /* IN */ (zedldb_0)
);
mx4 srcz1i_index_0_inst_11
(
	.z /* OUT */ (srcz1i_0[11]),
	.a0 /* IN */ (sz1_0[11]),
	.a1 /* IN */ (local_data0lo[11]),
	.a2 /* IN */ (gpu_dinhi[11]),
	.a3 /* IN */ (zero16[11]),
	.s0 /* IN */ (srcz1ld_0),
	.s1 /* IN */ (zedldb_0)
);
mx4 srcz1i_index_0_inst_12
(
	.z /* OUT */ (srcz1i_0[12]),
	.a0 /* IN */ (sz1_0[12]),
	.a1 /* IN */ (local_data0lo[12]),
	.a2 /* IN */ (gpu_dinhi[12]),
	.a3 /* IN */ (zero16[12]),
	.s0 /* IN */ (srcz1ld_0),
	.s1 /* IN */ (zedldb_0)
);
mx4 srcz1i_index_0_inst_13
(
	.z /* OUT */ (srcz1i_0[13]),
	.a0 /* IN */ (sz1_0[13]),
	.a1 /* IN */ (local_data0lo[13]),
	.a2 /* IN */ (gpu_dinhi[13]),
	.a3 /* IN */ (zero16[13]),
	.s0 /* IN */ (srcz1ld_0),
	.s1 /* IN */ (zedldb_0)
);
mx4 srcz1i_index_0_inst_14
(
	.z /* OUT */ (srcz1i_0[14]),
	.a0 /* IN */ (sz1_0[14]),
	.a1 /* IN */ (local_data0lo[14]),
	.a2 /* IN */ (gpu_dinhi[14]),
	.a3 /* IN */ (zero16[14]),
	.s0 /* IN */ (srcz1ld_0),
	.s1 /* IN */ (zedldb_0)
);
mx4 srcz1i_index_0_inst_15
(
	.z /* OUT */ (srcz1i_0[15]),
	.a0 /* IN */ (sz1_0[15]),
	.a1 /* IN */ (local_data0lo[15]),
	.a2 /* IN */ (gpu_dinhi[15]),
	.a3 /* IN */ (zero16[15]),
	.s0 /* IN */ (srcz1ld_0),
	.s1 /* IN */ (zedldb_0)
);

// DATA.NET (124) - srcz1i[1] : mx4
mx4 srcz1i_index_1_inst_0
(
	.z /* OUT */ (srcz1i_1[0]),
	.a0 /* IN */ (sz1_1[0]),
	.a1 /* IN */ (local_data0hi[0]),
	.a2 /* IN */ (gpu_dinhi[0]),
	.a3 /* IN */ (zero16[0]),
	.s0 /* IN */ (srcz1ld_0),
	.s1 /* IN */ (zedldb_1)
);
mx4 srcz1i_index_1_inst_1
(
	.z /* OUT */ (srcz1i_1[1]),
	.a0 /* IN */ (sz1_1[1]),
	.a1 /* IN */ (local_data0hi[1]),
	.a2 /* IN */ (gpu_dinhi[1]),
	.a3 /* IN */ (zero16[1]),
	.s0 /* IN */ (srcz1ld_0),
	.s1 /* IN */ (zedldb_1)
);
mx4 srcz1i_index_1_inst_2
(
	.z /* OUT */ (srcz1i_1[2]),
	.a0 /* IN */ (sz1_1[2]),
	.a1 /* IN */ (local_data0hi[2]),
	.a2 /* IN */ (gpu_dinhi[2]),
	.a3 /* IN */ (zero16[2]),
	.s0 /* IN */ (srcz1ld_0),
	.s1 /* IN */ (zedldb_1)
);
mx4 srcz1i_index_1_inst_3
(
	.z /* OUT */ (srcz1i_1[3]),
	.a0 /* IN */ (sz1_1[3]),
	.a1 /* IN */ (local_data0hi[3]),
	.a2 /* IN */ (gpu_dinhi[3]),
	.a3 /* IN */ (zero16[3]),
	.s0 /* IN */ (srcz1ld_0),
	.s1 /* IN */ (zedldb_1)
);
mx4 srcz1i_index_1_inst_4
(
	.z /* OUT */ (srcz1i_1[4]),
	.a0 /* IN */ (sz1_1[4]),
	.a1 /* IN */ (local_data0hi[4]),
	.a2 /* IN */ (gpu_dinhi[4]),
	.a3 /* IN */ (zero16[4]),
	.s0 /* IN */ (srcz1ld_0),
	.s1 /* IN */ (zedldb_1)
);
mx4 srcz1i_index_1_inst_5
(
	.z /* OUT */ (srcz1i_1[5]),
	.a0 /* IN */ (sz1_1[5]),
	.a1 /* IN */ (local_data0hi[5]),
	.a2 /* IN */ (gpu_dinhi[5]),
	.a3 /* IN */ (zero16[5]),
	.s0 /* IN */ (srcz1ld_0),
	.s1 /* IN */ (zedldb_1)
);
mx4 srcz1i_index_1_inst_6
(
	.z /* OUT */ (srcz1i_1[6]),
	.a0 /* IN */ (sz1_1[6]),
	.a1 /* IN */ (local_data0hi[6]),
	.a2 /* IN */ (gpu_dinhi[6]),
	.a3 /* IN */ (zero16[6]),
	.s0 /* IN */ (srcz1ld_0),
	.s1 /* IN */ (zedldb_1)
);
mx4 srcz1i_index_1_inst_7
(
	.z /* OUT */ (srcz1i_1[7]),
	.a0 /* IN */ (sz1_1[7]),
	.a1 /* IN */ (local_data0hi[7]),
	.a2 /* IN */ (gpu_dinhi[7]),
	.a3 /* IN */ (zero16[7]),
	.s0 /* IN */ (srcz1ld_0),
	.s1 /* IN */ (zedldb_1)
);
mx4 srcz1i_index_1_inst_8
(
	.z /* OUT */ (srcz1i_1[8]),
	.a0 /* IN */ (sz1_1[8]),
	.a1 /* IN */ (local_data0hi[8]),
	.a2 /* IN */ (gpu_dinhi[8]),
	.a3 /* IN */ (zero16[8]),
	.s0 /* IN */ (srcz1ld_0),
	.s1 /* IN */ (zedldb_1)
);
mx4 srcz1i_index_1_inst_9
(
	.z /* OUT */ (srcz1i_1[9]),
	.a0 /* IN */ (sz1_1[9]),
	.a1 /* IN */ (local_data0hi[9]),
	.a2 /* IN */ (gpu_dinhi[9]),
	.a3 /* IN */ (zero16[9]),
	.s0 /* IN */ (srcz1ld_0),
	.s1 /* IN */ (zedldb_1)
);
mx4 srcz1i_index_1_inst_10
(
	.z /* OUT */ (srcz1i_1[10]),
	.a0 /* IN */ (sz1_1[10]),
	.a1 /* IN */ (local_data0hi[10]),
	.a2 /* IN */ (gpu_dinhi[10]),
	.a3 /* IN */ (zero16[10]),
	.s0 /* IN */ (srcz1ld_0),
	.s1 /* IN */ (zedldb_1)
);
mx4 srcz1i_index_1_inst_11
(
	.z /* OUT */ (srcz1i_1[11]),
	.a0 /* IN */ (sz1_1[11]),
	.a1 /* IN */ (local_data0hi[11]),
	.a2 /* IN */ (gpu_dinhi[11]),
	.a3 /* IN */ (zero16[11]),
	.s0 /* IN */ (srcz1ld_0),
	.s1 /* IN */ (zedldb_1)
);
mx4 srcz1i_index_1_inst_12
(
	.z /* OUT */ (srcz1i_1[12]),
	.a0 /* IN */ (sz1_1[12]),
	.a1 /* IN */ (local_data0hi[12]),
	.a2 /* IN */ (gpu_dinhi[12]),
	.a3 /* IN */ (zero16[12]),
	.s0 /* IN */ (srcz1ld_0),
	.s1 /* IN */ (zedldb_1)
);
mx4 srcz1i_index_1_inst_13
(
	.z /* OUT */ (srcz1i_1[13]),
	.a0 /* IN */ (sz1_1[13]),
	.a1 /* IN */ (local_data0hi[13]),
	.a2 /* IN */ (gpu_dinhi[13]),
	.a3 /* IN */ (zero16[13]),
	.s0 /* IN */ (srcz1ld_0),
	.s1 /* IN */ (zedldb_1)
);
mx4 srcz1i_index_1_inst_14
(
	.z /* OUT */ (srcz1i_1[14]),
	.a0 /* IN */ (sz1_1[14]),
	.a1 /* IN */ (local_data0hi[14]),
	.a2 /* IN */ (gpu_dinhi[14]),
	.a3 /* IN */ (zero16[14]),
	.s0 /* IN */ (srcz1ld_0),
	.s1 /* IN */ (zedldb_1)
);
mx4 srcz1i_index_1_inst_15
(
	.z /* OUT */ (srcz1i_1[15]),
	.a0 /* IN */ (sz1_1[15]),
	.a1 /* IN */ (local_data0hi[15]),
	.a2 /* IN */ (gpu_dinhi[15]),
	.a3 /* IN */ (zero16[15]),
	.s0 /* IN */ (srcz1ld_0),
	.s1 /* IN */ (zedldb_1)
);

// DATA.NET (126) - srcz1i[2] : mx4
mx4 srcz1i_index_2_inst_0
(
	.z /* OUT */ (srcz1i_2[0]),
	.a0 /* IN */ (sz1_2[0]),
	.a1 /* IN */ (local_data1lo[0]),
	.a2 /* IN */ (gpu_dinhi[0]),
	.a3 /* IN */ (zero16[0]),
	.s0 /* IN */ (srcz1ld_1),
	.s1 /* IN */ (zedldb_2)
);
mx4 srcz1i_index_2_inst_1
(
	.z /* OUT */ (srcz1i_2[1]),
	.a0 /* IN */ (sz1_2[1]),
	.a1 /* IN */ (local_data1lo[1]),
	.a2 /* IN */ (gpu_dinhi[1]),
	.a3 /* IN */ (zero16[1]),
	.s0 /* IN */ (srcz1ld_1),
	.s1 /* IN */ (zedldb_2)
);
mx4 srcz1i_index_2_inst_2
(
	.z /* OUT */ (srcz1i_2[2]),
	.a0 /* IN */ (sz1_2[2]),
	.a1 /* IN */ (local_data1lo[2]),
	.a2 /* IN */ (gpu_dinhi[2]),
	.a3 /* IN */ (zero16[2]),
	.s0 /* IN */ (srcz1ld_1),
	.s1 /* IN */ (zedldb_2)
);
mx4 srcz1i_index_2_inst_3
(
	.z /* OUT */ (srcz1i_2[3]),
	.a0 /* IN */ (sz1_2[3]),
	.a1 /* IN */ (local_data1lo[3]),
	.a2 /* IN */ (gpu_dinhi[3]),
	.a3 /* IN */ (zero16[3]),
	.s0 /* IN */ (srcz1ld_1),
	.s1 /* IN */ (zedldb_2)
);
mx4 srcz1i_index_2_inst_4
(
	.z /* OUT */ (srcz1i_2[4]),
	.a0 /* IN */ (sz1_2[4]),
	.a1 /* IN */ (local_data1lo[4]),
	.a2 /* IN */ (gpu_dinhi[4]),
	.a3 /* IN */ (zero16[4]),
	.s0 /* IN */ (srcz1ld_1),
	.s1 /* IN */ (zedldb_2)
);
mx4 srcz1i_index_2_inst_5
(
	.z /* OUT */ (srcz1i_2[5]),
	.a0 /* IN */ (sz1_2[5]),
	.a1 /* IN */ (local_data1lo[5]),
	.a2 /* IN */ (gpu_dinhi[5]),
	.a3 /* IN */ (zero16[5]),
	.s0 /* IN */ (srcz1ld_1),
	.s1 /* IN */ (zedldb_2)
);
mx4 srcz1i_index_2_inst_6
(
	.z /* OUT */ (srcz1i_2[6]),
	.a0 /* IN */ (sz1_2[6]),
	.a1 /* IN */ (local_data1lo[6]),
	.a2 /* IN */ (gpu_dinhi[6]),
	.a3 /* IN */ (zero16[6]),
	.s0 /* IN */ (srcz1ld_1),
	.s1 /* IN */ (zedldb_2)
);
mx4 srcz1i_index_2_inst_7
(
	.z /* OUT */ (srcz1i_2[7]),
	.a0 /* IN */ (sz1_2[7]),
	.a1 /* IN */ (local_data1lo[7]),
	.a2 /* IN */ (gpu_dinhi[7]),
	.a3 /* IN */ (zero16[7]),
	.s0 /* IN */ (srcz1ld_1),
	.s1 /* IN */ (zedldb_2)
);
mx4 srcz1i_index_2_inst_8
(
	.z /* OUT */ (srcz1i_2[8]),
	.a0 /* IN */ (sz1_2[8]),
	.a1 /* IN */ (local_data1lo[8]),
	.a2 /* IN */ (gpu_dinhi[8]),
	.a3 /* IN */ (zero16[8]),
	.s0 /* IN */ (srcz1ld_1),
	.s1 /* IN */ (zedldb_2)
);
mx4 srcz1i_index_2_inst_9
(
	.z /* OUT */ (srcz1i_2[9]),
	.a0 /* IN */ (sz1_2[9]),
	.a1 /* IN */ (local_data1lo[9]),
	.a2 /* IN */ (gpu_dinhi[9]),
	.a3 /* IN */ (zero16[9]),
	.s0 /* IN */ (srcz1ld_1),
	.s1 /* IN */ (zedldb_2)
);
mx4 srcz1i_index_2_inst_10
(
	.z /* OUT */ (srcz1i_2[10]),
	.a0 /* IN */ (sz1_2[10]),
	.a1 /* IN */ (local_data1lo[10]),
	.a2 /* IN */ (gpu_dinhi[10]),
	.a3 /* IN */ (zero16[10]),
	.s0 /* IN */ (srcz1ld_1),
	.s1 /* IN */ (zedldb_2)
);
mx4 srcz1i_index_2_inst_11
(
	.z /* OUT */ (srcz1i_2[11]),
	.a0 /* IN */ (sz1_2[11]),
	.a1 /* IN */ (local_data1lo[11]),
	.a2 /* IN */ (gpu_dinhi[11]),
	.a3 /* IN */ (zero16[11]),
	.s0 /* IN */ (srcz1ld_1),
	.s1 /* IN */ (zedldb_2)
);
mx4 srcz1i_index_2_inst_12
(
	.z /* OUT */ (srcz1i_2[12]),
	.a0 /* IN */ (sz1_2[12]),
	.a1 /* IN */ (local_data1lo[12]),
	.a2 /* IN */ (gpu_dinhi[12]),
	.a3 /* IN */ (zero16[12]),
	.s0 /* IN */ (srcz1ld_1),
	.s1 /* IN */ (zedldb_2)
);
mx4 srcz1i_index_2_inst_13
(
	.z /* OUT */ (srcz1i_2[13]),
	.a0 /* IN */ (sz1_2[13]),
	.a1 /* IN */ (local_data1lo[13]),
	.a2 /* IN */ (gpu_dinhi[13]),
	.a3 /* IN */ (zero16[13]),
	.s0 /* IN */ (srcz1ld_1),
	.s1 /* IN */ (zedldb_2)
);
mx4 srcz1i_index_2_inst_14
(
	.z /* OUT */ (srcz1i_2[14]),
	.a0 /* IN */ (sz1_2[14]),
	.a1 /* IN */ (local_data1lo[14]),
	.a2 /* IN */ (gpu_dinhi[14]),
	.a3 /* IN */ (zero16[14]),
	.s0 /* IN */ (srcz1ld_1),
	.s1 /* IN */ (zedldb_2)
);
mx4 srcz1i_index_2_inst_15
(
	.z /* OUT */ (srcz1i_2[15]),
	.a0 /* IN */ (sz1_2[15]),
	.a1 /* IN */ (local_data1lo[15]),
	.a2 /* IN */ (gpu_dinhi[15]),
	.a3 /* IN */ (zero16[15]),
	.s0 /* IN */ (srcz1ld_1),
	.s1 /* IN */ (zedldb_2)
);

// DATA.NET (128) - srcz1i[3] : mx4
mx4 srcz1i_index_3_inst_0
(
	.z /* OUT */ (srcz1i_3[0]),
	.a0 /* IN */ (sz1_3[0]),
	.a1 /* IN */ (local_data1hi[0]),
	.a2 /* IN */ (gpu_dinhi[0]),
	.a3 /* IN */ (zero16[0]),
	.s0 /* IN */ (srcz1ld_1),
	.s1 /* IN */ (zedldb_3)
);
mx4 srcz1i_index_3_inst_1
(
	.z /* OUT */ (srcz1i_3[1]),
	.a0 /* IN */ (sz1_3[1]),
	.a1 /* IN */ (local_data1hi[1]),
	.a2 /* IN */ (gpu_dinhi[1]),
	.a3 /* IN */ (zero16[1]),
	.s0 /* IN */ (srcz1ld_1),
	.s1 /* IN */ (zedldb_3)
);
mx4 srcz1i_index_3_inst_2
(
	.z /* OUT */ (srcz1i_3[2]),
	.a0 /* IN */ (sz1_3[2]),
	.a1 /* IN */ (local_data1hi[2]),
	.a2 /* IN */ (gpu_dinhi[2]),
	.a3 /* IN */ (zero16[2]),
	.s0 /* IN */ (srcz1ld_1),
	.s1 /* IN */ (zedldb_3)
);
mx4 srcz1i_index_3_inst_3
(
	.z /* OUT */ (srcz1i_3[3]),
	.a0 /* IN */ (sz1_3[3]),
	.a1 /* IN */ (local_data1hi[3]),
	.a2 /* IN */ (gpu_dinhi[3]),
	.a3 /* IN */ (zero16[3]),
	.s0 /* IN */ (srcz1ld_1),
	.s1 /* IN */ (zedldb_3)
);
mx4 srcz1i_index_3_inst_4
(
	.z /* OUT */ (srcz1i_3[4]),
	.a0 /* IN */ (sz1_3[4]),
	.a1 /* IN */ (local_data1hi[4]),
	.a2 /* IN */ (gpu_dinhi[4]),
	.a3 /* IN */ (zero16[4]),
	.s0 /* IN */ (srcz1ld_1),
	.s1 /* IN */ (zedldb_3)
);
mx4 srcz1i_index_3_inst_5
(
	.z /* OUT */ (srcz1i_3[5]),
	.a0 /* IN */ (sz1_3[5]),
	.a1 /* IN */ (local_data1hi[5]),
	.a2 /* IN */ (gpu_dinhi[5]),
	.a3 /* IN */ (zero16[5]),
	.s0 /* IN */ (srcz1ld_1),
	.s1 /* IN */ (zedldb_3)
);
mx4 srcz1i_index_3_inst_6
(
	.z /* OUT */ (srcz1i_3[6]),
	.a0 /* IN */ (sz1_3[6]),
	.a1 /* IN */ (local_data1hi[6]),
	.a2 /* IN */ (gpu_dinhi[6]),
	.a3 /* IN */ (zero16[6]),
	.s0 /* IN */ (srcz1ld_1),
	.s1 /* IN */ (zedldb_3)
);
mx4 srcz1i_index_3_inst_7
(
	.z /* OUT */ (srcz1i_3[7]),
	.a0 /* IN */ (sz1_3[7]),
	.a1 /* IN */ (local_data1hi[7]),
	.a2 /* IN */ (gpu_dinhi[7]),
	.a3 /* IN */ (zero16[7]),
	.s0 /* IN */ (srcz1ld_1),
	.s1 /* IN */ (zedldb_3)
);
mx4 srcz1i_index_3_inst_8
(
	.z /* OUT */ (srcz1i_3[8]),
	.a0 /* IN */ (sz1_3[8]),
	.a1 /* IN */ (local_data1hi[8]),
	.a2 /* IN */ (gpu_dinhi[8]),
	.a3 /* IN */ (zero16[8]),
	.s0 /* IN */ (srcz1ld_1),
	.s1 /* IN */ (zedldb_3)
);
mx4 srcz1i_index_3_inst_9
(
	.z /* OUT */ (srcz1i_3[9]),
	.a0 /* IN */ (sz1_3[9]),
	.a1 /* IN */ (local_data1hi[9]),
	.a2 /* IN */ (gpu_dinhi[9]),
	.a3 /* IN */ (zero16[9]),
	.s0 /* IN */ (srcz1ld_1),
	.s1 /* IN */ (zedldb_3)
);
mx4 srcz1i_index_3_inst_10
(
	.z /* OUT */ (srcz1i_3[10]),
	.a0 /* IN */ (sz1_3[10]),
	.a1 /* IN */ (local_data1hi[10]),
	.a2 /* IN */ (gpu_dinhi[10]),
	.a3 /* IN */ (zero16[10]),
	.s0 /* IN */ (srcz1ld_1),
	.s1 /* IN */ (zedldb_3)
);
mx4 srcz1i_index_3_inst_11
(
	.z /* OUT */ (srcz1i_3[11]),
	.a0 /* IN */ (sz1_3[11]),
	.a1 /* IN */ (local_data1hi[11]),
	.a2 /* IN */ (gpu_dinhi[11]),
	.a3 /* IN */ (zero16[11]),
	.s0 /* IN */ (srcz1ld_1),
	.s1 /* IN */ (zedldb_3)
);
mx4 srcz1i_index_3_inst_12
(
	.z /* OUT */ (srcz1i_3[12]),
	.a0 /* IN */ (sz1_3[12]),
	.a1 /* IN */ (local_data1hi[12]),
	.a2 /* IN */ (gpu_dinhi[12]),
	.a3 /* IN */ (zero16[12]),
	.s0 /* IN */ (srcz1ld_1),
	.s1 /* IN */ (zedldb_3)
);
mx4 srcz1i_index_3_inst_13
(
	.z /* OUT */ (srcz1i_3[13]),
	.a0 /* IN */ (sz1_3[13]),
	.a1 /* IN */ (local_data1hi[13]),
	.a2 /* IN */ (gpu_dinhi[13]),
	.a3 /* IN */ (zero16[13]),
	.s0 /* IN */ (srcz1ld_1),
	.s1 /* IN */ (zedldb_3)
);
mx4 srcz1i_index_3_inst_14
(
	.z /* OUT */ (srcz1i_3[14]),
	.a0 /* IN */ (sz1_3[14]),
	.a1 /* IN */ (local_data1hi[14]),
	.a2 /* IN */ (gpu_dinhi[14]),
	.a3 /* IN */ (zero16[14]),
	.s0 /* IN */ (srcz1ld_1),
	.s1 /* IN */ (zedldb_3)
);
mx4 srcz1i_index_3_inst_15
(
	.z /* OUT */ (srcz1i_3[15]),
	.a0 /* IN */ (sz1_3[15]),
	.a1 /* IN */ (local_data1hi[15]),
	.a2 /* IN */ (gpu_dinhi[15]),
	.a3 /* IN */ (zero16[15]),
	.s0 /* IN */ (srcz1ld_1),
	.s1 /* IN */ (zedldb_3)
);

// DATA.NET (131) - sz1[0-3] : fd1qp
fd1q sz1_from_0_to_3_inst_0
(
	.q /* OUT */ (sz1_0[0]),
	.d /* IN */ (srcz1i_0[0]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_1
(
	.q /* OUT */ (sz1_0[1]),
	.d /* IN */ (srcz1i_0[1]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_2
(
	.q /* OUT */ (sz1_0[2]),
	.d /* IN */ (srcz1i_0[2]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_3
(
	.q /* OUT */ (sz1_0[3]),
	.d /* IN */ (srcz1i_0[3]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_4
(
	.q /* OUT */ (sz1_0[4]),
	.d /* IN */ (srcz1i_0[4]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_5
(
	.q /* OUT */ (sz1_0[5]),
	.d /* IN */ (srcz1i_0[5]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_6
(
	.q /* OUT */ (sz1_0[6]),
	.d /* IN */ (srcz1i_0[6]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_7
(
	.q /* OUT */ (sz1_0[7]),
	.d /* IN */ (srcz1i_0[7]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_8
(
	.q /* OUT */ (sz1_0[8]),
	.d /* IN */ (srcz1i_0[8]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_9
(
	.q /* OUT */ (sz1_0[9]),
	.d /* IN */ (srcz1i_0[9]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_10
(
	.q /* OUT */ (sz1_0[10]),
	.d /* IN */ (srcz1i_0[10]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_11
(
	.q /* OUT */ (sz1_0[11]),
	.d /* IN */ (srcz1i_0[11]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_12
(
	.q /* OUT */ (sz1_0[12]),
	.d /* IN */ (srcz1i_0[12]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_13
(
	.q /* OUT */ (sz1_0[13]),
	.d /* IN */ (srcz1i_0[13]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_14
(
	.q /* OUT */ (sz1_0[14]),
	.d /* IN */ (srcz1i_0[14]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_15
(
	.q /* OUT */ (sz1_0[15]),
	.d /* IN */ (srcz1i_0[15]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_16
(
	.q /* OUT */ (sz1_1[0]),
	.d /* IN */ (srcz1i_1[0]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_17
(
	.q /* OUT */ (sz1_1[1]),
	.d /* IN */ (srcz1i_1[1]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_18
(
	.q /* OUT */ (sz1_1[2]),
	.d /* IN */ (srcz1i_1[2]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_19
(
	.q /* OUT */ (sz1_1[3]),
	.d /* IN */ (srcz1i_1[3]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_20
(
	.q /* OUT */ (sz1_1[4]),
	.d /* IN */ (srcz1i_1[4]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_21
(
	.q /* OUT */ (sz1_1[5]),
	.d /* IN */ (srcz1i_1[5]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_22
(
	.q /* OUT */ (sz1_1[6]),
	.d /* IN */ (srcz1i_1[6]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_23
(
	.q /* OUT */ (sz1_1[7]),
	.d /* IN */ (srcz1i_1[7]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_24
(
	.q /* OUT */ (sz1_1[8]),
	.d /* IN */ (srcz1i_1[8]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_25
(
	.q /* OUT */ (sz1_1[9]),
	.d /* IN */ (srcz1i_1[9]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_26
(
	.q /* OUT */ (sz1_1[10]),
	.d /* IN */ (srcz1i_1[10]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_27
(
	.q /* OUT */ (sz1_1[11]),
	.d /* IN */ (srcz1i_1[11]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_28
(
	.q /* OUT */ (sz1_1[12]),
	.d /* IN */ (srcz1i_1[12]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_29
(
	.q /* OUT */ (sz1_1[13]),
	.d /* IN */ (srcz1i_1[13]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_30
(
	.q /* OUT */ (sz1_1[14]),
	.d /* IN */ (srcz1i_1[14]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_31
(
	.q /* OUT */ (sz1_1[15]),
	.d /* IN */ (srcz1i_1[15]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_32
(
	.q /* OUT */ (sz1_2[0]),
	.d /* IN */ (srcz1i_2[0]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_33
(
	.q /* OUT */ (sz1_2[1]),
	.d /* IN */ (srcz1i_2[1]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_34
(
	.q /* OUT */ (sz1_2[2]),
	.d /* IN */ (srcz1i_2[2]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_35
(
	.q /* OUT */ (sz1_2[3]),
	.d /* IN */ (srcz1i_2[3]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_36
(
	.q /* OUT */ (sz1_2[4]),
	.d /* IN */ (srcz1i_2[4]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_37
(
	.q /* OUT */ (sz1_2[5]),
	.d /* IN */ (srcz1i_2[5]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_38
(
	.q /* OUT */ (sz1_2[6]),
	.d /* IN */ (srcz1i_2[6]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_39
(
	.q /* OUT */ (sz1_2[7]),
	.d /* IN */ (srcz1i_2[7]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_40
(
	.q /* OUT */ (sz1_2[8]),
	.d /* IN */ (srcz1i_2[8]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_41
(
	.q /* OUT */ (sz1_2[9]),
	.d /* IN */ (srcz1i_2[9]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_42
(
	.q /* OUT */ (sz1_2[10]),
	.d /* IN */ (srcz1i_2[10]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_43
(
	.q /* OUT */ (sz1_2[11]),
	.d /* IN */ (srcz1i_2[11]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_44
(
	.q /* OUT */ (sz1_2[12]),
	.d /* IN */ (srcz1i_2[12]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_45
(
	.q /* OUT */ (sz1_2[13]),
	.d /* IN */ (srcz1i_2[13]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_46
(
	.q /* OUT */ (sz1_2[14]),
	.d /* IN */ (srcz1i_2[14]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_47
(
	.q /* OUT */ (sz1_2[15]),
	.d /* IN */ (srcz1i_2[15]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_48
(
	.q /* OUT */ (sz1_3[0]),
	.d /* IN */ (srcz1i_3[0]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_49
(
	.q /* OUT */ (sz1_3[1]),
	.d /* IN */ (srcz1i_3[1]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_50
(
	.q /* OUT */ (sz1_3[2]),
	.d /* IN */ (srcz1i_3[2]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_51
(
	.q /* OUT */ (sz1_3[3]),
	.d /* IN */ (srcz1i_3[3]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_52
(
	.q /* OUT */ (sz1_3[4]),
	.d /* IN */ (srcz1i_3[4]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_53
(
	.q /* OUT */ (sz1_3[5]),
	.d /* IN */ (srcz1i_3[5]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_54
(
	.q /* OUT */ (sz1_3[6]),
	.d /* IN */ (srcz1i_3[6]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_55
(
	.q /* OUT */ (sz1_3[7]),
	.d /* IN */ (srcz1i_3[7]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_56
(
	.q /* OUT */ (sz1_3[8]),
	.d /* IN */ (srcz1i_3[8]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_57
(
	.q /* OUT */ (sz1_3[9]),
	.d /* IN */ (srcz1i_3[9]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_58
(
	.q /* OUT */ (sz1_3[10]),
	.d /* IN */ (srcz1i_3[10]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_59
(
	.q /* OUT */ (sz1_3[11]),
	.d /* IN */ (srcz1i_3[11]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_60
(
	.q /* OUT */ (sz1_3[12]),
	.d /* IN */ (srcz1i_3[12]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_61
(
	.q /* OUT */ (sz1_3[13]),
	.d /* IN */ (srcz1i_3[13]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_62
(
	.q /* OUT */ (sz1_3[14]),
	.d /* IN */ (srcz1i_3[14]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz1_from_0_to_3_inst_63
(
	.q /* OUT */ (sz1_3[15]),
	.d /* IN */ (srcz1i_3[15]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DATA.NET (132) - srcz1[0] : join
assign srcz1_0[0] = sz1_0[0];
assign srcz1_0[1] = sz1_0[1];
assign srcz1_0[2] = sz1_0[2];
assign srcz1_0[3] = sz1_0[3];
assign srcz1_0[4] = sz1_0[4];
assign srcz1_0[5] = sz1_0[5];
assign srcz1_0[6] = sz1_0[6];
assign srcz1_0[7] = sz1_0[7];
assign srcz1_0[8] = sz1_0[8];
assign srcz1_0[9] = sz1_0[9];
assign srcz1_0[10] = sz1_0[10];
assign srcz1_0[11] = sz1_0[11];
assign srcz1_0[12] = sz1_0[12];
assign srcz1_0[13] = sz1_0[13];
assign srcz1_0[14] = sz1_0[14];
assign srcz1_0[15] = sz1_0[15];
assign srcz1_0[16] = sz1_1[0];
assign srcz1_0[17] = sz1_1[1];
assign srcz1_0[18] = sz1_1[2];
assign srcz1_0[19] = sz1_1[3];
assign srcz1_0[20] = sz1_1[4];
assign srcz1_0[21] = sz1_1[5];
assign srcz1_0[22] = sz1_1[6];
assign srcz1_0[23] = sz1_1[7];
assign srcz1_0[24] = sz1_1[8];
assign srcz1_0[25] = sz1_1[9];
assign srcz1_0[26] = sz1_1[10];
assign srcz1_0[27] = sz1_1[11];
assign srcz1_0[28] = sz1_1[12];
assign srcz1_0[29] = sz1_1[13];
assign srcz1_0[30] = sz1_1[14];
assign srcz1_0[31] = sz1_1[15];

// DATA.NET (133) - srcz1[1] : join
assign srcz1_1[0] = sz1_2[0];
assign srcz1_1[1] = sz1_2[1];
assign srcz1_1[2] = sz1_2[2];
assign srcz1_1[3] = sz1_2[3];
assign srcz1_1[4] = sz1_2[4];
assign srcz1_1[5] = sz1_2[5];
assign srcz1_1[6] = sz1_2[6];
assign srcz1_1[7] = sz1_2[7];
assign srcz1_1[8] = sz1_2[8];
assign srcz1_1[9] = sz1_2[9];
assign srcz1_1[10] = sz1_2[10];
assign srcz1_1[11] = sz1_2[11];
assign srcz1_1[12] = sz1_2[12];
assign srcz1_1[13] = sz1_2[13];
assign srcz1_1[14] = sz1_2[14];
assign srcz1_1[15] = sz1_2[15];
assign srcz1_1[16] = sz1_3[0];
assign srcz1_1[17] = sz1_3[1];
assign srcz1_1[18] = sz1_3[2];
assign srcz1_1[19] = sz1_3[3];
assign srcz1_1[20] = sz1_3[4];
assign srcz1_1[21] = sz1_3[5];
assign srcz1_1[22] = sz1_3[6];
assign srcz1_1[23] = sz1_3[7];
assign srcz1_1[24] = sz1_3[8];
assign srcz1_1[25] = sz1_3[9];
assign srcz1_1[26] = sz1_3[10];
assign srcz1_1[27] = sz1_3[11];
assign srcz1_1[28] = sz1_3[12];
assign srcz1_1[29] = sz1_3[13];
assign srcz1_1[30] = sz1_3[14];
assign srcz1_1[31] = sz1_3[15];

// DATA.NET (142) - sz20sel0 : or2_h
assign sz20sel_0 = srczread | zedldb_0;

// DATA.NET (143) - sz20sel1 : or3_h
assign sz20sel_1 = srcz2ld_0 | srcz2add | zedldb_0;

// DATA.NET (145) - srcz2i[0] : mx4
mx4 srcz2i_index_0_inst_0
(
	.z /* OUT */ (srcz2i_0[0]),
	.a0 /* IN */ (sz2_0[0]),
	.a1 /* IN */ (sz1_0[0]),
	.a2 /* IN */ (local_data0lo[0]),
	.a3 /* IN */ (gpu_dinlo[0]),
	.s0 /* IN */ (sz20sel_0),
	.s1 /* IN */ (sz20sel_1)
);
mx4 srcz2i_index_0_inst_1
(
	.z /* OUT */ (srcz2i_0[1]),
	.a0 /* IN */ (sz2_0[1]),
	.a1 /* IN */ (sz1_0[1]),
	.a2 /* IN */ (local_data0lo[1]),
	.a3 /* IN */ (gpu_dinlo[1]),
	.s0 /* IN */ (sz20sel_0),
	.s1 /* IN */ (sz20sel_1)
);
mx4 srcz2i_index_0_inst_2
(
	.z /* OUT */ (srcz2i_0[2]),
	.a0 /* IN */ (sz2_0[2]),
	.a1 /* IN */ (sz1_0[2]),
	.a2 /* IN */ (local_data0lo[2]),
	.a3 /* IN */ (gpu_dinlo[2]),
	.s0 /* IN */ (sz20sel_0),
	.s1 /* IN */ (sz20sel_1)
);
mx4 srcz2i_index_0_inst_3
(
	.z /* OUT */ (srcz2i_0[3]),
	.a0 /* IN */ (sz2_0[3]),
	.a1 /* IN */ (sz1_0[3]),
	.a2 /* IN */ (local_data0lo[3]),
	.a3 /* IN */ (gpu_dinlo[3]),
	.s0 /* IN */ (sz20sel_0),
	.s1 /* IN */ (sz20sel_1)
);
mx4 srcz2i_index_0_inst_4
(
	.z /* OUT */ (srcz2i_0[4]),
	.a0 /* IN */ (sz2_0[4]),
	.a1 /* IN */ (sz1_0[4]),
	.a2 /* IN */ (local_data0lo[4]),
	.a3 /* IN */ (gpu_dinlo[4]),
	.s0 /* IN */ (sz20sel_0),
	.s1 /* IN */ (sz20sel_1)
);
mx4 srcz2i_index_0_inst_5
(
	.z /* OUT */ (srcz2i_0[5]),
	.a0 /* IN */ (sz2_0[5]),
	.a1 /* IN */ (sz1_0[5]),
	.a2 /* IN */ (local_data0lo[5]),
	.a3 /* IN */ (gpu_dinlo[5]),
	.s0 /* IN */ (sz20sel_0),
	.s1 /* IN */ (sz20sel_1)
);
mx4 srcz2i_index_0_inst_6
(
	.z /* OUT */ (srcz2i_0[6]),
	.a0 /* IN */ (sz2_0[6]),
	.a1 /* IN */ (sz1_0[6]),
	.a2 /* IN */ (local_data0lo[6]),
	.a3 /* IN */ (gpu_dinlo[6]),
	.s0 /* IN */ (sz20sel_0),
	.s1 /* IN */ (sz20sel_1)
);
mx4 srcz2i_index_0_inst_7
(
	.z /* OUT */ (srcz2i_0[7]),
	.a0 /* IN */ (sz2_0[7]),
	.a1 /* IN */ (sz1_0[7]),
	.a2 /* IN */ (local_data0lo[7]),
	.a3 /* IN */ (gpu_dinlo[7]),
	.s0 /* IN */ (sz20sel_0),
	.s1 /* IN */ (sz20sel_1)
);
mx4 srcz2i_index_0_inst_8
(
	.z /* OUT */ (srcz2i_0[8]),
	.a0 /* IN */ (sz2_0[8]),
	.a1 /* IN */ (sz1_0[8]),
	.a2 /* IN */ (local_data0lo[8]),
	.a3 /* IN */ (gpu_dinlo[8]),
	.s0 /* IN */ (sz20sel_0),
	.s1 /* IN */ (sz20sel_1)
);
mx4 srcz2i_index_0_inst_9
(
	.z /* OUT */ (srcz2i_0[9]),
	.a0 /* IN */ (sz2_0[9]),
	.a1 /* IN */ (sz1_0[9]),
	.a2 /* IN */ (local_data0lo[9]),
	.a3 /* IN */ (gpu_dinlo[9]),
	.s0 /* IN */ (sz20sel_0),
	.s1 /* IN */ (sz20sel_1)
);
mx4 srcz2i_index_0_inst_10
(
	.z /* OUT */ (srcz2i_0[10]),
	.a0 /* IN */ (sz2_0[10]),
	.a1 /* IN */ (sz1_0[10]),
	.a2 /* IN */ (local_data0lo[10]),
	.a3 /* IN */ (gpu_dinlo[10]),
	.s0 /* IN */ (sz20sel_0),
	.s1 /* IN */ (sz20sel_1)
);
mx4 srcz2i_index_0_inst_11
(
	.z /* OUT */ (srcz2i_0[11]),
	.a0 /* IN */ (sz2_0[11]),
	.a1 /* IN */ (sz1_0[11]),
	.a2 /* IN */ (local_data0lo[11]),
	.a3 /* IN */ (gpu_dinlo[11]),
	.s0 /* IN */ (sz20sel_0),
	.s1 /* IN */ (sz20sel_1)
);
mx4 srcz2i_index_0_inst_12
(
	.z /* OUT */ (srcz2i_0[12]),
	.a0 /* IN */ (sz2_0[12]),
	.a1 /* IN */ (sz1_0[12]),
	.a2 /* IN */ (local_data0lo[12]),
	.a3 /* IN */ (gpu_dinlo[12]),
	.s0 /* IN */ (sz20sel_0),
	.s1 /* IN */ (sz20sel_1)
);
mx4 srcz2i_index_0_inst_13
(
	.z /* OUT */ (srcz2i_0[13]),
	.a0 /* IN */ (sz2_0[13]),
	.a1 /* IN */ (sz1_0[13]),
	.a2 /* IN */ (local_data0lo[13]),
	.a3 /* IN */ (gpu_dinlo[13]),
	.s0 /* IN */ (sz20sel_0),
	.s1 /* IN */ (sz20sel_1)
);
mx4 srcz2i_index_0_inst_14
(
	.z /* OUT */ (srcz2i_0[14]),
	.a0 /* IN */ (sz2_0[14]),
	.a1 /* IN */ (sz1_0[14]),
	.a2 /* IN */ (local_data0lo[14]),
	.a3 /* IN */ (gpu_dinlo[14]),
	.s0 /* IN */ (sz20sel_0),
	.s1 /* IN */ (sz20sel_1)
);
mx4 srcz2i_index_0_inst_15
(
	.z /* OUT */ (srcz2i_0[15]),
	.a0 /* IN */ (sz2_0[15]),
	.a1 /* IN */ (sz1_0[15]),
	.a2 /* IN */ (local_data0lo[15]),
	.a3 /* IN */ (gpu_dinlo[15]),
	.s0 /* IN */ (sz20sel_0),
	.s1 /* IN */ (sz20sel_1)
);

// DATA.NET (147) - sz21sel0 : or2_h
assign sz21sel_0 = srczread | zedldb_1;

// DATA.NET (148) - sz21sel1 : or3_h
assign sz21sel_1 = srcz2ld_0 | srcz2add | zedldb_1;

// DATA.NET (150) - srcz2i[1] : mx4
mx4 srcz2i_index_1_inst_0
(
	.z /* OUT */ (srcz2i_1[0]),
	.a0 /* IN */ (sz2_1[0]),
	.a1 /* IN */ (sz1_1[0]),
	.a2 /* IN */ (local_data0hi[0]),
	.a3 /* IN */ (gpu_dinlo[0]),
	.s0 /* IN */ (sz21sel_0),
	.s1 /* IN */ (sz21sel_1)
);
mx4 srcz2i_index_1_inst_1
(
	.z /* OUT */ (srcz2i_1[1]),
	.a0 /* IN */ (sz2_1[1]),
	.a1 /* IN */ (sz1_1[1]),
	.a2 /* IN */ (local_data0hi[1]),
	.a3 /* IN */ (gpu_dinlo[1]),
	.s0 /* IN */ (sz21sel_0),
	.s1 /* IN */ (sz21sel_1)
);
mx4 srcz2i_index_1_inst_2
(
	.z /* OUT */ (srcz2i_1[2]),
	.a0 /* IN */ (sz2_1[2]),
	.a1 /* IN */ (sz1_1[2]),
	.a2 /* IN */ (local_data0hi[2]),
	.a3 /* IN */ (gpu_dinlo[2]),
	.s0 /* IN */ (sz21sel_0),
	.s1 /* IN */ (sz21sel_1)
);
mx4 srcz2i_index_1_inst_3
(
	.z /* OUT */ (srcz2i_1[3]),
	.a0 /* IN */ (sz2_1[3]),
	.a1 /* IN */ (sz1_1[3]),
	.a2 /* IN */ (local_data0hi[3]),
	.a3 /* IN */ (gpu_dinlo[3]),
	.s0 /* IN */ (sz21sel_0),
	.s1 /* IN */ (sz21sel_1)
);
mx4 srcz2i_index_1_inst_4
(
	.z /* OUT */ (srcz2i_1[4]),
	.a0 /* IN */ (sz2_1[4]),
	.a1 /* IN */ (sz1_1[4]),
	.a2 /* IN */ (local_data0hi[4]),
	.a3 /* IN */ (gpu_dinlo[4]),
	.s0 /* IN */ (sz21sel_0),
	.s1 /* IN */ (sz21sel_1)
);
mx4 srcz2i_index_1_inst_5
(
	.z /* OUT */ (srcz2i_1[5]),
	.a0 /* IN */ (sz2_1[5]),
	.a1 /* IN */ (sz1_1[5]),
	.a2 /* IN */ (local_data0hi[5]),
	.a3 /* IN */ (gpu_dinlo[5]),
	.s0 /* IN */ (sz21sel_0),
	.s1 /* IN */ (sz21sel_1)
);
mx4 srcz2i_index_1_inst_6
(
	.z /* OUT */ (srcz2i_1[6]),
	.a0 /* IN */ (sz2_1[6]),
	.a1 /* IN */ (sz1_1[6]),
	.a2 /* IN */ (local_data0hi[6]),
	.a3 /* IN */ (gpu_dinlo[6]),
	.s0 /* IN */ (sz21sel_0),
	.s1 /* IN */ (sz21sel_1)
);
mx4 srcz2i_index_1_inst_7
(
	.z /* OUT */ (srcz2i_1[7]),
	.a0 /* IN */ (sz2_1[7]),
	.a1 /* IN */ (sz1_1[7]),
	.a2 /* IN */ (local_data0hi[7]),
	.a3 /* IN */ (gpu_dinlo[7]),
	.s0 /* IN */ (sz21sel_0),
	.s1 /* IN */ (sz21sel_1)
);
mx4 srcz2i_index_1_inst_8
(
	.z /* OUT */ (srcz2i_1[8]),
	.a0 /* IN */ (sz2_1[8]),
	.a1 /* IN */ (sz1_1[8]),
	.a2 /* IN */ (local_data0hi[8]),
	.a3 /* IN */ (gpu_dinlo[8]),
	.s0 /* IN */ (sz21sel_0),
	.s1 /* IN */ (sz21sel_1)
);
mx4 srcz2i_index_1_inst_9
(
	.z /* OUT */ (srcz2i_1[9]),
	.a0 /* IN */ (sz2_1[9]),
	.a1 /* IN */ (sz1_1[9]),
	.a2 /* IN */ (local_data0hi[9]),
	.a3 /* IN */ (gpu_dinlo[9]),
	.s0 /* IN */ (sz21sel_0),
	.s1 /* IN */ (sz21sel_1)
);
mx4 srcz2i_index_1_inst_10
(
	.z /* OUT */ (srcz2i_1[10]),
	.a0 /* IN */ (sz2_1[10]),
	.a1 /* IN */ (sz1_1[10]),
	.a2 /* IN */ (local_data0hi[10]),
	.a3 /* IN */ (gpu_dinlo[10]),
	.s0 /* IN */ (sz21sel_0),
	.s1 /* IN */ (sz21sel_1)
);
mx4 srcz2i_index_1_inst_11
(
	.z /* OUT */ (srcz2i_1[11]),
	.a0 /* IN */ (sz2_1[11]),
	.a1 /* IN */ (sz1_1[11]),
	.a2 /* IN */ (local_data0hi[11]),
	.a3 /* IN */ (gpu_dinlo[11]),
	.s0 /* IN */ (sz21sel_0),
	.s1 /* IN */ (sz21sel_1)
);
mx4 srcz2i_index_1_inst_12
(
	.z /* OUT */ (srcz2i_1[12]),
	.a0 /* IN */ (sz2_1[12]),
	.a1 /* IN */ (sz1_1[12]),
	.a2 /* IN */ (local_data0hi[12]),
	.a3 /* IN */ (gpu_dinlo[12]),
	.s0 /* IN */ (sz21sel_0),
	.s1 /* IN */ (sz21sel_1)
);
mx4 srcz2i_index_1_inst_13
(
	.z /* OUT */ (srcz2i_1[13]),
	.a0 /* IN */ (sz2_1[13]),
	.a1 /* IN */ (sz1_1[13]),
	.a2 /* IN */ (local_data0hi[13]),
	.a3 /* IN */ (gpu_dinlo[13]),
	.s0 /* IN */ (sz21sel_0),
	.s1 /* IN */ (sz21sel_1)
);
mx4 srcz2i_index_1_inst_14
(
	.z /* OUT */ (srcz2i_1[14]),
	.a0 /* IN */ (sz2_1[14]),
	.a1 /* IN */ (sz1_1[14]),
	.a2 /* IN */ (local_data0hi[14]),
	.a3 /* IN */ (gpu_dinlo[14]),
	.s0 /* IN */ (sz21sel_0),
	.s1 /* IN */ (sz21sel_1)
);
mx4 srcz2i_index_1_inst_15
(
	.z /* OUT */ (srcz2i_1[15]),
	.a0 /* IN */ (sz2_1[15]),
	.a1 /* IN */ (sz1_1[15]),
	.a2 /* IN */ (local_data0hi[15]),
	.a3 /* IN */ (gpu_dinlo[15]),
	.s0 /* IN */ (sz21sel_0),
	.s1 /* IN */ (sz21sel_1)
);

// DATA.NET (152) - sz22sel0 : or2_h
assign sz22sel_0 = srczread | zedldb_2;

// DATA.NET (153) - sz22sel1 : or3_h
assign sz22sel_1 = srcz2ld_1 | srcz2add | zedldb_2;

// DATA.NET (155) - srcz2i[2] : mx4
mx4 srcz2i_index_2_inst_0
(
	.z /* OUT */ (srcz2i_2[0]),
	.a0 /* IN */ (sz2_2[0]),
	.a1 /* IN */ (sz1_2[0]),
	.a2 /* IN */ (local_data1lo[0]),
	.a3 /* IN */ (gpu_dinlo[0]),
	.s0 /* IN */ (sz22sel_0),
	.s1 /* IN */ (sz22sel_1)
);
mx4 srcz2i_index_2_inst_1
(
	.z /* OUT */ (srcz2i_2[1]),
	.a0 /* IN */ (sz2_2[1]),
	.a1 /* IN */ (sz1_2[1]),
	.a2 /* IN */ (local_data1lo[1]),
	.a3 /* IN */ (gpu_dinlo[1]),
	.s0 /* IN */ (sz22sel_0),
	.s1 /* IN */ (sz22sel_1)
);
mx4 srcz2i_index_2_inst_2
(
	.z /* OUT */ (srcz2i_2[2]),
	.a0 /* IN */ (sz2_2[2]),
	.a1 /* IN */ (sz1_2[2]),
	.a2 /* IN */ (local_data1lo[2]),
	.a3 /* IN */ (gpu_dinlo[2]),
	.s0 /* IN */ (sz22sel_0),
	.s1 /* IN */ (sz22sel_1)
);
mx4 srcz2i_index_2_inst_3
(
	.z /* OUT */ (srcz2i_2[3]),
	.a0 /* IN */ (sz2_2[3]),
	.a1 /* IN */ (sz1_2[3]),
	.a2 /* IN */ (local_data1lo[3]),
	.a3 /* IN */ (gpu_dinlo[3]),
	.s0 /* IN */ (sz22sel_0),
	.s1 /* IN */ (sz22sel_1)
);
mx4 srcz2i_index_2_inst_4
(
	.z /* OUT */ (srcz2i_2[4]),
	.a0 /* IN */ (sz2_2[4]),
	.a1 /* IN */ (sz1_2[4]),
	.a2 /* IN */ (local_data1lo[4]),
	.a3 /* IN */ (gpu_dinlo[4]),
	.s0 /* IN */ (sz22sel_0),
	.s1 /* IN */ (sz22sel_1)
);
mx4 srcz2i_index_2_inst_5
(
	.z /* OUT */ (srcz2i_2[5]),
	.a0 /* IN */ (sz2_2[5]),
	.a1 /* IN */ (sz1_2[5]),
	.a2 /* IN */ (local_data1lo[5]),
	.a3 /* IN */ (gpu_dinlo[5]),
	.s0 /* IN */ (sz22sel_0),
	.s1 /* IN */ (sz22sel_1)
);
mx4 srcz2i_index_2_inst_6
(
	.z /* OUT */ (srcz2i_2[6]),
	.a0 /* IN */ (sz2_2[6]),
	.a1 /* IN */ (sz1_2[6]),
	.a2 /* IN */ (local_data1lo[6]),
	.a3 /* IN */ (gpu_dinlo[6]),
	.s0 /* IN */ (sz22sel_0),
	.s1 /* IN */ (sz22sel_1)
);
mx4 srcz2i_index_2_inst_7
(
	.z /* OUT */ (srcz2i_2[7]),
	.a0 /* IN */ (sz2_2[7]),
	.a1 /* IN */ (sz1_2[7]),
	.a2 /* IN */ (local_data1lo[7]),
	.a3 /* IN */ (gpu_dinlo[7]),
	.s0 /* IN */ (sz22sel_0),
	.s1 /* IN */ (sz22sel_1)
);
mx4 srcz2i_index_2_inst_8
(
	.z /* OUT */ (srcz2i_2[8]),
	.a0 /* IN */ (sz2_2[8]),
	.a1 /* IN */ (sz1_2[8]),
	.a2 /* IN */ (local_data1lo[8]),
	.a3 /* IN */ (gpu_dinlo[8]),
	.s0 /* IN */ (sz22sel_0),
	.s1 /* IN */ (sz22sel_1)
);
mx4 srcz2i_index_2_inst_9
(
	.z /* OUT */ (srcz2i_2[9]),
	.a0 /* IN */ (sz2_2[9]),
	.a1 /* IN */ (sz1_2[9]),
	.a2 /* IN */ (local_data1lo[9]),
	.a3 /* IN */ (gpu_dinlo[9]),
	.s0 /* IN */ (sz22sel_0),
	.s1 /* IN */ (sz22sel_1)
);
mx4 srcz2i_index_2_inst_10
(
	.z /* OUT */ (srcz2i_2[10]),
	.a0 /* IN */ (sz2_2[10]),
	.a1 /* IN */ (sz1_2[10]),
	.a2 /* IN */ (local_data1lo[10]),
	.a3 /* IN */ (gpu_dinlo[10]),
	.s0 /* IN */ (sz22sel_0),
	.s1 /* IN */ (sz22sel_1)
);
mx4 srcz2i_index_2_inst_11
(
	.z /* OUT */ (srcz2i_2[11]),
	.a0 /* IN */ (sz2_2[11]),
	.a1 /* IN */ (sz1_2[11]),
	.a2 /* IN */ (local_data1lo[11]),
	.a3 /* IN */ (gpu_dinlo[11]),
	.s0 /* IN */ (sz22sel_0),
	.s1 /* IN */ (sz22sel_1)
);
mx4 srcz2i_index_2_inst_12
(
	.z /* OUT */ (srcz2i_2[12]),
	.a0 /* IN */ (sz2_2[12]),
	.a1 /* IN */ (sz1_2[12]),
	.a2 /* IN */ (local_data1lo[12]),
	.a3 /* IN */ (gpu_dinlo[12]),
	.s0 /* IN */ (sz22sel_0),
	.s1 /* IN */ (sz22sel_1)
);
mx4 srcz2i_index_2_inst_13
(
	.z /* OUT */ (srcz2i_2[13]),
	.a0 /* IN */ (sz2_2[13]),
	.a1 /* IN */ (sz1_2[13]),
	.a2 /* IN */ (local_data1lo[13]),
	.a3 /* IN */ (gpu_dinlo[13]),
	.s0 /* IN */ (sz22sel_0),
	.s1 /* IN */ (sz22sel_1)
);
mx4 srcz2i_index_2_inst_14
(
	.z /* OUT */ (srcz2i_2[14]),
	.a0 /* IN */ (sz2_2[14]),
	.a1 /* IN */ (sz1_2[14]),
	.a2 /* IN */ (local_data1lo[14]),
	.a3 /* IN */ (gpu_dinlo[14]),
	.s0 /* IN */ (sz22sel_0),
	.s1 /* IN */ (sz22sel_1)
);
mx4 srcz2i_index_2_inst_15
(
	.z /* OUT */ (srcz2i_2[15]),
	.a0 /* IN */ (sz2_2[15]),
	.a1 /* IN */ (sz1_2[15]),
	.a2 /* IN */ (local_data1lo[15]),
	.a3 /* IN */ (gpu_dinlo[15]),
	.s0 /* IN */ (sz22sel_0),
	.s1 /* IN */ (sz22sel_1)
);

// DATA.NET (157) - sz23sel0 : or2_h
assign sz23sel_0 = srczread | zedldb_3;

// DATA.NET (158) - sz23sel1 : or3_h
assign sz23sel_1 = srcz2ld_1 | srcz2add | zedldb_3;

// DATA.NET (160) - srcz2i[3] : mx4
mx4 srcz2i_index_3_inst_0
(
	.z /* OUT */ (srcz2i_3[0]),
	.a0 /* IN */ (sz2_3[0]),
	.a1 /* IN */ (sz1_3[0]),
	.a2 /* IN */ (local_data1hi[0]),
	.a3 /* IN */ (gpu_dinlo[0]),
	.s0 /* IN */ (sz23sel_0),
	.s1 /* IN */ (sz23sel_1)
);
mx4 srcz2i_index_3_inst_1
(
	.z /* OUT */ (srcz2i_3[1]),
	.a0 /* IN */ (sz2_3[1]),
	.a1 /* IN */ (sz1_3[1]),
	.a2 /* IN */ (local_data1hi[1]),
	.a3 /* IN */ (gpu_dinlo[1]),
	.s0 /* IN */ (sz23sel_0),
	.s1 /* IN */ (sz23sel_1)
);
mx4 srcz2i_index_3_inst_2
(
	.z /* OUT */ (srcz2i_3[2]),
	.a0 /* IN */ (sz2_3[2]),
	.a1 /* IN */ (sz1_3[2]),
	.a2 /* IN */ (local_data1hi[2]),
	.a3 /* IN */ (gpu_dinlo[2]),
	.s0 /* IN */ (sz23sel_0),
	.s1 /* IN */ (sz23sel_1)
);
mx4 srcz2i_index_3_inst_3
(
	.z /* OUT */ (srcz2i_3[3]),
	.a0 /* IN */ (sz2_3[3]),
	.a1 /* IN */ (sz1_3[3]),
	.a2 /* IN */ (local_data1hi[3]),
	.a3 /* IN */ (gpu_dinlo[3]),
	.s0 /* IN */ (sz23sel_0),
	.s1 /* IN */ (sz23sel_1)
);
mx4 srcz2i_index_3_inst_4
(
	.z /* OUT */ (srcz2i_3[4]),
	.a0 /* IN */ (sz2_3[4]),
	.a1 /* IN */ (sz1_3[4]),
	.a2 /* IN */ (local_data1hi[4]),
	.a3 /* IN */ (gpu_dinlo[4]),
	.s0 /* IN */ (sz23sel_0),
	.s1 /* IN */ (sz23sel_1)
);
mx4 srcz2i_index_3_inst_5
(
	.z /* OUT */ (srcz2i_3[5]),
	.a0 /* IN */ (sz2_3[5]),
	.a1 /* IN */ (sz1_3[5]),
	.a2 /* IN */ (local_data1hi[5]),
	.a3 /* IN */ (gpu_dinlo[5]),
	.s0 /* IN */ (sz23sel_0),
	.s1 /* IN */ (sz23sel_1)
);
mx4 srcz2i_index_3_inst_6
(
	.z /* OUT */ (srcz2i_3[6]),
	.a0 /* IN */ (sz2_3[6]),
	.a1 /* IN */ (sz1_3[6]),
	.a2 /* IN */ (local_data1hi[6]),
	.a3 /* IN */ (gpu_dinlo[6]),
	.s0 /* IN */ (sz23sel_0),
	.s1 /* IN */ (sz23sel_1)
);
mx4 srcz2i_index_3_inst_7
(
	.z /* OUT */ (srcz2i_3[7]),
	.a0 /* IN */ (sz2_3[7]),
	.a1 /* IN */ (sz1_3[7]),
	.a2 /* IN */ (local_data1hi[7]),
	.a3 /* IN */ (gpu_dinlo[7]),
	.s0 /* IN */ (sz23sel_0),
	.s1 /* IN */ (sz23sel_1)
);
mx4 srcz2i_index_3_inst_8
(
	.z /* OUT */ (srcz2i_3[8]),
	.a0 /* IN */ (sz2_3[8]),
	.a1 /* IN */ (sz1_3[8]),
	.a2 /* IN */ (local_data1hi[8]),
	.a3 /* IN */ (gpu_dinlo[8]),
	.s0 /* IN */ (sz23sel_0),
	.s1 /* IN */ (sz23sel_1)
);
mx4 srcz2i_index_3_inst_9
(
	.z /* OUT */ (srcz2i_3[9]),
	.a0 /* IN */ (sz2_3[9]),
	.a1 /* IN */ (sz1_3[9]),
	.a2 /* IN */ (local_data1hi[9]),
	.a3 /* IN */ (gpu_dinlo[9]),
	.s0 /* IN */ (sz23sel_0),
	.s1 /* IN */ (sz23sel_1)
);
mx4 srcz2i_index_3_inst_10
(
	.z /* OUT */ (srcz2i_3[10]),
	.a0 /* IN */ (sz2_3[10]),
	.a1 /* IN */ (sz1_3[10]),
	.a2 /* IN */ (local_data1hi[10]),
	.a3 /* IN */ (gpu_dinlo[10]),
	.s0 /* IN */ (sz23sel_0),
	.s1 /* IN */ (sz23sel_1)
);
mx4 srcz2i_index_3_inst_11
(
	.z /* OUT */ (srcz2i_3[11]),
	.a0 /* IN */ (sz2_3[11]),
	.a1 /* IN */ (sz1_3[11]),
	.a2 /* IN */ (local_data1hi[11]),
	.a3 /* IN */ (gpu_dinlo[11]),
	.s0 /* IN */ (sz23sel_0),
	.s1 /* IN */ (sz23sel_1)
);
mx4 srcz2i_index_3_inst_12
(
	.z /* OUT */ (srcz2i_3[12]),
	.a0 /* IN */ (sz2_3[12]),
	.a1 /* IN */ (sz1_3[12]),
	.a2 /* IN */ (local_data1hi[12]),
	.a3 /* IN */ (gpu_dinlo[12]),
	.s0 /* IN */ (sz23sel_0),
	.s1 /* IN */ (sz23sel_1)
);
mx4 srcz2i_index_3_inst_13
(
	.z /* OUT */ (srcz2i_3[13]),
	.a0 /* IN */ (sz2_3[13]),
	.a1 /* IN */ (sz1_3[13]),
	.a2 /* IN */ (local_data1hi[13]),
	.a3 /* IN */ (gpu_dinlo[13]),
	.s0 /* IN */ (sz23sel_0),
	.s1 /* IN */ (sz23sel_1)
);
mx4 srcz2i_index_3_inst_14
(
	.z /* OUT */ (srcz2i_3[14]),
	.a0 /* IN */ (sz2_3[14]),
	.a1 /* IN */ (sz1_3[14]),
	.a2 /* IN */ (local_data1hi[14]),
	.a3 /* IN */ (gpu_dinlo[14]),
	.s0 /* IN */ (sz23sel_0),
	.s1 /* IN */ (sz23sel_1)
);
mx4 srcz2i_index_3_inst_15
(
	.z /* OUT */ (srcz2i_3[15]),
	.a0 /* IN */ (sz2_3[15]),
	.a1 /* IN */ (sz1_3[15]),
	.a2 /* IN */ (local_data1hi[15]),
	.a3 /* IN */ (gpu_dinlo[15]),
	.s0 /* IN */ (sz23sel_0),
	.s1 /* IN */ (sz23sel_1)
);

// DATA.NET (163) - sz2[0-3] : fd1qp
fd1q sz2_from_0_to_3_inst_0
(
	.q /* OUT */ (sz2_0[0]),
	.d /* IN */ (srcz2i_0[0]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_1
(
	.q /* OUT */ (sz2_0[1]),
	.d /* IN */ (srcz2i_0[1]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_2
(
	.q /* OUT */ (sz2_0[2]),
	.d /* IN */ (srcz2i_0[2]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_3
(
	.q /* OUT */ (sz2_0[3]),
	.d /* IN */ (srcz2i_0[3]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_4
(
	.q /* OUT */ (sz2_0[4]),
	.d /* IN */ (srcz2i_0[4]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_5
(
	.q /* OUT */ (sz2_0[5]),
	.d /* IN */ (srcz2i_0[5]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_6
(
	.q /* OUT */ (sz2_0[6]),
	.d /* IN */ (srcz2i_0[6]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_7
(
	.q /* OUT */ (sz2_0[7]),
	.d /* IN */ (srcz2i_0[7]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_8
(
	.q /* OUT */ (sz2_0[8]),
	.d /* IN */ (srcz2i_0[8]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_9
(
	.q /* OUT */ (sz2_0[9]),
	.d /* IN */ (srcz2i_0[9]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_10
(
	.q /* OUT */ (sz2_0[10]),
	.d /* IN */ (srcz2i_0[10]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_11
(
	.q /* OUT */ (sz2_0[11]),
	.d /* IN */ (srcz2i_0[11]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_12
(
	.q /* OUT */ (sz2_0[12]),
	.d /* IN */ (srcz2i_0[12]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_13
(
	.q /* OUT */ (sz2_0[13]),
	.d /* IN */ (srcz2i_0[13]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_14
(
	.q /* OUT */ (sz2_0[14]),
	.d /* IN */ (srcz2i_0[14]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_15
(
	.q /* OUT */ (sz2_0[15]),
	.d /* IN */ (srcz2i_0[15]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_16
(
	.q /* OUT */ (sz2_1[0]),
	.d /* IN */ (srcz2i_1[0]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_17
(
	.q /* OUT */ (sz2_1[1]),
	.d /* IN */ (srcz2i_1[1]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_18
(
	.q /* OUT */ (sz2_1[2]),
	.d /* IN */ (srcz2i_1[2]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_19
(
	.q /* OUT */ (sz2_1[3]),
	.d /* IN */ (srcz2i_1[3]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_20
(
	.q /* OUT */ (sz2_1[4]),
	.d /* IN */ (srcz2i_1[4]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_21
(
	.q /* OUT */ (sz2_1[5]),
	.d /* IN */ (srcz2i_1[5]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_22
(
	.q /* OUT */ (sz2_1[6]),
	.d /* IN */ (srcz2i_1[6]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_23
(
	.q /* OUT */ (sz2_1[7]),
	.d /* IN */ (srcz2i_1[7]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_24
(
	.q /* OUT */ (sz2_1[8]),
	.d /* IN */ (srcz2i_1[8]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_25
(
	.q /* OUT */ (sz2_1[9]),
	.d /* IN */ (srcz2i_1[9]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_26
(
	.q /* OUT */ (sz2_1[10]),
	.d /* IN */ (srcz2i_1[10]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_27
(
	.q /* OUT */ (sz2_1[11]),
	.d /* IN */ (srcz2i_1[11]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_28
(
	.q /* OUT */ (sz2_1[12]),
	.d /* IN */ (srcz2i_1[12]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_29
(
	.q /* OUT */ (sz2_1[13]),
	.d /* IN */ (srcz2i_1[13]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_30
(
	.q /* OUT */ (sz2_1[14]),
	.d /* IN */ (srcz2i_1[14]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_31
(
	.q /* OUT */ (sz2_1[15]),
	.d /* IN */ (srcz2i_1[15]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_32
(
	.q /* OUT */ (sz2_2[0]),
	.d /* IN */ (srcz2i_2[0]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_33
(
	.q /* OUT */ (sz2_2[1]),
	.d /* IN */ (srcz2i_2[1]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_34
(
	.q /* OUT */ (sz2_2[2]),
	.d /* IN */ (srcz2i_2[2]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_35
(
	.q /* OUT */ (sz2_2[3]),
	.d /* IN */ (srcz2i_2[3]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_36
(
	.q /* OUT */ (sz2_2[4]),
	.d /* IN */ (srcz2i_2[4]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_37
(
	.q /* OUT */ (sz2_2[5]),
	.d /* IN */ (srcz2i_2[5]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_38
(
	.q /* OUT */ (sz2_2[6]),
	.d /* IN */ (srcz2i_2[6]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_39
(
	.q /* OUT */ (sz2_2[7]),
	.d /* IN */ (srcz2i_2[7]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_40
(
	.q /* OUT */ (sz2_2[8]),
	.d /* IN */ (srcz2i_2[8]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_41
(
	.q /* OUT */ (sz2_2[9]),
	.d /* IN */ (srcz2i_2[9]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_42
(
	.q /* OUT */ (sz2_2[10]),
	.d /* IN */ (srcz2i_2[10]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_43
(
	.q /* OUT */ (sz2_2[11]),
	.d /* IN */ (srcz2i_2[11]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_44
(
	.q /* OUT */ (sz2_2[12]),
	.d /* IN */ (srcz2i_2[12]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_45
(
	.q /* OUT */ (sz2_2[13]),
	.d /* IN */ (srcz2i_2[13]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_46
(
	.q /* OUT */ (sz2_2[14]),
	.d /* IN */ (srcz2i_2[14]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_47
(
	.q /* OUT */ (sz2_2[15]),
	.d /* IN */ (srcz2i_2[15]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_48
(
	.q /* OUT */ (sz2_3[0]),
	.d /* IN */ (srcz2i_3[0]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_49
(
	.q /* OUT */ (sz2_3[1]),
	.d /* IN */ (srcz2i_3[1]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_50
(
	.q /* OUT */ (sz2_3[2]),
	.d /* IN */ (srcz2i_3[2]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_51
(
	.q /* OUT */ (sz2_3[3]),
	.d /* IN */ (srcz2i_3[3]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_52
(
	.q /* OUT */ (sz2_3[4]),
	.d /* IN */ (srcz2i_3[4]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_53
(
	.q /* OUT */ (sz2_3[5]),
	.d /* IN */ (srcz2i_3[5]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_54
(
	.q /* OUT */ (sz2_3[6]),
	.d /* IN */ (srcz2i_3[6]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_55
(
	.q /* OUT */ (sz2_3[7]),
	.d /* IN */ (srcz2i_3[7]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_56
(
	.q /* OUT */ (sz2_3[8]),
	.d /* IN */ (srcz2i_3[8]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_57
(
	.q /* OUT */ (sz2_3[9]),
	.d /* IN */ (srcz2i_3[9]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_58
(
	.q /* OUT */ (sz2_3[10]),
	.d /* IN */ (srcz2i_3[10]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_59
(
	.q /* OUT */ (sz2_3[11]),
	.d /* IN */ (srcz2i_3[11]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_60
(
	.q /* OUT */ (sz2_3[12]),
	.d /* IN */ (srcz2i_3[12]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_61
(
	.q /* OUT */ (sz2_3[13]),
	.d /* IN */ (srcz2i_3[13]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_62
(
	.q /* OUT */ (sz2_3[14]),
	.d /* IN */ (srcz2i_3[14]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q sz2_from_0_to_3_inst_63
(
	.q /* OUT */ (sz2_3[15]),
	.d /* IN */ (srcz2i_3[15]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DATA.NET (164) - srcz2[0] : join
assign srcz2_0[0] = sz2_0[0];
assign srcz2_0[1] = sz2_0[1];
assign srcz2_0[2] = sz2_0[2];
assign srcz2_0[3] = sz2_0[3];
assign srcz2_0[4] = sz2_0[4];
assign srcz2_0[5] = sz2_0[5];
assign srcz2_0[6] = sz2_0[6];
assign srcz2_0[7] = sz2_0[7];
assign srcz2_0[8] = sz2_0[8];
assign srcz2_0[9] = sz2_0[9];
assign srcz2_0[10] = sz2_0[10];
assign srcz2_0[11] = sz2_0[11];
assign srcz2_0[12] = sz2_0[12];
assign srcz2_0[13] = sz2_0[13];
assign srcz2_0[14] = sz2_0[14];
assign srcz2_0[15] = sz2_0[15];
assign srcz2_0[16] = sz2_1[0];
assign srcz2_0[17] = sz2_1[1];
assign srcz2_0[18] = sz2_1[2];
assign srcz2_0[19] = sz2_1[3];
assign srcz2_0[20] = sz2_1[4];
assign srcz2_0[21] = sz2_1[5];
assign srcz2_0[22] = sz2_1[6];
assign srcz2_0[23] = sz2_1[7];
assign srcz2_0[24] = sz2_1[8];
assign srcz2_0[25] = sz2_1[9];
assign srcz2_0[26] = sz2_1[10];
assign srcz2_0[27] = sz2_1[11];
assign srcz2_0[28] = sz2_1[12];
assign srcz2_0[29] = sz2_1[13];
assign srcz2_0[30] = sz2_1[14];
assign srcz2_0[31] = sz2_1[15];

// DATA.NET (165) - srcz2[1] : join
assign srcz2_1[0] = sz2_2[0];
assign srcz2_1[1] = sz2_2[1];
assign srcz2_1[2] = sz2_2[2];
assign srcz2_1[3] = sz2_2[3];
assign srcz2_1[4] = sz2_2[4];
assign srcz2_1[5] = sz2_2[5];
assign srcz2_1[6] = sz2_2[6];
assign srcz2_1[7] = sz2_2[7];
assign srcz2_1[8] = sz2_2[8];
assign srcz2_1[9] = sz2_2[9];
assign srcz2_1[10] = sz2_2[10];
assign srcz2_1[11] = sz2_2[11];
assign srcz2_1[12] = sz2_2[12];
assign srcz2_1[13] = sz2_2[13];
assign srcz2_1[14] = sz2_2[14];
assign srcz2_1[15] = sz2_2[15];
assign srcz2_1[16] = sz2_3[0];
assign srcz2_1[17] = sz2_3[1];
assign srcz2_1[18] = sz2_3[2];
assign srcz2_1[19] = sz2_3[3];
assign srcz2_1[20] = sz2_3[4];
assign srcz2_1[21] = sz2_3[5];
assign srcz2_1[22] = sz2_3[6];
assign srcz2_1[23] = sz2_3[7];
assign srcz2_1[24] = sz2_3[8];
assign srcz2_1[25] = sz2_3[9];
assign srcz2_1[26] = sz2_3[10];
assign srcz2_1[27] = sz2_3[11];
assign srcz2_1[28] = sz2_3[12];
assign srcz2_1[29] = sz2_3[13];
assign srcz2_1[30] = sz2_3[14];
assign srcz2_1[31] = sz2_3[15];

// DATA.NET (170) - dstdldg[0-1] : an2u
assign dstdldg_0 = dstdld_0 & load_strobe;
assign dstdldg_1 = dstdld_1 & load_strobe;

// DATA.NET (171) - dstd[0-1] : ldp1q
ldp1q dstd_from_0_to_1_inst_0
(
	.q /* OUT */ (dstd_0[0]),
	.d /* IN */ (load_data_0[0]),
	.g /* IN */ (dstdldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_1
(
	.q /* OUT */ (dstd_0[1]),
	.d /* IN */ (load_data_0[1]),
	.g /* IN */ (dstdldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_2
(
	.q /* OUT */ (dstd_0[2]),
	.d /* IN */ (load_data_0[2]),
	.g /* IN */ (dstdldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_3
(
	.q /* OUT */ (dstd_0[3]),
	.d /* IN */ (load_data_0[3]),
	.g /* IN */ (dstdldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_4
(
	.q /* OUT */ (dstd_0[4]),
	.d /* IN */ (load_data_0[4]),
	.g /* IN */ (dstdldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_5
(
	.q /* OUT */ (dstd_0[5]),
	.d /* IN */ (load_data_0[5]),
	.g /* IN */ (dstdldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_6
(
	.q /* OUT */ (dstd_0[6]),
	.d /* IN */ (load_data_0[6]),
	.g /* IN */ (dstdldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_7
(
	.q /* OUT */ (dstd_0[7]),
	.d /* IN */ (load_data_0[7]),
	.g /* IN */ (dstdldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_8
(
	.q /* OUT */ (dstd_0[8]),
	.d /* IN */ (load_data_0[8]),
	.g /* IN */ (dstdldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_9
(
	.q /* OUT */ (dstd_0[9]),
	.d /* IN */ (load_data_0[9]),
	.g /* IN */ (dstdldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_10
(
	.q /* OUT */ (dstd_0[10]),
	.d /* IN */ (load_data_0[10]),
	.g /* IN */ (dstdldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_11
(
	.q /* OUT */ (dstd_0[11]),
	.d /* IN */ (load_data_0[11]),
	.g /* IN */ (dstdldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_12
(
	.q /* OUT */ (dstd_0[12]),
	.d /* IN */ (load_data_0[12]),
	.g /* IN */ (dstdldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_13
(
	.q /* OUT */ (dstd_0[13]),
	.d /* IN */ (load_data_0[13]),
	.g /* IN */ (dstdldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_14
(
	.q /* OUT */ (dstd_0[14]),
	.d /* IN */ (load_data_0[14]),
	.g /* IN */ (dstdldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_15
(
	.q /* OUT */ (dstd_0[15]),
	.d /* IN */ (load_data_0[15]),
	.g /* IN */ (dstdldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_16
(
	.q /* OUT */ (dstd_0[16]),
	.d /* IN */ (load_data_0[16]),
	.g /* IN */ (dstdldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_17
(
	.q /* OUT */ (dstd_0[17]),
	.d /* IN */ (load_data_0[17]),
	.g /* IN */ (dstdldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_18
(
	.q /* OUT */ (dstd_0[18]),
	.d /* IN */ (load_data_0[18]),
	.g /* IN */ (dstdldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_19
(
	.q /* OUT */ (dstd_0[19]),
	.d /* IN */ (load_data_0[19]),
	.g /* IN */ (dstdldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_20
(
	.q /* OUT */ (dstd_0[20]),
	.d /* IN */ (load_data_0[20]),
	.g /* IN */ (dstdldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_21
(
	.q /* OUT */ (dstd_0[21]),
	.d /* IN */ (load_data_0[21]),
	.g /* IN */ (dstdldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_22
(
	.q /* OUT */ (dstd_0[22]),
	.d /* IN */ (load_data_0[22]),
	.g /* IN */ (dstdldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_23
(
	.q /* OUT */ (dstd_0[23]),
	.d /* IN */ (load_data_0[23]),
	.g /* IN */ (dstdldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_24
(
	.q /* OUT */ (dstd_0[24]),
	.d /* IN */ (load_data_0[24]),
	.g /* IN */ (dstdldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_25
(
	.q /* OUT */ (dstd_0[25]),
	.d /* IN */ (load_data_0[25]),
	.g /* IN */ (dstdldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_26
(
	.q /* OUT */ (dstd_0[26]),
	.d /* IN */ (load_data_0[26]),
	.g /* IN */ (dstdldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_27
(
	.q /* OUT */ (dstd_0[27]),
	.d /* IN */ (load_data_0[27]),
	.g /* IN */ (dstdldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_28
(
	.q /* OUT */ (dstd_0[28]),
	.d /* IN */ (load_data_0[28]),
	.g /* IN */ (dstdldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_29
(
	.q /* OUT */ (dstd_0[29]),
	.d /* IN */ (load_data_0[29]),
	.g /* IN */ (dstdldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_30
(
	.q /* OUT */ (dstd_0[30]),
	.d /* IN */ (load_data_0[30]),
	.g /* IN */ (dstdldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_31
(
	.q /* OUT */ (dstd_0[31]),
	.d /* IN */ (load_data_0[31]),
	.g /* IN */ (dstdldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_32
(
	.q /* OUT */ (dstd_1[0]),
	.d /* IN */ (load_data_1[0]),
	.g /* IN */ (dstdldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_33
(
	.q /* OUT */ (dstd_1[1]),
	.d /* IN */ (load_data_1[1]),
	.g /* IN */ (dstdldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_34
(
	.q /* OUT */ (dstd_1[2]),
	.d /* IN */ (load_data_1[2]),
	.g /* IN */ (dstdldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_35
(
	.q /* OUT */ (dstd_1[3]),
	.d /* IN */ (load_data_1[3]),
	.g /* IN */ (dstdldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_36
(
	.q /* OUT */ (dstd_1[4]),
	.d /* IN */ (load_data_1[4]),
	.g /* IN */ (dstdldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_37
(
	.q /* OUT */ (dstd_1[5]),
	.d /* IN */ (load_data_1[5]),
	.g /* IN */ (dstdldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_38
(
	.q /* OUT */ (dstd_1[6]),
	.d /* IN */ (load_data_1[6]),
	.g /* IN */ (dstdldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_39
(
	.q /* OUT */ (dstd_1[7]),
	.d /* IN */ (load_data_1[7]),
	.g /* IN */ (dstdldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_40
(
	.q /* OUT */ (dstd_1[8]),
	.d /* IN */ (load_data_1[8]),
	.g /* IN */ (dstdldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_41
(
	.q /* OUT */ (dstd_1[9]),
	.d /* IN */ (load_data_1[9]),
	.g /* IN */ (dstdldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_42
(
	.q /* OUT */ (dstd_1[10]),
	.d /* IN */ (load_data_1[10]),
	.g /* IN */ (dstdldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_43
(
	.q /* OUT */ (dstd_1[11]),
	.d /* IN */ (load_data_1[11]),
	.g /* IN */ (dstdldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_44
(
	.q /* OUT */ (dstd_1[12]),
	.d /* IN */ (load_data_1[12]),
	.g /* IN */ (dstdldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_45
(
	.q /* OUT */ (dstd_1[13]),
	.d /* IN */ (load_data_1[13]),
	.g /* IN */ (dstdldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_46
(
	.q /* OUT */ (dstd_1[14]),
	.d /* IN */ (load_data_1[14]),
	.g /* IN */ (dstdldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_47
(
	.q /* OUT */ (dstd_1[15]),
	.d /* IN */ (load_data_1[15]),
	.g /* IN */ (dstdldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_48
(
	.q /* OUT */ (dstd_1[16]),
	.d /* IN */ (load_data_1[16]),
	.g /* IN */ (dstdldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_49
(
	.q /* OUT */ (dstd_1[17]),
	.d /* IN */ (load_data_1[17]),
	.g /* IN */ (dstdldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_50
(
	.q /* OUT */ (dstd_1[18]),
	.d /* IN */ (load_data_1[18]),
	.g /* IN */ (dstdldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_51
(
	.q /* OUT */ (dstd_1[19]),
	.d /* IN */ (load_data_1[19]),
	.g /* IN */ (dstdldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_52
(
	.q /* OUT */ (dstd_1[20]),
	.d /* IN */ (load_data_1[20]),
	.g /* IN */ (dstdldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_53
(
	.q /* OUT */ (dstd_1[21]),
	.d /* IN */ (load_data_1[21]),
	.g /* IN */ (dstdldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_54
(
	.q /* OUT */ (dstd_1[22]),
	.d /* IN */ (load_data_1[22]),
	.g /* IN */ (dstdldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_55
(
	.q /* OUT */ (dstd_1[23]),
	.d /* IN */ (load_data_1[23]),
	.g /* IN */ (dstdldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_56
(
	.q /* OUT */ (dstd_1[24]),
	.d /* IN */ (load_data_1[24]),
	.g /* IN */ (dstdldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_57
(
	.q /* OUT */ (dstd_1[25]),
	.d /* IN */ (load_data_1[25]),
	.g /* IN */ (dstdldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_58
(
	.q /* OUT */ (dstd_1[26]),
	.d /* IN */ (load_data_1[26]),
	.g /* IN */ (dstdldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_59
(
	.q /* OUT */ (dstd_1[27]),
	.d /* IN */ (load_data_1[27]),
	.g /* IN */ (dstdldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_60
(
	.q /* OUT */ (dstd_1[28]),
	.d /* IN */ (load_data_1[28]),
	.g /* IN */ (dstdldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_61
(
	.q /* OUT */ (dstd_1[29]),
	.d /* IN */ (load_data_1[29]),
	.g /* IN */ (dstdldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_62
(
	.q /* OUT */ (dstd_1[30]),
	.d /* IN */ (load_data_1[30]),
	.g /* IN */ (dstdldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstd_from_0_to_1_inst_63
(
	.q /* OUT */ (dstd_1[31]),
	.d /* IN */ (load_data_1[31]),
	.g /* IN */ (dstdldg_1),
	.sys_clk(sys_clk) // Generated
);

// DATA.NET (176) - dstzldg[0-1] : an2u
assign dstzldg_0 = dstzld_0 & load_strobe;
assign dstzldg_1 = dstzld_1 & load_strobe;

// DATA.NET (177) - dstz[0-1] : ldp1q
ldp1q dstz_from_0_to_1_inst_0
(
	.q /* OUT */ (dstz_0[0]),
	.d /* IN */ (load_data_0[0]),
	.g /* IN */ (dstzldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_1
(
	.q /* OUT */ (dstz_0[1]),
	.d /* IN */ (load_data_0[1]),
	.g /* IN */ (dstzldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_2
(
	.q /* OUT */ (dstz_0[2]),
	.d /* IN */ (load_data_0[2]),
	.g /* IN */ (dstzldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_3
(
	.q /* OUT */ (dstz_0[3]),
	.d /* IN */ (load_data_0[3]),
	.g /* IN */ (dstzldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_4
(
	.q /* OUT */ (dstz_0[4]),
	.d /* IN */ (load_data_0[4]),
	.g /* IN */ (dstzldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_5
(
	.q /* OUT */ (dstz_0[5]),
	.d /* IN */ (load_data_0[5]),
	.g /* IN */ (dstzldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_6
(
	.q /* OUT */ (dstz_0[6]),
	.d /* IN */ (load_data_0[6]),
	.g /* IN */ (dstzldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_7
(
	.q /* OUT */ (dstz_0[7]),
	.d /* IN */ (load_data_0[7]),
	.g /* IN */ (dstzldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_8
(
	.q /* OUT */ (dstz_0[8]),
	.d /* IN */ (load_data_0[8]),
	.g /* IN */ (dstzldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_9
(
	.q /* OUT */ (dstz_0[9]),
	.d /* IN */ (load_data_0[9]),
	.g /* IN */ (dstzldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_10
(
	.q /* OUT */ (dstz_0[10]),
	.d /* IN */ (load_data_0[10]),
	.g /* IN */ (dstzldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_11
(
	.q /* OUT */ (dstz_0[11]),
	.d /* IN */ (load_data_0[11]),
	.g /* IN */ (dstzldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_12
(
	.q /* OUT */ (dstz_0[12]),
	.d /* IN */ (load_data_0[12]),
	.g /* IN */ (dstzldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_13
(
	.q /* OUT */ (dstz_0[13]),
	.d /* IN */ (load_data_0[13]),
	.g /* IN */ (dstzldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_14
(
	.q /* OUT */ (dstz_0[14]),
	.d /* IN */ (load_data_0[14]),
	.g /* IN */ (dstzldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_15
(
	.q /* OUT */ (dstz_0[15]),
	.d /* IN */ (load_data_0[15]),
	.g /* IN */ (dstzldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_16
(
	.q /* OUT */ (dstz_0[16]),
	.d /* IN */ (load_data_0[16]),
	.g /* IN */ (dstzldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_17
(
	.q /* OUT */ (dstz_0[17]),
	.d /* IN */ (load_data_0[17]),
	.g /* IN */ (dstzldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_18
(
	.q /* OUT */ (dstz_0[18]),
	.d /* IN */ (load_data_0[18]),
	.g /* IN */ (dstzldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_19
(
	.q /* OUT */ (dstz_0[19]),
	.d /* IN */ (load_data_0[19]),
	.g /* IN */ (dstzldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_20
(
	.q /* OUT */ (dstz_0[20]),
	.d /* IN */ (load_data_0[20]),
	.g /* IN */ (dstzldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_21
(
	.q /* OUT */ (dstz_0[21]),
	.d /* IN */ (load_data_0[21]),
	.g /* IN */ (dstzldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_22
(
	.q /* OUT */ (dstz_0[22]),
	.d /* IN */ (load_data_0[22]),
	.g /* IN */ (dstzldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_23
(
	.q /* OUT */ (dstz_0[23]),
	.d /* IN */ (load_data_0[23]),
	.g /* IN */ (dstzldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_24
(
	.q /* OUT */ (dstz_0[24]),
	.d /* IN */ (load_data_0[24]),
	.g /* IN */ (dstzldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_25
(
	.q /* OUT */ (dstz_0[25]),
	.d /* IN */ (load_data_0[25]),
	.g /* IN */ (dstzldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_26
(
	.q /* OUT */ (dstz_0[26]),
	.d /* IN */ (load_data_0[26]),
	.g /* IN */ (dstzldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_27
(
	.q /* OUT */ (dstz_0[27]),
	.d /* IN */ (load_data_0[27]),
	.g /* IN */ (dstzldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_28
(
	.q /* OUT */ (dstz_0[28]),
	.d /* IN */ (load_data_0[28]),
	.g /* IN */ (dstzldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_29
(
	.q /* OUT */ (dstz_0[29]),
	.d /* IN */ (load_data_0[29]),
	.g /* IN */ (dstzldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_30
(
	.q /* OUT */ (dstz_0[30]),
	.d /* IN */ (load_data_0[30]),
	.g /* IN */ (dstzldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_31
(
	.q /* OUT */ (dstz_0[31]),
	.d /* IN */ (load_data_0[31]),
	.g /* IN */ (dstzldg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_32
(
	.q /* OUT */ (dstz_1[0]),
	.d /* IN */ (load_data_1[0]),
	.g /* IN */ (dstzldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_33
(
	.q /* OUT */ (dstz_1[1]),
	.d /* IN */ (load_data_1[1]),
	.g /* IN */ (dstzldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_34
(
	.q /* OUT */ (dstz_1[2]),
	.d /* IN */ (load_data_1[2]),
	.g /* IN */ (dstzldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_35
(
	.q /* OUT */ (dstz_1[3]),
	.d /* IN */ (load_data_1[3]),
	.g /* IN */ (dstzldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_36
(
	.q /* OUT */ (dstz_1[4]),
	.d /* IN */ (load_data_1[4]),
	.g /* IN */ (dstzldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_37
(
	.q /* OUT */ (dstz_1[5]),
	.d /* IN */ (load_data_1[5]),
	.g /* IN */ (dstzldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_38
(
	.q /* OUT */ (dstz_1[6]),
	.d /* IN */ (load_data_1[6]),
	.g /* IN */ (dstzldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_39
(
	.q /* OUT */ (dstz_1[7]),
	.d /* IN */ (load_data_1[7]),
	.g /* IN */ (dstzldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_40
(
	.q /* OUT */ (dstz_1[8]),
	.d /* IN */ (load_data_1[8]),
	.g /* IN */ (dstzldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_41
(
	.q /* OUT */ (dstz_1[9]),
	.d /* IN */ (load_data_1[9]),
	.g /* IN */ (dstzldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_42
(
	.q /* OUT */ (dstz_1[10]),
	.d /* IN */ (load_data_1[10]),
	.g /* IN */ (dstzldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_43
(
	.q /* OUT */ (dstz_1[11]),
	.d /* IN */ (load_data_1[11]),
	.g /* IN */ (dstzldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_44
(
	.q /* OUT */ (dstz_1[12]),
	.d /* IN */ (load_data_1[12]),
	.g /* IN */ (dstzldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_45
(
	.q /* OUT */ (dstz_1[13]),
	.d /* IN */ (load_data_1[13]),
	.g /* IN */ (dstzldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_46
(
	.q /* OUT */ (dstz_1[14]),
	.d /* IN */ (load_data_1[14]),
	.g /* IN */ (dstzldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_47
(
	.q /* OUT */ (dstz_1[15]),
	.d /* IN */ (load_data_1[15]),
	.g /* IN */ (dstzldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_48
(
	.q /* OUT */ (dstz_1[16]),
	.d /* IN */ (load_data_1[16]),
	.g /* IN */ (dstzldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_49
(
	.q /* OUT */ (dstz_1[17]),
	.d /* IN */ (load_data_1[17]),
	.g /* IN */ (dstzldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_50
(
	.q /* OUT */ (dstz_1[18]),
	.d /* IN */ (load_data_1[18]),
	.g /* IN */ (dstzldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_51
(
	.q /* OUT */ (dstz_1[19]),
	.d /* IN */ (load_data_1[19]),
	.g /* IN */ (dstzldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_52
(
	.q /* OUT */ (dstz_1[20]),
	.d /* IN */ (load_data_1[20]),
	.g /* IN */ (dstzldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_53
(
	.q /* OUT */ (dstz_1[21]),
	.d /* IN */ (load_data_1[21]),
	.g /* IN */ (dstzldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_54
(
	.q /* OUT */ (dstz_1[22]),
	.d /* IN */ (load_data_1[22]),
	.g /* IN */ (dstzldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_55
(
	.q /* OUT */ (dstz_1[23]),
	.d /* IN */ (load_data_1[23]),
	.g /* IN */ (dstzldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_56
(
	.q /* OUT */ (dstz_1[24]),
	.d /* IN */ (load_data_1[24]),
	.g /* IN */ (dstzldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_57
(
	.q /* OUT */ (dstz_1[25]),
	.d /* IN */ (load_data_1[25]),
	.g /* IN */ (dstzldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_58
(
	.q /* OUT */ (dstz_1[26]),
	.d /* IN */ (load_data_1[26]),
	.g /* IN */ (dstzldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_59
(
	.q /* OUT */ (dstz_1[27]),
	.d /* IN */ (load_data_1[27]),
	.g /* IN */ (dstzldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_60
(
	.q /* OUT */ (dstz_1[28]),
	.d /* IN */ (load_data_1[28]),
	.g /* IN */ (dstzldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_61
(
	.q /* OUT */ (dstz_1[29]),
	.d /* IN */ (load_data_1[29]),
	.g /* IN */ (dstzldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_62
(
	.q /* OUT */ (dstz_1[30]),
	.d /* IN */ (load_data_1[30]),
	.g /* IN */ (dstzldg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q dstz_from_0_to_1_inst_63
(
	.q /* OUT */ (dstz_1[31]),
	.d /* IN */ (load_data_1[31]),
	.g /* IN */ (dstzldg_1),
	.sys_clk(sys_clk) // Generated
);

// DATA.NET (188) - patdi[0-7] : mx4
mx4 patdi_from_0_to_7_inst_0
(
	.z /* OUT */ (patdi_0),
	.a0 /* IN */ (pdu_0),
	.a1 /* IN */ (local_data0[0]),
	.a2 /* IN */ (gpu_din[16]),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (patdld_0),
	.s1 /* IN */ (intldb_0)
);
mx4 patdi_from_0_to_7_inst_1
(
	.z /* OUT */ (patdi_1),
	.a0 /* IN */ (pdu_1),
	.a1 /* IN */ (local_data0[1]),
	.a2 /* IN */ (gpu_din[17]),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (patdld_0),
	.s1 /* IN */ (intldb_0)
);
mx4 patdi_from_0_to_7_inst_2
(
	.z /* OUT */ (patdi_2),
	.a0 /* IN */ (pdu_2),
	.a1 /* IN */ (local_data0[2]),
	.a2 /* IN */ (gpu_din[18]),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (patdld_0),
	.s1 /* IN */ (intldb_0)
);
mx4 patdi_from_0_to_7_inst_3
(
	.z /* OUT */ (patdi_3),
	.a0 /* IN */ (pdu_3),
	.a1 /* IN */ (local_data0[3]),
	.a2 /* IN */ (gpu_din[19]),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (patdld_0),
	.s1 /* IN */ (intldb_0)
);
mx4 patdi_from_0_to_7_inst_4
(
	.z /* OUT */ (patdi_4),
	.a0 /* IN */ (pdu_4),
	.a1 /* IN */ (local_data0[4]),
	.a2 /* IN */ (gpu_din[20]),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (patdld_0),
	.s1 /* IN */ (intldb_0)
);
mx4 patdi_from_0_to_7_inst_5
(
	.z /* OUT */ (patdi_5),
	.a0 /* IN */ (pdu_5),
	.a1 /* IN */ (local_data0[5]),
	.a2 /* IN */ (gpu_din[21]),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (patdld_0),
	.s1 /* IN */ (intldb_0)
);
mx4 patdi_from_0_to_7_inst_6
(
	.z /* OUT */ (patdi_6),
	.a0 /* IN */ (pdu_6),
	.a1 /* IN */ (local_data0[6]),
	.a2 /* IN */ (gpu_din[22]),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (patdld_0),
	.s1 /* IN */ (intldb_0)
);
mx4 patdi_from_0_to_7_inst_7
(
	.z /* OUT */ (patdi_7),
	.a0 /* IN */ (pdu_7),
	.a1 /* IN */ (local_data0[7]),
	.a2 /* IN */ (gpu_din[23]),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (patdld_0),
	.s1 /* IN */ (intldb_0)
);

// DATA.NET (191) - patdi[8-15] : mx2
assign patdi_8 = (patdld_0) ? local_data0[8] : pdu_8;
assign patdi_9 = (patdld_0) ? local_data0[9] : pdu_9;
assign patdi_10 = (patdld_0) ? local_data0[10] : pdu_10;
assign patdi_11 = (patdld_0) ? local_data0[11] : pdu_11;
assign patdi_12 = (patdld_0) ? local_data0[12] : pdu_12;
assign patdi_13 = (patdld_0) ? local_data0[13] : pdu_13;
assign patdi_14 = (patdld_0) ? local_data0[14] : pdu_14;
assign patdi_15 = (patdld_0) ? local_data0[15] : pdu_15;

// DATA.NET (193) - patdi[16-23] : mx4
mx4 patdi_from_16_to_23_inst_0
(
	.z /* OUT */ (patdi_16),
	.a0 /* IN */ (pdu_16),
	.a1 /* IN */ (local_data0[16]),
	.a2 /* IN */ (gpu_din[16]),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (patdld_0),
	.s1 /* IN */ (intldb_1)
);
mx4 patdi_from_16_to_23_inst_1
(
	.z /* OUT */ (patdi_17),
	.a0 /* IN */ (pdu_17),
	.a1 /* IN */ (local_data0[17]),
	.a2 /* IN */ (gpu_din[17]),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (patdld_0),
	.s1 /* IN */ (intldb_1)
);
mx4 patdi_from_16_to_23_inst_2
(
	.z /* OUT */ (patdi_18),
	.a0 /* IN */ (pdu_18),
	.a1 /* IN */ (local_data0[18]),
	.a2 /* IN */ (gpu_din[18]),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (patdld_0),
	.s1 /* IN */ (intldb_1)
);
mx4 patdi_from_16_to_23_inst_3
(
	.z /* OUT */ (patdi_19),
	.a0 /* IN */ (pdu_19),
	.a1 /* IN */ (local_data0[19]),
	.a2 /* IN */ (gpu_din[19]),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (patdld_0),
	.s1 /* IN */ (intldb_1)
);
mx4 patdi_from_16_to_23_inst_4
(
	.z /* OUT */ (patdi_20),
	.a0 /* IN */ (pdu_20),
	.a1 /* IN */ (local_data0[20]),
	.a2 /* IN */ (gpu_din[20]),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (patdld_0),
	.s1 /* IN */ (intldb_1)
);
mx4 patdi_from_16_to_23_inst_5
(
	.z /* OUT */ (patdi_21),
	.a0 /* IN */ (pdu_21),
	.a1 /* IN */ (local_data0[21]),
	.a2 /* IN */ (gpu_din[21]),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (patdld_0),
	.s1 /* IN */ (intldb_1)
);
mx4 patdi_from_16_to_23_inst_6
(
	.z /* OUT */ (patdi_22),
	.a0 /* IN */ (pdu_22),
	.a1 /* IN */ (local_data0[22]),
	.a2 /* IN */ (gpu_din[22]),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (patdld_0),
	.s1 /* IN */ (intldb_1)
);
mx4 patdi_from_16_to_23_inst_7
(
	.z /* OUT */ (patdi_23),
	.a0 /* IN */ (pdu_23),
	.a1 /* IN */ (local_data0[23]),
	.a2 /* IN */ (gpu_din[23]),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (patdld_0),
	.s1 /* IN */ (intldb_1)
);

// DATA.NET (196) - patdi[24-31] : mx2
assign patdi_24 = (patdld_0) ? local_data0[24] : pdu_24;
assign patdi_25 = (patdld_0) ? local_data0[25] : pdu_25;
assign patdi_26 = (patdld_0) ? local_data0[26] : pdu_26;
assign patdi_27 = (patdld_0) ? local_data0[27] : pdu_27;
assign patdi_28 = (patdld_0) ? local_data0[28] : pdu_28;
assign patdi_29 = (patdld_0) ? local_data0[29] : pdu_29;
assign patdi_30 = (patdld_0) ? local_data0[30] : pdu_30;
assign patdi_31 = (patdld_0) ? local_data0[31] : pdu_31;

// DATA.NET (198) - patdi[32-39] : mx4
mx4 patdi_from_32_to_39_inst_0
(
	.z /* OUT */ (patdi_32),
	.a0 /* IN */ (pdu_32),
	.a1 /* IN */ (local_data1[0]),
	.a2 /* IN */ (gpu_din[16]),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (patdld_1),
	.s1 /* IN */ (intldb_2)
);
mx4 patdi_from_32_to_39_inst_1
(
	.z /* OUT */ (patdi_33),
	.a0 /* IN */ (pdu_33),
	.a1 /* IN */ (local_data1[1]),
	.a2 /* IN */ (gpu_din[17]),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (patdld_1),
	.s1 /* IN */ (intldb_2)
);
mx4 patdi_from_32_to_39_inst_2
(
	.z /* OUT */ (patdi_34),
	.a0 /* IN */ (pdu_34),
	.a1 /* IN */ (local_data1[2]),
	.a2 /* IN */ (gpu_din[18]),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (patdld_1),
	.s1 /* IN */ (intldb_2)
);
mx4 patdi_from_32_to_39_inst_3
(
	.z /* OUT */ (patdi_35),
	.a0 /* IN */ (pdu_35),
	.a1 /* IN */ (local_data1[3]),
	.a2 /* IN */ (gpu_din[19]),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (patdld_1),
	.s1 /* IN */ (intldb_2)
);
mx4 patdi_from_32_to_39_inst_4
(
	.z /* OUT */ (patdi_36),
	.a0 /* IN */ (pdu_36),
	.a1 /* IN */ (local_data1[4]),
	.a2 /* IN */ (gpu_din[20]),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (patdld_1),
	.s1 /* IN */ (intldb_2)
);
mx4 patdi_from_32_to_39_inst_5
(
	.z /* OUT */ (patdi_37),
	.a0 /* IN */ (pdu_37),
	.a1 /* IN */ (local_data1[5]),
	.a2 /* IN */ (gpu_din[21]),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (patdld_1),
	.s1 /* IN */ (intldb_2)
);
mx4 patdi_from_32_to_39_inst_6
(
	.z /* OUT */ (patdi_38),
	.a0 /* IN */ (pdu_38),
	.a1 /* IN */ (local_data1[6]),
	.a2 /* IN */ (gpu_din[22]),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (patdld_1),
	.s1 /* IN */ (intldb_2)
);
mx4 patdi_from_32_to_39_inst_7
(
	.z /* OUT */ (patdi_39),
	.a0 /* IN */ (pdu_39),
	.a1 /* IN */ (local_data1[7]),
	.a2 /* IN */ (gpu_din[23]),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (patdld_1),
	.s1 /* IN */ (intldb_2)
);

// DATA.NET (201) - patdi[40-47] : mx2
assign patdi_40 = (patdld_1) ? local_data1[8] : pdu_40;
assign patdi_41 = (patdld_1) ? local_data1[9] : pdu_41;
assign patdi_42 = (patdld_1) ? local_data1[10] : pdu_42;
assign patdi_43 = (patdld_1) ? local_data1[11] : pdu_43;
assign patdi_44 = (patdld_1) ? local_data1[12] : pdu_44;
assign patdi_45 = (patdld_1) ? local_data1[13] : pdu_45;
assign patdi_46 = (patdld_1) ? local_data1[14] : pdu_46;
assign patdi_47 = (patdld_1) ? local_data1[15] : pdu_47;

// DATA.NET (203) - patdi[48-55] : mx4
mx4 patdi_from_48_to_55_inst_0
(
	.z /* OUT */ (patdi_48),
	.a0 /* IN */ (pdu_48),
	.a1 /* IN */ (local_data1[16]),
	.a2 /* IN */ (gpu_din[16]),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (patdld_1),
	.s1 /* IN */ (intldb_3)
);
mx4 patdi_from_48_to_55_inst_1
(
	.z /* OUT */ (patdi_49),
	.a0 /* IN */ (pdu_49),
	.a1 /* IN */ (local_data1[17]),
	.a2 /* IN */ (gpu_din[17]),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (patdld_1),
	.s1 /* IN */ (intldb_3)
);
mx4 patdi_from_48_to_55_inst_2
(
	.z /* OUT */ (patdi_50),
	.a0 /* IN */ (pdu_50),
	.a1 /* IN */ (local_data1[18]),
	.a2 /* IN */ (gpu_din[18]),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (patdld_1),
	.s1 /* IN */ (intldb_3)
);
mx4 patdi_from_48_to_55_inst_3
(
	.z /* OUT */ (patdi_51),
	.a0 /* IN */ (pdu_51),
	.a1 /* IN */ (local_data1[19]),
	.a2 /* IN */ (gpu_din[19]),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (patdld_1),
	.s1 /* IN */ (intldb_3)
);
mx4 patdi_from_48_to_55_inst_4
(
	.z /* OUT */ (patdi_52),
	.a0 /* IN */ (pdu_52),
	.a1 /* IN */ (local_data1[20]),
	.a2 /* IN */ (gpu_din[20]),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (patdld_1),
	.s1 /* IN */ (intldb_3)
);
mx4 patdi_from_48_to_55_inst_5
(
	.z /* OUT */ (patdi_53),
	.a0 /* IN */ (pdu_53),
	.a1 /* IN */ (local_data1[21]),
	.a2 /* IN */ (gpu_din[21]),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (patdld_1),
	.s1 /* IN */ (intldb_3)
);
mx4 patdi_from_48_to_55_inst_6
(
	.z /* OUT */ (patdi_54),
	.a0 /* IN */ (pdu_54),
	.a1 /* IN */ (local_data1[22]),
	.a2 /* IN */ (gpu_din[22]),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (patdld_1),
	.s1 /* IN */ (intldb_3)
);
mx4 patdi_from_48_to_55_inst_7
(
	.z /* OUT */ (patdi_55),
	.a0 /* IN */ (pdu_55),
	.a1 /* IN */ (local_data1[23]),
	.a2 /* IN */ (gpu_din[23]),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (patdld_1),
	.s1 /* IN */ (intldb_3)
);

// DATA.NET (206) - patdi[56-63] : mx2
assign patdi_56 = (patdld_1) ? local_data1[24] : pdu_56;
assign patdi_57 = (patdld_1) ? local_data1[25] : pdu_57;
assign patdi_58 = (patdld_1) ? local_data1[26] : pdu_58;
assign patdi_59 = (patdld_1) ? local_data1[27] : pdu_59;
assign patdi_60 = (patdld_1) ? local_data1[28] : pdu_60;
assign patdi_61 = (patdld_1) ? local_data1[29] : pdu_61;
assign patdi_62 = (patdld_1) ? local_data1[30] : pdu_62;
assign patdi_63 = (patdld_1) ? local_data1[31] : pdu_63;

// DATA.NET (208) - pdu[0-63] : fd1q
fd1q pdu_from_0_to_63_inst_0
(
	.q /* OUT */ (pdu_0),
	.d /* IN */ (patdi_0),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_1
(
	.q /* OUT */ (pdu_1),
	.d /* IN */ (patdi_1),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_2
(
	.q /* OUT */ (pdu_2),
	.d /* IN */ (patdi_2),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_3
(
	.q /* OUT */ (pdu_3),
	.d /* IN */ (patdi_3),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_4
(
	.q /* OUT */ (pdu_4),
	.d /* IN */ (patdi_4),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_5
(
	.q /* OUT */ (pdu_5),
	.d /* IN */ (patdi_5),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_6
(
	.q /* OUT */ (pdu_6),
	.d /* IN */ (patdi_6),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_7
(
	.q /* OUT */ (pdu_7),
	.d /* IN */ (patdi_7),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_8
(
	.q /* OUT */ (pdu_8),
	.d /* IN */ (patdi_8),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_9
(
	.q /* OUT */ (pdu_9),
	.d /* IN */ (patdi_9),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_10
(
	.q /* OUT */ (pdu_10),
	.d /* IN */ (patdi_10),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_11
(
	.q /* OUT */ (pdu_11),
	.d /* IN */ (patdi_11),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_12
(
	.q /* OUT */ (pdu_12),
	.d /* IN */ (patdi_12),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_13
(
	.q /* OUT */ (pdu_13),
	.d /* IN */ (patdi_13),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_14
(
	.q /* OUT */ (pdu_14),
	.d /* IN */ (patdi_14),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_15
(
	.q /* OUT */ (pdu_15),
	.d /* IN */ (patdi_15),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_16
(
	.q /* OUT */ (pdu_16),
	.d /* IN */ (patdi_16),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_17
(
	.q /* OUT */ (pdu_17),
	.d /* IN */ (patdi_17),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_18
(
	.q /* OUT */ (pdu_18),
	.d /* IN */ (patdi_18),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_19
(
	.q /* OUT */ (pdu_19),
	.d /* IN */ (patdi_19),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_20
(
	.q /* OUT */ (pdu_20),
	.d /* IN */ (patdi_20),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_21
(
	.q /* OUT */ (pdu_21),
	.d /* IN */ (patdi_21),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_22
(
	.q /* OUT */ (pdu_22),
	.d /* IN */ (patdi_22),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_23
(
	.q /* OUT */ (pdu_23),
	.d /* IN */ (patdi_23),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_24
(
	.q /* OUT */ (pdu_24),
	.d /* IN */ (patdi_24),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_25
(
	.q /* OUT */ (pdu_25),
	.d /* IN */ (patdi_25),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_26
(
	.q /* OUT */ (pdu_26),
	.d /* IN */ (patdi_26),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_27
(
	.q /* OUT */ (pdu_27),
	.d /* IN */ (patdi_27),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_28
(
	.q /* OUT */ (pdu_28),
	.d /* IN */ (patdi_28),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_29
(
	.q /* OUT */ (pdu_29),
	.d /* IN */ (patdi_29),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_30
(
	.q /* OUT */ (pdu_30),
	.d /* IN */ (patdi_30),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_31
(
	.q /* OUT */ (pdu_31),
	.d /* IN */ (patdi_31),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_32
(
	.q /* OUT */ (pdu_32),
	.d /* IN */ (patdi_32),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_33
(
	.q /* OUT */ (pdu_33),
	.d /* IN */ (patdi_33),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_34
(
	.q /* OUT */ (pdu_34),
	.d /* IN */ (patdi_34),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_35
(
	.q /* OUT */ (pdu_35),
	.d /* IN */ (patdi_35),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_36
(
	.q /* OUT */ (pdu_36),
	.d /* IN */ (patdi_36),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_37
(
	.q /* OUT */ (pdu_37),
	.d /* IN */ (patdi_37),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_38
(
	.q /* OUT */ (pdu_38),
	.d /* IN */ (patdi_38),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_39
(
	.q /* OUT */ (pdu_39),
	.d /* IN */ (patdi_39),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_40
(
	.q /* OUT */ (pdu_40),
	.d /* IN */ (patdi_40),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_41
(
	.q /* OUT */ (pdu_41),
	.d /* IN */ (patdi_41),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_42
(
	.q /* OUT */ (pdu_42),
	.d /* IN */ (patdi_42),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_43
(
	.q /* OUT */ (pdu_43),
	.d /* IN */ (patdi_43),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_44
(
	.q /* OUT */ (pdu_44),
	.d /* IN */ (patdi_44),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_45
(
	.q /* OUT */ (pdu_45),
	.d /* IN */ (patdi_45),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_46
(
	.q /* OUT */ (pdu_46),
	.d /* IN */ (patdi_46),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_47
(
	.q /* OUT */ (pdu_47),
	.d /* IN */ (patdi_47),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_48
(
	.q /* OUT */ (pdu_48),
	.d /* IN */ (patdi_48),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_49
(
	.q /* OUT */ (pdu_49),
	.d /* IN */ (patdi_49),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_50
(
	.q /* OUT */ (pdu_50),
	.d /* IN */ (patdi_50),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_51
(
	.q /* OUT */ (pdu_51),
	.d /* IN */ (patdi_51),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_52
(
	.q /* OUT */ (pdu_52),
	.d /* IN */ (patdi_52),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_53
(
	.q /* OUT */ (pdu_53),
	.d /* IN */ (patdi_53),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_54
(
	.q /* OUT */ (pdu_54),
	.d /* IN */ (patdi_54),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_55
(
	.q /* OUT */ (pdu_55),
	.d /* IN */ (patdi_55),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_56
(
	.q /* OUT */ (pdu_56),
	.d /* IN */ (patdi_56),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_57
(
	.q /* OUT */ (pdu_57),
	.d /* IN */ (patdi_57),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_58
(
	.q /* OUT */ (pdu_58),
	.d /* IN */ (patdi_58),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_59
(
	.q /* OUT */ (pdu_59),
	.d /* IN */ (patdi_59),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_60
(
	.q /* OUT */ (pdu_60),
	.d /* IN */ (patdi_60),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_61
(
	.q /* OUT */ (pdu_61),
	.d /* IN */ (patdi_61),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_62
(
	.q /* OUT */ (pdu_62),
	.d /* IN */ (patdi_62),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pdu_from_0_to_63_inst_63
(
	.q /* OUT */ (pdu_63),
	.d /* IN */ (patdi_63),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DATA.NET (209) - patdu[0] : join
assign patdu_0[0] = pdu_0;
assign patdu_0[1] = pdu_1;
assign patdu_0[2] = pdu_2;
assign patdu_0[3] = pdu_3;
assign patdu_0[4] = pdu_4;
assign patdu_0[5] = pdu_5;
assign patdu_0[6] = pdu_6;
assign patdu_0[7] = pdu_7;
assign patdu_0[8] = pdu_8;
assign patdu_0[9] = pdu_9;
assign patdu_0[10] = pdu_10;
assign patdu_0[11] = pdu_11;
assign patdu_0[12] = pdu_12;
assign patdu_0[13] = pdu_13;
assign patdu_0[14] = pdu_14;
assign patdu_0[15] = pdu_15;
assign patdu_0[16] = pdu_16;
assign patdu_0[17] = pdu_17;
assign patdu_0[18] = pdu_18;
assign patdu_0[19] = pdu_19;
assign patdu_0[20] = pdu_20;
assign patdu_0[21] = pdu_21;
assign patdu_0[22] = pdu_22;
assign patdu_0[23] = pdu_23;
assign patdu_0[24] = pdu_24;
assign patdu_0[25] = pdu_25;
assign patdu_0[26] = pdu_26;
assign patdu_0[27] = pdu_27;
assign patdu_0[28] = pdu_28;
assign patdu_0[29] = pdu_29;
assign patdu_0[30] = pdu_30;
assign patdu_0[31] = pdu_31;

// DATA.NET (210) - patdu[1] : join
assign patdu_1[0] = pdu_32;
assign patdu_1[1] = pdu_33;
assign patdu_1[2] = pdu_34;
assign patdu_1[3] = pdu_35;
assign patdu_1[4] = pdu_36;
assign patdu_1[5] = pdu_37;
assign patdu_1[6] = pdu_38;
assign patdu_1[7] = pdu_39;
assign patdu_1[8] = pdu_40;
assign patdu_1[9] = pdu_41;
assign patdu_1[10] = pdu_42;
assign patdu_1[11] = pdu_43;
assign patdu_1[12] = pdu_44;
assign patdu_1[13] = pdu_45;
assign patdu_1[14] = pdu_46;
assign patdu_1[15] = pdu_47;
assign patdu_1[16] = pdu_48;
assign patdu_1[17] = pdu_49;
assign patdu_1[18] = pdu_50;
assign patdu_1[19] = pdu_51;
assign patdu_1[20] = pdu_52;
assign patdu_1[21] = pdu_53;
assign patdu_1[22] = pdu_54;
assign patdu_1[23] = pdu_55;
assign patdu_1[24] = pdu_56;
assign patdu_1[25] = pdu_57;
assign patdu_1[26] = pdu_58;
assign patdu_1[27] = pdu_59;
assign patdu_1[28] = pdu_60;
assign patdu_1[29] = pdu_61;
assign patdu_1[30] = pdu_62;
assign patdu_1[31] = pdu_63;

// DATA.NET (211) - dpipeg[0-1] : an2u
assign dpipeg_0 = dpipe_0 & clk2;
assign dpipeg_1 = dpipe_0 & clk2;

// DATA.NET (212) - patd[0-1] : ldp1q
ldp1q patd_from_0_to_1_inst_0
(
	.q /* OUT */ (patd_0[0]),
	.d /* IN */ (patdu_0[0]),
	.g /* IN */ (dpipeg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_1
(
	.q /* OUT */ (patd_0[1]),
	.d /* IN */ (patdu_0[1]),
	.g /* IN */ (dpipeg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_2
(
	.q /* OUT */ (patd_0[2]),
	.d /* IN */ (patdu_0[2]),
	.g /* IN */ (dpipeg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_3
(
	.q /* OUT */ (patd_0[3]),
	.d /* IN */ (patdu_0[3]),
	.g /* IN */ (dpipeg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_4
(
	.q /* OUT */ (patd_0[4]),
	.d /* IN */ (patdu_0[4]),
	.g /* IN */ (dpipeg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_5
(
	.q /* OUT */ (patd_0[5]),
	.d /* IN */ (patdu_0[5]),
	.g /* IN */ (dpipeg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_6
(
	.q /* OUT */ (patd_0[6]),
	.d /* IN */ (patdu_0[6]),
	.g /* IN */ (dpipeg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_7
(
	.q /* OUT */ (patd_0[7]),
	.d /* IN */ (patdu_0[7]),
	.g /* IN */ (dpipeg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_8
(
	.q /* OUT */ (patd_0[8]),
	.d /* IN */ (patdu_0[8]),
	.g /* IN */ (dpipeg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_9
(
	.q /* OUT */ (patd_0[9]),
	.d /* IN */ (patdu_0[9]),
	.g /* IN */ (dpipeg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_10
(
	.q /* OUT */ (patd_0[10]),
	.d /* IN */ (patdu_0[10]),
	.g /* IN */ (dpipeg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_11
(
	.q /* OUT */ (patd_0[11]),
	.d /* IN */ (patdu_0[11]),
	.g /* IN */ (dpipeg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_12
(
	.q /* OUT */ (patd_0[12]),
	.d /* IN */ (patdu_0[12]),
	.g /* IN */ (dpipeg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_13
(
	.q /* OUT */ (patd_0[13]),
	.d /* IN */ (patdu_0[13]),
	.g /* IN */ (dpipeg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_14
(
	.q /* OUT */ (patd_0[14]),
	.d /* IN */ (patdu_0[14]),
	.g /* IN */ (dpipeg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_15
(
	.q /* OUT */ (patd_0[15]),
	.d /* IN */ (patdu_0[15]),
	.g /* IN */ (dpipeg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_16
(
	.q /* OUT */ (patd_0[16]),
	.d /* IN */ (patdu_0[16]),
	.g /* IN */ (dpipeg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_17
(
	.q /* OUT */ (patd_0[17]),
	.d /* IN */ (patdu_0[17]),
	.g /* IN */ (dpipeg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_18
(
	.q /* OUT */ (patd_0[18]),
	.d /* IN */ (patdu_0[18]),
	.g /* IN */ (dpipeg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_19
(
	.q /* OUT */ (patd_0[19]),
	.d /* IN */ (patdu_0[19]),
	.g /* IN */ (dpipeg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_20
(
	.q /* OUT */ (patd_0[20]),
	.d /* IN */ (patdu_0[20]),
	.g /* IN */ (dpipeg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_21
(
	.q /* OUT */ (patd_0[21]),
	.d /* IN */ (patdu_0[21]),
	.g /* IN */ (dpipeg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_22
(
	.q /* OUT */ (patd_0[22]),
	.d /* IN */ (patdu_0[22]),
	.g /* IN */ (dpipeg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_23
(
	.q /* OUT */ (patd_0[23]),
	.d /* IN */ (patdu_0[23]),
	.g /* IN */ (dpipeg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_24
(
	.q /* OUT */ (patd_0[24]),
	.d /* IN */ (patdu_0[24]),
	.g /* IN */ (dpipeg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_25
(
	.q /* OUT */ (patd_0[25]),
	.d /* IN */ (patdu_0[25]),
	.g /* IN */ (dpipeg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_26
(
	.q /* OUT */ (patd_0[26]),
	.d /* IN */ (patdu_0[26]),
	.g /* IN */ (dpipeg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_27
(
	.q /* OUT */ (patd_0[27]),
	.d /* IN */ (patdu_0[27]),
	.g /* IN */ (dpipeg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_28
(
	.q /* OUT */ (patd_0[28]),
	.d /* IN */ (patdu_0[28]),
	.g /* IN */ (dpipeg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_29
(
	.q /* OUT */ (patd_0[29]),
	.d /* IN */ (patdu_0[29]),
	.g /* IN */ (dpipeg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_30
(
	.q /* OUT */ (patd_0[30]),
	.d /* IN */ (patdu_0[30]),
	.g /* IN */ (dpipeg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_31
(
	.q /* OUT */ (patd_0[31]),
	.d /* IN */ (patdu_0[31]),
	.g /* IN */ (dpipeg_0),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_32
(
	.q /* OUT */ (patd_1[0]),
	.d /* IN */ (patdu_1[0]),
	.g /* IN */ (dpipeg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_33
(
	.q /* OUT */ (patd_1[1]),
	.d /* IN */ (patdu_1[1]),
	.g /* IN */ (dpipeg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_34
(
	.q /* OUT */ (patd_1[2]),
	.d /* IN */ (patdu_1[2]),
	.g /* IN */ (dpipeg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_35
(
	.q /* OUT */ (patd_1[3]),
	.d /* IN */ (patdu_1[3]),
	.g /* IN */ (dpipeg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_36
(
	.q /* OUT */ (patd_1[4]),
	.d /* IN */ (patdu_1[4]),
	.g /* IN */ (dpipeg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_37
(
	.q /* OUT */ (patd_1[5]),
	.d /* IN */ (patdu_1[5]),
	.g /* IN */ (dpipeg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_38
(
	.q /* OUT */ (patd_1[6]),
	.d /* IN */ (patdu_1[6]),
	.g /* IN */ (dpipeg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_39
(
	.q /* OUT */ (patd_1[7]),
	.d /* IN */ (patdu_1[7]),
	.g /* IN */ (dpipeg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_40
(
	.q /* OUT */ (patd_1[8]),
	.d /* IN */ (patdu_1[8]),
	.g /* IN */ (dpipeg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_41
(
	.q /* OUT */ (patd_1[9]),
	.d /* IN */ (patdu_1[9]),
	.g /* IN */ (dpipeg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_42
(
	.q /* OUT */ (patd_1[10]),
	.d /* IN */ (patdu_1[10]),
	.g /* IN */ (dpipeg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_43
(
	.q /* OUT */ (patd_1[11]),
	.d /* IN */ (patdu_1[11]),
	.g /* IN */ (dpipeg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_44
(
	.q /* OUT */ (patd_1[12]),
	.d /* IN */ (patdu_1[12]),
	.g /* IN */ (dpipeg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_45
(
	.q /* OUT */ (patd_1[13]),
	.d /* IN */ (patdu_1[13]),
	.g /* IN */ (dpipeg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_46
(
	.q /* OUT */ (patd_1[14]),
	.d /* IN */ (patdu_1[14]),
	.g /* IN */ (dpipeg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_47
(
	.q /* OUT */ (patd_1[15]),
	.d /* IN */ (patdu_1[15]),
	.g /* IN */ (dpipeg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_48
(
	.q /* OUT */ (patd_1[16]),
	.d /* IN */ (patdu_1[16]),
	.g /* IN */ (dpipeg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_49
(
	.q /* OUT */ (patd_1[17]),
	.d /* IN */ (patdu_1[17]),
	.g /* IN */ (dpipeg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_50
(
	.q /* OUT */ (patd_1[18]),
	.d /* IN */ (patdu_1[18]),
	.g /* IN */ (dpipeg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_51
(
	.q /* OUT */ (patd_1[19]),
	.d /* IN */ (patdu_1[19]),
	.g /* IN */ (dpipeg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_52
(
	.q /* OUT */ (patd_1[20]),
	.d /* IN */ (patdu_1[20]),
	.g /* IN */ (dpipeg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_53
(
	.q /* OUT */ (patd_1[21]),
	.d /* IN */ (patdu_1[21]),
	.g /* IN */ (dpipeg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_54
(
	.q /* OUT */ (patd_1[22]),
	.d /* IN */ (patdu_1[22]),
	.g /* IN */ (dpipeg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_55
(
	.q /* OUT */ (patd_1[23]),
	.d /* IN */ (patdu_1[23]),
	.g /* IN */ (dpipeg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_56
(
	.q /* OUT */ (patd_1[24]),
	.d /* IN */ (patdu_1[24]),
	.g /* IN */ (dpipeg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_57
(
	.q /* OUT */ (patd_1[25]),
	.d /* IN */ (patdu_1[25]),
	.g /* IN */ (dpipeg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_58
(
	.q /* OUT */ (patd_1[26]),
	.d /* IN */ (patdu_1[26]),
	.g /* IN */ (dpipeg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_59
(
	.q /* OUT */ (patd_1[27]),
	.d /* IN */ (patdu_1[27]),
	.g /* IN */ (dpipeg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_60
(
	.q /* OUT */ (patd_1[28]),
	.d /* IN */ (patdu_1[28]),
	.g /* IN */ (dpipeg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_61
(
	.q /* OUT */ (patd_1[29]),
	.d /* IN */ (patdu_1[29]),
	.g /* IN */ (dpipeg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_62
(
	.q /* OUT */ (patd_1[30]),
	.d /* IN */ (patdu_1[30]),
	.g /* IN */ (dpipeg_1),
	.sys_clk(sys_clk) // Generated
);
ldp1q patd_from_0_to_1_inst_63
(
	.q /* OUT */ (patd_1[31]),
	.d /* IN */ (patdu_1[31]),
	.g /* IN */ (dpipeg_1),
	.sys_clk(sys_clk) // Generated
);

// DATA.NET (219) - dpipe1b[0-1] : nivu
assign dpipe1b_0 = dpipe_1;
assign dpipe1b_1 = dpipe_1;

// DATA.NET (220) - patdo[0-1] : fdsync32
fdsync32 patdo_from_0_to_1_inst_0
(
	.q /* OUT */ ({patdo_0[0],patdo_0[1],patdo_0[2],patdo_0[3],patdo_0[4],patdo_0[5],patdo_0[6],patdo_0[7],patdo_0[8],patdo_0[9],patdo_0[10],patdo_0[11],patdo_0[12],patdo_0[13],patdo_0[14],patdo_0[15],patdo_0[16],patdo_0[17],patdo_0[18],patdo_0[19],patdo_0[20],patdo_0[21],patdo_0[22],patdo_0[23],patdo_0[24],patdo_0[25],patdo_0[26],patdo_0[27],patdo_0[28],patdo_0[29],patdo_0[30],patdo_0[31]}),
	.d /* IN */ ({patd_0[0],patd_0[1],patd_0[2],patd_0[3],patd_0[4],patd_0[5],patd_0[6],patd_0[7],patd_0[8],patd_0[9],patd_0[10],patd_0[11],patd_0[12],patd_0[13],patd_0[14],patd_0[15],patd_0[16],patd_0[17],patd_0[18],patd_0[19],patd_0[20],patd_0[21],patd_0[22],patd_0[23],patd_0[24],patd_0[25],patd_0[26],patd_0[27],patd_0[28],patd_0[29],patd_0[30],patd_0[31]}),
	.ld /* IN */ (dpipe1b_0),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fdsync32 patdo_from_0_to_1_inst_1
(
	.q /* OUT */ ({patdo_1[0],patdo_1[1],patdo_1[2],patdo_1[3],patdo_1[4],patdo_1[5],patdo_1[6],patdo_1[7],patdo_1[8],patdo_1[9],patdo_1[10],patdo_1[11],patdo_1[12],patdo_1[13],patdo_1[14],patdo_1[15],patdo_1[16],patdo_1[17],patdo_1[18],patdo_1[19],patdo_1[20],patdo_1[21],patdo_1[22],patdo_1[23],patdo_1[24],patdo_1[25],patdo_1[26],patdo_1[27],patdo_1[28],patdo_1[29],patdo_1[30],patdo_1[31]}),
	.d /* IN */ ({patd_1[0],patd_1[1],patd_1[2],patd_1[3],patd_1[4],patd_1[5],patd_1[6],patd_1[7],patd_1[8],patd_1[9],patd_1[10],patd_1[11],patd_1[12],patd_1[13],patd_1[14],patd_1[15],patd_1[16],patd_1[17],patd_1[18],patd_1[19],patd_1[20],patd_1[21],patd_1[22],patd_1[23],patd_1[24],patd_1[25],patd_1[26],patd_1[27],patd_1[28],patd_1[29],patd_1[30],patd_1[31]}),
	.ld /* IN */ (dpipe1b_1),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DATA.NET (225) - lfu : lfu
lfu lfu_inst
(
	.lfu_0 /* OUT */ ({lfu_0[0],lfu_0[1],lfu_0[2],lfu_0[3],lfu_0[4],lfu_0[5],lfu_0[6],lfu_0[7],lfu_0[8],lfu_0[9],lfu_0[10],lfu_0[11],lfu_0[12],lfu_0[13],lfu_0[14],lfu_0[15],lfu_0[16],lfu_0[17],lfu_0[18],lfu_0[19],lfu_0[20],lfu_0[21],lfu_0[22],lfu_0[23],lfu_0[24],lfu_0[25],lfu_0[26],lfu_0[27],lfu_0[28],lfu_0[29],lfu_0[30],lfu_0[31]}),
	.lfu_1 /* OUT */ ({lfu_1[0],lfu_1[1],lfu_1[2],lfu_1[3],lfu_1[4],lfu_1[5],lfu_1[6],lfu_1[7],lfu_1[8],lfu_1[9],lfu_1[10],lfu_1[11],lfu_1[12],lfu_1[13],lfu_1[14],lfu_1[15],lfu_1[16],lfu_1[17],lfu_1[18],lfu_1[19],lfu_1[20],lfu_1[21],lfu_1[22],lfu_1[23],lfu_1[24],lfu_1[25],lfu_1[26],lfu_1[27],lfu_1[28],lfu_1[29],lfu_1[30],lfu_1[31]}),
	.srcd_0 /* IN */ ({srcdlo[0],srcdlo[1],srcdlo[2],srcdlo[3],srcdlo[4],srcdlo[5],srcdlo[6],srcdlo[7],srcdlo[8],srcdlo[9],srcdlo[10],srcdlo[11],srcdlo[12],srcdlo[13],srcdlo[14],srcdlo[15],srcdlo[16],srcdlo[17],srcdlo[18],srcdlo[19],srcdlo[20],srcdlo[21],srcdlo[22],srcdlo[23],srcdlo[24],srcdlo[25],srcdlo[26],srcdlo[27],srcdlo[28],srcdlo[29],srcdlo[30],srcdlo[31]}),
	.srcd_1 /* IN */ ({srcdhi[0],srcdhi[1],srcdhi[2],srcdhi[3],srcdhi[4],srcdhi[5],srcdhi[6],srcdhi[7],srcdhi[8],srcdhi[9],srcdhi[10],srcdhi[11],srcdhi[12],srcdhi[13],srcdhi[14],srcdhi[15],srcdhi[16],srcdhi[17],srcdhi[18],srcdhi[19],srcdhi[20],srcdhi[21],srcdhi[22],srcdhi[23],srcdhi[24],srcdhi[25],srcdhi[26],srcdhi[27],srcdhi[28],srcdhi[29],srcdhi[30],srcdhi[31]}),
	.dstd_0 /* IN */ ({dstd_0[0],dstd_0[1],dstd_0[2],dstd_0[3],dstd_0[4],dstd_0[5],dstd_0[6],dstd_0[7],dstd_0[8],dstd_0[9],dstd_0[10],dstd_0[11],dstd_0[12],dstd_0[13],dstd_0[14],dstd_0[15],dstd_0[16],dstd_0[17],dstd_0[18],dstd_0[19],dstd_0[20],dstd_0[21],dstd_0[22],dstd_0[23],dstd_0[24],dstd_0[25],dstd_0[26],dstd_0[27],dstd_0[28],dstd_0[29],dstd_0[30],dstd_0[31]}),
	.dstd_1 /* IN */ ({dstd_1[0],dstd_1[1],dstd_1[2],dstd_1[3],dstd_1[4],dstd_1[5],dstd_1[6],dstd_1[7],dstd_1[8],dstd_1[9],dstd_1[10],dstd_1[11],dstd_1[12],dstd_1[13],dstd_1[14],dstd_1[15],dstd_1[16],dstd_1[17],dstd_1[18],dstd_1[19],dstd_1[20],dstd_1[21],dstd_1[22],dstd_1[23],dstd_1[24],dstd_1[25],dstd_1[26],dstd_1[27],dstd_1[28],dstd_1[29],dstd_1[30],dstd_1[31]}),
	.lfc_0 /* IN */ (lfu_func_0),
	.lfc_1 /* IN */ (lfu_func_1),
	.lfc_2 /* IN */ (lfu_func_2),
	.lfc_3 /* IN */ (lfu_func_3)
);

// DATA.NET (230) - zincldg : an2u
assign zincldg = zincld & load_strobe;

// DATA.NET (231) - zinc : ldp1q
ldp1q zinc_inst_0
(
	.q /* OUT */ (zinc[0]),
	.d /* IN */ (gpu_din[0]),
	.g /* IN */ (zincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q zinc_inst_1
(
	.q /* OUT */ (zinc[1]),
	.d /* IN */ (gpu_din[1]),
	.g /* IN */ (zincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q zinc_inst_2
(
	.q /* OUT */ (zinc[2]),
	.d /* IN */ (gpu_din[2]),
	.g /* IN */ (zincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q zinc_inst_3
(
	.q /* OUT */ (zinc[3]),
	.d /* IN */ (gpu_din[3]),
	.g /* IN */ (zincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q zinc_inst_4
(
	.q /* OUT */ (zinc[4]),
	.d /* IN */ (gpu_din[4]),
	.g /* IN */ (zincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q zinc_inst_5
(
	.q /* OUT */ (zinc[5]),
	.d /* IN */ (gpu_din[5]),
	.g /* IN */ (zincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q zinc_inst_6
(
	.q /* OUT */ (zinc[6]),
	.d /* IN */ (gpu_din[6]),
	.g /* IN */ (zincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q zinc_inst_7
(
	.q /* OUT */ (zinc[7]),
	.d /* IN */ (gpu_din[7]),
	.g /* IN */ (zincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q zinc_inst_8
(
	.q /* OUT */ (zinc[8]),
	.d /* IN */ (gpu_din[8]),
	.g /* IN */ (zincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q zinc_inst_9
(
	.q /* OUT */ (zinc[9]),
	.d /* IN */ (gpu_din[9]),
	.g /* IN */ (zincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q zinc_inst_10
(
	.q /* OUT */ (zinc[10]),
	.d /* IN */ (gpu_din[10]),
	.g /* IN */ (zincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q zinc_inst_11
(
	.q /* OUT */ (zinc[11]),
	.d /* IN */ (gpu_din[11]),
	.g /* IN */ (zincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q zinc_inst_12
(
	.q /* OUT */ (zinc[12]),
	.d /* IN */ (gpu_din[12]),
	.g /* IN */ (zincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q zinc_inst_13
(
	.q /* OUT */ (zinc[13]),
	.d /* IN */ (gpu_din[13]),
	.g /* IN */ (zincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q zinc_inst_14
(
	.q /* OUT */ (zinc[14]),
	.d /* IN */ (gpu_din[14]),
	.g /* IN */ (zincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q zinc_inst_15
(
	.q /* OUT */ (zinc[15]),
	.d /* IN */ (gpu_din[15]),
	.g /* IN */ (zincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q zinc_inst_16
(
	.q /* OUT */ (zinc[16]),
	.d /* IN */ (gpu_din[16]),
	.g /* IN */ (zincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q zinc_inst_17
(
	.q /* OUT */ (zinc[17]),
	.d /* IN */ (gpu_din[17]),
	.g /* IN */ (zincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q zinc_inst_18
(
	.q /* OUT */ (zinc[18]),
	.d /* IN */ (gpu_din[18]),
	.g /* IN */ (zincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q zinc_inst_19
(
	.q /* OUT */ (zinc[19]),
	.d /* IN */ (gpu_din[19]),
	.g /* IN */ (zincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q zinc_inst_20
(
	.q /* OUT */ (zinc[20]),
	.d /* IN */ (gpu_din[20]),
	.g /* IN */ (zincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q zinc_inst_21
(
	.q /* OUT */ (zinc[21]),
	.d /* IN */ (gpu_din[21]),
	.g /* IN */ (zincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q zinc_inst_22
(
	.q /* OUT */ (zinc[22]),
	.d /* IN */ (gpu_din[22]),
	.g /* IN */ (zincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q zinc_inst_23
(
	.q /* OUT */ (zinc[23]),
	.d /* IN */ (gpu_din[23]),
	.g /* IN */ (zincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q zinc_inst_24
(
	.q /* OUT */ (zinc[24]),
	.d /* IN */ (gpu_din[24]),
	.g /* IN */ (zincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q zinc_inst_25
(
	.q /* OUT */ (zinc[25]),
	.d /* IN */ (gpu_din[25]),
	.g /* IN */ (zincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q zinc_inst_26
(
	.q /* OUT */ (zinc[26]),
	.d /* IN */ (gpu_din[26]),
	.g /* IN */ (zincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q zinc_inst_27
(
	.q /* OUT */ (zinc[27]),
	.d /* IN */ (gpu_din[27]),
	.g /* IN */ (zincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q zinc_inst_28
(
	.q /* OUT */ (zinc[28]),
	.d /* IN */ (gpu_din[28]),
	.g /* IN */ (zincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q zinc_inst_29
(
	.q /* OUT */ (zinc[29]),
	.d /* IN */ (gpu_din[29]),
	.g /* IN */ (zincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q zinc_inst_30
(
	.q /* OUT */ (zinc[30]),
	.d /* IN */ (gpu_din[30]),
	.g /* IN */ (zincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q zinc_inst_31
(
	.q /* OUT */ (zinc[31]),
	.d /* IN */ (gpu_din[31]),
	.g /* IN */ (zincldg),
	.sys_clk(sys_clk) // Generated
);

// DATA.NET (235) - iincldg : an2u
assign iincldg = iincld & load_strobe;

// DATA.NET (236) - iinc : ldp1q
ldp1q iinc_inst_0
(
	.q /* OUT */ (iinc[0]),
	.d /* IN */ (gpu_din[0]),
	.g /* IN */ (iincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q iinc_inst_1
(
	.q /* OUT */ (iinc[1]),
	.d /* IN */ (gpu_din[1]),
	.g /* IN */ (iincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q iinc_inst_2
(
	.q /* OUT */ (iinc[2]),
	.d /* IN */ (gpu_din[2]),
	.g /* IN */ (iincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q iinc_inst_3
(
	.q /* OUT */ (iinc[3]),
	.d /* IN */ (gpu_din[3]),
	.g /* IN */ (iincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q iinc_inst_4
(
	.q /* OUT */ (iinc[4]),
	.d /* IN */ (gpu_din[4]),
	.g /* IN */ (iincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q iinc_inst_5
(
	.q /* OUT */ (iinc[5]),
	.d /* IN */ (gpu_din[5]),
	.g /* IN */ (iincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q iinc_inst_6
(
	.q /* OUT */ (iinc[6]),
	.d /* IN */ (gpu_din[6]),
	.g /* IN */ (iincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q iinc_inst_7
(
	.q /* OUT */ (iinc[7]),
	.d /* IN */ (gpu_din[7]),
	.g /* IN */ (iincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q iinc_inst_8
(
	.q /* OUT */ (iinc[8]),
	.d /* IN */ (gpu_din[8]),
	.g /* IN */ (iincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q iinc_inst_9
(
	.q /* OUT */ (iinc[9]),
	.d /* IN */ (gpu_din[9]),
	.g /* IN */ (iincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q iinc_inst_10
(
	.q /* OUT */ (iinc[10]),
	.d /* IN */ (gpu_din[10]),
	.g /* IN */ (iincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q iinc_inst_11
(
	.q /* OUT */ (iinc[11]),
	.d /* IN */ (gpu_din[11]),
	.g /* IN */ (iincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q iinc_inst_12
(
	.q /* OUT */ (iinc[12]),
	.d /* IN */ (gpu_din[12]),
	.g /* IN */ (iincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q iinc_inst_13
(
	.q /* OUT */ (iinc[13]),
	.d /* IN */ (gpu_din[13]),
	.g /* IN */ (iincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q iinc_inst_14
(
	.q /* OUT */ (iinc[14]),
	.d /* IN */ (gpu_din[14]),
	.g /* IN */ (iincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q iinc_inst_15
(
	.q /* OUT */ (iinc[15]),
	.d /* IN */ (gpu_din[15]),
	.g /* IN */ (iincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q iinc_inst_16
(
	.q /* OUT */ (iinc[16]),
	.d /* IN */ (gpu_din[16]),
	.g /* IN */ (iincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q iinc_inst_17
(
	.q /* OUT */ (iinc[17]),
	.d /* IN */ (gpu_din[17]),
	.g /* IN */ (iincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q iinc_inst_18
(
	.q /* OUT */ (iinc[18]),
	.d /* IN */ (gpu_din[18]),
	.g /* IN */ (iincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q iinc_inst_19
(
	.q /* OUT */ (iinc[19]),
	.d /* IN */ (gpu_din[19]),
	.g /* IN */ (iincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q iinc_inst_20
(
	.q /* OUT */ (iinc[20]),
	.d /* IN */ (gpu_din[20]),
	.g /* IN */ (iincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q iinc_inst_21
(
	.q /* OUT */ (iinc[21]),
	.d /* IN */ (gpu_din[21]),
	.g /* IN */ (iincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q iinc_inst_22
(
	.q /* OUT */ (iinc[22]),
	.d /* IN */ (gpu_din[22]),
	.g /* IN */ (iincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q iinc_inst_23
(
	.q /* OUT */ (iinc[23]),
	.d /* IN */ (gpu_din[23]),
	.g /* IN */ (iincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q iinc_inst_24
(
	.q /* OUT */ (iinc[24]),
	.d /* IN */ (gpu_din[24]),
	.g /* IN */ (iincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q iinc_inst_25
(
	.q /* OUT */ (iinc[25]),
	.d /* IN */ (gpu_din[25]),
	.g /* IN */ (iincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q iinc_inst_26
(
	.q /* OUT */ (iinc[26]),
	.d /* IN */ (gpu_din[26]),
	.g /* IN */ (iincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q iinc_inst_27
(
	.q /* OUT */ (iinc[27]),
	.d /* IN */ (gpu_din[27]),
	.g /* IN */ (iincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q iinc_inst_28
(
	.q /* OUT */ (iinc[28]),
	.d /* IN */ (gpu_din[28]),
	.g /* IN */ (iincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q iinc_inst_29
(
	.q /* OUT */ (iinc[29]),
	.d /* IN */ (gpu_din[29]),
	.g /* IN */ (iincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q iinc_inst_30
(
	.q /* OUT */ (iinc[30]),
	.d /* IN */ (gpu_din[30]),
	.g /* IN */ (iincldg),
	.sys_clk(sys_clk) // Generated
);
ldp1q iinc_inst_31
(
	.q /* OUT */ (iinc[31]),
	.d /* IN */ (gpu_din[31]),
	.g /* IN */ (iincldg),
	.sys_clk(sys_clk) // Generated
);

// DATA.NET (240) - datacomp : datacomp
datacomp datacomp_inst
(
	.dcomp_0 /* OUT */ (dcomp_0),
	.dcomp_1 /* OUT */ (dcomp_1),
	.dcomp_2 /* OUT */ (dcomp_2),
	.dcomp_3 /* OUT */ (dcomp_3),
	.dcomp_4 /* OUT */ (dcomp_4),
	.dcomp_5 /* OUT */ (dcomp_5),
	.dcomp_6 /* OUT */ (dcomp_6),
	.dcomp_7 /* OUT */ (dcomp_7),
	.cmpdst /* IN */ (cmpdst),
	.dstdlo /* IN */ ({dstd_0[0],dstd_0[1],dstd_0[2],dstd_0[3],dstd_0[4],dstd_0[5],dstd_0[6],dstd_0[7],dstd_0[8],dstd_0[9],dstd_0[10],dstd_0[11],dstd_0[12],dstd_0[13],dstd_0[14],dstd_0[15],dstd_0[16],dstd_0[17],dstd_0[18],dstd_0[19],dstd_0[20],dstd_0[21],dstd_0[22],dstd_0[23],dstd_0[24],dstd_0[25],dstd_0[26],dstd_0[27],dstd_0[28],dstd_0[29],dstd_0[30],dstd_0[31]}),
	.dstdhi /* IN */ ({dstd_1[0],dstd_1[1],dstd_1[2],dstd_1[3],dstd_1[4],dstd_1[5],dstd_1[6],dstd_1[7],dstd_1[8],dstd_1[9],dstd_1[10],dstd_1[11],dstd_1[12],dstd_1[13],dstd_1[14],dstd_1[15],dstd_1[16],dstd_1[17],dstd_1[18],dstd_1[19],dstd_1[20],dstd_1[21],dstd_1[22],dstd_1[23],dstd_1[24],dstd_1[25],dstd_1[26],dstd_1[27],dstd_1[28],dstd_1[29],dstd_1[30],dstd_1[31]}),
	.patdlo /* IN */ ({patd_0[0],patd_0[1],patd_0[2],patd_0[3],patd_0[4],patd_0[5],patd_0[6],patd_0[7],patd_0[8],patd_0[9],patd_0[10],patd_0[11],patd_0[12],patd_0[13],patd_0[14],patd_0[15],patd_0[16],patd_0[17],patd_0[18],patd_0[19],patd_0[20],patd_0[21],patd_0[22],patd_0[23],patd_0[24],patd_0[25],patd_0[26],patd_0[27],patd_0[28],patd_0[29],patd_0[30],patd_0[31]}),
	.patdhi /* IN */ ({patd_1[0],patd_1[1],patd_1[2],patd_1[3],patd_1[4],patd_1[5],patd_1[6],patd_1[7],patd_1[8],patd_1[9],patd_1[10],patd_1[11],patd_1[12],patd_1[13],patd_1[14],patd_1[15],patd_1[16],patd_1[17],patd_1[18],patd_1[19],patd_1[20],patd_1[21],patd_1[22],patd_1[23],patd_1[24],patd_1[25],patd_1[26],patd_1[27],patd_1[28],patd_1[29],patd_1[30],patd_1[31]}),
	.srcdlo /* IN */ ({srcdlo[0],srcdlo[1],srcdlo[2],srcdlo[3],srcdlo[4],srcdlo[5],srcdlo[6],srcdlo[7],srcdlo[8],srcdlo[9],srcdlo[10],srcdlo[11],srcdlo[12],srcdlo[13],srcdlo[14],srcdlo[15],srcdlo[16],srcdlo[17],srcdlo[18],srcdlo[19],srcdlo[20],srcdlo[21],srcdlo[22],srcdlo[23],srcdlo[24],srcdlo[25],srcdlo[26],srcdlo[27],srcdlo[28],srcdlo[29],srcdlo[30],srcdlo[31]}),
	.srcdhi /* IN */ ({srcdhi[0],srcdhi[1],srcdhi[2],srcdhi[3],srcdhi[4],srcdhi[5],srcdhi[6],srcdhi[7],srcdhi[8],srcdhi[9],srcdhi[10],srcdhi[11],srcdhi[12],srcdhi[13],srcdhi[14],srcdhi[15],srcdhi[16],srcdhi[17],srcdhi[18],srcdhi[19],srcdhi[20],srcdhi[21],srcdhi[22],srcdhi[23],srcdhi[24],srcdhi[25],srcdhi[26],srcdhi[27],srcdhi[28],srcdhi[29],srcdhi[30],srcdhi[31]})
);

// DATA.NET (245) - zedshift : zedshift
zedshift zedshift_inst
(
	.srczlo /* OUT */ ({srcz_0[0],srcz_0[1],srcz_0[2],srcz_0[3],srcz_0[4],srcz_0[5],srcz_0[6],srcz_0[7],srcz_0[8],srcz_0[9],srcz_0[10],srcz_0[11],srcz_0[12],srcz_0[13],srcz_0[14],srcz_0[15],srcz_0[16],srcz_0[17],srcz_0[18],srcz_0[19],srcz_0[20],srcz_0[21],srcz_0[22],srcz_0[23],srcz_0[24],srcz_0[25],srcz_0[26],srcz_0[27],srcz_0[28],srcz_0[29],srcz_0[30],srcz_0[31]}),
	.srczhi /* OUT */ ({srcz_1[0],srcz_1[1],srcz_1[2],srcz_1[3],srcz_1[4],srcz_1[5],srcz_1[6],srcz_1[7],srcz_1[8],srcz_1[9],srcz_1[10],srcz_1[11],srcz_1[12],srcz_1[13],srcz_1[14],srcz_1[15],srcz_1[16],srcz_1[17],srcz_1[18],srcz_1[19],srcz_1[20],srcz_1[21],srcz_1[22],srcz_1[23],srcz_1[24],srcz_1[25],srcz_1[26],srcz_1[27],srcz_1[28],srcz_1[29],srcz_1[30],srcz_1[31]}),
	.srcz1lo /* IN */ ({srcz1_0[0],srcz1_0[1],srcz1_0[2],srcz1_0[3],srcz1_0[4],srcz1_0[5],srcz1_0[6],srcz1_0[7],srcz1_0[8],srcz1_0[9],srcz1_0[10],srcz1_0[11],srcz1_0[12],srcz1_0[13],srcz1_0[14],srcz1_0[15],srcz1_0[16],srcz1_0[17],srcz1_0[18],srcz1_0[19],srcz1_0[20],srcz1_0[21],srcz1_0[22],srcz1_0[23],srcz1_0[24],srcz1_0[25],srcz1_0[26],srcz1_0[27],srcz1_0[28],srcz1_0[29],srcz1_0[30],srcz1_0[31]}),
	.srcz1hi /* IN */ ({srcz1_1[0],srcz1_1[1],srcz1_1[2],srcz1_1[3],srcz1_1[4],srcz1_1[5],srcz1_1[6],srcz1_1[7],srcz1_1[8],srcz1_1[9],srcz1_1[10],srcz1_1[11],srcz1_1[12],srcz1_1[13],srcz1_1[14],srcz1_1[15],srcz1_1[16],srcz1_1[17],srcz1_1[18],srcz1_1[19],srcz1_1[20],srcz1_1[21],srcz1_1[22],srcz1_1[23],srcz1_1[24],srcz1_1[25],srcz1_1[26],srcz1_1[27],srcz1_1[28],srcz1_1[29],srcz1_1[30],srcz1_1[31]}),
	.srcz2lo /* IN */ ({srcz2_0[0],srcz2_0[1],srcz2_0[2],srcz2_0[3],srcz2_0[4],srcz2_0[5],srcz2_0[6],srcz2_0[7],srcz2_0[8],srcz2_0[9],srcz2_0[10],srcz2_0[11],srcz2_0[12],srcz2_0[13],srcz2_0[14],srcz2_0[15],srcz2_0[16],srcz2_0[17],srcz2_0[18],srcz2_0[19],srcz2_0[20],srcz2_0[21],srcz2_0[22],srcz2_0[23],srcz2_0[24],srcz2_0[25],srcz2_0[26],srcz2_0[27],srcz2_0[28],srcz2_0[29],srcz2_0[30],srcz2_0[31]}),
	.srcz2hi /* IN */ ({srcz2_1[0],srcz2_1[1],srcz2_1[2],srcz2_1[3],srcz2_1[4],srcz2_1[5],srcz2_1[6],srcz2_1[7],srcz2_1[8],srcz2_1[9],srcz2_1[10],srcz2_1[11],srcz2_1[12],srcz2_1[13],srcz2_1[14],srcz2_1[15],srcz2_1[16],srcz2_1[17],srcz2_1[18],srcz2_1[19],srcz2_1[20],srcz2_1[21],srcz2_1[22],srcz2_1[23],srcz2_1[24],srcz2_1[25],srcz2_1[26],srcz2_1[27],srcz2_1[28],srcz2_1[29],srcz2_1[30],srcz2_1[31]}),
	.srcshift_4 /* IN */ (srcshift_4),
	.srcshift_5 /* IN */ (srcshift_5)
);

// DATA.NET (252) - zpipe0b[0-1] : nivu
assign zpipe0b_0 = zpipe_0;
assign zpipe0b_1 = zpipe_0;

// DATA.NET (253) - srczp[0] : mx2p
assign srczp_0[0] = (zpipe0b_0) ? srcz_0[0] : srczpt_0[0];
assign srczp_0[1] = (zpipe0b_0) ? srcz_0[1] : srczpt_0[1];
assign srczp_0[2] = (zpipe0b_0) ? srcz_0[2] : srczpt_0[2];
assign srczp_0[3] = (zpipe0b_0) ? srcz_0[3] : srczpt_0[3];
assign srczp_0[4] = (zpipe0b_0) ? srcz_0[4] : srczpt_0[4];
assign srczp_0[5] = (zpipe0b_0) ? srcz_0[5] : srczpt_0[5];
assign srczp_0[6] = (zpipe0b_0) ? srcz_0[6] : srczpt_0[6];
assign srczp_0[7] = (zpipe0b_0) ? srcz_0[7] : srczpt_0[7];
assign srczp_0[8] = (zpipe0b_0) ? srcz_0[8] : srczpt_0[8];
assign srczp_0[9] = (zpipe0b_0) ? srcz_0[9] : srczpt_0[9];
assign srczp_0[10] = (zpipe0b_0) ? srcz_0[10] : srczpt_0[10];
assign srczp_0[11] = (zpipe0b_0) ? srcz_0[11] : srczpt_0[11];
assign srczp_0[12] = (zpipe0b_0) ? srcz_0[12] : srczpt_0[12];
assign srczp_0[13] = (zpipe0b_0) ? srcz_0[13] : srczpt_0[13];
assign srczp_0[14] = (zpipe0b_0) ? srcz_0[14] : srczpt_0[14];
assign srczp_0[15] = (zpipe0b_0) ? srcz_0[15] : srczpt_0[15];
assign srczp_0[16] = (zpipe0b_0) ? srcz_0[16] : srczpt_0[16];
assign srczp_0[17] = (zpipe0b_0) ? srcz_0[17] : srczpt_0[17];
assign srczp_0[18] = (zpipe0b_0) ? srcz_0[18] : srczpt_0[18];
assign srczp_0[19] = (zpipe0b_0) ? srcz_0[19] : srczpt_0[19];
assign srczp_0[20] = (zpipe0b_0) ? srcz_0[20] : srczpt_0[20];
assign srczp_0[21] = (zpipe0b_0) ? srcz_0[21] : srczpt_0[21];
assign srczp_0[22] = (zpipe0b_0) ? srcz_0[22] : srczpt_0[22];
assign srczp_0[23] = (zpipe0b_0) ? srcz_0[23] : srczpt_0[23];
assign srczp_0[24] = (zpipe0b_0) ? srcz_0[24] : srczpt_0[24];
assign srczp_0[25] = (zpipe0b_0) ? srcz_0[25] : srczpt_0[25];
assign srczp_0[26] = (zpipe0b_0) ? srcz_0[26] : srczpt_0[26];
assign srczp_0[27] = (zpipe0b_0) ? srcz_0[27] : srczpt_0[27];
assign srczp_0[28] = (zpipe0b_0) ? srcz_0[28] : srczpt_0[28];
assign srczp_0[29] = (zpipe0b_0) ? srcz_0[29] : srczpt_0[29];
assign srczp_0[30] = (zpipe0b_0) ? srcz_0[30] : srczpt_0[30];
assign srczp_0[31] = (zpipe0b_0) ? srcz_0[31] : srczpt_0[31];

// DATA.NET (254) - srczp[1] : mx2p
assign srczp_1[0] = (zpipe0b_1) ? srcz_1[0] : srczpt_1[0];
assign srczp_1[1] = (zpipe0b_1) ? srcz_1[1] : srczpt_1[1];
assign srczp_1[2] = (zpipe0b_1) ? srcz_1[2] : srczpt_1[2];
assign srczp_1[3] = (zpipe0b_1) ? srcz_1[3] : srczpt_1[3];
assign srczp_1[4] = (zpipe0b_1) ? srcz_1[4] : srczpt_1[4];
assign srczp_1[5] = (zpipe0b_1) ? srcz_1[5] : srczpt_1[5];
assign srczp_1[6] = (zpipe0b_1) ? srcz_1[6] : srczpt_1[6];
assign srczp_1[7] = (zpipe0b_1) ? srcz_1[7] : srczpt_1[7];
assign srczp_1[8] = (zpipe0b_1) ? srcz_1[8] : srczpt_1[8];
assign srczp_1[9] = (zpipe0b_1) ? srcz_1[9] : srczpt_1[9];
assign srczp_1[10] = (zpipe0b_1) ? srcz_1[10] : srczpt_1[10];
assign srczp_1[11] = (zpipe0b_1) ? srcz_1[11] : srczpt_1[11];
assign srczp_1[12] = (zpipe0b_1) ? srcz_1[12] : srczpt_1[12];
assign srczp_1[13] = (zpipe0b_1) ? srcz_1[13] : srczpt_1[13];
assign srczp_1[14] = (zpipe0b_1) ? srcz_1[14] : srczpt_1[14];
assign srczp_1[15] = (zpipe0b_1) ? srcz_1[15] : srczpt_1[15];
assign srczp_1[16] = (zpipe0b_1) ? srcz_1[16] : srczpt_1[16];
assign srczp_1[17] = (zpipe0b_1) ? srcz_1[17] : srczpt_1[17];
assign srczp_1[18] = (zpipe0b_1) ? srcz_1[18] : srczpt_1[18];
assign srczp_1[19] = (zpipe0b_1) ? srcz_1[19] : srczpt_1[19];
assign srczp_1[20] = (zpipe0b_1) ? srcz_1[20] : srczpt_1[20];
assign srczp_1[21] = (zpipe0b_1) ? srcz_1[21] : srczpt_1[21];
assign srczp_1[22] = (zpipe0b_1) ? srcz_1[22] : srczpt_1[22];
assign srczp_1[23] = (zpipe0b_1) ? srcz_1[23] : srczpt_1[23];
assign srczp_1[24] = (zpipe0b_1) ? srcz_1[24] : srczpt_1[24];
assign srczp_1[25] = (zpipe0b_1) ? srcz_1[25] : srczpt_1[25];
assign srczp_1[26] = (zpipe0b_1) ? srcz_1[26] : srczpt_1[26];
assign srczp_1[27] = (zpipe0b_1) ? srcz_1[27] : srczpt_1[27];
assign srczp_1[28] = (zpipe0b_1) ? srcz_1[28] : srczpt_1[28];
assign srczp_1[29] = (zpipe0b_1) ? srcz_1[29] : srczpt_1[29];
assign srczp_1[30] = (zpipe0b_1) ? srcz_1[30] : srczpt_1[30];
assign srczp_1[31] = (zpipe0b_1) ? srcz_1[31] : srczpt_1[31];

// DATA.NET (255) - srczpt[0-1] : fd1q
fd1q srczpt_from_0_to_1_inst_0
(
	.q /* OUT */ (srczpt_0[0]),
	.d /* IN */ (srczp_0[0]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_1
(
	.q /* OUT */ (srczpt_0[1]),
	.d /* IN */ (srczp_0[1]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_2
(
	.q /* OUT */ (srczpt_0[2]),
	.d /* IN */ (srczp_0[2]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_3
(
	.q /* OUT */ (srczpt_0[3]),
	.d /* IN */ (srczp_0[3]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_4
(
	.q /* OUT */ (srczpt_0[4]),
	.d /* IN */ (srczp_0[4]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_5
(
	.q /* OUT */ (srczpt_0[5]),
	.d /* IN */ (srczp_0[5]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_6
(
	.q /* OUT */ (srczpt_0[6]),
	.d /* IN */ (srczp_0[6]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_7
(
	.q /* OUT */ (srczpt_0[7]),
	.d /* IN */ (srczp_0[7]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_8
(
	.q /* OUT */ (srczpt_0[8]),
	.d /* IN */ (srczp_0[8]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_9
(
	.q /* OUT */ (srczpt_0[9]),
	.d /* IN */ (srczp_0[9]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_10
(
	.q /* OUT */ (srczpt_0[10]),
	.d /* IN */ (srczp_0[10]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_11
(
	.q /* OUT */ (srczpt_0[11]),
	.d /* IN */ (srczp_0[11]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_12
(
	.q /* OUT */ (srczpt_0[12]),
	.d /* IN */ (srczp_0[12]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_13
(
	.q /* OUT */ (srczpt_0[13]),
	.d /* IN */ (srczp_0[13]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_14
(
	.q /* OUT */ (srczpt_0[14]),
	.d /* IN */ (srczp_0[14]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_15
(
	.q /* OUT */ (srczpt_0[15]),
	.d /* IN */ (srczp_0[15]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_16
(
	.q /* OUT */ (srczpt_0[16]),
	.d /* IN */ (srczp_0[16]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_17
(
	.q /* OUT */ (srczpt_0[17]),
	.d /* IN */ (srczp_0[17]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_18
(
	.q /* OUT */ (srczpt_0[18]),
	.d /* IN */ (srczp_0[18]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_19
(
	.q /* OUT */ (srczpt_0[19]),
	.d /* IN */ (srczp_0[19]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_20
(
	.q /* OUT */ (srczpt_0[20]),
	.d /* IN */ (srczp_0[20]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_21
(
	.q /* OUT */ (srczpt_0[21]),
	.d /* IN */ (srczp_0[21]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_22
(
	.q /* OUT */ (srczpt_0[22]),
	.d /* IN */ (srczp_0[22]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_23
(
	.q /* OUT */ (srczpt_0[23]),
	.d /* IN */ (srczp_0[23]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_24
(
	.q /* OUT */ (srczpt_0[24]),
	.d /* IN */ (srczp_0[24]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_25
(
	.q /* OUT */ (srczpt_0[25]),
	.d /* IN */ (srczp_0[25]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_26
(
	.q /* OUT */ (srczpt_0[26]),
	.d /* IN */ (srczp_0[26]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_27
(
	.q /* OUT */ (srczpt_0[27]),
	.d /* IN */ (srczp_0[27]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_28
(
	.q /* OUT */ (srczpt_0[28]),
	.d /* IN */ (srczp_0[28]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_29
(
	.q /* OUT */ (srczpt_0[29]),
	.d /* IN */ (srczp_0[29]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_30
(
	.q /* OUT */ (srczpt_0[30]),
	.d /* IN */ (srczp_0[30]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_31
(
	.q /* OUT */ (srczpt_0[31]),
	.d /* IN */ (srczp_0[31]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_32
(
	.q /* OUT */ (srczpt_1[0]),
	.d /* IN */ (srczp_1[0]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_33
(
	.q /* OUT */ (srczpt_1[1]),
	.d /* IN */ (srczp_1[1]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_34
(
	.q /* OUT */ (srczpt_1[2]),
	.d /* IN */ (srczp_1[2]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_35
(
	.q /* OUT */ (srczpt_1[3]),
	.d /* IN */ (srczp_1[3]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_36
(
	.q /* OUT */ (srczpt_1[4]),
	.d /* IN */ (srczp_1[4]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_37
(
	.q /* OUT */ (srczpt_1[5]),
	.d /* IN */ (srczp_1[5]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_38
(
	.q /* OUT */ (srczpt_1[6]),
	.d /* IN */ (srczp_1[6]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_39
(
	.q /* OUT */ (srczpt_1[7]),
	.d /* IN */ (srczp_1[7]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_40
(
	.q /* OUT */ (srczpt_1[8]),
	.d /* IN */ (srczp_1[8]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_41
(
	.q /* OUT */ (srczpt_1[9]),
	.d /* IN */ (srczp_1[9]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_42
(
	.q /* OUT */ (srczpt_1[10]),
	.d /* IN */ (srczp_1[10]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_43
(
	.q /* OUT */ (srczpt_1[11]),
	.d /* IN */ (srczp_1[11]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_44
(
	.q /* OUT */ (srczpt_1[12]),
	.d /* IN */ (srczp_1[12]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_45
(
	.q /* OUT */ (srczpt_1[13]),
	.d /* IN */ (srczp_1[13]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_46
(
	.q /* OUT */ (srczpt_1[14]),
	.d /* IN */ (srczp_1[14]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_47
(
	.q /* OUT */ (srczpt_1[15]),
	.d /* IN */ (srczp_1[15]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_48
(
	.q /* OUT */ (srczpt_1[16]),
	.d /* IN */ (srczp_1[16]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_49
(
	.q /* OUT */ (srczpt_1[17]),
	.d /* IN */ (srczp_1[17]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_50
(
	.q /* OUT */ (srczpt_1[18]),
	.d /* IN */ (srczp_1[18]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_51
(
	.q /* OUT */ (srczpt_1[19]),
	.d /* IN */ (srczp_1[19]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_52
(
	.q /* OUT */ (srczpt_1[20]),
	.d /* IN */ (srczp_1[20]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_53
(
	.q /* OUT */ (srczpt_1[21]),
	.d /* IN */ (srczp_1[21]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_54
(
	.q /* OUT */ (srczpt_1[22]),
	.d /* IN */ (srczp_1[22]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_55
(
	.q /* OUT */ (srczpt_1[23]),
	.d /* IN */ (srczp_1[23]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_56
(
	.q /* OUT */ (srczpt_1[24]),
	.d /* IN */ (srczp_1[24]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_57
(
	.q /* OUT */ (srczpt_1[25]),
	.d /* IN */ (srczp_1[25]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_58
(
	.q /* OUT */ (srczpt_1[26]),
	.d /* IN */ (srczp_1[26]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_59
(
	.q /* OUT */ (srczpt_1[27]),
	.d /* IN */ (srczp_1[27]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_60
(
	.q /* OUT */ (srczpt_1[28]),
	.d /* IN */ (srczp_1[28]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_61
(
	.q /* OUT */ (srczpt_1[29]),
	.d /* IN */ (srczp_1[29]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_62
(
	.q /* OUT */ (srczpt_1[30]),
	.d /* IN */ (srczp_1[30]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srczpt_from_0_to_1_inst_63
(
	.q /* OUT */ (srczpt_1[31]),
	.d /* IN */ (srczp_1[31]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DATA.NET (259) - zedcomp : zedcomp
zedcomp zedcomp_inst
(
	.zcomp_0 /* OUT */ (zcomp_0),
	.zcomp_1 /* OUT */ (zcomp_1),
	.zcomp_2 /* OUT */ (zcomp_2),
	.zcomp_3 /* OUT */ (zcomp_3),
	.srczplo /* IN */ ({srczp_0[0],srczp_0[1],srczp_0[2],srczp_0[3],srczp_0[4],srczp_0[5],srczp_0[6],srczp_0[7],srczp_0[8],srczp_0[9],srczp_0[10],srczp_0[11],srczp_0[12],srczp_0[13],srczp_0[14],srczp_0[15],srczp_0[16],srczp_0[17],srczp_0[18],srczp_0[19],srczp_0[20],srczp_0[21],srczp_0[22],srczp_0[23],srczp_0[24],srczp_0[25],srczp_0[26],srczp_0[27],srczp_0[28],srczp_0[29],srczp_0[30],srczp_0[31]}),
	.srczphi /* IN */ ({srczp_1[0],srczp_1[1],srczp_1[2],srczp_1[3],srczp_1[4],srczp_1[5],srczp_1[6],srczp_1[7],srczp_1[8],srczp_1[9],srczp_1[10],srczp_1[11],srczp_1[12],srczp_1[13],srczp_1[14],srczp_1[15],srczp_1[16],srczp_1[17],srczp_1[18],srczp_1[19],srczp_1[20],srczp_1[21],srczp_1[22],srczp_1[23],srczp_1[24],srczp_1[25],srczp_1[26],srczp_1[27],srczp_1[28],srczp_1[29],srczp_1[30],srczp_1[31]}),
	.dstzlo /* IN */ ({dstz_0[0],dstz_0[1],dstz_0[2],dstz_0[3],dstz_0[4],dstz_0[5],dstz_0[6],dstz_0[7],dstz_0[8],dstz_0[9],dstz_0[10],dstz_0[11],dstz_0[12],dstz_0[13],dstz_0[14],dstz_0[15],dstz_0[16],dstz_0[17],dstz_0[18],dstz_0[19],dstz_0[20],dstz_0[21],dstz_0[22],dstz_0[23],dstz_0[24],dstz_0[25],dstz_0[26],dstz_0[27],dstz_0[28],dstz_0[29],dstz_0[30],dstz_0[31]}),
	.dstzhi /* IN */ ({dstz_1[0],dstz_1[1],dstz_1[2],dstz_1[3],dstz_1[4],dstz_1[5],dstz_1[6],dstz_1[7],dstz_1[8],dstz_1[9],dstz_1[10],dstz_1[11],dstz_1[12],dstz_1[13],dstz_1[14],dstz_1[15],dstz_1[16],dstz_1[17],dstz_1[18],dstz_1[19],dstz_1[20],dstz_1[21],dstz_1[22],dstz_1[23],dstz_1[24],dstz_1[25],dstz_1[26],dstz_1[27],dstz_1[28],dstz_1[29],dstz_1[30],dstz_1[31]}),
	.zmode_0 /* IN */ (zmode_0),
	.zmode_1 /* IN */ (zmode_1),
	.zmode_2 /* IN */ (zmode_2)
);

// DATA.NET (267) - zpipe1b[0-1] : nivu
assign zpipe1b_0 = zpipe_1;
assign zpipe1b_1 = zpipe_1;

// DATA.NET (268) - srczo[0-1] : fdsync32
fdsync32 srczo_from_0_to_1_inst_0
(
	.q /* OUT */ ({srczo_0[0],srczo_0[1],srczo_0[2],srczo_0[3],srczo_0[4],srczo_0[5],srczo_0[6],srczo_0[7],srczo_0[8],srczo_0[9],srczo_0[10],srczo_0[11],srczo_0[12],srczo_0[13],srczo_0[14],srczo_0[15],srczo_0[16],srczo_0[17],srczo_0[18],srczo_0[19],srczo_0[20],srczo_0[21],srczo_0[22],srczo_0[23],srczo_0[24],srczo_0[25],srczo_0[26],srczo_0[27],srczo_0[28],srczo_0[29],srczo_0[30],srczo_0[31]}),
	.d /* IN */ ({srczp_0[0],srczp_0[1],srczp_0[2],srczp_0[3],srczp_0[4],srczp_0[5],srczp_0[6],srczp_0[7],srczp_0[8],srczp_0[9],srczp_0[10],srczp_0[11],srczp_0[12],srczp_0[13],srczp_0[14],srczp_0[15],srczp_0[16],srczp_0[17],srczp_0[18],srczp_0[19],srczp_0[20],srczp_0[21],srczp_0[22],srczp_0[23],srczp_0[24],srczp_0[25],srczp_0[26],srczp_0[27],srczp_0[28],srczp_0[29],srczp_0[30],srczp_0[31]}),
	.ld /* IN */ (zpipe1b_0),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fdsync32 srczo_from_0_to_1_inst_1
(
	.q /* OUT */ ({srczo_1[0],srczo_1[1],srczo_1[2],srczo_1[3],srczo_1[4],srczo_1[5],srczo_1[6],srczo_1[7],srczo_1[8],srczo_1[9],srczo_1[10],srczo_1[11],srczo_1[12],srczo_1[13],srczo_1[14],srczo_1[15],srczo_1[16],srczo_1[17],srczo_1[18],srczo_1[19],srczo_1[20],srczo_1[21],srczo_1[22],srczo_1[23],srczo_1[24],srczo_1[25],srczo_1[26],srczo_1[27],srczo_1[28],srczo_1[29],srczo_1[30],srczo_1[31]}),
	.d /* IN */ ({srczp_1[0],srczp_1[1],srczp_1[2],srczp_1[3],srczp_1[4],srczp_1[5],srczp_1[6],srczp_1[7],srczp_1[8],srczp_1[9],srczp_1[10],srczp_1[11],srczp_1[12],srczp_1[13],srczp_1[14],srczp_1[15],srczp_1[16],srczp_1[17],srczp_1[18],srczp_1[19],srczp_1[20],srczp_1[21],srczp_1[22],srczp_1[23],srczp_1[24],srczp_1[25],srczp_1[26],srczp_1[27],srczp_1[28],srczp_1[29],srczp_1[30],srczp_1[31]}),
	.ld /* IN */ (zpipe1b_1),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DATA.NET (273) - addamux : daddamux
daddamux addamux_inst
(
	.adda_0 /* OUT */ ({adda_0[0],adda_0[1],adda_0[2],adda_0[3],adda_0[4],adda_0[5],adda_0[6],adda_0[7],adda_0[8],adda_0[9],adda_0[10],adda_0[11],adda_0[12],adda_0[13],adda_0[14],adda_0[15]}),
	.adda_1 /* OUT */ ({adda_1[0],adda_1[1],adda_1[2],adda_1[3],adda_1[4],adda_1[5],adda_1[6],adda_1[7],adda_1[8],adda_1[9],adda_1[10],adda_1[11],adda_1[12],adda_1[13],adda_1[14],adda_1[15]}),
	.adda_2 /* OUT */ ({adda_2[0],adda_2[1],adda_2[2],adda_2[3],adda_2[4],adda_2[5],adda_2[6],adda_2[7],adda_2[8],adda_2[9],adda_2[10],adda_2[11],adda_2[12],adda_2[13],adda_2[14],adda_2[15]}),
	.adda_3 /* OUT */ ({adda_3[0],adda_3[1],adda_3[2],adda_3[3],adda_3[4],adda_3[5],adda_3[6],adda_3[7],adda_3[8],adda_3[9],adda_3[10],adda_3[11],adda_3[12],adda_3[13],adda_3[14],adda_3[15]}),
	.dstd_0 /* IN */ ({dstd_0[0],dstd_0[1],dstd_0[2],dstd_0[3],dstd_0[4],dstd_0[5],dstd_0[6],dstd_0[7],dstd_0[8],dstd_0[9],dstd_0[10],dstd_0[11],dstd_0[12],dstd_0[13],dstd_0[14],dstd_0[15],dstd_0[16],dstd_0[17],dstd_0[18],dstd_0[19],dstd_0[20],dstd_0[21],dstd_0[22],dstd_0[23],dstd_0[24],dstd_0[25],dstd_0[26],dstd_0[27],dstd_0[28],dstd_0[29],dstd_0[30],dstd_0[31]}),
	.dstd_1 /* IN */ ({dstd_1[0],dstd_1[1],dstd_1[2],dstd_1[3],dstd_1[4],dstd_1[5],dstd_1[6],dstd_1[7],dstd_1[8],dstd_1[9],dstd_1[10],dstd_1[11],dstd_1[12],dstd_1[13],dstd_1[14],dstd_1[15],dstd_1[16],dstd_1[17],dstd_1[18],dstd_1[19],dstd_1[20],dstd_1[21],dstd_1[22],dstd_1[23],dstd_1[24],dstd_1[25],dstd_1[26],dstd_1[27],dstd_1[28],dstd_1[29],dstd_1[30],dstd_1[31]}),
	.srcd_0 /* IN */ ({srcdlo[0],srcdlo[1],srcdlo[2],srcdlo[3],srcdlo[4],srcdlo[5],srcdlo[6],srcdlo[7],srcdlo[8],srcdlo[9],srcdlo[10],srcdlo[11],srcdlo[12],srcdlo[13],srcdlo[14],srcdlo[15],srcdlo[16],srcdlo[17],srcdlo[18],srcdlo[19],srcdlo[20],srcdlo[21],srcdlo[22],srcdlo[23],srcdlo[24],srcdlo[25],srcdlo[26],srcdlo[27],srcdlo[28],srcdlo[29],srcdlo[30],srcdlo[31]}),
	.srcd_1 /* IN */ ({srcdhi[0],srcdhi[1],srcdhi[2],srcdhi[3],srcdhi[4],srcdhi[5],srcdhi[6],srcdhi[7],srcdhi[8],srcdhi[9],srcdhi[10],srcdhi[11],srcdhi[12],srcdhi[13],srcdhi[14],srcdhi[15],srcdhi[16],srcdhi[17],srcdhi[18],srcdhi[19],srcdhi[20],srcdhi[21],srcdhi[22],srcdhi[23],srcdhi[24],srcdhi[25],srcdhi[26],srcdhi[27],srcdhi[28],srcdhi[29],srcdhi[30],srcdhi[31]}),
	.patd_0 /* IN */ ({patdu_0[0],patdu_0[1],patdu_0[2],patdu_0[3],patdu_0[4],patdu_0[5],patdu_0[6],patdu_0[7],patdu_0[8],patdu_0[9],patdu_0[10],patdu_0[11],patdu_0[12],patdu_0[13],patdu_0[14],patdu_0[15],patdu_0[16],patdu_0[17],patdu_0[18],patdu_0[19],patdu_0[20],patdu_0[21],patdu_0[22],patdu_0[23],patdu_0[24],patdu_0[25],patdu_0[26],patdu_0[27],patdu_0[28],patdu_0[29],patdu_0[30],patdu_0[31]}),
	.patd_1 /* IN */ ({patdu_1[0],patdu_1[1],patdu_1[2],patdu_1[3],patdu_1[4],patdu_1[5],patdu_1[6],patdu_1[7],patdu_1[8],patdu_1[9],patdu_1[10],patdu_1[11],patdu_1[12],patdu_1[13],patdu_1[14],patdu_1[15],patdu_1[16],patdu_1[17],patdu_1[18],patdu_1[19],patdu_1[20],patdu_1[21],patdu_1[22],patdu_1[23],patdu_1[24],patdu_1[25],patdu_1[26],patdu_1[27],patdu_1[28],patdu_1[29],patdu_1[30],patdu_1[31]}),
	.srcz1_0 /* IN */ ({srcz1_0[0],srcz1_0[1],srcz1_0[2],srcz1_0[3],srcz1_0[4],srcz1_0[5],srcz1_0[6],srcz1_0[7],srcz1_0[8],srcz1_0[9],srcz1_0[10],srcz1_0[11],srcz1_0[12],srcz1_0[13],srcz1_0[14],srcz1_0[15],srcz1_0[16],srcz1_0[17],srcz1_0[18],srcz1_0[19],srcz1_0[20],srcz1_0[21],srcz1_0[22],srcz1_0[23],srcz1_0[24],srcz1_0[25],srcz1_0[26],srcz1_0[27],srcz1_0[28],srcz1_0[29],srcz1_0[30],srcz1_0[31]}),
	.srcz1_1 /* IN */ ({srcz1_1[0],srcz1_1[1],srcz1_1[2],srcz1_1[3],srcz1_1[4],srcz1_1[5],srcz1_1[6],srcz1_1[7],srcz1_1[8],srcz1_1[9],srcz1_1[10],srcz1_1[11],srcz1_1[12],srcz1_1[13],srcz1_1[14],srcz1_1[15],srcz1_1[16],srcz1_1[17],srcz1_1[18],srcz1_1[19],srcz1_1[20],srcz1_1[21],srcz1_1[22],srcz1_1[23],srcz1_1[24],srcz1_1[25],srcz1_1[26],srcz1_1[27],srcz1_1[28],srcz1_1[29],srcz1_1[30],srcz1_1[31]}),
	.srcz2_0 /* IN */ ({srcz2_0[0],srcz2_0[1],srcz2_0[2],srcz2_0[3],srcz2_0[4],srcz2_0[5],srcz2_0[6],srcz2_0[7],srcz2_0[8],srcz2_0[9],srcz2_0[10],srcz2_0[11],srcz2_0[12],srcz2_0[13],srcz2_0[14],srcz2_0[15],srcz2_0[16],srcz2_0[17],srcz2_0[18],srcz2_0[19],srcz2_0[20],srcz2_0[21],srcz2_0[22],srcz2_0[23],srcz2_0[24],srcz2_0[25],srcz2_0[26],srcz2_0[27],srcz2_0[28],srcz2_0[29],srcz2_0[30],srcz2_0[31]}),
	.srcz2_1 /* IN */ ({srcz2_1[0],srcz2_1[1],srcz2_1[2],srcz2_1[3],srcz2_1[4],srcz2_1[5],srcz2_1[6],srcz2_1[7],srcz2_1[8],srcz2_1[9],srcz2_1[10],srcz2_1[11],srcz2_1[12],srcz2_1[13],srcz2_1[14],srcz2_1[15],srcz2_1[16],srcz2_1[17],srcz2_1[18],srcz2_1[19],srcz2_1[20],srcz2_1[21],srcz2_1[22],srcz2_1[23],srcz2_1[24],srcz2_1[25],srcz2_1[26],srcz2_1[27],srcz2_1[28],srcz2_1[29],srcz2_1[30],srcz2_1[31]}),
	.daddasel_0 /* IN */ (daddasel_0),
	.daddasel_1 /* IN */ (daddasel_1),
	.daddasel_2 /* IN */ (daddasel_2)
);

// DATA.NET (279) - addbmux : daddbmux
daddbmux addbmux_inst
(
	.addb_0 /* OUT */ ({addb_0[0],addb_0[1],addb_0[2],addb_0[3],addb_0[4],addb_0[5],addb_0[6],addb_0[7],addb_0[8],addb_0[9],addb_0[10],addb_0[11],addb_0[12],addb_0[13],addb_0[14],addb_0[15]}),
	.addb_1 /* OUT */ ({addb_1[0],addb_1[1],addb_1[2],addb_1[3],addb_1[4],addb_1[5],addb_1[6],addb_1[7],addb_1[8],addb_1[9],addb_1[10],addb_1[11],addb_1[12],addb_1[13],addb_1[14],addb_1[15]}),
	.addb_2 /* OUT */ ({addb_2[0],addb_2[1],addb_2[2],addb_2[3],addb_2[4],addb_2[5],addb_2[6],addb_2[7],addb_2[8],addb_2[9],addb_2[10],addb_2[11],addb_2[12],addb_2[13],addb_2[14],addb_2[15]}),
	.addb_3 /* OUT */ ({addb_3[0],addb_3[1],addb_3[2],addb_3[3],addb_3[4],addb_3[5],addb_3[6],addb_3[7],addb_3[8],addb_3[9],addb_3[10],addb_3[11],addb_3[12],addb_3[13],addb_3[14],addb_3[15]}),
	.srcdlo /* IN */ ({srcdlo[0],srcdlo[1],srcdlo[2],srcdlo[3],srcdlo[4],srcdlo[5],srcdlo[6],srcdlo[7],srcdlo[8],srcdlo[9],srcdlo[10],srcdlo[11],srcdlo[12],srcdlo[13],srcdlo[14],srcdlo[15],srcdlo[16],srcdlo[17],srcdlo[18],srcdlo[19],srcdlo[20],srcdlo[21],srcdlo[22],srcdlo[23],srcdlo[24],srcdlo[25],srcdlo[26],srcdlo[27],srcdlo[28],srcdlo[29],srcdlo[30],srcdlo[31]}),
	.srcdhi /* IN */ ({srcdhi[0],srcdhi[1],srcdhi[2],srcdhi[3],srcdhi[4],srcdhi[5],srcdhi[6],srcdhi[7],srcdhi[8],srcdhi[9],srcdhi[10],srcdhi[11],srcdhi[12],srcdhi[13],srcdhi[14],srcdhi[15],srcdhi[16],srcdhi[17],srcdhi[18],srcdhi[19],srcdhi[20],srcdhi[21],srcdhi[22],srcdhi[23],srcdhi[24],srcdhi[25],srcdhi[26],srcdhi[27],srcdhi[28],srcdhi[29],srcdhi[30],srcdhi[31]}),
	.iinc /* IN */ ({iinc[0],iinc[1],iinc[2],iinc[3],iinc[4],iinc[5],iinc[6],iinc[7],iinc[8],iinc[9],iinc[10],iinc[11],iinc[12],iinc[13],iinc[14],iinc[15],iinc[16],iinc[17],iinc[18],iinc[19],iinc[20],iinc[21],iinc[22],iinc[23],iinc[24],iinc[25],iinc[26],iinc[27],iinc[28],iinc[29],iinc[30],iinc[31]}),
	.zinc /* IN */ ({zinc[0],zinc[1],zinc[2],zinc[3],zinc[4],zinc[5],zinc[6],zinc[7],zinc[8],zinc[9],zinc[10],zinc[11],zinc[12],zinc[13],zinc[14],zinc[15],zinc[16],zinc[17],zinc[18],zinc[19],zinc[20],zinc[21],zinc[22],zinc[23],zinc[24],zinc[25],zinc[26],zinc[27],zinc[28],zinc[29],zinc[30],zinc[31]}),
	.daddbsel_0 /* IN */ (daddbsel_0),
	.daddbsel_1 /* IN */ (daddbsel_1),
	.daddbsel_2 /* IN */ (daddbsel_2)
);

// DATA.NET (284) - addarray : addarray
addarray addarray_inst
(
	.addq_0 /* OUT */ ({addq_0[0],addq_0[1],addq_0[2],addq_0[3],addq_0[4],addq_0[5],addq_0[6],addq_0[7],addq_0[8],addq_0[9],addq_0[10],addq_0[11],addq_0[12],addq_0[13],addq_0[14],addq_0[15]}),
	.addq_1 /* OUT */ ({addq_1[0],addq_1[1],addq_1[2],addq_1[3],addq_1[4],addq_1[5],addq_1[6],addq_1[7],addq_1[8],addq_1[9],addq_1[10],addq_1[11],addq_1[12],addq_1[13],addq_1[14],addq_1[15]}),
	.addq_2 /* OUT */ ({addq_2[0],addq_2[1],addq_2[2],addq_2[3],addq_2[4],addq_2[5],addq_2[6],addq_2[7],addq_2[8],addq_2[9],addq_2[10],addq_2[11],addq_2[12],addq_2[13],addq_2[14],addq_2[15]}),
	.addq_3 /* OUT */ ({addq_3[0],addq_3[1],addq_3[2],addq_3[3],addq_3[4],addq_3[5],addq_3[6],addq_3[7],addq_3[8],addq_3[9],addq_3[10],addq_3[11],addq_3[12],addq_3[13],addq_3[14],addq_3[15]}),
	.adda_0 /* IN */ ({adda_0[0],adda_0[1],adda_0[2],adda_0[3],adda_0[4],adda_0[5],adda_0[6],adda_0[7],adda_0[8],adda_0[9],adda_0[10],adda_0[11],adda_0[12],adda_0[13],adda_0[14],adda_0[15]}),
	.adda_1 /* IN */ ({adda_1[0],adda_1[1],adda_1[2],adda_1[3],adda_1[4],adda_1[5],adda_1[6],adda_1[7],adda_1[8],adda_1[9],adda_1[10],adda_1[11],adda_1[12],adda_1[13],adda_1[14],adda_1[15]}),
	.adda_2 /* IN */ ({adda_2[0],adda_2[1],adda_2[2],adda_2[3],adda_2[4],adda_2[5],adda_2[6],adda_2[7],adda_2[8],adda_2[9],adda_2[10],adda_2[11],adda_2[12],adda_2[13],adda_2[14],adda_2[15]}),
	.adda_3 /* IN */ ({adda_3[0],adda_3[1],adda_3[2],adda_3[3],adda_3[4],adda_3[5],adda_3[6],adda_3[7],adda_3[8],adda_3[9],adda_3[10],adda_3[11],adda_3[12],adda_3[13],adda_3[14],adda_3[15]}),
	.addb_0 /* IN */ ({addb_0[0],addb_0[1],addb_0[2],addb_0[3],addb_0[4],addb_0[5],addb_0[6],addb_0[7],addb_0[8],addb_0[9],addb_0[10],addb_0[11],addb_0[12],addb_0[13],addb_0[14],addb_0[15]}),
	.addb_1 /* IN */ ({addb_1[0],addb_1[1],addb_1[2],addb_1[3],addb_1[4],addb_1[5],addb_1[6],addb_1[7],addb_1[8],addb_1[9],addb_1[10],addb_1[11],addb_1[12],addb_1[13],addb_1[14],addb_1[15]}),
	.addb_2 /* IN */ ({addb_2[0],addb_2[1],addb_2[2],addb_2[3],addb_2[4],addb_2[5],addb_2[6],addb_2[7],addb_2[8],addb_2[9],addb_2[10],addb_2[11],addb_2[12],addb_2[13],addb_2[14],addb_2[15]}),
	.addb_3 /* IN */ ({addb_3[0],addb_3[1],addb_3[2],addb_3[3],addb_3[4],addb_3[5],addb_3[6],addb_3[7],addb_3[8],addb_3[9],addb_3[10],addb_3[11],addb_3[12],addb_3[13],addb_3[14],addb_3[15]}),
	.daddmode_0 /* IN */ (daddmode_0),
	.daddmode_1 /* IN */ (daddmode_1),
	.daddmode_2 /* IN */ (daddmode_2),
	.clk_0 /* IN */ (clk),
	.reset_n /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// DATA.NET (289) - data_local : local_mux
local_mux data_local_inst
(
	.local_data_0 /* OUT */ ({local_data_0[0],local_data_0[1],local_data_0[2],local_data_0[3],local_data_0[4],local_data_0[5],local_data_0[6],local_data_0[7],local_data_0[8],local_data_0[9],local_data_0[10],local_data_0[11],local_data_0[12],local_data_0[13],local_data_0[14],local_data_0[15],local_data_0[16],local_data_0[17],local_data_0[18],local_data_0[19],local_data_0[20],local_data_0[21],local_data_0[22],local_data_0[23],local_data_0[24],local_data_0[25],local_data_0[26],local_data_0[27],local_data_0[28],local_data_0[29],local_data_0[30],local_data_0[31]}),
	.local_data_1 /* OUT */ ({local_data_1[0],local_data_1[1],local_data_1[2],local_data_1[3],local_data_1[4],local_data_1[5],local_data_1[6],local_data_1[7],local_data_1[8],local_data_1[9],local_data_1[10],local_data_1[11],local_data_1[12],local_data_1[13],local_data_1[14],local_data_1[15],local_data_1[16],local_data_1[17],local_data_1[18],local_data_1[19],local_data_1[20],local_data_1[21],local_data_1[22],local_data_1[23],local_data_1[24],local_data_1[25],local_data_1[26],local_data_1[27],local_data_1[28],local_data_1[29],local_data_1[30],local_data_1[31]}),
	.load_data_0 /* OUT */ ({load_data_0[0],load_data_0[1],load_data_0[2],load_data_0[3],load_data_0[4],load_data_0[5],load_data_0[6],load_data_0[7],load_data_0[8],load_data_0[9],load_data_0[10],load_data_0[11],load_data_0[12],load_data_0[13],load_data_0[14],load_data_0[15],load_data_0[16],load_data_0[17],load_data_0[18],load_data_0[19],load_data_0[20],load_data_0[21],load_data_0[22],load_data_0[23],load_data_0[24],load_data_0[25],load_data_0[26],load_data_0[27],load_data_0[28],load_data_0[29],load_data_0[30],load_data_0[31]}),
	.load_data_1 /* OUT */ ({load_data_1[0],load_data_1[1],load_data_1[2],load_data_1[3],load_data_1[4],load_data_1[5],load_data_1[6],load_data_1[7],load_data_1[8],load_data_1[9],load_data_1[10],load_data_1[11],load_data_1[12],load_data_1[13],load_data_1[14],load_data_1[15],load_data_1[16],load_data_1[17],load_data_1[18],load_data_1[19],load_data_1[20],load_data_1[21],load_data_1[22],load_data_1[23],load_data_1[24],load_data_1[25],load_data_1[26],load_data_1[27],load_data_1[28],load_data_1[29],load_data_1[30],load_data_1[31]}),
	.addq_0 /* IN */ ({addq_0[0],addq_0[1],addq_0[2],addq_0[3],addq_0[4],addq_0[5],addq_0[6],addq_0[7],addq_0[8],addq_0[9],addq_0[10],addq_0[11],addq_0[12],addq_0[13],addq_0[14],addq_0[15]}),
	.addq_1 /* IN */ ({addq_1[0],addq_1[1],addq_1[2],addq_1[3],addq_1[4],addq_1[5],addq_1[6],addq_1[7],addq_1[8],addq_1[9],addq_1[10],addq_1[11],addq_1[12],addq_1[13],addq_1[14],addq_1[15]}),
	.addq_2 /* IN */ ({addq_2[0],addq_2[1],addq_2[2],addq_2[3],addq_2[4],addq_2[5],addq_2[6],addq_2[7],addq_2[8],addq_2[9],addq_2[10],addq_2[11],addq_2[12],addq_2[13],addq_2[14],addq_2[15]}),
	.addq_3 /* IN */ ({addq_3[0],addq_3[1],addq_3[2],addq_3[3],addq_3[4],addq_3[5],addq_3[6],addq_3[7],addq_3[8],addq_3[9],addq_3[10],addq_3[11],addq_3[12],addq_3[13],addq_3[14],addq_3[15]}),
	.gpu_din /* IN */ ({gpu_din[0],gpu_din[1],gpu_din[2],gpu_din[3],gpu_din[4],gpu_din[5],gpu_din[6],gpu_din[7],gpu_din[8],gpu_din[9],gpu_din[10],gpu_din[11],gpu_din[12],gpu_din[13],gpu_din[14],gpu_din[15],gpu_din[16],gpu_din[17],gpu_din[18],gpu_din[19],gpu_din[20],gpu_din[21],gpu_din[22],gpu_din[23],gpu_din[24],gpu_din[25],gpu_din[26],gpu_din[27],gpu_din[28],gpu_din[29],gpu_din[30],gpu_din[31]}),
	.data_0 /* IN */ (data_0),
	.data_1 /* IN */ (data_1),
	.data_2 /* IN */ (data_2),
	.data_3 /* IN */ (data_3),
	.data_4 /* IN */ (data_4),
	.data_5 /* IN */ (data_5),
	.data_6 /* IN */ (data_6),
	.data_7 /* IN */ (data_7),
	.data_8 /* IN */ (data_8),
	.data_9 /* IN */ (data_9),
	.data_10 /* IN */ (data_10),
	.data_11 /* IN */ (data_11),
	.data_12 /* IN */ (data_12),
	.data_13 /* IN */ (data_13),
	.data_14 /* IN */ (data_14),
	.data_15 /* IN */ (data_15),
	.data_16 /* IN */ (data_16),
	.data_17 /* IN */ (data_17),
	.data_18 /* IN */ (data_18),
	.data_19 /* IN */ (data_19),
	.data_20 /* IN */ (data_20),
	.data_21 /* IN */ (data_21),
	.data_22 /* IN */ (data_22),
	.data_23 /* IN */ (data_23),
	.data_24 /* IN */ (data_24),
	.data_25 /* IN */ (data_25),
	.data_26 /* IN */ (data_26),
	.data_27 /* IN */ (data_27),
	.data_28 /* IN */ (data_28),
	.data_29 /* IN */ (data_29),
	.data_30 /* IN */ (data_30),
	.data_31 /* IN */ (data_31),
	.data_32 /* IN */ (data_32),
	.data_33 /* IN */ (data_33),
	.data_34 /* IN */ (data_34),
	.data_35 /* IN */ (data_35),
	.data_36 /* IN */ (data_36),
	.data_37 /* IN */ (data_37),
	.data_38 /* IN */ (data_38),
	.data_39 /* IN */ (data_39),
	.data_40 /* IN */ (data_40),
	.data_41 /* IN */ (data_41),
	.data_42 /* IN */ (data_42),
	.data_43 /* IN */ (data_43),
	.data_44 /* IN */ (data_44),
	.data_45 /* IN */ (data_45),
	.data_46 /* IN */ (data_46),
	.data_47 /* IN */ (data_47),
	.data_48 /* IN */ (data_48),
	.data_49 /* IN */ (data_49),
	.data_50 /* IN */ (data_50),
	.data_51 /* IN */ (data_51),
	.data_52 /* IN */ (data_52),
	.data_53 /* IN */ (data_53),
	.data_54 /* IN */ (data_54),
	.data_55 /* IN */ (data_55),
	.data_56 /* IN */ (data_56),
	.data_57 /* IN */ (data_57),
	.data_58 /* IN */ (data_58),
	.data_59 /* IN */ (data_59),
	.data_60 /* IN */ (data_60),
	.data_61 /* IN */ (data_61),
	.data_62 /* IN */ (data_62),
	.data_63 /* IN */ (data_63),
	.blit_back /* IN */ (blit_back),
	.blit_breq_0 /* IN */ (blit_breq_0),
	.blit_breq_1 /* IN */ (blit_breq_1),
	.daddq_sel /* IN */ (daddq_sel)
);

// DATA.NET (292) - local_data0 : join
assign local_data0[0] = local_data_0[0];
assign local_data0[1] = local_data_0[1];
assign local_data0[2] = local_data_0[2];
assign local_data0[3] = local_data_0[3];
assign local_data0[4] = local_data_0[4];
assign local_data0[5] = local_data_0[5];
assign local_data0[6] = local_data_0[6];
assign local_data0[7] = local_data_0[7];
assign local_data0[8] = local_data_0[8];
assign local_data0[9] = local_data_0[9];
assign local_data0[10] = local_data_0[10];
assign local_data0[11] = local_data_0[11];
assign local_data0[12] = local_data_0[12];
assign local_data0[13] = local_data_0[13];
assign local_data0[14] = local_data_0[14];
assign local_data0[15] = local_data_0[15];
assign local_data0[16] = local_data_0[16];
assign local_data0[17] = local_data_0[17];
assign local_data0[18] = local_data_0[18];
assign local_data0[19] = local_data_0[19];
assign local_data0[20] = local_data_0[20];
assign local_data0[21] = local_data_0[21];
assign local_data0[22] = local_data_0[22];
assign local_data0[23] = local_data_0[23];
assign local_data0[24] = local_data_0[24];
assign local_data0[25] = local_data_0[25];
assign local_data0[26] = local_data_0[26];
assign local_data0[27] = local_data_0[27];
assign local_data0[28] = local_data_0[28];
assign local_data0[29] = local_data_0[29];
assign local_data0[30] = local_data_0[30];
assign local_data0[31] = local_data_0[31];

// DATA.NET (293) - local_data1 : join
assign local_data1[0] = local_data_1[0];
assign local_data1[1] = local_data_1[1];
assign local_data1[2] = local_data_1[2];
assign local_data1[3] = local_data_1[3];
assign local_data1[4] = local_data_1[4];
assign local_data1[5] = local_data_1[5];
assign local_data1[6] = local_data_1[6];
assign local_data1[7] = local_data_1[7];
assign local_data1[8] = local_data_1[8];
assign local_data1[9] = local_data_1[9];
assign local_data1[10] = local_data_1[10];
assign local_data1[11] = local_data_1[11];
assign local_data1[12] = local_data_1[12];
assign local_data1[13] = local_data_1[13];
assign local_data1[14] = local_data_1[14];
assign local_data1[15] = local_data_1[15];
assign local_data1[16] = local_data_1[16];
assign local_data1[17] = local_data_1[17];
assign local_data1[18] = local_data_1[18];
assign local_data1[19] = local_data_1[19];
assign local_data1[20] = local_data_1[20];
assign local_data1[21] = local_data_1[21];
assign local_data1[22] = local_data_1[22];
assign local_data1[23] = local_data_1[23];
assign local_data1[24] = local_data_1[24];
assign local_data1[25] = local_data_1[25];
assign local_data1[26] = local_data_1[26];
assign local_data1[27] = local_data_1[27];
assign local_data1[28] = local_data_1[28];
assign local_data1[29] = local_data_1[29];
assign local_data1[30] = local_data_1[30];
assign local_data1[31] = local_data_1[31];

// DATA.NET (294) - local_data0lo : join
assign local_data0lo[0] = local_data0[0];
assign local_data0lo[1] = local_data0[1];
assign local_data0lo[2] = local_data0[2];
assign local_data0lo[3] = local_data0[3];
assign local_data0lo[4] = local_data0[4];
assign local_data0lo[5] = local_data0[5];
assign local_data0lo[6] = local_data0[6];
assign local_data0lo[7] = local_data0[7];
assign local_data0lo[8] = local_data0[8];
assign local_data0lo[9] = local_data0[9];
assign local_data0lo[10] = local_data0[10];
assign local_data0lo[11] = local_data0[11];
assign local_data0lo[12] = local_data0[12];
assign local_data0lo[13] = local_data0[13];
assign local_data0lo[14] = local_data0[14];
assign local_data0lo[15] = local_data0[15];

// DATA.NET (295) - local_data0hi : join
assign local_data0hi[0] = local_data0[16];
assign local_data0hi[1] = local_data0[17];
assign local_data0hi[2] = local_data0[18];
assign local_data0hi[3] = local_data0[19];
assign local_data0hi[4] = local_data0[20];
assign local_data0hi[5] = local_data0[21];
assign local_data0hi[6] = local_data0[22];
assign local_data0hi[7] = local_data0[23];
assign local_data0hi[8] = local_data0[24];
assign local_data0hi[9] = local_data0[25];
assign local_data0hi[10] = local_data0[26];
assign local_data0hi[11] = local_data0[27];
assign local_data0hi[12] = local_data0[28];
assign local_data0hi[13] = local_data0[29];
assign local_data0hi[14] = local_data0[30];
assign local_data0hi[15] = local_data0[31];

// DATA.NET (296) - local_data1lo : join
assign local_data1lo[0] = local_data1[0];
assign local_data1lo[1] = local_data1[1];
assign local_data1lo[2] = local_data1[2];
assign local_data1lo[3] = local_data1[3];
assign local_data1lo[4] = local_data1[4];
assign local_data1lo[5] = local_data1[5];
assign local_data1lo[6] = local_data1[6];
assign local_data1lo[7] = local_data1[7];
assign local_data1lo[8] = local_data1[8];
assign local_data1lo[9] = local_data1[9];
assign local_data1lo[10] = local_data1[10];
assign local_data1lo[11] = local_data1[11];
assign local_data1lo[12] = local_data1[12];
assign local_data1lo[13] = local_data1[13];
assign local_data1lo[14] = local_data1[14];
assign local_data1lo[15] = local_data1[15];

// DATA.NET (297) - local_data1hi : join
assign local_data1hi[0] = local_data1[16];
assign local_data1hi[1] = local_data1[17];
assign local_data1hi[2] = local_data1[18];
assign local_data1hi[3] = local_data1[19];
assign local_data1hi[4] = local_data1[20];
assign local_data1hi[5] = local_data1[21];
assign local_data1hi[6] = local_data1[22];
assign local_data1hi[7] = local_data1[23];
assign local_data1hi[8] = local_data1[24];
assign local_data1hi[9] = local_data1[25];
assign local_data1hi[10] = local_data1[26];
assign local_data1hi[11] = local_data1[27];
assign local_data1hi[12] = local_data1[28];
assign local_data1hi[13] = local_data1[29];
assign local_data1hi[14] = local_data1[30];
assign local_data1hi[15] = local_data1[31];

// DATA.NET (301) - data_out : data_mux
data_mux data_out_inst
(
	.wdata_0_out /* BUS */ (wdata_0_out),
	.wdata_0_oe /* BUS */ (wdata_0_oe),
	.wdata_0_in /* BUS */ (wdata_0_in),
	.wdata_1_out /* BUS */ (wdata_1_out),
	.wdata_1_oe /* BUS */ (wdata_1_oe),
	.wdata_1_in /* BUS */ (wdata_1_in),
	.wdata_2_out /* BUS */ (wdata_2_out),
	.wdata_2_oe /* BUS */ (wdata_2_oe),
	.wdata_2_in /* BUS */ (wdata_2_in),
	.wdata_3_out /* BUS */ (wdata_3_out),
	.wdata_3_oe /* BUS */ (wdata_3_oe),
	.wdata_3_in /* BUS */ (wdata_3_in),
	.wdata_4_out /* BUS */ (wdata_4_out),
	.wdata_4_oe /* BUS */ (wdata_4_oe),
	.wdata_4_in /* BUS */ (wdata_4_in),
	.wdata_5_out /* BUS */ (wdata_5_out),
	.wdata_5_oe /* BUS */ (wdata_5_oe),
	.wdata_5_in /* BUS */ (wdata_5_in),
	.wdata_6_out /* BUS */ (wdata_6_out),
	.wdata_6_oe /* BUS */ (wdata_6_oe),
	.wdata_6_in /* BUS */ (wdata_6_in),
	.wdata_7_out /* BUS */ (wdata_7_out),
	.wdata_7_oe /* BUS */ (wdata_7_oe),
	.wdata_7_in /* BUS */ (wdata_7_in),
	.wdata_8_out /* BUS */ (wdata_8_out),
	.wdata_8_oe /* BUS */ (wdata_8_oe),
	.wdata_8_in /* BUS */ (wdata_8_in),
	.wdata_9_out /* BUS */ (wdata_9_out),
	.wdata_9_oe /* BUS */ (wdata_9_oe),
	.wdata_9_in /* BUS */ (wdata_9_in),
	.wdata_10_out /* BUS */ (wdata_10_out),
	.wdata_10_oe /* BUS */ (wdata_10_oe),
	.wdata_10_in /* BUS */ (wdata_10_in),
	.wdata_11_out /* BUS */ (wdata_11_out),
	.wdata_11_oe /* BUS */ (wdata_11_oe),
	.wdata_11_in /* BUS */ (wdata_11_in),
	.wdata_12_out /* BUS */ (wdata_12_out),
	.wdata_12_oe /* BUS */ (wdata_12_oe),
	.wdata_12_in /* BUS */ (wdata_12_in),
	.wdata_13_out /* BUS */ (wdata_13_out),
	.wdata_13_oe /* BUS */ (wdata_13_oe),
	.wdata_13_in /* BUS */ (wdata_13_in),
	.wdata_14_out /* BUS */ (wdata_14_out),
	.wdata_14_oe /* BUS */ (wdata_14_oe),
	.wdata_14_in /* BUS */ (wdata_14_in),
	.wdata_15_out /* BUS */ (wdata_15_out),
	.wdata_15_oe /* BUS */ (wdata_15_oe),
	.wdata_15_in /* BUS */ (wdata_15_in),
	.wdata_16_out /* BUS */ (wdata_16_out),
	.wdata_16_oe /* BUS */ (wdata_16_oe),
	.wdata_16_in /* BUS */ (wdata_16_in),
	.wdata_17_out /* BUS */ (wdata_17_out),
	.wdata_17_oe /* BUS */ (wdata_17_oe),
	.wdata_17_in /* BUS */ (wdata_17_in),
	.wdata_18_out /* BUS */ (wdata_18_out),
	.wdata_18_oe /* BUS */ (wdata_18_oe),
	.wdata_18_in /* BUS */ (wdata_18_in),
	.wdata_19_out /* BUS */ (wdata_19_out),
	.wdata_19_oe /* BUS */ (wdata_19_oe),
	.wdata_19_in /* BUS */ (wdata_19_in),
	.wdata_20_out /* BUS */ (wdata_20_out),
	.wdata_20_oe /* BUS */ (wdata_20_oe),
	.wdata_20_in /* BUS */ (wdata_20_in),
	.wdata_21_out /* BUS */ (wdata_21_out),
	.wdata_21_oe /* BUS */ (wdata_21_oe),
	.wdata_21_in /* BUS */ (wdata_21_in),
	.wdata_22_out /* BUS */ (wdata_22_out),
	.wdata_22_oe /* BUS */ (wdata_22_oe),
	.wdata_22_in /* BUS */ (wdata_22_in),
	.wdata_23_out /* BUS */ (wdata_23_out),
	.wdata_23_oe /* BUS */ (wdata_23_oe),
	.wdata_23_in /* BUS */ (wdata_23_in),
	.wdata_24_out /* BUS */ (wdata_24_out),
	.wdata_24_oe /* BUS */ (wdata_24_oe),
	.wdata_24_in /* BUS */ (wdata_24_in),
	.wdata_25_out /* BUS */ (wdata_25_out),
	.wdata_25_oe /* BUS */ (wdata_25_oe),
	.wdata_25_in /* BUS */ (wdata_25_in),
	.wdata_26_out /* BUS */ (wdata_26_out),
	.wdata_26_oe /* BUS */ (wdata_26_oe),
	.wdata_26_in /* BUS */ (wdata_26_in),
	.wdata_27_out /* BUS */ (wdata_27_out),
	.wdata_27_oe /* BUS */ (wdata_27_oe),
	.wdata_27_in /* BUS */ (wdata_27_in),
	.wdata_28_out /* BUS */ (wdata_28_out),
	.wdata_28_oe /* BUS */ (wdata_28_oe),
	.wdata_28_in /* BUS */ (wdata_28_in),
	.wdata_29_out /* BUS */ (wdata_29_out),
	.wdata_29_oe /* BUS */ (wdata_29_oe),
	.wdata_29_in /* BUS */ (wdata_29_in),
	.wdata_30_out /* BUS */ (wdata_30_out),
	.wdata_30_oe /* BUS */ (wdata_30_oe),
	.wdata_30_in /* BUS */ (wdata_30_in),
	.wdata_31_out /* BUS */ (wdata_31_out),
	.wdata_31_oe /* BUS */ (wdata_31_oe),
	.wdata_31_in /* BUS */ (wdata_31_in),
	.wdata_32_out /* BUS */ (wdata_32_out),
	.wdata_32_oe /* BUS */ (wdata_32_oe),
	.wdata_32_in /* BUS */ (wdata_32_in),
	.wdata_33_out /* BUS */ (wdata_33_out),
	.wdata_33_oe /* BUS */ (wdata_33_oe),
	.wdata_33_in /* BUS */ (wdata_33_in),
	.wdata_34_out /* BUS */ (wdata_34_out),
	.wdata_34_oe /* BUS */ (wdata_34_oe),
	.wdata_34_in /* BUS */ (wdata_34_in),
	.wdata_35_out /* BUS */ (wdata_35_out),
	.wdata_35_oe /* BUS */ (wdata_35_oe),
	.wdata_35_in /* BUS */ (wdata_35_in),
	.wdata_36_out /* BUS */ (wdata_36_out),
	.wdata_36_oe /* BUS */ (wdata_36_oe),
	.wdata_36_in /* BUS */ (wdata_36_in),
	.wdata_37_out /* BUS */ (wdata_37_out),
	.wdata_37_oe /* BUS */ (wdata_37_oe),
	.wdata_37_in /* BUS */ (wdata_37_in),
	.wdata_38_out /* BUS */ (wdata_38_out),
	.wdata_38_oe /* BUS */ (wdata_38_oe),
	.wdata_38_in /* BUS */ (wdata_38_in),
	.wdata_39_out /* BUS */ (wdata_39_out),
	.wdata_39_oe /* BUS */ (wdata_39_oe),
	.wdata_39_in /* BUS */ (wdata_39_in),
	.wdata_40_out /* BUS */ (wdata_40_out),
	.wdata_40_oe /* BUS */ (wdata_40_oe),
	.wdata_40_in /* BUS */ (wdata_40_in),
	.wdata_41_out /* BUS */ (wdata_41_out),
	.wdata_41_oe /* BUS */ (wdata_41_oe),
	.wdata_41_in /* BUS */ (wdata_41_in),
	.wdata_42_out /* BUS */ (wdata_42_out),
	.wdata_42_oe /* BUS */ (wdata_42_oe),
	.wdata_42_in /* BUS */ (wdata_42_in),
	.wdata_43_out /* BUS */ (wdata_43_out),
	.wdata_43_oe /* BUS */ (wdata_43_oe),
	.wdata_43_in /* BUS */ (wdata_43_in),
	.wdata_44_out /* BUS */ (wdata_44_out),
	.wdata_44_oe /* BUS */ (wdata_44_oe),
	.wdata_44_in /* BUS */ (wdata_44_in),
	.wdata_45_out /* BUS */ (wdata_45_out),
	.wdata_45_oe /* BUS */ (wdata_45_oe),
	.wdata_45_in /* BUS */ (wdata_45_in),
	.wdata_46_out /* BUS */ (wdata_46_out),
	.wdata_46_oe /* BUS */ (wdata_46_oe),
	.wdata_46_in /* BUS */ (wdata_46_in),
	.wdata_47_out /* BUS */ (wdata_47_out),
	.wdata_47_oe /* BUS */ (wdata_47_oe),
	.wdata_47_in /* BUS */ (wdata_47_in),
	.wdata_48_out /* BUS */ (wdata_48_out),
	.wdata_48_oe /* BUS */ (wdata_48_oe),
	.wdata_48_in /* BUS */ (wdata_48_in),
	.wdata_49_out /* BUS */ (wdata_49_out),
	.wdata_49_oe /* BUS */ (wdata_49_oe),
	.wdata_49_in /* BUS */ (wdata_49_in),
	.wdata_50_out /* BUS */ (wdata_50_out),
	.wdata_50_oe /* BUS */ (wdata_50_oe),
	.wdata_50_in /* BUS */ (wdata_50_in),
	.wdata_51_out /* BUS */ (wdata_51_out),
	.wdata_51_oe /* BUS */ (wdata_51_oe),
	.wdata_51_in /* BUS */ (wdata_51_in),
	.wdata_52_out /* BUS */ (wdata_52_out),
	.wdata_52_oe /* BUS */ (wdata_52_oe),
	.wdata_52_in /* BUS */ (wdata_52_in),
	.wdata_53_out /* BUS */ (wdata_53_out),
	.wdata_53_oe /* BUS */ (wdata_53_oe),
	.wdata_53_in /* BUS */ (wdata_53_in),
	.wdata_54_out /* BUS */ (wdata_54_out),
	.wdata_54_oe /* BUS */ (wdata_54_oe),
	.wdata_54_in /* BUS */ (wdata_54_in),
	.wdata_55_out /* BUS */ (wdata_55_out),
	.wdata_55_oe /* BUS */ (wdata_55_oe),
	.wdata_55_in /* BUS */ (wdata_55_in),
	.wdata_56_out /* BUS */ (wdata_56_out),
	.wdata_56_oe /* BUS */ (wdata_56_oe),
	.wdata_56_in /* BUS */ (wdata_56_in),
	.wdata_57_out /* BUS */ (wdata_57_out),
	.wdata_57_oe /* BUS */ (wdata_57_oe),
	.wdata_57_in /* BUS */ (wdata_57_in),
	.wdata_58_out /* BUS */ (wdata_58_out),
	.wdata_58_oe /* BUS */ (wdata_58_oe),
	.wdata_58_in /* BUS */ (wdata_58_in),
	.wdata_59_out /* BUS */ (wdata_59_out),
	.wdata_59_oe /* BUS */ (wdata_59_oe),
	.wdata_59_in /* BUS */ (wdata_59_in),
	.wdata_60_out /* BUS */ (wdata_60_out),
	.wdata_60_oe /* BUS */ (wdata_60_oe),
	.wdata_60_in /* BUS */ (wdata_60_in),
	.wdata_61_out /* BUS */ (wdata_61_out),
	.wdata_61_oe /* BUS */ (wdata_61_oe),
	.wdata_61_in /* BUS */ (wdata_61_in),
	.wdata_62_out /* BUS */ (wdata_62_out),
	.wdata_62_oe /* BUS */ (wdata_62_oe),
	.wdata_62_in /* BUS */ (wdata_62_in),
	.wdata_63_out /* BUS */ (wdata_63_out),
	.wdata_63_oe /* BUS */ (wdata_63_oe),
	.wdata_63_in /* BUS */ (wdata_63_in),
	.addq_0 /* IN */ ({addq_0[0],addq_0[1],addq_0[2],addq_0[3],addq_0[4],addq_0[5],addq_0[6],addq_0[7],addq_0[8],addq_0[9],addq_0[10],addq_0[11],addq_0[12],addq_0[13],addq_0[14],addq_0[15]}),
	.addq_1 /* IN */ ({addq_1[0],addq_1[1],addq_1[2],addq_1[3],addq_1[4],addq_1[5],addq_1[6],addq_1[7],addq_1[8],addq_1[9],addq_1[10],addq_1[11],addq_1[12],addq_1[13],addq_1[14],addq_1[15]}),
	.addq_2 /* IN */ ({addq_2[0],addq_2[1],addq_2[2],addq_2[3],addq_2[4],addq_2[5],addq_2[6],addq_2[7],addq_2[8],addq_2[9],addq_2[10],addq_2[11],addq_2[12],addq_2[13],addq_2[14],addq_2[15]}),
	.addq_3 /* IN */ ({addq_3[0],addq_3[1],addq_3[2],addq_3[3],addq_3[4],addq_3[5],addq_3[6],addq_3[7],addq_3[8],addq_3[9],addq_3[10],addq_3[11],addq_3[12],addq_3[13],addq_3[14],addq_3[15]}),
	.big_pix /* IN */ (big_pix),
	.dstdlo /* IN */ ({dstd_0[0],dstd_0[1],dstd_0[2],dstd_0[3],dstd_0[4],dstd_0[5],dstd_0[6],dstd_0[7],dstd_0[8],dstd_0[9],dstd_0[10],dstd_0[11],dstd_0[12],dstd_0[13],dstd_0[14],dstd_0[15],dstd_0[16],dstd_0[17],dstd_0[18],dstd_0[19],dstd_0[20],dstd_0[21],dstd_0[22],dstd_0[23],dstd_0[24],dstd_0[25],dstd_0[26],dstd_0[27],dstd_0[28],dstd_0[29],dstd_0[30],dstd_0[31]}),
	.dstdhi /* IN */ ({dstd_1[0],dstd_1[1],dstd_1[2],dstd_1[3],dstd_1[4],dstd_1[5],dstd_1[6],dstd_1[7],dstd_1[8],dstd_1[9],dstd_1[10],dstd_1[11],dstd_1[12],dstd_1[13],dstd_1[14],dstd_1[15],dstd_1[16],dstd_1[17],dstd_1[18],dstd_1[19],dstd_1[20],dstd_1[21],dstd_1[22],dstd_1[23],dstd_1[24],dstd_1[25],dstd_1[26],dstd_1[27],dstd_1[28],dstd_1[29],dstd_1[30],dstd_1[31]}),
	.dstzlo /* IN */ ({dstz_0[0],dstz_0[1],dstz_0[2],dstz_0[3],dstz_0[4],dstz_0[5],dstz_0[6],dstz_0[7],dstz_0[8],dstz_0[9],dstz_0[10],dstz_0[11],dstz_0[12],dstz_0[13],dstz_0[14],dstz_0[15],dstz_0[16],dstz_0[17],dstz_0[18],dstz_0[19],dstz_0[20],dstz_0[21],dstz_0[22],dstz_0[23],dstz_0[24],dstz_0[25],dstz_0[26],dstz_0[27],dstz_0[28],dstz_0[29],dstz_0[30],dstz_0[31]}),
	.dstzhi /* IN */ ({dstz_1[0],dstz_1[1],dstz_1[2],dstz_1[3],dstz_1[4],dstz_1[5],dstz_1[6],dstz_1[7],dstz_1[8],dstz_1[9],dstz_1[10],dstz_1[11],dstz_1[12],dstz_1[13],dstz_1[14],dstz_1[15],dstz_1[16],dstz_1[17],dstz_1[18],dstz_1[19],dstz_1[20],dstz_1[21],dstz_1[22],dstz_1[23],dstz_1[24],dstz_1[25],dstz_1[26],dstz_1[27],dstz_1[28],dstz_1[29],dstz_1[30],dstz_1[31]}),
	.data_sel_0 /* IN */ (data_sel_0),
	.data_sel_1 /* IN */ (data_sel_1),
	.data_ena /* IN */ (data_ena),
	.dstart_0 /* IN */ (dstart_0),
	.dstart_1 /* IN */ (dstart_1),
	.dstart_2 /* IN */ (dstart_2),
	.dstart_3 /* IN */ (dstart_3),
	.dstart_4 /* IN */ (dstart_4),
	.dstart_5 /* IN */ (dstart_5),
	.dend_0 /* IN */ (dend_0),
	.dend_1 /* IN */ (dend_1),
	.dend_2 /* IN */ (dend_2),
	.dend_3 /* IN */ (dend_3),
	.dend_4 /* IN */ (dend_4),
	.dend_5 /* IN */ (dend_5),
	.dbinh_n_0 /* IN */ (dbinh_n_0),
	.dbinh_n_1 /* IN */ (dbinh_n_1),
	.dbinh_n_2 /* IN */ (dbinh_n_2),
	.dbinh_n_3 /* IN */ (dbinh_n_3),
	.dbinh_n_4 /* IN */ (dbinh_n_4),
	.dbinh_n_5 /* IN */ (dbinh_n_5),
	.dbinh_n_6 /* IN */ (dbinh_n_6),
	.dbinh_n_7 /* IN */ (dbinh_n_7),
	.lfu_0 /* IN */ ({lfu_0[0],lfu_0[1],lfu_0[2],lfu_0[3],lfu_0[4],lfu_0[5],lfu_0[6],lfu_0[7],lfu_0[8],lfu_0[9],lfu_0[10],lfu_0[11],lfu_0[12],lfu_0[13],lfu_0[14],lfu_0[15],lfu_0[16],lfu_0[17],lfu_0[18],lfu_0[19],lfu_0[20],lfu_0[21],lfu_0[22],lfu_0[23],lfu_0[24],lfu_0[25],lfu_0[26],lfu_0[27],lfu_0[28],lfu_0[29],lfu_0[30],lfu_0[31]}),
	.lfu_1 /* IN */ ({lfu_1[0],lfu_1[1],lfu_1[2],lfu_1[3],lfu_1[4],lfu_1[5],lfu_1[6],lfu_1[7],lfu_1[8],lfu_1[9],lfu_1[10],lfu_1[11],lfu_1[12],lfu_1[13],lfu_1[14],lfu_1[15],lfu_1[16],lfu_1[17],lfu_1[18],lfu_1[19],lfu_1[20],lfu_1[21],lfu_1[22],lfu_1[23],lfu_1[24],lfu_1[25],lfu_1[26],lfu_1[27],lfu_1[28],lfu_1[29],lfu_1[30],lfu_1[31]}),
	.patd_0 /* IN */ ({patdo_0[0],patdo_0[1],patdo_0[2],patdo_0[3],patdo_0[4],patdo_0[5],patdo_0[6],patdo_0[7],patdo_0[8],patdo_0[9],patdo_0[10],patdo_0[11],patdo_0[12],patdo_0[13],patdo_0[14],patdo_0[15],patdo_0[16],patdo_0[17],patdo_0[18],patdo_0[19],patdo_0[20],patdo_0[21],patdo_0[22],patdo_0[23],patdo_0[24],patdo_0[25],patdo_0[26],patdo_0[27],patdo_0[28],patdo_0[29],patdo_0[30],patdo_0[31]}),
	.patd_1 /* IN */ ({patdo_1[0],patdo_1[1],patdo_1[2],patdo_1[3],patdo_1[4],patdo_1[5],patdo_1[6],patdo_1[7],patdo_1[8],patdo_1[9],patdo_1[10],patdo_1[11],patdo_1[12],patdo_1[13],patdo_1[14],patdo_1[15],patdo_1[16],patdo_1[17],patdo_1[18],patdo_1[19],patdo_1[20],patdo_1[21],patdo_1[22],patdo_1[23],patdo_1[24],patdo_1[25],patdo_1[26],patdo_1[27],patdo_1[28],patdo_1[29],patdo_1[30],patdo_1[31]}),
	.phrase_mode /* IN */ (phrase_mode),
	.srczlo /* IN */ ({srczo_0[0],srczo_0[1],srczo_0[2],srczo_0[3],srczo_0[4],srczo_0[5],srczo_0[6],srczo_0[7],srczo_0[8],srczo_0[9],srczo_0[10],srczo_0[11],srczo_0[12],srczo_0[13],srczo_0[14],srczo_0[15],srczo_0[16],srczo_0[17],srczo_0[18],srczo_0[19],srczo_0[20],srczo_0[21],srczo_0[22],srczo_0[23],srczo_0[24],srczo_0[25],srczo_0[26],srczo_0[27],srczo_0[28],srczo_0[29],srczo_0[30],srczo_0[31]}),
	.srczhi /* IN */ ({srczo_1[0],srczo_1[1],srczo_1[2],srczo_1[3],srczo_1[4],srczo_1[5],srczo_1[6],srczo_1[7],srczo_1[8],srczo_1[9],srczo_1[10],srczo_1[11],srczo_1[12],srczo_1[13],srczo_1[14],srczo_1[15],srczo_1[16],srczo_1[17],srczo_1[18],srczo_1[19],srczo_1[20],srczo_1[21],srczo_1[22],srczo_1[23],srczo_1[24],srczo_1[25],srczo_1[26],srczo_1[27],srczo_1[28],srczo_1[29],srczo_1[30],srczo_1[31]})
);
endmodule
/* verilator lint_on LITENDIAN */
