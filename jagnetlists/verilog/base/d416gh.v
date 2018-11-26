`include "defs.v"

module d416gh
(
	output		z0,
	output		z1,
	output		z2,
	output		z3,
	output		z4,
	output		z5,
	output		z6,
	output		z7,
	output		z8,
	output		z9,
	output		z10,
	output		z11,
	output		z12,
	output		z13,
	output		z14,
	output		z15,

	input		a0,
	input		a1,
	input		a2,
	input		a3,

	input		gn
);

// from tosh_to_moto.v

wire ab;
wire bb;
wire cb;
wire db;

wire ai;
wire bi;
wire ci;
wire di;

wire gg;

assign ab = ~a0;
assign bb = ~a1;
assign cb = ~a2;
assign db = ~a3;

assign ai = ~ab;
assign bi = ~bb;
assign ci = ~cb;
assign di = ~db;

assign gg = gn;

assign z15 = ~(ab | bb | cb | db | gg);
assign z14 = ~(ai | bb | cb | db | gg);
assign z13 = ~(ab | bi | cb | db | gg);
assign z12 = ~(ai | bi | cb | db | gg);
assign z11 = ~(ab | bb | ci | db | gg);
assign z10 = ~(ai | bb | ci | db | gg);
assign z9 = ~(ab | bi | ci | db | gg);
assign z8 = ~(ai | bi | ci | db | gg);
assign z7 = ~(ab | bb | cb | di | gg);
assign z6 = ~(ai | bb | cb | di | gg);
assign z5 = ~(ab | bi | cb | di | gg);
assign z4 = ~(ai | bi | cb | di | gg);
assign z3 = ~(ab | bb | ci | di | gg);
assign z2 = ~(ai | bb | ci | di | gg);
assign z1 = ~(ab | bi | ci | di | gg);
assign z0 = ~(ai | bi | ci | di | gg);

endmodule
