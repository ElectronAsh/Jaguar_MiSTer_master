/* verilator lint_off LITENDIAN */
`include "defs.v"

module j_cmp6i
(
	output equal_n,
	input [0:5] a,
	input [0:5] b
);
wire eq_0;
wire eq_1;
wire eq_2;
wire eq_3;
wire eq_4;
wire eq_5;

// _DUPLO.NET (130) - eq[0-5] : en
assign eq_0 = ~(a[0] ^ b[0]);
assign eq_1 = ~(a[1] ^ b[1]);
assign eq_2 = ~(a[2] ^ b[2]);
assign eq_3 = ~(a[3] ^ b[3]);
assign eq_4 = ~(a[4] ^ b[4]);
assign eq_5 = ~(a[5] ^ b[5]);

// _DUPLO.NET (131) - equal\ : nd6
assign equal_n = ~(eq_0 & eq_1 & eq_2 & eq_3 & eq_4 & eq_5);
endmodule
/* verilator lint_on LITENDIAN */
