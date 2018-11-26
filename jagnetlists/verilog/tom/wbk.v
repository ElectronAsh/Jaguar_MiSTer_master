/* verilator lint_off LITENDIAN */
`include "defs.v"

module wbk
(
	input d_14,
	input d_15,
	input d_16,
	input d_17,
	input d_18,
	input d_19,
	input d_20,
	input d_21,
	input d_22,
	input d_23,
	input d_43,
	input d_44,
	input d_45,
	input d_46,
	input d_47,
	input d_48,
	input d_49,
	input d_50,
	input d_51,
	input d_52,
	input d_53,
	input d_54,
	input d_55,
	input d_56,
	input d_57,
	input d_58,
	input d_59,
	input d_60,
	input d_61,
	input d_62,
	input d_63,
	input obld_0,
	input obld_2,
	input dwidth_0,
	input dwidth_1,
	input dwidth_2,
	input dwidth_3,
	input dwidth_4,
	input dwidth_5,
	input dwidth_6,
	input dwidth_7,
	input dwidth_8,
	input dwidth_9,
	input vscale_0,
	input vscale_1,
	input vscale_2,
	input vscale_3,
	input vscale_4,
	input vscale_5,
	input vscale_6,
	input vscale_7,
	input clk,
	input resetl,
	input scaled,
	input wbkstart,
	output newdata_0,
	output newdata_1,
	output newdata_2,
	output newdata_3,
	output newdata_4,
	output newdata_5,
	output newdata_6,
	output newdata_7,
	output newdata_8,
	output newdata_9,
	output newdata_10,
	output newdata_11,
	output newdata_12,
	output newdata_13,
	output newdata_14,
	output newdata_15,
	output newdata_16,
	output newdata_17,
	output newdata_18,
	output newdata_19,
	output newdata_20,
	output newheight_0,
	output newheight_1,
	output newheight_2,
	output newheight_3,
	output newheight_4,
	output newheight_5,
	output newheight_6,
	output newheight_7,
	output newheight_8,
	output newheight_9,
	output newrem_0,
	output newrem_1,
	output newrem_2,
	output newrem_3,
	output newrem_4,
	output newrem_5,
	output newrem_6,
	output newrem_7,
	output heightnz,
	output wbkdone,
	input sys_clk // Generated
);
wire [0:8] newrem;
wire [0:9] newheight;
wire [0:20] newdata;
wire newrem_8;
wire q0;
wire d0;
wire q1;
wire d1;
wire q2;
wire d2;
wire d00;
wire notwbkstart;
wire d01;
wire notscaled;
wire d02;
wire heightz;
wire d03;
wire intremnz;
wire d20;
wire d21;
wire intremz;
wire decheight;
wire addnewdata;
wire addrem;
wire decrem;
wire intremz0;
wire rd_0;
wire rd_1;
wire rd_2;
wire rd_3;
wire rd_4;
wire gnd;
wire rd_5;
wire rd_6;
wire rd_7;
wire vcc;
wire rd_8;
wire rs_0;
wire rc_0;
wire rs_1;
wire rs_2;
wire rs_3;
wire rs_4;
wire rs_5;
wire rs_6;
wire rs_7;
wire rs_8;
wire rc_1;
wire rc_2;
wire rc_3;
wire rc_4;
wire rc_5;
wire rc_6;
wire rc_7;
wire rc_8;
wire rem_0;
wire rem_1;
wire rem_2;
wire rem_3;
wire rem_4;
wire rem_5;
wire rem_6;
wire rem_7;
wire rem_8;
wire latchrem;
wire latchremi;
wire newheighti_0;
wire hc_0;
wire newheighti_1;
wire hc_1;
wire hc_2;
wire hc_3;
wire hc_4;
wire hc_5;
wire hc_6;
wire hc_7;
wire hc_8;
wire hc_9;
wire heightz0;
wire heightz1;
wire ds_0;
wire ds_1;
wire ds_2;
wire ds_3;
wire dc_3;
wire ds_4;
wire ds_5;
wire ds_6;
wire ds_7;
wire dc_7;
wire ds_8;
wire ds_9;
wire ds_10;
wire ds_11;
wire dc_11;
wire ds_12;
wire ds_13;
wire ds_14;
wire ds_15;
wire ds_16;
wire ds_17;
wire ds_18;
wire ds_19;
wire ds_20;
wire data_0;
wire data_1;
wire data_2;
wire data_3;
wire data_4;
wire data_5;
wire data_6;
wire data_7;
wire data_8;
wire data_9;
wire data_10;
wire data_11;
wire data_12;
wire data_13;
wire data_14;
wire data_15;
wire data_16;
wire data_17;
wire data_18;
wire data_19;
wire data_20;
wire newdataclk;
wire newdatai_11;
wire newdatai_12;
wire newdatai_13;
wire newdatai_14;
wire newdatai_15;
wire latchdata;

// Output buffers
wire newdata_0_obuf;
wire newdata_1_obuf;
wire newdata_2_obuf;
wire newdata_3_obuf;
wire newdata_4_obuf;
wire newdata_5_obuf;
wire newdata_6_obuf;
wire newdata_7_obuf;
wire newdata_8_obuf;
wire newdata_9_obuf;
wire newdata_10_obuf;
wire newdata_11_obuf;
wire newdata_12_obuf;
wire newdata_13_obuf;
wire newdata_14_obuf;
wire newdata_15_obuf;
wire newdata_16_obuf;
wire newdata_17_obuf;
wire newdata_18_obuf;
wire newdata_19_obuf;
wire newdata_20_obuf;
wire newheight_0_obuf;
wire newheight_1_obuf;
wire newheight_2_obuf;
wire newheight_3_obuf;
wire newheight_4_obuf;
wire newheight_5_obuf;
wire newheight_6_obuf;
wire newheight_7_obuf;
wire newheight_8_obuf;
wire newheight_9_obuf;
wire newrem_0_obuf;
wire newrem_1_obuf;
wire newrem_2_obuf;
wire newrem_3_obuf;
wire newrem_4_obuf;
wire newrem_5_obuf;
wire newrem_6_obuf;
wire newrem_7_obuf;
wire heightnz_obuf;


// Output buffers
assign newdata_0 = newdata_0_obuf;
assign newdata_1 = newdata_1_obuf;
assign newdata_2 = newdata_2_obuf;
assign newdata_3 = newdata_3_obuf;
assign newdata_4 = newdata_4_obuf;
assign newdata_5 = newdata_5_obuf;
assign newdata_6 = newdata_6_obuf;
assign newdata_7 = newdata_7_obuf;
assign newdata_8 = newdata_8_obuf;
assign newdata_9 = newdata_9_obuf;
assign newdata_10 = newdata_10_obuf;
assign newdata_11 = newdata_11_obuf;
assign newdata_12 = newdata_12_obuf;
assign newdata_13 = newdata_13_obuf;
assign newdata_14 = newdata_14_obuf;
assign newdata_15 = newdata_15_obuf;
assign newdata_16 = newdata_16_obuf;
assign newdata_17 = newdata_17_obuf;
assign newdata_18 = newdata_18_obuf;
assign newdata_19 = newdata_19_obuf;
assign newdata_20 = newdata_20_obuf;
assign newheight_0 = newheight_0_obuf;
assign newheight_1 = newheight_1_obuf;
assign newheight_2 = newheight_2_obuf;
assign newheight_3 = newheight_3_obuf;
assign newheight_4 = newheight_4_obuf;
assign newheight_5 = newheight_5_obuf;
assign newheight_6 = newheight_6_obuf;
assign newheight_7 = newheight_7_obuf;
assign newheight_8 = newheight_8_obuf;
assign newheight_9 = newheight_9_obuf;
assign newrem_0 = newrem_0_obuf;
assign newrem_1 = newrem_1_obuf;
assign newrem_2 = newrem_2_obuf;
assign newrem_3 = newrem_3_obuf;
assign newrem_4 = newrem_4_obuf;
assign newrem_5 = newrem_5_obuf;
assign newrem_6 = newrem_6_obuf;
assign newrem_7 = newrem_7_obuf;
assign heightnz = heightnz_obuf;


// WBK.NET (23) - newrem : join
assign newrem[0] = newrem_0_obuf;
assign newrem[1] = newrem_1_obuf;
assign newrem[2] = newrem_2_obuf;
assign newrem[3] = newrem_3_obuf;
assign newrem[4] = newrem_4_obuf;
assign newrem[5] = newrem_5_obuf;
assign newrem[6] = newrem_6_obuf;
assign newrem[7] = newrem_7_obuf;
assign newrem[8] = newrem_8;

// WBK.NET (24) - newremu : dummy

// WBK.NET (25) - newheight : join
assign newheight[0] = newheight_0_obuf;
assign newheight[1] = newheight_1_obuf;
assign newheight[2] = newheight_2_obuf;
assign newheight[3] = newheight_3_obuf;
assign newheight[4] = newheight_4_obuf;
assign newheight[5] = newheight_5_obuf;
assign newheight[6] = newheight_6_obuf;
assign newheight[7] = newheight_7_obuf;
assign newheight[8] = newheight_8_obuf;
assign newheight[9] = newheight_9_obuf;

// WBK.NET (26) - newheightu : dummy

// WBK.NET (27) - newdata : join
assign newdata[0] = newdata_0_obuf;
assign newdata[1] = newdata_1_obuf;
assign newdata[2] = newdata_2_obuf;
assign newdata[3] = newdata_3_obuf;
assign newdata[4] = newdata_4_obuf;
assign newdata[5] = newdata_5_obuf;
assign newdata[6] = newdata_6_obuf;
assign newdata[7] = newdata_7_obuf;
assign newdata[8] = newdata_8_obuf;
assign newdata[9] = newdata_9_obuf;
assign newdata[10] = newdata_10_obuf;
assign newdata[11] = newdata_11_obuf;
assign newdata[12] = newdata_12_obuf;
assign newdata[13] = newdata_13_obuf;
assign newdata[14] = newdata_14_obuf;
assign newdata[15] = newdata_15_obuf;
assign newdata[16] = newdata_16_obuf;
assign newdata[17] = newdata_17_obuf;
assign newdata[18] = newdata_18_obuf;
assign newdata[19] = newdata_19_obuf;
assign newdata[20] = newdata_20_obuf;

// WBK.NET (28) - newdatau : dummy

// WBK.NET (45) - q0 : fd4q
fd4q q0_inst
(
	.q /* OUT */ (q0),
	.d /* IN */ (d0),
	.cp /* IN */ (clk),
	.sd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// WBK.NET (46) - q1 : fd2q
fd2q q1_inst
(
	.q /* OUT */ (q1),
	.d /* IN */ (d1),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// WBK.NET (47) - q2 : fd2q
fd2q q2_inst
(
	.q /* OUT */ (q2),
	.d /* IN */ (d2),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// WBK.NET (49) - d00 : nd2
assign d00 = ~(q0 & notwbkstart);

// WBK.NET (50) - d01 : nd2
assign d01 = ~(q1 & notscaled);

// WBK.NET (51) - d02 : nd2
assign d02 = ~(q2 & heightz);

// WBK.NET (52) - d03 : nd2
assign d03 = ~(q2 & intremnz);

// WBK.NET (53) - d0 : nd4
assign d0 = ~(d00 & d01 & d02 & d03);

// WBK.NET (55) - d1 : an2
assign d1 = q0 & wbkstart;

// WBK.NET (57) - d20 : nd2
assign d20 = ~(q1 & scaled);

// WBK.NET (58) - d21 : nd3
assign d21 = ~(q2 & heightnz_obuf & intremz);

// WBK.NET (59) - d2 : nd2
assign d2 = ~(d20 & d21);

// WBK.NET (61) - wbkdone : nivh
assign wbkdone = q0;

// WBK.NET (63) - decheight : nd2
assign decheight = ~(d01 & d21);

// WBK.NET (64) - addnewdata : nd2
assign addnewdata = ~(d01 & d21);

// WBK.NET (65) - addrem : iv
assign addrem = ~d21;

// WBK.NET (66) - decrem : ivm
assign decrem = ~d20;

// WBK.NET (68) - notwbkstart : iv
assign notwbkstart = ~wbkstart;

// WBK.NET (69) - notscaled : iv
assign notscaled = ~scaled;

// WBK.NET (73) - intremz0 : nr4
assign intremz0 = ~(newrem_5_obuf | newrem_6_obuf | newrem_7_obuf | newrem_8);

// WBK.NET (74) - intremz : or2
assign intremz = intremz0 | newrem_8;

// WBK.NET (75) - intremnz : iv
assign intremnz = ~intremz;

// WBK.NET (83) - rd[0-4] : mx2
assign rd_0 = (decrem) ? gnd : vscale_0;
assign rd_1 = (decrem) ? gnd : vscale_1;
assign rd_2 = (decrem) ? gnd : vscale_2;
assign rd_3 = (decrem) ? gnd : vscale_3;
assign rd_4 = (decrem) ? gnd : vscale_4;

// WBK.NET (84) - rd[5-7] : mx2
assign rd_5 = (decrem) ? vcc : vscale_5;
assign rd_6 = (decrem) ? vcc : vscale_6;
assign rd_7 = (decrem) ? vcc : vscale_7;

// WBK.NET (85) - rd[8] : niv
assign rd_8 = decrem;

// WBK.NET (87) - rs[0] : ha1
ha1 rs_index_0_inst
(
	.s /* OUT */ (rs_0),
	.co /* OUT */ (rc_0),
	.a /* IN */ (newrem_0_obuf),
	.b /* IN */ (rd_0)
);

// WBK.NET (88) - rs[1-8] : fa1
fa1 rs_from_1_to_8_inst_0
(
	.s /* OUT */ (rs_1),
	.co /* OUT */ (rc_1),
	.ci /* IN */ (newrem_1_obuf),
	.a /* IN */ (rd_1),
	.b /* IN */ (rc_0)
);
fa1 rs_from_1_to_8_inst_1
(
	.s /* OUT */ (rs_2),
	.co /* OUT */ (rc_2),
	.ci /* IN */ (newrem_2_obuf),
	.a /* IN */ (rd_2),
	.b /* IN */ (rc_1)
);
fa1 rs_from_1_to_8_inst_2
(
	.s /* OUT */ (rs_3),
	.co /* OUT */ (rc_3),
	.ci /* IN */ (newrem_3_obuf),
	.a /* IN */ (rd_3),
	.b /* IN */ (rc_2)
);
fa1 rs_from_1_to_8_inst_3
(
	.s /* OUT */ (rs_4),
	.co /* OUT */ (rc_4),
	.ci /* IN */ (newrem_4_obuf),
	.a /* IN */ (rd_4),
	.b /* IN */ (rc_3)
);
fa1 rs_from_1_to_8_inst_4
(
	.s /* OUT */ (rs_5),
	.co /* OUT */ (rc_5),
	.ci /* IN */ (newrem_5_obuf),
	.a /* IN */ (rd_5),
	.b /* IN */ (rc_4)
);
fa1 rs_from_1_to_8_inst_5
(
	.s /* OUT */ (rs_6),
	.co /* OUT */ (rc_6),
	.ci /* IN */ (newrem_6_obuf),
	.a /* IN */ (rd_6),
	.b /* IN */ (rc_5)
);
fa1 rs_from_1_to_8_inst_6
(
	.s /* OUT */ (rs_7),
	.co /* OUT */ (rc_7),
	.ci /* IN */ (newrem_7_obuf),
	.a /* IN */ (rd_7),
	.b /* IN */ (rc_6)
);
fa1 rs_from_1_to_8_inst_7
(
	.s /* OUT */ (rs_8),
	.co /* OUT */ (rc_8),
	.ci /* IN */ (newrem_8),
	.a /* IN */ (rd_8),
	.b /* IN */ (rc_7)
);

// WBK.NET (92) - rem[0-7] : mx2
assign rem_0 = (obld_2) ? d_16 : rs_0;
assign rem_1 = (obld_2) ? d_17 : rs_1;
assign rem_2 = (obld_2) ? d_18 : rs_2;
assign rem_3 = (obld_2) ? d_19 : rs_3;
assign rem_4 = (obld_2) ? d_20 : rs_4;
assign rem_5 = (obld_2) ? d_21 : rs_5;
assign rem_6 = (obld_2) ? d_22 : rs_6;
assign rem_7 = (obld_2) ? d_23 : rs_7;

// WBK.NET (93) - rem[8] : mx2
assign rem_8 = (obld_2) ? gnd : rs_8;

// WBK.NET (95) - newrem[0-8] : slatch
slatch newrem_from_0_to_8_inst_0
(
	.q /* OUT */ (newrem_0_obuf),
	.d /* IN */ (rem_0),
	.clk /* IN */ (clk),
	.en /* IN */ (latchrem),
	.sys_clk(sys_clk) // Generated
);
slatch newrem_from_0_to_8_inst_1
(
	.q /* OUT */ (newrem_1_obuf),
	.d /* IN */ (rem_1),
	.clk /* IN */ (clk),
	.en /* IN */ (latchrem),
	.sys_clk(sys_clk) // Generated
);
slatch newrem_from_0_to_8_inst_2
(
	.q /* OUT */ (newrem_2_obuf),
	.d /* IN */ (rem_2),
	.clk /* IN */ (clk),
	.en /* IN */ (latchrem),
	.sys_clk(sys_clk) // Generated
);
slatch newrem_from_0_to_8_inst_3
(
	.q /* OUT */ (newrem_3_obuf),
	.d /* IN */ (rem_3),
	.clk /* IN */ (clk),
	.en /* IN */ (latchrem),
	.sys_clk(sys_clk) // Generated
);
slatch newrem_from_0_to_8_inst_4
(
	.q /* OUT */ (newrem_4_obuf),
	.d /* IN */ (rem_4),
	.clk /* IN */ (clk),
	.en /* IN */ (latchrem),
	.sys_clk(sys_clk) // Generated
);
slatch newrem_from_0_to_8_inst_5
(
	.q /* OUT */ (newrem_5_obuf),
	.d /* IN */ (rem_5),
	.clk /* IN */ (clk),
	.en /* IN */ (latchrem),
	.sys_clk(sys_clk) // Generated
);
slatch newrem_from_0_to_8_inst_6
(
	.q /* OUT */ (newrem_6_obuf),
	.d /* IN */ (rem_6),
	.clk /* IN */ (clk),
	.en /* IN */ (latchrem),
	.sys_clk(sys_clk) // Generated
);
slatch newrem_from_0_to_8_inst_7
(
	.q /* OUT */ (newrem_7_obuf),
	.d /* IN */ (rem_7),
	.clk /* IN */ (clk),
	.en /* IN */ (latchrem),
	.sys_clk(sys_clk) // Generated
);
slatch newrem_from_0_to_8_inst_8
(
	.q /* OUT */ (newrem_8),
	.d /* IN */ (rem_8),
	.clk /* IN */ (clk),
	.en /* IN */ (latchrem),
	.sys_clk(sys_clk) // Generated
);

// WBK.NET (97) - latchremi : nr3
assign latchremi = ~(obld_2 | addrem | decrem);

// WBK.NET (98) - latchrem : ivm
assign latchrem = ~latchremi;

// WBK.NET (103) - newheighti[0] : dncnt
dncnt newheighti_index_0_inst
(
	.q /* OUT */ (newheighti_0),
	.co /* OUT */ (hc_0),
	.d /* IN */ (d_14),
	.clk /* IN */ (clk),
	.ci /* IN */ (decheight),
	.ld /* IN */ (obld_0),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// WBK.NET (104) - newheighti[1] : dncnt
dncnt newheighti_index_1_inst
(
	.q /* OUT */ (newheighti_1),
	.co /* OUT */ (hc_1),
	.d /* IN */ (d_15),
	.clk /* IN */ (clk),
	.ci /* IN */ (hc_0),
	.ld /* IN */ (obld_0),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// WBK.NET (105) - newheight[2-9] : dncnt
dncnt newheight_from_2_to_9_inst_0
(
	.q /* OUT */ (newheight_2_obuf),
	.co /* OUT */ (hc_2),
	.d /* IN */ (d_16),
	.clk /* IN */ (clk),
	.ci /* IN */ (hc_1),
	.ld /* IN */ (obld_0),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
dncnt newheight_from_2_to_9_inst_1
(
	.q /* OUT */ (newheight_3_obuf),
	.co /* OUT */ (hc_3),
	.d /* IN */ (d_17),
	.clk /* IN */ (clk),
	.ci /* IN */ (hc_2),
	.ld /* IN */ (obld_0),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
dncnt newheight_from_2_to_9_inst_2
(
	.q /* OUT */ (newheight_4_obuf),
	.co /* OUT */ (hc_4),
	.d /* IN */ (d_18),
	.clk /* IN */ (clk),
	.ci /* IN */ (hc_3),
	.ld /* IN */ (obld_0),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
dncnt newheight_from_2_to_9_inst_3
(
	.q /* OUT */ (newheight_5_obuf),
	.co /* OUT */ (hc_5),
	.d /* IN */ (d_19),
	.clk /* IN */ (clk),
	.ci /* IN */ (hc_4),
	.ld /* IN */ (obld_0),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
dncnt newheight_from_2_to_9_inst_4
(
	.q /* OUT */ (newheight_6_obuf),
	.co /* OUT */ (hc_6),
	.d /* IN */ (d_20),
	.clk /* IN */ (clk),
	.ci /* IN */ (hc_5),
	.ld /* IN */ (obld_0),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
dncnt newheight_from_2_to_9_inst_5
(
	.q /* OUT */ (newheight_7_obuf),
	.co /* OUT */ (hc_7),
	.d /* IN */ (d_21),
	.clk /* IN */ (clk),
	.ci /* IN */ (hc_6),
	.ld /* IN */ (obld_0),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
dncnt newheight_from_2_to_9_inst_6
(
	.q /* OUT */ (newheight_8_obuf),
	.co /* OUT */ (hc_8),
	.d /* IN */ (d_22),
	.clk /* IN */ (clk),
	.ci /* IN */ (hc_7),
	.ld /* IN */ (obld_0),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
dncnt newheight_from_2_to_9_inst_7
(
	.q /* OUT */ (newheight_9_obuf),
	.co /* OUT */ (hc_9),
	.d /* IN */ (d_23),
	.clk /* IN */ (clk),
	.ci /* IN */ (hc_8),
	.ld /* IN */ (obld_0),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// WBK.NET (106) - newheight[0-1] : nivm
assign newheight_0_obuf = newheighti_0;
assign newheight_1_obuf = newheighti_1;

// WBK.NET (108) - heightz0 : nr6
assign heightz0 = ~(newheight_0_obuf | newheight_1_obuf | newheight_2_obuf | newheight_3_obuf | newheight_4_obuf | newheight_5_obuf);

// WBK.NET (109) - heightz1 : nr4
assign heightz1 = ~(newheight_6_obuf | newheight_7_obuf | newheight_8_obuf | newheight_9_obuf);

// WBK.NET (110) - heightnz : nd2
assign heightnz_obuf = ~(heightz0 & heightz1);

// WBK.NET (111) - heightz : iv
assign heightz = ~heightnz_obuf;

// WBK.NET (118) - ds[0] : add4
add4 ds_index_0_inst
(
	.q_0 /* OUT */ (ds_0),
	.q_1 /* OUT */ (ds_1),
	.q_2 /* OUT */ (ds_2),
	.q_3 /* OUT */ (ds_3),
	.co /* OUT */ (dc_3),
	.a_0 /* IN */ (dwidth_0),
	.a_1 /* IN */ (dwidth_1),
	.a_2 /* IN */ (dwidth_2),
	.a_3 /* IN */ (dwidth_3),
	.b_0 /* IN */ (newdata_0_obuf),
	.b_1 /* IN */ (newdata_1_obuf),
	.b_2 /* IN */ (newdata_2_obuf),
	.b_3 /* IN */ (newdata_3_obuf),
	.ci /* IN */ (gnd)
);

// WBK.NET (119) - ds[1] : add4
add4 ds_index_1_inst
(
	.q_0 /* OUT */ (ds_4),
	.q_1 /* OUT */ (ds_5),
	.q_2 /* OUT */ (ds_6),
	.q_3 /* OUT */ (ds_7),
	.co /* OUT */ (dc_7),
	.a_0 /* IN */ (dwidth_4),
	.a_1 /* IN */ (dwidth_5),
	.a_2 /* IN */ (dwidth_6),
	.a_3 /* IN */ (dwidth_7),
	.b_0 /* IN */ (newdata_4_obuf),
	.b_1 /* IN */ (newdata_5_obuf),
	.b_2 /* IN */ (newdata_6_obuf),
	.b_3 /* IN */ (newdata_7_obuf),
	.ci /* IN */ (dc_3)
);

// WBK.NET (120) - ds[2] : add4
add4 ds_index_2_inst
(
	.q_0 /* OUT */ (ds_8),
	.q_1 /* OUT */ (ds_9),
	.q_2 /* OUT */ (ds_10),
	.q_3 /* OUT */ (ds_11),
	.co /* OUT */ (dc_11),
	.a_0 /* IN */ (dwidth_8),
	.a_1 /* IN */ (dwidth_9),
	.a_2 /* IN */ (gnd),
	.a_3 /* IN */ (gnd),
	.b_0 /* IN */ (newdata_8_obuf),
	.b_1 /* IN */ (newdata_9_obuf),
	.b_2 /* IN */ (newdata_10_obuf),
	.b_3 /* IN */ (newdata_11_obuf),
	.ci /* IN */ (dc_7)
);

// WBK.NET (121) - ds[3] : ha9
ha9 ds_index_3_inst
(
	.q_0 /* OUT */ (ds_12),
	.q_1 /* OUT */ (ds_13),
	.q_2 /* OUT */ (ds_14),
	.q_3 /* OUT */ (ds_15),
	.q_4 /* OUT */ (ds_16),
	.q_5 /* OUT */ (ds_17),
	.q_6 /* OUT */ (ds_18),
	.q_7 /* OUT */ (ds_19),
	.q_8 /* OUT */ (ds_20),
	.a_0 /* IN */ (newdata_12_obuf),
	.a_1 /* IN */ (newdata_13_obuf),
	.a_2 /* IN */ (newdata_14_obuf),
	.a_3 /* IN */ (newdata_15_obuf),
	.a_4 /* IN */ (newdata_16_obuf),
	.a_5 /* IN */ (newdata_17_obuf),
	.a_6 /* IN */ (newdata_18_obuf),
	.a_7 /* IN */ (newdata_19_obuf),
	.a_8 /* IN */ (newdata_20_obuf),
	.ci /* IN */ (dc_11)
);

// WBK.NET (126) - data[0-20] : mx4p
mx4 data_from_0_to_20_inst_0
(
	.z /* OUT */ (data_0),
	.a0 /* IN */ (newdata_0_obuf),
	.a1 /* IN */ (newdata_0_obuf),
	.a2 /* IN */ (ds_0),
	.a3 /* IN */ (d_43),
	.s0 /* IN */ (obld_0),
	.s1 /* IN */ (newdataclk)
);
mx4 data_from_0_to_20_inst_1
(
	.z /* OUT */ (data_1),
	.a0 /* IN */ (newdata_1_obuf),
	.a1 /* IN */ (newdata_1_obuf),
	.a2 /* IN */ (ds_1),
	.a3 /* IN */ (d_44),
	.s0 /* IN */ (obld_0),
	.s1 /* IN */ (newdataclk)
);
mx4 data_from_0_to_20_inst_2
(
	.z /* OUT */ (data_2),
	.a0 /* IN */ (newdata_2_obuf),
	.a1 /* IN */ (newdata_2_obuf),
	.a2 /* IN */ (ds_2),
	.a3 /* IN */ (d_45),
	.s0 /* IN */ (obld_0),
	.s1 /* IN */ (newdataclk)
);
mx4 data_from_0_to_20_inst_3
(
	.z /* OUT */ (data_3),
	.a0 /* IN */ (newdata_3_obuf),
	.a1 /* IN */ (newdata_3_obuf),
	.a2 /* IN */ (ds_3),
	.a3 /* IN */ (d_46),
	.s0 /* IN */ (obld_0),
	.s1 /* IN */ (newdataclk)
);
mx4 data_from_0_to_20_inst_4
(
	.z /* OUT */ (data_4),
	.a0 /* IN */ (newdata_4_obuf),
	.a1 /* IN */ (newdata_4_obuf),
	.a2 /* IN */ (ds_4),
	.a3 /* IN */ (d_47),
	.s0 /* IN */ (obld_0),
	.s1 /* IN */ (newdataclk)
);
mx4 data_from_0_to_20_inst_5
(
	.z /* OUT */ (data_5),
	.a0 /* IN */ (newdata_5_obuf),
	.a1 /* IN */ (newdata_5_obuf),
	.a2 /* IN */ (ds_5),
	.a3 /* IN */ (d_48),
	.s0 /* IN */ (obld_0),
	.s1 /* IN */ (newdataclk)
);
mx4 data_from_0_to_20_inst_6
(
	.z /* OUT */ (data_6),
	.a0 /* IN */ (newdata_6_obuf),
	.a1 /* IN */ (newdata_6_obuf),
	.a2 /* IN */ (ds_6),
	.a3 /* IN */ (d_49),
	.s0 /* IN */ (obld_0),
	.s1 /* IN */ (newdataclk)
);
mx4 data_from_0_to_20_inst_7
(
	.z /* OUT */ (data_7),
	.a0 /* IN */ (newdata_7_obuf),
	.a1 /* IN */ (newdata_7_obuf),
	.a2 /* IN */ (ds_7),
	.a3 /* IN */ (d_50),
	.s0 /* IN */ (obld_0),
	.s1 /* IN */ (newdataclk)
);
mx4 data_from_0_to_20_inst_8
(
	.z /* OUT */ (data_8),
	.a0 /* IN */ (newdata_8_obuf),
	.a1 /* IN */ (newdata_8_obuf),
	.a2 /* IN */ (ds_8),
	.a3 /* IN */ (d_51),
	.s0 /* IN */ (obld_0),
	.s1 /* IN */ (newdataclk)
);
mx4 data_from_0_to_20_inst_9
(
	.z /* OUT */ (data_9),
	.a0 /* IN */ (newdata_9_obuf),
	.a1 /* IN */ (newdata_9_obuf),
	.a2 /* IN */ (ds_9),
	.a3 /* IN */ (d_52),
	.s0 /* IN */ (obld_0),
	.s1 /* IN */ (newdataclk)
);
mx4 data_from_0_to_20_inst_10
(
	.z /* OUT */ (data_10),
	.a0 /* IN */ (newdata_10_obuf),
	.a1 /* IN */ (newdata_10_obuf),
	.a2 /* IN */ (ds_10),
	.a3 /* IN */ (d_53),
	.s0 /* IN */ (obld_0),
	.s1 /* IN */ (newdataclk)
);
mx4 data_from_0_to_20_inst_11
(
	.z /* OUT */ (data_11),
	.a0 /* IN */ (newdata_11_obuf),
	.a1 /* IN */ (newdata_11_obuf),
	.a2 /* IN */ (ds_11),
	.a3 /* IN */ (d_54),
	.s0 /* IN */ (obld_0),
	.s1 /* IN */ (newdataclk)
);
mx4 data_from_0_to_20_inst_12
(
	.z /* OUT */ (data_12),
	.a0 /* IN */ (newdata_12_obuf),
	.a1 /* IN */ (newdata_12_obuf),
	.a2 /* IN */ (ds_12),
	.a3 /* IN */ (d_55),
	.s0 /* IN */ (obld_0),
	.s1 /* IN */ (newdataclk)
);
mx4 data_from_0_to_20_inst_13
(
	.z /* OUT */ (data_13),
	.a0 /* IN */ (newdata_13_obuf),
	.a1 /* IN */ (newdata_13_obuf),
	.a2 /* IN */ (ds_13),
	.a3 /* IN */ (d_56),
	.s0 /* IN */ (obld_0),
	.s1 /* IN */ (newdataclk)
);
mx4 data_from_0_to_20_inst_14
(
	.z /* OUT */ (data_14),
	.a0 /* IN */ (newdata_14_obuf),
	.a1 /* IN */ (newdata_14_obuf),
	.a2 /* IN */ (ds_14),
	.a3 /* IN */ (d_57),
	.s0 /* IN */ (obld_0),
	.s1 /* IN */ (newdataclk)
);
mx4 data_from_0_to_20_inst_15
(
	.z /* OUT */ (data_15),
	.a0 /* IN */ (newdata_15_obuf),
	.a1 /* IN */ (newdata_15_obuf),
	.a2 /* IN */ (ds_15),
	.a3 /* IN */ (d_58),
	.s0 /* IN */ (obld_0),
	.s1 /* IN */ (newdataclk)
);
mx4 data_from_0_to_20_inst_16
(
	.z /* OUT */ (data_16),
	.a0 /* IN */ (newdata_16_obuf),
	.a1 /* IN */ (newdata_16_obuf),
	.a2 /* IN */ (ds_16),
	.a3 /* IN */ (d_59),
	.s0 /* IN */ (obld_0),
	.s1 /* IN */ (newdataclk)
);
mx4 data_from_0_to_20_inst_17
(
	.z /* OUT */ (data_17),
	.a0 /* IN */ (newdata_17_obuf),
	.a1 /* IN */ (newdata_17_obuf),
	.a2 /* IN */ (ds_17),
	.a3 /* IN */ (d_60),
	.s0 /* IN */ (obld_0),
	.s1 /* IN */ (newdataclk)
);
mx4 data_from_0_to_20_inst_18
(
	.z /* OUT */ (data_18),
	.a0 /* IN */ (newdata_18_obuf),
	.a1 /* IN */ (newdata_18_obuf),
	.a2 /* IN */ (ds_18),
	.a3 /* IN */ (d_61),
	.s0 /* IN */ (obld_0),
	.s1 /* IN */ (newdataclk)
);
mx4 data_from_0_to_20_inst_19
(
	.z /* OUT */ (data_19),
	.a0 /* IN */ (newdata_19_obuf),
	.a1 /* IN */ (newdata_19_obuf),
	.a2 /* IN */ (ds_19),
	.a3 /* IN */ (d_62),
	.s0 /* IN */ (obld_0),
	.s1 /* IN */ (newdataclk)
);
mx4 data_from_0_to_20_inst_20
(
	.z /* OUT */ (data_20),
	.a0 /* IN */ (newdata_20_obuf),
	.a1 /* IN */ (newdata_20_obuf),
	.a2 /* IN */ (ds_20),
	.a3 /* IN */ (d_63),
	.s0 /* IN */ (obld_0),
	.s1 /* IN */ (newdataclk)
);

// WBK.NET (128) - newdata[0-10] : fd1q
fd1q newdata_from_0_to_10_inst_0
(
	.q /* OUT */ (newdata_0_obuf),
	.d /* IN */ (data_0),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q newdata_from_0_to_10_inst_1
(
	.q /* OUT */ (newdata_1_obuf),
	.d /* IN */ (data_1),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q newdata_from_0_to_10_inst_2
(
	.q /* OUT */ (newdata_2_obuf),
	.d /* IN */ (data_2),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q newdata_from_0_to_10_inst_3
(
	.q /* OUT */ (newdata_3_obuf),
	.d /* IN */ (data_3),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q newdata_from_0_to_10_inst_4
(
	.q /* OUT */ (newdata_4_obuf),
	.d /* IN */ (data_4),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q newdata_from_0_to_10_inst_5
(
	.q /* OUT */ (newdata_5_obuf),
	.d /* IN */ (data_5),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q newdata_from_0_to_10_inst_6
(
	.q /* OUT */ (newdata_6_obuf),
	.d /* IN */ (data_6),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q newdata_from_0_to_10_inst_7
(
	.q /* OUT */ (newdata_7_obuf),
	.d /* IN */ (data_7),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q newdata_from_0_to_10_inst_8
(
	.q /* OUT */ (newdata_8_obuf),
	.d /* IN */ (data_8),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q newdata_from_0_to_10_inst_9
(
	.q /* OUT */ (newdata_9_obuf),
	.d /* IN */ (data_9),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q newdata_from_0_to_10_inst_10
(
	.q /* OUT */ (newdata_10_obuf),
	.d /* IN */ (data_10),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// WBK.NET (129) - newdatai[11-15] : fd1q
fd1q newdatai_from_11_to_15_inst_0
(
	.q /* OUT */ (newdatai_11),
	.d /* IN */ (data_11),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q newdatai_from_11_to_15_inst_1
(
	.q /* OUT */ (newdatai_12),
	.d /* IN */ (data_12),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q newdatai_from_11_to_15_inst_2
(
	.q /* OUT */ (newdatai_13),
	.d /* IN */ (data_13),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q newdatai_from_11_to_15_inst_3
(
	.q /* OUT */ (newdatai_14),
	.d /* IN */ (data_14),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q newdatai_from_11_to_15_inst_4
(
	.q /* OUT */ (newdatai_15),
	.d /* IN */ (data_15),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// WBK.NET (130) - newdata[16-20] : fd1q
fd1q newdata_from_16_to_20_inst_0
(
	.q /* OUT */ (newdata_16_obuf),
	.d /* IN */ (data_16),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q newdata_from_16_to_20_inst_1
(
	.q /* OUT */ (newdata_17_obuf),
	.d /* IN */ (data_17),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q newdata_from_16_to_20_inst_2
(
	.q /* OUT */ (newdata_18_obuf),
	.d /* IN */ (data_18),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q newdata_from_16_to_20_inst_3
(
	.q /* OUT */ (newdata_19_obuf),
	.d /* IN */ (data_19),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q newdata_from_16_to_20_inst_4
(
	.q /* OUT */ (newdata_20_obuf),
	.d /* IN */ (data_20),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// WBK.NET (131) - newdata[11-15] : nivh
assign newdata_11_obuf = newdatai_11;
assign newdata_12_obuf = newdatai_12;
assign newdata_13_obuf = newdatai_13;
assign newdata_14_obuf = newdatai_14;
assign newdata_15_obuf = newdatai_15;

// WBK.NET (133) - latchdata : or2
assign latchdata = obld_0 | addnewdata;

// WBK.NET (134) - newdataclk : nivh
assign newdataclk = latchdata;

// WBK.NET (136) - gnd : tie0
assign gnd = 1'b0;

// WBK.NET (137) - vcc : tie1
assign vcc = 1'b1;

// WBK.NET (141) - hcu : dummy

// WBK.NET (142) - rcu : dummy
endmodule
/* verilator lint_on LITENDIAN */
