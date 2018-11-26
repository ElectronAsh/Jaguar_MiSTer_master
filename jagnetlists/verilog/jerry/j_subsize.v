/* verilator lint_off LITENDIAN */
`include "defs.v"

module j_subsize
(
	output [0:22] sub,
	input [0:22] a,
	input b_0,
	input b_1,
	input b_2
);
wire sub_0;
wire co_0;
wire sub_1;
wire co_1;
wire sub_2;
wire co_2;
wire sub_3;
wire sub_4;
wire sub_5;
wire sub_6;
wire sub_7;
wire sub_8;
wire co_3;
wire co_4;
wire co_5;
wire co_6;
wire co_7;
wire co_8;
wire sub_9;
wire co_9;
wire sub_10;
wire sub_11;
wire sub_12;
wire sub_13;
wire sub_14;
wire sub_15;
wire co_10;
wire co_11;
wire co_12;
wire co_13;
wire co_14;
wire co_15;
wire sub_16;
wire co_16;
wire sub_17;
wire sub_18;
wire sub_19;
wire sub_20;
wire sub_21;
wire co_17;
wire co_18;
wire co_19;
wire co_20;
wire co_21;
wire sub_22;

// DSP_F-35.NET (392) - sub[0] : ha1
ha1 sub_index_0_inst
(
	.s /* OUT */ (sub_0),
	.co /* OUT */ (co_0),
	.a /* IN */ (a[0]),
	.b /* IN */ (b_0)
);

// DSP_F-35.NET (393) - sub[1] : fa1
fa1 sub_index_1_inst
(
	.s /* OUT */ (sub_1),
	.co /* OUT */ (co_1),
	.ci /* IN */ (a[1]),
	.a /* IN */ (b_1),
	.b /* IN */ (co_0)
);

// DSP_F-35.NET (394) - sub[2] : fa1
fa1 sub_index_2_inst
(
	.s /* OUT */ (sub_2),
	.co /* OUT */ (co_2),
	.ci /* IN */ (a[2]),
	.a /* IN */ (b_2),
	.b /* IN */ (co_1)
);

// DSP_F-35.NET (395) - sub[3-8] : hs1
j_hs1 sub_from_3_to_8_inst_0
(
	.q /* OUT */ (sub_3),
	.co /* OUT */ (co_3),
	.a /* IN */ (a[3]),
	.ci /* IN */ (co_2)
);
j_hs1 sub_from_3_to_8_inst_1
(
	.q /* OUT */ (sub_4),
	.co /* OUT */ (co_4),
	.a /* IN */ (a[4]),
	.ci /* IN */ (co_3)
);
j_hs1 sub_from_3_to_8_inst_2
(
	.q /* OUT */ (sub_5),
	.co /* OUT */ (co_5),
	.a /* IN */ (a[5]),
	.ci /* IN */ (co_4)
);
j_hs1 sub_from_3_to_8_inst_3
(
	.q /* OUT */ (sub_6),
	.co /* OUT */ (co_6),
	.a /* IN */ (a[6]),
	.ci /* IN */ (co_5)
);
j_hs1 sub_from_3_to_8_inst_4
(
	.q /* OUT */ (sub_7),
	.co /* OUT */ (co_7),
	.a /* IN */ (a[7]),
	.ci /* IN */ (co_6)
);
j_hs1 sub_from_3_to_8_inst_5
(
	.q /* OUT */ (sub_8),
	.co /* OUT */ (co_8),
	.a /* IN */ (a[8]),
	.ci /* IN */ (co_7)
);

// DSP_F-35.NET (396) - sub[9] : en
assign sub_9 = ~(a[9] ^ co_8);

// DSP_F-35.NET (397) - co[9] : or8
assign co_9 = a[3] | a[4] | a[5] | a[6] | a[7] | a[8] | a[9] | co_2;

// DSP_F-35.NET (398) - sub[10-15] : hs1
j_hs1 sub_from_10_to_15_inst_0
(
	.q /* OUT */ (sub_10),
	.co /* OUT */ (co_10),
	.a /* IN */ (a[10]),
	.ci /* IN */ (co_9)
);
j_hs1 sub_from_10_to_15_inst_1
(
	.q /* OUT */ (sub_11),
	.co /* OUT */ (co_11),
	.a /* IN */ (a[11]),
	.ci /* IN */ (co_10)
);
j_hs1 sub_from_10_to_15_inst_2
(
	.q /* OUT */ (sub_12),
	.co /* OUT */ (co_12),
	.a /* IN */ (a[12]),
	.ci /* IN */ (co_11)
);
j_hs1 sub_from_10_to_15_inst_3
(
	.q /* OUT */ (sub_13),
	.co /* OUT */ (co_13),
	.a /* IN */ (a[13]),
	.ci /* IN */ (co_12)
);
j_hs1 sub_from_10_to_15_inst_4
(
	.q /* OUT */ (sub_14),
	.co /* OUT */ (co_14),
	.a /* IN */ (a[14]),
	.ci /* IN */ (co_13)
);
j_hs1 sub_from_10_to_15_inst_5
(
	.q /* OUT */ (sub_15),
	.co /* OUT */ (co_15),
	.a /* IN */ (a[15]),
	.ci /* IN */ (co_14)
);

// DSP_F-35.NET (399) - sub[16] : en
assign sub_16 = ~(a[16] ^ co_15);

// DSP_F-35.NET (400) - co[16] : or8
assign co_16 = a[10] | a[11] | a[12] | a[13] | a[14] | a[15] | a[16] | co_9;

// DSP_F-35.NET (401) - sub[17-21] : hs1
j_hs1 sub_from_17_to_21_inst_0
(
	.q /* OUT */ (sub_17),
	.co /* OUT */ (co_17),
	.a /* IN */ (a[17]),
	.ci /* IN */ (co_16)
);
j_hs1 sub_from_17_to_21_inst_1
(
	.q /* OUT */ (sub_18),
	.co /* OUT */ (co_18),
	.a /* IN */ (a[18]),
	.ci /* IN */ (co_17)
);
j_hs1 sub_from_17_to_21_inst_2
(
	.q /* OUT */ (sub_19),
	.co /* OUT */ (co_19),
	.a /* IN */ (a[19]),
	.ci /* IN */ (co_18)
);
j_hs1 sub_from_17_to_21_inst_3
(
	.q /* OUT */ (sub_20),
	.co /* OUT */ (co_20),
	.a /* IN */ (a[20]),
	.ci /* IN */ (co_19)
);
j_hs1 sub_from_17_to_21_inst_4
(
	.q /* OUT */ (sub_21),
	.co /* OUT */ (co_21),
	.a /* IN */ (a[21]),
	.ci /* IN */ (co_20)
);

// DSP_F-35.NET (402) - sub[22] : en
assign sub_22 = ~(a[22] ^ co_21);

// DSP_F-35.NET (403) - sub : join
assign sub[0] = sub_0;
assign sub[1] = sub_1;
assign sub[2] = sub_2;
assign sub[3] = sub_3;
assign sub[4] = sub_4;
assign sub[5] = sub_5;
assign sub[6] = sub_6;
assign sub[7] = sub_7;
assign sub[8] = sub_8;
assign sub[9] = sub_9;
assign sub[10] = sub_10;
assign sub[11] = sub_11;
assign sub[12] = sub_12;
assign sub[13] = sub_13;
assign sub[14] = sub_14;
assign sub[15] = sub_15;
assign sub[16] = sub_16;
assign sub[17] = sub_17;
assign sub[18] = sub_18;
assign sub[19] = sub_19;
assign sub[20] = sub_20;
assign sub[21] = sub_21;
assign sub[22] = sub_22;
endmodule
/* verilator lint_on LITENDIAN */
