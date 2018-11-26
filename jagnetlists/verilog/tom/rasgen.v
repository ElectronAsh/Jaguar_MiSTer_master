/* verilator lint_off LITENDIAN */
`include "defs.v"

module rasgen
(
	output csl,
	input on1,
	input roffl,
	input bs,
	input allonl,
	input alloffl,
	input clk,
	input resl,
	input sys_clk // Generated
);
wire ronl;
wire ron;
wire roff;
wire cs;

// MEM.NET (760) - ronl : nd2
assign ronl = ~(bs & on1);

// MEM.NET (761) - ron : nd2
assign ron = ~(ronl & allonl);

// MEM.NET (762) - roff : nd2
assign roff = ~(roffl & alloffl);

// MEM.NET (763) - cs : fjk2
fjk2 cs_inst
(
	.q /* OUT */ (cs),
	.qn /* OUT */ (csl),
	.j /* IN */ (ron),
	.k /* IN */ (roff),
	.cp /* IN */ (clk),
	.cd /* IN */ (resl),
	.sys_clk(sys_clk) // Generated
);

// MEM.NET (764) - csl : dummy
endmodule
/* verilator lint_on LITENDIAN */
