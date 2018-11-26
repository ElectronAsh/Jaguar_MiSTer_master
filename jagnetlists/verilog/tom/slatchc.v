/* verilator lint_off LITENDIAN */
`include "defs.v"

module slatchc
(
	output q,
	input d,
	input clk,
	input en,
	input resl,
	input sys_clk // Generated
);
wire qb;

// Output buffers
wire q_obuf;


// Output buffers
assign q = q_obuf;


// LEGO.NET (38) - q : fd2e
fd2e q_inst
(
	.q /* OUT */ (q_obuf),
	.qn /* OUT */ (qb),
	.d /* IN */ (q_obuf),
	.cp /* IN */ (clk),
	.cd /* IN */ (resl),
	.ti /* IN */ (d),
	.te /* IN */ (en),
	.sys_clk(sys_clk) // Generated
);

// LEGO.NET (39) - dummy : dummy
endmodule
/* verilator lint_on LITENDIAN */
