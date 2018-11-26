/* verilator lint_off LITENDIAN */
`include "defs.v"

module mem
(
	input bbreq_0,
	input bbreq_1,
	input gbreq_0,
	input gbreq_1,
	input obbreq,
	input sizin_0,
	input sizin_1,
	input dbrl_0,
	input dbrl_1,
	input dreqin,
	input rwin,
	input bs_0,
	input bs_1,
	input bs_2,
	input bs_3,
	input match,
	input intdev,
	input dram,
	input fextdev,
	input fintdev,
	input fdram,
	input from,
	input cpu32,
	input refreq,
	input dspd_0,
	input dspd_1,
	input romspd_0,
	input romspd_1,
	input iospd_0,
	input iospd_1,
	input a_0,
	input a_1,
	input a_2,
	input mw_0,
	input mw_1,
	input ourack,
	input resetl,
	input clk,
	input vcc,
	input gnd,
	input bglin,
	input brlin,
	input ihandler,
	input bigend,
	input bgain,
	input abs_2,
	input abs_3,
	input testen,
	input waitl,
	input fastrom,
	input m68k,
	input pclk,
	output ack,
	output bback,
	output gback,
	output obback,
	output romcsl_0,
	output romcsl_1,
	output rasl_0,
	output rasl_1,
	output casl_0,
	output casl_1,
	output oel_0,
	output oel_1,
	output oel_2,
	output wel_0,
	output wel_1,
	output wel_2,
	output wel_3,
	output wel_4,
	output wel_5,
	output wel_6,
	output wel_7,
	output sizout_0,
	output sizout_1,
	output sizout_2,
	output den_0,
	output den_1,
	output den_2,
	output aen,
	output dtackl,
	output brlout,
	output dbgl,
	output dreqlout,
	output d7a,
	output readt,
	output dinlatch_0,
	output dinlatch_1,
	output dinlatch_2,
	output dinlatch_3,
	output dinlatch_4,
	output dinlatch_5,
	output dinlatch_6,
	output dinlatch_7,
	output dmuxu_0,
	output dmuxu_1,
	output dmuxu_2,
	output dmuxd_0,
	output dmuxd_1,
	output dmuxd_2,
	output dren,
	output xdsrc,
	output maska_0,
	output maska_1,
	output maska_2,
	output at_0,
	output at_1,
	output at_2,
	output ainen,
	output newrow,
	output resrow,
	output mux,
	output refack,
	output reads,
	output wet,
	output oet,
	output ba,
	output intswe,
	output intwe,
	output dspcsl,
	output w_0_out,
	output w_0_oe,
	input w_0_in,
	output w_1_out,
	output w_1_oe,
	input w_1_in,
	output w_2_out,
	output w_2_oe,
	input w_2_in,
	output w_3_out,
	output w_3_oe,
	input w_3_in,
	output rw_out,
	output rw_oe,
	input rw_in,
	output mreq_out,
	output mreq_oe,
	input mreq_in,
	output justify_out,
	output justify_oe,
	input justify_in,
	input tlw,
	input ram_rdy,
	input sys_clk // Generated
);
wire notreadt;
wire intbm;
wire cpubm;
wire intbms;
wire intbmw;
wire mwt_0;
wire mwt_1;
wire nextc;
wire maskw_0;
wire maskw_1;
wire maskw_2;
wire maskw_3;
wire lastcycle;
wire lastc;
wire bm_0;
wire bm_1;
wire bm_2;
wire bm_3;
wire bm_4;
wire bm_5;
wire bm_6;
wire bm_7;
wire ba_0;
wire ba_1;
wire ba_2;
wire mws64;
wire mws16;
wire mws8;
wire erd;
wire idle;
wire notack;
wire d0;
wire q1a;
wire d1a;
wire q1b;
wire d1b;
wire q1c;
wire d1c;
wire q1d;
wire d1d;
wire q2a;
wire q2b;
wire d2b;
wire q2c;
wire d2c;
wire q3a;
wire d3a;
wire q3b;
wire d3b;
wire q4a;
wire d4a;
wire q4b;
wire d4b;
wire q4c;
wire d4c;
wire q4d;
wire d4d;
wire q4e;
wire q4f;
wire d4f;
wire q4g;
wire d4g;
wire q4h;
wire d4h;
wire q4i;
wire q5ai;
wire d5a;
wire q5b;
wire d5b;
wire q5c;
wire d5c;
wire q7a;
wire q7b;
wire d7b;
wire q8a;
wire d8a;
wire q8b;
wire d8b;
wire q8c;
wire d8c;
wire q10;
wire d10;
wire q5a;
wire mtb0;
wire mtb1;
wire mtb2;
wire mtb3;
wire mtb5;
wire mtb6;
wire mtb8;
wire mtb9;
wire mtba;
wire mtbb;
wire mtbd;
wire mtb;
wire notmreq;
wire mreqb;
wire notmatch;
wire notrefack;
wire notourack;
wire mt1b0;
wire dramspeed0;
wire mt1b1;
wire dramspeed1;
wire mt1c0;
wire dramspeed2;
wire mt1c1;
wire mt1d0;
wire dramspeed3;
wire mt1d1;
wire mt2b0;
wire mt2b1;
wire mt2c0;
wire mt2c1;
wire mt3a0;
wire mt3a1;
wire mt3a2;
wire mt3a3;
wire notlastcycle;
wire ram_bsy;
wire mt3a4;
wire mt4b0;
wire mt4b1;
wire mt4c0;
wire mt4c1;
wire mt4d0;
wire mt4d1;
wire mt4g0;
wire mt4g1;
wire mt4g2;
wire mt4h0;
wire mt4h1;
wire mt5a0;
wire mt5a1;
wire mt5b0;
wire slowrom;
wire mt5b1;
wire notwaitdone;
wire mt5c0;
wire mt5c1;
wire waitdone;
wire mt7a0;
wire mt7a1;
wire notreads;
wire mt7a2;
wire mt8a0;
wire mt8a1;
wire mt8b0;
wire mt8b1;
wire wait1;
wire iospeed2;
wire wait2;
wire romspeed3;
wire wait30;
wire romspeed2;
wire wait31;
wire iospeed3;
wire wait3;
wire wait5;
wire romspeed1;
wire wait70;
wire romspeed0;
wire wait71;
wire iospeed1;
wire wait7;
wire wait15;
wire iospeed0;
wire rasoffl_1;
wire rasoffl_2;
wire rason;
wire muxi;
wire oet0;
wire oet1;
wire oet2;
wire oet3;
wire oet4;
wire oet5;
wire oet6;
wire oet7;
wire oeti;
wire startcas;
wire dinl0;
wire dinl1;
wire dinl3;
wire dinl4;
wire dinlatchd;
wire dinlatch;
wire iwnext;
wire nextci;
wire sw0;
wire swd;
wire startwe;
wire notrw;
wire doll;
wire lwdli1;
wire lwdli2;
wire lwdl;
wire allrasoffl;
wire allrasonl;
wire allcasonl;
wire wq_0;
wire wco_0;
wire wd_0;
wire wcen;
wire wld;
wire wq_1;
wire wco_1;
wire wd_1;
wire wq_2;
wire wco_2;
wire wd_2;
wire wq_3;
wire wco_3;
wire _wait;
wire waitdonei;
wire dspdl_0;
wire dspdl_1;
wire iospdl_0;
wire iospdl_1;
wire romspdl_0;
wire romspdl_1;
wire clkl;
wire pclkl;
wire casd_0;
wire casd_1;
wire cas00;
wire cas01;
wire cas10;
wire cas11;
wire romcst;
wire dspcsli;
wire int_wel;
wire mwsl_0;
wire mwsl_1;
wire mws_0;
wire mws_1;
wire wet0;
wire wet0l;
wire weti;
wire mws32;
wire we00;
wire we01;
wire we02;
wire we03;
wire we04;
wire we05;
wire we_0;
wire we10;
wire we11;
wire we12;
wire we13;
wire we14;
wire we15;
wire we16;
wire we_1;
wire we20;
wire we21;
wire we22;
wire we_2;
wire we30;
wire we31;
wire we32;
wire we_3;
wire oe00;
wire oe01;
wire oe02;
wire oe03;
wire oe04;
wire oe05;
wire oe10;
wire oe11;
wire oe12;
wire oe13;
wire oe14;
wire oe15;
wire oe20;
wire oe21;
wire oe22;
wire oe23;
wire dinlatchl_0;
wire dinlatchl_1;
wire dinlatchl_2;
wire dinlatchl_3;
wire dinlatchl_4;
wire dinlatchl_5;
wire dinlatchl_6;
wire dinlatchl_7;
wire readsi;
wire mwti_0;
wire mwti_1;
wire dreqd;

// Output buffers
wire ack_obuf;
wire dbgl_obuf;
wire d7a_obuf;
wire readt_obuf;
wire maska_0_obuf;
wire maska_1_obuf;
wire maska_2_obuf;
wire refack_obuf;
wire reads_obuf;
wire wet_obuf;
wire oet_obuf;
wire ba_obuf;


// Output buffers
assign ack = ack_obuf;
assign dbgl = dbgl_obuf;
assign d7a = d7a_obuf;
assign readt = readt_obuf;
assign maska_0 = maska_0_obuf;
assign maska_1 = maska_1_obuf;
assign maska_2 = maska_2_obuf;
assign refack = refack_obuf;
assign reads = reads_obuf;
assign wet = wet_obuf;
assign oet = oet_obuf;
assign ba = ba_obuf;


// MEM.NET (117) - arb : arb
arb arb_inst
(
	.bbreq_0 /* IN */ (bbreq_0),
	.bbreq_1 /* IN */ (bbreq_1),
	.gbreq_0 /* IN */ (gbreq_0),
	.gbreq_1 /* IN */ (gbreq_1),
	.obbreq /* IN */ (obbreq),
	.bglin /* IN */ (bglin),
	.brlin /* IN */ (brlin),
	.dbrl_0 /* IN */ (dbrl_0),
	.dbrl_1 /* IN */ (dbrl_1),
	.refreq /* IN */ (refreq),
	.ihandler /* IN */ (ihandler),
	.ack /* IN */ (ack_obuf),
	.resetl /* IN */ (resetl),
	.clk /* IN */ (clk),
	.vcc /* IN */ (vcc),
	.bgain /* IN */ (bgain),
	.notreadt /* IN */ (notreadt),
	.dreqin /* IN */ (dreqin),
	.bback /* OUT */ (bback),
	.gback /* OUT */ (gback),
	.obback /* OUT */ (obback),
	.brlout /* OUT */ (brlout),
	.dbgl /* OUT */ (dbgl_obuf),
	.refack /* OUT */ (refack_obuf),
	.ba /* OUT */ (ba_obuf),
	.intbm /* OUT */ (intbm),
	.cpubm /* OUT */ (cpubm),
	.intbms /* OUT */ (intbms),
	.intbmw /* OUT */ (intbmw),
	.sys_clk(sys_clk) // Generated
);

// MEM.NET (124) - mw : memwidth
memwidth mw_inst
(
	.w_0 /* IN */ (w_0_in),
	.w_1 /* IN */ (w_1_in),
	.w_2 /* IN */ (w_2_in),
	.w_3 /* IN */ (w_3_in),
	.ba_0 /* IN */ (a_0),
	.ba_1 /* IN */ (a_1),
	.ba_2 /* IN */ (a_2),
	.mw_0 /* IN */ (mwt_0),
	.mw_1 /* IN */ (mwt_1),
	.ack /* IN */ (ack_obuf),
	.nextc /* IN */ (nextc),
	.clk /* IN */ (clk),
	.vcc /* IN */ (vcc),
	.gnd /* IN */ (gnd),
	.bigend /* IN */ (bigend),
	.maskw_0 /* OUT */ (maskw_0),
	.maskw_1 /* OUT */ (maskw_1),
	.maskw_2 /* OUT */ (maskw_2),
	.maskw_3 /* OUT */ (maskw_3),
	.maska_0 /* OUT */ (maska_0_obuf),
	.maska_1 /* OUT */ (maska_1_obuf),
	.maska_2 /* OUT */ (maska_2_obuf),
	.at_0 /* OUT */ (at_0),
	.at_1 /* OUT */ (at_1),
	.at_2 /* OUT */ (at_2),
	.lastcycle /* OUT */ (lastcycle),
	.lastc /* OUT */ (lastc),
	.bm_0 /* OUT */ (bm_0),
	.bm_1 /* OUT */ (bm_1),
	.bm_2 /* OUT */ (bm_2),
	.bm_3 /* OUT */ (bm_3),
	.bm_4 /* OUT */ (bm_4),
	.bm_5 /* OUT */ (bm_5),
	.bm_6 /* OUT */ (bm_6),
	.bm_7 /* OUT */ (bm_7),
	.sys_clk(sys_clk) // Generated
);

// MEM.NET (130) - bus : bus
bus bus_inst
(
	.reads /* IN */ (reads_obuf),
	.ack /* IN */ (ack_obuf),
	.intdev /* IN */ (intdev),
	.cpu32 /* IN */ (cpu32),
	.ba_0 /* IN */ (ba_0),
	.ba_1 /* IN */ (ba_1),
	.ba_2 /* IN */ (ba_2),
	.mws64 /* IN */ (mws64),
	.mws16 /* IN */ (mws16),
	.mws8 /* IN */ (mws8),
	.notdbg /* IN */ (dbgl_obuf),
	.ourack /* IN */ (ourack),
	.w_0 /* IN */ (w_0_in),
	.w_1 /* IN */ (w_1_in),
	.w_2 /* IN */ (w_2_in),
	.w_3 /* IN */ (w_3_in),
	.erd /* IN */ (erd),
	.justify /* IN */ (justify_in),
	.intbm /* IN */ (intbm),
	.intbms /* IN */ (intbms),
	.cpubm /* IN */ (cpubm),
	.clk /* IN */ (clk),
	.testen /* IN */ (testen),
	.intbmw /* IN */ (intbmw),
	.resetl /* IN */ (resetl),
	.idle /* IN */ (idle),
	.den_0 /* OUT */ (den_0),
	.den_1 /* OUT */ (den_1),
	.den_2 /* OUT */ (den_2),
	.aen /* OUT */ (aen),
	.dmuxu_0 /* OUT */ (dmuxu_0),
	.dmuxu_1 /* OUT */ (dmuxu_1),
	.dmuxu_2 /* OUT */ (dmuxu_2),
	.dmuxd_0 /* OUT */ (dmuxd_0),
	.dmuxd_1 /* OUT */ (dmuxd_1),
	.dmuxd_2 /* OUT */ (dmuxd_2),
	.dren /* OUT */ (dren),
	.xdsrc /* OUT */ (xdsrc),
	.ainen /* OUT */ (ainen),
	.sys_clk(sys_clk) // Generated
);

// MEM.NET (140) - cpu : cpu
cpu cpu_inst
(
	.sizin_0 /* IN */ (sizin_0),
	.sizin_1 /* IN */ (sizin_1),
	.rwin /* IN */ (rwin),
	.notack /* IN */ (notack),
	.ack /* IN */ (ack_obuf),
	.dreqin /* IN */ (dreqin),
	.resetl /* IN */ (resetl),
	.clk_0 /* IN */ (clk),
	.intbm /* IN */ (intbm),
	.intbms /* IN */ (intbms),
	.m68k /* IN */ (m68k),
	.ba /* IN */ (ba_obuf),
	.dbgl /* IN */ (dbgl_obuf),
	.dtackl /* OUT */ (dtackl),
	.erd /* OUT */ (erd),
	.w_0_out /* BUS */ (w_0_out),
	.w_0_oe /* BUS */ (w_0_oe),
	.w_0_in /* BUS */ (w_0_in),
	.w_1_out /* BUS */ (w_1_out),
	.w_1_oe /* BUS */ (w_1_oe),
	.w_1_in /* BUS */ (w_1_in),
	.w_2_out /* BUS */ (w_2_out),
	.w_2_oe /* BUS */ (w_2_oe),
	.w_2_in /* BUS */ (w_2_in),
	.w_3_out /* BUS */ (w_3_out),
	.w_3_oe /* BUS */ (w_3_oe),
	.w_3_in /* BUS */ (w_3_in),
	.rw_out /* BUS */ (rw_out),
	.rw_oe /* BUS */ (rw_oe),
	.rw_in /* BUS */ (rw_in),
	.mreq_out /* BUS */ (mreq_out),
	.mreq_oe /* BUS */ (mreq_oe),
	.mreq_in /* BUS */ (mreq_in),
	.justify_out /* BUS */ (justify_out),
	.justify_oe /* BUS */ (justify_oe),
	.justify_in /* BUS */ (justify_in),
	.sys_clk(sys_clk) // Generated
);

// MEM.NET (276) - q0 : fd4q
fd4q q0_inst
(
	.q /* OUT */ (idle),
	.d /* IN */ (d0),
	.cp /* IN */ (clk),
	.sd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MEM.NET (277) - q1a : fd2q
fd2q q1a_inst
(
	.q /* OUT */ (q1a),
	.d /* IN */ (d1a),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MEM.NET (278) - q1b : fd2q
fd2q q1b_inst
(
	.q /* OUT */ (q1b),
	.d /* IN */ (d1b),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MEM.NET (279) - q1c : fd2q
fd2q q1c_inst
(
	.q /* OUT */ (q1c),
	.d /* IN */ (d1c),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MEM.NET (280) - q1d : fd2q
fd2q q1d_inst
(
	.q /* OUT */ (q1d),
	.d /* IN */ (d1d),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MEM.NET (281) - q2a : fd2q
fd2q q2a_inst
(
	.q /* OUT */ (q2a),
	.d /* IN */ (q1d),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MEM.NET (282) - q2b : fd2q
fd2q q2b_inst
(
	.q /* OUT */ (q2b),
	.d /* IN */ (d2b),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MEM.NET (283) - q2c : fd2q
fd2q q2c_inst
(
	.q /* OUT */ (q2c),
	.d /* IN */ (d2c),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MEM.NET (284) - q3a : fd2q
fd2q q3a_inst
(
	.q /* OUT */ (q3a),
	.d /* IN */ (d3a),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MEM.NET (288) - q3b : fd2q
fd2q q3b_inst
(
	.q /* OUT */ (q3b),
	.d /* IN */ (d3b),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MEM.NET (290) - q4a : fd2q
fd2q q4a_inst
(
	.q /* OUT */ (q4a),
	.d /* IN */ (d4a),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MEM.NET (291) - q4b : fd2q
fd2q q4b_inst
(
	.q /* OUT */ (q4b),
	.d /* IN */ (d4b),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MEM.NET (292) - q4c : fd2q
fd2q q4c_inst
(
	.q /* OUT */ (q4c),
	.d /* IN */ (d4c),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MEM.NET (293) - q4d : fd2q
fd2q q4d_inst
(
	.q /* OUT */ (q4d),
	.d /* IN */ (d4d),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MEM.NET (294) - q4e : fd2q
fd2q q4e_inst
(
	.q /* OUT */ (q4e),
	.d /* IN */ (q4d),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MEM.NET (295) - q4f : fd2q
fd2q q4f_inst
(
	.q /* OUT */ (q4f),
	.d /* IN */ (d4f),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MEM.NET (296) - q4g : fd2q
fd2q q4g_inst
(
	.q /* OUT */ (q4g),
	.d /* IN */ (d4g),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MEM.NET (297) - q4h : fd2q
fd2q q4h_inst
(
	.q /* OUT */ (q4h),
	.d /* IN */ (d4h),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MEM.NET (298) - q4i : fd2q
fd2q q4i_inst
(
	.q /* OUT */ (q4i),
	.d /* IN */ (q4h),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MEM.NET (299) - q5ai : fd2q
fd2q q5ai_inst
(
	.q /* OUT */ (q5ai),
	.d /* IN */ (d5a),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MEM.NET (300) - q5b : fd2q
fd2q q5b_inst
(
	.q /* OUT */ (q5b),
	.d /* IN */ (d5b),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MEM.NET (301) - q5c : fd2q
fd2q q5c_inst
(
	.q /* OUT */ (q5c),
	.d /* IN */ (d5c),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MEM.NET (302) - q7a : fd2q
fd2q q7a_inst
(
	.q /* OUT */ (q7a),
	.d /* IN */ (d7a_obuf),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MEM.NET (303) - q7b : fd2q
fd2q q7b_inst
(
	.q /* OUT */ (q7b),
	.d /* IN */ (d7b),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MEM.NET (304) - q8a : fd2q
fd2q q8a_inst
(
	.q /* OUT */ (q8a),
	.d /* IN */ (d8a),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MEM.NET (305) - q8b : fd2q
fd2q q8b_inst
(
	.q /* OUT */ (q8b),
	.d /* IN */ (d8b),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MEM.NET (306) - q8c : fd2q
fd2q q8c_inst
(
	.q /* OUT */ (q8c),
	.d /* IN */ (d8c),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MEM.NET (307) - q10 : fd2q
fd2q q10_inst
(
	.q /* OUT */ (q10),
	.d /* IN */ (d10),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MEM.NET (309) - q5a : niv
assign q5a = q5ai;

// MEM.NET (311) - q10u : dummy

// MEM.NET (318) - mtb0 : iv
assign mtb0 = ~d0;

// MEM.NET (320) - mtb1 : nd2
assign mtb1 = ~(d3b & lastcycle);

// MEM.NET (322) - mtb2 : iv
assign mtb2 = ~q4h;

// MEM.NET (323) - mtb3 : nd2
assign mtb3 = ~(d5c & lastcycle);

// MEM.NET (324) - mtb5 : nd3
assign mtb5 = ~(d7a_obuf & lastc & notreadt);

// MEM.NET (325) - mtb6 : nd2
assign mtb6 = ~(d8c & lastcycle);

// MEM.NET (326) - mtb8 : iv
assign mtb8 = ~d10;

// MEM.NET (327) - mtb9 : nd2
assign mtb9 = ~(d7b & lastcycle);

// MEM.NET (328) - notreadt : ivm
assign notreadt = ~readt_obuf;

// MEM.NET (330) - mtba : an6
assign mtba = mtb0 & mtb1 & mtb2 & mtb3 & vcc & mtb5;

// MEM.NET (331) - mtbb : an3
assign mtbb = mtb6 & mtb8 & mtb9;

// MEM.NET (332) - mtbd : nd2
assign mtbd = ~(mtba & mtbb);

// MEM.NET (333) - mtb : fd4q
fd4q mtb_inst
(
	.q /* OUT */ (mtb),
	.d /* IN */ (mtbd),
	.cp /* IN */ (clk),
	.sd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MEM.NET (334) - ack : nivu2
assign ack_obuf = mtb;

// MEM.NET (336) - d0 : an2
assign d0 = ack_obuf & notmreq;

// MEM.NET (337) - d1a : an6
assign d1a = ack_obuf & mreqb & fdram & notmatch & notrefack & notourack;

// MEM.NET (339) - mt1b0 : nd2
assign mt1b0 = ~(q1a & dramspeed0);

// MEM.NET (340) - mt1b1 : nd2
assign mt1b1 = ~(q1a & dramspeed1);

// MEM.NET (341) - d1b : nd2
assign d1b = ~(mt1b0 & mt1b1);

// MEM.NET (343) - mt1c0 : nd2
assign mt1c0 = ~(q1a & dramspeed2);

// MEM.NET (344) - mt1c1 : iv
assign mt1c1 = ~q1b;

// MEM.NET (345) - d1c : nd2
assign d1c = ~(mt1c0 & mt1c1);

// MEM.NET (347) - mt1d0 : nd2
assign mt1d0 = ~(q1a & dramspeed3);

// MEM.NET (348) - mt1d1 : iv
assign mt1d1 = ~q1c;

// MEM.NET (349) - d1d : nd2
assign d1d = ~(mt1d0 & mt1d1);

// MEM.NET (351) - mt2b0 : nd2
assign mt2b0 = ~(q2a & dramspeed0);

// MEM.NET (352) - mt2b1 : nd2
assign mt2b1 = ~(q2a & dramspeed1);

// MEM.NET (353) - d2b : nd2
assign d2b = ~(mt2b0 & mt2b1);

// MEM.NET (355) - mt2c0 : nd2
assign mt2c0 = ~(q2a & dramspeed2);

// MEM.NET (356) - mt2c1 : iv
assign mt2c1 = ~q2b;

// MEM.NET (357) - d2c : nd2
assign d2c = ~(mt2c0 & mt2c1);

// MEM.NET (359) - mt3a0 : nd6
assign mt3a0 = ~(ack_obuf & mreqb & fdram & match & notrefack & notourack);

// MEM.NET (360) - mt3a1 : nd2
assign mt3a1 = ~(q2a & dramspeed3);

// MEM.NET (361) - mt3a2 : iv
assign mt3a2 = ~q2c;

// MEM.NET (362) - mt3a3 : nd2
assign mt3a3 = ~(q3b & notlastcycle);

// MEM.NET (364) - rambsy : iv
assign ram_bsy = ~ram_rdy;

// MEM.NET (365) - mt3a4 : nd2
assign mt3a4 = ~(q3a & ram_bsy);

// MEM.NET (366) - d3a : nd5
assign d3a = ~(mt3a0 & mt3a1 & mt3a2 & mt3a3 & mt3a4);

// MEM.NET (369) - d3b : an2
assign d3b = q3a & ram_rdy;

// MEM.NET (371) - d4a : an3
assign d4a = ack_obuf & mreqb & refack_obuf;

// MEM.NET (373) - mt4b0 : nd2
assign mt4b0 = ~(q4a & dramspeed0);

// MEM.NET (374) - mt4b1 : nd2
assign mt4b1 = ~(q4a & dramspeed1);

// MEM.NET (375) - d4b : nd2
assign d4b = ~(mt4b0 & mt4b1);

// MEM.NET (377) - mt4c0 : nd2
assign mt4c0 = ~(q4a & dramspeed2);

// MEM.NET (378) - mt4c1 : iv
assign mt4c1 = ~q4b;

// MEM.NET (379) - d4c : nd2
assign d4c = ~(mt4c0 & mt4c1);

// MEM.NET (381) - mt4d0 : nd2
assign mt4d0 = ~(q4a & dramspeed3);

// MEM.NET (382) - mt4d1 : iv
assign mt4d1 = ~q4c;

// MEM.NET (383) - d4d : nd2
assign d4d = ~(mt4d0 & mt4d1);

// MEM.NET (385) - d4f : an2
assign d4f = q4e & dramspeed0;

// MEM.NET (387) - mt4g0 : nd2
assign mt4g0 = ~(q4e & dramspeed1);

// MEM.NET (388) - mt4g1 : nd2
assign mt4g1 = ~(q4e & dramspeed2);

// MEM.NET (389) - mt4g2 : iv
assign mt4g2 = ~q4f;

// MEM.NET (390) - d4g : nd3
assign d4g = ~(mt4g0 & mt4g1 & mt4g2);

// MEM.NET (392) - mt4h0 : nd2
assign mt4h0 = ~(q4e & dramspeed3);

// MEM.NET (393) - mt4h1 : iv
assign mt4h1 = ~q4g;

// MEM.NET (394) - d4h : nd2
assign d4h = ~(mt4h0 & mt4h1);

// MEM.NET (396) - mt5a0 : nd6
assign mt5a0 = ~(ack_obuf & mreqb & from & notrefack & notourack & vcc);

// MEM.NET (397) - mt5a1 : nd2
assign mt5a1 = ~(q5c & notlastcycle);

// MEM.NET (398) - d5a : nd2
assign d5a = ~(mt5a0 & mt5a1);

// MEM.NET (400) - mt5b0 : nd2
assign mt5b0 = ~(q5a & slowrom);

// MEM.NET (401) - mt5b1 : nd2
assign mt5b1 = ~(q5b & notwaitdone);

// MEM.NET (402) - d5b : nd2
assign d5b = ~(mt5b0 & mt5b1);

// MEM.NET (404) - slowrom : iv
assign slowrom = ~fastrom;

// MEM.NET (405) - mt5c0 : nd2
assign mt5c0 = ~(q5a & fastrom);

// MEM.NET (406) - mt5c1 : nd2
assign mt5c1 = ~(q5b & waitdone);

// MEM.NET (407) - d5c : nd2
assign d5c = ~(mt5c0 & mt5c1);

// MEM.NET (409) - mt7a0 : nd6
assign mt7a0 = ~(ack_obuf & mreqb & fintdev & notrefack & notourack & vcc);

// MEM.NET (410) - mt7a1 : nd3
assign mt7a1 = ~(q7a & notreads & notlastcycle);

// MEM.NET (411) - mt7a2 : nd2
assign mt7a2 = ~(q7b & notlastcycle);

// MEM.NET (412) - d7a : nd3
assign d7a_obuf = ~(mt7a0 & mt7a1 & mt7a2);

// MEM.NET (414) - d7b : an2
assign d7b = q7a & reads_obuf;

// MEM.NET (416) - mt8a0 : nd6
assign mt8a0 = ~(ack_obuf & mreqb & fextdev & notrefack & notourack & vcc);

// MEM.NET (417) - mt8a1 : nd2
assign mt8a1 = ~(q8c & notlastcycle);

// MEM.NET (418) - d8a : nd2
assign d8a = ~(mt8a0 & mt8a1);

// MEM.NET (420) - mt8b0 : iv
assign mt8b0 = ~q8a;

// MEM.NET (421) - mt8b1 : nd2
assign mt8b1 = ~(q8b & notwaitdone);

// MEM.NET (422) - d8b : nd2
assign d8b = ~(mt8b0 & mt8b1);

// MEM.NET (424) - d8c : an2
assign d8c = q8b & waitdone;

// MEM.NET (426) - d10 : an4
assign d10 = ack_obuf & mreqb & ourack & notrefack;

// MEM.NET (428) - wait1 : an2
assign wait1 = iospeed2 & q8a;

// MEM.NET (430) - wait2 : an3
assign wait2 = romspeed3 & q5a & slowrom;

// MEM.NET (432) - wait30 : nd3
assign wait30 = ~(romspeed2 & q5a & slowrom);

// MEM.NET (433) - wait31 : nd2
assign wait31 = ~(iospeed3 & q8a);

// MEM.NET (434) - wait3 : nd2
assign wait3 = ~(wait30 & wait31);

// MEM.NET (436) - wait5 : an3
assign wait5 = romspeed1 & q5a & slowrom;

// MEM.NET (438) - wait70 : nd3
assign wait70 = ~(romspeed0 & q5a & slowrom);

// MEM.NET (439) - wait71 : nd2
assign wait71 = ~(iospeed1 & q8a);

// MEM.NET (440) - wait7 : nd2
assign wait7 = ~(wait70 & wait71);

// MEM.NET (442) - wait15 : an2
assign wait15 = iospeed0 & q8a;

// MEM.NET (446) - rasoffl[1-2] : nd2
assign rasoffl_1 = ~(d1a & abs_2);
assign rasoffl_2 = ~(d1a & abs_3);

// MEM.NET (448) - rason : niv
assign rason = q1d;

// MEM.NET (450) - muxi : nr2
assign muxi = ~(d1d | q1d);

// MEM.NET (451) - mux : ivm
assign mux = ~muxi;

// MEM.NET (462) - oet0 : nd2
assign oet0 = ~(q3a & reads_obuf);

// MEM.NET (463) - oet1 : nd2
assign oet1 = ~(q3b & reads_obuf);

// MEM.NET (464) - oet2 : nd2
assign oet2 = ~(q5a & reads_obuf);

// MEM.NET (465) - oet3 : nd2
assign oet3 = ~(q5b & reads_obuf);

// MEM.NET (466) - oet4 : nd2
assign oet4 = ~(q5c & reads_obuf);

// MEM.NET (467) - oet5 : nd2
assign oet5 = ~(q7a & reads_obuf);

// MEM.NET (468) - oet6 : nd2
assign oet6 = ~(q7b & reads_obuf);

// MEM.NET (469) - oet7 : nd2
assign oet7 = ~(q8b & reads_obuf);

// MEM.NET (470) - oeti : nd8
assign oeti = ~(oet0 & oet1 & oet2 & oet3 & oet4 & oet5 & oet6 & oet7);

// MEM.NET (471) - oet : nivu2
assign oet_obuf = oeti;

// MEM.NET (473) - startcas : an2
assign startcas = q3a & dram;

// MEM.NET (475) - dinl0 : nd2
assign dinl0 = ~(q3b & reads_obuf);

// MEM.NET (476) - dinl1 : nd2
assign dinl1 = ~(q5c & reads_obuf);

// MEM.NET (477) - dinl3 : nd2
assign dinl3 = ~(q7b & reads_obuf);

// MEM.NET (478) - dinl4 : nd2
assign dinl4 = ~(d8c & reads_obuf);

// MEM.NET (479) - dinlatchd : nd4
assign dinlatchd = ~(dinl0 & dinl1 & dinl3 & dinl4);

// MEM.NET (481) - dinlatch : nivh
assign dinlatch = dinlatchd;

// MEM.NET (483) - iwnext : an2
assign iwnext = q7a & notreads;

// MEM.NET (484) - nextci : nr6
assign nextci = ~(q3b | q5c | iwnext | q7b | q8c | ack_obuf);

// MEM.NET (485) - nextc : ivh
assign nextc = ~nextci;

// MEM.NET (487) - sw0 : nr4
assign sw0 = ~(d3a | d5a | d5b | d8b);

// MEM.NET (488) - swd : nr2
assign swd = ~(sw0 | readt_obuf);

// MEM.NET (489) - startwe : fd1q
fd1q startwe_inst
(
	.q /* OUT */ (startwe),
	.d /* IN */ (swd),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// MEM.NET (493) - notrw : iv
assign notrw = ~rw_in;

// MEM.NET (494) - dol : nd3
assign doll = ~(ack_obuf & notrw & mreqb);

// MEM.NET (499) - lwdli1 : fd1q
fd1q lwdli1_inst
(
	.q /* OUT */ (lwdli1),
	.d /* IN */ (doll),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// MEM.NET (500) - lwdli2 : fd1q
fd1q lwdli2_inst
(
	.q /* OUT */ (lwdli2),
	.d /* IN */ (doll),
	.cp /* IN */ (tlw),
	.sys_clk(sys_clk) // Generated
);

// MEM.NET (501) - lwdl : an2
assign lwdl = lwdli1 & lwdli2;

// MEM.NET (503) - allrasoffl : nr2
assign allrasoffl = ~(d4a | q4i);

// MEM.NET (504) - allrasonl : iv
assign allrasonl = ~q4d;

// MEM.NET (505) - allcasonl : nr2
assign allcasonl = ~(q4d | q4e);

// MEM.NET (506) - resrow : niv
assign resrow = q4a;

// MEM.NET (512) - w[0] : dncnt
dncnt w_index_0_inst
(
	.q /* OUT */ (wq_0),
	.co /* OUT */ (wco_0),
	.d /* IN */ (wd_0),
	.clk /* IN */ (clk),
	.ci /* IN */ (wcen),
	.ld /* IN */ (wld),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MEM.NET (513) - w[1] : dncnt
dncnt w_index_1_inst
(
	.q /* OUT */ (wq_1),
	.co /* OUT */ (wco_1),
	.d /* IN */ (wd_1),
	.clk /* IN */ (clk),
	.ci /* IN */ (wco_0),
	.ld /* IN */ (wld),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MEM.NET (514) - w[2] : dncnt
dncnt w_index_2_inst
(
	.q /* OUT */ (wq_2),
	.co /* OUT */ (wco_2),
	.d /* IN */ (wd_2),
	.clk /* IN */ (clk),
	.ci /* IN */ (wco_1),
	.ld /* IN */ (wld),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MEM.NET (515) - w[3] : dncnt
dncnt w_index_3_inst
(
	.q /* OUT */ (wq_3),
	.co /* OUT */ (wco_3),
	.d /* IN */ (wait15),
	.clk /* IN */ (clk),
	.ci /* IN */ (wco_2),
	.ld /* IN */ (wld),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MEM.NET (516) - wco[3] : dummy

// MEM.NET (517) - wcen : or4
assign wcen = wq_0 | wq_1 | wq_2 | wq_3;

// MEM.NET (519) - wld : or6
assign wld = wait1 | wait2 | wait3 | wait5 | wait7 | wait15;

// MEM.NET (521) - wait : iv
assign _wait = ~waitl;

// MEM.NET (522) - waitdonei : nr6
assign waitdonei = ~(wq_0 | wq_1 | wq_2 | wq_3 | _wait | gnd);

// MEM.NET (523) - notwaitdone : iv
assign notwaitdone = ~waitdonei;

// MEM.NET (524) - waitdone : iv
assign waitdone = ~notwaitdone;

// MEM.NET (526) - wd[0] : or6
assign wd_0 = wait1 | wait3 | wait5 | wait7 | wait15 | gnd;

// MEM.NET (527) - wd[1] : or4
assign wd_1 = wait2 | wait3 | wait7 | wait15;

// MEM.NET (528) - wd[2] : or3
assign wd_2 = wait5 | wait7 | wait15;

// MEM.NET (530) - dspdl[0-1] : iv
assign dspdl_0 = ~dspd_0;
assign dspdl_1 = ~dspd_1;

// MEM.NET (531) - iospdl[0-1] : iv
assign iospdl_0 = ~iospd_0;
assign iospdl_1 = ~iospd_1;

// MEM.NET (532) - romspdl[0-1] : iv
assign romspdl_0 = ~romspd_0;
assign romspdl_1 = ~romspd_1;

// MEM.NET (534) - dramspeed0 : an2
assign dramspeed0 = dspdl_1 & dspdl_0;

// MEM.NET (535) - dramspeed1 : an2
assign dramspeed1 = dspdl_1 & dspd_0;

// MEM.NET (536) - dramspeed2 : an2
assign dramspeed2 = dspd_1 & dspdl_0;

// MEM.NET (537) - dramspeed3 : an2
assign dramspeed3 = dspd_1 & dspd_0;

// MEM.NET (539) - iospeed0 : an2
assign iospeed0 = iospdl_1 & iospdl_0;

// MEM.NET (540) - iospeed1 : an2
assign iospeed1 = iospdl_1 & iospd_0;

// MEM.NET (541) - iospeed2 : an2
assign iospeed2 = iospd_1 & iospdl_0;

// MEM.NET (542) - iospeed3 : an2
assign iospeed3 = iospd_1 & iospd_0;

// MEM.NET (544) - romspeed0 : an2
assign romspeed0 = romspdl_1 & romspdl_0;

// MEM.NET (545) - romspeed1 : an2
assign romspeed1 = romspdl_1 & romspd_0;

// MEM.NET (546) - romspeed2 : an2
assign romspeed2 = romspd_1 & romspdl_0;

// MEM.NET (547) - romspeed3 : an2
assign romspeed3 = romspd_1 & romspd_0;

// MEM.NET (552) - rasl[0] : rasgen
rasgen rasl_index_0_inst
(
	.csl /* OUT */ (rasl_0),
	.on1 /* IN */ (rason),
	.roffl /* IN */ (rasoffl_2),
	.bs /* IN */ (bs_3),
	.allonl /* IN */ (allrasonl),
	.alloffl /* IN */ (allrasoffl),
	.clk /* IN */ (clk),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MEM.NET (554) - rasl[1] : rasgen
rasgen rasl_index_1_inst
(
	.csl /* OUT */ (rasl_1),
	.on1 /* IN */ (rason),
	.roffl /* IN */ (rasoffl_1),
	.bs /* IN */ (bs_2),
	.allonl /* IN */ (allrasonl),
	.alloffl /* IN */ (allrasoffl),
	.clk /* IN */ (clk),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MEM.NET (560) - clkl : niv
assign clkl = tlw;

// MEM.NET (561) - pclkl : nivh
assign pclkl = tlw;

// MEM.NET (564) - casd[0] : nd2
assign casd_0 = ~(startcas & bs_3);

// MEM.NET (565) - casd[1] : nd2
assign casd_1 = ~(startcas & bs_2);

// MEM.NET (566) - cas00 : fd4q
fd4q cas00_inst
(
	.q /* OUT */ (cas00),
	.d /* IN */ (casd_0),
	.cp /* IN */ (pclkl),
	.sd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MEM.NET (567) - cas01 : fd4q
fd4q cas01_inst
(
	.q /* OUT */ (cas01),
	.d /* IN */ (casd_0),
	.cp /* IN */ (clk),
	.sd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MEM.NET (568) - cas10 : fd4q
fd4q cas10_inst
(
	.q /* OUT */ (cas10),
	.d /* IN */ (casd_1),
	.cp /* IN */ (pclkl),
	.sd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MEM.NET (569) - cas11 : fd4q
fd4q cas11_inst
(
	.q /* OUT */ (cas11),
	.d /* IN */ (casd_1),
	.cp /* IN */ (clk),
	.sd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MEM.NET (570) - casl[0] : an3
assign casl_0 = cas00 & cas01 & allcasonl;

// MEM.NET (571) - casl[1] : an3
assign casl_1 = cas10 & cas11 & allcasonl;

// MEM.NET (573) - romcst : or3
assign romcst = q5a | q5b | q5c;

// MEM.NET (574) - romcsl[0-1] : nd2
assign romcsl_0 = ~(bs_0 & romcst);
assign romcsl_1 = ~(bs_1 & romcst);

// MEM.NET (576) - dspcsli : nr3
assign dspcsli = ~(q8a | q8b | q8c);

// MEM.NET (577) - dspcsl : niv
assign dspcsl = dspcsli;

// MEM.NET (581) - int_we : nd2
assign int_wel = ~(q7a & notreads);

// MEM.NET (583) - intwe : ivm
assign intwe = ~int_wel;

// MEM.NET (584) - intswe : an2
assign intswe = q7a & notreads;

// MEM.NET (586) - ba[0-2] : eo
assign ba_0 = maska_0_obuf ^ bigend;
assign ba_1 = maska_1_obuf ^ bigend;
assign ba_2 = maska_2_obuf ^ bigend;

// MEM.NET (599) - mwsl[0-1] : iv
assign mwsl_0 = ~mws_0;
assign mwsl_1 = ~mws_1;

// MEM.NET (601) - wet0 : fd2
fd2 wet0_inst
(
	.q /* OUT */ (wet0),
	.qn /* OUT */ (wet0l),
	.d /* IN */ (startwe),
	.cp /* IN */ (tlw),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MEM.NET (603) - wetu : dummy

// MEM.NET (605) - weti : nd2
assign weti = ~(wet0l & int_wel);

// MEM.NET (606) - wet : nivu
assign wet_obuf = weti;

// MEM.NET (609) - mws8 : an2
assign mws8 = mwsl_1 & mwsl_0;

// MEM.NET (610) - mws16 : an2m
assign mws16 = mwsl_1 & mws_0;

// MEM.NET (611) - mws32 : an2m
assign mws32 = mws_1 & mwsl_0;

// MEM.NET (612) - mws64 : an2m
assign mws64 = mws_1 & mws_0;

// MEM.NET (614) - we00 : iv
assign we00 = ~mws8;

// MEM.NET (615) - we01 : iv
assign we01 = ~bm_0;

// MEM.NET (616) - we02 : nd2
assign we02 = ~(mws16 & bm_2);

// MEM.NET (617) - we03 : nd2
assign we03 = ~(mws16 & bm_4);

// MEM.NET (618) - we04 : nd2
assign we04 = ~(mws16 & bm_6);

// MEM.NET (619) - we05 : nd2
assign we05 = ~(mws32 & bm_4);

// MEM.NET (620) - we[0] : nd6
assign we_0 = ~(we00 & we01 & we02 & we03 & we04 & we05);

// MEM.NET (631) - we10 : nd2
assign we10 = ~(mws16 & bm_1);

// MEM.NET (632) - we11 : nd2
assign we11 = ~(mws16 & bm_3);

// MEM.NET (633) - we12 : nd2
assign we12 = ~(mws16 & bm_5);

// MEM.NET (634) - we13 : nd2
assign we13 = ~(mws16 & bm_7);

// MEM.NET (635) - we14 : nd2
assign we14 = ~(mws32 & bm_1);

// MEM.NET (636) - we15 : nd2
assign we15 = ~(mws32 & bm_5);

// MEM.NET (637) - we16 : nd2
assign we16 = ~(mws64 & bm_1);

// MEM.NET (638) - we[1] : nd8
assign we_1 = ~(we10 & we11 & we12 & we13 & we14 & we15 & we16 & vcc);

// MEM.NET (648) - we20 : nd2
assign we20 = ~(mws32 & bm_2);

// MEM.NET (649) - we21 : nd2
assign we21 = ~(mws32 & bm_6);

// MEM.NET (650) - we22 : nd2
assign we22 = ~(mws64 & bm_2);

// MEM.NET (651) - we[2] : nd3
assign we_2 = ~(we20 & we21 & we22);

// MEM.NET (661) - we30 : nd2
assign we30 = ~(mws32 & bm_3);

// MEM.NET (662) - we31 : nd2
assign we31 = ~(mws32 & bm_7);

// MEM.NET (663) - we32 : nd2
assign we32 = ~(mws64 & bm_3);

// MEM.NET (664) - we[3] : nd3
assign we_3 = ~(we30 & we31 & we32);

// MEM.NET (666) - wel[0-3] : nd2
assign wel_0 = ~(we_0 & wet_obuf);
assign wel_1 = ~(we_1 & wet_obuf);
assign wel_2 = ~(we_2 & wet_obuf);
assign wel_3 = ~(we_3 & wet_obuf);

// MEM.NET (667) - wel[4-7] : nd3
assign wel_4 = ~(wet_obuf & mws64 & bm_4);
assign wel_5 = ~(wet_obuf & mws64 & bm_5);
assign wel_6 = ~(wet_obuf & mws64 & bm_6);
assign wel_7 = ~(wet_obuf & mws64 & bm_7);

// MEM.NET (691) - oe00 : nd2
assign oe00 = ~(oet_obuf & mws8);

// MEM.NET (692) - oe01 : nd2
assign oe01 = ~(oet_obuf & mws16);

// MEM.NET (693) - oe02 : nd2
assign oe02 = ~(oet_obuf & bm_0);

// MEM.NET (694) - oe03 : nd2
assign oe03 = ~(oet_obuf & bm_1);

// MEM.NET (695) - oe04 : nd3
assign oe04 = ~(oet_obuf & mws32 & bm_4);

// MEM.NET (696) - oe05 : nd3
assign oe05 = ~(oet_obuf & mws32 & bm_5);

// MEM.NET (697) - oel[0] : an6
assign oel_0 = oe00 & oe01 & oe02 & oe03 & oe04 & oe05;

// MEM.NET (699) - oe10 : nd3
assign oe10 = ~(oet_obuf & mws32 & bm_2);

// MEM.NET (700) - oe11 : nd3
assign oe11 = ~(oet_obuf & mws32 & bm_3);

// MEM.NET (701) - oe12 : nd3
assign oe12 = ~(oet_obuf & mws32 & bm_6);

// MEM.NET (702) - oe13 : nd3
assign oe13 = ~(oet_obuf & mws32 & bm_7);

// MEM.NET (703) - oe14 : nd3
assign oe14 = ~(oet_obuf & mws64 & bm_2);

// MEM.NET (704) - oe15 : nd3
assign oe15 = ~(oet_obuf & mws64 & bm_3);

// MEM.NET (705) - oel[1] : an6
assign oel_1 = oe10 & oe11 & oe12 & oe13 & oe14 & oe15;

// MEM.NET (707) - oe20 : nd3
assign oe20 = ~(oet_obuf & mws64 & bm_4);

// MEM.NET (708) - oe21 : nd3
assign oe21 = ~(oet_obuf & mws64 & bm_5);

// MEM.NET (709) - oe22 : nd3
assign oe22 = ~(oet_obuf & mws64 & bm_6);

// MEM.NET (710) - oe23 : nd3
assign oe23 = ~(oet_obuf & mws64 & bm_7);

// MEM.NET (711) - oel[2] : an4
assign oel_2 = oe20 & oe21 & oe22 & oe23;

// MEM.NET (715) - dinlatchl[0-7] : nd2p
assign dinlatchl_0 = ~(dinlatch & bm_0);
assign dinlatchl_1 = ~(dinlatch & bm_1);
assign dinlatchl_2 = ~(dinlatch & bm_2);
assign dinlatchl_3 = ~(dinlatch & bm_3);
assign dinlatchl_4 = ~(dinlatch & bm_4);
assign dinlatchl_5 = ~(dinlatch & bm_5);
assign dinlatchl_6 = ~(dinlatch & bm_6);
assign dinlatchl_7 = ~(dinlatch & bm_7);

// MEM.NET (716) - dinlatch[0-7] : nd2p
assign dinlatch_0 = ~(dinlatchl_0 & lwdl);
assign dinlatch_1 = ~(dinlatchl_1 & lwdl);
assign dinlatch_2 = ~(dinlatchl_2 & lwdl);
assign dinlatch_3 = ~(dinlatchl_3 & lwdl);
assign dinlatch_4 = ~(dinlatchl_4 & lwdl);
assign dinlatch_5 = ~(dinlatchl_5 & lwdl);
assign dinlatch_6 = ~(dinlatchl_6 & lwdl);
assign dinlatch_7 = ~(dinlatchl_7 & lwdl);

// MEM.NET (720) - sizout[0-2] : niv
assign sizout_0 = maskw_0;
assign sizout_1 = maskw_1;
assign sizout_2 = maskw_2;

// MEM.NET (721) - maskwu : dummy

// MEM.NET (723) - readsi : fd1q
fd1q readsi_inst
(
	.q /* OUT */ (readsi),
	.d /* IN */ (readt_obuf),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// MEM.NET (724) - readt : mx2p
assign readt_obuf = (ack_obuf) ? rw_in : readsi;

// MEM.NET (725) - reads : nivu
assign reads_obuf = readsi;

// MEM.NET (729) - mwti[0-1] : mx2p
assign mwti_0 = (ack_obuf) ? mw_0 : mws_0;
assign mwti_1 = (ack_obuf) ? mw_1 : mws_1;

// MEM.NET (730) - mws[0-1] : fd1q
fd1q mws_from_0_to_1_inst_0
(
	.q /* OUT */ (mws_0),
	.d /* IN */ (mwti_0),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mws_from_0_to_1_inst_1
(
	.q /* OUT */ (mws_1),
	.d /* IN */ (mwti_1),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// MEM.NET (731) - mwt[0-1] : nivh
assign mwt_0 = mwti_0;
assign mwt_1 = mwti_1;

// MEM.NET (733) - mreqb : nivh
assign mreqb = mreq_in;

// MEM.NET (734) - notmreq : iv
assign notmreq = ~mreqb;

// MEM.NET (735) - notmatch : iv
assign notmatch = ~match;

// MEM.NET (736) - notlastcycle : iv
assign notlastcycle = ~lastcycle;

// MEM.NET (737) - notreads : iv
assign notreads = ~readsi;

// MEM.NET (738) - notack : iv
assign notack = ~ack_obuf;

// MEM.NET (739) - notrefack : iv
assign notrefack = ~refack_obuf;

// MEM.NET (740) - notourack : iv
assign notourack = ~ourack;

// MEM.NET (743) - newrow : niv
assign newrow = q1a;

// MEM.NET (747) - dreqd : nd2
assign dreqd = ~(mreqb & ack_obuf);

// MEM.NET (748) - jdreqlout : fd1q
fd1q jdreqlout_inst
(
	.q /* OUT */ (dreqlout),
	.d /* IN */ (dreqd),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
endmodule
/* verilator lint_on LITENDIAN */
