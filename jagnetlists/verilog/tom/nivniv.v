/* verilator lint_off LITENDIAN */
`include "defs.v"

module nivniv
(
	output z,
	input a
);
wire y;

// DUPLO.NET (599) - y : niv
assign y = a;

// DUPLO.NET (600) - z : niv
assign z = y;
endmodule
/* verilator lint_on LITENDIAN */
