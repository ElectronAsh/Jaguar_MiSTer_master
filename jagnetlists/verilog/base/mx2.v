`include "defs.v"

module mx2
(
	output	z,
	input		a0,
	input		a1,
	input		s
);

assign z = (s) ? a1 : a0;

endmodule
