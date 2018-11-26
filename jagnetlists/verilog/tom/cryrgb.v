/* verilator lint_off LITENDIAN */
`include "defs.v"

module cryrgb
(
	output r_0,
	output r_1,
	output r_2,
	output r_3,
	output r_4,
	output r_5,
	output r_6,
	output r_7,
	output g_0,
	output g_1,
	output g_2,
	output g_3,
	output g_4,
	output g_5,
	output g_6,
	output g_7,
	output b_0,
	output b_1,
	output b_2,
	output b_3,
	output b_4,
	output b_5,
	output b_6,
	output b_7,
	input cry_0,
	input cry_1,
	input cry_2,
	input cry_3,
	input cry_4,
	input cry_5,
	input cry_6,
	input cry_7,
	input cry_8,
	input cry_9,
	input cry_10,
	input cry_11,
	input cry_12,
	input cry_13,
	input cry_14,
	input cry_15,
	input vclk,
	input mptest,
	input rgb,
	input ppd,
	input sys_clk // Generated
);
wire [0:7] i;
wire [0:7] c;
wire [0:7] r1;
wire [0:7] g1;
wire [0:7] b1;
wire [0:7] r2;
wire [0:7] g2;
wire [0:7] b2;
wire [0:7] i2;
wire [0:7] rt;
wire [0:7] gt;
wire [0:7] bt;
wire [0:9] r2a;
wire [0:9] g2a;
wire [0:9] b2a;
wire [0:9] i2a;
wire [0:19] r3;
wire [0:19] g3;
wire [0:19] b3;
wire rgbtsti;
wire rgbtst;
wire rgbdi;
wire rgbd;
wire gnd;
wire r3b_0;
wire r3b_1;
wire r3b_2;
wire r3b_3;
wire r3b_4;
wire r3b_5;
wire r3b_6;
wire r3b_7;
wire b3b_0;
wire b3b_1;
wire b3b_2;
wire b3b_3;
wire b3b_4;
wire b3b_5;
wire b3b_6;
wire b3b_7;
wire g3b_0;
wire g3b_1;
wire g3b_2;
wire g3b_3;
wire g3b_4;
wire g3b_5;
wire g3b_6;
wire g3b_7;

// PIX.NET (184) - i : join
assign i[0] = cry_0;
assign i[1] = cry_1;
assign i[2] = cry_2;
assign i[3] = cry_3;
assign i[4] = cry_4;
assign i[5] = cry_5;
assign i[6] = cry_6;
assign i[7] = cry_7;

// PIX.NET (185) - c : join
assign c[0] = cry_8;
assign c[1] = cry_9;
assign c[2] = cry_10;
assign c[3] = cry_11;
assign c[4] = cry_12;
assign c[5] = cry_13;
assign c[6] = cry_14;
assign c[7] = cry_15;

// PIX.NET (201) - red : ra8008a
ra8008a red_inst
(
	.z /* OUT */ ({r1[0],r1[1],r1[2],r1[3],r1[4],r1[5],r1[6],r1[7]}),
	.clk /* IN */ (vclk),
	.a /* IN */ ({c[0],c[1],c[2],c[3],c[4],c[5],c[6],c[7]}),
	.sys_clk(sys_clk) // Generated
);

// PIX.NET (202) - green : ra8008b
ra8008b green_inst
(
	.z /* OUT */ ({g1[0],g1[1],g1[2],g1[3],g1[4],g1[5],g1[6],g1[7]}),
	.clk /* IN */ (vclk),
	.a /* IN */ ({c[0],c[1],c[2],c[3],c[4],c[5],c[6],c[7]}),
	.sys_clk(sys_clk) // Generated
);

// PIX.NET (203) - blue : ra8008c
ra8008c blue_inst
(
	.z /* OUT */ ({b1[0],b1[1],b1[2],b1[3],b1[4],b1[5],b1[6],b1[7]}),
	.clk /* IN */ (vclk),
	.a /* IN */ ({c[0],c[1],c[2],c[3],c[4],c[5],c[6],c[7]}),
	.sys_clk(sys_clk) // Generated
);

// PIX.NET (208) - rgbtsti : or2
assign rgbtsti = rgb | mptest;

// PIX.NET (209) - rgbtst : nivh
assign rgbtst = rgbtsti;

// PIX.NET (210) - rt : mx2
assign rt[0] = (rgbtst) ? c[0] : r1[0];
assign rt[1] = (rgbtst) ? c[1] : r1[1];
assign rt[2] = (rgbtst) ? c[2] : r1[2];
assign rt[3] = (rgbtst) ? c[3] : r1[3];
assign rt[4] = (rgbtst) ? c[4] : r1[4];
assign rt[5] = (rgbtst) ? c[5] : r1[5];
assign rt[6] = (rgbtst) ? c[6] : r1[6];
assign rt[7] = (rgbtst) ? c[7] : r1[7];

// PIX.NET (211) - gt : mx2
assign gt[0] = (rgbtst) ? c[0] : g1[0];
assign gt[1] = (rgbtst) ? c[1] : g1[1];
assign gt[2] = (rgbtst) ? c[2] : g1[2];
assign gt[3] = (rgbtst) ? c[3] : g1[3];
assign gt[4] = (rgbtst) ? c[4] : g1[4];
assign gt[5] = (rgbtst) ? c[5] : g1[5];
assign gt[6] = (rgbtst) ? c[6] : g1[6];
assign gt[7] = (rgbtst) ? c[7] : g1[7];

// PIX.NET (212) - bt : mx2
assign bt[0] = (rgbtst) ? c[0] : b1[0];
assign bt[1] = (rgbtst) ? c[1] : b1[1];
assign bt[2] = (rgbtst) ? c[2] : b1[2];
assign bt[3] = (rgbtst) ? c[3] : b1[3];
assign bt[4] = (rgbtst) ? c[4] : b1[4];
assign bt[5] = (rgbtst) ? c[5] : b1[5];
assign bt[6] = (rgbtst) ? c[6] : b1[6];
assign bt[7] = (rgbtst) ? c[7] : b1[7];

// PIX.NET (216) - r2 : fd1q
fd1q r2_inst_0
(
	.q /* OUT */ (r2[0]),
	.d /* IN */ (rt[0]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q r2_inst_1
(
	.q /* OUT */ (r2[1]),
	.d /* IN */ (rt[1]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q r2_inst_2
(
	.q /* OUT */ (r2[2]),
	.d /* IN */ (rt[2]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q r2_inst_3
(
	.q /* OUT */ (r2[3]),
	.d /* IN */ (rt[3]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q r2_inst_4
(
	.q /* OUT */ (r2[4]),
	.d /* IN */ (rt[4]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q r2_inst_5
(
	.q /* OUT */ (r2[5]),
	.d /* IN */ (rt[5]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q r2_inst_6
(
	.q /* OUT */ (r2[6]),
	.d /* IN */ (rt[6]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q r2_inst_7
(
	.q /* OUT */ (r2[7]),
	.d /* IN */ (rt[7]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);

// PIX.NET (217) - g2 : fd1q
fd1q g2_inst_0
(
	.q /* OUT */ (g2[0]),
	.d /* IN */ (gt[0]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q g2_inst_1
(
	.q /* OUT */ (g2[1]),
	.d /* IN */ (gt[1]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q g2_inst_2
(
	.q /* OUT */ (g2[2]),
	.d /* IN */ (gt[2]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q g2_inst_3
(
	.q /* OUT */ (g2[3]),
	.d /* IN */ (gt[3]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q g2_inst_4
(
	.q /* OUT */ (g2[4]),
	.d /* IN */ (gt[4]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q g2_inst_5
(
	.q /* OUT */ (g2[5]),
	.d /* IN */ (gt[5]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q g2_inst_6
(
	.q /* OUT */ (g2[6]),
	.d /* IN */ (gt[6]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q g2_inst_7
(
	.q /* OUT */ (g2[7]),
	.d /* IN */ (gt[7]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);

// PIX.NET (218) - b2 : fd1q
fd1q b2_inst_0
(
	.q /* OUT */ (b2[0]),
	.d /* IN */ (bt[0]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q b2_inst_1
(
	.q /* OUT */ (b2[1]),
	.d /* IN */ (bt[1]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q b2_inst_2
(
	.q /* OUT */ (b2[2]),
	.d /* IN */ (bt[2]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q b2_inst_3
(
	.q /* OUT */ (b2[3]),
	.d /* IN */ (bt[3]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q b2_inst_4
(
	.q /* OUT */ (b2[4]),
	.d /* IN */ (bt[4]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q b2_inst_5
(
	.q /* OUT */ (b2[5]),
	.d /* IN */ (bt[5]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q b2_inst_6
(
	.q /* OUT */ (b2[6]),
	.d /* IN */ (bt[6]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q b2_inst_7
(
	.q /* OUT */ (b2[7]),
	.d /* IN */ (bt[7]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);

// PIX.NET (219) - i2 : fd1q
fd1q i2_inst_0
(
	.q /* OUT */ (i2[0]),
	.d /* IN */ (i[0]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q i2_inst_1
(
	.q /* OUT */ (i2[1]),
	.d /* IN */ (i[1]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q i2_inst_2
(
	.q /* OUT */ (i2[2]),
	.d /* IN */ (i[2]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q i2_inst_3
(
	.q /* OUT */ (i2[3]),
	.d /* IN */ (i[3]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q i2_inst_4
(
	.q /* OUT */ (i2[4]),
	.d /* IN */ (i[4]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q i2_inst_5
(
	.q /* OUT */ (i2[5]),
	.d /* IN */ (i[5]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q i2_inst_6
(
	.q /* OUT */ (i2[6]),
	.d /* IN */ (i[6]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q i2_inst_7
(
	.q /* OUT */ (i2[7]),
	.d /* IN */ (i[7]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);

// PIX.NET (221) - rgbdi : fd1q
fd1q rgbdi_inst
(
	.q /* OUT */ (rgbdi),
	.d /* IN */ (rgb),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);

// PIX.NET (222) - rgbd : nivh
assign rgbd = rgbdi;

// PIX.NET (227) - gnd : tie0
assign gnd = 1'b0;

// PIX.NET (228) - r2a : join
assign r2a[0] = r2[0];
assign r2a[1] = r2[1];
assign r2a[2] = r2[2];
assign r2a[3] = r2[3];
assign r2a[4] = r2[4];
assign r2a[5] = r2[5];
assign r2a[6] = r2[6];
assign r2a[7] = r2[7];
assign r2a[8] = gnd;
assign r2a[9] = gnd;

// PIX.NET (229) - g2a : join
assign g2a[0] = g2[0];
assign g2a[1] = g2[1];
assign g2a[2] = g2[2];
assign g2a[3] = g2[3];
assign g2a[4] = g2[4];
assign g2a[5] = g2[5];
assign g2a[6] = g2[6];
assign g2a[7] = g2[7];
assign g2a[8] = gnd;
assign g2a[9] = gnd;

// PIX.NET (230) - b2a : join
assign b2a[0] = b2[0];
assign b2a[1] = b2[1];
assign b2a[2] = b2[2];
assign b2a[3] = b2[3];
assign b2a[4] = b2[4];
assign b2a[5] = b2[5];
assign b2a[6] = b2[6];
assign b2a[7] = b2[7];
assign b2a[8] = gnd;
assign b2a[9] = gnd;

// PIX.NET (231) - i2a : join
assign i2a[0] = i2[0];
assign i2a[1] = i2[1];
assign i2a[2] = i2[2];
assign i2a[3] = i2[3];
assign i2a[4] = i2[4];
assign i2a[5] = i2[5];
assign i2a[6] = i2[6];
assign i2a[7] = i2[7];
assign i2a[8] = gnd;
assign i2a[9] = gnd;

// PIX.NET (249) - r3 : mp1010a
mp1010a r3_inst
(
	.q /* OUT */ ({r3[0],r3[1],r3[2],r3[3],r3[4],r3[5],r3[6],r3[7],r3[8],r3[9],r3[10],r3[11],r3[12],r3[13],r3[14],r3[15],r3[16],r3[17],r3[18],r3[19]}),
	.a /* IN */ ({r2a[0],r2a[1],r2a[2],r2a[3],r2a[4],r2a[5],r2a[6],r2a[7],r2a[8],r2a[9]}),
	.b /* IN */ ({i2a[0],i2a[1],i2a[2],i2a[3],i2a[4],i2a[5],i2a[6],i2a[7],i2a[8],i2a[9]})
);

// PIX.NET (250) - g3 : mp1010a
mp1010a g3_inst
(
	.q /* OUT */ ({g3[0],g3[1],g3[2],g3[3],g3[4],g3[5],g3[6],g3[7],g3[8],g3[9],g3[10],g3[11],g3[12],g3[13],g3[14],g3[15],g3[16],g3[17],g3[18],g3[19]}),
	.a /* IN */ ({g2a[0],g2a[1],g2a[2],g2a[3],g2a[4],g2a[5],g2a[6],g2a[7],g2a[8],g2a[9]}),
	.b /* IN */ ({i2a[0],i2a[1],i2a[2],i2a[3],i2a[4],i2a[5],i2a[6],i2a[7],i2a[8],i2a[9]})
);

// PIX.NET (251) - b3 : mp1010a
mp1010a b3_inst
(
	.q /* OUT */ ({b3[0],b3[1],b3[2],b3[3],b3[4],b3[5],b3[6],b3[7],b3[8],b3[9],b3[10],b3[11],b3[12],b3[13],b3[14],b3[15],b3[16],b3[17],b3[18],b3[19]}),
	.a /* IN */ ({b2a[0],b2a[1],b2a[2],b2a[3],b2a[4],b2a[5],b2a[6],b2a[7],b2a[8],b2a[9]}),
	.b /* IN */ ({i2a[0],i2a[1],i2a[2],i2a[3],i2a[4],i2a[5],i2a[6],i2a[7],i2a[8],i2a[9]})
);

// PIX.NET (256) - r3b[0-2] : mx2
assign r3b_0 = (rgbd) ? gnd : r3[8];
assign r3b_1 = (rgbd) ? gnd : r3[9];
assign r3b_2 = (rgbd) ? gnd : r3[10];

// PIX.NET (257) - r3b[3-7] : mx2
assign r3b_3 = (rgbd) ? r2[3] : r3[11];
assign r3b_4 = (rgbd) ? r2[4] : r3[12];
assign r3b_5 = (rgbd) ? r2[5] : r3[13];
assign r3b_6 = (rgbd) ? r2[6] : r3[14];
assign r3b_7 = (rgbd) ? r2[7] : r3[15];

// PIX.NET (259) - b3b[0-2] : mx2
assign b3b_0 = (rgbd) ? gnd : b3[8];
assign b3b_1 = (rgbd) ? gnd : b3[9];
assign b3b_2 = (rgbd) ? gnd : b3[10];

// PIX.NET (260) - b3b[3-4] : mx2
assign b3b_3 = (rgbd) ? i2[6] : b3[11];
assign b3b_4 = (rgbd) ? i2[7] : b3[12];

// PIX.NET (261) - b3b[5-7] : mx2
assign b3b_5 = (rgbd) ? r2[0] : b3[13];
assign b3b_6 = (rgbd) ? r2[1] : b3[14];
assign b3b_7 = (rgbd) ? r2[2] : b3[15];

// PIX.NET (263) - g3b[0-1] : mx2
assign g3b_0 = (rgbd) ? gnd : g3[8];
assign g3b_1 = (rgbd) ? gnd : g3[9];

// PIX.NET (264) - g3b[2-7] : mx2
assign g3b_2 = (rgbd) ? i2[0] : g3[10];
assign g3b_3 = (rgbd) ? i2[1] : g3[11];
assign g3b_4 = (rgbd) ? i2[2] : g3[12];
assign g3b_5 = (rgbd) ? i2[3] : g3[13];
assign g3b_6 = (rgbd) ? i2[4] : g3[14];
assign g3b_7 = (rgbd) ? i2[5] : g3[15];

// PIX.NET (268) - r[0-7] : slatch
slatch r_from_0_to_7_inst_0
(
	.q /* OUT */ (r_0),
	.d /* IN */ (r3b_0),
	.clk /* IN */ (vclk),
	.en /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);
slatch r_from_0_to_7_inst_1
(
	.q /* OUT */ (r_1),
	.d /* IN */ (r3b_1),
	.clk /* IN */ (vclk),
	.en /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);
slatch r_from_0_to_7_inst_2
(
	.q /* OUT */ (r_2),
	.d /* IN */ (r3b_2),
	.clk /* IN */ (vclk),
	.en /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);
slatch r_from_0_to_7_inst_3
(
	.q /* OUT */ (r_3),
	.d /* IN */ (r3b_3),
	.clk /* IN */ (vclk),
	.en /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);
slatch r_from_0_to_7_inst_4
(
	.q /* OUT */ (r_4),
	.d /* IN */ (r3b_4),
	.clk /* IN */ (vclk),
	.en /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);
slatch r_from_0_to_7_inst_5
(
	.q /* OUT */ (r_5),
	.d /* IN */ (r3b_5),
	.clk /* IN */ (vclk),
	.en /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);
slatch r_from_0_to_7_inst_6
(
	.q /* OUT */ (r_6),
	.d /* IN */ (r3b_6),
	.clk /* IN */ (vclk),
	.en /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);
slatch r_from_0_to_7_inst_7
(
	.q /* OUT */ (r_7),
	.d /* IN */ (r3b_7),
	.clk /* IN */ (vclk),
	.en /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);

// PIX.NET (269) - g[0-7] : slatch
slatch g_from_0_to_7_inst_0
(
	.q /* OUT */ (g_0),
	.d /* IN */ (g3b_0),
	.clk /* IN */ (vclk),
	.en /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);
slatch g_from_0_to_7_inst_1
(
	.q /* OUT */ (g_1),
	.d /* IN */ (g3b_1),
	.clk /* IN */ (vclk),
	.en /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);
slatch g_from_0_to_7_inst_2
(
	.q /* OUT */ (g_2),
	.d /* IN */ (g3b_2),
	.clk /* IN */ (vclk),
	.en /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);
slatch g_from_0_to_7_inst_3
(
	.q /* OUT */ (g_3),
	.d /* IN */ (g3b_3),
	.clk /* IN */ (vclk),
	.en /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);
slatch g_from_0_to_7_inst_4
(
	.q /* OUT */ (g_4),
	.d /* IN */ (g3b_4),
	.clk /* IN */ (vclk),
	.en /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);
slatch g_from_0_to_7_inst_5
(
	.q /* OUT */ (g_5),
	.d /* IN */ (g3b_5),
	.clk /* IN */ (vclk),
	.en /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);
slatch g_from_0_to_7_inst_6
(
	.q /* OUT */ (g_6),
	.d /* IN */ (g3b_6),
	.clk /* IN */ (vclk),
	.en /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);
slatch g_from_0_to_7_inst_7
(
	.q /* OUT */ (g_7),
	.d /* IN */ (g3b_7),
	.clk /* IN */ (vclk),
	.en /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);

// PIX.NET (270) - b[0-7] : slatch
slatch b_from_0_to_7_inst_0
(
	.q /* OUT */ (b_0),
	.d /* IN */ (b3b_0),
	.clk /* IN */ (vclk),
	.en /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);
slatch b_from_0_to_7_inst_1
(
	.q /* OUT */ (b_1),
	.d /* IN */ (b3b_1),
	.clk /* IN */ (vclk),
	.en /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);
slatch b_from_0_to_7_inst_2
(
	.q /* OUT */ (b_2),
	.d /* IN */ (b3b_2),
	.clk /* IN */ (vclk),
	.en /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);
slatch b_from_0_to_7_inst_3
(
	.q /* OUT */ (b_3),
	.d /* IN */ (b3b_3),
	.clk /* IN */ (vclk),
	.en /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);
slatch b_from_0_to_7_inst_4
(
	.q /* OUT */ (b_4),
	.d /* IN */ (b3b_4),
	.clk /* IN */ (vclk),
	.en /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);
slatch b_from_0_to_7_inst_5
(
	.q /* OUT */ (b_5),
	.d /* IN */ (b3b_5),
	.clk /* IN */ (vclk),
	.en /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);
slatch b_from_0_to_7_inst_6
(
	.q /* OUT */ (b_6),
	.d /* IN */ (b3b_6),
	.clk /* IN */ (vclk),
	.en /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);
slatch b_from_0_to_7_inst_7
(
	.q /* OUT */ (b_7),
	.d /* IN */ (b3b_7),
	.clk /* IN */ (vclk),
	.en /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);
endmodule
/* verilator lint_on LITENDIAN */
