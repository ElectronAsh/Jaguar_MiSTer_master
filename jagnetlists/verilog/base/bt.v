`include "defs.v"

module bt
(
	output	z_out,
	output	z_oe,
	input		z_in,
	input		a,
	input		en,
	input 	tn
);

assign z_out = a;
assign z_oe = (~en & tn) ? 1'b1 : 1'b0;

endmodule
