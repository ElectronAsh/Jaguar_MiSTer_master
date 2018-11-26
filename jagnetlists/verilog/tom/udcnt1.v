/* verilator lint_off LITENDIAN */
`include "defs.v"

module udcnt1
(
	output q,
	output co,
	input clk,
	input ci,
	input up,
	input resl,
	input sys_clk // Generated
);
wire d1;
wire q1;

// Output buffers
wire q_obuf;


// Output buffers
assign q = q_obuf;


// LEGO.NET (218) - q : fd2q
fd2q q_inst
(
	.q /* OUT */ (q_obuf),
	.d /* IN */ (d1),
	.cp /* IN */ (clk),
	.cd /* IN */ (resl),
	.sys_clk(sys_clk) // Generated
);

// LEGO.NET (219) - d1 : eo
assign d1 = q_obuf ^ ci;

// LEGO.NET (220) - q1 : en
assign q1 = ~(q_obuf ^ up);

// LEGO.NET (221) - co : an2
assign co = ci & q1;
endmodule
/* verilator lint_on LITENDIAN */
