/* verilator lint_off LITENDIAN */
`include "defs.v"

module cmp8_int
(
	output equal,
	input [0:7] a,
	input [0:7] b
);

// DUPLO.NET (922) - comp : cmp8
assign equal = (a[0] == b[0]) && (a[1] == b[1]) && (a[2] == b[2]) && (a[3] == b[3]) && (a[4] == b[4]) && (a[5] == b[5]) && (a[6] == b[6]) && (a[7] == b[7]);
endmodule
/* verilator lint_on LITENDIAN */
