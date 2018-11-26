/* verilator lint_off LITENDIAN */
`include "defs.v"

module j_jbus
(
	input ain_0,
	input ain_1,
	input ain_2,
	input ain_3,
	input ain_4,
	input ain_5,
	input ain_6,
	input ain_7,
	input ain_8,
	input ain_9,
	input ain_10,
	input ain_11,
	input ain_12,
	input ain_13,
	input ain_14,
	input ain_15,
	input ain_16,
	input ain_17,
	input ain_18,
	input ain_19,
	input ain_20,
	input ain_21,
	input ain_22,
	input ain_23,
	input din_0,
	input din_1,
	input din_2,
	input din_3,
	input din_4,
	input din_5,
	input din_6,
	input din_7,
	input din_8,
	input din_9,
	input din_10,
	input din_11,
	input din_12,
	input din_13,
	input din_14,
	input din_15,
	input din_16,
	input din_17,
	input din_18,
	input din_19,
	input din_20,
	input din_21,
	input din_22,
	input din_23,
	input din_24,
	input din_25,
	input din_26,
	input din_27,
	input din_28,
	input din_29,
	input din_30,
	input din_31,
	input dr_0,
	input dr_1,
	input dr_2,
	input dr_3,
	input dr_4,
	input dr_5,
	input dr_6,
	input dr_7,
	input dr_8,
	input dr_9,
	input dr_10,
	input dr_11,
	input dr_12,
	input dr_13,
	input dr_14,
	input dr_15,
	input dinlatch_0,
	input dinlatch_1,
	input dmuxd_0,
	input dmuxd_1,
	input dmuxu_0,
	input dmuxu_1,
	input dren,
	input xdsrc,
	input ack,
	input wd_0,
	input wd_1,
	input wd_2,
	input wd_3,
	input wd_4,
	input wd_5,
	input wd_6,
	input wd_7,
	input wd_8,
	input wd_9,
	input wd_10,
	input wd_11,
	input wd_12,
	input wd_13,
	input wd_14,
	input wd_15,
	input wd_16,
	input wd_17,
	input wd_18,
	input wd_19,
	input wd_20,
	input wd_21,
	input wd_22,
	input wd_23,
	input wd_24,
	input wd_25,
	input wd_26,
	input wd_27,
	input wd_28,
	input wd_29,
	input wd_30,
	input wd_31,
	input clk,
	input cfg_0,
	input cfg_1,
	input cfgw,
	input a_0,
	input a_1,
	input a_2,
	input a_3,
	input a_4,
	input a_5,
	input a_6,
	input a_7,
	input a_8,
	input a_9,
	input a_10,
	input a_11,
	input a_12,
	input a_13,
	input a_14,
	input a_15,
	input a_16,
	input a_17,
	input a_18,
	input a_19,
	input a_20,
	input a_21,
	input a_22,
	input a_23,
	input ainen,
	input seta1,
	input masterdata,
	output dout_0,
	output dout_1,
	output dout_2,
	output dout_3,
	output dout_4,
	output dout_5,
	output dout_6,
	output dout_7,
	output dout_8,
	output dout_9,
	output dout_10,
	output dout_11,
	output dout_12,
	output dout_13,
	output dout_14,
	output dout_15,
	output dout_16,
	output dout_17,
	output dout_18,
	output dout_19,
	output dout_20,
	output dout_21,
	output dout_22,
	output dout_23,
	output dout_24,
	output dout_25,
	output dout_26,
	output dout_27,
	output dout_28,
	output dout_29,
	output dout_30,
	output dout_31,
	output aout_0,
	output aout_1,
	output aout_2,
	output aout_3,
	output aout_4,
	output aout_5,
	output aout_6,
	output aout_7,
	output aout_8,
	output aout_9,
	output aout_10,
	output aout_11,
	output aout_12,
	output aout_13,
	output aout_14,
	output aout_15,
	output aout_16,
	output aout_17,
	output aout_18,
	output aout_19,
	output aout_20,
	output aout_21,
	output aout_22,
	output aout_23,
	output dsp16,
	output bigend,
	input sys_clk // Generated
);
wire d5_0;
wire d5_1;
wire d5_2;
wire d5_3;
wire d5_4;
wire d5_5;
wire d5_6;
wire d5_7;
wire d5_8;
wire d5_9;
wire d5_10;
wire d5_11;
wire d5_12;
wire d5_13;
wire d5_14;
wire d5_15;
wire d1_0;
wire d1_1;
wire d1_2;
wire d1_3;
wire d1_4;
wire d1_5;
wire d1_6;
wire d1_7;
wire d1_8;
wire d1_9;
wire d1_10;
wire d1_11;
wire d1_12;
wire d1_13;
wire d1_14;
wire d1_15;
wire d1_16;
wire d1_17;
wire d1_18;
wire d1_19;
wire d1_20;
wire d1_21;
wire d1_22;
wire d1_23;
wire d1_24;
wire d1_25;
wire d1_26;
wire d1_27;
wire d1_28;
wire d1_29;
wire d1_30;
wire d1_31;
wire d1a_8;
wire d1a_9;
wire d1a_10;
wire d1a_11;
wire d1a_12;
wire d1a_13;
wire d1a_14;
wire d1a_15;
wire d2_16;
wire d2_17;
wire d2_18;
wire d2_19;
wire d2_20;
wire d2_21;
wire d2_22;
wire d2_23;
wire d2_24;
wire d2_25;
wire d2_26;
wire d2_27;
wire d2_28;
wire d2_29;
wire d2_30;
wire d2_31;
wire d3_0;
wire d3_1;
wire d3_2;
wire d3_3;
wire d3_4;
wire d3_5;
wire d3_6;
wire d3_7;
wire d3_8;
wire d3_9;
wire d3_10;
wire d3_11;
wire d3_12;
wire d3_13;
wire d3_14;
wire d3_15;
wire d3_16;
wire d3_17;
wire d3_18;
wire d3_19;
wire d3_20;
wire d3_21;
wire d3_22;
wire d3_23;
wire d3_24;
wire d3_25;
wire d3_26;
wire d3_27;
wire d3_28;
wire d3_29;
wire d3_30;
wire d3_31;
wire d4_0;
wire d4_1;
wire d4_2;
wire d4_3;
wire d4_4;
wire d4_5;
wire d4_6;
wire d4_7;
wire d4_8;
wire d4_9;
wire d4_10;
wire d4_11;
wire d4_12;
wire d4_13;
wire d4_14;
wire d4_15;
wire d4a_0;
wire d4a_1;
wire d4a_2;
wire d4a_3;
wire d4a_4;
wire d4a_5;
wire d4a_6;
wire d4a_7;
wire d6_0;
wire d6_1;
wire d6_2;
wire d6_3;
wire d6_4;
wire d6_5;
wire d6_6;
wire d6_7;
wire d6_8;
wire d6_9;
wire d6_10;
wire d6_11;
wire d6_12;
wire d6_13;
wire d6_14;
wire d6_15;
wire ad_0;
wire ad_1;
wire ad_2;
wire ad_3;
wire ad_4;
wire ad_5;
wire ad_6;
wire ad_7;
wire ad_8;
wire ad_9;
wire ad_10;
wire ad_11;
wire ad_12;
wire ad_13;
wire ad_14;
wire ad_15;
wire ad_16;
wire ad_17;
wire ad_18;
wire ad_19;
wire ad_20;
wire ad_21;
wire ad_22;
wire ad_23;
wire as_1;
wire aouti_1;
wire aouti_14;

// JBUS.NET (44) - d5[0-15] : mx2
assign d5_0 = (dren) ? dr_0 : din_0;
assign d5_1 = (dren) ? dr_1 : din_1;
assign d5_2 = (dren) ? dr_2 : din_2;
assign d5_3 = (dren) ? dr_3 : din_3;
assign d5_4 = (dren) ? dr_4 : din_4;
assign d5_5 = (dren) ? dr_5 : din_5;
assign d5_6 = (dren) ? dr_6 : din_6;
assign d5_7 = (dren) ? dr_7 : din_7;
assign d5_8 = (dren) ? dr_8 : din_8;
assign d5_9 = (dren) ? dr_9 : din_9;
assign d5_10 = (dren) ? dr_10 : din_10;
assign d5_11 = (dren) ? dr_11 : din_11;
assign d5_12 = (dren) ? dr_12 : din_12;
assign d5_13 = (dren) ? dr_13 : din_13;
assign d5_14 = (dren) ? dr_14 : din_14;
assign d5_15 = (dren) ? dr_15 : din_15;

// JBUS.NET (48) - d1[0-31] : mx2
assign d1_0 = (xdsrc) ? din_0 : wd_0;
assign d1_1 = (xdsrc) ? din_1 : wd_1;
assign d1_2 = (xdsrc) ? din_2 : wd_2;
assign d1_3 = (xdsrc) ? din_3 : wd_3;
assign d1_4 = (xdsrc) ? din_4 : wd_4;
assign d1_5 = (xdsrc) ? din_5 : wd_5;
assign d1_6 = (xdsrc) ? din_6 : wd_6;
assign d1_7 = (xdsrc) ? din_7 : wd_7;
assign d1_8 = (xdsrc) ? din_8 : wd_8;
assign d1_9 = (xdsrc) ? din_9 : wd_9;
assign d1_10 = (xdsrc) ? din_10 : wd_10;
assign d1_11 = (xdsrc) ? din_11 : wd_11;
assign d1_12 = (xdsrc) ? din_12 : wd_12;
assign d1_13 = (xdsrc) ? din_13 : wd_13;
assign d1_14 = (xdsrc) ? din_14 : wd_14;
assign d1_15 = (xdsrc) ? din_15 : wd_15;
assign d1_16 = (xdsrc) ? din_16 : wd_16;
assign d1_17 = (xdsrc) ? din_17 : wd_17;
assign d1_18 = (xdsrc) ? din_18 : wd_18;
assign d1_19 = (xdsrc) ? din_19 : wd_19;
assign d1_20 = (xdsrc) ? din_20 : wd_20;
assign d1_21 = (xdsrc) ? din_21 : wd_21;
assign d1_22 = (xdsrc) ? din_22 : wd_22;
assign d1_23 = (xdsrc) ? din_23 : wd_23;
assign d1_24 = (xdsrc) ? din_24 : wd_24;
assign d1_25 = (xdsrc) ? din_25 : wd_25;
assign d1_26 = (xdsrc) ? din_26 : wd_26;
assign d1_27 = (xdsrc) ? din_27 : wd_27;
assign d1_28 = (xdsrc) ? din_28 : wd_28;
assign d1_29 = (xdsrc) ? din_29 : wd_29;
assign d1_30 = (xdsrc) ? din_30 : wd_30;
assign d1_31 = (xdsrc) ? din_31 : wd_31;

// JBUS.NET (52) - d1a[8-15] : mx2
assign d1a_8 = (dmuxu_0) ? d1_0 : d1_8;
assign d1a_9 = (dmuxu_0) ? d1_1 : d1_9;
assign d1a_10 = (dmuxu_0) ? d1_2 : d1_10;
assign d1a_11 = (dmuxu_0) ? d1_3 : d1_11;
assign d1a_12 = (dmuxu_0) ? d1_4 : d1_12;
assign d1a_13 = (dmuxu_0) ? d1_5 : d1_13;
assign d1a_14 = (dmuxu_0) ? d1_6 : d1_14;
assign d1a_15 = (dmuxu_0) ? d1_7 : d1_15;

// JBUS.NET (53) - d2[16-23] : mx2
assign d2_16 = (dmuxu_1) ? d1_0 : d1_16;
assign d2_17 = (dmuxu_1) ? d1_1 : d1_17;
assign d2_18 = (dmuxu_1) ? d1_2 : d1_18;
assign d2_19 = (dmuxu_1) ? d1_3 : d1_19;
assign d2_20 = (dmuxu_1) ? d1_4 : d1_20;
assign d2_21 = (dmuxu_1) ? d1_5 : d1_21;
assign d2_22 = (dmuxu_1) ? d1_6 : d1_22;
assign d2_23 = (dmuxu_1) ? d1_7 : d1_23;

// JBUS.NET (54) - d2[24-31] : mx2
assign d2_24 = (dmuxu_1) ? d1a_8 : d1_24;
assign d2_25 = (dmuxu_1) ? d1a_9 : d1_25;
assign d2_26 = (dmuxu_1) ? d1a_10 : d1_26;
assign d2_27 = (dmuxu_1) ? d1a_11 : d1_27;
assign d2_28 = (dmuxu_1) ? d1a_12 : d1_28;
assign d2_29 = (dmuxu_1) ? d1a_13 : d1_29;
assign d2_30 = (dmuxu_1) ? d1a_14 : d1_30;
assign d2_31 = (dmuxu_1) ? d1a_15 : d1_31;

// JBUS.NET (58) - d3[0-7] : stlatch
stlatch d3_from_0_to_7_inst_0
(
	.d1 /* OUT */ (d3_0),
	.d /* IN */ (d1_0),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_0),
	.sys_clk(sys_clk) // Generated
);
stlatch d3_from_0_to_7_inst_1
(
	.d1 /* OUT */ (d3_1),
	.d /* IN */ (d1_1),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_0),
	.sys_clk(sys_clk) // Generated
);
stlatch d3_from_0_to_7_inst_2
(
	.d1 /* OUT */ (d3_2),
	.d /* IN */ (d1_2),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_0),
	.sys_clk(sys_clk) // Generated
);
stlatch d3_from_0_to_7_inst_3
(
	.d1 /* OUT */ (d3_3),
	.d /* IN */ (d1_3),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_0),
	.sys_clk(sys_clk) // Generated
);
stlatch d3_from_0_to_7_inst_4
(
	.d1 /* OUT */ (d3_4),
	.d /* IN */ (d1_4),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_0),
	.sys_clk(sys_clk) // Generated
);
stlatch d3_from_0_to_7_inst_5
(
	.d1 /* OUT */ (d3_5),
	.d /* IN */ (d1_5),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_0),
	.sys_clk(sys_clk) // Generated
);
stlatch d3_from_0_to_7_inst_6
(
	.d1 /* OUT */ (d3_6),
	.d /* IN */ (d1_6),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_0),
	.sys_clk(sys_clk) // Generated
);
stlatch d3_from_0_to_7_inst_7
(
	.d1 /* OUT */ (d3_7),
	.d /* IN */ (d1_7),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_0),
	.sys_clk(sys_clk) // Generated
);

// JBUS.NET (59) - d3[8-15] : stlatch
stlatch d3_from_8_to_15_inst_0
(
	.d1 /* OUT */ (d3_8),
	.d /* IN */ (d1a_8),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_0),
	.sys_clk(sys_clk) // Generated
);
stlatch d3_from_8_to_15_inst_1
(
	.d1 /* OUT */ (d3_9),
	.d /* IN */ (d1a_9),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_0),
	.sys_clk(sys_clk) // Generated
);
stlatch d3_from_8_to_15_inst_2
(
	.d1 /* OUT */ (d3_10),
	.d /* IN */ (d1a_10),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_0),
	.sys_clk(sys_clk) // Generated
);
stlatch d3_from_8_to_15_inst_3
(
	.d1 /* OUT */ (d3_11),
	.d /* IN */ (d1a_11),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_0),
	.sys_clk(sys_clk) // Generated
);
stlatch d3_from_8_to_15_inst_4
(
	.d1 /* OUT */ (d3_12),
	.d /* IN */ (d1a_12),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_0),
	.sys_clk(sys_clk) // Generated
);
stlatch d3_from_8_to_15_inst_5
(
	.d1 /* OUT */ (d3_13),
	.d /* IN */ (d1a_13),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_0),
	.sys_clk(sys_clk) // Generated
);
stlatch d3_from_8_to_15_inst_6
(
	.d1 /* OUT */ (d3_14),
	.d /* IN */ (d1a_14),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_0),
	.sys_clk(sys_clk) // Generated
);
stlatch d3_from_8_to_15_inst_7
(
	.d1 /* OUT */ (d3_15),
	.d /* IN */ (d1a_15),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_0),
	.sys_clk(sys_clk) // Generated
);

// JBUS.NET (60) - d3[16-31] : stlatch
stlatch d3_from_16_to_31_inst_0
(
	.d1 /* OUT */ (d3_16),
	.d /* IN */ (d2_16),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_1),
	.sys_clk(sys_clk) // Generated
);
stlatch d3_from_16_to_31_inst_1
(
	.d1 /* OUT */ (d3_17),
	.d /* IN */ (d2_17),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_1),
	.sys_clk(sys_clk) // Generated
);
stlatch d3_from_16_to_31_inst_2
(
	.d1 /* OUT */ (d3_18),
	.d /* IN */ (d2_18),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_1),
	.sys_clk(sys_clk) // Generated
);
stlatch d3_from_16_to_31_inst_3
(
	.d1 /* OUT */ (d3_19),
	.d /* IN */ (d2_19),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_1),
	.sys_clk(sys_clk) // Generated
);
stlatch d3_from_16_to_31_inst_4
(
	.d1 /* OUT */ (d3_20),
	.d /* IN */ (d2_20),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_1),
	.sys_clk(sys_clk) // Generated
);
stlatch d3_from_16_to_31_inst_5
(
	.d1 /* OUT */ (d3_21),
	.d /* IN */ (d2_21),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_1),
	.sys_clk(sys_clk) // Generated
);
stlatch d3_from_16_to_31_inst_6
(
	.d1 /* OUT */ (d3_22),
	.d /* IN */ (d2_22),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_1),
	.sys_clk(sys_clk) // Generated
);
stlatch d3_from_16_to_31_inst_7
(
	.d1 /* OUT */ (d3_23),
	.d /* IN */ (d2_23),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_1),
	.sys_clk(sys_clk) // Generated
);
stlatch d3_from_16_to_31_inst_8
(
	.d1 /* OUT */ (d3_24),
	.d /* IN */ (d2_24),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_1),
	.sys_clk(sys_clk) // Generated
);
stlatch d3_from_16_to_31_inst_9
(
	.d1 /* OUT */ (d3_25),
	.d /* IN */ (d2_25),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_1),
	.sys_clk(sys_clk) // Generated
);
stlatch d3_from_16_to_31_inst_10
(
	.d1 /* OUT */ (d3_26),
	.d /* IN */ (d2_26),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_1),
	.sys_clk(sys_clk) // Generated
);
stlatch d3_from_16_to_31_inst_11
(
	.d1 /* OUT */ (d3_27),
	.d /* IN */ (d2_27),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_1),
	.sys_clk(sys_clk) // Generated
);
stlatch d3_from_16_to_31_inst_12
(
	.d1 /* OUT */ (d3_28),
	.d /* IN */ (d2_28),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_1),
	.sys_clk(sys_clk) // Generated
);
stlatch d3_from_16_to_31_inst_13
(
	.d1 /* OUT */ (d3_29),
	.d /* IN */ (d2_29),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_1),
	.sys_clk(sys_clk) // Generated
);
stlatch d3_from_16_to_31_inst_14
(
	.d1 /* OUT */ (d3_30),
	.d /* IN */ (d2_30),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_1),
	.sys_clk(sys_clk) // Generated
);
stlatch d3_from_16_to_31_inst_15
(
	.d1 /* OUT */ (d3_31),
	.d /* IN */ (d2_31),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_1),
	.sys_clk(sys_clk) // Generated
);

// JBUS.NET (72) - d4[0-15] : mx2
assign d4_0 = (dmuxd_1) ? d3_16 : d3_0;
assign d4_1 = (dmuxd_1) ? d3_17 : d3_1;
assign d4_2 = (dmuxd_1) ? d3_18 : d3_2;
assign d4_3 = (dmuxd_1) ? d3_19 : d3_3;
assign d4_4 = (dmuxd_1) ? d3_20 : d3_4;
assign d4_5 = (dmuxd_1) ? d3_21 : d3_5;
assign d4_6 = (dmuxd_1) ? d3_22 : d3_6;
assign d4_7 = (dmuxd_1) ? d3_23 : d3_7;
assign d4_8 = (dmuxd_1) ? d3_24 : d3_8;
assign d4_9 = (dmuxd_1) ? d3_25 : d3_9;
assign d4_10 = (dmuxd_1) ? d3_26 : d3_10;
assign d4_11 = (dmuxd_1) ? d3_27 : d3_11;
assign d4_12 = (dmuxd_1) ? d3_28 : d3_12;
assign d4_13 = (dmuxd_1) ? d3_29 : d3_13;
assign d4_14 = (dmuxd_1) ? d3_30 : d3_14;
assign d4_15 = (dmuxd_1) ? d3_31 : d3_15;

// JBUS.NET (73) - d4a[0-7] : mx2
assign d4a_0 = (dmuxd_0) ? d4_8 : d4_0;
assign d4a_1 = (dmuxd_0) ? d4_9 : d4_1;
assign d4a_2 = (dmuxd_0) ? d4_10 : d4_2;
assign d4a_3 = (dmuxd_0) ? d4_11 : d4_3;
assign d4a_4 = (dmuxd_0) ? d4_12 : d4_4;
assign d4a_5 = (dmuxd_0) ? d4_13 : d4_5;
assign d4a_6 = (dmuxd_0) ? d4_14 : d4_6;
assign d4a_7 = (dmuxd_0) ? d4_15 : d4_7;

// JBUS.NET (77) - d6[0-7] : mx2
assign d6_0 = (masterdata) ? d4a_0 : d5_0;
assign d6_1 = (masterdata) ? d4a_1 : d5_1;
assign d6_2 = (masterdata) ? d4a_2 : d5_2;
assign d6_3 = (masterdata) ? d4a_3 : d5_3;
assign d6_4 = (masterdata) ? d4a_4 : d5_4;
assign d6_5 = (masterdata) ? d4a_5 : d5_5;
assign d6_6 = (masterdata) ? d4a_6 : d5_6;
assign d6_7 = (masterdata) ? d4a_7 : d5_7;

// JBUS.NET (78) - d6[8-15] : mx2
assign d6_8 = (masterdata) ? d4_8 : d5_8;
assign d6_9 = (masterdata) ? d4_9 : d5_9;
assign d6_10 = (masterdata) ? d4_10 : d5_10;
assign d6_11 = (masterdata) ? d4_11 : d5_11;
assign d6_12 = (masterdata) ? d4_12 : d5_12;
assign d6_13 = (masterdata) ? d4_13 : d5_13;
assign d6_14 = (masterdata) ? d4_14 : d5_14;
assign d6_15 = (masterdata) ? d4_15 : d5_15;

// JBUS.NET (82) - dout[0-15] : nivh
assign dout_0 = d6_0;
assign dout_1 = d6_1;
assign dout_2 = d6_2;
assign dout_3 = d6_3;
assign dout_4 = d6_4;
assign dout_5 = d6_5;
assign dout_6 = d6_6;
assign dout_7 = d6_7;
assign dout_8 = d6_8;
assign dout_9 = d6_9;
assign dout_10 = d6_10;
assign dout_11 = d6_11;
assign dout_12 = d6_12;
assign dout_13 = d6_13;
assign dout_14 = d6_14;
assign dout_15 = d6_15;

// JBUS.NET (83) - dout[16-31] : nivm
assign dout_16 = d3_16;
assign dout_17 = d3_17;
assign dout_18 = d3_18;
assign dout_19 = d3_19;
assign dout_20 = d3_20;
assign dout_21 = d3_21;
assign dout_22 = d3_22;
assign dout_23 = d3_23;
assign dout_24 = d3_24;
assign dout_25 = d3_25;
assign dout_26 = d3_26;
assign dout_27 = d3_27;
assign dout_28 = d3_28;
assign dout_29 = d3_29;
assign dout_30 = d3_30;
assign dout_31 = d3_31;

// JBUS.NET (87) - dsp16 : ldp1q
ldp1q dsp16_inst
(
	.q /* OUT */ (dsp16),
	.d /* IN */ (cfg_0),
	.g /* IN */ (cfgw),
	.sys_clk(sys_clk) // Generated
);

// JBUS.NET (88) - bigend : ldp1q
ldp1q bigend_inst
(
	.q /* OUT */ (bigend),
	.d /* IN */ (cfg_1),
	.g /* IN */ (cfgw),
	.sys_clk(sys_clk) // Generated
);

// JBUS.NET (94) - ad[0-23] : slatch
j_slatch ad_from_0_to_23_inst_0
(
	.q /* OUT */ (ad_0),
	.d /* IN */ (a_0),
	.clk /* IN */ (clk),
	.en /* IN */ (ack),
	.sys_clk(sys_clk) // Generated
);
j_slatch ad_from_0_to_23_inst_1
(
	.q /* OUT */ (ad_1),
	.d /* IN */ (a_1),
	.clk /* IN */ (clk),
	.en /* IN */ (ack),
	.sys_clk(sys_clk) // Generated
);
j_slatch ad_from_0_to_23_inst_2
(
	.q /* OUT */ (ad_2),
	.d /* IN */ (a_2),
	.clk /* IN */ (clk),
	.en /* IN */ (ack),
	.sys_clk(sys_clk) // Generated
);
j_slatch ad_from_0_to_23_inst_3
(
	.q /* OUT */ (ad_3),
	.d /* IN */ (a_3),
	.clk /* IN */ (clk),
	.en /* IN */ (ack),
	.sys_clk(sys_clk) // Generated
);
j_slatch ad_from_0_to_23_inst_4
(
	.q /* OUT */ (ad_4),
	.d /* IN */ (a_4),
	.clk /* IN */ (clk),
	.en /* IN */ (ack),
	.sys_clk(sys_clk) // Generated
);
j_slatch ad_from_0_to_23_inst_5
(
	.q /* OUT */ (ad_5),
	.d /* IN */ (a_5),
	.clk /* IN */ (clk),
	.en /* IN */ (ack),
	.sys_clk(sys_clk) // Generated
);
j_slatch ad_from_0_to_23_inst_6
(
	.q /* OUT */ (ad_6),
	.d /* IN */ (a_6),
	.clk /* IN */ (clk),
	.en /* IN */ (ack),
	.sys_clk(sys_clk) // Generated
);
j_slatch ad_from_0_to_23_inst_7
(
	.q /* OUT */ (ad_7),
	.d /* IN */ (a_7),
	.clk /* IN */ (clk),
	.en /* IN */ (ack),
	.sys_clk(sys_clk) // Generated
);
j_slatch ad_from_0_to_23_inst_8
(
	.q /* OUT */ (ad_8),
	.d /* IN */ (a_8),
	.clk /* IN */ (clk),
	.en /* IN */ (ack),
	.sys_clk(sys_clk) // Generated
);
j_slatch ad_from_0_to_23_inst_9
(
	.q /* OUT */ (ad_9),
	.d /* IN */ (a_9),
	.clk /* IN */ (clk),
	.en /* IN */ (ack),
	.sys_clk(sys_clk) // Generated
);
j_slatch ad_from_0_to_23_inst_10
(
	.q /* OUT */ (ad_10),
	.d /* IN */ (a_10),
	.clk /* IN */ (clk),
	.en /* IN */ (ack),
	.sys_clk(sys_clk) // Generated
);
j_slatch ad_from_0_to_23_inst_11
(
	.q /* OUT */ (ad_11),
	.d /* IN */ (a_11),
	.clk /* IN */ (clk),
	.en /* IN */ (ack),
	.sys_clk(sys_clk) // Generated
);
j_slatch ad_from_0_to_23_inst_12
(
	.q /* OUT */ (ad_12),
	.d /* IN */ (a_12),
	.clk /* IN */ (clk),
	.en /* IN */ (ack),
	.sys_clk(sys_clk) // Generated
);
j_slatch ad_from_0_to_23_inst_13
(
	.q /* OUT */ (ad_13),
	.d /* IN */ (a_13),
	.clk /* IN */ (clk),
	.en /* IN */ (ack),
	.sys_clk(sys_clk) // Generated
);
j_slatch ad_from_0_to_23_inst_14
(
	.q /* OUT */ (ad_14),
	.d /* IN */ (a_14),
	.clk /* IN */ (clk),
	.en /* IN */ (ack),
	.sys_clk(sys_clk) // Generated
);
j_slatch ad_from_0_to_23_inst_15
(
	.q /* OUT */ (ad_15),
	.d /* IN */ (a_15),
	.clk /* IN */ (clk),
	.en /* IN */ (ack),
	.sys_clk(sys_clk) // Generated
);
j_slatch ad_from_0_to_23_inst_16
(
	.q /* OUT */ (ad_16),
	.d /* IN */ (a_16),
	.clk /* IN */ (clk),
	.en /* IN */ (ack),
	.sys_clk(sys_clk) // Generated
);
j_slatch ad_from_0_to_23_inst_17
(
	.q /* OUT */ (ad_17),
	.d /* IN */ (a_17),
	.clk /* IN */ (clk),
	.en /* IN */ (ack),
	.sys_clk(sys_clk) // Generated
);
j_slatch ad_from_0_to_23_inst_18
(
	.q /* OUT */ (ad_18),
	.d /* IN */ (a_18),
	.clk /* IN */ (clk),
	.en /* IN */ (ack),
	.sys_clk(sys_clk) // Generated
);
j_slatch ad_from_0_to_23_inst_19
(
	.q /* OUT */ (ad_19),
	.d /* IN */ (a_19),
	.clk /* IN */ (clk),
	.en /* IN */ (ack),
	.sys_clk(sys_clk) // Generated
);
j_slatch ad_from_0_to_23_inst_20
(
	.q /* OUT */ (ad_20),
	.d /* IN */ (a_20),
	.clk /* IN */ (clk),
	.en /* IN */ (ack),
	.sys_clk(sys_clk) // Generated
);
j_slatch ad_from_0_to_23_inst_21
(
	.q /* OUT */ (ad_21),
	.d /* IN */ (a_21),
	.clk /* IN */ (clk),
	.en /* IN */ (ack),
	.sys_clk(sys_clk) // Generated
);
j_slatch ad_from_0_to_23_inst_22
(
	.q /* OUT */ (ad_22),
	.d /* IN */ (a_22),
	.clk /* IN */ (clk),
	.en /* IN */ (ack),
	.sys_clk(sys_clk) // Generated
);
j_slatch ad_from_0_to_23_inst_23
(
	.q /* OUT */ (ad_23),
	.d /* IN */ (a_23),
	.clk /* IN */ (clk),
	.en /* IN */ (ack),
	.sys_clk(sys_clk) // Generated
);

// JBUS.NET (96) - as[1] : or2
assign as_1 = ad_1 | seta1;

// JBUS.NET (98) - aout[0] : mx2
assign aout_0 = (ainen) ? ain_0 : ad_0;

// JBUS.NET (99) - aouti[1] : mx2
assign aouti_1 = (ainen) ? ain_1 : as_1;

// JBUS.NET (100) - aout[1] : nivu
assign aout_1 = aouti_1;

// JBUS.NET (101) - aout[2-13] : mx2
assign aout_2 = (ainen) ? ain_2 : ad_2;
assign aout_3 = (ainen) ? ain_3 : ad_3;
assign aout_4 = (ainen) ? ain_4 : ad_4;
assign aout_5 = (ainen) ? ain_5 : ad_5;
assign aout_6 = (ainen) ? ain_6 : ad_6;
assign aout_7 = (ainen) ? ain_7 : ad_7;
assign aout_8 = (ainen) ? ain_8 : ad_8;
assign aout_9 = (ainen) ? ain_9 : ad_9;
assign aout_10 = (ainen) ? ain_10 : ad_10;
assign aout_11 = (ainen) ? ain_11 : ad_11;
assign aout_12 = (ainen) ? ain_12 : ad_12;
assign aout_13 = (ainen) ? ain_13 : ad_13;

// JBUS.NET (102) - aouti[14] : mx2
assign aouti_14 = (ainen) ? ain_14 : ad_14;

// JBUS.NET (103) - aout[14] : nivh
assign aout_14 = aouti_14;

// JBUS.NET (104) - aout[15-23] : mx2
assign aout_15 = (ainen) ? ain_15 : ad_15;
assign aout_16 = (ainen) ? ain_16 : ad_16;
assign aout_17 = (ainen) ? ain_17 : ad_17;
assign aout_18 = (ainen) ? ain_18 : ad_18;
assign aout_19 = (ainen) ? ain_19 : ad_19;
assign aout_20 = (ainen) ? ain_20 : ad_20;
assign aout_21 = (ainen) ? ain_21 : ad_21;
assign aout_22 = (ainen) ? ain_22 : ad_22;
assign aout_23 = (ainen) ? ain_23 : ad_23;
endmodule
/* verilator lint_on LITENDIAN */
