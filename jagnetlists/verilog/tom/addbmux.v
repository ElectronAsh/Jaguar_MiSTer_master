/* verilator lint_off LITENDIAN */
`include "defs.v"

module addbmux
(
	output [0:15] addb_x,
	output [0:15] addb_y,
	input addbsel_0,
	input addbsel_1,
	input [0:15] a1_x,
	input [0:15] a1_y,
	input [0:15] a2_x,
	input [0:15] a2_y,
	input [0:15] a1_frac_x,
	input [0:15] a1_frac_y
);
wire addbselb_0;
wire addbselb_1;

// ADDRMUX.NET (135) - addbselb[0-1] : nivu
assign addbselb_0 = addbsel_0;
assign addbselb_1 = addbsel_1;

// ADDRMUX.NET (136) - addb_x : mx4
mx4 addb_x_inst_0
(
	.z /* OUT */ (addb_x[0]),
	.a0 /* IN */ (a1_x[0]),
	.a1 /* IN */ (a2_x[0]),
	.a2 /* IN */ (a1_frac_x[0]),
	.a3 /* IN */ (a1_x[0]),
	.s0 /* IN */ (addbselb_0),
	.s1 /* IN */ (addbselb_1)
);
mx4 addb_x_inst_1
(
	.z /* OUT */ (addb_x[1]),
	.a0 /* IN */ (a1_x[1]),
	.a1 /* IN */ (a2_x[1]),
	.a2 /* IN */ (a1_frac_x[1]),
	.a3 /* IN */ (a1_x[1]),
	.s0 /* IN */ (addbselb_0),
	.s1 /* IN */ (addbselb_1)
);
mx4 addb_x_inst_2
(
	.z /* OUT */ (addb_x[2]),
	.a0 /* IN */ (a1_x[2]),
	.a1 /* IN */ (a2_x[2]),
	.a2 /* IN */ (a1_frac_x[2]),
	.a3 /* IN */ (a1_x[2]),
	.s0 /* IN */ (addbselb_0),
	.s1 /* IN */ (addbselb_1)
);
mx4 addb_x_inst_3
(
	.z /* OUT */ (addb_x[3]),
	.a0 /* IN */ (a1_x[3]),
	.a1 /* IN */ (a2_x[3]),
	.a2 /* IN */ (a1_frac_x[3]),
	.a3 /* IN */ (a1_x[3]),
	.s0 /* IN */ (addbselb_0),
	.s1 /* IN */ (addbselb_1)
);
mx4 addb_x_inst_4
(
	.z /* OUT */ (addb_x[4]),
	.a0 /* IN */ (a1_x[4]),
	.a1 /* IN */ (a2_x[4]),
	.a2 /* IN */ (a1_frac_x[4]),
	.a3 /* IN */ (a1_x[4]),
	.s0 /* IN */ (addbselb_0),
	.s1 /* IN */ (addbselb_1)
);
mx4 addb_x_inst_5
(
	.z /* OUT */ (addb_x[5]),
	.a0 /* IN */ (a1_x[5]),
	.a1 /* IN */ (a2_x[5]),
	.a2 /* IN */ (a1_frac_x[5]),
	.a3 /* IN */ (a1_x[5]),
	.s0 /* IN */ (addbselb_0),
	.s1 /* IN */ (addbselb_1)
);
mx4 addb_x_inst_6
(
	.z /* OUT */ (addb_x[6]),
	.a0 /* IN */ (a1_x[6]),
	.a1 /* IN */ (a2_x[6]),
	.a2 /* IN */ (a1_frac_x[6]),
	.a3 /* IN */ (a1_x[6]),
	.s0 /* IN */ (addbselb_0),
	.s1 /* IN */ (addbselb_1)
);
mx4 addb_x_inst_7
(
	.z /* OUT */ (addb_x[7]),
	.a0 /* IN */ (a1_x[7]),
	.a1 /* IN */ (a2_x[7]),
	.a2 /* IN */ (a1_frac_x[7]),
	.a3 /* IN */ (a1_x[7]),
	.s0 /* IN */ (addbselb_0),
	.s1 /* IN */ (addbselb_1)
);
mx4 addb_x_inst_8
(
	.z /* OUT */ (addb_x[8]),
	.a0 /* IN */ (a1_x[8]),
	.a1 /* IN */ (a2_x[8]),
	.a2 /* IN */ (a1_frac_x[8]),
	.a3 /* IN */ (a1_x[8]),
	.s0 /* IN */ (addbselb_0),
	.s1 /* IN */ (addbselb_1)
);
mx4 addb_x_inst_9
(
	.z /* OUT */ (addb_x[9]),
	.a0 /* IN */ (a1_x[9]),
	.a1 /* IN */ (a2_x[9]),
	.a2 /* IN */ (a1_frac_x[9]),
	.a3 /* IN */ (a1_x[9]),
	.s0 /* IN */ (addbselb_0),
	.s1 /* IN */ (addbselb_1)
);
mx4 addb_x_inst_10
(
	.z /* OUT */ (addb_x[10]),
	.a0 /* IN */ (a1_x[10]),
	.a1 /* IN */ (a2_x[10]),
	.a2 /* IN */ (a1_frac_x[10]),
	.a3 /* IN */ (a1_x[10]),
	.s0 /* IN */ (addbselb_0),
	.s1 /* IN */ (addbselb_1)
);
mx4 addb_x_inst_11
(
	.z /* OUT */ (addb_x[11]),
	.a0 /* IN */ (a1_x[11]),
	.a1 /* IN */ (a2_x[11]),
	.a2 /* IN */ (a1_frac_x[11]),
	.a3 /* IN */ (a1_x[11]),
	.s0 /* IN */ (addbselb_0),
	.s1 /* IN */ (addbselb_1)
);
mx4 addb_x_inst_12
(
	.z /* OUT */ (addb_x[12]),
	.a0 /* IN */ (a1_x[12]),
	.a1 /* IN */ (a2_x[12]),
	.a2 /* IN */ (a1_frac_x[12]),
	.a3 /* IN */ (a1_x[12]),
	.s0 /* IN */ (addbselb_0),
	.s1 /* IN */ (addbselb_1)
);
mx4 addb_x_inst_13
(
	.z /* OUT */ (addb_x[13]),
	.a0 /* IN */ (a1_x[13]),
	.a1 /* IN */ (a2_x[13]),
	.a2 /* IN */ (a1_frac_x[13]),
	.a3 /* IN */ (a1_x[13]),
	.s0 /* IN */ (addbselb_0),
	.s1 /* IN */ (addbselb_1)
);
mx4 addb_x_inst_14
(
	.z /* OUT */ (addb_x[14]),
	.a0 /* IN */ (a1_x[14]),
	.a1 /* IN */ (a2_x[14]),
	.a2 /* IN */ (a1_frac_x[14]),
	.a3 /* IN */ (a1_x[14]),
	.s0 /* IN */ (addbselb_0),
	.s1 /* IN */ (addbselb_1)
);
mx4 addb_x_inst_15
(
	.z /* OUT */ (addb_x[15]),
	.a0 /* IN */ (a1_x[15]),
	.a1 /* IN */ (a2_x[15]),
	.a2 /* IN */ (a1_frac_x[15]),
	.a3 /* IN */ (a1_x[15]),
	.s0 /* IN */ (addbselb_0),
	.s1 /* IN */ (addbselb_1)
);

// ADDRMUX.NET (138) - addb_y : mx4
mx4 addb_y_inst_0
(
	.z /* OUT */ (addb_y[0]),
	.a0 /* IN */ (a1_y[0]),
	.a1 /* IN */ (a2_y[0]),
	.a2 /* IN */ (a1_frac_y[0]),
	.a3 /* IN */ (a1_y[0]),
	.s0 /* IN */ (addbselb_0),
	.s1 /* IN */ (addbselb_1)
);
mx4 addb_y_inst_1
(
	.z /* OUT */ (addb_y[1]),
	.a0 /* IN */ (a1_y[1]),
	.a1 /* IN */ (a2_y[1]),
	.a2 /* IN */ (a1_frac_y[1]),
	.a3 /* IN */ (a1_y[1]),
	.s0 /* IN */ (addbselb_0),
	.s1 /* IN */ (addbselb_1)
);
mx4 addb_y_inst_2
(
	.z /* OUT */ (addb_y[2]),
	.a0 /* IN */ (a1_y[2]),
	.a1 /* IN */ (a2_y[2]),
	.a2 /* IN */ (a1_frac_y[2]),
	.a3 /* IN */ (a1_y[2]),
	.s0 /* IN */ (addbselb_0),
	.s1 /* IN */ (addbselb_1)
);
mx4 addb_y_inst_3
(
	.z /* OUT */ (addb_y[3]),
	.a0 /* IN */ (a1_y[3]),
	.a1 /* IN */ (a2_y[3]),
	.a2 /* IN */ (a1_frac_y[3]),
	.a3 /* IN */ (a1_y[3]),
	.s0 /* IN */ (addbselb_0),
	.s1 /* IN */ (addbselb_1)
);
mx4 addb_y_inst_4
(
	.z /* OUT */ (addb_y[4]),
	.a0 /* IN */ (a1_y[4]),
	.a1 /* IN */ (a2_y[4]),
	.a2 /* IN */ (a1_frac_y[4]),
	.a3 /* IN */ (a1_y[4]),
	.s0 /* IN */ (addbselb_0),
	.s1 /* IN */ (addbselb_1)
);
mx4 addb_y_inst_5
(
	.z /* OUT */ (addb_y[5]),
	.a0 /* IN */ (a1_y[5]),
	.a1 /* IN */ (a2_y[5]),
	.a2 /* IN */ (a1_frac_y[5]),
	.a3 /* IN */ (a1_y[5]),
	.s0 /* IN */ (addbselb_0),
	.s1 /* IN */ (addbselb_1)
);
mx4 addb_y_inst_6
(
	.z /* OUT */ (addb_y[6]),
	.a0 /* IN */ (a1_y[6]),
	.a1 /* IN */ (a2_y[6]),
	.a2 /* IN */ (a1_frac_y[6]),
	.a3 /* IN */ (a1_y[6]),
	.s0 /* IN */ (addbselb_0),
	.s1 /* IN */ (addbselb_1)
);
mx4 addb_y_inst_7
(
	.z /* OUT */ (addb_y[7]),
	.a0 /* IN */ (a1_y[7]),
	.a1 /* IN */ (a2_y[7]),
	.a2 /* IN */ (a1_frac_y[7]),
	.a3 /* IN */ (a1_y[7]),
	.s0 /* IN */ (addbselb_0),
	.s1 /* IN */ (addbselb_1)
);
mx4 addb_y_inst_8
(
	.z /* OUT */ (addb_y[8]),
	.a0 /* IN */ (a1_y[8]),
	.a1 /* IN */ (a2_y[8]),
	.a2 /* IN */ (a1_frac_y[8]),
	.a3 /* IN */ (a1_y[8]),
	.s0 /* IN */ (addbselb_0),
	.s1 /* IN */ (addbselb_1)
);
mx4 addb_y_inst_9
(
	.z /* OUT */ (addb_y[9]),
	.a0 /* IN */ (a1_y[9]),
	.a1 /* IN */ (a2_y[9]),
	.a2 /* IN */ (a1_frac_y[9]),
	.a3 /* IN */ (a1_y[9]),
	.s0 /* IN */ (addbselb_0),
	.s1 /* IN */ (addbselb_1)
);
mx4 addb_y_inst_10
(
	.z /* OUT */ (addb_y[10]),
	.a0 /* IN */ (a1_y[10]),
	.a1 /* IN */ (a2_y[10]),
	.a2 /* IN */ (a1_frac_y[10]),
	.a3 /* IN */ (a1_y[10]),
	.s0 /* IN */ (addbselb_0),
	.s1 /* IN */ (addbselb_1)
);
mx4 addb_y_inst_11
(
	.z /* OUT */ (addb_y[11]),
	.a0 /* IN */ (a1_y[11]),
	.a1 /* IN */ (a2_y[11]),
	.a2 /* IN */ (a1_frac_y[11]),
	.a3 /* IN */ (a1_y[11]),
	.s0 /* IN */ (addbselb_0),
	.s1 /* IN */ (addbselb_1)
);
mx4 addb_y_inst_12
(
	.z /* OUT */ (addb_y[12]),
	.a0 /* IN */ (a1_y[12]),
	.a1 /* IN */ (a2_y[12]),
	.a2 /* IN */ (a1_frac_y[12]),
	.a3 /* IN */ (a1_y[12]),
	.s0 /* IN */ (addbselb_0),
	.s1 /* IN */ (addbselb_1)
);
mx4 addb_y_inst_13
(
	.z /* OUT */ (addb_y[13]),
	.a0 /* IN */ (a1_y[13]),
	.a1 /* IN */ (a2_y[13]),
	.a2 /* IN */ (a1_frac_y[13]),
	.a3 /* IN */ (a1_y[13]),
	.s0 /* IN */ (addbselb_0),
	.s1 /* IN */ (addbselb_1)
);
mx4 addb_y_inst_14
(
	.z /* OUT */ (addb_y[14]),
	.a0 /* IN */ (a1_y[14]),
	.a1 /* IN */ (a2_y[14]),
	.a2 /* IN */ (a1_frac_y[14]),
	.a3 /* IN */ (a1_y[14]),
	.s0 /* IN */ (addbselb_0),
	.s1 /* IN */ (addbselb_1)
);
mx4 addb_y_inst_15
(
	.z /* OUT */ (addb_y[15]),
	.a0 /* IN */ (a1_y[15]),
	.a1 /* IN */ (a2_y[15]),
	.a2 /* IN */ (a1_frac_y[15]),
	.a3 /* IN */ (a1_y[15]),
	.s0 /* IN */ (addbselb_0),
	.s1 /* IN */ (addbselb_1)
);
endmodule
/* verilator lint_on LITENDIAN */
