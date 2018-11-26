/* verilator lint_off LITENDIAN */
`include "defs.v"

module down
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
	input dmuxd_0,
	input dmuxd_1,
	input dmuxd_2,
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
	output dout_31
);
wire d1_8;
wire d1_9;
wire d1_10;
wire d1_11;
wire d1_12;
wire d1_13;
wire d1_14;
wire d1_15;

// Output buffers
wire dout_24_obuf;
wire dout_25_obuf;
wire dout_26_obuf;
wire dout_27_obuf;
wire dout_28_obuf;
wire dout_29_obuf;
wire dout_30_obuf;
wire dout_31_obuf;


// Output buffers
assign dout_24 = dout_24_obuf;
assign dout_25 = dout_25_obuf;
assign dout_26 = dout_26_obuf;
assign dout_27 = dout_27_obuf;
assign dout_28 = dout_28_obuf;
assign dout_29 = dout_29_obuf;
assign dout_30 = dout_30_obuf;
assign dout_31 = dout_31_obuf;


// DBUS.NET (146) - dout[16-31] : mx2p
assign dout_16 = (dmuxd_2) ? din_48 : din_16;
assign dout_17 = (dmuxd_2) ? din_49 : din_17;
assign dout_18 = (dmuxd_2) ? din_50 : din_18;
assign dout_19 = (dmuxd_2) ? din_51 : din_19;
assign dout_20 = (dmuxd_2) ? din_52 : din_20;
assign dout_21 = (dmuxd_2) ? din_53 : din_21;
assign dout_22 = (dmuxd_2) ? din_54 : din_22;
assign dout_23 = (dmuxd_2) ? din_55 : din_23;
assign dout_24_obuf = (dmuxd_2) ? din_56 : din_24;
assign dout_25_obuf = (dmuxd_2) ? din_57 : din_25;
assign dout_26_obuf = (dmuxd_2) ? din_58 : din_26;
assign dout_27_obuf = (dmuxd_2) ? din_59 : din_27;
assign dout_28_obuf = (dmuxd_2) ? din_60 : din_28;
assign dout_29_obuf = (dmuxd_2) ? din_61 : din_29;
assign dout_30_obuf = (dmuxd_2) ? din_62 : din_30;
assign dout_31_obuf = (dmuxd_2) ? din_63 : din_31;

// DBUS.NET (147) - d1[8-15] : mx2p
assign d1_8 = (dmuxd_2) ? din_40 : din_8;
assign d1_9 = (dmuxd_2) ? din_41 : din_9;
assign d1_10 = (dmuxd_2) ? din_42 : din_10;
assign d1_11 = (dmuxd_2) ? din_43 : din_11;
assign d1_12 = (dmuxd_2) ? din_44 : din_12;
assign d1_13 = (dmuxd_2) ? din_45 : din_13;
assign d1_14 = (dmuxd_2) ? din_46 : din_14;
assign d1_15 = (dmuxd_2) ? din_47 : din_15;

// DBUS.NET (149) - dout[8-15] : mx2p
assign dout_8 = (dmuxd_1) ? dout_24_obuf : d1_8;
assign dout_9 = (dmuxd_1) ? dout_25_obuf : d1_9;
assign dout_10 = (dmuxd_1) ? dout_26_obuf : d1_10;
assign dout_11 = (dmuxd_1) ? dout_27_obuf : d1_11;
assign dout_12 = (dmuxd_1) ? dout_28_obuf : d1_12;
assign dout_13 = (dmuxd_1) ? dout_29_obuf : d1_13;
assign dout_14 = (dmuxd_1) ? dout_30_obuf : d1_14;
assign dout_15 = (dmuxd_1) ? dout_31_obuf : d1_15;

// DBUS.NET (151) - dout[0-7] : mx8p
mx8 dout_from_0_to_7_inst_0
(
	.z /* OUT */ (dout_0),
	.a0 /* IN */ (din_0),
	.a1 /* IN */ (din_8),
	.a2 /* IN */ (din_16),
	.a3 /* IN */ (din_24),
	.a4 /* IN */ (din_32),
	.a5 /* IN */ (din_40),
	.a6 /* IN */ (din_48),
	.a7 /* IN */ (din_56),
	.s0 /* IN */ (dmuxd_0),
	.s1 /* IN */ (dmuxd_1),
	.s2 /* IN */ (dmuxd_2)
);
mx8 dout_from_0_to_7_inst_1
(
	.z /* OUT */ (dout_1),
	.a0 /* IN */ (din_1),
	.a1 /* IN */ (din_9),
	.a2 /* IN */ (din_17),
	.a3 /* IN */ (din_25),
	.a4 /* IN */ (din_33),
	.a5 /* IN */ (din_41),
	.a6 /* IN */ (din_49),
	.a7 /* IN */ (din_57),
	.s0 /* IN */ (dmuxd_0),
	.s1 /* IN */ (dmuxd_1),
	.s2 /* IN */ (dmuxd_2)
);
mx8 dout_from_0_to_7_inst_2
(
	.z /* OUT */ (dout_2),
	.a0 /* IN */ (din_2),
	.a1 /* IN */ (din_10),
	.a2 /* IN */ (din_18),
	.a3 /* IN */ (din_26),
	.a4 /* IN */ (din_34),
	.a5 /* IN */ (din_42),
	.a6 /* IN */ (din_50),
	.a7 /* IN */ (din_58),
	.s0 /* IN */ (dmuxd_0),
	.s1 /* IN */ (dmuxd_1),
	.s2 /* IN */ (dmuxd_2)
);
mx8 dout_from_0_to_7_inst_3
(
	.z /* OUT */ (dout_3),
	.a0 /* IN */ (din_3),
	.a1 /* IN */ (din_11),
	.a2 /* IN */ (din_19),
	.a3 /* IN */ (din_27),
	.a4 /* IN */ (din_35),
	.a5 /* IN */ (din_43),
	.a6 /* IN */ (din_51),
	.a7 /* IN */ (din_59),
	.s0 /* IN */ (dmuxd_0),
	.s1 /* IN */ (dmuxd_1),
	.s2 /* IN */ (dmuxd_2)
);
mx8 dout_from_0_to_7_inst_4
(
	.z /* OUT */ (dout_4),
	.a0 /* IN */ (din_4),
	.a1 /* IN */ (din_12),
	.a2 /* IN */ (din_20),
	.a3 /* IN */ (din_28),
	.a4 /* IN */ (din_36),
	.a5 /* IN */ (din_44),
	.a6 /* IN */ (din_52),
	.a7 /* IN */ (din_60),
	.s0 /* IN */ (dmuxd_0),
	.s1 /* IN */ (dmuxd_1),
	.s2 /* IN */ (dmuxd_2)
);
mx8 dout_from_0_to_7_inst_5
(
	.z /* OUT */ (dout_5),
	.a0 /* IN */ (din_5),
	.a1 /* IN */ (din_13),
	.a2 /* IN */ (din_21),
	.a3 /* IN */ (din_29),
	.a4 /* IN */ (din_37),
	.a5 /* IN */ (din_45),
	.a6 /* IN */ (din_53),
	.a7 /* IN */ (din_61),
	.s0 /* IN */ (dmuxd_0),
	.s1 /* IN */ (dmuxd_1),
	.s2 /* IN */ (dmuxd_2)
);
mx8 dout_from_0_to_7_inst_6
(
	.z /* OUT */ (dout_6),
	.a0 /* IN */ (din_6),
	.a1 /* IN */ (din_14),
	.a2 /* IN */ (din_22),
	.a3 /* IN */ (din_30),
	.a4 /* IN */ (din_38),
	.a5 /* IN */ (din_46),
	.a6 /* IN */ (din_54),
	.a7 /* IN */ (din_62),
	.s0 /* IN */ (dmuxd_0),
	.s1 /* IN */ (dmuxd_1),
	.s2 /* IN */ (dmuxd_2)
);
mx8 dout_from_0_to_7_inst_7
(
	.z /* OUT */ (dout_7),
	.a0 /* IN */ (din_7),
	.a1 /* IN */ (din_15),
	.a2 /* IN */ (din_23),
	.a3 /* IN */ (din_31),
	.a4 /* IN */ (din_39),
	.a5 /* IN */ (din_47),
	.a6 /* IN */ (din_55),
	.a7 /* IN */ (din_63),
	.s0 /* IN */ (dmuxd_0),
	.s1 /* IN */ (dmuxd_1),
	.s2 /* IN */ (dmuxd_2)
);
endmodule
/* verilator lint_on LITENDIAN */
