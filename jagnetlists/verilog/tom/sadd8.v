/* verilator lint_off LITENDIAN */
`include "defs.v"

module sadd8
(
	output z_0,
	output z_1,
	output z_2,
	output z_3,
	output z_4,
	output z_5,
	output z_6,
	output z_7,
	input a_0,
	input a_1,
	input a_2,
	input a_3,
	input a_4,
	input a_5,
	input a_6,
	input a_7,
	input b_0,
	input b_1,
	input b_2,
	input b_3,
	input b_4,
	input b_5,
	input b_6,
	input b_7
);
wire gnd;
wire s_0;
wire s_1;
wire s_2;
wire s_3;
wire co_3;
wire s_4;
wire s_5;
wire s_6;
wire s_7;
wire co_7;
wire overflowi;
wire overflow;
wire cob_7;

// LBUF.NET (277) - gnd : tie0
assign gnd = 1'b0;

// LBUF.NET (278) - s0 : add4
add4 s0_inst
(
	.q_0 /* OUT */ (s_0),
	.q_1 /* OUT */ (s_1),
	.q_2 /* OUT */ (s_2),
	.q_3 /* OUT */ (s_3),
	.co /* OUT */ (co_3),
	.a_0 /* IN */ (a_0),
	.a_1 /* IN */ (a_1),
	.a_2 /* IN */ (a_2),
	.a_3 /* IN */ (a_3),
	.b_0 /* IN */ (b_0),
	.b_1 /* IN */ (b_1),
	.b_2 /* IN */ (b_2),
	.b_3 /* IN */ (b_3),
	.ci /* IN */ (gnd)
);

// LBUF.NET (279) - s1 : add4
add4 s1_inst
(
	.q_0 /* OUT */ (s_4),
	.q_1 /* OUT */ (s_5),
	.q_2 /* OUT */ (s_6),
	.q_3 /* OUT */ (s_7),
	.co /* OUT */ (co_7),
	.a_0 /* IN */ (a_4),
	.a_1 /* IN */ (a_5),
	.a_2 /* IN */ (a_6),
	.a_3 /* IN */ (a_7),
	.b_0 /* IN */ (b_4),
	.b_1 /* IN */ (b_5),
	.b_2 /* IN */ (b_6),
	.b_3 /* IN */ (b_7),
	.ci /* IN */ (co_3)
);

// LBUF.NET (280) - overflowi : en
assign overflowi = ~(co_7 ^ b_7);

// LBUF.NET (281) - overflow : ivm
assign overflow = ~overflowi;

// LBUF.NET (282) - cob[7] : nivm
assign cob_7 = co_7;

// LBUF.NET (283) - z[0-7] : mx2
assign z_0 = (overflow) ? cob_7 : s_0;
assign z_1 = (overflow) ? cob_7 : s_1;
assign z_2 = (overflow) ? cob_7 : s_2;
assign z_3 = (overflow) ? cob_7 : s_3;
assign z_4 = (overflow) ? cob_7 : s_4;
assign z_5 = (overflow) ? cob_7 : s_5;
assign z_6 = (overflow) ? cob_7 : s_6;
assign z_7 = (overflow) ? cob_7 : s_7;
endmodule
/* verilator lint_on LITENDIAN */
