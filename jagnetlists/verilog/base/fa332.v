`include "defs.v"

module fa332
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
	output	s16,
	output	s17,
	output	s18,
	output	s19,
	output	s20,
	output	s21,
	output	s22,
	output	s23,
	output	s24,
	output	s25,
	output	s26,
	output	s27,
	output	s28,
	output	s29,
	output	s30,
	output	s31,
	
	output	co0,
	output	co1,
	
	input		ci0,
	input		ci1,
	
  input a0,
  input b0,
	input c0,
  input a1,
  input b1,
	input c1,
  input a2,
  input b2,
	input c2,
  input a3,
  input b3,
	input c3,
  input a4,
  input b4,
	input c4,
  input a5,
  input b5,
	input c5,
  input a6,
  input b6,
	input c6,
  input a7,
  input b7,
	input c7,
  input a8,
  input b8,
	input c8,
  input a9,
  input b9,
	input c9,
  input a10,
  input b10,
	input c10,
  input a11,
  input b11,
	input c11,
  input a12,
  input b12,
	input c12,
  input a13,
  input b13,
	input c13,
  input a14,
  input b14,
	input c14,
  input a15,
  input b15,
	input c15,
  input a16,
  input b16,
	input c16,
  input a17,
  input b17,
	input c17,
  input a18,
  input b18,
	input c18,
  input a19,
  input b19,
	input c19,
  input a20,
  input b20,
	input c20,
  input a21,
  input b21,
	input c21,
  input a22,
  input b22,
	input c22,
  input a23,
  input b23,
	input c23,
  input a24,
  input b24,
	input c24,
  input a25,
  input b25,
	input c25,
  input a26,
  input b26,
	input c26,
  input a27,
  input b27,
	input c27,
  input a28,
  input b28,
	input c28,
  input a29,
  input b29,
	input c29,
  input a30,
  input b30,
	input c30,
  input a31,
  input b31,
	input c31
);

wire [31:0] a;
wire [31:0] b;
wire [31:0] c;
wire [31:0] s;

wire [31:0] st;

assign a = {a31, a30, 
						a29, a28, a27, a26, a25, a24, a23, a22, a21, a20,
						a19, a18, a17, a16, a15, a14, a13, a12, a11, a10,
						a9, a8, a7, a6, a5, a4, a3, a2, a1, a0};
assign b = {b31, b30, 
						b29, b28, b27, b26, b25, b24, b23, b22, b21, b20,
						b19, b18, b17, b16, b15, b14, b13, b12, b11, b10,
						b9, b8, b7, b6, b5, b4, b3, b2, b1, b0};
assign c = {c31, c30, 
						c29, c28, c27, c26, c25, c24, c23, c22, c21, c20,
						c19, c18, c17, c16, c15, c14, c13, c12, c11, c10,
						c9, c8, c7, c6, c5, c4, c3, c2, c1, c0};

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
assign s16 = s[16];
assign s17 = s[17];
assign s18 = s[18];
assign s19 = s[19];
assign s20 = s[20];
assign s21 = s[21];
assign s22 = s[22];
assign s23 = s[23];
assign s24 = s[24];
assign s25 = s[25];
assign s26 = s[26];
assign s27 = s[27];
assign s28 = s[28];
assign s29 = s[29];
assign s30 = s[30];
assign s31 = s[31];

// assign {co1, co0, s[31:0]} = {2'b00, c[31:0]} + {2'b00, b[31:0]} + {2'b00, a[31:0]} + {32'd0, ci1, ci0};

// Seems wrong, but is defined that way in DUPLO.NET
assign { co0, st[31:0] } = a + b + { 31'd0, ci0 };
assign { co1, s[31:0] } = c + st + { 31'd0, ci1 };

endmodule
