/* verilator lint_off LITENDIAN */
`include "defs.v"

module j_upcnt1
(
	output q,
	output co,
	input clk,
	input ci,
	input resl,
	input sys_clk // Generated
);
wire d1;

// Output buffers
wire q_obuf;


// Output buffers
assign q = q_obuf;


// LEGO.NET (178) - q : fd2q
fd2q q_inst
(
	.q /* OUT */ (q_obuf),
	.d /* IN */ (d1),
	.cp /* IN */ (clk),
	.cd /* IN */ (resl),
	.sys_clk(sys_clk) // Generated
);

// LEGO.NET (179) - d1 : eo
assign d1 = q_obuf ^ ci;

// LEGO.NET (180) - co : an2
assign co = ci & q_obuf;
endmodule
/* verilator lint_on LITENDIAN */
