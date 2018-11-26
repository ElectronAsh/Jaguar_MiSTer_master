/* verilator lint_off LITENDIAN */
`include "defs.v"

module fjkr
(
	output q,
	output ql,
	input j,
	input k,
	input clk,
	input r,
	input sys_clk // Generated
);
wire a;
wire b;
wire d;
wire e;

// Output buffers
wire ql_obuf;


// Output buffers
assign ql = ql_obuf;


// LEGO.NET (231) - a : nd2
assign a = ~(j & ql_obuf);

// LEGO.NET (232) - b : or2
assign b = k | ql_obuf;

// LEGO.NET (233) - d : nd2
assign d = ~(a & b);

// LEGO.NET (234) - e : an2
assign e = d & r;

// LEGO.NET (235) - q : fd1
fd1 q_inst
(
	.q /* OUT */ (q),
	.qn /* OUT */ (ql_obuf),
	.d /* IN */ (e),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
endmodule
/* verilator lint_on LITENDIAN */
