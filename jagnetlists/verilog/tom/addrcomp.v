/* verilator lint_off LITENDIAN */
`include "defs.v"

module addrcomp
(
	output a1_outside,
	input [0:15] a1_x,
	input [0:15] a1_y,
	input [0:14] a1_win_x,
	input [0:14] a1_win_y
);
wire a1xgr;
wire a1xeq;
wire a1xlt;
wire a1ygr;
wire a1yeq;
wire a1ylt;

// ADDRCOMP.NET (26) - a1_xcomp : mag_15
mag_15 a1_xcomp_inst
(
	.gt /* OUT */ (a1xgr),
	.eq /* OUT */ (a1xeq),
	.lt /* OUT */ (a1xlt),
	.a_0 /* IN */ (a1_x[0]),
	.a_1 /* IN */ (a1_x[1]),
	.a_2 /* IN */ (a1_x[2]),
	.a_3 /* IN */ (a1_x[3]),
	.a_4 /* IN */ (a1_x[4]),
	.a_5 /* IN */ (a1_x[5]),
	.a_6 /* IN */ (a1_x[6]),
	.a_7 /* IN */ (a1_x[7]),
	.a_8 /* IN */ (a1_x[8]),
	.a_9 /* IN */ (a1_x[9]),
	.a_10 /* IN */ (a1_x[10]),
	.a_11 /* IN */ (a1_x[11]),
	.a_12 /* IN */ (a1_x[12]),
	.a_13 /* IN */ (a1_x[13]),
	.a_14 /* IN */ (a1_x[14]),
	.b_0 /* IN */ (a1_win_x[0]),
	.b_1 /* IN */ (a1_win_x[1]),
	.b_2 /* IN */ (a1_win_x[2]),
	.b_3 /* IN */ (a1_win_x[3]),
	.b_4 /* IN */ (a1_win_x[4]),
	.b_5 /* IN */ (a1_win_x[5]),
	.b_6 /* IN */ (a1_win_x[6]),
	.b_7 /* IN */ (a1_win_x[7]),
	.b_8 /* IN */ (a1_win_x[8]),
	.b_9 /* IN */ (a1_win_x[9]),
	.b_10 /* IN */ (a1_win_x[10]),
	.b_11 /* IN */ (a1_win_x[11]),
	.b_12 /* IN */ (a1_win_x[12]),
	.b_13 /* IN */ (a1_win_x[13]),
	.b_14 /* IN */ (a1_win_x[14])
);

// ADDRCOMP.NET (28) - a1_ycomp : mag_15
mag_15 a1_ycomp_inst
(
	.gt /* OUT */ (a1ygr),
	.eq /* OUT */ (a1yeq),
	.lt /* OUT */ (a1ylt),
	.a_0 /* IN */ (a1_y[0]),
	.a_1 /* IN */ (a1_y[1]),
	.a_2 /* IN */ (a1_y[2]),
	.a_3 /* IN */ (a1_y[3]),
	.a_4 /* IN */ (a1_y[4]),
	.a_5 /* IN */ (a1_y[5]),
	.a_6 /* IN */ (a1_y[6]),
	.a_7 /* IN */ (a1_y[7]),
	.a_8 /* IN */ (a1_y[8]),
	.a_9 /* IN */ (a1_y[9]),
	.a_10 /* IN */ (a1_y[10]),
	.a_11 /* IN */ (a1_y[11]),
	.a_12 /* IN */ (a1_y[12]),
	.a_13 /* IN */ (a1_y[13]),
	.a_14 /* IN */ (a1_y[14]),
	.b_0 /* IN */ (a1_win_y[0]),
	.b_1 /* IN */ (a1_win_y[1]),
	.b_2 /* IN */ (a1_win_y[2]),
	.b_3 /* IN */ (a1_win_y[3]),
	.b_4 /* IN */ (a1_win_y[4]),
	.b_5 /* IN */ (a1_win_y[5]),
	.b_6 /* IN */ (a1_win_y[6]),
	.b_7 /* IN */ (a1_win_y[7]),
	.b_8 /* IN */ (a1_win_y[8]),
	.b_9 /* IN */ (a1_win_y[9]),
	.b_10 /* IN */ (a1_win_y[10]),
	.b_11 /* IN */ (a1_win_y[11]),
	.b_12 /* IN */ (a1_win_y[12]),
	.b_13 /* IN */ (a1_win_y[13]),
	.b_14 /* IN */ (a1_win_y[14])
);

// ADDRCOMP.NET (30) - a1_outside : or6
assign a1_outside = a1_x[15] | a1xgr | a1xeq | a1_y[15] | a1ygr | a1yeq;

// ADDRCOMP.NET (33) - unused0 : dummy

// ADDRCOMP.NET (34) - unused1 : dummy
endmodule
/* verilator lint_on LITENDIAN */
