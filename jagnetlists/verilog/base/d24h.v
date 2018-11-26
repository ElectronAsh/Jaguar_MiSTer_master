`include "defs.v"

module d24h
(
	output		z0,
	output		z1,
	output		z2,
	output		z3,

	input		a0,
	input		a1
);

// from tosh_to_moto.v

wire ab;
wire bb;

wire ai;
wire bi;

assign ab = ~a0;
assign bb = ~a1;

assign ai = ~ab;
assign bi = ~bb;

assign z3 = ~(ab | bb);
assign z2 = ~(ai | bb);
assign z1 = ~(ab | bi);
assign z0 = ~(ai | bi);

endmodule
