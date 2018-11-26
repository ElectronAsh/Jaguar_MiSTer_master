/* verilator lint_off LITENDIAN */
`include "defs.v"

module upcnts
(
	output q,
	output co,
	input d,
	input clk,
	input ci,
	input ld,
	input res,
	input sys_clk // Generated
);
wire d1;
wire d2;
wire d3;

// Output buffers
wire q_obuf;


// Output buffers
assign q = q_obuf;


// LEGO.NET (110) - d1 : eo
assign d1 = ci ^ q_obuf;

// LEGO.NET (111) - d2 : mxi2
mxi2 d2_inst
(
	.z /* OUT */ (d2),
	.a0 /* IN */ (d1),
	.a1 /* IN */ (d),
	.s /* IN */ (ld)
);

// LEGO.NET (112) - d3 : nr2
assign d3 = ~(res | d2);

// LEGO.NET (113) - q : fd1q
fd1q q_inst
(
	.q /* OUT */ (q_obuf),
	.d /* IN */ (d3),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// LEGO.NET (114) - co : an2
assign co = ci & q_obuf;
endmodule
/* verilator lint_on LITENDIAN */
