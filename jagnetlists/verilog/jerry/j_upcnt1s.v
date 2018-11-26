/* verilator lint_off LITENDIAN */
`include "defs.v"

module j_upcnt1s
(
	output q,
	output co,
	input clk,
	input ci,
	input resl,
	input sys_clk // Generated
);
wire d1;
wire d2;

// Output buffers
wire q_obuf;


// Output buffers
assign q = q_obuf;


// LEGO.NET (131) - d1 : eo
assign d1 = ci ^ q_obuf;

// LEGO.NET (132) - d3 : an2
assign d2 = resl & d1;

// LEGO.NET (133) - q : fd1q
fd1q q_inst
(
	.q /* OUT */ (q_obuf),
	.d /* IN */ (d2),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// LEGO.NET (134) - co : an2
assign co = ci & q_obuf;
endmodule
/* verilator lint_on LITENDIAN */
