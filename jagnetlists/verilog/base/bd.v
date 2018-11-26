`include "defs.v"

module bd
(
	output	io_out,
	output	io_oe,
	input		io_in,
	output	zi,
	output	po,
	input		a,
	input		en,
	input 	tn,
	input		pi
);

// assign io = (~en & tn) ? a : 1'bz;
// assign zi = io;
// assign po = ~(io & pi);

assign io_out = a;
assign io_oe = ~en & tn;
assign zi = io_in;
assign po = ~(io_in & pi);

endmodule
