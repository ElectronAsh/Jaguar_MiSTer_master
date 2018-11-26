`include "defs.v"

module ha1
(
	output	s,
	output	co,
	input		a,
	input		b
);

assign s = a ^ b;
assign co = a & b;

endmodule
