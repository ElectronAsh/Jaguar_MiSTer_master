/* verilator lint_off LITENDIAN */
`include "defs.v"

module mx6
(
	output q,
	input a_0,
	input a_1,
	input a_2,
	input a_3,
	input a_4,
	input a_5,
	input sel_0,
	input sel_1,
	input sel_2
);
wire lo4;
wire hi2;

// DUPLO.NET (436) - lo4 : mx4
mx4 lo4_inst
(
	.z /* OUT */ (lo4),
	.a0 /* IN */ (a_0),
	.a1 /* IN */ (a_1),
	.a2 /* IN */ (a_2),
	.a3 /* IN */ (a_3),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);

// DUPLO.NET (437) - hi2 : mx2
assign hi2 = (sel_0) ? a_5 : a_4;

// DUPLO.NET (438) - q : mx2
assign q = (sel_2) ? hi2 : lo4;
endmodule
/* verilator lint_on LITENDIAN */
