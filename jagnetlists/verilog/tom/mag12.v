/* verilator lint_off LITENDIAN */
`include "defs.v"

module mag12
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
	input a_11,
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
	input b_10,
	input b_11
);
wire vcc;
wire gnd;
wire agb_0;
wire aeb_0;
wire alb_0;
wire agb_1;
wire aeb_1;
wire alb_1;

// OB.NET (742) - vcc : tie1
assign vcc = 1'b1;

// OB.NET (743) - gnd : tie0
assign gnd = 1'b0;

// OB.NET (745) - m0 : mag4
mag4 m0_inst
(
	.agb /* OUT */ (agb_0),
	.aeb /* OUT */ (aeb_0),
	.alb /* OUT */ (alb_0),
	.agbi /* IN */ (gnd),
	.aebi /* IN */ (vcc),
	.albi /* IN */ (gnd),
	.a3 /* IN */ (a_11),
	.b3 /* IN */ (b_11),
	.a2 /* IN */ (a_10),
	.b2 /* IN */ (b_10),
	.a1 /* IN */ (a_9),
	.b1 /* IN */ (b_9),
	.a0 /* IN */ (a_8),
	.b0 /* IN */ (b_8)
);

// OB.NET (747) - m1 : mag4
mag4 m1_inst
(
	.agb /* OUT */ (agb_1),
	.aeb /* OUT */ (aeb_1),
	.alb /* OUT */ (alb_1),
	.agbi /* IN */ (agb_0),
	.aebi /* IN */ (aeb_0),
	.albi /* IN */ (alb_0),
	.a3 /* IN */ (a_7),
	.b3 /* IN */ (b_7),
	.a2 /* IN */ (a_6),
	.b2 /* IN */ (b_6),
	.a1 /* IN */ (a_5),
	.b1 /* IN */ (b_5),
	.a0 /* IN */ (a_4),
	.b0 /* IN */ (b_4)
);

// OB.NET (749) - m2 : mag4
mag4 m2_inst
(
	.agb /* OUT */ (agb),
	.aeb /* OUT */ (aeb),
	.alb /* OUT */ (alb),
	.agbi /* IN */ (agb_1),
	.aebi /* IN */ (aeb_1),
	.albi /* IN */ (alb_1),
	.a3 /* IN */ (a_3),
	.b3 /* IN */ (b_3),
	.a2 /* IN */ (a_2),
	.b2 /* IN */ (b_2),
	.a1 /* IN */ (a_1),
	.b1 /* IN */ (b_1),
	.a0 /* IN */ (a_0),
	.b0 /* IN */ (b_0)
);
endmodule
/* verilator lint_on LITENDIAN */
