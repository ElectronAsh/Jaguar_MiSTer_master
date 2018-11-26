/* verilator lint_off LITENDIAN */
`include "defs.v"

module fdr
(
	output q,
	output ql,
	input d,
	input clk,
	input resl,
	input sys_clk // Generated
);
wire d1;

// LEGO.NET (11) - d : an2
assign d1 = d & resl;

// LEGO.NET (12) - q : fd1
fd1 q_inst
(
	.q /* OUT */ (q),
	.qn /* OUT */ (ql),
	.d /* IN */ (d1),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
endmodule
/* verilator lint_on LITENDIAN */
