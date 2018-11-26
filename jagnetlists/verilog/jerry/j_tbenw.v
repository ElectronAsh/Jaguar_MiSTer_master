/* verilator lint_off LITENDIAN */
`include "defs.v"

module j_tbenw
(
	output _this,
	input _bit,
	input inhi
);
wire bit_n;

// DSP_A-5Q.NET (604) - bit\ : iv
assign bit_n = ~_bit;

// DSP_A-5Q.NET (605) - this : nr2
assign _this = ~(bit_n | inhi);
endmodule
/* verilator lint_on LITENDIAN */
