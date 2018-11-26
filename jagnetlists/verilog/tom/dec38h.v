/* verilator lint_off LITENDIAN */
`include "defs.v"

module dec38h
(
	output z_0,
	output z_1,
	output z_2,
	output z_3,
	output z_4,
	output z_5,
	output z_6,
	output z_7,
	input a,
	input b,
	input c
);
wire g;

// LEGO.NET (265) - g : tie0
assign g = 1'b0;

// LEGO.NET (266) - a : dec38gh
dec38gh a_inst
(
	.z_0 /* OUT */ (z_0),
	.z_1 /* OUT */ (z_1),
	.z_2 /* OUT */ (z_2),
	.z_3 /* OUT */ (z_3),
	.z_4 /* OUT */ (z_4),
	.z_5 /* OUT */ (z_5),
	.z_6 /* OUT */ (z_6),
	.z_7 /* OUT */ (z_7),
	.a /* IN */ (a),
	.b /* IN */ (b),
	.c /* IN */ (c),
	.g /* IN */ (g)
);
endmodule
/* verilator lint_on LITENDIAN */
