/* verilator lint_off LITENDIAN */
`include "defs.v"

module j_fdsyncr
(
	output q,
	input d,
	input ld,
	input clk,
	input rst_n,
	input sys_clk // Generated
);
wire qb;

// Output buffers
wire q_obuf;


// Output buffers
assign q = q_obuf;


// _DUPLO.NET (309) - q : fd2e
fd2e q_inst
(
	.q /* OUT */ (q_obuf),
	.qn /* OUT */ (qb),
	.d /* IN */ (q_obuf),
	.cp /* IN */ (clk),
	.cd /* IN */ (rst_n),
	.ti /* IN */ (d),
	.te /* IN */ (ld),
	.sys_clk(sys_clk) // Generated
);

// _DUPLO.NET (310) - dummy : dummy
endmodule
/* verilator lint_on LITENDIAN */
