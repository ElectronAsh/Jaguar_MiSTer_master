/* verilator lint_off LITENDIAN */
`include "defs.v"

module j_hs1
(
	output q,
	output co,
	input a,
	input ci
);

// _DUPLO.NET (328) - q : en
assign q = ~(a ^ ci);

// _DUPLO.NET (329) - co : or2p
assign co = a | ci;
endmodule
/* verilator lint_on LITENDIAN */
