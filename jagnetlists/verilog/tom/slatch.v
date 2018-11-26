/* verilator lint_off LITENDIAN */
`include "defs.v"

module slatch
(
	output q,
	input d,
	input clk,
	input en,
	input sys_clk // Generated
);
wire qb;

// Output buffers
wire q_obuf;


// Output buffers
assign q = q_obuf;


// LEGO.NET (25) - q : fd1e
fd1e q_inst
(
	.q /* OUT */ (q_obuf),
	.qn /* OUT */ (qb),
	.d /* IN */ (q_obuf),
	.cp /* IN */ (clk),
	.ti /* IN */ (d),
	.te /* IN */ (en),
	.sys_clk(sys_clk) // Generated
);

// LEGO.NET (26) - dummy : dummy
endmodule
/* verilator lint_on LITENDIAN */
