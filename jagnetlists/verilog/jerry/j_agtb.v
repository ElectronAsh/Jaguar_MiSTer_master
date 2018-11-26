/* verilator lint_off LITENDIAN */
`include "defs.v"

module j_agtb
(
	output z,
	input a_0,
	input a_1,
	input a_2,
	input a_3,
	input a_4,
	input a_5,
	input b_0,
	input b_1,
	input b_2,
	input b_3,
	input b_4,
	input b_5
);
wire al_0;
wire al_1;
wire al_2;
wire al_3;
wire al_4;
wire al_5;
wire s_0;
wire c_0;
wire vcc;
wire s_1;
wire s_2;
wire s_3;
wire s_4;
wire s_5;
wire c_1;
wire c_2;
wire c_3;
wire c_4;
wire c_5;

// JCLK.NET (175) - al[0-5] : iv
assign al_0 = ~a_0;
assign al_1 = ~a_1;
assign al_2 = ~a_2;
assign al_3 = ~a_3;
assign al_4 = ~a_4;
assign al_5 = ~a_5;

// JCLK.NET (176) - s[0] : fa1
fa1 s_index_0_inst
(
	.s /* OUT */ (s_0),
	.co /* OUT */ (c_0),
	.ci /* IN */ (b_0),
	.a /* IN */ (al_0),
	.b /* IN */ (vcc)
);

// JCLK.NET (177) - s[1-5] : fa1
fa1 s_from_1_to_5_inst_0
(
	.s /* OUT */ (s_1),
	.co /* OUT */ (c_1),
	.ci /* IN */ (b_1),
	.a /* IN */ (al_1),
	.b /* IN */ (c_0)
);
fa1 s_from_1_to_5_inst_1
(
	.s /* OUT */ (s_2),
	.co /* OUT */ (c_2),
	.ci /* IN */ (b_2),
	.a /* IN */ (al_2),
	.b /* IN */ (c_1)
);
fa1 s_from_1_to_5_inst_2
(
	.s /* OUT */ (s_3),
	.co /* OUT */ (c_3),
	.ci /* IN */ (b_3),
	.a /* IN */ (al_3),
	.b /* IN */ (c_2)
);
fa1 s_from_1_to_5_inst_3
(
	.s /* OUT */ (s_4),
	.co /* OUT */ (c_4),
	.ci /* IN */ (b_4),
	.a /* IN */ (al_4),
	.b /* IN */ (c_3)
);
fa1 s_from_1_to_5_inst_4
(
	.s /* OUT */ (s_5),
	.co /* OUT */ (c_5),
	.ci /* IN */ (b_5),
	.a /* IN */ (al_5),
	.b /* IN */ (c_4)
);

// JCLK.NET (178) - z : iv
assign z = ~c_5;

// JCLK.NET (179) - vcc : tie1
assign vcc = 1'b1;

// JCLK.NET (180) - su[0-5] : dummy
endmodule
/* verilator lint_on LITENDIAN */
