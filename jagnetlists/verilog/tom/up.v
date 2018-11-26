/* verilator lint_off LITENDIAN */
`include "defs.v"

module up
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
	input dmuxu_0,
	input dmuxu_1,
	input dmuxu_2,
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
	output dout_32,
	output dout_33,
	output dout_34,
	output dout_35,
	output dout_36,
	output dout_37,
	output dout_38,
	output dout_39,
	output dout_40,
	output dout_41,
	output dout_42,
	output dout_43,
	output dout_44,
	output dout_45,
	output dout_46,
	output dout_47,
	output dout_48,
	output dout_49,
	output dout_50,
	output dout_51,
	output dout_52,
	output dout_53,
	output dout_54,
	output dout_55,
	output dout_56,
	output dout_57,
	output dout_58,
	output dout_59,
	output dout_60,
	output dout_61,
	output dout_62,
	output dout_63
);

// Output buffers
wire dout_8_obuf;
wire dout_9_obuf;
wire dout_10_obuf;
wire dout_11_obuf;
wire dout_12_obuf;
wire dout_13_obuf;
wire dout_14_obuf;
wire dout_15_obuf;
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


// Output buffers
assign dout_8 = dout_8_obuf;
assign dout_9 = dout_9_obuf;
assign dout_10 = dout_10_obuf;
assign dout_11 = dout_11_obuf;
assign dout_12 = dout_12_obuf;
assign dout_13 = dout_13_obuf;
assign dout_14 = dout_14_obuf;
assign dout_15 = dout_15_obuf;
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


// DBUS.NET (131) - dout[8-15] : mx2p
assign dout_8_obuf = (dmuxu_0) ? din_0 : din_8;
assign dout_9_obuf = (dmuxu_0) ? din_1 : din_9;
assign dout_10_obuf = (dmuxu_0) ? din_2 : din_10;
assign dout_11_obuf = (dmuxu_0) ? din_3 : din_11;
assign dout_12_obuf = (dmuxu_0) ? din_4 : din_12;
assign dout_13_obuf = (dmuxu_0) ? din_5 : din_13;
assign dout_14_obuf = (dmuxu_0) ? din_6 : din_14;
assign dout_15_obuf = (dmuxu_0) ? din_7 : din_15;

// DBUS.NET (132) - dout[16-23] : mx2p
assign dout_16_obuf = (dmuxu_1) ? din_0 : din_16;
assign dout_17_obuf = (dmuxu_1) ? din_1 : din_17;
assign dout_18_obuf = (dmuxu_1) ? din_2 : din_18;
assign dout_19_obuf = (dmuxu_1) ? din_3 : din_19;
assign dout_20_obuf = (dmuxu_1) ? din_4 : din_20;
assign dout_21_obuf = (dmuxu_1) ? din_5 : din_21;
assign dout_22_obuf = (dmuxu_1) ? din_6 : din_22;
assign dout_23_obuf = (dmuxu_1) ? din_7 : din_23;

// DBUS.NET (133) - dout[24-31] : mx4p
mx4 dout_from_24_to_31_inst_0
(
	.z /* OUT */ (dout_24_obuf),
	.a0 /* IN */ (din_24),
	.a1 /* IN */ (din_24),
	.a2 /* IN */ (din_8),
	.a3 /* IN */ (din_0),
	.s0 /* IN */ (dmuxu_0),
	.s1 /* IN */ (dmuxu_1)
);
mx4 dout_from_24_to_31_inst_1
(
	.z /* OUT */ (dout_25_obuf),
	.a0 /* IN */ (din_25),
	.a1 /* IN */ (din_25),
	.a2 /* IN */ (din_9),
	.a3 /* IN */ (din_1),
	.s0 /* IN */ (dmuxu_0),
	.s1 /* IN */ (dmuxu_1)
);
mx4 dout_from_24_to_31_inst_2
(
	.z /* OUT */ (dout_26_obuf),
	.a0 /* IN */ (din_26),
	.a1 /* IN */ (din_26),
	.a2 /* IN */ (din_10),
	.a3 /* IN */ (din_2),
	.s0 /* IN */ (dmuxu_0),
	.s1 /* IN */ (dmuxu_1)
);
mx4 dout_from_24_to_31_inst_3
(
	.z /* OUT */ (dout_27_obuf),
	.a0 /* IN */ (din_27),
	.a1 /* IN */ (din_27),
	.a2 /* IN */ (din_11),
	.a3 /* IN */ (din_3),
	.s0 /* IN */ (dmuxu_0),
	.s1 /* IN */ (dmuxu_1)
);
mx4 dout_from_24_to_31_inst_4
(
	.z /* OUT */ (dout_28_obuf),
	.a0 /* IN */ (din_28),
	.a1 /* IN */ (din_28),
	.a2 /* IN */ (din_12),
	.a3 /* IN */ (din_4),
	.s0 /* IN */ (dmuxu_0),
	.s1 /* IN */ (dmuxu_1)
);
mx4 dout_from_24_to_31_inst_5
(
	.z /* OUT */ (dout_29_obuf),
	.a0 /* IN */ (din_29),
	.a1 /* IN */ (din_29),
	.a2 /* IN */ (din_13),
	.a3 /* IN */ (din_5),
	.s0 /* IN */ (dmuxu_0),
	.s1 /* IN */ (dmuxu_1)
);
mx4 dout_from_24_to_31_inst_6
(
	.z /* OUT */ (dout_30_obuf),
	.a0 /* IN */ (din_30),
	.a1 /* IN */ (din_30),
	.a2 /* IN */ (din_14),
	.a3 /* IN */ (din_6),
	.s0 /* IN */ (dmuxu_0),
	.s1 /* IN */ (dmuxu_1)
);
mx4 dout_from_24_to_31_inst_7
(
	.z /* OUT */ (dout_31_obuf),
	.a0 /* IN */ (din_31),
	.a1 /* IN */ (din_31),
	.a2 /* IN */ (din_15),
	.a3 /* IN */ (din_7),
	.s0 /* IN */ (dmuxu_0),
	.s1 /* IN */ (dmuxu_1)
);

// DBUS.NET (135) - dout[32-39] : mx2p
assign dout_32 = (dmuxu_2) ? din_0 : din_32;
assign dout_33 = (dmuxu_2) ? din_1 : din_33;
assign dout_34 = (dmuxu_2) ? din_2 : din_34;
assign dout_35 = (dmuxu_2) ? din_3 : din_35;
assign dout_36 = (dmuxu_2) ? din_4 : din_36;
assign dout_37 = (dmuxu_2) ? din_5 : din_37;
assign dout_38 = (dmuxu_2) ? din_6 : din_38;
assign dout_39 = (dmuxu_2) ? din_7 : din_39;

// DBUS.NET (136) - dout[40-63] : mx2p
assign dout_40 = (dmuxu_2) ? dout_8_obuf : din_40;
assign dout_41 = (dmuxu_2) ? dout_9_obuf : din_41;
assign dout_42 = (dmuxu_2) ? dout_10_obuf : din_42;
assign dout_43 = (dmuxu_2) ? dout_11_obuf : din_43;
assign dout_44 = (dmuxu_2) ? dout_12_obuf : din_44;
assign dout_45 = (dmuxu_2) ? dout_13_obuf : din_45;
assign dout_46 = (dmuxu_2) ? dout_14_obuf : din_46;
assign dout_47 = (dmuxu_2) ? dout_15_obuf : din_47;
assign dout_48 = (dmuxu_2) ? dout_16_obuf : din_48;
assign dout_49 = (dmuxu_2) ? dout_17_obuf : din_49;
assign dout_50 = (dmuxu_2) ? dout_18_obuf : din_50;
assign dout_51 = (dmuxu_2) ? dout_19_obuf : din_51;
assign dout_52 = (dmuxu_2) ? dout_20_obuf : din_52;
assign dout_53 = (dmuxu_2) ? dout_21_obuf : din_53;
assign dout_54 = (dmuxu_2) ? dout_22_obuf : din_54;
assign dout_55 = (dmuxu_2) ? dout_23_obuf : din_55;
assign dout_56 = (dmuxu_2) ? dout_24_obuf : din_56;
assign dout_57 = (dmuxu_2) ? dout_25_obuf : din_57;
assign dout_58 = (dmuxu_2) ? dout_26_obuf : din_58;
assign dout_59 = (dmuxu_2) ? dout_27_obuf : din_59;
assign dout_60 = (dmuxu_2) ? dout_28_obuf : din_60;
assign dout_61 = (dmuxu_2) ? dout_29_obuf : din_61;
assign dout_62 = (dmuxu_2) ? dout_30_obuf : din_62;
assign dout_63 = (dmuxu_2) ? dout_31_obuf : din_63;
endmodule
/* verilator lint_on LITENDIAN */
