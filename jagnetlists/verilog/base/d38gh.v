`include "defs.v"

module d38gh
(
	output		z0,
	output		z1,
	output		z2,
	output		z3,
	output		z4,
	output		z5,
	output		z6,
	output		z7,

	input		a0,
	input		a1,
	input		a2,

	input		gn
);

// from tosh_to_moto.v

wire ab;
wire bb;
wire cb;

wire ai;
wire bi;
wire ci;

wire gg;

assign ab = ~a0;
assign bb = ~a1;
assign cb = ~a2;

assign ai = ~ab;
assign bi = ~bb;
assign ci = ~cb;

assign gg = gn;

assign z7 = ~(ab | bb | cb | gg);
assign z6 = ~(ai | bb | cb | gg);
assign z5 = ~(ab | bi | cb | gg);
assign z4 = ~(ai | bi | cb | gg);
assign z3 = ~(ab | bb | ci | gg);
assign z2 = ~(ai | bb | ci | gg);
assign z1 = ~(ab | bi | ci | gg);
assign z0 = ~(ai | bi | ci | gg);

endmodule
