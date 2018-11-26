/* verilator lint_off LITENDIAN */
`include "defs.v"

module dbus
(
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
	input din_32,
	input din_33,
	input din_34,
	input din_35,
	input din_36,
	input din_37,
	input din_38,
	input din_39,
	input din_40,
	input din_41,
	input din_42,
	input din_43,
	input din_44,
	input din_45,
	input din_46,
	input din_47,
	input din_48,
	input din_49,
	input din_50,
	input din_51,
	input din_52,
	input din_53,
	input din_54,
	input din_55,
	input din_56,
	input din_57,
	input din_58,
	input din_59,
	input din_60,
	input din_61,
	input din_62,
	input din_63,
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
	input dinlatch_2,
	input dinlatch_3,
	input dinlatch_4,
	input dinlatch_5,
	input dinlatch_6,
	input dinlatch_7,
	input dmuxd_0,
	input dmuxd_1,
	input dmuxd_2,
	input dmuxu_0,
	input dmuxu_1,
	input dmuxu_2,
	input dren,
	input xdsrc,
	input ourack,
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
	input wd_32,
	input wd_33,
	input wd_34,
	input wd_35,
	input wd_36,
	input wd_37,
	input wd_38,
	input wd_39,
	input wd_40,
	input wd_41,
	input wd_42,
	input wd_43,
	input wd_44,
	input wd_45,
	input wd_46,
	input wd_47,
	input wd_48,
	input wd_49,
	input wd_50,
	input wd_51,
	input wd_52,
	input wd_53,
	input wd_54,
	input wd_55,
	input wd_56,
	input wd_57,
	input wd_58,
	input wd_59,
	input wd_60,
	input wd_61,
	input wd_62,
	input wd_63,
	input clk,
	output dp_0,
	output dp_1,
	output dp_2,
	output dp_3,
	output dp_4,
	output dp_5,
	output dp_6,
	output dp_7,
	output dp_8,
	output dp_9,
	output dp_10,
	output dp_11,
	output dp_12,
	output dp_13,
	output dp_14,
	output dp_15,
	output dob_0,
	output dob_1,
	output dob_2,
	output dob_3,
	output dob_4,
	output dob_5,
	output dob_6,
	output dob_7,
	output dob_8,
	output dob_9,
	output dob_10,
	output dob_11,
	output dob_12,
	output dob_13,
	output dob_14,
	output dob_15,
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
	output d5_32,
	output d5_33,
	output d5_34,
	output d5_35,
	output d5_36,
	output d5_37,
	output d5_38,
	output d5_39,
	output d5_40,
	output d5_41,
	output d5_42,
	output d5_43,
	output d5_44,
	output d5_45,
	output d5_46,
	output d5_47,
	output d5_48,
	output d5_49,
	output d5_50,
	output d5_51,
	output d5_52,
	output d5_53,
	output d5_54,
	output d5_55,
	output d5_56,
	output d5_57,
	output d5_58,
	output d5_59,
	output d5_60,
	output d5_61,
	output d5_62,
	output d5_63,
	output d_0,
	output d_1,
	output d_2,
	output d_3,
	output d_4,
	output d_5,
	output d_6,
	output d_7,
	output d_8,
	output d_9,
	output d_10,
	output d_11,
	output d_12,
	output d_13,
	output d_14,
	output d_15,
	output d_16,
	output d_17,
	output d_18,
	output d_19,
	output d_20,
	output d_21,
	output d_22,
	output d_23,
	output d_24,
	output d_25,
	output d_26,
	output d_27,
	output d_28,
	output d_29,
	output d_30,
	output d_31,
	output d_32,
	output d_33,
	output d_34,
	output d_35,
	output d_36,
	output d_37,
	output d_38,
	output d_39,
	output d_40,
	output d_41,
	output d_42,
	output d_43,
	output d_44,
	output d_45,
	output d_46,
	output d_47,
	output d_48,
	output d_49,
	output d_50,
	output d_51,
	output d_52,
	output d_53,
	output d_54,
	output d_55,
	output d_56,
	output d_57,
	output d_58,
	output d_59,
	output d_60,
	output d_61,
	output d_62,
	output d_63,
	input sys_clk // Generated
);
wire [0:15] d;
wire [0:2] dmuxu;
wire [0:2] dmuxd;
wire d3i_0;
wire d3i_1;
wire d3i_2;
wire d3i_3;
wire d3i_4;
wire d3i_5;
wire d3i_6;
wire d3i_7;
wire d3i_8;
wire d3i_9;
wire d3i_10;
wire d3i_11;
wire d3i_12;
wire d3i_13;
wire d3i_14;
wire d3i_15;
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
wire d3_32;
wire d3_33;
wire d3_34;
wire d3_35;
wire d3_36;
wire d3_37;
wire d3_38;
wire d3_39;
wire d3_40;
wire d3_41;
wire d3_42;
wire d3_43;
wire d3_44;
wire d3_45;
wire d3_46;
wire d3_47;
wire d3_48;
wire d3_49;
wire d3_50;
wire d3_51;
wire d3_52;
wire d3_53;
wire d3_54;
wire d3_55;
wire d3_56;
wire d3_57;
wire d3_58;
wire d3_59;
wire d3_60;
wire d3_61;
wire d3_62;
wire d3_63;
wire d4_8;
wire d4_9;
wire d4_10;
wire d4_11;
wire d4_12;
wire d4_13;
wire d4_14;
wire d4_15;
wire d4_16;
wire d4_17;
wire d4_18;
wire d4_19;
wire d4_20;
wire d4_21;
wire d4_22;
wire d4_23;
wire d4_24;
wire d4_25;
wire d4_26;
wire d4_27;
wire d4_28;
wire d4_29;
wire d4_30;
wire d4_31;
wire d4_32;
wire d4_33;
wire d4_34;
wire d4_35;
wire d4_36;
wire d4_37;
wire d4_38;
wire d4_39;
wire d4_40;
wire d4_41;
wire d4_42;
wire d4_43;
wire d4_44;
wire d4_45;
wire d4_46;
wire d4_47;
wire d4_48;
wire d4_49;
wire d4_50;
wire d4_51;
wire d4_52;
wire d4_53;
wire d4_54;
wire d4_55;
wire d4_56;
wire d4_57;
wire d4_58;
wire d4_59;
wire d4_60;
wire d4_61;
wire d4_62;
wire d4_63;
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
wire d5_16;
wire d5_17;
wire d5_18;
wire d5_19;
wire d5_20;
wire d5_21;
wire d5_22;
wire d5_23;
wire d5_24;
wire d5_25;
wire d5_26;
wire d5_27;
wire d5_28;
wire d5_29;
wire d5_30;
wire d5_31;
wire dout_0;
wire dout_1;
wire dout_2;
wire dout_3;
wire dout_4;
wire dout_5;
wire dout_6;
wire dout_7;
wire dout_8;
wire dout_9;
wire dout_10;
wire dout_11;
wire dout_12;
wire dout_13;
wire dout_14;
wire dout_15;
wire vd_0;
wire vd_1;
wire vd_2;
wire vd_3;
wire vd_4;
wire vd_5;
wire gnd;
wire vd_6;
wire vcc;
wire vd_7;

// Output buffers
wire dout_16_obuf;
wire dout_17_obuf;
wire dout_18_obuf;
wire dout_19_obuf;
wire dout_20_obuf;
wire dout_21_obuf;
wire dout_22_obuf;
wire dout_23_obuf;
wire dout_24_obuf;
wire dout_25_obuf;
wire dout_26_obuf;
wire dout_27_obuf;
wire dout_28_obuf;
wire dout_29_obuf;
wire dout_30_obuf;
wire dout_31_obuf;
wire d5_32_obuf;
wire d5_33_obuf;
wire d5_34_obuf;
wire d5_35_obuf;
wire d5_36_obuf;
wire d5_37_obuf;
wire d5_38_obuf;
wire d5_39_obuf;
wire d5_40_obuf;
wire d5_41_obuf;
wire d5_42_obuf;
wire d5_43_obuf;
wire d5_44_obuf;
wire d5_45_obuf;
wire d5_46_obuf;
wire d5_47_obuf;
wire d5_48_obuf;
wire d5_49_obuf;
wire d5_50_obuf;
wire d5_51_obuf;
wire d5_52_obuf;
wire d5_53_obuf;
wire d5_54_obuf;
wire d5_55_obuf;
wire d5_56_obuf;
wire d5_57_obuf;
wire d5_58_obuf;
wire d5_59_obuf;
wire d5_60_obuf;
wire d5_61_obuf;
wire d5_62_obuf;
wire d5_63_obuf;


// Output buffers
assign dout_16 = dout_16_obuf;
assign dout_17 = dout_17_obuf;
assign dout_18 = dout_18_obuf;
assign dout_19 = dout_19_obuf;
assign dout_20 = dout_20_obuf;
assign dout_21 = dout_21_obuf;
assign dout_22 = dout_22_obuf;
assign dout_23 = dout_23_obuf;
assign dout_24 = dout_24_obuf;
assign dout_25 = dout_25_obuf;
assign dout_26 = dout_26_obuf;
assign dout_27 = dout_27_obuf;
assign dout_28 = dout_28_obuf;
assign dout_29 = dout_29_obuf;
assign dout_30 = dout_30_obuf;
assign dout_31 = dout_31_obuf;
assign d5_32 = d5_32_obuf;
assign d5_33 = d5_33_obuf;
assign d5_34 = d5_34_obuf;
assign d5_35 = d5_35_obuf;
assign d5_36 = d5_36_obuf;
assign d5_37 = d5_37_obuf;
assign d5_38 = d5_38_obuf;
assign d5_39 = d5_39_obuf;
assign d5_40 = d5_40_obuf;
assign d5_41 = d5_41_obuf;
assign d5_42 = d5_42_obuf;
assign d5_43 = d5_43_obuf;
assign d5_44 = d5_44_obuf;
assign d5_45 = d5_45_obuf;
assign d5_46 = d5_46_obuf;
assign d5_47 = d5_47_obuf;
assign d5_48 = d5_48_obuf;
assign d5_49 = d5_49_obuf;
assign d5_50 = d5_50_obuf;
assign d5_51 = d5_51_obuf;
assign d5_52 = d5_52_obuf;
assign d5_53 = d5_53_obuf;
assign d5_54 = d5_54_obuf;
assign d5_55 = d5_55_obuf;
assign d5_56 = d5_56_obuf;
assign d5_57 = d5_57_obuf;
assign d5_58 = d5_58_obuf;
assign d5_59 = d5_59_obuf;
assign d5_60 = d5_60_obuf;
assign d5_61 = d5_61_obuf;
assign d5_62 = d5_62_obuf;
assign d5_63 = d5_63_obuf;


// DBUS.NET (43) - d : join
assign d[0] = dr_0;
assign d[1] = dr_1;
assign d[2] = dr_2;
assign d[3] = dr_3;
assign d[4] = dr_4;
assign d[5] = dr_5;
assign d[6] = dr_6;
assign d[7] = dr_7;
assign d[8] = dr_8;
assign d[9] = dr_9;
assign d[10] = dr_10;
assign d[11] = dr_11;
assign d[12] = dr_12;
assign d[13] = dr_13;
assign d[14] = dr_14;
assign d[15] = dr_15;

// DBUS.NET (44) - du : dummy

// DBUS.NET (45) - dmuxu : join
assign dmuxu[0] = dmuxu_0;
assign dmuxu[1] = dmuxu_1;
assign dmuxu[2] = dmuxu_2;

// DBUS.NET (46) - duu : dummy

// DBUS.NET (47) - dmuxd : join
assign dmuxd[0] = dmuxd_0;
assign dmuxd[1] = dmuxd_1;
assign dmuxd[2] = dmuxd_2;

// DBUS.NET (48) - ddu : dummy

// DBUS.NET (53) - d3i[0-15] : mx4
mx4 d3i_from_0_to_15_inst_0
(
	.z /* OUT */ (d3i_0),
	.a0 /* IN */ (wd_0),
	.a1 /* IN */ (dr_0),
	.a2 /* IN */ (din_0),
	.a3 /* IN */ (din_0),
	.s0 /* IN */ (dren),
	.s1 /* IN */ (xdsrc)
);
mx4 d3i_from_0_to_15_inst_1
(
	.z /* OUT */ (d3i_1),
	.a0 /* IN */ (wd_1),
	.a1 /* IN */ (dr_1),
	.a2 /* IN */ (din_1),
	.a3 /* IN */ (din_1),
	.s0 /* IN */ (dren),
	.s1 /* IN */ (xdsrc)
);
mx4 d3i_from_0_to_15_inst_2
(
	.z /* OUT */ (d3i_2),
	.a0 /* IN */ (wd_2),
	.a1 /* IN */ (dr_2),
	.a2 /* IN */ (din_2),
	.a3 /* IN */ (din_2),
	.s0 /* IN */ (dren),
	.s1 /* IN */ (xdsrc)
);
mx4 d3i_from_0_to_15_inst_3
(
	.z /* OUT */ (d3i_3),
	.a0 /* IN */ (wd_3),
	.a1 /* IN */ (dr_3),
	.a2 /* IN */ (din_3),
	.a3 /* IN */ (din_3),
	.s0 /* IN */ (dren),
	.s1 /* IN */ (xdsrc)
);
mx4 d3i_from_0_to_15_inst_4
(
	.z /* OUT */ (d3i_4),
	.a0 /* IN */ (wd_4),
	.a1 /* IN */ (dr_4),
	.a2 /* IN */ (din_4),
	.a3 /* IN */ (din_4),
	.s0 /* IN */ (dren),
	.s1 /* IN */ (xdsrc)
);
mx4 d3i_from_0_to_15_inst_5
(
	.z /* OUT */ (d3i_5),
	.a0 /* IN */ (wd_5),
	.a1 /* IN */ (dr_5),
	.a2 /* IN */ (din_5),
	.a3 /* IN */ (din_5),
	.s0 /* IN */ (dren),
	.s1 /* IN */ (xdsrc)
);
mx4 d3i_from_0_to_15_inst_6
(
	.z /* OUT */ (d3i_6),
	.a0 /* IN */ (wd_6),
	.a1 /* IN */ (dr_6),
	.a2 /* IN */ (din_6),
	.a3 /* IN */ (din_6),
	.s0 /* IN */ (dren),
	.s1 /* IN */ (xdsrc)
);
mx4 d3i_from_0_to_15_inst_7
(
	.z /* OUT */ (d3i_7),
	.a0 /* IN */ (wd_7),
	.a1 /* IN */ (dr_7),
	.a2 /* IN */ (din_7),
	.a3 /* IN */ (din_7),
	.s0 /* IN */ (dren),
	.s1 /* IN */ (xdsrc)
);
mx4 d3i_from_0_to_15_inst_8
(
	.z /* OUT */ (d3i_8),
	.a0 /* IN */ (wd_8),
	.a1 /* IN */ (dr_8),
	.a2 /* IN */ (din_8),
	.a3 /* IN */ (din_8),
	.s0 /* IN */ (dren),
	.s1 /* IN */ (xdsrc)
);
mx4 d3i_from_0_to_15_inst_9
(
	.z /* OUT */ (d3i_9),
	.a0 /* IN */ (wd_9),
	.a1 /* IN */ (dr_9),
	.a2 /* IN */ (din_9),
	.a3 /* IN */ (din_9),
	.s0 /* IN */ (dren),
	.s1 /* IN */ (xdsrc)
);
mx4 d3i_from_0_to_15_inst_10
(
	.z /* OUT */ (d3i_10),
	.a0 /* IN */ (wd_10),
	.a1 /* IN */ (dr_10),
	.a2 /* IN */ (din_10),
	.a3 /* IN */ (din_10),
	.s0 /* IN */ (dren),
	.s1 /* IN */ (xdsrc)
);
mx4 d3i_from_0_to_15_inst_11
(
	.z /* OUT */ (d3i_11),
	.a0 /* IN */ (wd_11),
	.a1 /* IN */ (dr_11),
	.a2 /* IN */ (din_11),
	.a3 /* IN */ (din_11),
	.s0 /* IN */ (dren),
	.s1 /* IN */ (xdsrc)
);
mx4 d3i_from_0_to_15_inst_12
(
	.z /* OUT */ (d3i_12),
	.a0 /* IN */ (wd_12),
	.a1 /* IN */ (dr_12),
	.a2 /* IN */ (din_12),
	.a3 /* IN */ (din_12),
	.s0 /* IN */ (dren),
	.s1 /* IN */ (xdsrc)
);
mx4 d3i_from_0_to_15_inst_13
(
	.z /* OUT */ (d3i_13),
	.a0 /* IN */ (wd_13),
	.a1 /* IN */ (dr_13),
	.a2 /* IN */ (din_13),
	.a3 /* IN */ (din_13),
	.s0 /* IN */ (dren),
	.s1 /* IN */ (xdsrc)
);
mx4 d3i_from_0_to_15_inst_14
(
	.z /* OUT */ (d3i_14),
	.a0 /* IN */ (wd_14),
	.a1 /* IN */ (dr_14),
	.a2 /* IN */ (din_14),
	.a3 /* IN */ (din_14),
	.s0 /* IN */ (dren),
	.s1 /* IN */ (xdsrc)
);
mx4 d3i_from_0_to_15_inst_15
(
	.z /* OUT */ (d3i_15),
	.a0 /* IN */ (wd_15),
	.a1 /* IN */ (dr_15),
	.a2 /* IN */ (din_15),
	.a3 /* IN */ (din_15),
	.s0 /* IN */ (dren),
	.s1 /* IN */ (xdsrc)
);

// DBUS.NET (54) - d3[0-15] : niv
assign d3_0 = d3i_0;
assign d3_1 = d3i_1;
assign d3_2 = d3i_2;
assign d3_3 = d3i_3;
assign d3_4 = d3i_4;
assign d3_5 = d3i_5;
assign d3_6 = d3i_6;
assign d3_7 = d3i_7;
assign d3_8 = d3i_8;
assign d3_9 = d3i_9;
assign d3_10 = d3i_10;
assign d3_11 = d3i_11;
assign d3_12 = d3i_12;
assign d3_13 = d3i_13;
assign d3_14 = d3i_14;
assign d3_15 = d3i_15;

// DBUS.NET (55) - d3[16-63] : mx2
assign d3_16 = (xdsrc) ? din_16 : wd_16;
assign d3_17 = (xdsrc) ? din_17 : wd_17;
assign d3_18 = (xdsrc) ? din_18 : wd_18;
assign d3_19 = (xdsrc) ? din_19 : wd_19;
assign d3_20 = (xdsrc) ? din_20 : wd_20;
assign d3_21 = (xdsrc) ? din_21 : wd_21;
assign d3_22 = (xdsrc) ? din_22 : wd_22;
assign d3_23 = (xdsrc) ? din_23 : wd_23;
assign d3_24 = (xdsrc) ? din_24 : wd_24;
assign d3_25 = (xdsrc) ? din_25 : wd_25;
assign d3_26 = (xdsrc) ? din_26 : wd_26;
assign d3_27 = (xdsrc) ? din_27 : wd_27;
assign d3_28 = (xdsrc) ? din_28 : wd_28;
assign d3_29 = (xdsrc) ? din_29 : wd_29;
assign d3_30 = (xdsrc) ? din_30 : wd_30;
assign d3_31 = (xdsrc) ? din_31 : wd_31;
assign d3_32 = (xdsrc) ? din_32 : wd_32;
assign d3_33 = (xdsrc) ? din_33 : wd_33;
assign d3_34 = (xdsrc) ? din_34 : wd_34;
assign d3_35 = (xdsrc) ? din_35 : wd_35;
assign d3_36 = (xdsrc) ? din_36 : wd_36;
assign d3_37 = (xdsrc) ? din_37 : wd_37;
assign d3_38 = (xdsrc) ? din_38 : wd_38;
assign d3_39 = (xdsrc) ? din_39 : wd_39;
assign d3_40 = (xdsrc) ? din_40 : wd_40;
assign d3_41 = (xdsrc) ? din_41 : wd_41;
assign d3_42 = (xdsrc) ? din_42 : wd_42;
assign d3_43 = (xdsrc) ? din_43 : wd_43;
assign d3_44 = (xdsrc) ? din_44 : wd_44;
assign d3_45 = (xdsrc) ? din_45 : wd_45;
assign d3_46 = (xdsrc) ? din_46 : wd_46;
assign d3_47 = (xdsrc) ? din_47 : wd_47;
assign d3_48 = (xdsrc) ? din_48 : wd_48;
assign d3_49 = (xdsrc) ? din_49 : wd_49;
assign d3_50 = (xdsrc) ? din_50 : wd_50;
assign d3_51 = (xdsrc) ? din_51 : wd_51;
assign d3_52 = (xdsrc) ? din_52 : wd_52;
assign d3_53 = (xdsrc) ? din_53 : wd_53;
assign d3_54 = (xdsrc) ? din_54 : wd_54;
assign d3_55 = (xdsrc) ? din_55 : wd_55;
assign d3_56 = (xdsrc) ? din_56 : wd_56;
assign d3_57 = (xdsrc) ? din_57 : wd_57;
assign d3_58 = (xdsrc) ? din_58 : wd_58;
assign d3_59 = (xdsrc) ? din_59 : wd_59;
assign d3_60 = (xdsrc) ? din_60 : wd_60;
assign d3_61 = (xdsrc) ? din_61 : wd_61;
assign d3_62 = (xdsrc) ? din_62 : wd_62;
assign d3_63 = (xdsrc) ? din_63 : wd_63;

// DBUS.NET (59) - d4 : up
up d4_inst
(
	.din_0 /* IN */ (d3_0),
	.din_1 /* IN */ (d3_1),
	.din_2 /* IN */ (d3_2),
	.din_3 /* IN */ (d3_3),
	.din_4 /* IN */ (d3_4),
	.din_5 /* IN */ (d3_5),
	.din_6 /* IN */ (d3_6),
	.din_7 /* IN */ (d3_7),
	.din_8 /* IN */ (d3_8),
	.din_9 /* IN */ (d3_9),
	.din_10 /* IN */ (d3_10),
	.din_11 /* IN */ (d3_11),
	.din_12 /* IN */ (d3_12),
	.din_13 /* IN */ (d3_13),
	.din_14 /* IN */ (d3_14),
	.din_15 /* IN */ (d3_15),
	.din_16 /* IN */ (d3_16),
	.din_17 /* IN */ (d3_17),
	.din_18 /* IN */ (d3_18),
	.din_19 /* IN */ (d3_19),
	.din_20 /* IN */ (d3_20),
	.din_21 /* IN */ (d3_21),
	.din_22 /* IN */ (d3_22),
	.din_23 /* IN */ (d3_23),
	.din_24 /* IN */ (d3_24),
	.din_25 /* IN */ (d3_25),
	.din_26 /* IN */ (d3_26),
	.din_27 /* IN */ (d3_27),
	.din_28 /* IN */ (d3_28),
	.din_29 /* IN */ (d3_29),
	.din_30 /* IN */ (d3_30),
	.din_31 /* IN */ (d3_31),
	.din_32 /* IN */ (d3_32),
	.din_33 /* IN */ (d3_33),
	.din_34 /* IN */ (d3_34),
	.din_35 /* IN */ (d3_35),
	.din_36 /* IN */ (d3_36),
	.din_37 /* IN */ (d3_37),
	.din_38 /* IN */ (d3_38),
	.din_39 /* IN */ (d3_39),
	.din_40 /* IN */ (d3_40),
	.din_41 /* IN */ (d3_41),
	.din_42 /* IN */ (d3_42),
	.din_43 /* IN */ (d3_43),
	.din_44 /* IN */ (d3_44),
	.din_45 /* IN */ (d3_45),
	.din_46 /* IN */ (d3_46),
	.din_47 /* IN */ (d3_47),
	.din_48 /* IN */ (d3_48),
	.din_49 /* IN */ (d3_49),
	.din_50 /* IN */ (d3_50),
	.din_51 /* IN */ (d3_51),
	.din_52 /* IN */ (d3_52),
	.din_53 /* IN */ (d3_53),
	.din_54 /* IN */ (d3_54),
	.din_55 /* IN */ (d3_55),
	.din_56 /* IN */ (d3_56),
	.din_57 /* IN */ (d3_57),
	.din_58 /* IN */ (d3_58),
	.din_59 /* IN */ (d3_59),
	.din_60 /* IN */ (d3_60),
	.din_61 /* IN */ (d3_61),
	.din_62 /* IN */ (d3_62),
	.din_63 /* IN */ (d3_63),
	.dmuxu_0 /* IN */ (dmuxu_0),
	.dmuxu_1 /* IN */ (dmuxu_1),
	.dmuxu_2 /* IN */ (dmuxu_2),
	.dout_8 /* OUT */ (d4_8),
	.dout_9 /* OUT */ (d4_9),
	.dout_10 /* OUT */ (d4_10),
	.dout_11 /* OUT */ (d4_11),
	.dout_12 /* OUT */ (d4_12),
	.dout_13 /* OUT */ (d4_13),
	.dout_14 /* OUT */ (d4_14),
	.dout_15 /* OUT */ (d4_15),
	.dout_16 /* OUT */ (d4_16),
	.dout_17 /* OUT */ (d4_17),
	.dout_18 /* OUT */ (d4_18),
	.dout_19 /* OUT */ (d4_19),
	.dout_20 /* OUT */ (d4_20),
	.dout_21 /* OUT */ (d4_21),
	.dout_22 /* OUT */ (d4_22),
	.dout_23 /* OUT */ (d4_23),
	.dout_24 /* OUT */ (d4_24),
	.dout_25 /* OUT */ (d4_25),
	.dout_26 /* OUT */ (d4_26),
	.dout_27 /* OUT */ (d4_27),
	.dout_28 /* OUT */ (d4_28),
	.dout_29 /* OUT */ (d4_29),
	.dout_30 /* OUT */ (d4_30),
	.dout_31 /* OUT */ (d4_31),
	.dout_32 /* OUT */ (d4_32),
	.dout_33 /* OUT */ (d4_33),
	.dout_34 /* OUT */ (d4_34),
	.dout_35 /* OUT */ (d4_35),
	.dout_36 /* OUT */ (d4_36),
	.dout_37 /* OUT */ (d4_37),
	.dout_38 /* OUT */ (d4_38),
	.dout_39 /* OUT */ (d4_39),
	.dout_40 /* OUT */ (d4_40),
	.dout_41 /* OUT */ (d4_41),
	.dout_42 /* OUT */ (d4_42),
	.dout_43 /* OUT */ (d4_43),
	.dout_44 /* OUT */ (d4_44),
	.dout_45 /* OUT */ (d4_45),
	.dout_46 /* OUT */ (d4_46),
	.dout_47 /* OUT */ (d4_47),
	.dout_48 /* OUT */ (d4_48),
	.dout_49 /* OUT */ (d4_49),
	.dout_50 /* OUT */ (d4_50),
	.dout_51 /* OUT */ (d4_51),
	.dout_52 /* OUT */ (d4_52),
	.dout_53 /* OUT */ (d4_53),
	.dout_54 /* OUT */ (d4_54),
	.dout_55 /* OUT */ (d4_55),
	.dout_56 /* OUT */ (d4_56),
	.dout_57 /* OUT */ (d4_57),
	.dout_58 /* OUT */ (d4_58),
	.dout_59 /* OUT */ (d4_59),
	.dout_60 /* OUT */ (d4_60),
	.dout_61 /* OUT */ (d4_61),
	.dout_62 /* OUT */ (d4_62),
	.dout_63 /* OUT */ (d4_63)
);

// DBUS.NET (63) - d5[0-7] : stlatch
stlatch d5_from_0_to_7_inst_0
(
	.d1 /* OUT */ (d5_0),
	.d /* IN */ (d3_0),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_0),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_0_to_7_inst_1
(
	.d1 /* OUT */ (d5_1),
	.d /* IN */ (d3_1),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_0),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_0_to_7_inst_2
(
	.d1 /* OUT */ (d5_2),
	.d /* IN */ (d3_2),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_0),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_0_to_7_inst_3
(
	.d1 /* OUT */ (d5_3),
	.d /* IN */ (d3_3),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_0),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_0_to_7_inst_4
(
	.d1 /* OUT */ (d5_4),
	.d /* IN */ (d3_4),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_0),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_0_to_7_inst_5
(
	.d1 /* OUT */ (d5_5),
	.d /* IN */ (d3_5),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_0),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_0_to_7_inst_6
(
	.d1 /* OUT */ (d5_6),
	.d /* IN */ (d3_6),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_0),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_0_to_7_inst_7
(
	.d1 /* OUT */ (d5_7),
	.d /* IN */ (d3_7),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_0),
	.sys_clk(sys_clk) // Generated
);

// DBUS.NET (64) - d5[8-15] : stlatch
stlatch d5_from_8_to_15_inst_0
(
	.d1 /* OUT */ (d5_8),
	.d /* IN */ (d4_8),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_1),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_8_to_15_inst_1
(
	.d1 /* OUT */ (d5_9),
	.d /* IN */ (d4_9),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_1),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_8_to_15_inst_2
(
	.d1 /* OUT */ (d5_10),
	.d /* IN */ (d4_10),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_1),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_8_to_15_inst_3
(
	.d1 /* OUT */ (d5_11),
	.d /* IN */ (d4_11),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_1),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_8_to_15_inst_4
(
	.d1 /* OUT */ (d5_12),
	.d /* IN */ (d4_12),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_1),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_8_to_15_inst_5
(
	.d1 /* OUT */ (d5_13),
	.d /* IN */ (d4_13),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_1),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_8_to_15_inst_6
(
	.d1 /* OUT */ (d5_14),
	.d /* IN */ (d4_14),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_1),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_8_to_15_inst_7
(
	.d1 /* OUT */ (d5_15),
	.d /* IN */ (d4_15),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_1),
	.sys_clk(sys_clk) // Generated
);

// DBUS.NET (65) - d5[16-23] : stlatch
stlatch d5_from_16_to_23_inst_0
(
	.d1 /* OUT */ (d5_16),
	.d /* IN */ (d4_16),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_2),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_16_to_23_inst_1
(
	.d1 /* OUT */ (d5_17),
	.d /* IN */ (d4_17),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_2),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_16_to_23_inst_2
(
	.d1 /* OUT */ (d5_18),
	.d /* IN */ (d4_18),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_2),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_16_to_23_inst_3
(
	.d1 /* OUT */ (d5_19),
	.d /* IN */ (d4_19),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_2),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_16_to_23_inst_4
(
	.d1 /* OUT */ (d5_20),
	.d /* IN */ (d4_20),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_2),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_16_to_23_inst_5
(
	.d1 /* OUT */ (d5_21),
	.d /* IN */ (d4_21),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_2),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_16_to_23_inst_6
(
	.d1 /* OUT */ (d5_22),
	.d /* IN */ (d4_22),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_2),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_16_to_23_inst_7
(
	.d1 /* OUT */ (d5_23),
	.d /* IN */ (d4_23),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_2),
	.sys_clk(sys_clk) // Generated
);

// DBUS.NET (66) - d5[24-31] : stlatch
stlatch d5_from_24_to_31_inst_0
(
	.d1 /* OUT */ (d5_24),
	.d /* IN */ (d4_24),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_3),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_24_to_31_inst_1
(
	.d1 /* OUT */ (d5_25),
	.d /* IN */ (d4_25),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_3),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_24_to_31_inst_2
(
	.d1 /* OUT */ (d5_26),
	.d /* IN */ (d4_26),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_3),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_24_to_31_inst_3
(
	.d1 /* OUT */ (d5_27),
	.d /* IN */ (d4_27),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_3),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_24_to_31_inst_4
(
	.d1 /* OUT */ (d5_28),
	.d /* IN */ (d4_28),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_3),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_24_to_31_inst_5
(
	.d1 /* OUT */ (d5_29),
	.d /* IN */ (d4_29),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_3),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_24_to_31_inst_6
(
	.d1 /* OUT */ (d5_30),
	.d /* IN */ (d4_30),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_3),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_24_to_31_inst_7
(
	.d1 /* OUT */ (d5_31),
	.d /* IN */ (d4_31),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_3),
	.sys_clk(sys_clk) // Generated
);

// DBUS.NET (67) - d5[32-39] : stlatch
stlatch d5_from_32_to_39_inst_0
(
	.d1 /* OUT */ (d5_32_obuf),
	.d /* IN */ (d4_32),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_4),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_32_to_39_inst_1
(
	.d1 /* OUT */ (d5_33_obuf),
	.d /* IN */ (d4_33),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_4),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_32_to_39_inst_2
(
	.d1 /* OUT */ (d5_34_obuf),
	.d /* IN */ (d4_34),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_4),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_32_to_39_inst_3
(
	.d1 /* OUT */ (d5_35_obuf),
	.d /* IN */ (d4_35),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_4),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_32_to_39_inst_4
(
	.d1 /* OUT */ (d5_36_obuf),
	.d /* IN */ (d4_36),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_4),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_32_to_39_inst_5
(
	.d1 /* OUT */ (d5_37_obuf),
	.d /* IN */ (d4_37),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_4),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_32_to_39_inst_6
(
	.d1 /* OUT */ (d5_38_obuf),
	.d /* IN */ (d4_38),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_4),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_32_to_39_inst_7
(
	.d1 /* OUT */ (d5_39_obuf),
	.d /* IN */ (d4_39),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_4),
	.sys_clk(sys_clk) // Generated
);

// DBUS.NET (68) - d5[40-47] : stlatch
stlatch d5_from_40_to_47_inst_0
(
	.d1 /* OUT */ (d5_40_obuf),
	.d /* IN */ (d4_40),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_5),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_40_to_47_inst_1
(
	.d1 /* OUT */ (d5_41_obuf),
	.d /* IN */ (d4_41),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_5),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_40_to_47_inst_2
(
	.d1 /* OUT */ (d5_42_obuf),
	.d /* IN */ (d4_42),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_5),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_40_to_47_inst_3
(
	.d1 /* OUT */ (d5_43_obuf),
	.d /* IN */ (d4_43),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_5),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_40_to_47_inst_4
(
	.d1 /* OUT */ (d5_44_obuf),
	.d /* IN */ (d4_44),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_5),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_40_to_47_inst_5
(
	.d1 /* OUT */ (d5_45_obuf),
	.d /* IN */ (d4_45),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_5),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_40_to_47_inst_6
(
	.d1 /* OUT */ (d5_46_obuf),
	.d /* IN */ (d4_46),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_5),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_40_to_47_inst_7
(
	.d1 /* OUT */ (d5_47_obuf),
	.d /* IN */ (d4_47),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_5),
	.sys_clk(sys_clk) // Generated
);

// DBUS.NET (69) - d5[48-55] : stlatch
stlatch d5_from_48_to_55_inst_0
(
	.d1 /* OUT */ (d5_48_obuf),
	.d /* IN */ (d4_48),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_6),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_48_to_55_inst_1
(
	.d1 /* OUT */ (d5_49_obuf),
	.d /* IN */ (d4_49),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_6),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_48_to_55_inst_2
(
	.d1 /* OUT */ (d5_50_obuf),
	.d /* IN */ (d4_50),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_6),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_48_to_55_inst_3
(
	.d1 /* OUT */ (d5_51_obuf),
	.d /* IN */ (d4_51),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_6),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_48_to_55_inst_4
(
	.d1 /* OUT */ (d5_52_obuf),
	.d /* IN */ (d4_52),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_6),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_48_to_55_inst_5
(
	.d1 /* OUT */ (d5_53_obuf),
	.d /* IN */ (d4_53),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_6),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_48_to_55_inst_6
(
	.d1 /* OUT */ (d5_54_obuf),
	.d /* IN */ (d4_54),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_6),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_48_to_55_inst_7
(
	.d1 /* OUT */ (d5_55_obuf),
	.d /* IN */ (d4_55),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_6),
	.sys_clk(sys_clk) // Generated
);

// DBUS.NET (70) - d5[56-63] : stlatch
stlatch d5_from_56_to_63_inst_0
(
	.d1 /* OUT */ (d5_56_obuf),
	.d /* IN */ (d4_56),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_7),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_56_to_63_inst_1
(
	.d1 /* OUT */ (d5_57_obuf),
	.d /* IN */ (d4_57),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_7),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_56_to_63_inst_2
(
	.d1 /* OUT */ (d5_58_obuf),
	.d /* IN */ (d4_58),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_7),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_56_to_63_inst_3
(
	.d1 /* OUT */ (d5_59_obuf),
	.d /* IN */ (d4_59),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_7),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_56_to_63_inst_4
(
	.d1 /* OUT */ (d5_60_obuf),
	.d /* IN */ (d4_60),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_7),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_56_to_63_inst_5
(
	.d1 /* OUT */ (d5_61_obuf),
	.d /* IN */ (d4_61),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_7),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_56_to_63_inst_6
(
	.d1 /* OUT */ (d5_62_obuf),
	.d /* IN */ (d4_62),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_7),
	.sys_clk(sys_clk) // Generated
);
stlatch d5_from_56_to_63_inst_7
(
	.d1 /* OUT */ (d5_63_obuf),
	.d /* IN */ (d4_63),
	.clk /* IN */ (clk),
	.en /* IN */ (dinlatch_7),
	.sys_clk(sys_clk) // Generated
);

// DBUS.NET (92) - dout : down
down dout_inst
(
	.din_0 /* IN */ (d5_0),
	.din_1 /* IN */ (d5_1),
	.din_2 /* IN */ (d5_2),
	.din_3 /* IN */ (d5_3),
	.din_4 /* IN */ (d5_4),
	.din_5 /* IN */ (d5_5),
	.din_6 /* IN */ (d5_6),
	.din_7 /* IN */ (d5_7),
	.din_8 /* IN */ (d5_8),
	.din_9 /* IN */ (d5_9),
	.din_10 /* IN */ (d5_10),
	.din_11 /* IN */ (d5_11),
	.din_12 /* IN */ (d5_12),
	.din_13 /* IN */ (d5_13),
	.din_14 /* IN */ (d5_14),
	.din_15 /* IN */ (d5_15),
	.din_16 /* IN */ (d5_16),
	.din_17 /* IN */ (d5_17),
	.din_18 /* IN */ (d5_18),
	.din_19 /* IN */ (d5_19),
	.din_20 /* IN */ (d5_20),
	.din_21 /* IN */ (d5_21),
	.din_22 /* IN */ (d5_22),
	.din_23 /* IN */ (d5_23),
	.din_24 /* IN */ (d5_24),
	.din_25 /* IN */ (d5_25),
	.din_26 /* IN */ (d5_26),
	.din_27 /* IN */ (d5_27),
	.din_28 /* IN */ (d5_28),
	.din_29 /* IN */ (d5_29),
	.din_30 /* IN */ (d5_30),
	.din_31 /* IN */ (d5_31),
	.din_32 /* IN */ (d5_32_obuf),
	.din_33 /* IN */ (d5_33_obuf),
	.din_34 /* IN */ (d5_34_obuf),
	.din_35 /* IN */ (d5_35_obuf),
	.din_36 /* IN */ (d5_36_obuf),
	.din_37 /* IN */ (d5_37_obuf),
	.din_38 /* IN */ (d5_38_obuf),
	.din_39 /* IN */ (d5_39_obuf),
	.din_40 /* IN */ (d5_40_obuf),
	.din_41 /* IN */ (d5_41_obuf),
	.din_42 /* IN */ (d5_42_obuf),
	.din_43 /* IN */ (d5_43_obuf),
	.din_44 /* IN */ (d5_44_obuf),
	.din_45 /* IN */ (d5_45_obuf),
	.din_46 /* IN */ (d5_46_obuf),
	.din_47 /* IN */ (d5_47_obuf),
	.din_48 /* IN */ (d5_48_obuf),
	.din_49 /* IN */ (d5_49_obuf),
	.din_50 /* IN */ (d5_50_obuf),
	.din_51 /* IN */ (d5_51_obuf),
	.din_52 /* IN */ (d5_52_obuf),
	.din_53 /* IN */ (d5_53_obuf),
	.din_54 /* IN */ (d5_54_obuf),
	.din_55 /* IN */ (d5_55_obuf),
	.din_56 /* IN */ (d5_56_obuf),
	.din_57 /* IN */ (d5_57_obuf),
	.din_58 /* IN */ (d5_58_obuf),
	.din_59 /* IN */ (d5_59_obuf),
	.din_60 /* IN */ (d5_60_obuf),
	.din_61 /* IN */ (d5_61_obuf),
	.din_62 /* IN */ (d5_62_obuf),
	.din_63 /* IN */ (d5_63_obuf),
	.dmuxd_0 /* IN */ (dmuxd_0),
	.dmuxd_1 /* IN */ (dmuxd_1),
	.dmuxd_2 /* IN */ (dmuxd_2),
	.dout_0 /* OUT */ (dout_0),
	.dout_1 /* OUT */ (dout_1),
	.dout_2 /* OUT */ (dout_2),
	.dout_3 /* OUT */ (dout_3),
	.dout_4 /* OUT */ (dout_4),
	.dout_5 /* OUT */ (dout_5),
	.dout_6 /* OUT */ (dout_6),
	.dout_7 /* OUT */ (dout_7),
	.dout_8 /* OUT */ (dout_8),
	.dout_9 /* OUT */ (dout_9),
	.dout_10 /* OUT */ (dout_10),
	.dout_11 /* OUT */ (dout_11),
	.dout_12 /* OUT */ (dout_12),
	.dout_13 /* OUT */ (dout_13),
	.dout_14 /* OUT */ (dout_14),
	.dout_15 /* OUT */ (dout_15),
	.dout_16 /* OUT */ (dout_16_obuf),
	.dout_17 /* OUT */ (dout_17_obuf),
	.dout_18 /* OUT */ (dout_18_obuf),
	.dout_19 /* OUT */ (dout_19_obuf),
	.dout_20 /* OUT */ (dout_20_obuf),
	.dout_21 /* OUT */ (dout_21_obuf),
	.dout_22 /* OUT */ (dout_22_obuf),
	.dout_23 /* OUT */ (dout_23_obuf),
	.dout_24 /* OUT */ (dout_24_obuf),
	.dout_25 /* OUT */ (dout_25_obuf),
	.dout_26 /* OUT */ (dout_26_obuf),
	.dout_27 /* OUT */ (dout_27_obuf),
	.dout_28 /* OUT */ (dout_28_obuf),
	.dout_29 /* OUT */ (dout_29_obuf),
	.dout_30 /* OUT */ (dout_30_obuf),
	.dout_31 /* OUT */ (dout_31_obuf)
);

// DBUS.NET (96) - d[0-31] : nivm
assign d_0 = dout_0;
assign d_1 = dout_1;
assign d_2 = dout_2;
assign d_3 = dout_3;
assign d_4 = dout_4;
assign d_5 = dout_5;
assign d_6 = dout_6;
assign d_7 = dout_7;
assign d_8 = dout_8;
assign d_9 = dout_9;
assign d_10 = dout_10;
assign d_11 = dout_11;
assign d_12 = dout_12;
assign d_13 = dout_13;
assign d_14 = dout_14;
assign d_15 = dout_15;
assign d_16 = dout_16_obuf;
assign d_17 = dout_17_obuf;
assign d_18 = dout_18_obuf;
assign d_19 = dout_19_obuf;
assign d_20 = dout_20_obuf;
assign d_21 = dout_21_obuf;
assign d_22 = dout_22_obuf;
assign d_23 = dout_23_obuf;
assign d_24 = dout_24_obuf;
assign d_25 = dout_25_obuf;
assign d_26 = dout_26_obuf;
assign d_27 = dout_27_obuf;
assign d_28 = dout_28_obuf;
assign d_29 = dout_29_obuf;
assign d_30 = dout_30_obuf;
assign d_31 = dout_31_obuf;

// DBUS.NET (97) - d[32-63] : nivm
assign d_32 = d5_32_obuf;
assign d_33 = d5_33_obuf;
assign d_34 = d5_34_obuf;
assign d_35 = d5_35_obuf;
assign d_36 = d5_36_obuf;
assign d_37 = d5_37_obuf;
assign d_38 = d5_38_obuf;
assign d_39 = d5_39_obuf;
assign d_40 = d5_40_obuf;
assign d_41 = d5_41_obuf;
assign d_42 = d5_42_obuf;
assign d_43 = d5_43_obuf;
assign d_44 = d5_44_obuf;
assign d_45 = d5_45_obuf;
assign d_46 = d5_46_obuf;
assign d_47 = d5_47_obuf;
assign d_48 = d5_48_obuf;
assign d_49 = d5_49_obuf;
assign d_50 = d5_50_obuf;
assign d_51 = d5_51_obuf;
assign d_52 = d5_52_obuf;
assign d_53 = d5_53_obuf;
assign d_54 = d5_54_obuf;
assign d_55 = d5_55_obuf;
assign d_56 = d5_56_obuf;
assign d_57 = d5_57_obuf;
assign d_58 = d5_58_obuf;
assign d_59 = d5_59_obuf;
assign d_60 = d5_60_obuf;
assign d_61 = d5_61_obuf;
assign d_62 = d5_62_obuf;
assign d_63 = d5_63_obuf;

// DBUS.NET (101) - vd[0-5] : mx2
assign vd_0 = (ourack) ? gnd : dout_0;
assign vd_1 = (ourack) ? gnd : dout_1;
assign vd_2 = (ourack) ? gnd : dout_2;
assign vd_3 = (ourack) ? gnd : dout_3;
assign vd_4 = (ourack) ? gnd : dout_4;
assign vd_5 = (ourack) ? gnd : dout_5;

// DBUS.NET (102) - vd[6] : mx2
assign vd_6 = (ourack) ? vcc : dout_6;

// DBUS.NET (103) - vd[7] : mx2
assign vd_7 = (ourack) ? gnd : dout_7;

// DBUS.NET (105) - gnd : tie0
assign gnd = 1'b0;

// DBUS.NET (106) - tie : tie1
assign vcc = 1'b1;

// DBUS.NET (110) - dob[0-7] : nivu2
assign dob_0 = vd_0;
assign dob_1 = vd_1;
assign dob_2 = vd_2;
assign dob_3 = vd_3;
assign dob_4 = vd_4;
assign dob_5 = vd_5;
assign dob_6 = vd_6;
assign dob_7 = vd_7;

// DBUS.NET (111) - dob[8-9] : nivu2
assign dob_8 = dout_8;
assign dob_9 = dout_9;

// DBUS.NET (112) - dob[10-15] : nivu
assign dob_10 = dout_10;
assign dob_11 = dout_11;
assign dob_12 = dout_12;
assign dob_13 = dout_13;
assign dob_14 = dout_14;
assign dob_15 = dout_15;

// DBUS.NET (113) - dp[0-7] : niv
assign dp_0 = vd_0;
assign dp_1 = vd_1;
assign dp_2 = vd_2;
assign dp_3 = vd_3;
assign dp_4 = vd_4;
assign dp_5 = vd_5;
assign dp_6 = vd_6;
assign dp_7 = vd_7;

// DBUS.NET (114) - dp[8-15] : niv
assign dp_8 = dout_8;
assign dp_9 = dout_9;
assign dp_10 = dout_10;
assign dp_11 = dout_11;
assign dp_12 = dout_12;
assign dp_13 = dout_13;
assign dp_14 = dout_14;
assign dp_15 = dout_15;
endmodule
/* verilator lint_on LITENDIAN */
