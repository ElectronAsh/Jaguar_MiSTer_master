/* verilator lint_off LITENDIAN */
`include "defs.v"

module j_tben
(
	output _this,
	output inho,
	input _bit,
	input inhi
);
wire bit_n;

// DSP_A-5Q.NET (592) - inho : or2
assign inho = _bit | inhi;

// DSP_A-5Q.NET (593) - bit\ : iv
assign bit_n = ~_bit;

// DSP_A-5Q.NET (594) - this : nr2
assign _this = ~(bit_n | inhi);
endmodule
/* verilator lint_on LITENDIAN */
