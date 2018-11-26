/* verilator lint_off LITENDIAN */
`include "defs.v"

module mag11
(
	output agb,
	output aeb,
	output alb,
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
	input b_0,
	input b_1,
	input b_2,
	input b_3,
	input b_4,
	input b_5,
	input b_6,
	input b_7,
	input b_8,
	input b_9,
	input b_10
);
wire gnd1;
wire gnd2;

// OB.NET (705) - gnd1 : tie0
assign gnd1 = 1'b0;

// OB.NET (706) - gnd2 : tie0
assign gnd2 = 1'b0;

// OB.NET (717) - m : mag12
mag12 m_inst
(
	.agb /* OUT */ (agb),
	.aeb /* OUT */ (aeb),
	.alb /* OUT */ (alb),
	.a_0 /* IN */ (a_0),
	.a_1 /* IN */ (a_1),
	.a_2 /* IN */ (a_2),
	.a_3 /* IN */ (a_3),
	.a_4 /* IN */ (a_4),
	.a_5 /* IN */ (a_5),
	.a_6 /* IN */ (a_6),
	.a_7 /* IN */ (a_7),
	.a_8 /* IN */ (a_8),
	.a_9 /* IN */ (a_9),
	.a_10 /* IN */ (a_10),
	.a_11 /* IN */ (gnd1),
	.b_0 /* IN */ (b_0),
	.b_1 /* IN */ (b_1),
	.b_2 /* IN */ (b_2),
	.b_3 /* IN */ (b_3),
	.b_4 /* IN */ (b_4),
	.b_5 /* IN */ (b_5),
	.b_6 /* IN */ (b_6),
	.b_7 /* IN */ (b_7),
	.b_8 /* IN */ (b_8),
	.b_9 /* IN */ (b_9),
	.b_10 /* IN */ (b_10),
	.b_11 /* IN */ (gnd2)
);
endmodule
/* verilator lint_on LITENDIAN */
