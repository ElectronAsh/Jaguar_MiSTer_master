/* verilator lint_off LITENDIAN */
`include "defs.v"

module fdsyncm
(
	output q,
	input d,
	input ld,
	input clk,
	input sys_clk // Generated
);
wire qt;
wire qb;

// Output buffers
wire q_obuf;


// Output buffers
assign q = q_obuf;


// DUPLO.NET (285) - qt : fd1e
fd1e qt_inst
(
	.q /* OUT */ (qt),
	.qn /* OUT */ (qb),
	.d /* IN */ (q_obuf),
	.cp /* IN */ (clk),
	.ti /* IN */ (d),
	.te /* IN */ (ld),
	.sys_clk(sys_clk) // Generated
);

// DUPLO.NET (286) - dummy : dummy

// DUPLO.NET (287) - q : nivm
assign q_obuf = qt;
endmodule
/* verilator lint_on LITENDIAN */
