/* verilator lint_off LITENDIAN */
`include "defs.v"

module tbenw
(
	output _this,
	input _bit,
	input inhi
);
wire bit_n;

// ARITH.NET (516) - bit\ : iv
assign bit_n = ~_bit;

// ARITH.NET (517) - this : nr2
assign _this = ~(bit_n | inhi);
endmodule
/* verilator lint_on LITENDIAN */
