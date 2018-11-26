/* verilator lint_off LITENDIAN */
`include "defs.v"

module ack_pipe
(
	output latch,
	input latchd,
	input ack,
	input clk,
	input resetl,
	input sys_clk // Generated
);
wire notack;
wire d0;
wire q;
wire d1;
wire d;

// OB.NET (689) - notack : iv
assign notack = ~ack;

// OB.NET (690) - d0 : nd2
assign d0 = ~(q & notack);

// OB.NET (691) - d1 : iv
assign d1 = ~latchd;

// OB.NET (692) - d : nd2
assign d = ~(d0 & d1);

// OB.NET (693) - q : fd2q
fd2q q_inst
(
	.q /* OUT */ (q),
	.d /* IN */ (d),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (694) - latch : an2
assign latch = q & ack;
endmodule
/* verilator lint_on LITENDIAN */
