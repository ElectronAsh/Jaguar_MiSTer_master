/* verilator lint_off LITENDIAN */
`include "defs.v"

module j_jclk
(
	input resetli,
	input pclkosc,
	input pclkin,
	input vclkin,
	input chrin,
	input clk1w,
	input clk2w,
	input clk3w,
	input test,
	input cfg_2,
	input cfg_3,
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
	input din_15,
	input ndtest,
	output cfgw,
	output cfgen,
	output clk,
	output pclkout,
	output pclkdiv,
	output vclkdiv,
	output cpuclk,
	output chrdiv,
	output vclken,
	output resetl,
	output tlw,
	input sys_clk // Generated
);
wire [0:5] cd;
wire resetldb;
wire pclk2;
wire pclk2l;
wire tresl;
wire divide;
wire cpuclkl;
wire pclk;
wire clk1;
wire clk2;
wire cfgwl;
wire cfgend;
wire cfgeni;
wire notndtest;
wire external;
wire internal;
wire chrddl_0;
wire chrddl_1;
wire chrddl_2;
wire chrddl_3;
wire chrddl_4;
wire chrddl_5;
wire dinl_0;
wire dinl_1;
wire dinl_2;
wire dinl_3;
wire dinl_4;
wire dinl_5;
wire chrdd_0;
wire chrdd_1;
wire chrdd_2;
wire chrdd_3;
wire chrdd_4;
wire chrdd_5;
wire cd_0;
wire cdco_0;
wire vcc;
wire cdco_5;
wire cd_1;
wire cd_2;
wire cd_3;
wire cd_4;
wire cd_5;
wire cdco_1;
wire cdco_2;
wire cdco_3;
wire cdco_4;
wire gt;
wire gnd;
wire chrq;
wire odd;
wire extra;
wire chrinl;
wire cld_0;
wire cldco_0;
wire cldd_0;
wire clkdiv;
wire cld_1;
wire cld_2;
wire cld_3;
wire cld_4;
wire cld_5;
wire cld_6;
wire cld_7;
wire cld_8;
wire cld_9;
wire cldco_1;
wire cldco_2;
wire cldco_3;
wire cldco_4;
wire cldco_5;
wire cldco_6;
wire cldco_7;
wire cldco_8;
wire cldco_9;
wire cldd_1;
wire cldd_2;
wire cldd_3;
wire cldd_4;
wire cldd_5;
wire cldd_6;
wire cldd_7;
wire cldd_8;
wire cldd_9;
wire clddl_0;
wire vd_0;
wire vdco_0;
wire vdd_0;
wire vclkdivi;
wire vd_1;
wire vd_2;
wire vd_3;
wire vd_4;
wire vd_5;
wire vd_6;
wire vd_7;
wire vd_8;
wire vd_9;
wire vdco_1;
wire vdco_2;
wire vdco_3;
wire vdco_4;
wire vdco_5;
wire vdco_6;
wire vdco_7;
wire vdco_8;
wire vdco_9;
wire vdd_1;
wire vdd_2;
wire vdd_3;
wire vdd_4;
wire vdd_5;
wire vdd_6;
wire vdd_7;
wire vdd_8;
wire vdd_9;
wire testl;
wire tres;

// Output buffers
wire cfgw_obuf;
wire pclkout_obuf;
wire resetl_obuf;


// Output buffers
assign cfgw = cfgw_obuf;
assign pclkout = pclkout_obuf;
assign resetl = resetl_obuf;


// JCLK.NET (25) - rsetldb : nivm
assign resetldb = resetli;

// JCLK.NET (26) - resetl : bniv34
assign resetl_obuf = resetldb;

// JCLK.NET (32) - pclk2 : fd2
fd2 pclk2_inst
(
	.q /* OUT */ (pclk2),
	.qn /* OUT */ (pclk2l),
	.d /* IN */ (pclk2l),
	.cp /* IN */ (pclkosc),
	.cd /* IN */ (tresl),
	.sys_clk(sys_clk) // Generated
);

// JCLK.NET (33) - pclkout : mx2
assign pclkout_obuf = (divide) ? pclk2 : pclkosc;

// JCLK.NET (37) - cclk : fd2
fd2 cclk_inst
(
	.q /* OUT */ (cpuclk),
	.qn /* OUT */ (cpuclkl),
	.d /* IN */ (cpuclkl),
	.cp /* IN */ (pclkout_obuf),
	.cd /* IN */ (tresl),
	.sys_clk(sys_clk) // Generated
);

// JCLK.NET (41) - pclk : nivh
assign pclk = pclkin;

// JCLK.NET (59) - clk1 : niv
assign clk1 = pclk;

// JCLK.NET (60) - clk2 : nivu
assign clk2 = clk1;

// JCLK.NET (61) - clk : bniv310
assign clk = clk2;

// JCLK.NET (66) - tlw : ivu
assign tlw = ~clk1;

// JCLK.NET (87) - cfgwl : fd1q
fd1q cfgwl_inst
(
	.q /* OUT */ (cfgwl),
	.d /* IN */ (resetl_obuf),
	.cp /* IN */ (pclkosc),
	.sys_clk(sys_clk) // Generated
);

// JCLK.NET (88) - cfgw : iv
assign cfgw_obuf = ~cfgwl;

// JCLK.NET (89) - cfgend : fd2q
fd2q cfgend_inst
(
	.q /* OUT */ (cfgend),
	.d /* IN */ (cfgwl),
	.cp /* IN */ (pclkosc),
	.cd /* IN */ (resetl_obuf),
	.sys_clk(sys_clk) // Generated
);

// JCLK.NET (90) - cfgeni : nd2
assign cfgeni = ~(cfgend & notndtest);

// JCLK.NET (91) - cfgen : ivh
assign cfgen = ~cfgeni;

// JCLK.NET (93) - notndtest : iv
assign notndtest = ~ndtest;

// JCLK.NET (100) - divide : ldp1q
ldp1q divide_inst
(
	.q /* OUT */ (divide),
	.d /* IN */ (cfg_2),
	.g /* IN */ (cfgw_obuf),
	.sys_clk(sys_clk) // Generated
);

// JCLK.NET (102) - external : ldp1q
ldp1q external_inst
(
	.q /* OUT */ (external),
	.d /* IN */ (cfg_3),
	.g /* IN */ (cfgw_obuf),
	.sys_clk(sys_clk) // Generated
);

// JCLK.NET (103) - internal : iv
assign internal = ~external;

// JCLK.NET (111) - chrddl[0-5] : ldp2q
ldp2q chrddl_from_0_to_5_inst_0
(
	.q /* OUT */ (chrddl_0),
	.d /* IN */ (dinl_0),
	.g /* IN */ (clk3w),
	.cd /* IN */ (resetl_obuf),
	.sys_clk(sys_clk) // Generated
);
ldp2q chrddl_from_0_to_5_inst_1
(
	.q /* OUT */ (chrddl_1),
	.d /* IN */ (dinl_1),
	.g /* IN */ (clk3w),
	.cd /* IN */ (resetl_obuf),
	.sys_clk(sys_clk) // Generated
);
ldp2q chrddl_from_0_to_5_inst_2
(
	.q /* OUT */ (chrddl_2),
	.d /* IN */ (dinl_2),
	.g /* IN */ (clk3w),
	.cd /* IN */ (resetl_obuf),
	.sys_clk(sys_clk) // Generated
);
ldp2q chrddl_from_0_to_5_inst_3
(
	.q /* OUT */ (chrddl_3),
	.d /* IN */ (dinl_3),
	.g /* IN */ (clk3w),
	.cd /* IN */ (resetl_obuf),
	.sys_clk(sys_clk) // Generated
);
ldp2q chrddl_from_0_to_5_inst_4
(
	.q /* OUT */ (chrddl_4),
	.d /* IN */ (dinl_4),
	.g /* IN */ (clk3w),
	.cd /* IN */ (resetl_obuf),
	.sys_clk(sys_clk) // Generated
);
ldp2q chrddl_from_0_to_5_inst_5
(
	.q /* OUT */ (chrddl_5),
	.d /* IN */ (dinl_5),
	.g /* IN */ (clk3w),
	.cd /* IN */ (resetl_obuf),
	.sys_clk(sys_clk) // Generated
);

// JCLK.NET (112) - chrdd[0-5] : iv
assign chrdd_0 = ~chrddl_0;
assign chrdd_1 = ~chrddl_1;
assign chrdd_2 = ~chrddl_2;
assign chrdd_3 = ~chrddl_3;
assign chrdd_4 = ~chrddl_4;
assign chrdd_5 = ~chrddl_5;

// JCLK.NET (113) - vclken : ldp2q
ldp2q vclken_inst
(
	.q /* OUT */ (vclken),
	.d /* IN */ (din_15),
	.g /* IN */ (clk3w),
	.cd /* IN */ (resetl_obuf),
	.sys_clk(sys_clk) // Generated
);

// JCLK.NET (114) - cd[0] : dncnt
j_dncnt cd_index_0_inst
(
	.q /* OUT */ (cd_0),
	.co /* OUT */ (cdco_0),
	.d /* IN */ (chrdd_0),
	.clk /* IN */ (chrin),
	.ci /* IN */ (vcc),
	.ld /* IN */ (cdco_5),
	.resl /* IN */ (tresl),
	.sys_clk(sys_clk) // Generated
);

// JCLK.NET (115) - cd[1-5] : dncnt
j_dncnt cd_from_1_to_5_inst_0
(
	.q /* OUT */ (cd_1),
	.co /* OUT */ (cdco_1),
	.d /* IN */ (chrdd_1),
	.clk /* IN */ (chrin),
	.ci /* IN */ (cdco_0),
	.ld /* IN */ (cdco_5),
	.resl /* IN */ (tresl),
	.sys_clk(sys_clk) // Generated
);
j_dncnt cd_from_1_to_5_inst_1
(
	.q /* OUT */ (cd_2),
	.co /* OUT */ (cdco_2),
	.d /* IN */ (chrdd_2),
	.clk /* IN */ (chrin),
	.ci /* IN */ (cdco_1),
	.ld /* IN */ (cdco_5),
	.resl /* IN */ (tresl),
	.sys_clk(sys_clk) // Generated
);
j_dncnt cd_from_1_to_5_inst_2
(
	.q /* OUT */ (cd_3),
	.co /* OUT */ (cdco_3),
	.d /* IN */ (chrdd_3),
	.clk /* IN */ (chrin),
	.ci /* IN */ (cdco_2),
	.ld /* IN */ (cdco_5),
	.resl /* IN */ (tresl),
	.sys_clk(sys_clk) // Generated
);
j_dncnt cd_from_1_to_5_inst_3
(
	.q /* OUT */ (cd_4),
	.co /* OUT */ (cdco_4),
	.d /* IN */ (chrdd_4),
	.clk /* IN */ (chrin),
	.ci /* IN */ (cdco_3),
	.ld /* IN */ (cdco_5),
	.resl /* IN */ (tresl),
	.sys_clk(sys_clk) // Generated
);
j_dncnt cd_from_1_to_5_inst_4
(
	.q /* OUT */ (cd_5),
	.co /* OUT */ (cdco_5),
	.d /* IN */ (chrdd_5),
	.clk /* IN */ (chrin),
	.ci /* IN */ (cdco_4),
	.ld /* IN */ (cdco_5),
	.resl /* IN */ (tresl),
	.sys_clk(sys_clk) // Generated
);

// JCLK.NET (117) - cd : join
assign cd[0] = cd_0;
assign cd[1] = cd_1;
assign cd[2] = cd_2;
assign cd[3] = cd_3;
assign cd[4] = cd_4;
assign cd[5] = cd_5;

// JCLK.NET (118) - cdu : dummy

// JCLK.NET (123) - gt : agtb
j_agtb gt_inst
(
	.z /* OUT */ (gt),
	.a_0 /* IN */ (cd_0),
	.a_1 /* IN */ (cd_1),
	.a_2 /* IN */ (cd_2),
	.a_3 /* IN */ (cd_3),
	.a_4 /* IN */ (cd_4),
	.a_5 /* IN */ (cd_5),
	.b_0 /* IN */ (chrdd_1),
	.b_1 /* IN */ (chrdd_2),
	.b_2 /* IN */ (chrdd_3),
	.b_3 /* IN */ (chrdd_4),
	.b_4 /* IN */ (chrdd_5),
	.b_5 /* IN */ (gnd)
);

// JCLK.NET (124) - chrq : fd2q
fd2q chrq_inst
(
	.q /* OUT */ (chrq),
	.d /* IN */ (gt),
	.cp /* IN */ (chrin),
	.cd /* IN */ (tresl),
	.sys_clk(sys_clk) // Generated
);

// JCLK.NET (125) - gnd : tie0
assign gnd = 1'b0;

// JCLK.NET (129) - odd : an2
assign odd = chrddl_0 & chrq;

// JCLK.NET (130) - extra : fd2q
fd2q extra_inst
(
	.q /* OUT */ (extra),
	.d /* IN */ (odd),
	.cp /* IN */ (chrinl),
	.cd /* IN */ (tresl),
	.sys_clk(sys_clk) // Generated
);

// JCLK.NET (131) - chrinl : iv
assign chrinl = ~chrin;

// JCLK.NET (133) - chrdiv : or2
assign chrdiv = chrq | extra;

// JCLK.NET (137) - vcc : tie1
assign vcc = 1'b1;

// JCLK.NET (138) - cld[0] : dncnt
j_dncnt cld_index_0_inst
(
	.q /* OUT */ (cld_0),
	.co /* OUT */ (cldco_0),
	.d /* IN */ (cldd_0),
	.clk /* IN */ (pclkosc),
	.ci /* IN */ (vcc),
	.ld /* IN */ (clkdiv),
	.resl /* IN */ (tresl),
	.sys_clk(sys_clk) // Generated
);

// JCLK.NET (139) - cld[1-9] : dncnt
j_dncnt cld_from_1_to_9_inst_0
(
	.q /* OUT */ (cld_1),
	.co /* OUT */ (cldco_1),
	.d /* IN */ (cldd_1),
	.clk /* IN */ (pclkosc),
	.ci /* IN */ (cldco_0),
	.ld /* IN */ (clkdiv),
	.resl /* IN */ (tresl),
	.sys_clk(sys_clk) // Generated
);
j_dncnt cld_from_1_to_9_inst_1
(
	.q /* OUT */ (cld_2),
	.co /* OUT */ (cldco_2),
	.d /* IN */ (cldd_2),
	.clk /* IN */ (pclkosc),
	.ci /* IN */ (cldco_1),
	.ld /* IN */ (clkdiv),
	.resl /* IN */ (tresl),
	.sys_clk(sys_clk) // Generated
);
j_dncnt cld_from_1_to_9_inst_2
(
	.q /* OUT */ (cld_3),
	.co /* OUT */ (cldco_3),
	.d /* IN */ (cldd_3),
	.clk /* IN */ (pclkosc),
	.ci /* IN */ (cldco_2),
	.ld /* IN */ (clkdiv),
	.resl /* IN */ (tresl),
	.sys_clk(sys_clk) // Generated
);
j_dncnt cld_from_1_to_9_inst_3
(
	.q /* OUT */ (cld_4),
	.co /* OUT */ (cldco_4),
	.d /* IN */ (cldd_4),
	.clk /* IN */ (pclkosc),
	.ci /* IN */ (cldco_3),
	.ld /* IN */ (clkdiv),
	.resl /* IN */ (tresl),
	.sys_clk(sys_clk) // Generated
);
j_dncnt cld_from_1_to_9_inst_4
(
	.q /* OUT */ (cld_5),
	.co /* OUT */ (cldco_5),
	.d /* IN */ (cldd_5),
	.clk /* IN */ (pclkosc),
	.ci /* IN */ (cldco_4),
	.ld /* IN */ (clkdiv),
	.resl /* IN */ (tresl),
	.sys_clk(sys_clk) // Generated
);
j_dncnt cld_from_1_to_9_inst_5
(
	.q /* OUT */ (cld_6),
	.co /* OUT */ (cldco_6),
	.d /* IN */ (cldd_6),
	.clk /* IN */ (pclkosc),
	.ci /* IN */ (cldco_5),
	.ld /* IN */ (clkdiv),
	.resl /* IN */ (tresl),
	.sys_clk(sys_clk) // Generated
);
j_dncnt cld_from_1_to_9_inst_6
(
	.q /* OUT */ (cld_7),
	.co /* OUT */ (cldco_7),
	.d /* IN */ (cldd_7),
	.clk /* IN */ (pclkosc),
	.ci /* IN */ (cldco_6),
	.ld /* IN */ (clkdiv),
	.resl /* IN */ (tresl),
	.sys_clk(sys_clk) // Generated
);
j_dncnt cld_from_1_to_9_inst_7
(
	.q /* OUT */ (cld_8),
	.co /* OUT */ (cldco_8),
	.d /* IN */ (cldd_8),
	.clk /* IN */ (pclkosc),
	.ci /* IN */ (cldco_7),
	.ld /* IN */ (clkdiv),
	.resl /* IN */ (tresl),
	.sys_clk(sys_clk) // Generated
);
j_dncnt cld_from_1_to_9_inst_8
(
	.q /* OUT */ (cld_9),
	.co /* OUT */ (cldco_9),
	.d /* IN */ (cldd_9),
	.clk /* IN */ (pclkosc),
	.ci /* IN */ (cldco_8),
	.ld /* IN */ (clkdiv),
	.resl /* IN */ (tresl),
	.sys_clk(sys_clk) // Generated
);

// JCLK.NET (140) - cldu[0-9] : dummy

// JCLK.NET (141) - clkdiv : nivm
assign clkdiv = cldco_9;

// JCLK.NET (142) - pclkdiv : fd1q
fd1q pclkdiv_inst
(
	.q /* OUT */ (pclkdiv),
	.d /* IN */ (clkdiv),
	.cp /* IN */ (pclkosc),
	.sys_clk(sys_clk) // Generated
);

// JCLK.NET (146) - dinl[0-5] : iv
assign dinl_0 = ~din_0;
assign dinl_1 = ~din_1;
assign dinl_2 = ~din_2;
assign dinl_3 = ~din_3;
assign dinl_4 = ~din_4;
assign dinl_5 = ~din_5;

// JCLK.NET (147) - clddl[0] : ldp2q
ldp2q clddl_index_0_inst
(
	.q /* OUT */ (clddl_0),
	.d /* IN */ (dinl_0),
	.g /* IN */ (clk1w),
	.cd /* IN */ (resetl_obuf),
	.sys_clk(sys_clk) // Generated
);

// JCLK.NET (148) - cldd[0] : iv
assign cldd_0 = ~clddl_0;

// JCLK.NET (149) - cldd[1-9] : ldp2q
ldp2q cldd_from_1_to_9_inst_0
(
	.q /* OUT */ (cldd_1),
	.d /* IN */ (din_1),
	.g /* IN */ (clk1w),
	.cd /* IN */ (resetl_obuf),
	.sys_clk(sys_clk) // Generated
);
ldp2q cldd_from_1_to_9_inst_1
(
	.q /* OUT */ (cldd_2),
	.d /* IN */ (din_2),
	.g /* IN */ (clk1w),
	.cd /* IN */ (resetl_obuf),
	.sys_clk(sys_clk) // Generated
);
ldp2q cldd_from_1_to_9_inst_2
(
	.q /* OUT */ (cldd_3),
	.d /* IN */ (din_3),
	.g /* IN */ (clk1w),
	.cd /* IN */ (resetl_obuf),
	.sys_clk(sys_clk) // Generated
);
ldp2q cldd_from_1_to_9_inst_3
(
	.q /* OUT */ (cldd_4),
	.d /* IN */ (din_4),
	.g /* IN */ (clk1w),
	.cd /* IN */ (resetl_obuf),
	.sys_clk(sys_clk) // Generated
);
ldp2q cldd_from_1_to_9_inst_4
(
	.q /* OUT */ (cldd_5),
	.d /* IN */ (din_5),
	.g /* IN */ (clk1w),
	.cd /* IN */ (resetl_obuf),
	.sys_clk(sys_clk) // Generated
);
ldp2q cldd_from_1_to_9_inst_5
(
	.q /* OUT */ (cldd_6),
	.d /* IN */ (din_6),
	.g /* IN */ (clk1w),
	.cd /* IN */ (resetl_obuf),
	.sys_clk(sys_clk) // Generated
);
ldp2q cldd_from_1_to_9_inst_6
(
	.q /* OUT */ (cldd_7),
	.d /* IN */ (din_7),
	.g /* IN */ (clk1w),
	.cd /* IN */ (resetl_obuf),
	.sys_clk(sys_clk) // Generated
);
ldp2q cldd_from_1_to_9_inst_7
(
	.q /* OUT */ (cldd_8),
	.d /* IN */ (din_8),
	.g /* IN */ (clk1w),
	.cd /* IN */ (resetl_obuf),
	.sys_clk(sys_clk) // Generated
);
ldp2q cldd_from_1_to_9_inst_8
(
	.q /* OUT */ (cldd_9),
	.d /* IN */ (din_9),
	.g /* IN */ (clk1w),
	.cd /* IN */ (resetl_obuf),
	.sys_clk(sys_clk) // Generated
);

// JCLK.NET (153) - vd[0] : dncnt
j_dncnt vd_index_0_inst
(
	.q /* OUT */ (vd_0),
	.co /* OUT */ (vdco_0),
	.d /* IN */ (vdd_0),
	.clk /* IN */ (vclkin),
	.ci /* IN */ (vcc),
	.ld /* IN */ (vclkdivi),
	.resl /* IN */ (tresl),
	.sys_clk(sys_clk) // Generated
);

// JCLK.NET (154) - vd[1-9] : dncnt
j_dncnt vd_from_1_to_9_inst_0
(
	.q /* OUT */ (vd_1),
	.co /* OUT */ (vdco_1),
	.d /* IN */ (vdd_1),
	.clk /* IN */ (vclkin),
	.ci /* IN */ (vdco_0),
	.ld /* IN */ (vclkdivi),
	.resl /* IN */ (tresl),
	.sys_clk(sys_clk) // Generated
);
j_dncnt vd_from_1_to_9_inst_1
(
	.q /* OUT */ (vd_2),
	.co /* OUT */ (vdco_2),
	.d /* IN */ (vdd_2),
	.clk /* IN */ (vclkin),
	.ci /* IN */ (vdco_1),
	.ld /* IN */ (vclkdivi),
	.resl /* IN */ (tresl),
	.sys_clk(sys_clk) // Generated
);
j_dncnt vd_from_1_to_9_inst_2
(
	.q /* OUT */ (vd_3),
	.co /* OUT */ (vdco_3),
	.d /* IN */ (vdd_3),
	.clk /* IN */ (vclkin),
	.ci /* IN */ (vdco_2),
	.ld /* IN */ (vclkdivi),
	.resl /* IN */ (tresl),
	.sys_clk(sys_clk) // Generated
);
j_dncnt vd_from_1_to_9_inst_3
(
	.q /* OUT */ (vd_4),
	.co /* OUT */ (vdco_4),
	.d /* IN */ (vdd_4),
	.clk /* IN */ (vclkin),
	.ci /* IN */ (vdco_3),
	.ld /* IN */ (vclkdivi),
	.resl /* IN */ (tresl),
	.sys_clk(sys_clk) // Generated
);
j_dncnt vd_from_1_to_9_inst_4
(
	.q /* OUT */ (vd_5),
	.co /* OUT */ (vdco_5),
	.d /* IN */ (vdd_5),
	.clk /* IN */ (vclkin),
	.ci /* IN */ (vdco_4),
	.ld /* IN */ (vclkdivi),
	.resl /* IN */ (tresl),
	.sys_clk(sys_clk) // Generated
);
j_dncnt vd_from_1_to_9_inst_5
(
	.q /* OUT */ (vd_6),
	.co /* OUT */ (vdco_6),
	.d /* IN */ (vdd_6),
	.clk /* IN */ (vclkin),
	.ci /* IN */ (vdco_5),
	.ld /* IN */ (vclkdivi),
	.resl /* IN */ (tresl),
	.sys_clk(sys_clk) // Generated
);
j_dncnt vd_from_1_to_9_inst_6
(
	.q /* OUT */ (vd_7),
	.co /* OUT */ (vdco_7),
	.d /* IN */ (vdd_7),
	.clk /* IN */ (vclkin),
	.ci /* IN */ (vdco_6),
	.ld /* IN */ (vclkdivi),
	.resl /* IN */ (tresl),
	.sys_clk(sys_clk) // Generated
);
j_dncnt vd_from_1_to_9_inst_7
(
	.q /* OUT */ (vd_8),
	.co /* OUT */ (vdco_8),
	.d /* IN */ (vdd_8),
	.clk /* IN */ (vclkin),
	.ci /* IN */ (vdco_7),
	.ld /* IN */ (vclkdivi),
	.resl /* IN */ (tresl),
	.sys_clk(sys_clk) // Generated
);
j_dncnt vd_from_1_to_9_inst_8
(
	.q /* OUT */ (vd_9),
	.co /* OUT */ (vdco_9),
	.d /* IN */ (vdd_9),
	.clk /* IN */ (vclkin),
	.ci /* IN */ (vdco_8),
	.ld /* IN */ (vclkdivi),
	.resl /* IN */ (tresl),
	.sys_clk(sys_clk) // Generated
);

// JCLK.NET (155) - vdu[0-9] : dummy

// JCLK.NET (156) - vclkdivi : nivm
assign vclkdivi = vdco_9;

// JCLK.NET (157) - vclkdiv : fd1q
fd1q vclkdiv_inst
(
	.q /* OUT */ (vclkdiv),
	.d /* IN */ (vclkdivi),
	.cp /* IN */ (vclkin),
	.sys_clk(sys_clk) // Generated
);

// JCLK.NET (159) - vdd[0-9] : ldp2q
ldp2q vdd_from_0_to_9_inst_0
(
	.q /* OUT */ (vdd_0),
	.d /* IN */ (din_0),
	.g /* IN */ (clk2w),
	.cd /* IN */ (resetl_obuf),
	.sys_clk(sys_clk) // Generated
);
ldp2q vdd_from_0_to_9_inst_1
(
	.q /* OUT */ (vdd_1),
	.d /* IN */ (din_1),
	.g /* IN */ (clk2w),
	.cd /* IN */ (resetl_obuf),
	.sys_clk(sys_clk) // Generated
);
ldp2q vdd_from_0_to_9_inst_2
(
	.q /* OUT */ (vdd_2),
	.d /* IN */ (din_2),
	.g /* IN */ (clk2w),
	.cd /* IN */ (resetl_obuf),
	.sys_clk(sys_clk) // Generated
);
ldp2q vdd_from_0_to_9_inst_3
(
	.q /* OUT */ (vdd_3),
	.d /* IN */ (din_3),
	.g /* IN */ (clk2w),
	.cd /* IN */ (resetl_obuf),
	.sys_clk(sys_clk) // Generated
);
ldp2q vdd_from_0_to_9_inst_4
(
	.q /* OUT */ (vdd_4),
	.d /* IN */ (din_4),
	.g /* IN */ (clk2w),
	.cd /* IN */ (resetl_obuf),
	.sys_clk(sys_clk) // Generated
);
ldp2q vdd_from_0_to_9_inst_5
(
	.q /* OUT */ (vdd_5),
	.d /* IN */ (din_5),
	.g /* IN */ (clk2w),
	.cd /* IN */ (resetl_obuf),
	.sys_clk(sys_clk) // Generated
);
ldp2q vdd_from_0_to_9_inst_6
(
	.q /* OUT */ (vdd_6),
	.d /* IN */ (din_6),
	.g /* IN */ (clk2w),
	.cd /* IN */ (resetl_obuf),
	.sys_clk(sys_clk) // Generated
);
ldp2q vdd_from_0_to_9_inst_7
(
	.q /* OUT */ (vdd_7),
	.d /* IN */ (din_7),
	.g /* IN */ (clk2w),
	.cd /* IN */ (resetl_obuf),
	.sys_clk(sys_clk) // Generated
);
ldp2q vdd_from_0_to_9_inst_8
(
	.q /* OUT */ (vdd_8),
	.d /* IN */ (din_8),
	.g /* IN */ (clk2w),
	.cd /* IN */ (resetl_obuf),
	.sys_clk(sys_clk) // Generated
);
ldp2q vdd_from_0_to_9_inst_9
(
	.q /* OUT */ (vdd_9),
	.d /* IN */ (din_9),
	.g /* IN */ (clk2w),
	.cd /* IN */ (resetl_obuf),
	.sys_clk(sys_clk) // Generated
);

// JCLK.NET (161) - testl : iv
assign testl = ~test;

// JCLK.NET (162) - tres : nr2
assign tres = ~(resetli | testl);

// JCLK.NET (163) - tresl : ivu
assign tresl = ~tres;
endmodule
/* verilator lint_on LITENDIAN */
