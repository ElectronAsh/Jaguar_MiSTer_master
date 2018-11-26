/* verilator lint_off LITENDIAN */
`include "defs.v"

module j_fdsync
(
	output q,
	input d,
	input ld,
	input clk,
	input sys_clk // Generated
);
wire qb;

// Output buffers
wire q_obuf;


// Output buffers
assign q = q_obuf;


// _DUPLO.NET (254) - q : fd1e
fd1e q_inst
(
	.q /* OUT */ (q_obuf),
	.qn /* OUT */ (qb),
	.d /* IN */ (q_obuf),
	.cp /* IN */ (clk),
	.ti /* IN */ (d),
	.te /* IN */ (ld),
	.sys_clk(sys_clk) // Generated
);

// _DUPLO.NET (255) - dummy : dummy
endmodule
/* verilator lint_on LITENDIAN */
