/* verilator lint_off LITENDIAN */
`include "defs.v"

module j_jmisc
(
	input din_0,
	input din_1,
	input din_2,
	input din_3,
	input din_4,
	input din_5,
	input din_6,
	input din_7,
	input din_8,
	input din_9,
	input din_10,
	input din_11,
	input din_12,
	input din_13,
	input din_14,
	input din_15,
	input clk,
	input resetl,
	input pit1w,
	input pit2w,
	input pit3w,
	input pit4w,
	input int1w,
	input pit1r,
	input pit2r,
	input pit3r,
	input pit4r,
	input int1r,
	input dint,
	input eint,
	input test1w,
	input joy1wl,
	input uint,
	input i2int,
	output tint_0,
	output tint_1,
	output ts,
	output _int,
	output ndtest,
	output joyenl,
	output dr_0_out,
	output dr_0_oe,
	input dr_0_in,
	output dr_1_out,
	output dr_1_oe,
	input dr_1_in,
	output dr_2_out,
	output dr_2_oe,
	input dr_2_in,
	output dr_3_out,
	output dr_3_oe,
	input dr_3_in,
	output dr_4_out,
	output dr_4_oe,
	input dr_4_in,
	output dr_5_out,
	output dr_5_oe,
	input dr_5_in,
	output dr_6_out,
	output dr_6_oe,
	input dr_6_in,
	output dr_7_out,
	output dr_7_oe,
	input dr_7_in,
	output dr_8_out,
	output dr_8_oe,
	input dr_8_in,
	output dr_9_out,
	output dr_9_oe,
	input dr_9_in,
	output dr_10_out,
	output dr_10_oe,
	input dr_10_in,
	output dr_11_out,
	output dr_11_oe,
	input dr_11_in,
	output dr_12_out,
	output dr_12_oe,
	input dr_12_in,
	output dr_13_out,
	output dr_13_oe,
	input dr_13_in,
	output dr_14_out,
	output dr_14_oe,
	input dr_14_in,
	output dr_15_out,
	output dr_15_oe,
	input dr_15_in,
	input sys_clk // Generated
);
wire [0:15] tp0;
wire [0:15] t0;
wire [0:15] tp1;
wire [0:15] t1;
wire ie_0;
wire ie_1;
wire ie_2;
wire ie_3;
wire ie_4;
wire ie_5;
wire ack_0;
wire ack_1;
wire ack_2;
wire ack_3;
wire ack_4;
wire ack_5;
wire ei1;
wire ei2;
wire ei2l;
wire eip;
wire dip;
wire tip_0;
wire tip_1;
wire uip;
wire iip;
wire i_0;
wire il_0;
wire i_1;
wire il_1;
wire i_2;
wire il_2;
wire i_3;
wire il_3;
wire i_4;
wire il_4;
wire i_5;
wire il_5;
wire gnd;
wire pd0_0;
wire pd0_1;
wire pd0_2;
wire pd0_3;
wire pd0_4;
wire pd0_5;
wire pd0_6;
wire pd0_7;
wire pd0_8;
wire pd0_9;
wire pd0_10;
wire pd0_11;
wire pd0_12;
wire pd0_13;
wire pd0_14;
wire pd0_15;
wire td0_0;
wire td0_1;
wire td0_2;
wire td0_3;
wire td0_4;
wire td0_5;
wire td0_6;
wire td0_7;
wire td0_8;
wire td0_9;
wire td0_10;
wire td0_11;
wire td0_12;
wire td0_13;
wire td0_14;
wire td0_15;
wire ten00;
wire ten01;
wire ten0;
wire presl0;
wire tp0_0;
wire tpco0_0;
wire tpld0;
wire tp0_1;
wire tp0_2;
wire tp0_3;
wire tp0_4;
wire tp0_5;
wire tp0_6;
wire tp0_7;
wire tpco0_1;
wire tpco0_2;
wire tpco0_3;
wire tpco0_4;
wire tpco0_5;
wire tpco0_6;
wire tpco0_7;
wire tp0_8;
wire tpco0_8;
wire tpc08;
wire tp0_9;
wire tp0_10;
wire tp0_11;
wire tp0_12;
wire tp0_13;
wire tp0_14;
wire tp0_15;
wire tpco0_9;
wire tpco0_10;
wire tpco0_11;
wire tpco0_12;
wire tpco0_13;
wire tpco0_14;
wire tpco0_15;
wire tplac00;
wire tplac01;
wire tpc016;
wire tpld0i;
wire t0_0;
wire tco0_0;
wire tld0;
wire t0_1;
wire t0_2;
wire t0_3;
wire t0_4;
wire t0_5;
wire t0_6;
wire t0_7;
wire tco0_1;
wire tco0_2;
wire tco0_3;
wire tco0_4;
wire tco0_5;
wire tco0_6;
wire tco0_7;
wire t0_8;
wire tco0_8;
wire tc08;
wire t0_9;
wire t0_10;
wire t0_11;
wire t0_12;
wire t0_13;
wire t0_14;
wire t0_15;
wire tco0_9;
wire tco0_10;
wire tco0_11;
wire tco0_12;
wire tco0_13;
wire tco0_14;
wire tco0_15;
wire tlac00;
wire tlac01;
wire tc016;
wire tld0i;
wire pd1_0;
wire pd1_1;
wire pd1_2;
wire pd1_3;
wire pd1_4;
wire pd1_5;
wire pd1_6;
wire pd1_7;
wire pd1_8;
wire pd1_9;
wire pd1_10;
wire pd1_11;
wire pd1_12;
wire pd1_13;
wire pd1_14;
wire pd1_15;
wire td1_0;
wire td1_1;
wire td1_2;
wire td1_3;
wire td1_4;
wire td1_5;
wire td1_6;
wire td1_7;
wire td1_8;
wire td1_9;
wire td1_10;
wire td1_11;
wire td1_12;
wire td1_13;
wire td1_14;
wire td1_15;
wire ten10;
wire ten11;
wire ten1;
wire presl1;
wire tp1_0;
wire tpco1_0;
wire tpld1;
wire tp1_1;
wire tp1_2;
wire tp1_3;
wire tp1_4;
wire tp1_5;
wire tp1_6;
wire tp1_7;
wire tpco1_1;
wire tpco1_2;
wire tpco1_3;
wire tpco1_4;
wire tpco1_5;
wire tpco1_6;
wire tpco1_7;
wire tp1_8;
wire tpco1_8;
wire tpc18;
wire tp1_9;
wire tp1_10;
wire tp1_11;
wire tp1_12;
wire tp1_13;
wire tp1_14;
wire tp1_15;
wire tpco1_9;
wire tpco1_10;
wire tpco1_11;
wire tpco1_12;
wire tpco1_13;
wire tpco1_14;
wire tpco1_15;
wire tplac10;
wire tplac11;
wire tpc116;
wire tpld1i;
wire t1_0;
wire tco1_0;
wire tld1;
wire t1_1;
wire t1_2;
wire t1_3;
wire t1_4;
wire t1_5;
wire t1_6;
wire t1_7;
wire tco1_1;
wire tco1_2;
wire tco1_3;
wire tco1_4;
wire tco1_5;
wire tco1_6;
wire tco1_7;
wire t1_8;
wire tco1_8;
wire tc18;
wire t1_9;
wire t1_10;
wire t1_11;
wire t1_12;
wire t1_13;
wire t1_14;
wire t1_15;
wire tco1_9;
wire tco1_10;
wire tco1_11;
wire tco1_12;
wire tco1_13;
wire tco1_14;
wire tco1_15;
wire tlac10;
wire tlac11;
wire tc116;
wire tld1i;
wire joyen;
wire joy1w;
wire ts_pe_119_a0_out;
wire ts_pe_119_a0_oe;
wire ts_pe_119_a0_in;
wire ts_pe_119_a1_out;
wire ts_pe_119_a1_oe;
wire ts_pe_119_a1_in;
wire ts_pe_119_a2_out;
wire ts_pe_119_a2_oe;
wire ts_pe_119_a2_in;
wire ts_pe_119_a3_out;
wire ts_pe_119_a3_oe;
wire ts_pe_119_a3_in;
wire ts_pe_119_a4_out;
wire ts_pe_119_a4_oe;
wire ts_pe_119_a4_in;
wire ts_pe_120_a0_out;
wire ts_pe_120_a0_oe;
wire ts_pe_120_a0_in;
wire ts_pe_120_a1_out;
wire ts_pe_120_a1_oe;
wire ts_pe_120_a1_in;
wire ts_pe_120_a2_out;
wire ts_pe_120_a2_oe;
wire ts_pe_120_a2_in;
wire ts_pe_120_a3_out;
wire ts_pe_120_a3_oe;
wire ts_pe_120_a3_in;
wire ts_pe_120_a4_out;
wire ts_pe_120_a4_oe;
wire ts_pe_120_a4_in;
wire ts_pe_121_a0_out;
wire ts_pe_121_a0_oe;
wire ts_pe_121_a0_in;
wire ts_pe_121_a1_out;
wire ts_pe_121_a1_oe;
wire ts_pe_121_a1_in;
wire ts_pe_121_a2_out;
wire ts_pe_121_a2_oe;
wire ts_pe_121_a2_in;
wire ts_pe_121_a3_out;
wire ts_pe_121_a3_oe;
wire ts_pe_121_a3_in;
wire ts_pe_121_a4_out;
wire ts_pe_121_a4_oe;
wire ts_pe_121_a4_in;
wire ts_pe_122_a0_out;
wire ts_pe_122_a0_oe;
wire ts_pe_122_a0_in;
wire ts_pe_122_a1_out;
wire ts_pe_122_a1_oe;
wire ts_pe_122_a1_in;
wire ts_pe_122_a2_out;
wire ts_pe_122_a2_oe;
wire ts_pe_122_a2_in;
wire ts_pe_122_a3_out;
wire ts_pe_122_a3_oe;
wire ts_pe_122_a3_in;
wire ts_pe_122_a4_out;
wire ts_pe_122_a4_oe;
wire ts_pe_122_a4_in;
wire ts_pe_123_a0_out;
wire ts_pe_123_a0_oe;
wire ts_pe_123_a0_in;
wire ts_pe_123_a1_out;
wire ts_pe_123_a1_oe;
wire ts_pe_123_a1_in;
wire ts_pe_123_a2_out;
wire ts_pe_123_a2_oe;
wire ts_pe_123_a2_in;
wire ts_pe_123_a3_out;
wire ts_pe_123_a3_oe;
wire ts_pe_123_a3_in;
wire ts_pe_123_a4_out;
wire ts_pe_123_a4_oe;
wire ts_pe_123_a4_in;
wire ts_pe_124_a0_out;
wire ts_pe_124_a0_oe;
wire ts_pe_124_a0_in;
wire ts_pe_124_a1_out;
wire ts_pe_124_a1_oe;
wire ts_pe_124_a1_in;
wire ts_pe_124_a2_out;
wire ts_pe_124_a2_oe;
wire ts_pe_124_a2_in;
wire ts_pe_124_a3_out;
wire ts_pe_124_a3_oe;
wire ts_pe_124_a3_in;
wire ts_pe_124_a4_out;
wire ts_pe_124_a4_oe;
wire ts_pe_124_a4_in;
wire ts_pe_125_a0_out;
wire ts_pe_125_a0_oe;
wire ts_pe_125_a0_in;
wire ts_pe_125_a1_out;
wire ts_pe_125_a1_oe;
wire ts_pe_125_a1_in;
wire ts_pe_125_a2_out;
wire ts_pe_125_a2_oe;
wire ts_pe_125_a2_in;
wire ts_pe_125_a3_out;
wire ts_pe_125_a3_oe;
wire ts_pe_125_a3_in;
wire ts_pe_125_a4_out;
wire ts_pe_125_a4_oe;
wire ts_pe_125_a4_in;
wire ts_pe_126_a0_out;
wire ts_pe_126_a0_oe;
wire ts_pe_126_a0_in;
wire ts_pe_126_a1_out;
wire ts_pe_126_a1_oe;
wire ts_pe_126_a1_in;
wire ts_pe_126_a2_out;
wire ts_pe_126_a2_oe;
wire ts_pe_126_a2_in;
wire ts_pe_126_a3_out;
wire ts_pe_126_a3_oe;
wire ts_pe_126_a3_in;
wire ts_pe_126_a4_out;
wire ts_pe_126_a4_oe;
wire ts_pe_126_a4_in;
wire ts_pe_127_a0_out;
wire ts_pe_127_a0_oe;
wire ts_pe_127_a0_in;
wire ts_pe_127_a1_out;
wire ts_pe_127_a1_oe;
wire ts_pe_127_a1_in;
wire ts_pe_127_a2_out;
wire ts_pe_127_a2_oe;
wire ts_pe_127_a2_in;
wire ts_pe_127_a3_out;
wire ts_pe_127_a3_oe;
wire ts_pe_127_a3_in;
wire ts_pe_127_a4_out;
wire ts_pe_127_a4_oe;
wire ts_pe_127_a4_in;
wire ts_pe_128_a0_out;
wire ts_pe_128_a0_oe;
wire ts_pe_128_a0_in;
wire ts_pe_128_a1_out;
wire ts_pe_128_a1_oe;
wire ts_pe_128_a1_in;
wire ts_pe_128_a2_out;
wire ts_pe_128_a2_oe;
wire ts_pe_128_a2_in;
wire ts_pe_128_a3_out;
wire ts_pe_128_a3_oe;
wire ts_pe_128_a3_in;
wire ts_pe_128_a4_out;
wire ts_pe_128_a4_oe;
wire ts_pe_128_a4_in;
wire ts_pe_129_a0_out;
wire ts_pe_129_a0_oe;
wire ts_pe_129_a0_in;
wire ts_pe_129_a1_out;
wire ts_pe_129_a1_oe;
wire ts_pe_129_a1_in;
wire ts_pe_129_a2_out;
wire ts_pe_129_a2_oe;
wire ts_pe_129_a2_in;
wire ts_pe_129_a3_out;
wire ts_pe_129_a3_oe;
wire ts_pe_129_a3_in;
wire ts_pe_129_a4_out;
wire ts_pe_129_a4_oe;
wire ts_pe_129_a4_in;
wire ts_pe_130_a0_out;
wire ts_pe_130_a0_oe;
wire ts_pe_130_a0_in;
wire ts_pe_130_a1_out;
wire ts_pe_130_a1_oe;
wire ts_pe_130_a1_in;
wire ts_pe_130_a2_out;
wire ts_pe_130_a2_oe;
wire ts_pe_130_a2_in;
wire ts_pe_130_a3_out;
wire ts_pe_130_a3_oe;
wire ts_pe_130_a3_in;
wire ts_pe_130_a4_out;
wire ts_pe_130_a4_oe;
wire ts_pe_130_a4_in;
wire ts_pe_131_a0_out;
wire ts_pe_131_a0_oe;
wire ts_pe_131_a0_in;
wire ts_pe_131_a1_out;
wire ts_pe_131_a1_oe;
wire ts_pe_131_a1_in;
wire ts_pe_131_a2_out;
wire ts_pe_131_a2_oe;
wire ts_pe_131_a2_in;
wire ts_pe_131_a3_out;
wire ts_pe_131_a3_oe;
wire ts_pe_131_a3_in;
wire ts_pe_131_a4_out;
wire ts_pe_131_a4_oe;
wire ts_pe_131_a4_in;
wire ts_pe_132_a0_out;
wire ts_pe_132_a0_oe;
wire ts_pe_132_a0_in;
wire ts_pe_132_a1_out;
wire ts_pe_132_a1_oe;
wire ts_pe_132_a1_in;
wire ts_pe_132_a2_out;
wire ts_pe_132_a2_oe;
wire ts_pe_132_a2_in;
wire ts_pe_132_a3_out;
wire ts_pe_132_a3_oe;
wire ts_pe_132_a3_in;
wire ts_pe_132_a4_out;
wire ts_pe_132_a4_oe;
wire ts_pe_132_a4_in;
wire ts_pe_133_a0_out;
wire ts_pe_133_a0_oe;
wire ts_pe_133_a0_in;
wire ts_pe_133_a1_out;
wire ts_pe_133_a1_oe;
wire ts_pe_133_a1_in;
wire ts_pe_133_a2_out;
wire ts_pe_133_a2_oe;
wire ts_pe_133_a2_in;
wire ts_pe_133_a3_out;
wire ts_pe_133_a3_oe;
wire ts_pe_133_a3_in;
wire ts_pe_133_a4_out;
wire ts_pe_133_a4_oe;
wire ts_pe_133_a4_in;
wire ts_pe_134_a0_out;
wire ts_pe_134_a0_oe;
wire ts_pe_134_a0_in;
wire ts_pe_134_a1_out;
wire ts_pe_134_a1_oe;
wire ts_pe_134_a1_in;
wire ts_pe_134_a2_out;
wire ts_pe_134_a2_oe;
wire ts_pe_134_a2_in;
wire ts_pe_134_a3_out;
wire ts_pe_134_a3_oe;
wire ts_pe_134_a3_in;
wire ts_pe_134_a4_out;
wire ts_pe_134_a4_oe;
wire ts_pe_134_a4_in;

// Output buffers
wire tint_0_obuf;
wire tint_1_obuf;


// Output buffers
assign tint_0 = tint_0_obuf;
assign tint_1 = tint_1_obuf;


// JMISC.NET (55) - ie[0-5] : ldp2q
ldp2q ie_from_0_to_5_inst_0
(
	.q /* OUT */ (ie_0),
	.d /* IN */ (din_0),
	.g /* IN */ (int1w),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
ldp2q ie_from_0_to_5_inst_1
(
	.q /* OUT */ (ie_1),
	.d /* IN */ (din_1),
	.g /* IN */ (int1w),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
ldp2q ie_from_0_to_5_inst_2
(
	.q /* OUT */ (ie_2),
	.d /* IN */ (din_2),
	.g /* IN */ (int1w),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
ldp2q ie_from_0_to_5_inst_3
(
	.q /* OUT */ (ie_3),
	.d /* IN */ (din_3),
	.g /* IN */ (int1w),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
ldp2q ie_from_0_to_5_inst_4
(
	.q /* OUT */ (ie_4),
	.d /* IN */ (din_4),
	.g /* IN */ (int1w),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
ldp2q ie_from_0_to_5_inst_5
(
	.q /* OUT */ (ie_5),
	.d /* IN */ (din_5),
	.g /* IN */ (int1w),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// JMISC.NET (56) - ack[0-5] : an2
assign ack_0 = din_8 & int1w;
assign ack_1 = din_9 & int1w;
assign ack_2 = din_10 & int1w;
assign ack_3 = din_11 & int1w;
assign ack_4 = din_12 & int1w;
assign ack_5 = din_13 & int1w;

// JMISC.NET (60) - ei1 : fd2q
fd2q ei1_inst
(
	.q /* OUT */ (ei1),
	.d /* IN */ (eint),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// JMISC.NET (61) - ei2 : fd2q
fd2q ei2_inst
(
	.q /* OUT */ (ei2),
	.d /* IN */ (ei1),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// JMISC.NET (62) - ei2l : iv
assign ei2l = ~ei2;

// JMISC.NET (63) - eip : an3
assign eip = ei1 & ei2l & ie_0;

// JMISC.NET (65) - dip : an2
assign dip = dint & ie_1;

// JMISC.NET (66) - tip[0-1] : an2
assign tip_0 = tint_0_obuf & ie_2;
assign tip_1 = tint_1_obuf & ie_3;

// JMISC.NET (67) - uip : an2
assign uip = uint & ie_4;

// JMISC.NET (68) - iip : an2
assign iip = i2int & ie_5;

// JMISC.NET (72) - i[0] : fjk2
fjk2 i_index_0_inst
(
	.q /* OUT */ (i_0),
	.qn /* OUT */ (il_0),
	.j /* IN */ (eip),
	.k /* IN */ (ack_0),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// JMISC.NET (73) - i[1] : fjk2
fjk2 i_index_1_inst
(
	.q /* OUT */ (i_1),
	.qn /* OUT */ (il_1),
	.j /* IN */ (dip),
	.k /* IN */ (ack_1),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// JMISC.NET (74) - i[2] : fjk2
fjk2 i_index_2_inst
(
	.q /* OUT */ (i_2),
	.qn /* OUT */ (il_2),
	.j /* IN */ (tip_0),
	.k /* IN */ (ack_2),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// JMISC.NET (75) - i[3] : fjk2
fjk2 i_index_3_inst
(
	.q /* OUT */ (i_3),
	.qn /* OUT */ (il_3),
	.j /* IN */ (tip_1),
	.k /* IN */ (ack_3),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// JMISC.NET (76) - i[4] : fjk2
fjk2 i_index_4_inst
(
	.q /* OUT */ (i_4),
	.qn /* OUT */ (il_4),
	.j /* IN */ (uip),
	.k /* IN */ (ack_4),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// JMISC.NET (77) - i[5] : fjk2
fjk2 i_index_5_inst
(
	.q /* OUT */ (i_5),
	.qn /* OUT */ (il_5),
	.j /* IN */ (iip),
	.k /* IN */ (ack_5),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// JMISC.NET (79) - ilu[0-5] : dummy

// JMISC.NET (83) - int : nd6
assign _int = ~(il_0 & il_1 & il_2 & il_3 & il_4 & il_5);

// JMISC.NET (87) - dii[0-5] : ts
assign ts_pe_119_a0_out = i_0;
assign ts_pe_119_a0_oe = int1r;
assign ts_pe_120_a0_out = i_1;
assign ts_pe_120_a0_oe = int1r;
assign ts_pe_121_a0_out = i_2;
assign ts_pe_121_a0_oe = int1r;
assign ts_pe_122_a0_out = i_3;
assign ts_pe_122_a0_oe = int1r;
assign ts_pe_123_a0_out = i_4;
assign ts_pe_123_a0_oe = int1r;
assign ts_pe_124_a0_out = i_5;
assign ts_pe_124_a0_oe = int1r;

// JMISC.NET (88) - dii[6-15] : ts
assign ts_pe_125_a0_out = gnd;
assign ts_pe_125_a0_oe = int1r;
assign ts_pe_126_a0_out = gnd;
assign ts_pe_126_a0_oe = int1r;
assign ts_pe_127_a0_out = gnd;
assign ts_pe_127_a0_oe = int1r;
assign ts_pe_128_a0_out = gnd;
assign ts_pe_128_a0_oe = int1r;
assign ts_pe_129_a0_out = gnd;
assign ts_pe_129_a0_oe = int1r;
assign ts_pe_130_a0_out = gnd;
assign ts_pe_130_a0_oe = int1r;
assign ts_pe_131_a0_out = gnd;
assign ts_pe_131_a0_oe = int1r;
assign ts_pe_132_a0_out = gnd;
assign ts_pe_132_a0_oe = int1r;
assign ts_pe_133_a0_out = gnd;
assign ts_pe_133_a0_oe = int1r;
assign ts_pe_134_a0_out = gnd;
assign ts_pe_134_a0_oe = int1r;

// JMISC.NET (89) - gnd : tie0
assign gnd = 1'b0;

// JMISC.NET (99) - pd0[0-15] : ldp2q
ldp2q pd0_from_0_to_15_inst_0
(
	.q /* OUT */ (pd0_0),
	.d /* IN */ (din_0),
	.g /* IN */ (pit1w),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
ldp2q pd0_from_0_to_15_inst_1
(
	.q /* OUT */ (pd0_1),
	.d /* IN */ (din_1),
	.g /* IN */ (pit1w),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
ldp2q pd0_from_0_to_15_inst_2
(
	.q /* OUT */ (pd0_2),
	.d /* IN */ (din_2),
	.g /* IN */ (pit1w),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
ldp2q pd0_from_0_to_15_inst_3
(
	.q /* OUT */ (pd0_3),
	.d /* IN */ (din_3),
	.g /* IN */ (pit1w),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
ldp2q pd0_from_0_to_15_inst_4
(
	.q /* OUT */ (pd0_4),
	.d /* IN */ (din_4),
	.g /* IN */ (pit1w),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
ldp2q pd0_from_0_to_15_inst_5
(
	.q /* OUT */ (pd0_5),
	.d /* IN */ (din_5),
	.g /* IN */ (pit1w),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
ldp2q pd0_from_0_to_15_inst_6
(
	.q /* OUT */ (pd0_6),
	.d /* IN */ (din_6),
	.g /* IN */ (pit1w),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
ldp2q pd0_from_0_to_15_inst_7
(
	.q /* OUT */ (pd0_7),
	.d /* IN */ (din_7),
	.g /* IN */ (pit1w),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
ldp2q pd0_from_0_to_15_inst_8
(
	.q /* OUT */ (pd0_8),
	.d /* IN */ (din_8),
	.g /* IN */ (pit1w),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
ldp2q pd0_from_0_to_15_inst_9
(
	.q /* OUT */ (pd0_9),
	.d /* IN */ (din_9),
	.g /* IN */ (pit1w),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
ldp2q pd0_from_0_to_15_inst_10
(
	.q /* OUT */ (pd0_10),
	.d /* IN */ (din_10),
	.g /* IN */ (pit1w),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
ldp2q pd0_from_0_to_15_inst_11
(
	.q /* OUT */ (pd0_11),
	.d /* IN */ (din_11),
	.g /* IN */ (pit1w),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
ldp2q pd0_from_0_to_15_inst_12
(
	.q /* OUT */ (pd0_12),
	.d /* IN */ (din_12),
	.g /* IN */ (pit1w),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
ldp2q pd0_from_0_to_15_inst_13
(
	.q /* OUT */ (pd0_13),
	.d /* IN */ (din_13),
	.g /* IN */ (pit1w),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
ldp2q pd0_from_0_to_15_inst_14
(
	.q /* OUT */ (pd0_14),
	.d /* IN */ (din_14),
	.g /* IN */ (pit1w),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
ldp2q pd0_from_0_to_15_inst_15
(
	.q /* OUT */ (pd0_15),
	.d /* IN */ (din_15),
	.g /* IN */ (pit1w),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// JMISC.NET (100) - td0[0-15] : ldp1q
ldp1q td0_from_0_to_15_inst_0
(
	.q /* OUT */ (td0_0),
	.d /* IN */ (din_0),
	.g /* IN */ (pit2w),
	.sys_clk(sys_clk) // Generated
);
ldp1q td0_from_0_to_15_inst_1
(
	.q /* OUT */ (td0_1),
	.d /* IN */ (din_1),
	.g /* IN */ (pit2w),
	.sys_clk(sys_clk) // Generated
);
ldp1q td0_from_0_to_15_inst_2
(
	.q /* OUT */ (td0_2),
	.d /* IN */ (din_2),
	.g /* IN */ (pit2w),
	.sys_clk(sys_clk) // Generated
);
ldp1q td0_from_0_to_15_inst_3
(
	.q /* OUT */ (td0_3),
	.d /* IN */ (din_3),
	.g /* IN */ (pit2w),
	.sys_clk(sys_clk) // Generated
);
ldp1q td0_from_0_to_15_inst_4
(
	.q /* OUT */ (td0_4),
	.d /* IN */ (din_4),
	.g /* IN */ (pit2w),
	.sys_clk(sys_clk) // Generated
);
ldp1q td0_from_0_to_15_inst_5
(
	.q /* OUT */ (td0_5),
	.d /* IN */ (din_5),
	.g /* IN */ (pit2w),
	.sys_clk(sys_clk) // Generated
);
ldp1q td0_from_0_to_15_inst_6
(
	.q /* OUT */ (td0_6),
	.d /* IN */ (din_6),
	.g /* IN */ (pit2w),
	.sys_clk(sys_clk) // Generated
);
ldp1q td0_from_0_to_15_inst_7
(
	.q /* OUT */ (td0_7),
	.d /* IN */ (din_7),
	.g /* IN */ (pit2w),
	.sys_clk(sys_clk) // Generated
);
ldp1q td0_from_0_to_15_inst_8
(
	.q /* OUT */ (td0_8),
	.d /* IN */ (din_8),
	.g /* IN */ (pit2w),
	.sys_clk(sys_clk) // Generated
);
ldp1q td0_from_0_to_15_inst_9
(
	.q /* OUT */ (td0_9),
	.d /* IN */ (din_9),
	.g /* IN */ (pit2w),
	.sys_clk(sys_clk) // Generated
);
ldp1q td0_from_0_to_15_inst_10
(
	.q /* OUT */ (td0_10),
	.d /* IN */ (din_10),
	.g /* IN */ (pit2w),
	.sys_clk(sys_clk) // Generated
);
ldp1q td0_from_0_to_15_inst_11
(
	.q /* OUT */ (td0_11),
	.d /* IN */ (din_11),
	.g /* IN */ (pit2w),
	.sys_clk(sys_clk) // Generated
);
ldp1q td0_from_0_to_15_inst_12
(
	.q /* OUT */ (td0_12),
	.d /* IN */ (din_12),
	.g /* IN */ (pit2w),
	.sys_clk(sys_clk) // Generated
);
ldp1q td0_from_0_to_15_inst_13
(
	.q /* OUT */ (td0_13),
	.d /* IN */ (din_13),
	.g /* IN */ (pit2w),
	.sys_clk(sys_clk) // Generated
);
ldp1q td0_from_0_to_15_inst_14
(
	.q /* OUT */ (td0_14),
	.d /* IN */ (din_14),
	.g /* IN */ (pit2w),
	.sys_clk(sys_clk) // Generated
);
ldp1q td0_from_0_to_15_inst_15
(
	.q /* OUT */ (td0_15),
	.d /* IN */ (din_15),
	.g /* IN */ (pit2w),
	.sys_clk(sys_clk) // Generated
);

// JMISC.NET (104) - ten00 : or8
assign ten00 = pd0_0 | pd0_1 | pd0_2 | pd0_3 | pd0_4 | pd0_5 | pd0_6 | pd0_7;

// JMISC.NET (105) - ten01 : or8
assign ten01 = pd0_8 | pd0_9 | pd0_10 | pd0_11 | pd0_12 | pd0_13 | pd0_14 | pd0_15;

// JMISC.NET (106) - ten0 : or2
assign ten0 = ten00 | ten01;

// JMISC.NET (107) - presl0 : an2u
assign presl0 = ten0 & resetl;

// JMISC.NET (111) - tp0[0] : dncnt
j_dncnt tp0_index_0_inst
(
	.q /* OUT */ (tp0_0),
	.co /* OUT */ (tpco0_0),
	.d /* IN */ (pd0_0),
	.clk /* IN */ (clk),
	.ci /* IN */ (ten0),
	.ld /* IN */ (tpld0),
	.resl /* IN */ (presl0),
	.sys_clk(sys_clk) // Generated
);

// JMISC.NET (112) - tp0[1-7] : dncnt
j_dncnt tp0_from_1_to_7_inst_0
(
	.q /* OUT */ (tp0_1),
	.co /* OUT */ (tpco0_1),
	.d /* IN */ (pd0_1),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco0_0),
	.ld /* IN */ (tpld0),
	.resl /* IN */ (presl0),
	.sys_clk(sys_clk) // Generated
);
j_dncnt tp0_from_1_to_7_inst_1
(
	.q /* OUT */ (tp0_2),
	.co /* OUT */ (tpco0_2),
	.d /* IN */ (pd0_2),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco0_1),
	.ld /* IN */ (tpld0),
	.resl /* IN */ (presl0),
	.sys_clk(sys_clk) // Generated
);
j_dncnt tp0_from_1_to_7_inst_2
(
	.q /* OUT */ (tp0_3),
	.co /* OUT */ (tpco0_3),
	.d /* IN */ (pd0_3),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco0_2),
	.ld /* IN */ (tpld0),
	.resl /* IN */ (presl0),
	.sys_clk(sys_clk) // Generated
);
j_dncnt tp0_from_1_to_7_inst_3
(
	.q /* OUT */ (tp0_4),
	.co /* OUT */ (tpco0_4),
	.d /* IN */ (pd0_4),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco0_3),
	.ld /* IN */ (tpld0),
	.resl /* IN */ (presl0),
	.sys_clk(sys_clk) // Generated
);
j_dncnt tp0_from_1_to_7_inst_4
(
	.q /* OUT */ (tp0_5),
	.co /* OUT */ (tpco0_5),
	.d /* IN */ (pd0_5),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco0_4),
	.ld /* IN */ (tpld0),
	.resl /* IN */ (presl0),
	.sys_clk(sys_clk) // Generated
);
j_dncnt tp0_from_1_to_7_inst_5
(
	.q /* OUT */ (tp0_6),
	.co /* OUT */ (tpco0_6),
	.d /* IN */ (pd0_6),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco0_5),
	.ld /* IN */ (tpld0),
	.resl /* IN */ (presl0),
	.sys_clk(sys_clk) // Generated
);
j_dncnt tp0_from_1_to_7_inst_6
(
	.q /* OUT */ (tp0_7),
	.co /* OUT */ (tpco0_7),
	.d /* IN */ (pd0_7),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco0_6),
	.ld /* IN */ (tpld0),
	.resl /* IN */ (presl0),
	.sys_clk(sys_clk) // Generated
);

// JMISC.NET (113) - tp0[8] : dncnt
j_dncnt tp0_index_8_inst
(
	.q /* OUT */ (tp0_8),
	.co /* OUT */ (tpco0_8),
	.d /* IN */ (pd0_8),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpc08),
	.ld /* IN */ (tpld0),
	.resl /* IN */ (presl0),
	.sys_clk(sys_clk) // Generated
);

// JMISC.NET (114) - tp0[9-15] : dncnt
j_dncnt tp0_from_9_to_15_inst_0
(
	.q /* OUT */ (tp0_9),
	.co /* OUT */ (tpco0_9),
	.d /* IN */ (pd0_9),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco0_8),
	.ld /* IN */ (tpld0),
	.resl /* IN */ (presl0),
	.sys_clk(sys_clk) // Generated
);
j_dncnt tp0_from_9_to_15_inst_1
(
	.q /* OUT */ (tp0_10),
	.co /* OUT */ (tpco0_10),
	.d /* IN */ (pd0_10),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco0_9),
	.ld /* IN */ (tpld0),
	.resl /* IN */ (presl0),
	.sys_clk(sys_clk) // Generated
);
j_dncnt tp0_from_9_to_15_inst_2
(
	.q /* OUT */ (tp0_11),
	.co /* OUT */ (tpco0_11),
	.d /* IN */ (pd0_11),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco0_10),
	.ld /* IN */ (tpld0),
	.resl /* IN */ (presl0),
	.sys_clk(sys_clk) // Generated
);
j_dncnt tp0_from_9_to_15_inst_3
(
	.q /* OUT */ (tp0_12),
	.co /* OUT */ (tpco0_12),
	.d /* IN */ (pd0_12),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco0_11),
	.ld /* IN */ (tpld0),
	.resl /* IN */ (presl0),
	.sys_clk(sys_clk) // Generated
);
j_dncnt tp0_from_9_to_15_inst_4
(
	.q /* OUT */ (tp0_13),
	.co /* OUT */ (tpco0_13),
	.d /* IN */ (pd0_13),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco0_12),
	.ld /* IN */ (tpld0),
	.resl /* IN */ (presl0),
	.sys_clk(sys_clk) // Generated
);
j_dncnt tp0_from_9_to_15_inst_5
(
	.q /* OUT */ (tp0_14),
	.co /* OUT */ (tpco0_14),
	.d /* IN */ (pd0_14),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco0_13),
	.ld /* IN */ (tpld0),
	.resl /* IN */ (presl0),
	.sys_clk(sys_clk) // Generated
);
j_dncnt tp0_from_9_to_15_inst_6
(
	.q /* OUT */ (tp0_15),
	.co /* OUT */ (tpco0_15),
	.d /* IN */ (pd0_15),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco0_14),
	.ld /* IN */ (tpld0),
	.resl /* IN */ (presl0),
	.sys_clk(sys_clk) // Generated
);

// JMISC.NET (115) - tpu0[0-15] : dummy

// JMISC.NET (116) - tpco0[7] : dummy

// JMISC.NET (117) - tpco0[15] : dummy

// JMISC.NET (118) - tplac00 : nr8
assign tplac00 = ~(tp0_0 | tp0_1 | tp0_2 | tp0_3 | tp0_4 | tp0_5 | tp0_6 | tp0_7);

// JMISC.NET (119) - tplac01 : nr8
assign tplac01 = ~(tp0_8 | tp0_9 | tp0_10 | tp0_11 | tp0_12 | tp0_13 | tp0_14 | tp0_15);

// JMISC.NET (120) - tpc08 : an2
assign tpc08 = tplac00 & ten0;

// JMISC.NET (121) - tpc016 : an3
assign tpc016 = tplac00 & tplac01 & ten0;

// JMISC.NET (122) - ts : nivh
assign ts = tpc016;

// JMISC.NET (124) - tpld0i : nr2
assign tpld0i = ~(tpc016 | pit1w);

// JMISC.NET (125) - tpld0 : ivh
assign tpld0 = ~tpld0i;

// JMISC.NET (127) - dtp0[0-15] : ts
assign ts_pe_119_a1_out = tp0_0;
assign ts_pe_119_a1_oe = pit1r;
assign ts_pe_120_a1_out = tp0_1;
assign ts_pe_120_a1_oe = pit1r;
assign ts_pe_121_a1_out = tp0_2;
assign ts_pe_121_a1_oe = pit1r;
assign ts_pe_122_a1_out = tp0_3;
assign ts_pe_122_a1_oe = pit1r;
assign ts_pe_123_a1_out = tp0_4;
assign ts_pe_123_a1_oe = pit1r;
assign ts_pe_124_a1_out = tp0_5;
assign ts_pe_124_a1_oe = pit1r;
assign ts_pe_125_a1_out = tp0_6;
assign ts_pe_125_a1_oe = pit1r;
assign ts_pe_126_a1_out = tp0_7;
assign ts_pe_126_a1_oe = pit1r;
assign ts_pe_127_a1_out = tp0_8;
assign ts_pe_127_a1_oe = pit1r;
assign ts_pe_128_a1_out = tp0_9;
assign ts_pe_128_a1_oe = pit1r;
assign ts_pe_129_a1_out = tp0_10;
assign ts_pe_129_a1_oe = pit1r;
assign ts_pe_130_a1_out = tp0_11;
assign ts_pe_130_a1_oe = pit1r;
assign ts_pe_131_a1_out = tp0_12;
assign ts_pe_131_a1_oe = pit1r;
assign ts_pe_132_a1_out = tp0_13;
assign ts_pe_132_a1_oe = pit1r;
assign ts_pe_133_a1_out = tp0_14;
assign ts_pe_133_a1_oe = pit1r;
assign ts_pe_134_a1_out = tp0_15;
assign ts_pe_134_a1_oe = pit1r;

// JMISC.NET (131) - t0[0] : dncnt
j_dncnt t0_index_0_inst
(
	.q /* OUT */ (t0_0),
	.co /* OUT */ (tco0_0),
	.d /* IN */ (td0_0),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpc016),
	.ld /* IN */ (tld0),
	.resl /* IN */ (presl0),
	.sys_clk(sys_clk) // Generated
);

// JMISC.NET (132) - t0[1-7] : dncnt
j_dncnt t0_from_1_to_7_inst_0
(
	.q /* OUT */ (t0_1),
	.co /* OUT */ (tco0_1),
	.d /* IN */ (td0_1),
	.clk /* IN */ (clk),
	.ci /* IN */ (tco0_0),
	.ld /* IN */ (tld0),
	.resl /* IN */ (presl0),
	.sys_clk(sys_clk) // Generated
);
j_dncnt t0_from_1_to_7_inst_1
(
	.q /* OUT */ (t0_2),
	.co /* OUT */ (tco0_2),
	.d /* IN */ (td0_2),
	.clk /* IN */ (clk),
	.ci /* IN */ (tco0_1),
	.ld /* IN */ (tld0),
	.resl /* IN */ (presl0),
	.sys_clk(sys_clk) // Generated
);
j_dncnt t0_from_1_to_7_inst_2
(
	.q /* OUT */ (t0_3),
	.co /* OUT */ (tco0_3),
	.d /* IN */ (td0_3),
	.clk /* IN */ (clk),
	.ci /* IN */ (tco0_2),
	.ld /* IN */ (tld0),
	.resl /* IN */ (presl0),
	.sys_clk(sys_clk) // Generated
);
j_dncnt t0_from_1_to_7_inst_3
(
	.q /* OUT */ (t0_4),
	.co /* OUT */ (tco0_4),
	.d /* IN */ (td0_4),
	.clk /* IN */ (clk),
	.ci /* IN */ (tco0_3),
	.ld /* IN */ (tld0),
	.resl /* IN */ (presl0),
	.sys_clk(sys_clk) // Generated
);
j_dncnt t0_from_1_to_7_inst_4
(
	.q /* OUT */ (t0_5),
	.co /* OUT */ (tco0_5),
	.d /* IN */ (td0_5),
	.clk /* IN */ (clk),
	.ci /* IN */ (tco0_4),
	.ld /* IN */ (tld0),
	.resl /* IN */ (presl0),
	.sys_clk(sys_clk) // Generated
);
j_dncnt t0_from_1_to_7_inst_5
(
	.q /* OUT */ (t0_6),
	.co /* OUT */ (tco0_6),
	.d /* IN */ (td0_6),
	.clk /* IN */ (clk),
	.ci /* IN */ (tco0_5),
	.ld /* IN */ (tld0),
	.resl /* IN */ (presl0),
	.sys_clk(sys_clk) // Generated
);
j_dncnt t0_from_1_to_7_inst_6
(
	.q /* OUT */ (t0_7),
	.co /* OUT */ (tco0_7),
	.d /* IN */ (td0_7),
	.clk /* IN */ (clk),
	.ci /* IN */ (tco0_6),
	.ld /* IN */ (tld0),
	.resl /* IN */ (presl0),
	.sys_clk(sys_clk) // Generated
);

// JMISC.NET (133) - t0[8] : dncnt
j_dncnt t0_index_8_inst
(
	.q /* OUT */ (t0_8),
	.co /* OUT */ (tco0_8),
	.d /* IN */ (td0_8),
	.clk /* IN */ (clk),
	.ci /* IN */ (tc08),
	.ld /* IN */ (tld0),
	.resl /* IN */ (presl0),
	.sys_clk(sys_clk) // Generated
);

// JMISC.NET (134) - t0[9-15] : dncnt
j_dncnt t0_from_9_to_15_inst_0
(
	.q /* OUT */ (t0_9),
	.co /* OUT */ (tco0_9),
	.d /* IN */ (td0_9),
	.clk /* IN */ (clk),
	.ci /* IN */ (tco0_8),
	.ld /* IN */ (tld0),
	.resl /* IN */ (presl0),
	.sys_clk(sys_clk) // Generated
);
j_dncnt t0_from_9_to_15_inst_1
(
	.q /* OUT */ (t0_10),
	.co /* OUT */ (tco0_10),
	.d /* IN */ (td0_10),
	.clk /* IN */ (clk),
	.ci /* IN */ (tco0_9),
	.ld /* IN */ (tld0),
	.resl /* IN */ (presl0),
	.sys_clk(sys_clk) // Generated
);
j_dncnt t0_from_9_to_15_inst_2
(
	.q /* OUT */ (t0_11),
	.co /* OUT */ (tco0_11),
	.d /* IN */ (td0_11),
	.clk /* IN */ (clk),
	.ci /* IN */ (tco0_10),
	.ld /* IN */ (tld0),
	.resl /* IN */ (presl0),
	.sys_clk(sys_clk) // Generated
);
j_dncnt t0_from_9_to_15_inst_3
(
	.q /* OUT */ (t0_12),
	.co /* OUT */ (tco0_12),
	.d /* IN */ (td0_12),
	.clk /* IN */ (clk),
	.ci /* IN */ (tco0_11),
	.ld /* IN */ (tld0),
	.resl /* IN */ (presl0),
	.sys_clk(sys_clk) // Generated
);
j_dncnt t0_from_9_to_15_inst_4
(
	.q /* OUT */ (t0_13),
	.co /* OUT */ (tco0_13),
	.d /* IN */ (td0_13),
	.clk /* IN */ (clk),
	.ci /* IN */ (tco0_12),
	.ld /* IN */ (tld0),
	.resl /* IN */ (presl0),
	.sys_clk(sys_clk) // Generated
);
j_dncnt t0_from_9_to_15_inst_5
(
	.q /* OUT */ (t0_14),
	.co /* OUT */ (tco0_14),
	.d /* IN */ (td0_14),
	.clk /* IN */ (clk),
	.ci /* IN */ (tco0_13),
	.ld /* IN */ (tld0),
	.resl /* IN */ (presl0),
	.sys_clk(sys_clk) // Generated
);
j_dncnt t0_from_9_to_15_inst_6
(
	.q /* OUT */ (t0_15),
	.co /* OUT */ (tco0_15),
	.d /* IN */ (td0_15),
	.clk /* IN */ (clk),
	.ci /* IN */ (tco0_14),
	.ld /* IN */ (tld0),
	.resl /* IN */ (presl0),
	.sys_clk(sys_clk) // Generated
);

// JMISC.NET (135) - tu0[0-15] : dummy

// JMISC.NET (136) - tco0[7] : dummy

// JMISC.NET (137) - tco0[15] : dummy

// JMISC.NET (138) - tlac00 : nr8
assign tlac00 = ~(t0_0 | t0_1 | t0_2 | t0_3 | t0_4 | t0_5 | t0_6 | t0_7);

// JMISC.NET (139) - tlac01 : nr8
assign tlac01 = ~(t0_8 | t0_9 | t0_10 | t0_11 | t0_12 | t0_13 | t0_14 | t0_15);

// JMISC.NET (140) - tc08 : an2
assign tc08 = tlac00 & tpc016;

// JMISC.NET (141) - tc016 : an3
assign tc016 = tlac00 & tlac01 & tpc016;

// JMISC.NET (142) - tld0i : nr2
assign tld0i = ~(tc016 | pit2w);

// JMISC.NET (143) - tld0 : ivh
assign tld0 = ~tld0i;

// JMISC.NET (145) - dt0[0-15] : ts
assign ts_pe_119_a2_out = t0_0;
assign ts_pe_119_a2_oe = pit2r;
assign ts_pe_120_a2_out = t0_1;
assign ts_pe_120_a2_oe = pit2r;
assign ts_pe_121_a2_out = t0_2;
assign ts_pe_121_a2_oe = pit2r;
assign ts_pe_122_a2_out = t0_3;
assign ts_pe_122_a2_oe = pit2r;
assign ts_pe_123_a2_out = t0_4;
assign ts_pe_123_a2_oe = pit2r;
assign ts_pe_124_a2_out = t0_5;
assign ts_pe_124_a2_oe = pit2r;
assign ts_pe_125_a2_out = t0_6;
assign ts_pe_125_a2_oe = pit2r;
assign ts_pe_126_a2_out = t0_7;
assign ts_pe_126_a2_oe = pit2r;
assign ts_pe_127_a2_out = t0_8;
assign ts_pe_127_a2_oe = pit2r;
assign ts_pe_128_a2_out = t0_9;
assign ts_pe_128_a2_oe = pit2r;
assign ts_pe_129_a2_out = t0_10;
assign ts_pe_129_a2_oe = pit2r;
assign ts_pe_130_a2_out = t0_11;
assign ts_pe_130_a2_oe = pit2r;
assign ts_pe_131_a2_out = t0_12;
assign ts_pe_131_a2_oe = pit2r;
assign ts_pe_132_a2_out = t0_13;
assign ts_pe_132_a2_oe = pit2r;
assign ts_pe_133_a2_out = t0_14;
assign ts_pe_133_a2_oe = pit2r;
assign ts_pe_134_a2_out = t0_15;
assign ts_pe_134_a2_oe = pit2r;

// JMISC.NET (147) - tint[0] : nivu
assign tint_0_obuf = tc016;

// JMISC.NET (149) - tp0 : join
assign tp0[0] = tp0_0;
assign tp0[1] = tp0_1;
assign tp0[2] = tp0_2;
assign tp0[3] = tp0_3;
assign tp0[4] = tp0_4;
assign tp0[5] = tp0_5;
assign tp0[6] = tp0_6;
assign tp0[7] = tp0_7;
assign tp0[8] = tp0_8;
assign tp0[9] = tp0_9;
assign tp0[10] = tp0_10;
assign tp0[11] = tp0_11;
assign tp0[12] = tp0_12;
assign tp0[13] = tp0_13;
assign tp0[14] = tp0_14;
assign tp0[15] = tp0_15;

// JMISC.NET (150) - t0 : join
assign t0[0] = t0_0;
assign t0[1] = t0_1;
assign t0[2] = t0_2;
assign t0[3] = t0_3;
assign t0[4] = t0_4;
assign t0[5] = t0_5;
assign t0[6] = t0_6;
assign t0[7] = t0_7;
assign t0[8] = t0_8;
assign t0[9] = t0_9;
assign t0[10] = t0_10;
assign t0[11] = t0_11;
assign t0[12] = t0_12;
assign t0[13] = t0_13;
assign t0[14] = t0_14;
assign t0[15] = t0_15;

// JMISC.NET (151) - tpu0 : dummy

// JMISC.NET (152) - tu0 : dummy

// JMISC.NET (156) - pd1[0-15] : ldp1q
ldp1q pd1_from_0_to_15_inst_0
(
	.q /* OUT */ (pd1_0),
	.d /* IN */ (din_0),
	.g /* IN */ (pit3w),
	.sys_clk(sys_clk) // Generated
);
ldp1q pd1_from_0_to_15_inst_1
(
	.q /* OUT */ (pd1_1),
	.d /* IN */ (din_1),
	.g /* IN */ (pit3w),
	.sys_clk(sys_clk) // Generated
);
ldp1q pd1_from_0_to_15_inst_2
(
	.q /* OUT */ (pd1_2),
	.d /* IN */ (din_2),
	.g /* IN */ (pit3w),
	.sys_clk(sys_clk) // Generated
);
ldp1q pd1_from_0_to_15_inst_3
(
	.q /* OUT */ (pd1_3),
	.d /* IN */ (din_3),
	.g /* IN */ (pit3w),
	.sys_clk(sys_clk) // Generated
);
ldp1q pd1_from_0_to_15_inst_4
(
	.q /* OUT */ (pd1_4),
	.d /* IN */ (din_4),
	.g /* IN */ (pit3w),
	.sys_clk(sys_clk) // Generated
);
ldp1q pd1_from_0_to_15_inst_5
(
	.q /* OUT */ (pd1_5),
	.d /* IN */ (din_5),
	.g /* IN */ (pit3w),
	.sys_clk(sys_clk) // Generated
);
ldp1q pd1_from_0_to_15_inst_6
(
	.q /* OUT */ (pd1_6),
	.d /* IN */ (din_6),
	.g /* IN */ (pit3w),
	.sys_clk(sys_clk) // Generated
);
ldp1q pd1_from_0_to_15_inst_7
(
	.q /* OUT */ (pd1_7),
	.d /* IN */ (din_7),
	.g /* IN */ (pit3w),
	.sys_clk(sys_clk) // Generated
);
ldp1q pd1_from_0_to_15_inst_8
(
	.q /* OUT */ (pd1_8),
	.d /* IN */ (din_8),
	.g /* IN */ (pit3w),
	.sys_clk(sys_clk) // Generated
);
ldp1q pd1_from_0_to_15_inst_9
(
	.q /* OUT */ (pd1_9),
	.d /* IN */ (din_9),
	.g /* IN */ (pit3w),
	.sys_clk(sys_clk) // Generated
);
ldp1q pd1_from_0_to_15_inst_10
(
	.q /* OUT */ (pd1_10),
	.d /* IN */ (din_10),
	.g /* IN */ (pit3w),
	.sys_clk(sys_clk) // Generated
);
ldp1q pd1_from_0_to_15_inst_11
(
	.q /* OUT */ (pd1_11),
	.d /* IN */ (din_11),
	.g /* IN */ (pit3w),
	.sys_clk(sys_clk) // Generated
);
ldp1q pd1_from_0_to_15_inst_12
(
	.q /* OUT */ (pd1_12),
	.d /* IN */ (din_12),
	.g /* IN */ (pit3w),
	.sys_clk(sys_clk) // Generated
);
ldp1q pd1_from_0_to_15_inst_13
(
	.q /* OUT */ (pd1_13),
	.d /* IN */ (din_13),
	.g /* IN */ (pit3w),
	.sys_clk(sys_clk) // Generated
);
ldp1q pd1_from_0_to_15_inst_14
(
	.q /* OUT */ (pd1_14),
	.d /* IN */ (din_14),
	.g /* IN */ (pit3w),
	.sys_clk(sys_clk) // Generated
);
ldp1q pd1_from_0_to_15_inst_15
(
	.q /* OUT */ (pd1_15),
	.d /* IN */ (din_15),
	.g /* IN */ (pit3w),
	.sys_clk(sys_clk) // Generated
);

// JMISC.NET (157) - td1[0-15] : ldp1q
ldp1q td1_from_0_to_15_inst_0
(
	.q /* OUT */ (td1_0),
	.d /* IN */ (din_0),
	.g /* IN */ (pit4w),
	.sys_clk(sys_clk) // Generated
);
ldp1q td1_from_0_to_15_inst_1
(
	.q /* OUT */ (td1_1),
	.d /* IN */ (din_1),
	.g /* IN */ (pit4w),
	.sys_clk(sys_clk) // Generated
);
ldp1q td1_from_0_to_15_inst_2
(
	.q /* OUT */ (td1_2),
	.d /* IN */ (din_2),
	.g /* IN */ (pit4w),
	.sys_clk(sys_clk) // Generated
);
ldp1q td1_from_0_to_15_inst_3
(
	.q /* OUT */ (td1_3),
	.d /* IN */ (din_3),
	.g /* IN */ (pit4w),
	.sys_clk(sys_clk) // Generated
);
ldp1q td1_from_0_to_15_inst_4
(
	.q /* OUT */ (td1_4),
	.d /* IN */ (din_4),
	.g /* IN */ (pit4w),
	.sys_clk(sys_clk) // Generated
);
ldp1q td1_from_0_to_15_inst_5
(
	.q /* OUT */ (td1_5),
	.d /* IN */ (din_5),
	.g /* IN */ (pit4w),
	.sys_clk(sys_clk) // Generated
);
ldp1q td1_from_0_to_15_inst_6
(
	.q /* OUT */ (td1_6),
	.d /* IN */ (din_6),
	.g /* IN */ (pit4w),
	.sys_clk(sys_clk) // Generated
);
ldp1q td1_from_0_to_15_inst_7
(
	.q /* OUT */ (td1_7),
	.d /* IN */ (din_7),
	.g /* IN */ (pit4w),
	.sys_clk(sys_clk) // Generated
);
ldp1q td1_from_0_to_15_inst_8
(
	.q /* OUT */ (td1_8),
	.d /* IN */ (din_8),
	.g /* IN */ (pit4w),
	.sys_clk(sys_clk) // Generated
);
ldp1q td1_from_0_to_15_inst_9
(
	.q /* OUT */ (td1_9),
	.d /* IN */ (din_9),
	.g /* IN */ (pit4w),
	.sys_clk(sys_clk) // Generated
);
ldp1q td1_from_0_to_15_inst_10
(
	.q /* OUT */ (td1_10),
	.d /* IN */ (din_10),
	.g /* IN */ (pit4w),
	.sys_clk(sys_clk) // Generated
);
ldp1q td1_from_0_to_15_inst_11
(
	.q /* OUT */ (td1_11),
	.d /* IN */ (din_11),
	.g /* IN */ (pit4w),
	.sys_clk(sys_clk) // Generated
);
ldp1q td1_from_0_to_15_inst_12
(
	.q /* OUT */ (td1_12),
	.d /* IN */ (din_12),
	.g /* IN */ (pit4w),
	.sys_clk(sys_clk) // Generated
);
ldp1q td1_from_0_to_15_inst_13
(
	.q /* OUT */ (td1_13),
	.d /* IN */ (din_13),
	.g /* IN */ (pit4w),
	.sys_clk(sys_clk) // Generated
);
ldp1q td1_from_0_to_15_inst_14
(
	.q /* OUT */ (td1_14),
	.d /* IN */ (din_14),
	.g /* IN */ (pit4w),
	.sys_clk(sys_clk) // Generated
);
ldp1q td1_from_0_to_15_inst_15
(
	.q /* OUT */ (td1_15),
	.d /* IN */ (din_15),
	.g /* IN */ (pit4w),
	.sys_clk(sys_clk) // Generated
);

// JMISC.NET (161) - ten10 : or8
assign ten10 = pd1_0 | pd1_1 | pd1_2 | pd1_3 | pd1_4 | pd1_5 | pd1_6 | pd1_7;

// JMISC.NET (162) - ten11 : or8
assign ten11 = pd1_8 | pd1_9 | pd1_10 | pd1_11 | pd1_12 | pd1_13 | pd1_14 | pd1_15;

// JMISC.NET (163) - ten1 : or2
assign ten1 = ten10 | ten11;

// JMISC.NET (164) - presl1 : an2u
assign presl1 = ten1 & resetl;

// JMISC.NET (168) - tp1[0] : dncnt
j_dncnt tp1_index_0_inst
(
	.q /* OUT */ (tp1_0),
	.co /* OUT */ (tpco1_0),
	.d /* IN */ (pd1_0),
	.clk /* IN */ (clk),
	.ci /* IN */ (ten1),
	.ld /* IN */ (tpld1),
	.resl /* IN */ (presl1),
	.sys_clk(sys_clk) // Generated
);

// JMISC.NET (169) - tp1[1-7] : dncnt
j_dncnt tp1_from_1_to_7_inst_0
(
	.q /* OUT */ (tp1_1),
	.co /* OUT */ (tpco1_1),
	.d /* IN */ (pd1_1),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco1_0),
	.ld /* IN */ (tpld1),
	.resl /* IN */ (presl1),
	.sys_clk(sys_clk) // Generated
);
j_dncnt tp1_from_1_to_7_inst_1
(
	.q /* OUT */ (tp1_2),
	.co /* OUT */ (tpco1_2),
	.d /* IN */ (pd1_2),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco1_1),
	.ld /* IN */ (tpld1),
	.resl /* IN */ (presl1),
	.sys_clk(sys_clk) // Generated
);
j_dncnt tp1_from_1_to_7_inst_2
(
	.q /* OUT */ (tp1_3),
	.co /* OUT */ (tpco1_3),
	.d /* IN */ (pd1_3),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco1_2),
	.ld /* IN */ (tpld1),
	.resl /* IN */ (presl1),
	.sys_clk(sys_clk) // Generated
);
j_dncnt tp1_from_1_to_7_inst_3
(
	.q /* OUT */ (tp1_4),
	.co /* OUT */ (tpco1_4),
	.d /* IN */ (pd1_4),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco1_3),
	.ld /* IN */ (tpld1),
	.resl /* IN */ (presl1),
	.sys_clk(sys_clk) // Generated
);
j_dncnt tp1_from_1_to_7_inst_4
(
	.q /* OUT */ (tp1_5),
	.co /* OUT */ (tpco1_5),
	.d /* IN */ (pd1_5),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco1_4),
	.ld /* IN */ (tpld1),
	.resl /* IN */ (presl1),
	.sys_clk(sys_clk) // Generated
);
j_dncnt tp1_from_1_to_7_inst_5
(
	.q /* OUT */ (tp1_6),
	.co /* OUT */ (tpco1_6),
	.d /* IN */ (pd1_6),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco1_5),
	.ld /* IN */ (tpld1),
	.resl /* IN */ (presl1),
	.sys_clk(sys_clk) // Generated
);
j_dncnt tp1_from_1_to_7_inst_6
(
	.q /* OUT */ (tp1_7),
	.co /* OUT */ (tpco1_7),
	.d /* IN */ (pd1_7),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco1_6),
	.ld /* IN */ (tpld1),
	.resl /* IN */ (presl1),
	.sys_clk(sys_clk) // Generated
);

// JMISC.NET (170) - tp1[8] : dncnt
j_dncnt tp1_index_8_inst
(
	.q /* OUT */ (tp1_8),
	.co /* OUT */ (tpco1_8),
	.d /* IN */ (pd1_8),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpc18),
	.ld /* IN */ (tpld1),
	.resl /* IN */ (presl1),
	.sys_clk(sys_clk) // Generated
);

// JMISC.NET (171) - tp1[9-15] : dncnt
j_dncnt tp1_from_9_to_15_inst_0
(
	.q /* OUT */ (tp1_9),
	.co /* OUT */ (tpco1_9),
	.d /* IN */ (pd1_9),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco1_8),
	.ld /* IN */ (tpld1),
	.resl /* IN */ (presl1),
	.sys_clk(sys_clk) // Generated
);
j_dncnt tp1_from_9_to_15_inst_1
(
	.q /* OUT */ (tp1_10),
	.co /* OUT */ (tpco1_10),
	.d /* IN */ (pd1_10),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco1_9),
	.ld /* IN */ (tpld1),
	.resl /* IN */ (presl1),
	.sys_clk(sys_clk) // Generated
);
j_dncnt tp1_from_9_to_15_inst_2
(
	.q /* OUT */ (tp1_11),
	.co /* OUT */ (tpco1_11),
	.d /* IN */ (pd1_11),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco1_10),
	.ld /* IN */ (tpld1),
	.resl /* IN */ (presl1),
	.sys_clk(sys_clk) // Generated
);
j_dncnt tp1_from_9_to_15_inst_3
(
	.q /* OUT */ (tp1_12),
	.co /* OUT */ (tpco1_12),
	.d /* IN */ (pd1_12),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco1_11),
	.ld /* IN */ (tpld1),
	.resl /* IN */ (presl1),
	.sys_clk(sys_clk) // Generated
);
j_dncnt tp1_from_9_to_15_inst_4
(
	.q /* OUT */ (tp1_13),
	.co /* OUT */ (tpco1_13),
	.d /* IN */ (pd1_13),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco1_12),
	.ld /* IN */ (tpld1),
	.resl /* IN */ (presl1),
	.sys_clk(sys_clk) // Generated
);
j_dncnt tp1_from_9_to_15_inst_5
(
	.q /* OUT */ (tp1_14),
	.co /* OUT */ (tpco1_14),
	.d /* IN */ (pd1_14),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco1_13),
	.ld /* IN */ (tpld1),
	.resl /* IN */ (presl1),
	.sys_clk(sys_clk) // Generated
);
j_dncnt tp1_from_9_to_15_inst_6
(
	.q /* OUT */ (tp1_15),
	.co /* OUT */ (tpco1_15),
	.d /* IN */ (pd1_15),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco1_14),
	.ld /* IN */ (tpld1),
	.resl /* IN */ (presl1),
	.sys_clk(sys_clk) // Generated
);

// JMISC.NET (172) - tpu1[0-15] : dummy

// JMISC.NET (173) - tpco1[7] : dummy

// JMISC.NET (174) - tpco1[15] : dummy

// JMISC.NET (175) - tplac10 : nr8
assign tplac10 = ~(tp1_0 | tp1_1 | tp1_2 | tp1_3 | tp1_4 | tp1_5 | tp1_6 | tp1_7);

// JMISC.NET (176) - tplac11 : nr8
assign tplac11 = ~(tp1_8 | tp1_9 | tp1_10 | tp1_11 | tp1_12 | tp1_13 | tp1_14 | tp1_15);

// JMISC.NET (177) - tpc18 : an2
assign tpc18 = tplac10 & ten1;

// JMISC.NET (178) - tpc116 : an3
assign tpc116 = tplac10 & tplac11 & ten1;

// JMISC.NET (180) - tpld1i : nr2
assign tpld1i = ~(tpc116 | pit3w);

// JMISC.NET (181) - tpld1 : ivh
assign tpld1 = ~tpld1i;

// JMISC.NET (183) - dtp1[0-15] : ts
assign ts_pe_119_a3_out = tp1_0;
assign ts_pe_119_a3_oe = pit3r;
assign ts_pe_120_a3_out = tp1_1;
assign ts_pe_120_a3_oe = pit3r;
assign ts_pe_121_a3_out = tp1_2;
assign ts_pe_121_a3_oe = pit3r;
assign ts_pe_122_a3_out = tp1_3;
assign ts_pe_122_a3_oe = pit3r;
assign ts_pe_123_a3_out = tp1_4;
assign ts_pe_123_a3_oe = pit3r;
assign ts_pe_124_a3_out = tp1_5;
assign ts_pe_124_a3_oe = pit3r;
assign ts_pe_125_a3_out = tp1_6;
assign ts_pe_125_a3_oe = pit3r;
assign ts_pe_126_a3_out = tp1_7;
assign ts_pe_126_a3_oe = pit3r;
assign ts_pe_127_a3_out = tp1_8;
assign ts_pe_127_a3_oe = pit3r;
assign ts_pe_128_a3_out = tp1_9;
assign ts_pe_128_a3_oe = pit3r;
assign ts_pe_129_a3_out = tp1_10;
assign ts_pe_129_a3_oe = pit3r;
assign ts_pe_130_a3_out = tp1_11;
assign ts_pe_130_a3_oe = pit3r;
assign ts_pe_131_a3_out = tp1_12;
assign ts_pe_131_a3_oe = pit3r;
assign ts_pe_132_a3_out = tp1_13;
assign ts_pe_132_a3_oe = pit3r;
assign ts_pe_133_a3_out = tp1_14;
assign ts_pe_133_a3_oe = pit3r;
assign ts_pe_134_a3_out = tp1_15;
assign ts_pe_134_a3_oe = pit3r;

// JMISC.NET (187) - t1[0] : dncnt
j_dncnt t1_index_0_inst
(
	.q /* OUT */ (t1_0),
	.co /* OUT */ (tco1_0),
	.d /* IN */ (td1_0),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpc116),
	.ld /* IN */ (tld1),
	.resl /* IN */ (presl1),
	.sys_clk(sys_clk) // Generated
);

// JMISC.NET (188) - t1[1-7] : dncnt
j_dncnt t1_from_1_to_7_inst_0
(
	.q /* OUT */ (t1_1),
	.co /* OUT */ (tco1_1),
	.d /* IN */ (td1_1),
	.clk /* IN */ (clk),
	.ci /* IN */ (tco1_0),
	.ld /* IN */ (tld1),
	.resl /* IN */ (presl1),
	.sys_clk(sys_clk) // Generated
);
j_dncnt t1_from_1_to_7_inst_1
(
	.q /* OUT */ (t1_2),
	.co /* OUT */ (tco1_2),
	.d /* IN */ (td1_2),
	.clk /* IN */ (clk),
	.ci /* IN */ (tco1_1),
	.ld /* IN */ (tld1),
	.resl /* IN */ (presl1),
	.sys_clk(sys_clk) // Generated
);
j_dncnt t1_from_1_to_7_inst_2
(
	.q /* OUT */ (t1_3),
	.co /* OUT */ (tco1_3),
	.d /* IN */ (td1_3),
	.clk /* IN */ (clk),
	.ci /* IN */ (tco1_2),
	.ld /* IN */ (tld1),
	.resl /* IN */ (presl1),
	.sys_clk(sys_clk) // Generated
);
j_dncnt t1_from_1_to_7_inst_3
(
	.q /* OUT */ (t1_4),
	.co /* OUT */ (tco1_4),
	.d /* IN */ (td1_4),
	.clk /* IN */ (clk),
	.ci /* IN */ (tco1_3),
	.ld /* IN */ (tld1),
	.resl /* IN */ (presl1),
	.sys_clk(sys_clk) // Generated
);
j_dncnt t1_from_1_to_7_inst_4
(
	.q /* OUT */ (t1_5),
	.co /* OUT */ (tco1_5),
	.d /* IN */ (td1_5),
	.clk /* IN */ (clk),
	.ci /* IN */ (tco1_4),
	.ld /* IN */ (tld1),
	.resl /* IN */ (presl1),
	.sys_clk(sys_clk) // Generated
);
j_dncnt t1_from_1_to_7_inst_5
(
	.q /* OUT */ (t1_6),
	.co /* OUT */ (tco1_6),
	.d /* IN */ (td1_6),
	.clk /* IN */ (clk),
	.ci /* IN */ (tco1_5),
	.ld /* IN */ (tld1),
	.resl /* IN */ (presl1),
	.sys_clk(sys_clk) // Generated
);
j_dncnt t1_from_1_to_7_inst_6
(
	.q /* OUT */ (t1_7),
	.co /* OUT */ (tco1_7),
	.d /* IN */ (td1_7),
	.clk /* IN */ (clk),
	.ci /* IN */ (tco1_6),
	.ld /* IN */ (tld1),
	.resl /* IN */ (presl1),
	.sys_clk(sys_clk) // Generated
);

// JMISC.NET (189) - t1[8] : dncnt
j_dncnt t1_index_8_inst
(
	.q /* OUT */ (t1_8),
	.co /* OUT */ (tco1_8),
	.d /* IN */ (td1_8),
	.clk /* IN */ (clk),
	.ci /* IN */ (tc18),
	.ld /* IN */ (tld1),
	.resl /* IN */ (presl1),
	.sys_clk(sys_clk) // Generated
);

// JMISC.NET (190) - t1[9-15] : dncnt
j_dncnt t1_from_9_to_15_inst_0
(
	.q /* OUT */ (t1_9),
	.co /* OUT */ (tco1_9),
	.d /* IN */ (td1_9),
	.clk /* IN */ (clk),
	.ci /* IN */ (tco1_8),
	.ld /* IN */ (tld1),
	.resl /* IN */ (presl1),
	.sys_clk(sys_clk) // Generated
);
j_dncnt t1_from_9_to_15_inst_1
(
	.q /* OUT */ (t1_10),
	.co /* OUT */ (tco1_10),
	.d /* IN */ (td1_10),
	.clk /* IN */ (clk),
	.ci /* IN */ (tco1_9),
	.ld /* IN */ (tld1),
	.resl /* IN */ (presl1),
	.sys_clk(sys_clk) // Generated
);
j_dncnt t1_from_9_to_15_inst_2
(
	.q /* OUT */ (t1_11),
	.co /* OUT */ (tco1_11),
	.d /* IN */ (td1_11),
	.clk /* IN */ (clk),
	.ci /* IN */ (tco1_10),
	.ld /* IN */ (tld1),
	.resl /* IN */ (presl1),
	.sys_clk(sys_clk) // Generated
);
j_dncnt t1_from_9_to_15_inst_3
(
	.q /* OUT */ (t1_12),
	.co /* OUT */ (tco1_12),
	.d /* IN */ (td1_12),
	.clk /* IN */ (clk),
	.ci /* IN */ (tco1_11),
	.ld /* IN */ (tld1),
	.resl /* IN */ (presl1),
	.sys_clk(sys_clk) // Generated
);
j_dncnt t1_from_9_to_15_inst_4
(
	.q /* OUT */ (t1_13),
	.co /* OUT */ (tco1_13),
	.d /* IN */ (td1_13),
	.clk /* IN */ (clk),
	.ci /* IN */ (tco1_12),
	.ld /* IN */ (tld1),
	.resl /* IN */ (presl1),
	.sys_clk(sys_clk) // Generated
);
j_dncnt t1_from_9_to_15_inst_5
(
	.q /* OUT */ (t1_14),
	.co /* OUT */ (tco1_14),
	.d /* IN */ (td1_14),
	.clk /* IN */ (clk),
	.ci /* IN */ (tco1_13),
	.ld /* IN */ (tld1),
	.resl /* IN */ (presl1),
	.sys_clk(sys_clk) // Generated
);
j_dncnt t1_from_9_to_15_inst_6
(
	.q /* OUT */ (t1_15),
	.co /* OUT */ (tco1_15),
	.d /* IN */ (td1_15),
	.clk /* IN */ (clk),
	.ci /* IN */ (tco1_14),
	.ld /* IN */ (tld1),
	.resl /* IN */ (presl1),
	.sys_clk(sys_clk) // Generated
);

// JMISC.NET (191) - tu1[0-15] : dummy

// JMISC.NET (192) - tco1[7] : dummy

// JMISC.NET (193) - tco1[15] : dummy

// JMISC.NET (194) - tlac10 : nr8
assign tlac10 = ~(t1_0 | t1_1 | t1_2 | t1_3 | t1_4 | t1_5 | t1_6 | t1_7);

// JMISC.NET (195) - tlac11 : nr8
assign tlac11 = ~(t1_8 | t1_9 | t1_10 | t1_11 | t1_12 | t1_13 | t1_14 | t1_15);

// JMISC.NET (196) - tc18 : an2
assign tc18 = tlac10 & tpc116;

// JMISC.NET (197) - tc116 : an3
assign tc116 = tlac10 & tlac11 & tpc116;

// JMISC.NET (198) - tld1i : nr2
assign tld1i = ~(tc116 | pit4w);

// JMISC.NET (199) - tld1 : ivh
assign tld1 = ~tld1i;

// JMISC.NET (201) - dt1[0-15] : ts
assign ts_pe_119_a4_out = t1_0;
assign ts_pe_119_a4_oe = pit4r;
assign ts_pe_120_a4_out = t1_1;
assign ts_pe_120_a4_oe = pit4r;
assign ts_pe_121_a4_out = t1_2;
assign ts_pe_121_a4_oe = pit4r;
assign ts_pe_122_a4_out = t1_3;
assign ts_pe_122_a4_oe = pit4r;
assign ts_pe_123_a4_out = t1_4;
assign ts_pe_123_a4_oe = pit4r;
assign ts_pe_124_a4_out = t1_5;
assign ts_pe_124_a4_oe = pit4r;
assign ts_pe_125_a4_out = t1_6;
assign ts_pe_125_a4_oe = pit4r;
assign ts_pe_126_a4_out = t1_7;
assign ts_pe_126_a4_oe = pit4r;
assign ts_pe_127_a4_out = t1_8;
assign ts_pe_127_a4_oe = pit4r;
assign ts_pe_128_a4_out = t1_9;
assign ts_pe_128_a4_oe = pit4r;
assign ts_pe_129_a4_out = t1_10;
assign ts_pe_129_a4_oe = pit4r;
assign ts_pe_130_a4_out = t1_11;
assign ts_pe_130_a4_oe = pit4r;
assign ts_pe_131_a4_out = t1_12;
assign ts_pe_131_a4_oe = pit4r;
assign ts_pe_132_a4_out = t1_13;
assign ts_pe_132_a4_oe = pit4r;
assign ts_pe_133_a4_out = t1_14;
assign ts_pe_133_a4_oe = pit4r;
assign ts_pe_134_a4_out = t1_15;
assign ts_pe_134_a4_oe = pit4r;

// JMISC.NET (203) - tint[1] : niv
assign tint_1_obuf = tc116;

// JMISC.NET (205) - tp1 : join
assign tp1[0] = tp1_0;
assign tp1[1] = tp1_1;
assign tp1[2] = tp1_2;
assign tp1[3] = tp1_3;
assign tp1[4] = tp1_4;
assign tp1[5] = tp1_5;
assign tp1[6] = tp1_6;
assign tp1[7] = tp1_7;
assign tp1[8] = tp1_8;
assign tp1[9] = tp1_9;
assign tp1[10] = tp1_10;
assign tp1[11] = tp1_11;
assign tp1[12] = tp1_12;
assign tp1[13] = tp1_13;
assign tp1[14] = tp1_14;
assign tp1[15] = tp1_15;

// JMISC.NET (206) - t1 : join
assign t1[0] = t1_0;
assign t1[1] = t1_1;
assign t1[2] = t1_2;
assign t1[3] = t1_3;
assign t1[4] = t1_4;
assign t1[5] = t1_5;
assign t1[6] = t1_6;
assign t1[7] = t1_7;
assign t1[8] = t1_8;
assign t1[9] = t1_9;
assign t1[10] = t1_10;
assign t1[11] = t1_11;
assign t1[12] = t1_12;
assign t1[13] = t1_13;
assign t1[14] = t1_14;
assign t1[15] = t1_15;

// JMISC.NET (207) - tpu1 : dummy

// JMISC.NET (208) - tu1 : dummy

// JMISC.NET (212) - ndtest : ldp2q
ldp2q ndtest_inst
(
	.q /* OUT */ (ndtest),
	.d /* IN */ (din_0),
	.g /* IN */ (test1w),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// JMISC.NET (216) - joyen : ldp2q
ldp2q joyen_inst
(
	.q /* OUT */ (joyen),
	.d /* IN */ (din_15),
	.g /* IN */ (joy1w),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// JMISC.NET (217) - joy1w : iv
assign joy1w = ~joy1wl;

// JMISC.NET (218) - joyenl : iv
assign joyenl = ~joyen;

// --- Compiler-generated PE for BUS dr[0]
assign dr_0_out = (ts_pe_119_a0_oe & ts_pe_119_a0_out ) | (ts_pe_119_a1_oe & ts_pe_119_a1_out ) | (ts_pe_119_a2_oe & ts_pe_119_a2_out ) | (ts_pe_119_a3_oe & ts_pe_119_a3_out ) | (ts_pe_119_a4_oe & ts_pe_119_a4_out ) | 1'b0;
assign dr_0_oe = ts_pe_119_a0_oe | ts_pe_119_a1_oe | ts_pe_119_a2_oe | ts_pe_119_a3_oe | ts_pe_119_a4_oe;
assign ts_pe_119_a0_in = dr_0_in;
assign ts_pe_119_a1_in = dr_0_in;
assign ts_pe_119_a2_in = dr_0_in;
assign ts_pe_119_a3_in = dr_0_in;
assign ts_pe_119_a4_in = dr_0_in;

// --- Compiler-generated PE for BUS dr[1]
assign dr_1_out = (ts_pe_120_a0_oe & ts_pe_120_a0_out ) | (ts_pe_120_a1_oe & ts_pe_120_a1_out ) | (ts_pe_120_a2_oe & ts_pe_120_a2_out ) | (ts_pe_120_a3_oe & ts_pe_120_a3_out ) | (ts_pe_120_a4_oe & ts_pe_120_a4_out ) | 1'b0;
assign dr_1_oe = ts_pe_120_a0_oe | ts_pe_120_a1_oe | ts_pe_120_a2_oe | ts_pe_120_a3_oe | ts_pe_120_a4_oe;
assign ts_pe_120_a0_in = dr_1_in;
assign ts_pe_120_a1_in = dr_1_in;
assign ts_pe_120_a2_in = dr_1_in;
assign ts_pe_120_a3_in = dr_1_in;
assign ts_pe_120_a4_in = dr_1_in;

// --- Compiler-generated PE for BUS dr[2]
assign dr_2_out = (ts_pe_121_a0_oe & ts_pe_121_a0_out ) | (ts_pe_121_a1_oe & ts_pe_121_a1_out ) | (ts_pe_121_a2_oe & ts_pe_121_a2_out ) | (ts_pe_121_a3_oe & ts_pe_121_a3_out ) | (ts_pe_121_a4_oe & ts_pe_121_a4_out ) | 1'b0;
assign dr_2_oe = ts_pe_121_a0_oe | ts_pe_121_a1_oe | ts_pe_121_a2_oe | ts_pe_121_a3_oe | ts_pe_121_a4_oe;
assign ts_pe_121_a0_in = dr_2_in;
assign ts_pe_121_a1_in = dr_2_in;
assign ts_pe_121_a2_in = dr_2_in;
assign ts_pe_121_a3_in = dr_2_in;
assign ts_pe_121_a4_in = dr_2_in;

// --- Compiler-generated PE for BUS dr[3]
assign dr_3_out = (ts_pe_122_a0_oe & ts_pe_122_a0_out ) | (ts_pe_122_a1_oe & ts_pe_122_a1_out ) | (ts_pe_122_a2_oe & ts_pe_122_a2_out ) | (ts_pe_122_a3_oe & ts_pe_122_a3_out ) | (ts_pe_122_a4_oe & ts_pe_122_a4_out ) | 1'b0;
assign dr_3_oe = ts_pe_122_a0_oe | ts_pe_122_a1_oe | ts_pe_122_a2_oe | ts_pe_122_a3_oe | ts_pe_122_a4_oe;
assign ts_pe_122_a0_in = dr_3_in;
assign ts_pe_122_a1_in = dr_3_in;
assign ts_pe_122_a2_in = dr_3_in;
assign ts_pe_122_a3_in = dr_3_in;
assign ts_pe_122_a4_in = dr_3_in;

// --- Compiler-generated PE for BUS dr[4]
assign dr_4_out = (ts_pe_123_a0_oe & ts_pe_123_a0_out ) | (ts_pe_123_a1_oe & ts_pe_123_a1_out ) | (ts_pe_123_a2_oe & ts_pe_123_a2_out ) | (ts_pe_123_a3_oe & ts_pe_123_a3_out ) | (ts_pe_123_a4_oe & ts_pe_123_a4_out ) | 1'b0;
assign dr_4_oe = ts_pe_123_a0_oe | ts_pe_123_a1_oe | ts_pe_123_a2_oe | ts_pe_123_a3_oe | ts_pe_123_a4_oe;
assign ts_pe_123_a0_in = dr_4_in;
assign ts_pe_123_a1_in = dr_4_in;
assign ts_pe_123_a2_in = dr_4_in;
assign ts_pe_123_a3_in = dr_4_in;
assign ts_pe_123_a4_in = dr_4_in;

// --- Compiler-generated PE for BUS dr[5]
assign dr_5_out = (ts_pe_124_a0_oe & ts_pe_124_a0_out ) | (ts_pe_124_a1_oe & ts_pe_124_a1_out ) | (ts_pe_124_a2_oe & ts_pe_124_a2_out ) | (ts_pe_124_a3_oe & ts_pe_124_a3_out ) | (ts_pe_124_a4_oe & ts_pe_124_a4_out ) | 1'b0;
assign dr_5_oe = ts_pe_124_a0_oe | ts_pe_124_a1_oe | ts_pe_124_a2_oe | ts_pe_124_a3_oe | ts_pe_124_a4_oe;
assign ts_pe_124_a0_in = dr_5_in;
assign ts_pe_124_a1_in = dr_5_in;
assign ts_pe_124_a2_in = dr_5_in;
assign ts_pe_124_a3_in = dr_5_in;
assign ts_pe_124_a4_in = dr_5_in;

// --- Compiler-generated PE for BUS dr[6]
assign dr_6_out = (ts_pe_125_a0_oe & ts_pe_125_a0_out ) | (ts_pe_125_a1_oe & ts_pe_125_a1_out ) | (ts_pe_125_a2_oe & ts_pe_125_a2_out ) | (ts_pe_125_a3_oe & ts_pe_125_a3_out ) | (ts_pe_125_a4_oe & ts_pe_125_a4_out ) | 1'b0;
assign dr_6_oe = ts_pe_125_a0_oe | ts_pe_125_a1_oe | ts_pe_125_a2_oe | ts_pe_125_a3_oe | ts_pe_125_a4_oe;
assign ts_pe_125_a0_in = dr_6_in;
assign ts_pe_125_a1_in = dr_6_in;
assign ts_pe_125_a2_in = dr_6_in;
assign ts_pe_125_a3_in = dr_6_in;
assign ts_pe_125_a4_in = dr_6_in;

// --- Compiler-generated PE for BUS dr[7]
assign dr_7_out = (ts_pe_126_a0_oe & ts_pe_126_a0_out ) | (ts_pe_126_a1_oe & ts_pe_126_a1_out ) | (ts_pe_126_a2_oe & ts_pe_126_a2_out ) | (ts_pe_126_a3_oe & ts_pe_126_a3_out ) | (ts_pe_126_a4_oe & ts_pe_126_a4_out ) | 1'b0;
assign dr_7_oe = ts_pe_126_a0_oe | ts_pe_126_a1_oe | ts_pe_126_a2_oe | ts_pe_126_a3_oe | ts_pe_126_a4_oe;
assign ts_pe_126_a0_in = dr_7_in;
assign ts_pe_126_a1_in = dr_7_in;
assign ts_pe_126_a2_in = dr_7_in;
assign ts_pe_126_a3_in = dr_7_in;
assign ts_pe_126_a4_in = dr_7_in;

// --- Compiler-generated PE for BUS dr[8]
assign dr_8_out = (ts_pe_127_a0_oe & ts_pe_127_a0_out ) | (ts_pe_127_a1_oe & ts_pe_127_a1_out ) | (ts_pe_127_a2_oe & ts_pe_127_a2_out ) | (ts_pe_127_a3_oe & ts_pe_127_a3_out ) | (ts_pe_127_a4_oe & ts_pe_127_a4_out ) | 1'b0;
assign dr_8_oe = ts_pe_127_a0_oe | ts_pe_127_a1_oe | ts_pe_127_a2_oe | ts_pe_127_a3_oe | ts_pe_127_a4_oe;
assign ts_pe_127_a0_in = dr_8_in;
assign ts_pe_127_a1_in = dr_8_in;
assign ts_pe_127_a2_in = dr_8_in;
assign ts_pe_127_a3_in = dr_8_in;
assign ts_pe_127_a4_in = dr_8_in;

// --- Compiler-generated PE for BUS dr[9]
assign dr_9_out = (ts_pe_128_a0_oe & ts_pe_128_a0_out ) | (ts_pe_128_a1_oe & ts_pe_128_a1_out ) | (ts_pe_128_a2_oe & ts_pe_128_a2_out ) | (ts_pe_128_a3_oe & ts_pe_128_a3_out ) | (ts_pe_128_a4_oe & ts_pe_128_a4_out ) | 1'b0;
assign dr_9_oe = ts_pe_128_a0_oe | ts_pe_128_a1_oe | ts_pe_128_a2_oe | ts_pe_128_a3_oe | ts_pe_128_a4_oe;
assign ts_pe_128_a0_in = dr_9_in;
assign ts_pe_128_a1_in = dr_9_in;
assign ts_pe_128_a2_in = dr_9_in;
assign ts_pe_128_a3_in = dr_9_in;
assign ts_pe_128_a4_in = dr_9_in;

// --- Compiler-generated PE for BUS dr[10]
assign dr_10_out = (ts_pe_129_a0_oe & ts_pe_129_a0_out ) | (ts_pe_129_a1_oe & ts_pe_129_a1_out ) | (ts_pe_129_a2_oe & ts_pe_129_a2_out ) | (ts_pe_129_a3_oe & ts_pe_129_a3_out ) | (ts_pe_129_a4_oe & ts_pe_129_a4_out ) | 1'b0;
assign dr_10_oe = ts_pe_129_a0_oe | ts_pe_129_a1_oe | ts_pe_129_a2_oe | ts_pe_129_a3_oe | ts_pe_129_a4_oe;
assign ts_pe_129_a0_in = dr_10_in;
assign ts_pe_129_a1_in = dr_10_in;
assign ts_pe_129_a2_in = dr_10_in;
assign ts_pe_129_a3_in = dr_10_in;
assign ts_pe_129_a4_in = dr_10_in;

// --- Compiler-generated PE for BUS dr[11]
assign dr_11_out = (ts_pe_130_a0_oe & ts_pe_130_a0_out ) | (ts_pe_130_a1_oe & ts_pe_130_a1_out ) | (ts_pe_130_a2_oe & ts_pe_130_a2_out ) | (ts_pe_130_a3_oe & ts_pe_130_a3_out ) | (ts_pe_130_a4_oe & ts_pe_130_a4_out ) | 1'b0;
assign dr_11_oe = ts_pe_130_a0_oe | ts_pe_130_a1_oe | ts_pe_130_a2_oe | ts_pe_130_a3_oe | ts_pe_130_a4_oe;
assign ts_pe_130_a0_in = dr_11_in;
assign ts_pe_130_a1_in = dr_11_in;
assign ts_pe_130_a2_in = dr_11_in;
assign ts_pe_130_a3_in = dr_11_in;
assign ts_pe_130_a4_in = dr_11_in;

// --- Compiler-generated PE for BUS dr[12]
assign dr_12_out = (ts_pe_131_a0_oe & ts_pe_131_a0_out ) | (ts_pe_131_a1_oe & ts_pe_131_a1_out ) | (ts_pe_131_a2_oe & ts_pe_131_a2_out ) | (ts_pe_131_a3_oe & ts_pe_131_a3_out ) | (ts_pe_131_a4_oe & ts_pe_131_a4_out ) | 1'b0;
assign dr_12_oe = ts_pe_131_a0_oe | ts_pe_131_a1_oe | ts_pe_131_a2_oe | ts_pe_131_a3_oe | ts_pe_131_a4_oe;
assign ts_pe_131_a0_in = dr_12_in;
assign ts_pe_131_a1_in = dr_12_in;
assign ts_pe_131_a2_in = dr_12_in;
assign ts_pe_131_a3_in = dr_12_in;
assign ts_pe_131_a4_in = dr_12_in;

// --- Compiler-generated PE for BUS dr[13]
assign dr_13_out = (ts_pe_132_a0_oe & ts_pe_132_a0_out ) | (ts_pe_132_a1_oe & ts_pe_132_a1_out ) | (ts_pe_132_a2_oe & ts_pe_132_a2_out ) | (ts_pe_132_a3_oe & ts_pe_132_a3_out ) | (ts_pe_132_a4_oe & ts_pe_132_a4_out ) | 1'b0;
assign dr_13_oe = ts_pe_132_a0_oe | ts_pe_132_a1_oe | ts_pe_132_a2_oe | ts_pe_132_a3_oe | ts_pe_132_a4_oe;
assign ts_pe_132_a0_in = dr_13_in;
assign ts_pe_132_a1_in = dr_13_in;
assign ts_pe_132_a2_in = dr_13_in;
assign ts_pe_132_a3_in = dr_13_in;
assign ts_pe_132_a4_in = dr_13_in;

// --- Compiler-generated PE for BUS dr[14]
assign dr_14_out = (ts_pe_133_a0_oe & ts_pe_133_a0_out ) | (ts_pe_133_a1_oe & ts_pe_133_a1_out ) | (ts_pe_133_a2_oe & ts_pe_133_a2_out ) | (ts_pe_133_a3_oe & ts_pe_133_a3_out ) | (ts_pe_133_a4_oe & ts_pe_133_a4_out ) | 1'b0;
assign dr_14_oe = ts_pe_133_a0_oe | ts_pe_133_a1_oe | ts_pe_133_a2_oe | ts_pe_133_a3_oe | ts_pe_133_a4_oe;
assign ts_pe_133_a0_in = dr_14_in;
assign ts_pe_133_a1_in = dr_14_in;
assign ts_pe_133_a2_in = dr_14_in;
assign ts_pe_133_a3_in = dr_14_in;
assign ts_pe_133_a4_in = dr_14_in;

// --- Compiler-generated PE for BUS dr[15]
assign dr_15_out = (ts_pe_134_a0_oe & ts_pe_134_a0_out ) | (ts_pe_134_a1_oe & ts_pe_134_a1_out ) | (ts_pe_134_a2_oe & ts_pe_134_a2_out ) | (ts_pe_134_a3_oe & ts_pe_134_a3_out ) | (ts_pe_134_a4_oe & ts_pe_134_a4_out ) | 1'b0;
assign dr_15_oe = ts_pe_134_a0_oe | ts_pe_134_a1_oe | ts_pe_134_a2_oe | ts_pe_134_a3_oe | ts_pe_134_a4_oe;
assign ts_pe_134_a0_in = dr_15_in;
assign ts_pe_134_a1_in = dr_15_in;
assign ts_pe_134_a2_in = dr_15_in;
assign ts_pe_134_a3_in = dr_15_in;
assign ts_pe_134_a4_in = dr_15_in;
endmodule
/* verilator lint_on LITENDIAN */
