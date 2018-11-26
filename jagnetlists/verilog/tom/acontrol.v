/* verilator lint_off LITENDIAN */
`include "defs.v"

module acontrol
(
	output addasel_0,
	output addasel_1,
	output addasel_2,
	output addbsel_0,
	output addbsel_1,
	output addqsel,
	output adda_xconst_0,
	output adda_xconst_1,
	output adda_xconst_2,
	output adda_yconst,
	output addareg,
	output a1fracldi,
	output a1ptrldi,
	output a2ptrldi,
	output dend_0,
	output dend_1,
	output dend_2,
	output dend_3,
	output dend_4,
	output dend_5,
	output dsta2,
	output dstart_0,
	output dstart_1,
	output dstart_2,
	output dstart_3,
	output dstart_4,
	output dstart_5,
	output [0:15] dstxp,
	output modx_0,
	output modx_1,
	output modx_2,
	output phrase_cycle,
	output phrase_mode,
	output pixsize_0,
	output pixsize_1,
	output pixsize_2,
	output pwidth_0,
	output pwidth_1,
	output pwidth_2,
	output pwidth_3,
	output srcshift_0,
	output srcshift_1,
	output srcshift_2,
	output srcshift_3,
	output srcshift_4,
	output srcshift_5,
	output suba_x,
	output suba_y,
	input a1_pixsize_0,
	input a1_pixsize_1,
	input a1_pixsize_2,
	input [0:14] a1_win_x,
	input [0:15] a1_x,
	input a1addx_0,
	input a1addx_1,
	input a1addy,
	input a1xsign,
	input a1ysign,
	input a1updatei,
	input a1fupdatei,
	input a2_pixsize_0,
	input a2_pixsize_1,
	input a2_pixsize_2,
	input [0:15] a2_x,
	input a2addx_0,
	input a2addx_1,
	input a2addy,
	input a2xsign,
	input a2ysign,
	input a2updatei,
	input atick_0,
	input atick_1,
	input aticki_0,
	input bcompen,
	input clk,
	input cmdld,
	input dest_cycle_1,
	input dsta_addi,
	input [0:31] gpu_din,
	input icount_0,
	input icount_1,
	input icount_2,
	input inner0,
	input pixa_0,
	input pixa_1,
	input pixa_2,
	input srca_addi,
	input srcen,
	input sshftld,
	input step_inner,
	input sys_clk // Generated
);
wire one;
wire zero;
wire a1update;
wire a1update_n;
wire a1fupdate;
wire a1fupdate_n;
wire a1fupdatei_n;
wire a2update;
wire a2update_n;
wire a1addx_n_0;
wire a1addx_n_1;
wire a2addx_n_0;
wire a2addx_n_1;
wire dsta2_n;
wire a1_addi;
wire a2_addi;
wire a1_add;
wire a1_add_n;
wire a2_add;
wire a2_add_n;
wire a2_addb;
wire addaseli_2;
wire addaseli_1;
wire addas0t;
wire addaseli_0;
wire a1_pixsize_n_0;
wire a1_pixsize_n_1;
wire a1_pixsize_n_2;
wire a1xp_0;
wire a1xp1t_0;
wire a1xp1t_1;
wire a1xp_1;
wire a1xp2t;
wire a1xp_2;
wire a2_pixsize_n_0;
wire a2_pixsize_n_1;
wire a2_pixsize_n_2;
wire a2xp_0;
wire a2xp1t_0;
wire a2xp1t_1;
wire a2xp_1;
wire a2xp2t;
wire a2xp_2;
wire a1_xconst_0;
wire a1_xconst_1;
wire a1_xconst_2;
wire a2_xconst_0;
wire a2_xconst_1;
wire a2_xconst_2;
wire addaregt_0;
wire addaregt_1;
wire addaregi;
wire addbseli_0;
wire addbsl1t;
wire addbseli_1;
wire maska1;
wire maska1b_0;
wire maska1b_1;
wire maska1b_2;
wire maska2;
wire maska2b_0;
wire maska2b_1;
wire maska2b_2;
wire suba_xt_0;
wire suba_xt_1;
wire suba_yt_0;
wire suba_yt_1;
wire a1pldt;
wire a1fldt;
wire a2pldt;
wire mdt_0;
wire mdt_1;
wire phrase_mode_n;
wire pcsela2;
wire pcsela2_n;
wire phct_0;
wire phct_1;
wire pixsize_n_0;
wire pixsize_n_1;
wire pixsize_n_2;
wire smask_3;
wire mask4t_0;
wire mask4t_1;
wire smask_4;
wire mask5t_0;
wire mask5t_1;
wire mask5t_2;
wire smask_5;
wire dstarta_0;
wire dstarta_1;
wire dstarta_2;
wire dstarta_3;
wire dstarta_4;
wire dstarta_5;
wire mpipe_0;
wire dstartb_0;
wire dstartb_1;
wire dstartb_2;
wire dstartb_3;
wire dstartb_4;
wire dstartb_5;
wire dstartbl_0;
wire dstartbl_1;
wire dstartbl_2;
wire dstartbl_3;
wire dstartbl_4;
wire dstartbl_5;
wire dstartp_0;
wire dstartp_1;
wire dstartp_2;
wire dstartp_3;
wire dstartp_4;
wire dstartp_5;
wire pseq_1;
wire pseq_2;
wire pseq_3;
wire pseq_4;
wire pseq_5;
wire pseq_6;
wire pseq_7;
wire pseq_8;
wire pseq_9;
wire pseq_10;
wire pseq_11;
wire pseq_12;
wire pseq_13;
wire pseq_14;
wire rmpt_0;
wire rmpt_1;
wire penden;
wire pixel8;
wire pixel16;
wire pixel32;
wire wmb_3;
wire wmb4t_0;
wire wmb4t_1;
wire wmb_4;
wire wmb5t_0;
wire wmb5t_1;
wire wmb5t_2;
wire wmb_5;
wire window_mask_3;
wire window_mask_4;
wire window_mask_5;
wire imb_3;
wire imb4t_0;
wire imb4t_1;
wire imb_4;
wire imb5t_0;
wire imb5t_1;
wire imb5t_2;
wire imb_5;
wire inner_mask_3;
wire inner_mask_4;
wire inner_mask_5;
wire window_mask_6;
wire inner_mask_6;
wire wgt;
wire dummy_0;
wire dummy_1;
wire emask_3;
wire emask_4;
wire emask_5;
wire pm_0;
wire pm_1;
wire pm_2;
wire pm_3;
wire pm_4;
wire pm_5;
wire pma_0;
wire pmc_0;
wire pma_1;
wire pmc_1;
wire pma_2;
wire pmc_2;
wire pma_3;
wire pmc_3;
wire pma_4;
wire pmc_4;
wire pma_5;
wire denda_0;
wire denda_1;
wire denda_2;
wire denda_3;
wire denda_4;
wire denda_5;
wire dendb_0;
wire dendb_1;
wire dendb_2;
wire dendb_3;
wire dendb_4;
wire dendb_5;
wire dendbl_0;
wire dendbl_1;
wire dendbl_2;
wire dendbl_3;
wire dendbl_4;
wire dendbl_5;
wire dendp_0;
wire dendp_1;
wire dendp_2;
wire dendp_3;
wire dendp_4;
wire dendp_5;
wire srcxp_n_0;
wire srcxp_n_1;
wire srcxp_n_2;
wire srcxp_n_3;
wire srcxp_n_4;
wire srcxp_n_5;
wire shftt_0;
wire shfcy_0;
wire shftt_1;
wire shftt_2;
wire shftt_3;
wire shftt_4;
wire shftt_5;
wire shfcy_1;
wire shfcy_2;
wire shfcy_3;
wire shfcy_4;
wire shfcy_5;
wire shftv_0;
wire shftv1t;
wire shftv_1;
wire shftv_2;
wire shftv_3;
wire shftv_4;
wire shftv_5;
wire pobb0t;
wire pobb_0;
wire pobb1t;
wire pobb_1;
wire pobb_2;
wire pobbsel;
wire loshen_n;
wire loshd_0;
wire loshd_1;
wire loshd_2;
wire shfti_0;
wire shfti_1;
wire shfti_2;
wire hishen_n;
wire shfti_3;
wire shfti_4;
wire shfti_5;
wire dstartp_n_3;
wire dstartp_n_4;
wire dstartp_n_5;
wire pwc_0;
wire pwc_1;
wire pwc_2;

// Output buffers
wire dsta2_obuf;
wire dstxp_b0_obuf;
wire dstxp_b1_obuf;
wire dstxp_b2_obuf;
wire dstxp_b3_obuf;
wire dstxp_b4_obuf;
wire dstxp_b5_obuf;
wire dstxp_b6_obuf;
wire dstxp_b7_obuf;
wire dstxp_b8_obuf;
wire dstxp_b9_obuf;
wire dstxp_b10_obuf;
wire dstxp_b11_obuf;
wire dstxp_b12_obuf;
wire dstxp_b13_obuf;
wire dstxp_b14_obuf;
wire phrase_mode_obuf;
wire pixsize_0_obuf;
wire pixsize_1_obuf;
wire pixsize_2_obuf;
wire srcshift_0_obuf;
wire srcshift_1_obuf;
wire srcshift_2_obuf;
wire srcshift_3_obuf;
wire srcshift_4_obuf;
wire srcshift_5_obuf;


// Output buffers
assign dsta2 = dsta2_obuf;
assign dstxp[0] = dstxp_b0_obuf;
assign dstxp[1] = dstxp_b1_obuf;
assign dstxp[2] = dstxp_b2_obuf;
assign dstxp[3] = dstxp_b3_obuf;
assign dstxp[4] = dstxp_b4_obuf;
assign dstxp[5] = dstxp_b5_obuf;
assign dstxp[6] = dstxp_b6_obuf;
assign dstxp[7] = dstxp_b7_obuf;
assign dstxp[8] = dstxp_b8_obuf;
assign dstxp[9] = dstxp_b9_obuf;
assign dstxp[10] = dstxp_b10_obuf;
assign dstxp[11] = dstxp_b11_obuf;
assign dstxp[12] = dstxp_b12_obuf;
assign dstxp[13] = dstxp_b13_obuf;
assign dstxp[14] = dstxp_b14_obuf;
assign phrase_mode = phrase_mode_obuf;
assign pixsize_0 = pixsize_0_obuf;
assign pixsize_1 = pixsize_1_obuf;
assign pixsize_2 = pixsize_2_obuf;
assign srcshift_0 = srcshift_0_obuf;
assign srcshift_1 = srcshift_1_obuf;
assign srcshift_2 = srcshift_2_obuf;
assign srcshift_3 = srcshift_3_obuf;
assign srcshift_4 = srcshift_4_obuf;
assign srcshift_5 = srcshift_5_obuf;


// ACONTROL.NET (74) - one : tie1
assign one = 1'b1;

// ACONTROL.NET (75) - zero : tie0
assign zero = 1'b0;

// ACONTROL.NET (79) - dsta2 : fdsyncu
fdsyncu dsta2_inst
(
	.q /* OUT */ (dsta2_obuf),
	.d /* IN */ (gpu_din[11]),
	.ld /* IN */ (cmdld),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// ACONTROL.NET (83) - a1update : fd1
fd1 a1update_inst
(
	.q /* OUT */ (a1update),
	.qn /* OUT */ (a1update_n),
	.d /* IN */ (a1updatei),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// ACONTROL.NET (84) - a1fupdate : fd1
fd1 a1fupdate_inst
(
	.q /* OUT */ (a1fupdate),
	.qn /* OUT */ (a1fupdate_n),
	.d /* IN */ (a1fupdatei),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// ACONTROL.NET (85) - a1fupdate\ : iv
assign a1fupdatei_n = ~a1fupdatei;

// ACONTROL.NET (86) - a2update : fd1
fd1 a2update_inst
(
	.q /* OUT */ (a2update),
	.qn /* OUT */ (a2update_n),
	.d /* IN */ (a2updatei),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// ACONTROL.NET (87) - a1addx\[0-1] : iv
assign a1addx_n_0 = ~a1addx_0;
assign a1addx_n_1 = ~a1addx_1;

// ACONTROL.NET (88) - a2addx\[0-1] : iv
assign a2addx_n_0 = ~a2addx_0;
assign a2addx_n_1 = ~a2addx_1;

// ACONTROL.NET (89) - dsta2\ : iv
assign dsta2_n = ~dsta2_obuf;

// ACONTROL.NET (93) - a1_addi : mx2
assign a1_addi = (dsta2_obuf) ? srca_addi : dsta_addi;

// ACONTROL.NET (94) - a2_addi : mx2
assign a2_addi = (dsta2_obuf) ? dsta_addi : srca_addi;

// ACONTROL.NET (95) - a1_add : fd1
fd1 a1_add_inst
(
	.q /* OUT */ (a1_add),
	.qn /* OUT */ (a1_add_n),
	.d /* IN */ (a1_addi),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// ACONTROL.NET (96) - a2_add : fd1
fd1 a2_add_inst
(
	.q /* OUT */ (a2_add),
	.qn /* OUT */ (a2_add_n),
	.d /* IN */ (a2_addi),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// ACONTROL.NET (97) - a2_addb : niv
assign a2_addb = a2_add;

// ACONTROL.NET (114) - addaseli[2] : join
assign addaseli_2 = a2updatei;

// ACONTROL.NET (115) - addaseli[1] : an3
assign addaseli_1 = a1_addi & a1addx_0 & a1addx_1;

// ACONTROL.NET (116) - addas0t : nd4
assign addas0t = ~(a1_addi & aticki_0 & a1addx_0 & a1addx_1);

// ACONTROL.NET (117) - addaseli[0] : nd2
assign addaseli_0 = ~(a1fupdatei_n & addas0t);

// ACONTROL.NET (118) - addasel[0-2] : fd1q
fd1q addasel_from_0_to_2_inst_0
(
	.q /* OUT */ (addasel_0),
	.d /* IN */ (addaseli_0),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q addasel_from_0_to_2_inst_1
(
	.q /* OUT */ (addasel_1),
	.d /* IN */ (addaseli_1),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q addasel_from_0_to_2_inst_2
(
	.q /* OUT */ (addasel_2),
	.d /* IN */ (addaseli_2),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// ACONTROL.NET (134) - a1_pixsize\[0-2] : iv
assign a1_pixsize_n_0 = ~a1_pixsize_0;
assign a1_pixsize_n_1 = ~a1_pixsize_1;
assign a1_pixsize_n_2 = ~a1_pixsize_2;

// ACONTROL.NET (135) - a1xp0 : join
assign a1xp_0 = a1_pixsize_0;

// ACONTROL.NET (136) - a1xp1t0 : nd2
assign a1xp1t_0 = ~(a1_pixsize_n_0 & a1_pixsize_n_1);

// ACONTROL.NET (137) - a1xp1t1 : nd3
assign a1xp1t_1 = ~(a1_pixsize_0 & a1_pixsize_1 & a1_pixsize_n_2);

// ACONTROL.NET (139) - a1xp1 : nd2
assign a1xp_1 = ~(a1xp1t_0 & a1xp1t_1);

// ACONTROL.NET (140) - a1xp2t : nd2
assign a1xp2t = ~(a1_pixsize_0 & a1_pixsize_1);

// ACONTROL.NET (141) - a1xp2 : an2
assign a1xp_2 = a1xp2t & a1_pixsize_n_2;

// ACONTROL.NET (142) - a2_pixsize\[0-2] : iv
assign a2_pixsize_n_0 = ~a2_pixsize_0;
assign a2_pixsize_n_1 = ~a2_pixsize_1;
assign a2_pixsize_n_2 = ~a2_pixsize_2;

// ACONTROL.NET (143) - a2xp0 : join
assign a2xp_0 = a2_pixsize_0;

// ACONTROL.NET (144) - a2xp1t0 : nd2
assign a2xp1t_0 = ~(a2_pixsize_n_0 & a2_pixsize_n_1);

// ACONTROL.NET (145) - a2xp1t1 : nd3
assign a2xp1t_1 = ~(a2_pixsize_0 & a2_pixsize_1 & a2_pixsize_n_2);

// ACONTROL.NET (147) - a2xp1 : nd2
assign a2xp_1 = ~(a2xp1t_0 & a2xp1t_1);

// ACONTROL.NET (148) - a2xp2t : nd2
assign a2xp2t = ~(a2_pixsize_0 & a2_pixsize_1);

// ACONTROL.NET (149) - a2xp2 : an2
assign a2xp_2 = a2xp2t & a2_pixsize_n_2;

// ACONTROL.NET (153) - a1_xconst[0] : aor1
assign a1_xconst_0 = (a1xp_0 & a1addx_n_0) | a1addx_1;

// ACONTROL.NET (155) - a1_xconst[1] : aor1
assign a1_xconst_1 = (a1xp_1 & a1addx_n_0) | a1addx_1;

// ACONTROL.NET (157) - a1_xconst[2] : aor1
assign a1_xconst_2 = (a1xp_2 & a1addx_n_0) | a1addx_1;

// ACONTROL.NET (159) - a2_xconst[0] : aor1
assign a2_xconst_0 = (a2xp_0 & a2addx_n_0) | a2addx_1;

// ACONTROL.NET (161) - a2_xconst[1] : aor1
assign a2_xconst_1 = (a2xp_1 & a2addx_n_0) | a2addx_1;

// ACONTROL.NET (163) - a2_xconst[2] : aor1
assign a2_xconst_2 = (a2xp_2 & a2addx_n_0) | a2addx_1;

// ACONTROL.NET (165) - adda_xconst[0-2] : mx2
assign adda_xconst_0 = (a2_addb) ? a2_xconst_0 : a1_xconst_0;
assign adda_xconst_1 = (a2_addb) ? a2_xconst_1 : a1_xconst_1;
assign adda_xconst_2 = (a2_addb) ? a2_xconst_2 : a1_xconst_2;

// ACONTROL.NET (170) - adda_yconst : niv
assign adda_yconst = a1addy;

// ACONTROL.NET (180) - addaregt[0] : an3
assign addaregt_0 = a1_addi & a1addx_0 & a1addx_1;

// ACONTROL.NET (181) - addaregt[1] : an3
assign addaregt_1 = a2_addi & a2addx_0 & a2addx_1;

// ACONTROL.NET (182) - addaregi : or5
assign addaregi = addaregt_0 | addaregt_1 | a1updatei | a1fupdatei | a2updatei;

// ACONTROL.NET (184) - addareg : fd1qu
fd1q addareg_inst
(
	.q /* OUT */ (addareg),
	.d /* IN */ (addaregi),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// ACONTROL.NET (196) - addbseli[0] : or2
assign addbseli_0 = a2updatei | a2_addi;

// ACONTROL.NET (197) - addbsel1t : nd4
assign addbsl1t = ~(a1_addi & aticki_0 & a1addx_0 & a1addx_1);

// ACONTROL.NET (199) - addbseli[1] : nd2
assign addbseli_1 = ~(a1fupdatei_n & addbsl1t);

// ACONTROL.NET (200) - addbsel[0-1] : fd1q
fd1q addbsel_from_0_to_1_inst_0
(
	.q /* OUT */ (addbsel_0),
	.d /* IN */ (addbseli_0),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q addbsel_from_0_to_1_inst_1
(
	.q /* OUT */ (addbsel_1),
	.d /* IN */ (addbseli_1),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// ACONTROL.NET (214) - maska1 : nr3
assign maska1 = ~(a1addx_0 | a1addx_1 | a1_add_n);

// ACONTROL.NET (215) - maska1b[0-2] : an2
assign maska1b_0 = maska1 & a1xp_0;
assign maska1b_1 = maska1 & a1xp_1;
assign maska1b_2 = maska1 & a1xp_2;

// ACONTROL.NET (216) - maska2 : nr3
assign maska2 = ~(a2addx_0 | a2addx_1 | a2_add_n);

// ACONTROL.NET (217) - maska2b[0-2] : an2
assign maska2b_0 = maska2 & a2xp_0;
assign maska2b_1 = maska2 & a2xp_1;
assign maska2b_2 = maska2 & a2xp_2;

// ACONTROL.NET (218) - modx[0-2] : mx2
assign modx_0 = (a2_addb) ? maska2b_0 : maska1b_0;
assign modx_1 = (a2_addb) ? maska2b_1 : maska1b_1;
assign modx_2 = (a2_addb) ? maska2b_2 : maska1b_2;

// ACONTROL.NET (224) - addqsel : or5
assign addqsel = a1_add | a2_add | a1update | a1fupdate | a2update;

// ACONTROL.NET (230) - suba_xt0 : nd4
assign suba_xt_0 = ~(a1_add & a1addx_0 & a1addx_n_1 & a1xsign);

// ACONTROL.NET (232) - suba_xt1 : nd4
assign suba_xt_1 = ~(a2_add & a2addx_0 & a2addx_n_1 & a2xsign);

// ACONTROL.NET (234) - suba_x : nd2h
assign suba_x = ~(suba_xt_0 & suba_xt_1);

// ACONTROL.NET (235) - suba_yt0 : nd3
assign suba_yt_0 = ~(a1_add & a1addy & a1ysign);

// ACONTROL.NET (236) - suba_yt1 : nd3
assign suba_yt_1 = ~(a2_add & a2addy & a2ysign);

// ACONTROL.NET (237) - suba_y : nd2h
assign suba_y = ~(suba_yt_0 & suba_yt_1);

// ACONTROL.NET (241) - a1pldt : nd2
assign a1pldt = ~(atick_1 & a1_add);

// ACONTROL.NET (242) - a1ptrldi : nd2
assign a1ptrldi = ~(a1update_n & a1pldt);

// ACONTROL.NET (244) - a1fldt : nd4
assign a1fldt = ~(atick_0 & a1_add & a1addx_0 & a1addx_1);

// ACONTROL.NET (245) - a1fracldi : nd2
assign a1fracldi = ~(a1fupdate_n & a1fldt);

// ACONTROL.NET (247) - a2pldt : nd2
assign a2pldt = ~(atick_1 & a2_add);

// ACONTROL.NET (248) - a2ptrldi : nd2
assign a2ptrldi = ~(a2update_n & a2pldt);

// ACONTROL.NET (255) - mdt0 : nd3
assign mdt_0 = ~(dsta2_obuf & a2addx_n_0 & a2addx_n_1);

// ACONTROL.NET (256) - mdt1 : nd3
assign mdt_1 = ~(dsta2_n & a1addx_n_0 & a1addx_n_1);

// ACONTROL.NET (257) - phrase_mode : nd2h
assign phrase_mode_obuf = ~(mdt_0 & mdt_1);

// ACONTROL.NET (258) - phrase_mode\ : ivm
assign phrase_mode_n = ~phrase_mode_obuf;

// ACONTROL.NET (266) - pcsela2 : en
assign pcsela2 = ~(dsta2_obuf ^ dest_cycle_1);

// ACONTROL.NET (267) - pcsela2\ : iv
assign pcsela2_n = ~pcsela2;

// ACONTROL.NET (268) - phct0 : nd3
assign phct_0 = ~(pcsela2 & a2addx_n_0 & a2addx_n_1);

// ACONTROL.NET (269) - phct1 : nd3
assign phct_1 = ~(pcsela2_n & a1addx_n_0 & a1addx_n_1);

// ACONTROL.NET (270) - phrase_cycle : nd2
assign phrase_cycle = ~(phct_0 & phct_1);

// ACONTROL.NET (286) - pixsize[0-2] : mx2u
assign pixsize_0_obuf = (dsta2_obuf) ? a2_pixsize_0 : a1_pixsize_0;
assign pixsize_1_obuf = (dsta2_obuf) ? a2_pixsize_1 : a1_pixsize_1;
assign pixsize_2_obuf = (dsta2_obuf) ? a2_pixsize_2 : a1_pixsize_2;

// ACONTROL.NET (288) - pixsize\[0-2] : ivm
assign pixsize_n_0 = ~pixsize_0_obuf;
assign pixsize_n_1 = ~pixsize_1_obuf;
assign pixsize_n_2 = ~pixsize_2_obuf;

// ACONTROL.NET (290) - mask[3] : an4
assign smask_3 = dstxp_b0_obuf & pixsize_0_obuf & pixsize_1_obuf & pixsize_n_2;

// ACONTROL.NET (292) - mask4t0 : nd4
assign mask4t_0 = ~(dstxp_b1_obuf & pixsize_0_obuf & pixsize_1_obuf & pixsize_n_2);

// ACONTROL.NET (294) - mask4t1 : nd4
assign mask4t_1 = ~(dstxp_b0_obuf & pixsize_n_0 & pixsize_n_1 & pixsize_2_obuf);

// ACONTROL.NET (296) - mask[4] : nd2
assign smask_4 = ~(mask4t_0 & mask4t_1);

// ACONTROL.NET (297) - mask5t0 : nd4
assign mask5t_0 = ~(dstxp_b2_obuf & pixsize_0_obuf & pixsize_1_obuf & pixsize_n_2);

// ACONTROL.NET (299) - mask5t1 : nd4
assign mask5t_1 = ~(dstxp_b1_obuf & pixsize_n_0 & pixsize_n_1 & pixsize_2_obuf);

// ACONTROL.NET (301) - mask5t2 : nd4
assign mask5t_2 = ~(dstxp_b0_obuf & pixsize_0_obuf & pixsize_n_1 & pixsize_2_obuf);

// ACONTROL.NET (303) - mask[5] : nd3
assign smask_5 = ~(mask5t_0 & mask5t_1 & mask5t_2);

// ACONTROL.NET (308) - dstarta[0-2] : an2
assign dstarta_0 = pixa_0 & phrase_mode_n;
assign dstarta_1 = pixa_1 & phrase_mode_n;
assign dstarta_2 = pixa_2 & phrase_mode_n;

// ACONTROL.NET (309) - dstarta[3-5] : an2
assign dstarta_3 = smask_3 & phrase_mode_obuf;
assign dstarta_4 = smask_4 & phrase_mode_obuf;
assign dstarta_5 = smask_5 & phrase_mode_obuf;

// ACONTROL.NET (311) - mpipe[0] : nivm
assign mpipe_0 = atick_1;

// ACONTROL.NET (312) - dstartb[0-5] : mx2
assign dstartb_0 = (mpipe_0) ? dstarta_0 : dstartbl_0;
assign dstartb_1 = (mpipe_0) ? dstarta_1 : dstartbl_1;
assign dstartb_2 = (mpipe_0) ? dstarta_2 : dstartbl_2;
assign dstartb_3 = (mpipe_0) ? dstarta_3 : dstartbl_3;
assign dstartb_4 = (mpipe_0) ? dstarta_4 : dstartbl_4;
assign dstartb_5 = (mpipe_0) ? dstarta_5 : dstartbl_5;

// ACONTROL.NET (313) - dstartbl[0-5] : fd1q
fd1q dstartbl_from_0_to_5_inst_0
(
	.q /* OUT */ (dstartbl_0),
	.d /* IN */ (dstartb_0),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dstartbl_from_0_to_5_inst_1
(
	.q /* OUT */ (dstartbl_1),
	.d /* IN */ (dstartb_1),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dstartbl_from_0_to_5_inst_2
(
	.q /* OUT */ (dstartbl_2),
	.d /* IN */ (dstartb_2),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dstartbl_from_0_to_5_inst_3
(
	.q /* OUT */ (dstartbl_3),
	.d /* IN */ (dstartb_3),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dstartbl_from_0_to_5_inst_4
(
	.q /* OUT */ (dstartbl_4),
	.d /* IN */ (dstartb_4),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dstartbl_from_0_to_5_inst_5
(
	.q /* OUT */ (dstartbl_5),
	.d /* IN */ (dstartb_5),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// ACONTROL.NET (318) - dstartp[0-5] : fdsync
fdsync dstartp_from_0_to_5_inst_0
(
	.q /* OUT */ (dstartp_0),
	.d /* IN */ (dstartb_0),
	.ld /* IN */ (step_inner),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fdsync dstartp_from_0_to_5_inst_1
(
	.q /* OUT */ (dstartp_1),
	.d /* IN */ (dstartb_1),
	.ld /* IN */ (step_inner),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fdsync dstartp_from_0_to_5_inst_2
(
	.q /* OUT */ (dstartp_2),
	.d /* IN */ (dstartb_2),
	.ld /* IN */ (step_inner),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fdsync dstartp_from_0_to_5_inst_3
(
	.q /* OUT */ (dstartp_3),
	.d /* IN */ (dstartb_3),
	.ld /* IN */ (step_inner),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fdsync dstartp_from_0_to_5_inst_4
(
	.q /* OUT */ (dstartp_4),
	.d /* IN */ (dstartb_4),
	.ld /* IN */ (step_inner),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fdsync dstartp_from_0_to_5_inst_5
(
	.q /* OUT */ (dstartp_5),
	.d /* IN */ (dstartb_5),
	.ld /* IN */ (step_inner),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// ACONTROL.NET (320) - dstart[0-5] : fd1qp
fd1q dstart_from_0_to_5_inst_0
(
	.q /* OUT */ (dstart_0),
	.d /* IN */ (dstartp_0),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dstart_from_0_to_5_inst_1
(
	.q /* OUT */ (dstart_1),
	.d /* IN */ (dstartp_1),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dstart_from_0_to_5_inst_2
(
	.q /* OUT */ (dstart_2),
	.d /* IN */ (dstartp_2),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dstart_from_0_to_5_inst_3
(
	.q /* OUT */ (dstart_3),
	.d /* IN */ (dstartp_3),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dstart_from_0_to_5_inst_4
(
	.q /* OUT */ (dstart_4),
	.d /* IN */ (dstartp_4),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dstart_from_0_to_5_inst_5
(
	.q /* OUT */ (dstart_5),
	.d /* IN */ (dstartp_5),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// ACONTROL.NET (347) - dstxp : mx2
assign dstxp_b0_obuf = (dsta2_obuf) ? a2_x[0] : a1_x[0];
assign dstxp_b1_obuf = (dsta2_obuf) ? a2_x[1] : a1_x[1];
assign dstxp_b2_obuf = (dsta2_obuf) ? a2_x[2] : a1_x[2];
assign dstxp_b3_obuf = (dsta2_obuf) ? a2_x[3] : a1_x[3];
assign dstxp_b4_obuf = (dsta2_obuf) ? a2_x[4] : a1_x[4];
assign dstxp_b5_obuf = (dsta2_obuf) ? a2_x[5] : a1_x[5];
assign dstxp_b6_obuf = (dsta2_obuf) ? a2_x[6] : a1_x[6];
assign dstxp_b7_obuf = (dsta2_obuf) ? a2_x[7] : a1_x[7];
assign dstxp_b8_obuf = (dsta2_obuf) ? a2_x[8] : a1_x[8];
assign dstxp_b9_obuf = (dsta2_obuf) ? a2_x[9] : a1_x[9];
assign dstxp_b10_obuf = (dsta2_obuf) ? a2_x[10] : a1_x[10];
assign dstxp_b11_obuf = (dsta2_obuf) ? a2_x[11] : a1_x[11];
assign dstxp_b12_obuf = (dsta2_obuf) ? a2_x[12] : a1_x[12];
assign dstxp_b13_obuf = (dsta2_obuf) ? a2_x[13] : a1_x[13];
assign dstxp_b14_obuf = (dsta2_obuf) ? a2_x[14] : a1_x[14];
assign dstxp[15] = (dsta2_obuf) ? a2_x[15] : a1_x[15];

// ACONTROL.NET (349) - pseq[1-14] : eo
assign pseq_1 = dstxp_b1_obuf ^ a1_win_x[1];
assign pseq_2 = dstxp_b2_obuf ^ a1_win_x[2];
assign pseq_3 = dstxp_b3_obuf ^ a1_win_x[3];
assign pseq_4 = dstxp_b4_obuf ^ a1_win_x[4];
assign pseq_5 = dstxp_b5_obuf ^ a1_win_x[5];
assign pseq_6 = dstxp_b6_obuf ^ a1_win_x[6];
assign pseq_7 = dstxp_b7_obuf ^ a1_win_x[7];
assign pseq_8 = dstxp_b8_obuf ^ a1_win_x[8];
assign pseq_9 = dstxp_b9_obuf ^ a1_win_x[9];
assign pseq_10 = dstxp_b10_obuf ^ a1_win_x[10];
assign pseq_11 = dstxp_b11_obuf ^ a1_win_x[11];
assign pseq_12 = dstxp_b12_obuf ^ a1_win_x[12];
assign pseq_13 = dstxp_b13_obuf ^ a1_win_x[13];
assign pseq_14 = dstxp_b14_obuf ^ a1_win_x[14];

// ACONTROL.NET (360) - rmpt0 : an4
assign rmpt_0 = pseq_1 & pixsize_0_obuf & pixsize_n_1 & pixsize_2_obuf;

// ACONTROL.NET (362) - rmpt1 : an3
assign rmpt_1 = pseq_2 & pixsize_n_1 & pixsize_2_obuf;

// ACONTROL.NET (368) - ewmt5 : nr14
assign penden = ~(rmpt_0 | rmpt_1 | pseq_3 | pseq_4 | pseq_5 | pseq_6 | pseq_7 | pseq_8 | pseq_9 | pseq_10 | pseq_11 | pseq_12 | pseq_13 | pseq_14);

// ACONTROL.NET (374) - pixel8 : an3p
assign pixel8 = pixsize_0_obuf & pixsize_1_obuf & pixsize_n_2;

// ACONTROL.NET (375) - pixel16 : an3
assign pixel16 = pixsize_n_0 & pixsize_n_1 & pixsize_2_obuf;

// ACONTROL.NET (376) - pixel32 : an3
assign pixel32 = pixsize_0_obuf & pixsize_n_1 & pixsize_2_obuf;

// ACONTROL.NET (379) - wmb3 : an2
assign wmb_3 = a1_win_x[0] & pixel8;

// ACONTROL.NET (380) - wmb4t0 : nd2
assign wmb4t_0 = ~(a1_win_x[1] & pixel8);

// ACONTROL.NET (381) - wmb4t1 : nd2
assign wmb4t_1 = ~(a1_win_x[0] & pixel16);

// ACONTROL.NET (382) - wmb4 : nd2
assign wmb_4 = ~(wmb4t_0 & wmb4t_1);

// ACONTROL.NET (383) - wmb5t0 : nd2
assign wmb5t_0 = ~(a1_win_x[2] & pixel8);

// ACONTROL.NET (384) - wmb5t1 : nd2
assign wmb5t_1 = ~(a1_win_x[1] & pixel16);

// ACONTROL.NET (385) - wmb5t2 : nd2
assign wmb5t_2 = ~(a1_win_x[0] & pixel32);

// ACONTROL.NET (386) - wmb5 : nd3
assign wmb_5 = ~(wmb5t_0 & wmb5t_1 & wmb5t_2);

// ACONTROL.NET (388) - wmt[3-5] : an2
assign window_mask_3 = wmb_3 & penden;
assign window_mask_4 = wmb_4 & penden;
assign window_mask_5 = wmb_5 & penden;

// ACONTROL.NET (393) - imb3 : an2
assign imb_3 = icount_0 & pixel8;

// ACONTROL.NET (394) - imb4t0 : nd2
assign imb4t_0 = ~(icount_1 & pixel8);

// ACONTROL.NET (395) - imb4t1 : nd2
assign imb4t_1 = ~(icount_0 & pixel16);

// ACONTROL.NET (396) - imb4 : nd2
assign imb_4 = ~(imb4t_0 & imb4t_1);

// ACONTROL.NET (397) - imb5t0 : nd2
assign imb5t_0 = ~(icount_2 & pixel8);

// ACONTROL.NET (398) - imb5t1 : nd2
assign imb5t_1 = ~(icount_1 & pixel16);

// ACONTROL.NET (399) - imb5t2 : nd2
assign imb5t_2 = ~(icount_0 & pixel32);

// ACONTROL.NET (400) - imb5 : nd3
assign imb_5 = ~(imb5t_0 & imb5t_1 & imb5t_2);

// ACONTROL.NET (402) - innerm[3-5] : an2
assign inner_mask_3 = imb_3 & inner0;
assign inner_mask_4 = imb_4 & inner0;
assign inner_mask_5 = imb_5 & inner0;

// ACONTROL.NET (407) - window_mask[6] : nr3
assign window_mask_6 = ~(window_mask_3 | window_mask_4 | window_mask_5);

// ACONTROL.NET (408) - inner_mask[6] : nr3p
assign inner_mask_6 = ~(inner_mask_3 | inner_mask_4 | inner_mask_5);

// ACONTROL.NET (413) - mcomp : mag4
mag4 mcomp_inst
(
	.agb /* OUT */ (wgt),
	.aeb /* OUT */ (dummy_0),
	.alb /* OUT */ (dummy_1),
	.agbi /* IN */ (zero),
	.aebi /* IN */ (one),
	.albi /* IN */ (zero),
	.a3 /* IN */ (window_mask_6),
	.b3 /* IN */ (inner_mask_6),
	.a2 /* IN */ (window_mask_5),
	.b2 /* IN */ (inner_mask_5),
	.a1 /* IN */ (window_mask_4),
	.b1 /* IN */ (inner_mask_4),
	.a0 /* IN */ (window_mask_3),
	.b0 /* IN */ (inner_mask_3)
);

// ACONTROL.NET (419) - emask[3-5] : mx2
assign emask_3 = (wgt) ? inner_mask_3 : window_mask_3;
assign emask_4 = (wgt) ? inner_mask_4 : window_mask_4;
assign emask_5 = (wgt) ? inner_mask_5 : window_mask_5;

// ACONTROL.NET (425) - pm0 : an3
assign pm_0 = pixsize_n_0 & pixsize_n_1 & pixsize_n_2;

// ACONTROL.NET (426) - pm1 : an3
assign pm_1 = pixsize_0_obuf & pixsize_n_1 & pixsize_n_2;

// ACONTROL.NET (427) - pm2 : an3
assign pm_2 = pixsize_n_0 & pixsize_1_obuf & pixsize_n_2;

// ACONTROL.NET (428) - pm3 : an3
assign pm_3 = pixsize_0_obuf & pixsize_1_obuf & pixsize_n_2;

// ACONTROL.NET (429) - pm4 : an3
assign pm_4 = pixsize_n_0 & pixsize_n_1 & pixsize_2_obuf;

// ACONTROL.NET (430) - pm5 : an3
assign pm_5 = pixsize_0_obuf & pixsize_n_1 & pixsize_2_obuf;

// ACONTROL.NET (432) - pma[0] : ha1
ha1 pma_index_0_inst
(
	.s /* OUT */ (pma_0),
	.co /* OUT */ (pmc_0),
	.a /* IN */ (pm_0),
	.b /* IN */ (pixa_0)
);

// ACONTROL.NET (433) - pma[1] : fa1
fa1 pma_index_1_inst
(
	.s /* OUT */ (pma_1),
	.co /* OUT */ (pmc_1),
	.ci /* IN */ (pmc_0),
	.a /* IN */ (pm_1),
	.b /* IN */ (pixa_1)
);

// ACONTROL.NET (434) - pma[2] : fa1
fa1 pma_index_2_inst
(
	.s /* OUT */ (pma_2),
	.co /* OUT */ (pmc_2),
	.ci /* IN */ (pmc_1),
	.a /* IN */ (pm_2),
	.b /* IN */ (pixa_2)
);

// ACONTROL.NET (435) - pma[3] : ha1
ha1 pma_index_3_inst
(
	.s /* OUT */ (pma_3),
	.co /* OUT */ (pmc_3),
	.a /* IN */ (pmc_2),
	.b /* IN */ (pm_3)
);

// ACONTROL.NET (436) - pma[4] : ha1
ha1 pma_index_4_inst
(
	.s /* OUT */ (pma_4),
	.co /* OUT */ (pmc_4),
	.a /* IN */ (pmc_3),
	.b /* IN */ (pm_4)
);

// ACONTROL.NET (437) - pma[5] : eo
assign pma_5 = pmc_4 ^ pm_5;

// ACONTROL.NET (441) - denda[0-2] : an2
assign denda_0 = pma_0 & phrase_mode_n;
assign denda_1 = pma_1 & phrase_mode_n;
assign denda_2 = pma_2 & phrase_mode_n;

// ACONTROL.NET (442) - denda[3-5] : mx2
assign denda_3 = (phrase_mode_n) ? pma_3 : emask_3;
assign denda_4 = (phrase_mode_n) ? pma_4 : emask_4;
assign denda_5 = (phrase_mode_n) ? pma_5 : emask_5;

// ACONTROL.NET (445) - dendb[0-5] : mx2
assign dendb_0 = (mpipe_0) ? denda_0 : dendbl_0;
assign dendb_1 = (mpipe_0) ? denda_1 : dendbl_1;
assign dendb_2 = (mpipe_0) ? denda_2 : dendbl_2;
assign dendb_3 = (mpipe_0) ? denda_3 : dendbl_3;
assign dendb_4 = (mpipe_0) ? denda_4 : dendbl_4;
assign dendb_5 = (mpipe_0) ? denda_5 : dendbl_5;

// ACONTROL.NET (447) - dendbl[0-5] : fd1q
fd1q dendbl_from_0_to_5_inst_0
(
	.q /* OUT */ (dendbl_0),
	.d /* IN */ (dendb_0),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dendbl_from_0_to_5_inst_1
(
	.q /* OUT */ (dendbl_1),
	.d /* IN */ (dendb_1),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dendbl_from_0_to_5_inst_2
(
	.q /* OUT */ (dendbl_2),
	.d /* IN */ (dendb_2),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dendbl_from_0_to_5_inst_3
(
	.q /* OUT */ (dendbl_3),
	.d /* IN */ (dendb_3),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dendbl_from_0_to_5_inst_4
(
	.q /* OUT */ (dendbl_4),
	.d /* IN */ (dendb_4),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dendbl_from_0_to_5_inst_5
(
	.q /* OUT */ (dendbl_5),
	.d /* IN */ (dendb_5),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// ACONTROL.NET (449) - dendp[0-5] : fdsync
fdsync dendp_from_0_to_5_inst_0
(
	.q /* OUT */ (dendp_0),
	.d /* IN */ (dendb_0),
	.ld /* IN */ (step_inner),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fdsync dendp_from_0_to_5_inst_1
(
	.q /* OUT */ (dendp_1),
	.d /* IN */ (dendb_1),
	.ld /* IN */ (step_inner),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fdsync dendp_from_0_to_5_inst_2
(
	.q /* OUT */ (dendp_2),
	.d /* IN */ (dendb_2),
	.ld /* IN */ (step_inner),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fdsync dendp_from_0_to_5_inst_3
(
	.q /* OUT */ (dendp_3),
	.d /* IN */ (dendb_3),
	.ld /* IN */ (step_inner),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fdsync dendp_from_0_to_5_inst_4
(
	.q /* OUT */ (dendp_4),
	.d /* IN */ (dendb_4),
	.ld /* IN */ (step_inner),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fdsync dendp_from_0_to_5_inst_5
(
	.q /* OUT */ (dendp_5),
	.d /* IN */ (dendb_5),
	.ld /* IN */ (step_inner),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// ACONTROL.NET (451) - dend[0-5] : fd1qp
fd1q dend_from_0_to_5_inst_0
(
	.q /* OUT */ (dend_0),
	.d /* IN */ (dendp_0),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dend_from_0_to_5_inst_1
(
	.q /* OUT */ (dend_1),
	.d /* IN */ (dendp_1),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dend_from_0_to_5_inst_2
(
	.q /* OUT */ (dend_2),
	.d /* IN */ (dendp_2),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dend_from_0_to_5_inst_3
(
	.q /* OUT */ (dend_3),
	.d /* IN */ (dendp_3),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dend_from_0_to_5_inst_4
(
	.q /* OUT */ (dend_4),
	.d /* IN */ (dendp_4),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dend_from_0_to_5_inst_5
(
	.q /* OUT */ (dend_5),
	.d /* IN */ (dendp_5),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// ACONTROL.NET (472) - srcxp\[0-5] : mxi2
mxi2 srcxp_n_from_0_to_5_inst_0
(
	.z /* OUT */ (srcxp_n_0),
	.a0 /* IN */ (a2_x[0]),
	.a1 /* IN */ (a1_x[0]),
	.s /* IN */ (dsta2_obuf)
);
mxi2 srcxp_n_from_0_to_5_inst_1
(
	.z /* OUT */ (srcxp_n_1),
	.a0 /* IN */ (a2_x[1]),
	.a1 /* IN */ (a1_x[1]),
	.s /* IN */ (dsta2_obuf)
);
mxi2 srcxp_n_from_0_to_5_inst_2
(
	.z /* OUT */ (srcxp_n_2),
	.a0 /* IN */ (a2_x[2]),
	.a1 /* IN */ (a1_x[2]),
	.s /* IN */ (dsta2_obuf)
);
mxi2 srcxp_n_from_0_to_5_inst_3
(
	.z /* OUT */ (srcxp_n_3),
	.a0 /* IN */ (a2_x[3]),
	.a1 /* IN */ (a1_x[3]),
	.s /* IN */ (dsta2_obuf)
);
mxi2 srcxp_n_from_0_to_5_inst_4
(
	.z /* OUT */ (srcxp_n_4),
	.a0 /* IN */ (a2_x[4]),
	.a1 /* IN */ (a1_x[4]),
	.s /* IN */ (dsta2_obuf)
);
mxi2 srcxp_n_from_0_to_5_inst_5
(
	.z /* OUT */ (srcxp_n_5),
	.a0 /* IN */ (a2_x[5]),
	.a1 /* IN */ (a1_x[5]),
	.s /* IN */ (dsta2_obuf)
);

// ACONTROL.NET (474) - shftt[0] : fa1
fa1 shftt_index_0_inst
(
	.s /* OUT */ (shftt_0),
	.co /* OUT */ (shfcy_0),
	.ci /* IN */ (one),
	.a /* IN */ (srcxp_n_0),
	.b /* IN */ (dstxp_b0_obuf)
);

// ACONTROL.NET (476) - shftt[1-5] : fa1
fa1 shftt_from_1_to_5_inst_0
(
	.s /* OUT */ (shftt_1),
	.co /* OUT */ (shfcy_1),
	.ci /* IN */ (shfcy_0),
	.a /* IN */ (srcxp_n_1),
	.b /* IN */ (dstxp_b1_obuf)
);
fa1 shftt_from_1_to_5_inst_1
(
	.s /* OUT */ (shftt_2),
	.co /* OUT */ (shfcy_2),
	.ci /* IN */ (shfcy_1),
	.a /* IN */ (srcxp_n_2),
	.b /* IN */ (dstxp_b2_obuf)
);
fa1 shftt_from_1_to_5_inst_2
(
	.s /* OUT */ (shftt_3),
	.co /* OUT */ (shfcy_3),
	.ci /* IN */ (shfcy_2),
	.a /* IN */ (srcxp_n_3),
	.b /* IN */ (dstxp_b3_obuf)
);
fa1 shftt_from_1_to_5_inst_3
(
	.s /* OUT */ (shftt_4),
	.co /* OUT */ (shfcy_4),
	.ci /* IN */ (shfcy_3),
	.a /* IN */ (srcxp_n_4),
	.b /* IN */ (dstxp_b4_obuf)
);
fa1 shftt_from_1_to_5_inst_4
(
	.s /* OUT */ (shftt_5),
	.co /* OUT */ (shfcy_5),
	.ci /* IN */ (shfcy_4),
	.a /* IN */ (srcxp_n_5),
	.b /* IN */ (dstxp_b5_obuf)
);

// ACONTROL.NET (478) - unused[1] : dummy

// ACONTROL.NET (490) - shftv0 : an4
assign shftv_0 = shftt_0 & pixsize_n_0 & pixsize_n_1 & pixsize_n_2;

// ACONTROL.NET (491) - sftv1t : or2
assign shftv1t = pixsize_1_obuf | pixsize_2_obuf;

// ACONTROL.NET (492) - shftv1 : mx2g
mx2g shftv1_inst
(
	.z /* OUT */ (shftv_1),
	.a0 /* IN */ (shftt_1),
	.a1 /* IN */ (shftt_0),
	.s /* IN */ (pixsize_1_obuf),
	.gn /* IN */ (shftv1t)
);

// ACONTROL.NET (494) - shftv2 : mx4g
mx4g shftv2_inst
(
	.z /* OUT */ (shftv_2),
	.a0 /* IN */ (shftt_2),
	.a1 /* IN */ (shftt_1),
	.a2 /* IN */ (shftt_0),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (pixsize_0_obuf),
	.s1 /* IN */ (pixsize_1_obuf),
	.gn /* IN */ (pixsize_2_obuf)
);

// ACONTROL.NET (496) - shftv3 : mx4g
mx4g shftv3_inst
(
	.z /* OUT */ (shftv_3),
	.a0 /* IN */ (shftt_3),
	.a1 /* IN */ (shftt_2),
	.a2 /* IN */ (shftt_1),
	.a3 /* IN */ (shftt_0),
	.s0 /* IN */ (pixsize_0_obuf),
	.s1 /* IN */ (pixsize_1_obuf),
	.gn /* IN */ (pixsize_2_obuf)
);

// ACONTROL.NET (498) - shftv4 : mx6
mx6 shftv4_inst
(
	.q /* OUT */ (shftv_4),
	.a_0 /* IN */ (shftt_4),
	.a_1 /* IN */ (shftt_3),
	.a_2 /* IN */ (shftt_2),
	.a_3 /* IN */ (shftt_1),
	.a_4 /* IN */ (shftt_0),
	.a_5 /* IN */ (zero),
	.sel_0 /* IN */ (pixsize_0_obuf),
	.sel_1 /* IN */ (pixsize_1_obuf),
	.sel_2 /* IN */ (pixsize_2_obuf)
);

// ACONTROL.NET (501) - shftv5 : mx6
mx6 shftv5_inst
(
	.q /* OUT */ (shftv_5),
	.a_0 /* IN */ (shftt_5),
	.a_1 /* IN */ (shftt_4),
	.a_2 /* IN */ (shftt_3),
	.a_3 /* IN */ (shftt_2),
	.a_4 /* IN */ (shftt_1),
	.a_5 /* IN */ (shftt_0),
	.sel_0 /* IN */ (pixsize_0_obuf),
	.sel_1 /* IN */ (pixsize_1_obuf),
	.sel_2 /* IN */ (pixsize_2_obuf)
);

// ACONTROL.NET (508) - pobb0t : or3
assign pobb0t = pixel8 | pixel16 | pixel32;

// ACONTROL.NET (509) - pobb0 : an2
assign pobb_0 = pobb0t & dstxp_b0_obuf;

// ACONTROL.NET (510) - pobb1t : or2
assign pobb1t = pixel8 | pixel16;

// ACONTROL.NET (511) - pobb1 : an2
assign pobb_1 = pobb1t & dstxp_b1_obuf;

// ACONTROL.NET (512) - pobb2 : an2
assign pobb_2 = pixel8 & dstxp_b2_obuf;

// ACONTROL.NET (514) - pobbsel : an2
assign pobbsel = phrase_mode_obuf & bcompen;

// ACONTROL.NET (515) - loshen : nr2
assign loshen_n = ~(srcen | pobbsel);

// ACONTROL.NET (516) - loshd[0-2] : mx2
assign loshd_0 = (pobbsel) ? pobb_0 : shftv_0;
assign loshd_1 = (pobbsel) ? pobb_1 : shftv_1;
assign loshd_2 = (pobbsel) ? pobb_2 : shftv_2;

// ACONTROL.NET (518) - shfti[0-2] : mx2g
mx2g shfti_from_0_to_2_inst_0
(
	.z /* OUT */ (shfti_0),
	.a0 /* IN */ (srcshift_0_obuf),
	.a1 /* IN */ (loshd_0),
	.s /* IN */ (sshftld),
	.gn /* IN */ (loshen_n)
);
mx2g shfti_from_0_to_2_inst_1
(
	.z /* OUT */ (shfti_1),
	.a0 /* IN */ (srcshift_1_obuf),
	.a1 /* IN */ (loshd_1),
	.s /* IN */ (sshftld),
	.gn /* IN */ (loshen_n)
);
mx2g shfti_from_0_to_2_inst_2
(
	.z /* OUT */ (shfti_2),
	.a0 /* IN */ (srcshift_2_obuf),
	.a1 /* IN */ (loshd_2),
	.s /* IN */ (sshftld),
	.gn /* IN */ (loshen_n)
);

// ACONTROL.NET (523) - hishen\ : nd2
assign hishen_n = ~(srcen & phrase_mode_obuf);

// ACONTROL.NET (524) - shfti[3-5] : mx2g
mx2g shfti_from_3_to_5_inst_0
(
	.z /* OUT */ (shfti_3),
	.a0 /* IN */ (srcshift_3_obuf),
	.a1 /* IN */ (shftv_3),
	.s /* IN */ (sshftld),
	.gn /* IN */ (hishen_n)
);
mx2g shfti_from_3_to_5_inst_1
(
	.z /* OUT */ (shfti_4),
	.a0 /* IN */ (srcshift_4_obuf),
	.a1 /* IN */ (shftv_4),
	.s /* IN */ (sshftld),
	.gn /* IN */ (hishen_n)
);
mx2g shfti_from_3_to_5_inst_2
(
	.z /* OUT */ (shfti_5),
	.a0 /* IN */ (srcshift_5_obuf),
	.a1 /* IN */ (shftv_5),
	.s /* IN */ (sshftld),
	.gn /* IN */ (hishen_n)
);

// ACONTROL.NET (526) - srcshift[0-5] : fd1q
fd1q srcshift_from_0_to_5_inst_0
(
	.q /* OUT */ (srcshift_0_obuf),
	.d /* IN */ (shfti_0),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srcshift_from_0_to_5_inst_1
(
	.q /* OUT */ (srcshift_1_obuf),
	.d /* IN */ (shfti_1),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srcshift_from_0_to_5_inst_2
(
	.q /* OUT */ (srcshift_2_obuf),
	.d /* IN */ (shfti_2),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srcshift_from_0_to_5_inst_3
(
	.q /* OUT */ (srcshift_3_obuf),
	.d /* IN */ (shfti_3),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srcshift_from_0_to_5_inst_4
(
	.q /* OUT */ (srcshift_4_obuf),
	.d /* IN */ (shfti_4),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srcshift_from_0_to_5_inst_5
(
	.q /* OUT */ (srcshift_5_obuf),
	.d /* IN */ (shfti_5),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// ACONTROL.NET (539) - dstartp\[3-5] : iv
assign dstartp_n_3 = ~dstartp_3;
assign dstartp_n_4 = ~dstartp_4;
assign dstartp_n_5 = ~dstartp_5;

// ACONTROL.NET (541) - pwidth0 : fa1
fa1 pwidth0_inst
(
	.s /* OUT */ (pwidth_0),
	.co /* OUT */ (pwc_0),
	.ci /* IN */ (dendp_3),
	.a /* IN */ (dstartp_n_3),
	.b /* IN */ (one)
);

// ACONTROL.NET (543) - pwidth1 : fa1
fa1 pwidth1_inst
(
	.s /* OUT */ (pwidth_1),
	.co /* OUT */ (pwc_1),
	.ci /* IN */ (dendp_4),
	.a /* IN */ (dstartp_n_4),
	.b /* IN */ (pwc_0)
);

// ACONTROL.NET (545) - pwidth2 : fa1
fa1 pwidth2_inst
(
	.s /* OUT */ (pwidth_2),
	.co /* OUT */ (pwc_2),
	.ci /* IN */ (dendp_5),
	.a /* IN */ (dstartp_n_5),
	.b /* IN */ (pwc_1)
);

// ACONTROL.NET (547) - pwidth3 : nr6
assign pwidth_3 = ~(dendp_3 | dendp_4 | dendp_5 | dstartp_3 | dstartp_4 | dstartp_5);

// ACONTROL.NET (549) - unusedp : dummy

// ACONTROL.NET (550) - dummy[0-1] : dummy
endmodule
/* verilator lint_on LITENDIAN */
