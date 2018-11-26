/* verilator lint_off LITENDIAN */
`include "defs.v"

module mx12b
(
	output q,
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
	input sel_0,
	input sel_1,
	input sel_2,
	input sel_3
);
wire low8;
wire hi4;
wire ena_n;

// DUPLO.NET (445) - low8 : mx8
mx8 low8_inst
(
	.z /* OUT */ (low8),
	.a0 /* IN */ (a_0),
	.a1 /* IN */ (a_1),
	.a2 /* IN */ (a_2),
	.a3 /* IN */ (a_3),
	.a4 /* IN */ (a_4),
	.a5 /* IN */ (a_5),
	.a6 /* IN */ (a_6),
	.a7 /* IN */ (a_7),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1),
	.s2 /* IN */ (sel_2)
);

// DUPLO.NET (446) - hi4 : mx4
mx4 hi4_inst
(
	.z /* OUT */ (hi4),
	.a0 /* IN */ (a_8),
	.a1 /* IN */ (a_9),
	.a2 /* IN */ (a_10),
	.a3 /* IN */ (a_11),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);

// DUPLO.NET (447) - ena\ : an2
assign ena_n = sel_2 & sel_3;

// DUPLO.NET (448) - q : mx2g
mx2g q_inst
(
	.z /* OUT */ (q),
	.a0 /* IN */ (low8),
	.a1 /* IN */ (hi4),
	.s /* IN */ (sel_3),
	.gn /* IN */ (ena_n)
);
endmodule
/* verilator lint_on LITENDIAN */
