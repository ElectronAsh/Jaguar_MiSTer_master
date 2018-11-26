`include "defs.v"

module mx2g
(
	output	z,
	input		a0,
	input		a1,
	input		s,
	input		gn
);

assign z = (gn) ? 1'b0 : (s) ? a1 : a0;

endmodule
