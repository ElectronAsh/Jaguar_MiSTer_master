/* verilator lint_off LITENDIAN */
`include "defs.v"

module j_add4
(
	output q_0,
	output q_1,
	output q_2,
	output q_3,
	output co,
	input a_0,
	input a_1,
	input a_2,
	input a_3,
	input b_0,
	input b_1,
	input b_2,
	input b_3,
	input ci
);

// _DUPLO.NET (47) - add4 : fa4r
fa4r add4_inst
(
	.s0 /* OUT */ (q_0),
	.s1 /* OUT */ (q_1),
	.s2 /* OUT */ (q_2),
	.s3 /* OUT */ (q_3),
	.co /* OUT */ (co),
	.ci /* IN */ (ci),
	.a0 /* IN */ (a_0),
	.b0 /* IN */ (b_0),
	.a1 /* IN */ (a_1),
	.b1 /* IN */ (b_1),
	.a2 /* IN */ (a_2),
	.b2 /* IN */ (b_2),
	.a3 /* IN */ (a_3),
	.b3 /* IN */ (b_3)
);
endmodule
/* verilator lint_on LITENDIAN */
