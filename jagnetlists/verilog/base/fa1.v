`include "defs.v"

module fa1
(
	output	s,
	output	co,
	input		ci,
	input		a,
	input		b
);

assign {co, s} = a + b + ci;

endmodule
