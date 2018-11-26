/* verilator lint_off LITENDIAN */
`include "defs.v"

module slatchp
(
	output q,
	input d,
	input clk,
	input en,
	input setl,
	input sys_clk // Generated
);
wire qb;

// Output buffers
wire q_obuf;


// Output buffers
assign q = q_obuf;


// LEGO.NET (64) - q : fd4e
fd4e q_inst
(
	.q /* OUT */ (q_obuf),
	.qn /* OUT */ (qb),
	.d /* IN */ (q_obuf),
	.cp /* IN */ (clk),
	.sd /* IN */ (setl),
	.ti /* IN */ (d),
	.te /* IN */ (en),
	.sys_clk(sys_clk) // Generated
);

// LEGO.NET (65) - dummy : dummy
endmodule
/* verilator lint_on LITENDIAN */
