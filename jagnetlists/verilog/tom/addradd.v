/* verilator lint_off LITENDIAN */
`include "defs.v"

module addradd
(
	output [0:15] addq_x,
	output [0:15] addq_y,
	input a1fracld,
	input [0:15] adda_x,
	input [0:15] adda_y,
	input [0:15] addb_x,
	input [0:15] addb_y,
	input clk_0,
	input modx_0,
	input modx_1,
	input modx_2,
	input suba_x,
	input suba_y,
	input sys_clk // Generated
);
wire zero;
wire one;
wire addqt_x_0;
wire addqt_x_1;
wire addqt_x_2;
wire addqt_x_3;
wire addqt_x_4;
wire addqt_x_5;
wire addqt_x_6;
wire addqt_x_7;
wire addqt_x_8;
wire addqt_x_9;
wire addqt_x_10;
wire addqt_x_11;
wire addqt_x_12;
wire addqt_x_13;
wire addqt_x_14;
wire addqt_x_15;
wire co_x_n;
wire ci_x_n;
wire addq_y_0;
wire addq_y_1;
wire addq_y_2;
wire addq_y_3;
wire addq_y_4;
wire addq_y_5;
wire addq_y_6;
wire addq_y_7;
wire addq_y_8;
wire addq_y_9;
wire addq_y_10;
wire addq_y_11;
wire addq_y_12;
wire addq_y_13;
wire addq_y_14;
wire addq_y_15;
wire co_y_n;
wire ci_y_n;
wire co_x;
wire cxt_0;
wire cxt_1;
wire co_y;
wire cyt_0;
wire cyt_1;
wire unused_0;
wire masksel_0;
wire masksel_1;
wire masksel_2;
wire masksel_3;
wire masksel_4;
wire maskbit_5;
wire unused_1;
wire maskbit_0;
wire maskbit_1;
wire maskbit_2;
wire maskbit_3;
wire maskbit_4;
wire addq_x_0;
wire addq_x_1;
wire addq_x_2;
wire addq_x_3;
wire addq_x_4;
wire addq_x_5;

// ADDRADD.NET (40) - zero : tie0
assign zero = 1'b0;

// ADDRADD.NET (41) - one : tie1
assign one = 1'b1;

// ADDRADD.NET (45) - adder_x : fas16_s
fas16 adder_x_inst
(
	.s0 /* OUT */ (addqt_x_0),
	.s1 /* OUT */ (addqt_x_1),
	.s2 /* OUT */ (addqt_x_2),
	.s3 /* OUT */ (addqt_x_3),
	.s4 /* OUT */ (addqt_x_4),
	.s5 /* OUT */ (addqt_x_5),
	.s6 /* OUT */ (addqt_x_6),
	.s7 /* OUT */ (addqt_x_7),
	.s8 /* OUT */ (addqt_x_8),
	.s9 /* OUT */ (addqt_x_9),
	.s10 /* OUT */ (addqt_x_10),
	.s11 /* OUT */ (addqt_x_11),
	.s12 /* OUT */ (addqt_x_12),
	.s13 /* OUT */ (addqt_x_13),
	.s14 /* OUT */ (addqt_x_14),
	.s15 /* OUT */ (addqt_x_15),
	.co /* OUT */ (co_x_n),
	.as /* IN */ (one),
	.ci /* IN */ (ci_x_n),
	.a0 /* IN */ (adda_x[0]),
	.b0 /* IN */ (addb_x[0]),
	.a1 /* IN */ (adda_x[1]),
	.b1 /* IN */ (addb_x[1]),
	.a2 /* IN */ (adda_x[2]),
	.b2 /* IN */ (addb_x[2]),
	.a3 /* IN */ (adda_x[3]),
	.b3 /* IN */ (addb_x[3]),
	.a4 /* IN */ (adda_x[4]),
	.b4 /* IN */ (addb_x[4]),
	.a5 /* IN */ (adda_x[5]),
	.b5 /* IN */ (addb_x[5]),
	.a6 /* IN */ (adda_x[6]),
	.b6 /* IN */ (addb_x[6]),
	.a7 /* IN */ (adda_x[7]),
	.b7 /* IN */ (addb_x[7]),
	.a8 /* IN */ (adda_x[8]),
	.b8 /* IN */ (addb_x[8]),
	.a9 /* IN */ (adda_x[9]),
	.b9 /* IN */ (addb_x[9]),
	.a10 /* IN */ (adda_x[10]),
	.b10 /* IN */ (addb_x[10]),
	.a11 /* IN */ (adda_x[11]),
	.b11 /* IN */ (addb_x[11]),
	.a12 /* IN */ (adda_x[12]),
	.b12 /* IN */ (addb_x[12]),
	.a13 /* IN */ (adda_x[13]),
	.b13 /* IN */ (addb_x[13]),
	.a14 /* IN */ (adda_x[14]),
	.b14 /* IN */ (addb_x[14]),
	.a15 /* IN */ (adda_x[15]),
	.b15 /* IN */ (addb_x[15])
);

// ADDRADD.NET (54) - adder_y : fas16_s
fas16 adder_y_inst
(
	.s0 /* OUT */ (addq_y_0),
	.s1 /* OUT */ (addq_y_1),
	.s2 /* OUT */ (addq_y_2),
	.s3 /* OUT */ (addq_y_3),
	.s4 /* OUT */ (addq_y_4),
	.s5 /* OUT */ (addq_y_5),
	.s6 /* OUT */ (addq_y_6),
	.s7 /* OUT */ (addq_y_7),
	.s8 /* OUT */ (addq_y_8),
	.s9 /* OUT */ (addq_y_9),
	.s10 /* OUT */ (addq_y_10),
	.s11 /* OUT */ (addq_y_11),
	.s12 /* OUT */ (addq_y_12),
	.s13 /* OUT */ (addq_y_13),
	.s14 /* OUT */ (addq_y_14),
	.s15 /* OUT */ (addq_y_15),
	.co /* OUT */ (co_y_n),
	.as /* IN */ (one),
	.ci /* IN */ (ci_y_n),
	.a0 /* IN */ (adda_y[0]),
	.b0 /* IN */ (addb_y[0]),
	.a1 /* IN */ (adda_y[1]),
	.b1 /* IN */ (addb_y[1]),
	.a2 /* IN */ (adda_y[2]),
	.b2 /* IN */ (addb_y[2]),
	.a3 /* IN */ (adda_y[3]),
	.b3 /* IN */ (addb_y[3]),
	.a4 /* IN */ (adda_y[4]),
	.b4 /* IN */ (addb_y[4]),
	.a5 /* IN */ (adda_y[5]),
	.b5 /* IN */ (addb_y[5]),
	.a6 /* IN */ (adda_y[6]),
	.b6 /* IN */ (addb_y[6]),
	.a7 /* IN */ (adda_y[7]),
	.b7 /* IN */ (addb_y[7]),
	.a8 /* IN */ (adda_y[8]),
	.b8 /* IN */ (addb_y[8]),
	.a9 /* IN */ (adda_y[9]),
	.b9 /* IN */ (addb_y[9]),
	.a10 /* IN */ (adda_y[10]),
	.b10 /* IN */ (addb_y[10]),
	.a11 /* IN */ (adda_y[11]),
	.b11 /* IN */ (addb_y[11]),
	.a12 /* IN */ (adda_y[12]),
	.b12 /* IN */ (addb_y[12]),
	.a13 /* IN */ (adda_y[13]),
	.b13 /* IN */ (addb_y[13]),
	.a14 /* IN */ (adda_y[14]),
	.b14 /* IN */ (addb_y[14]),
	.a15 /* IN */ (adda_y[15]),
	.b15 /* IN */ (addb_y[15])
);

// ADDRADD.NET (66) - co_x : iv
assign co_x = ~co_x_n;

// ADDRADD.NET (67) - cxt0 : an2
assign cxt_0 = co_x & a1fracld;

// ADDRADD.NET (68) - cxt1 : fd1q
fd1q cxt1_inst
(
	.q /* OUT */ (cxt_1),
	.d /* IN */ (cxt_0),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);

// ADDRADD.NET (69) - ci_x : en
assign ci_x_n = ~(cxt_1 ^ suba_x);

// ADDRADD.NET (71) - co_y : iv
assign co_y = ~co_y_n;

// ADDRADD.NET (72) - cyt0 : an2
assign cyt_0 = co_y & a1fracld;

// ADDRADD.NET (73) - cyt1 : fd1q
fd1q cyt1_inst
(
	.q /* OUT */ (cyt_1),
	.d /* IN */ (cyt_0),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);

// ADDRADD.NET (74) - ci_y : en
assign ci_y_n = ~(cyt_1 ^ suba_y);

// ADDRADD.NET (78) - masksel : d38h
d38h masksel_inst
(
	.z0 /* OUT */ (unused_0),
	.z1 /* OUT */ (masksel_0),
	.z2 /* OUT */ (masksel_1),
	.z3 /* OUT */ (masksel_2),
	.z4 /* OUT */ (masksel_3),
	.z5 /* OUT */ (masksel_4),
	.z6 /* OUT */ (maskbit_5),
	.z7 /* OUT */ (unused_1),
	.a0 /* IN */ (modx_0),
	.a1 /* IN */ (modx_1),
	.a2 /* IN */ (modx_2)
);

// ADDRADD.NET (81) - maskbit[0-4] : or2
assign maskbit_0 = masksel_0 | maskbit_1;
assign maskbit_1 = masksel_1 | maskbit_2;
assign maskbit_2 = masksel_2 | maskbit_3;
assign maskbit_3 = masksel_3 | maskbit_4;
assign maskbit_4 = masksel_4 | maskbit_5;

// ADDRADD.NET (83) - mask[0-5] : mx2
assign addq_x_0 = (maskbit_0) ? zero : addqt_x_0;
assign addq_x_1 = (maskbit_1) ? zero : addqt_x_1;
assign addq_x_2 = (maskbit_2) ? zero : addqt_x_2;
assign addq_x_3 = (maskbit_3) ? zero : addqt_x_3;
assign addq_x_4 = (maskbit_4) ? zero : addqt_x_4;
assign addq_x_5 = (maskbit_5) ? zero : addqt_x_5;

// ADDRADD.NET (86) - addq_x : join
assign addq_x[0] = addq_x_0;
assign addq_x[1] = addq_x_1;
assign addq_x[2] = addq_x_2;
assign addq_x[3] = addq_x_3;
assign addq_x[4] = addq_x_4;
assign addq_x[5] = addq_x_5;
assign addq_x[6] = addqt_x_6;
assign addq_x[7] = addqt_x_7;
assign addq_x[8] = addqt_x_8;
assign addq_x[9] = addqt_x_9;
assign addq_x[10] = addqt_x_10;
assign addq_x[11] = addqt_x_11;
assign addq_x[12] = addqt_x_12;
assign addq_x[13] = addqt_x_13;
assign addq_x[14] = addqt_x_14;
assign addq_x[15] = addqt_x_15;

// ADDRADD.NET (87) - addq_y : join
assign addq_y[0] = addq_y_0;
assign addq_y[1] = addq_y_1;
assign addq_y[2] = addq_y_2;
assign addq_y[3] = addq_y_3;
assign addq_y[4] = addq_y_4;
assign addq_y[5] = addq_y_5;
assign addq_y[6] = addq_y_6;
assign addq_y[7] = addq_y_7;
assign addq_y[8] = addq_y_8;
assign addq_y[9] = addq_y_9;
assign addq_y[10] = addq_y_10;
assign addq_y[11] = addq_y_11;
assign addq_y[12] = addq_y_12;
assign addq_y[13] = addq_y_13;
assign addq_y[14] = addq_y_14;
assign addq_y[15] = addq_y_15;

// ADDRADD.NET (89) - unused[0-1] : dummy
endmodule
/* verilator lint_on LITENDIAN */
