/* verilator lint_off LITENDIAN */
`include "defs.v"

module fa32_int
(
	output [0:31] s,
	output co32,
	output co31,
	output co24,
	input c,
	input [0:31] a,
	input [0:31] b
);
wire s_0;
wire s_1;
wire s_2;
wire s_3;
wire s_4;
wire s_5;
wire s_6;
wire s_7;
wire s_8;
wire s_9;
wire s_10;
wire s_11;
wire s_12;
wire s_13;
wire s_14;
wire s_15;
wire s_16;
wire s_17;
wire s_18;
wire s_19;
wire s_20;
wire s_21;
wire s_22;
wire s_23;
wire s_24;
wire s_25;
wire s_26;
wire s_27;
wire s_28;
wire s_29;
wire s_30;
wire s_31;

// DUPLO.NET (850) - adder32 : fa32
fa32 adder32_inst
(
	.s0 /* OUT */ (s_0),
	.s1 /* OUT */ (s_1),
	.s2 /* OUT */ (s_2),
	.s3 /* OUT */ (s_3),
	.s4 /* OUT */ (s_4),
	.s5 /* OUT */ (s_5),
	.s6 /* OUT */ (s_6),
	.s7 /* OUT */ (s_7),
	.s8 /* OUT */ (s_8),
	.s9 /* OUT */ (s_9),
	.s10 /* OUT */ (s_10),
	.s11 /* OUT */ (s_11),
	.s12 /* OUT */ (s_12),
	.s13 /* OUT */ (s_13),
	.s14 /* OUT */ (s_14),
	.s15 /* OUT */ (s_15),
	.s16 /* OUT */ (s_16),
	.s17 /* OUT */ (s_17),
	.s18 /* OUT */ (s_18),
	.s19 /* OUT */ (s_19),
	.s20 /* OUT */ (s_20),
	.s21 /* OUT */ (s_21),
	.s22 /* OUT */ (s_22),
	.s23 /* OUT */ (s_23),
	.s24 /* OUT */ (s_24),
	.s25 /* OUT */ (s_25),
	.s26 /* OUT */ (s_26),
	.s27 /* OUT */ (s_27),
	.s28 /* OUT */ (s_28),
	.s29 /* OUT */ (s_29),
	.s30 /* OUT */ (s_30),
	.s31 /* OUT */ (s_31),
	.co32 /* OUT */ (co32),
	.co31 /* OUT */ (co31),
	.co24 /* OUT */ (co24),
	.ci /* IN */ (c),
	.a0 /* IN */ (a[0]),
	.b0 /* IN */ (b[0]),
	.a1 /* IN */ (a[1]),
	.b1 /* IN */ (b[1]),
	.a2 /* IN */ (a[2]),
	.b2 /* IN */ (b[2]),
	.a3 /* IN */ (a[3]),
	.b3 /* IN */ (b[3]),
	.a4 /* IN */ (a[4]),
	.b4 /* IN */ (b[4]),
	.a5 /* IN */ (a[5]),
	.b5 /* IN */ (b[5]),
	.a6 /* IN */ (a[6]),
	.b6 /* IN */ (b[6]),
	.a7 /* IN */ (a[7]),
	.b7 /* IN */ (b[7]),
	.a8 /* IN */ (a[8]),
	.b8 /* IN */ (b[8]),
	.a9 /* IN */ (a[9]),
	.b9 /* IN */ (b[9]),
	.a10 /* IN */ (a[10]),
	.b10 /* IN */ (b[10]),
	.a11 /* IN */ (a[11]),
	.b11 /* IN */ (b[11]),
	.a12 /* IN */ (a[12]),
	.b12 /* IN */ (b[12]),
	.a13 /* IN */ (a[13]),
	.b13 /* IN */ (b[13]),
	.a14 /* IN */ (a[14]),
	.b14 /* IN */ (b[14]),
	.a15 /* IN */ (a[15]),
	.b15 /* IN */ (b[15]),
	.a16 /* IN */ (a[16]),
	.b16 /* IN */ (b[16]),
	.a17 /* IN */ (a[17]),
	.b17 /* IN */ (b[17]),
	.a18 /* IN */ (a[18]),
	.b18 /* IN */ (b[18]),
	.a19 /* IN */ (a[19]),
	.b19 /* IN */ (b[19]),
	.a20 /* IN */ (a[20]),
	.b20 /* IN */ (b[20]),
	.a21 /* IN */ (a[21]),
	.b21 /* IN */ (b[21]),
	.a22 /* IN */ (a[22]),
	.b22 /* IN */ (b[22]),
	.a23 /* IN */ (a[23]),
	.b23 /* IN */ (b[23]),
	.a24 /* IN */ (a[24]),
	.b24 /* IN */ (b[24]),
	.a25 /* IN */ (a[25]),
	.b25 /* IN */ (b[25]),
	.a26 /* IN */ (a[26]),
	.b26 /* IN */ (b[26]),
	.a27 /* IN */ (a[27]),
	.b27 /* IN */ (b[27]),
	.a28 /* IN */ (a[28]),
	.b28 /* IN */ (b[28]),
	.a29 /* IN */ (a[29]),
	.b29 /* IN */ (b[29]),
	.a30 /* IN */ (a[30]),
	.b30 /* IN */ (b[30]),
	.a31 /* IN */ (a[31]),
	.b31 /* IN */ (b[31])
);

// DUPLO.NET (859) - s : join
assign s[0] = s_0;
assign s[1] = s_1;
assign s[2] = s_2;
assign s[3] = s_3;
assign s[4] = s_4;
assign s[5] = s_5;
assign s[6] = s_6;
assign s[7] = s_7;
assign s[8] = s_8;
assign s[9] = s_9;
assign s[10] = s_10;
assign s[11] = s_11;
assign s[12] = s_12;
assign s[13] = s_13;
assign s[14] = s_14;
assign s[15] = s_15;
assign s[16] = s_16;
assign s[17] = s_17;
assign s[18] = s_18;
assign s[19] = s_19;
assign s[20] = s_20;
assign s[21] = s_21;
assign s[22] = s_22;
assign s[23] = s_23;
assign s[24] = s_24;
assign s[25] = s_25;
assign s[26] = s_26;
assign s[27] = s_27;
assign s[28] = s_28;
assign s[29] = s_29;
assign s[30] = s_30;
assign s[31] = s_31;
endmodule
/* verilator lint_on LITENDIAN */
