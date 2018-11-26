/* verilator lint_off LITENDIAN */
`include "defs.v"

module j_dncnt
(
	output q,
	output co,
	input d,
	input clk,
	input ci,
	input ld,
	input resl,
	input sys_clk // Generated
);
wire d2;
wire d1;
wire ql;

// Output buffers
wire q_obuf;


// Output buffers
assign q = q_obuf;


// LEGO.NET (153) - q : fd2q
fd2q q_inst
(
	.q /* OUT */ (q_obuf),
	.d /* IN */ (d2),
	.cp /* IN */ (clk),
	.cd /* IN */ (resl),
	.sys_clk(sys_clk) // Generated
);

// LEGO.NET (154) - d2 : mx2
assign d2 = (ld) ? d : d1;

// LEGO.NET (155) - d1 : eo
assign d1 = q_obuf ^ ci;

// LEGO.NET (156) - ql : iv
assign ql = ~q_obuf;

// LEGO.NET (157) - co : an2
assign co = ci & ql;
endmodule
/* verilator lint_on LITENDIAN */
