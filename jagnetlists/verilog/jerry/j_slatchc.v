/* verilator lint_off LITENDIAN */
`include "defs.v"

module j_slatchc
(
	output q,
	input d,
	input clk,
	input en,
	input resl,
	input sys_clk // Generated
);
wire d1;

// Output buffers
wire q_obuf;


// Output buffers
assign q = q_obuf;


// LEGO.NET (34) - d : mx2
assign d1 = (en) ? d : q_obuf;

// LEGO.NET (35) - q : fd2q
fd2q q_inst
(
	.q /* OUT */ (q_obuf),
	.d /* IN */ (d1),
	.cp /* IN */ (clk),
	.cd /* IN */ (resl),
	.sys_clk(sys_clk) // Generated
);
endmodule
/* verilator lint_on LITENDIAN */
