/* verilator lint_off LITENDIAN */
`include "defs.v"

module slatchr
(
	output q,
	input d,
	input clk,
	input en,
	input resl,
	input sys_clk // Generated
);
wire d1;
wire d2;

// Output buffers
wire q_obuf;


// Output buffers
assign q = q_obuf;


// LEGO.NET (48) - d1 : mx2
assign d1 = (en) ? d : q_obuf;

// LEGO.NET (49) - d2 : an2
assign d2 = d1 & resl;

// LEGO.NET (50) - q : fd1q
fd1q q_inst
(
	.q /* OUT */ (q_obuf),
	.d /* IN */ (d2),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
endmodule
/* verilator lint_on LITENDIAN */
