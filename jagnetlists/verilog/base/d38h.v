`include "defs.v"

module d38h
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
	input		a2
);

// from tosh_to_moto.v

wire ab;
wire bb;
wire cb;

wire a, b, c;

assign a = a0;
assign b = a1;
assign c = a2;

assign ab = ~a0;
assign bb = ~a1;
assign cb = ~a2;

assign z7 = ~(ab | bb | cb);
assign z6 = ~(a | bb | cb);
assign z5 = ~(ab | b | cb);
assign z4 = ~(a | b | cb);
assign z3 = ~(ab | bb | c);
assign z2 = ~(a | bb | c);
assign z1 = ~(ab | b | c);
assign z0 = ~(a | b | c);

endmodule
