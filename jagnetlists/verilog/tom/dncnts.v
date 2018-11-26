/* verilator lint_off LITENDIAN */
`include "defs.v"

module dncnts
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
wire d3;
wire d2;
wire d1;
wire ql;

// Output buffers
wire q_obuf;


// Output buffers
assign q = q_obuf;


// LEGO.NET (147) - q : fd1q
fd1q q_inst
(
	.q /* OUT */ (q_obuf),
	.d /* IN */ (d3),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// LEGO.NET (148) - d3 : an2
assign d3 = d2 & resl;

// LEGO.NET (149) - d2 : mx2
assign d2 = (ld) ? d : d1;

// LEGO.NET (150) - d1 : eo
assign d1 = q_obuf ^ ci;

// LEGO.NET (151) - ql : iv
assign ql = ~q_obuf;

// LEGO.NET (152) - co : an2
assign co = ci & ql;
endmodule
/* verilator lint_on LITENDIAN */
