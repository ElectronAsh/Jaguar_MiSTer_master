`include "defs.v"

module fas16
(
	output	s0,
	output	s1,
	output	s2,
	output	s3,
	output	s4,
	output	s5,
	output	s6,
	output	s7,
	output	s8,
	output	s9,
	output	s10,
	output	s11,
	output	s12,
	output	s13,
	output	s14,
	output	s15,	
	output	co, // inverted!
	
	input		as, // Add/Substract - only Add is used

	input		ci,	// inverted!
  input a0,
  input b0,
  input a1,
  input b1,
  input a2,
  input b2,
  input a3,
  input b3,
  input a4,
  input b4,
  input a5,
  input b5,
  input a6,
  input b6,
  input a7,
  input b7,
  input a8,
  input b8,
  input a9,
  input b9,
  input a10,
  input b10,
  input a11,
  input b11,
  input a12,
  input b12,
  input a13,
  input b13,
  input a14,
  input b14,
  input a15,
  input b15
);

wire [15:0] a;
wire [15:0] b;
wire [15:0] s;

wire ci_p, co_p;

assign ci_p = ~ci;
assign co = ~co_p;

assign a = {a15, a14, a13, a12, a11, a10,
						a9, a8, a7, a6, a5, a4, a3, a2, a1, a0};
assign b = {b15, b14, b13, b12, b11, b10,
						b9, b8, b7, b6, b5, b4, b3, b2, b1, b0};

assign s0 = s[0];
assign s1 = s[1];
assign s2 = s[2];
assign s3 = s[3];
assign s4 = s[4];
assign s5 = s[5];
assign s6 = s[6];
assign s7 = s[7];
assign s8 = s[8];
assign s9 = s[9];
assign s10 = s[10];
assign s11 = s[11];
assign s12 = s[12];
assign s13 = s[13];
assign s14 = s[14];
assign s15 = s[15];

assign {co_p, s} = a + b + {15'b0000000_00000000, ci_p};

endmodule
