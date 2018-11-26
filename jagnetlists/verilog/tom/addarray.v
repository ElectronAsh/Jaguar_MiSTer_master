/* verilator lint_off LITENDIAN */
`include "defs.v"

module addarray
(
	output [0:15] addq_0,
	output [0:15] addq_1,
	output [0:15] addq_2,
	output [0:15] addq_3,
	input [0:15] adda_0,
	input [0:15] adda_1,
	input [0:15] adda_2,
	input [0:15] adda_3,
	input [0:15] addb_0,
	input [0:15] addb_1,
	input [0:15] addb_2,
	input [0:15] addb_3,
	input daddmode_0,
	input daddmode_1,
	input daddmode_2,
	input clk_0,
	input reset_n,
	input sys_clk // Generated
);
wire cinselt;
wire cinsel;
wire carryq_0;
wire carryq_1;
wire carryq_2;
wire carryq_3;
wire co_0;
wire co_1;
wire co_2;
wire co_3;
wire cin_0;
wire cin_1;
wire cin_2;
wire cin_3;
wire eightbit;
wire sat;
wire hicinh;

// ADDARRAY.NET (59) - cinselt : nr2
assign cinselt = ~(daddmode_0 | daddmode_1);

// ADDARRAY.NET (60) - cinsel : nr2p
assign cinsel = ~(cinselt | daddmode_2);

// ADDARRAY.NET (64) - carrylat[0-3] : fd2q
fd2q carrylat_from_0_to_3_inst_0
(
	.q /* OUT */ (carryq_0),
	.d /* IN */ (co_0),
	.cp /* IN */ (clk_0),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q carrylat_from_0_to_3_inst_1
(
	.q /* OUT */ (carryq_1),
	.d /* IN */ (co_1),
	.cp /* IN */ (clk_0),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q carrylat_from_0_to_3_inst_2
(
	.q /* OUT */ (carryq_2),
	.d /* IN */ (co_2),
	.cp /* IN */ (clk_0),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q carrylat_from_0_to_3_inst_3
(
	.q /* OUT */ (carryq_3),
	.d /* IN */ (co_3),
	.cp /* IN */ (clk_0),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// ADDARRAY.NET (68) - cin[0-3] : an2
assign cin_0 = carryq_0 & cinsel;
assign cin_1 = carryq_1 & cinsel;
assign cin_2 = carryq_2 & cinsel;
assign cin_3 = carryq_3 & cinsel;

// ADDARRAY.NET (72) - eightbit : join
assign eightbit = daddmode_1;

// ADDARRAY.NET (76) - sat : or2p
assign sat = daddmode_0 | daddmode_1;

// ADDARRAY.NET (80) - hicinh : an2p
assign hicinh = daddmode_0 & daddmode_1;

// ADDARRAY.NET (84) - adder1 : add16sat
add16sat adder1_inst
(
	.r /* OUT */ ({addq_0[0],addq_0[1],addq_0[2],addq_0[3],addq_0[4],addq_0[5],addq_0[6],addq_0[7],addq_0[8],addq_0[9],addq_0[10],addq_0[11],addq_0[12],addq_0[13],addq_0[14],addq_0[15]}),
	.co /* OUT */ (co_0),
	.a /* IN */ ({adda_0[0],adda_0[1],adda_0[2],adda_0[3],adda_0[4],adda_0[5],adda_0[6],adda_0[7],adda_0[8],adda_0[9],adda_0[10],adda_0[11],adda_0[12],adda_0[13],adda_0[14],adda_0[15]}),
	.b /* IN */ ({addb_0[0],addb_0[1],addb_0[2],addb_0[3],addb_0[4],addb_0[5],addb_0[6],addb_0[7],addb_0[8],addb_0[9],addb_0[10],addb_0[11],addb_0[12],addb_0[13],addb_0[14],addb_0[15]}),
	.cin /* IN */ (cin_0),
	.sat /* IN */ (sat),
	.eightbit /* IN */ (eightbit),
	.hicinh /* IN */ (hicinh)
);

// ADDARRAY.NET (87) - adder2 : add16sat
add16sat adder2_inst
(
	.r /* OUT */ ({addq_1[0],addq_1[1],addq_1[2],addq_1[3],addq_1[4],addq_1[5],addq_1[6],addq_1[7],addq_1[8],addq_1[9],addq_1[10],addq_1[11],addq_1[12],addq_1[13],addq_1[14],addq_1[15]}),
	.co /* OUT */ (co_1),
	.a /* IN */ ({adda_1[0],adda_1[1],adda_1[2],adda_1[3],adda_1[4],adda_1[5],adda_1[6],adda_1[7],adda_1[8],adda_1[9],adda_1[10],adda_1[11],adda_1[12],adda_1[13],adda_1[14],adda_1[15]}),
	.b /* IN */ ({addb_1[0],addb_1[1],addb_1[2],addb_1[3],addb_1[4],addb_1[5],addb_1[6],addb_1[7],addb_1[8],addb_1[9],addb_1[10],addb_1[11],addb_1[12],addb_1[13],addb_1[14],addb_1[15]}),
	.cin /* IN */ (cin_1),
	.sat /* IN */ (sat),
	.eightbit /* IN */ (eightbit),
	.hicinh /* IN */ (hicinh)
);

// ADDARRAY.NET (90) - adder3 : add16sat
add16sat adder3_inst
(
	.r /* OUT */ ({addq_2[0],addq_2[1],addq_2[2],addq_2[3],addq_2[4],addq_2[5],addq_2[6],addq_2[7],addq_2[8],addq_2[9],addq_2[10],addq_2[11],addq_2[12],addq_2[13],addq_2[14],addq_2[15]}),
	.co /* OUT */ (co_2),
	.a /* IN */ ({adda_2[0],adda_2[1],adda_2[2],adda_2[3],adda_2[4],adda_2[5],adda_2[6],adda_2[7],adda_2[8],adda_2[9],adda_2[10],adda_2[11],adda_2[12],adda_2[13],adda_2[14],adda_2[15]}),
	.b /* IN */ ({addb_2[0],addb_2[1],addb_2[2],addb_2[3],addb_2[4],addb_2[5],addb_2[6],addb_2[7],addb_2[8],addb_2[9],addb_2[10],addb_2[11],addb_2[12],addb_2[13],addb_2[14],addb_2[15]}),
	.cin /* IN */ (cin_2),
	.sat /* IN */ (sat),
	.eightbit /* IN */ (eightbit),
	.hicinh /* IN */ (hicinh)
);

// ADDARRAY.NET (93) - adder4 : add16sat
add16sat adder4_inst
(
	.r /* OUT */ ({addq_3[0],addq_3[1],addq_3[2],addq_3[3],addq_3[4],addq_3[5],addq_3[6],addq_3[7],addq_3[8],addq_3[9],addq_3[10],addq_3[11],addq_3[12],addq_3[13],addq_3[14],addq_3[15]}),
	.co /* OUT */ (co_3),
	.a /* IN */ ({adda_3[0],adda_3[1],adda_3[2],adda_3[3],adda_3[4],adda_3[5],adda_3[6],adda_3[7],adda_3[8],adda_3[9],adda_3[10],adda_3[11],adda_3[12],adda_3[13],adda_3[14],adda_3[15]}),
	.b /* IN */ ({addb_3[0],addb_3[1],addb_3[2],addb_3[3],addb_3[4],addb_3[5],addb_3[6],addb_3[7],addb_3[8],addb_3[9],addb_3[10],addb_3[11],addb_3[12],addb_3[13],addb_3[14],addb_3[15]}),
	.cin /* IN */ (cin_3),
	.sat /* IN */ (sat),
	.eightbit /* IN */ (eightbit),
	.hicinh /* IN */ (hicinh)
);
endmodule
/* verilator lint_on LITENDIAN */
