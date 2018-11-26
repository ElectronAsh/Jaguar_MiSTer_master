/* verilator lint_off LITENDIAN */
`include "defs.v"

module tben
(
	output _this,
	output inho,
	input _bit,
	input inhi
);
wire bit_n;

// ARITH.NET (504) - inho : or2
assign inho = _bit | inhi;

// ARITH.NET (505) - bit\ : iv
assign bit_n = ~_bit;

// ARITH.NET (506) - this : nr2
assign _this = ~(bit_n | inhi);
endmodule
/* verilator lint_on LITENDIAN */
