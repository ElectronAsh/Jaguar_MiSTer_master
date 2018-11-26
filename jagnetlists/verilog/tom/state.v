/* verilator lint_off LITENDIAN */
`include "defs.v"

module state
(
	output [0:23] blit_addr_out,
	output [0:23] blit_addr_oe,
	input [0:23] blit_addr_in,
	output justify_out,
	output justify_oe,
	input justify_in,
	output mreq_out,
	output mreq_oe,
	input mreq_in,
	output width_0_out,
	output width_0_oe,
	input width_0_in,
	output width_1_out,
	output width_1_oe,
	input width_1_in,
	output width_2_out,
	output width_2_oe,
	input width_2_in,
	output width_3_out,
	output width_3_oe,
	input width_3_in,
	output read_out,
	output read_oe,
	input read_in,
	output gpu_dout_0_out,
	output gpu_dout_0_oe,
	input gpu_dout_0_in,
	output gpu_dout_1_out,
	output gpu_dout_1_oe,
	input gpu_dout_1_in,
	output gpu_dout_2_out,
	output gpu_dout_2_oe,
	input gpu_dout_2_in,
	output gpu_dout_3_out,
	output gpu_dout_3_oe,
	input gpu_dout_3_in,
	output gpu_dout_4_out,
	output gpu_dout_4_oe,
	input gpu_dout_4_in,
	output gpu_dout_5_out,
	output gpu_dout_5_oe,
	input gpu_dout_5_in,
	output gpu_dout_6_out,
	output gpu_dout_6_oe,
	input gpu_dout_6_in,
	output gpu_dout_7_out,
	output gpu_dout_7_oe,
	input gpu_dout_7_in,
	output gpu_dout_8_out,
	output gpu_dout_8_oe,
	input gpu_dout_8_in,
	output gpu_dout_9_out,
	output gpu_dout_9_oe,
	input gpu_dout_9_in,
	output gpu_dout_10_out,
	output gpu_dout_10_oe,
	input gpu_dout_10_in,
	output gpu_dout_11_out,
	output gpu_dout_11_oe,
	input gpu_dout_11_in,
	output gpu_dout_12_out,
	output gpu_dout_12_oe,
	input gpu_dout_12_in,
	output gpu_dout_13_out,
	output gpu_dout_13_oe,
	input gpu_dout_13_in,
	output gpu_dout_14_out,
	output gpu_dout_14_oe,
	input gpu_dout_14_in,
	output gpu_dout_15_out,
	output gpu_dout_15_oe,
	input gpu_dout_15_in,
	output gpu_dout_16_out,
	output gpu_dout_16_oe,
	input gpu_dout_16_in,
	output gpu_dout_17_out,
	output gpu_dout_17_oe,
	input gpu_dout_17_in,
	output gpu_dout_18_out,
	output gpu_dout_18_oe,
	input gpu_dout_18_in,
	output gpu_dout_19_out,
	output gpu_dout_19_oe,
	input gpu_dout_19_in,
	output gpu_dout_20_out,
	output gpu_dout_20_oe,
	input gpu_dout_20_in,
	output gpu_dout_21_out,
	output gpu_dout_21_oe,
	input gpu_dout_21_in,
	output gpu_dout_22_out,
	output gpu_dout_22_oe,
	input gpu_dout_22_in,
	output gpu_dout_23_out,
	output gpu_dout_23_oe,
	input gpu_dout_23_in,
	output gpu_dout_24_out,
	output gpu_dout_24_oe,
	input gpu_dout_24_in,
	output gpu_dout_25_out,
	output gpu_dout_25_oe,
	input gpu_dout_25_in,
	output gpu_dout_26_out,
	output gpu_dout_26_oe,
	input gpu_dout_26_in,
	output gpu_dout_27_out,
	output gpu_dout_27_oe,
	input gpu_dout_27_in,
	output gpu_dout_28_out,
	output gpu_dout_28_oe,
	input gpu_dout_28_in,
	output gpu_dout_29_out,
	output gpu_dout_29_oe,
	input gpu_dout_29_in,
	output gpu_dout_30_out,
	output gpu_dout_30_oe,
	input gpu_dout_30_in,
	output gpu_dout_31_out,
	output gpu_dout_31_oe,
	input gpu_dout_31_in,
	output a1fracldi,
	output a1ptrldi,
	output a2ptrldi,
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
	output apipe,
	output blit_breq_0,
	output blit_breq_1,
	output blit_int,
	output cmpdst,
	output daddasel_0,
	output daddasel_1,
	output daddasel_2,
	output daddbsel_0,
	output daddbsel_1,
	output daddbsel_2,
	output daddmode_0,
	output daddmode_1,
	output daddmode_2,
	output data_ena,
	output data_sel_0,
	output data_sel_1,
	output dbinh_n_0,
	output dbinh_n_1,
	output dbinh_n_2,
	output dbinh_n_3,
	output dbinh_n_4,
	output dbinh_n_5,
	output dbinh_n_6,
	output dbinh_n_7,
	output dend_0,
	output dend_1,
	output dend_2,
	output dend_3,
	output dend_4,
	output dend_5,
	output dpipe_0,
	output dpipe_1,
	output dstart_0,
	output dstart_1,
	output dstart_2,
	output dstart_3,
	output dstart_4,
	output dstart_5,
	output dstdread,
	output dstzread,
	output gena2,
	output lfu_func_0,
	output lfu_func_1,
	output lfu_func_2,
	output lfu_func_3,
	output daddq_sel,
	output modx_0,
	output modx_1,
	output modx_2,
	output patdadd,
	output patfadd,
	output phrase_mode,
	output reset_n,
	output srcdread,
	output srcshift_0,
	output srcshift_1,
	output srcshift_2,
	output srcshift_3,
	output srcshift_4,
	output srcshift_5,
	output srcz1add,
	output srcz2add,
	output srczread,
	output suba_x,
	output suba_y,
	output zaddr,
	output zmode_0,
	output zmode_1,
	output zmode_2,
	output zpipe_0,
	output zpipe_1,
	input a1_outside,
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
	input a2_pixsize_0,
	input a2_pixsize_1,
	input a2_pixsize_2,
	input [0:15] a2_x,
	input a2addx_0,
	input a2addx_1,
	input a2addy,
	input a2xsign,
	input a2ysign,
	input ack,
	input [0:23] address,
	input big_pix,
	input blit_back,
	input clk,
	input cmdld,
	input countld,
	input dcomp_0,
	input dcomp_1,
	input dcomp_2,
	input dcomp_3,
	input dcomp_4,
	input dcomp_5,
	input dcomp_6,
	input dcomp_7,
	input [0:31] gpu_din,
	input pixa_0,
	input pixa_1,
	input pixa_2,
	input srcd_0,
	input srcd_1,
	input srcd_2,
	input srcd_3,
	input srcd_4,
	input srcd_5,
	input srcd_6,
	input srcd_7,
	input statrd,
	input stopld,
	input xreset_n,
	input zcomp_0,
	input zcomp_1,
	input zcomp_2,
	input zcomp_3,
	input sys_clk // Generated
);
wire [0:15] dstxp;
wire bcompent;
wire bcompen;
wire dcompent;
wire dcompen;
wire bkgwren;
wire srcshade;
wire blit_idle;
wire inhibent;
wire inhiben;
wire atick_0;
wire atick_1;
wire aticki_0;
wire dest_cycle_1;
wire dsta_addi;
wire dwrite;
wire dwrite_1;
wire dzwrite;
wire dzwrite1;
wire icount_0;
wire icount_1;
wire icount_2;
wire indone;
wire inner0;
wire readreq;
wire srca_addi;
wire srcdreadd;
wire srcen;
wire sread_1;
wire sreadx_1;
wire step_inner;
wire writereq;
wire blitack;
wire dsta2;
wire gourd;
wire gourz;
wire instart;
wire memidle;
wire memready;
wire nowrite;
wire pixsize_0;
wire pixsize_1;
wire pixsize_2;
wire read_ack;
wire wactive;
wire a1updatei;
wire a1fupdatei;
wire a2updatei;
wire sshftld;
wire active;
wire stopped;
wire phrase_cycle;
wire pwidth_0;
wire pwidth_1;
wire pwidth_2;
wire pwidth_3;

// Output buffers
wire blit_breq_0_obuf;
wire blit_breq_1_obuf;
wire phrase_mode_obuf;
wire reset_n_obuf;
wire zmode_0_obuf;
wire zmode_1_obuf;
wire zmode_2_obuf;


// Output buffers
assign blit_breq_0 = blit_breq_0_obuf;
assign blit_breq_1 = blit_breq_1_obuf;
assign phrase_mode = phrase_mode_obuf;
assign reset_n = reset_n_obuf;
assign zmode_0 = zmode_0_obuf;
assign zmode_1 = zmode_1_obuf;
assign zmode_2 = zmode_2_obuf;


// STATE.NET (103) - zmode[0-2] : fdsync
fdsync zmode_from_0_to_2_inst_0
(
	.q /* OUT */ (zmode_0_obuf),
	.d /* IN */ (gpu_din[18]),
	.ld /* IN */ (cmdld),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fdsync zmode_from_0_to_2_inst_1
(
	.q /* OUT */ (zmode_1_obuf),
	.d /* IN */ (gpu_din[19]),
	.ld /* IN */ (cmdld),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fdsync zmode_from_0_to_2_inst_2
(
	.q /* OUT */ (zmode_2_obuf),
	.d /* IN */ (gpu_din[20]),
	.ld /* IN */ (cmdld),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// STATE.NET (105) - lfu_func[0-3] : fdsyncu
fdsyncu lfu_func_from_0_to_3_inst_0
(
	.q /* OUT */ (lfu_func_0),
	.d /* IN */ (gpu_din[21]),
	.ld /* IN */ (cmdld),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fdsyncu lfu_func_from_0_to_3_inst_1
(
	.q /* OUT */ (lfu_func_1),
	.d /* IN */ (gpu_din[22]),
	.ld /* IN */ (cmdld),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fdsyncu lfu_func_from_0_to_3_inst_2
(
	.q /* OUT */ (lfu_func_2),
	.d /* IN */ (gpu_din[23]),
	.ld /* IN */ (cmdld),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fdsyncu lfu_func_from_0_to_3_inst_3
(
	.q /* OUT */ (lfu_func_3),
	.d /* IN */ (gpu_din[24]),
	.ld /* IN */ (cmdld),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// STATE.NET (107) - cmpdst : fdsync
fdsync cmpdst_inst
(
	.q /* OUT */ (cmpdst),
	.d /* IN */ (gpu_din[25]),
	.ld /* IN */ (cmdld),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// STATE.NET (108) - bcompent : fdsync
fdsync bcompent_inst
(
	.q /* OUT */ (bcompent),
	.d /* IN */ (gpu_din[26]),
	.ld /* IN */ (cmdld),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// STATE.NET (109) - bcompen : nivm
assign bcompen = bcompent;

// STATE.NET (110) - dcompent : fdsync
fdsync dcompent_inst
(
	.q /* OUT */ (dcompent),
	.d /* IN */ (gpu_din[27]),
	.ld /* IN */ (cmdld),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// STATE.NET (111) - dcompen : nivh
assign dcompen = dcompent;

// STATE.NET (112) - bkgwren : fdsync
fdsync bkgwren_inst
(
	.q /* OUT */ (bkgwren),
	.d /* IN */ (gpu_din[28]),
	.ld /* IN */ (cmdld),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// STATE.NET (113) - srcshade : fdsync
fdsync srcshade_inst
(
	.q /* OUT */ (srcshade),
	.d /* IN */ (gpu_din[30]),
	.ld /* IN */ (cmdld),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// STATE.NET (117) - blit_idle : nr3
assign blit_idle = ~(blit_breq_0_obuf | blit_breq_1_obuf | blit_back);

// STATE.NET (118) - stat[0] : ts
assign gpu_dout_0_out = blit_idle;
assign gpu_dout_0_oe = statrd;

// STATE.NET (122) - inhibent : nr5
assign inhibent = ~(zmode_0_obuf | zmode_1_obuf | zmode_2_obuf | bcompen | dcompen);

// STATE.NET (123) - inhiben : nr3
assign inhiben = ~(inhibent | phrase_mode_obuf | bkgwren);

// STATE.NET (127) - inner : inner
inner inner_inst
(
	.gpu_dout_2_out /* BUS */ (gpu_dout_2_out),
	.gpu_dout_2_oe /* BUS */ (gpu_dout_2_oe),
	.gpu_dout_2_in /* BUS */ (gpu_dout_2_in),
	.gpu_dout_3_out /* BUS */ (gpu_dout_3_out),
	.gpu_dout_3_oe /* BUS */ (gpu_dout_3_oe),
	.gpu_dout_3_in /* BUS */ (gpu_dout_3_in),
	.gpu_dout_4_out /* BUS */ (gpu_dout_4_out),
	.gpu_dout_4_oe /* BUS */ (gpu_dout_4_oe),
	.gpu_dout_4_in /* BUS */ (gpu_dout_4_in),
	.gpu_dout_5_out /* BUS */ (gpu_dout_5_out),
	.gpu_dout_5_oe /* BUS */ (gpu_dout_5_oe),
	.gpu_dout_5_in /* BUS */ (gpu_dout_5_in),
	.gpu_dout_6_out /* BUS */ (gpu_dout_6_out),
	.gpu_dout_6_oe /* BUS */ (gpu_dout_6_oe),
	.gpu_dout_6_in /* BUS */ (gpu_dout_6_in),
	.gpu_dout_7_out /* BUS */ (gpu_dout_7_out),
	.gpu_dout_7_oe /* BUS */ (gpu_dout_7_oe),
	.gpu_dout_7_in /* BUS */ (gpu_dout_7_in),
	.gpu_dout_8_out /* BUS */ (gpu_dout_8_out),
	.gpu_dout_8_oe /* BUS */ (gpu_dout_8_oe),
	.gpu_dout_8_in /* BUS */ (gpu_dout_8_in),
	.gpu_dout_9_out /* BUS */ (gpu_dout_9_out),
	.gpu_dout_9_oe /* BUS */ (gpu_dout_9_oe),
	.gpu_dout_9_in /* BUS */ (gpu_dout_9_in),
	.gpu_dout_10_out /* BUS */ (gpu_dout_10_out),
	.gpu_dout_10_oe /* BUS */ (gpu_dout_10_oe),
	.gpu_dout_10_in /* BUS */ (gpu_dout_10_in),
	.gpu_dout_16_out /* BUS */ (gpu_dout_16_out),
	.gpu_dout_16_oe /* BUS */ (gpu_dout_16_oe),
	.gpu_dout_16_in /* BUS */ (gpu_dout_16_in),
	.gpu_dout_17_out /* BUS */ (gpu_dout_17_out),
	.gpu_dout_17_oe /* BUS */ (gpu_dout_17_oe),
	.gpu_dout_17_in /* BUS */ (gpu_dout_17_in),
	.gpu_dout_18_out /* BUS */ (gpu_dout_18_out),
	.gpu_dout_18_oe /* BUS */ (gpu_dout_18_oe),
	.gpu_dout_18_in /* BUS */ (gpu_dout_18_in),
	.gpu_dout_19_out /* BUS */ (gpu_dout_19_out),
	.gpu_dout_19_oe /* BUS */ (gpu_dout_19_oe),
	.gpu_dout_19_in /* BUS */ (gpu_dout_19_in),
	.gpu_dout_20_out /* BUS */ (gpu_dout_20_out),
	.gpu_dout_20_oe /* BUS */ (gpu_dout_20_oe),
	.gpu_dout_20_in /* BUS */ (gpu_dout_20_in),
	.gpu_dout_21_out /* BUS */ (gpu_dout_21_out),
	.gpu_dout_21_oe /* BUS */ (gpu_dout_21_oe),
	.gpu_dout_21_in /* BUS */ (gpu_dout_21_in),
	.gpu_dout_22_out /* BUS */ (gpu_dout_22_out),
	.gpu_dout_22_oe /* BUS */ (gpu_dout_22_oe),
	.gpu_dout_22_in /* BUS */ (gpu_dout_22_in),
	.gpu_dout_23_out /* BUS */ (gpu_dout_23_out),
	.gpu_dout_23_oe /* BUS */ (gpu_dout_23_oe),
	.gpu_dout_23_in /* BUS */ (gpu_dout_23_in),
	.gpu_dout_24_out /* BUS */ (gpu_dout_24_out),
	.gpu_dout_24_oe /* BUS */ (gpu_dout_24_oe),
	.gpu_dout_24_in /* BUS */ (gpu_dout_24_in),
	.gpu_dout_25_out /* BUS */ (gpu_dout_25_out),
	.gpu_dout_25_oe /* BUS */ (gpu_dout_25_oe),
	.gpu_dout_25_in /* BUS */ (gpu_dout_25_in),
	.gpu_dout_26_out /* BUS */ (gpu_dout_26_out),
	.gpu_dout_26_oe /* BUS */ (gpu_dout_26_oe),
	.gpu_dout_26_in /* BUS */ (gpu_dout_26_in),
	.gpu_dout_27_out /* BUS */ (gpu_dout_27_out),
	.gpu_dout_27_oe /* BUS */ (gpu_dout_27_oe),
	.gpu_dout_27_in /* BUS */ (gpu_dout_27_in),
	.gpu_dout_28_out /* BUS */ (gpu_dout_28_out),
	.gpu_dout_28_oe /* BUS */ (gpu_dout_28_oe),
	.gpu_dout_28_in /* BUS */ (gpu_dout_28_in),
	.gpu_dout_29_out /* BUS */ (gpu_dout_29_out),
	.gpu_dout_29_oe /* BUS */ (gpu_dout_29_oe),
	.gpu_dout_29_in /* BUS */ (gpu_dout_29_in),
	.gpu_dout_30_out /* BUS */ (gpu_dout_30_out),
	.gpu_dout_30_oe /* BUS */ (gpu_dout_30_oe),
	.gpu_dout_30_in /* BUS */ (gpu_dout_30_in),
	.gpu_dout_31_out /* BUS */ (gpu_dout_31_out),
	.gpu_dout_31_oe /* BUS */ (gpu_dout_31_oe),
	.gpu_dout_31_in /* BUS */ (gpu_dout_31_in),
	.apipe /* OUT */ (apipe),
	.atick_0 /* OUT */ (atick_0),
	.atick_1 /* OUT */ (atick_1),
	.aticki_0 /* OUT */ (aticki_0),
	.data_ena /* OUT */ (data_ena),
	.dest_cycle_1 /* OUT */ (dest_cycle_1),
	.dpipe_0 /* OUT */ (dpipe_0),
	.dpipe_1 /* OUT */ (dpipe_1),
	.dsta_addi /* OUT */ (dsta_addi),
	.dstdread /* OUT */ (dstdread),
	.dstzread /* OUT */ (dstzread),
	.dwrite /* OUT */ (dwrite),
	.dwrite1 /* OUT */ (dwrite_1),
	.dzwrite /* OUT */ (dzwrite),
	.dzwrite1 /* OUT */ (dzwrite1),
	.gena2 /* OUT */ (gena2),
	.icount_0 /* OUT */ (icount_0),
	.icount_1 /* OUT */ (icount_1),
	.icount_2 /* OUT */ (icount_2),
	.indone /* OUT */ (indone),
	.inner0 /* OUT */ (inner0),
	.readreq /* OUT */ (readreq),
	.srca_addi /* OUT */ (srca_addi),
	.srcdread /* OUT */ (srcdread),
	.srcdreadd /* OUT */ (srcdreadd),
	.srcen /* OUT */ (srcen),
	.srczread /* OUT */ (srczread),
	.sread_1 /* OUT */ (sread_1),
	.sreadx_1 /* OUT */ (sreadx_1),
	.step /* OUT */ (step_inner),
	.writereq /* OUT */ (writereq),
	.zaddr /* OUT */ (zaddr),
	.zpipe_0 /* OUT */ (zpipe_0),
	.zpipe_1 /* OUT */ (zpipe_1),
	.a1_outside /* IN */ (a1_outside),
	.blitack /* IN */ (blitack),
	.clk /* IN */ (clk),
	.cmdld /* IN */ (cmdld),
	.countld /* IN */ (countld),
	.dsta2 /* IN */ (dsta2),
	.dstxp /* IN */ ({dstxp[0],dstxp[1],dstxp[2],dstxp[3],dstxp[4],dstxp[5],dstxp[6],dstxp[7],dstxp[8],dstxp[9],dstxp[10],dstxp[11],dstxp[12],dstxp[13],dstxp[14],dstxp[15]}),
	.gourd /* IN */ (gourd),
	.gourz /* IN */ (gourz),
	.gpu_din /* IN */ ({gpu_din[0],gpu_din[1],gpu_din[2],gpu_din[3],gpu_din[4],gpu_din[5],gpu_din[6],gpu_din[7],gpu_din[8],gpu_din[9],gpu_din[10],gpu_din[11],gpu_din[12],gpu_din[13],gpu_din[14],gpu_din[15],gpu_din[16],gpu_din[17],gpu_din[18],gpu_din[19],gpu_din[20],gpu_din[21],gpu_din[22],gpu_din[23],gpu_din[24],gpu_din[25],gpu_din[26],gpu_din[27],gpu_din[28],gpu_din[29],gpu_din[30],gpu_din[31]}),
	.inhiben /* IN */ (inhiben),
	.instart /* IN */ (instart),
	.memidle /* IN */ (memidle),
	.memready /* IN */ (memready),
	.nowrite /* IN */ (nowrite),
	.phrase_mode /* IN */ (phrase_mode_obuf),
	.pixsize_0 /* IN */ (pixsize_0),
	.pixsize_1 /* IN */ (pixsize_1),
	.pixsize_2 /* IN */ (pixsize_2),
	.read_ack /* IN */ (read_ack),
	.reset_n /* IN */ (reset_n_obuf),
	.srcshade /* IN */ (srcshade),
	.statrd /* IN */ (statrd),
	.wactive /* IN */ (wactive),
	.sys_clk(sys_clk) // Generated
);

// STATE.NET (143) - outer : outer
outer outer_inst
(
	.gpu_dout_11_out /* BUS */ (gpu_dout_11_out),
	.gpu_dout_11_oe /* BUS */ (gpu_dout_11_oe),
	.gpu_dout_11_in /* BUS */ (gpu_dout_11_in),
	.gpu_dout_12_out /* BUS */ (gpu_dout_12_out),
	.gpu_dout_12_oe /* BUS */ (gpu_dout_12_oe),
	.gpu_dout_12_in /* BUS */ (gpu_dout_12_in),
	.gpu_dout_13_out /* BUS */ (gpu_dout_13_out),
	.gpu_dout_13_oe /* BUS */ (gpu_dout_13_oe),
	.gpu_dout_13_in /* BUS */ (gpu_dout_13_in),
	.gpu_dout_14_out /* BUS */ (gpu_dout_14_out),
	.gpu_dout_14_oe /* BUS */ (gpu_dout_14_oe),
	.gpu_dout_14_in /* BUS */ (gpu_dout_14_in),
	.gpu_dout_15_out /* BUS */ (gpu_dout_15_out),
	.gpu_dout_15_oe /* BUS */ (gpu_dout_15_oe),
	.gpu_dout_15_in /* BUS */ (gpu_dout_15_in),
	.a1updatei /* OUT */ (a1updatei),
	.a1fupdatei /* OUT */ (a1fupdatei),
	.a2updatei /* OUT */ (a2updatei),
	.blit_breq_0 /* OUT */ (blit_breq_0_obuf),
	.blit_breq_1 /* OUT */ (blit_breq_1_obuf),
	.blit_int /* OUT */ (blit_int),
	.instart /* OUT */ (instart),
	.sshftld /* OUT */ (sshftld),
	.active /* IN */ (active),
	.clk /* IN */ (clk),
	.cmdld /* IN */ (cmdld),
	.countld /* IN */ (countld),
	.gpu_din /* IN */ ({gpu_din[0],gpu_din[1],gpu_din[2],gpu_din[3],gpu_din[4],gpu_din[5],gpu_din[6],gpu_din[7],gpu_din[8],gpu_din[9],gpu_din[10],gpu_din[11],gpu_din[12],gpu_din[13],gpu_din[14],gpu_din[15],gpu_din[16],gpu_din[17],gpu_din[18],gpu_din[19],gpu_din[20],gpu_din[21],gpu_din[22],gpu_din[23],gpu_din[24],gpu_din[25],gpu_din[26],gpu_din[27],gpu_din[28],gpu_din[29],gpu_din[30],gpu_din[31]}),
	.indone /* IN */ (indone),
	.reset_n /* IN */ (reset_n_obuf),
	.statrd /* IN */ (statrd),
	.stopped /* IN */ (stopped),
	.sys_clk(sys_clk) // Generated
);

// STATE.NET (151) - mcontrol : mcontrol
mcontrol mcontrol_inst
(
	.blit_addr_out /* BUS */ ({blit_addr_out[0],blit_addr_out[1],blit_addr_out[2],blit_addr_out[3],blit_addr_out[4],blit_addr_out[5],blit_addr_out[6],blit_addr_out[7],blit_addr_out[8],blit_addr_out[9],blit_addr_out[10],blit_addr_out[11],blit_addr_out[12],blit_addr_out[13],blit_addr_out[14],blit_addr_out[15],blit_addr_out[16],blit_addr_out[17],blit_addr_out[18],blit_addr_out[19],blit_addr_out[20],blit_addr_out[21],blit_addr_out[22],blit_addr_out[23]}),
	.blit_addr_oe /* BUS */ ({blit_addr_oe[0],blit_addr_oe[1],blit_addr_oe[2],blit_addr_oe[3],blit_addr_oe[4],blit_addr_oe[5],blit_addr_oe[6],blit_addr_oe[7],blit_addr_oe[8],blit_addr_oe[9],blit_addr_oe[10],blit_addr_oe[11],blit_addr_oe[12],blit_addr_oe[13],blit_addr_oe[14],blit_addr_oe[15],blit_addr_oe[16],blit_addr_oe[17],blit_addr_oe[18],blit_addr_oe[19],blit_addr_oe[20],blit_addr_oe[21],blit_addr_oe[22],blit_addr_oe[23]}),
	.blit_addr_in /* BUS */ ({blit_addr_in[0],blit_addr_in[1],blit_addr_in[2],blit_addr_in[3],blit_addr_in[4],blit_addr_in[5],blit_addr_in[6],blit_addr_in[7],blit_addr_in[8],blit_addr_in[9],blit_addr_in[10],blit_addr_in[11],blit_addr_in[12],blit_addr_in[13],blit_addr_in[14],blit_addr_in[15],blit_addr_in[16],blit_addr_in[17],blit_addr_in[18],blit_addr_in[19],blit_addr_in[20],blit_addr_in[21],blit_addr_in[22],blit_addr_in[23]}),
	.justify_out /* BUS */ (justify_out),
	.justify_oe /* BUS */ (justify_oe),
	.justify_in /* BUS */ (justify_in),
	.mreq_out /* BUS */ (mreq_out),
	.mreq_oe /* BUS */ (mreq_oe),
	.mreq_in /* BUS */ (mreq_in),
	.width_0_out /* BUS */ (width_0_out),
	.width_0_oe /* BUS */ (width_0_oe),
	.width_0_in /* BUS */ (width_0_in),
	.width_1_out /* BUS */ (width_1_out),
	.width_1_oe /* BUS */ (width_1_oe),
	.width_1_in /* BUS */ (width_1_in),
	.width_2_out /* BUS */ (width_2_out),
	.width_2_oe /* BUS */ (width_2_oe),
	.width_2_in /* BUS */ (width_2_in),
	.width_3_out /* BUS */ (width_3_out),
	.width_3_oe /* BUS */ (width_3_oe),
	.width_3_in /* BUS */ (width_3_in),
	.read_out /* BUS */ (read_out),
	.read_oe /* BUS */ (read_oe),
	.read_in /* BUS */ (read_in),
	.active /* OUT */ (active),
	.blitack /* OUT */ (blitack),
	.memidle /* OUT */ (memidle),
	.memready /* OUT */ (memready),
	.read_ack /* OUT */ (read_ack),
	.wactive /* OUT */ (wactive),
	.ack /* IN */ (ack),
	.address /* IN */ ({address[0],address[1],address[2],address[3],address[4],address[5],address[6],address[7],address[8],address[9],address[10],address[11],address[12],address[13],address[14],address[15],address[16],address[17],address[18],address[19],address[20],address[21],address[22],address[23]}),
	.bcompen /* IN */ (bcompen),
	.blit_back /* IN */ (blit_back),
	.clk /* IN */ (clk),
	.phrase_cycle /* IN */ (phrase_cycle),
	.phrase_mode /* IN */ (phrase_mode_obuf),
	.pixsize_0 /* IN */ (pixsize_0),
	.pixsize_1 /* IN */ (pixsize_1),
	.pixsize_2 /* IN */ (pixsize_2),
	.pwidth_0 /* IN */ (pwidth_0),
	.pwidth_1 /* IN */ (pwidth_1),
	.pwidth_2 /* IN */ (pwidth_2),
	.pwidth_3 /* IN */ (pwidth_3),
	.readreq /* IN */ (readreq),
	.reset_n /* IN */ (reset_n_obuf),
	.sread_1 /* IN */ (sread_1),
	.sreadx_1 /* IN */ (sreadx_1),
	.step_inner /* IN */ (step_inner),
	.writereq /* IN */ (writereq),
	.sys_clk(sys_clk) // Generated
);

// STATE.NET (159) - acontrol : acontrol
acontrol acontrol_inst
(
	.addasel_0 /* OUT */ (addasel_0),
	.addasel_1 /* OUT */ (addasel_1),
	.addasel_2 /* OUT */ (addasel_2),
	.addbsel_0 /* OUT */ (addbsel_0),
	.addbsel_1 /* OUT */ (addbsel_1),
	.addqsel /* OUT */ (addqsel),
	.adda_xconst_0 /* OUT */ (adda_xconst_0),
	.adda_xconst_1 /* OUT */ (adda_xconst_1),
	.adda_xconst_2 /* OUT */ (adda_xconst_2),
	.adda_yconst /* OUT */ (adda_yconst),
	.addareg /* OUT */ (addareg),
	.a1fracldi /* OUT */ (a1fracldi),
	.a1ptrldi /* OUT */ (a1ptrldi),
	.a2ptrldi /* OUT */ (a2ptrldi),
	.dend_0 /* OUT */ (dend_0),
	.dend_1 /* OUT */ (dend_1),
	.dend_2 /* OUT */ (dend_2),
	.dend_3 /* OUT */ (dend_3),
	.dend_4 /* OUT */ (dend_4),
	.dend_5 /* OUT */ (dend_5),
	.dsta2 /* OUT */ (dsta2),
	.dstart_0 /* OUT */ (dstart_0),
	.dstart_1 /* OUT */ (dstart_1),
	.dstart_2 /* OUT */ (dstart_2),
	.dstart_3 /* OUT */ (dstart_3),
	.dstart_4 /* OUT */ (dstart_4),
	.dstart_5 /* OUT */ (dstart_5),
	.dstxp /* OUT */ ({dstxp[0],dstxp[1],dstxp[2],dstxp[3],dstxp[4],dstxp[5],dstxp[6],dstxp[7],dstxp[8],dstxp[9],dstxp[10],dstxp[11],dstxp[12],dstxp[13],dstxp[14],dstxp[15]}),
	.modx_0 /* OUT */ (modx_0),
	.modx_1 /* OUT */ (modx_1),
	.modx_2 /* OUT */ (modx_2),
	.phrase_cycle /* OUT */ (phrase_cycle),
	.phrase_mode /* OUT */ (phrase_mode_obuf),
	.pixsize_0 /* OUT */ (pixsize_0),
	.pixsize_1 /* OUT */ (pixsize_1),
	.pixsize_2 /* OUT */ (pixsize_2),
	.pwidth_0 /* OUT */ (pwidth_0),
	.pwidth_1 /* OUT */ (pwidth_1),
	.pwidth_2 /* OUT */ (pwidth_2),
	.pwidth_3 /* OUT */ (pwidth_3),
	.srcshift_0 /* OUT */ (srcshift_0),
	.srcshift_1 /* OUT */ (srcshift_1),
	.srcshift_2 /* OUT */ (srcshift_2),
	.srcshift_3 /* OUT */ (srcshift_3),
	.srcshift_4 /* OUT */ (srcshift_4),
	.srcshift_5 /* OUT */ (srcshift_5),
	.suba_x /* OUT */ (suba_x),
	.suba_y /* OUT */ (suba_y),
	.a1_pixsize_0 /* IN */ (a1_pixsize_0),
	.a1_pixsize_1 /* IN */ (a1_pixsize_1),
	.a1_pixsize_2 /* IN */ (a1_pixsize_2),
	.a1_win_x /* IN */ ({a1_win_x[0],a1_win_x[1],a1_win_x[2],a1_win_x[3],a1_win_x[4],a1_win_x[5],a1_win_x[6],a1_win_x[7],a1_win_x[8],a1_win_x[9],a1_win_x[10],a1_win_x[11],a1_win_x[12],a1_win_x[13],a1_win_x[14]}),
	.a1_x /* IN */ ({a1_x[0],a1_x[1],a1_x[2],a1_x[3],a1_x[4],a1_x[5],a1_x[6],a1_x[7],a1_x[8],a1_x[9],a1_x[10],a1_x[11],a1_x[12],a1_x[13],a1_x[14],a1_x[15]}),
	.a1addx_0 /* IN */ (a1addx_0),
	.a1addx_1 /* IN */ (a1addx_1),
	.a1addy /* IN */ (a1addy),
	.a1xsign /* IN */ (a1xsign),
	.a1ysign /* IN */ (a1ysign),
	.a1updatei /* IN */ (a1updatei),
	.a1fupdatei /* IN */ (a1fupdatei),
	.a2_pixsize_0 /* IN */ (a2_pixsize_0),
	.a2_pixsize_1 /* IN */ (a2_pixsize_1),
	.a2_pixsize_2 /* IN */ (a2_pixsize_2),
	.a2_x /* IN */ ({a2_x[0],a2_x[1],a2_x[2],a2_x[3],a2_x[4],a2_x[5],a2_x[6],a2_x[7],a2_x[8],a2_x[9],a2_x[10],a2_x[11],a2_x[12],a2_x[13],a2_x[14],a2_x[15]}),
	.a2addx_0 /* IN */ (a2addx_0),
	.a2addx_1 /* IN */ (a2addx_1),
	.a2addy /* IN */ (a2addy),
	.a2xsign /* IN */ (a2xsign),
	.a2ysign /* IN */ (a2ysign),
	.a2updatei /* IN */ (a2updatei),
	.atick_0 /* IN */ (atick_0),
	.atick_1 /* IN */ (atick_1),
	.aticki_0 /* IN */ (aticki_0),
	.bcompen /* IN */ (bcompen),
	.clk /* IN */ (clk),
	.cmdld /* IN */ (cmdld),
	.dest_cycle_1 /* IN */ (dest_cycle_1),
	.dsta_addi /* IN */ (dsta_addi),
	.gpu_din /* IN */ ({gpu_din[0],gpu_din[1],gpu_din[2],gpu_din[3],gpu_din[4],gpu_din[5],gpu_din[6],gpu_din[7],gpu_din[8],gpu_din[9],gpu_din[10],gpu_din[11],gpu_din[12],gpu_din[13],gpu_din[14],gpu_din[15],gpu_din[16],gpu_din[17],gpu_din[18],gpu_din[19],gpu_din[20],gpu_din[21],gpu_din[22],gpu_din[23],gpu_din[24],gpu_din[25],gpu_din[26],gpu_din[27],gpu_din[28],gpu_din[29],gpu_din[30],gpu_din[31]}),
	.icount_0 /* IN */ (icount_0),
	.icount_1 /* IN */ (icount_1),
	.icount_2 /* IN */ (icount_2),
	.inner0 /* IN */ (inner0),
	.pixa_0 /* IN */ (pixa_0),
	.pixa_1 /* IN */ (pixa_1),
	.pixa_2 /* IN */ (pixa_2),
	.srca_addi /* IN */ (srca_addi),
	.srcen /* IN */ (srcen),
	.sshftld /* IN */ (sshftld),
	.step_inner /* IN */ (step_inner),
	.sys_clk(sys_clk) // Generated
);

// STATE.NET (178) - dcontrol : dcontrol
dcontrol dcontrol_inst
(
	.daddasel_0 /* OUT */ (daddasel_0),
	.daddasel_1 /* OUT */ (daddasel_1),
	.daddasel_2 /* OUT */ (daddasel_2),
	.daddbsel_0 /* OUT */ (daddbsel_0),
	.daddbsel_1 /* OUT */ (daddbsel_1),
	.daddbsel_2 /* OUT */ (daddbsel_2),
	.daddmode_0 /* OUT */ (daddmode_0),
	.daddmode_1 /* OUT */ (daddmode_1),
	.daddmode_2 /* OUT */ (daddmode_2),
	.data_sel_0 /* OUT */ (data_sel_0),
	.data_sel_1 /* OUT */ (data_sel_1),
	.daddq_sel /* OUT */ (daddq_sel),
	.gourd /* OUT */ (gourd),
	.gourz /* OUT */ (gourz),
	.patdadd /* OUT */ (patdadd),
	.patfadd /* OUT */ (patfadd),
	.srcz1add /* OUT */ (srcz1add),
	.srcz2add /* OUT */ (srcz2add),
	.atick_0 /* IN */ (atick_0),
	.atick_1 /* IN */ (atick_1),
	.clk_0 /* IN */ (clk),
	.cmdld /* IN */ (cmdld),
	.dwrite /* IN */ (dwrite),
	.dzwrite /* IN */ (dzwrite),
	.dzwrite1 /* IN */ (dzwrite1),
	.gpu_din /* IN */ ({gpu_din[0],gpu_din[1],gpu_din[2],gpu_din[3],gpu_din[4],gpu_din[5],gpu_din[6],gpu_din[7],gpu_din[8],gpu_din[9],gpu_din[10],gpu_din[11],gpu_din[12],gpu_din[13],gpu_din[14],gpu_din[15],gpu_din[16],gpu_din[17],gpu_din[18],gpu_din[19],gpu_din[20],gpu_din[21],gpu_din[22],gpu_din[23],gpu_din[24],gpu_din[25],gpu_din[26],gpu_din[27],gpu_din[28],gpu_din[29],gpu_din[30],gpu_din[31]}),
	.srcdreadd /* IN */ (srcdreadd),
	.srcshade /* IN */ (srcshade),
	.sys_clk(sys_clk) // Generated
);

// STATE.NET (187) - comp_ctrl : comp_ctrl
comp_ctrl comp_ctrl_inst
(
	.dbinh_n_0 /* OUT */ (dbinh_n_0),
	.dbinh_n_1 /* OUT */ (dbinh_n_1),
	.dbinh_n_2 /* OUT */ (dbinh_n_2),
	.dbinh_n_3 /* OUT */ (dbinh_n_3),
	.dbinh_n_4 /* OUT */ (dbinh_n_4),
	.dbinh_n_5 /* OUT */ (dbinh_n_5),
	.dbinh_n_6 /* OUT */ (dbinh_n_6),
	.dbinh_n_7 /* OUT */ (dbinh_n_7),
	.nowrite /* OUT */ (nowrite),
	.bcompen /* IN */ (bcompen),
	.big_pix /* IN */ (big_pix),
	.bkgwren /* IN */ (bkgwren),
	.clk /* IN */ (clk),
	.dcomp_0 /* IN */ (dcomp_0),
	.dcomp_1 /* IN */ (dcomp_1),
	.dcomp_2 /* IN */ (dcomp_2),
	.dcomp_3 /* IN */ (dcomp_3),
	.dcomp_4 /* IN */ (dcomp_4),
	.dcomp_5 /* IN */ (dcomp_5),
	.dcomp_6 /* IN */ (dcomp_6),
	.dcomp_7 /* IN */ (dcomp_7),
	.dcompen /* IN */ (dcompen),
	.icount_0 /* IN */ (icount_0),
	.icount_1 /* IN */ (icount_1),
	.icount_2 /* IN */ (icount_2),
	.pixsize_0 /* IN */ (pixsize_0),
	.pixsize_1 /* IN */ (pixsize_1),
	.pixsize_2 /* IN */ (pixsize_2),
	.phrase_mode /* IN */ (phrase_mode_obuf),
	.srcd_0 /* IN */ (srcd_0),
	.srcd_1 /* IN */ (srcd_1),
	.srcd_2 /* IN */ (srcd_2),
	.srcd_3 /* IN */ (srcd_3),
	.srcd_4 /* IN */ (srcd_4),
	.srcd_5 /* IN */ (srcd_5),
	.srcd_6 /* IN */ (srcd_6),
	.srcd_7 /* IN */ (srcd_7),
	.step_inner /* IN */ (step_inner),
	.zcomp_0 /* IN */ (zcomp_0),
	.zcomp_1 /* IN */ (zcomp_1),
	.zcomp_2 /* IN */ (zcomp_2),
	.zcomp_3 /* IN */ (zcomp_3),
	.sys_clk(sys_clk) // Generated
);

// STATE.NET (195) - blitstop : blitstop
blitstop blitstop_inst
(
	.gpu_dout_1_out /* BUS */ (gpu_dout_1_out),
	.gpu_dout_1_oe /* BUS */ (gpu_dout_1_oe),
	.gpu_dout_1_in /* BUS */ (gpu_dout_1_in),
	.stopped /* OUT */ (stopped),
	.reset_n /* OUT */ (reset_n_obuf),
	.clk_0 /* IN */ (clk),
	.dwrite_1 /* IN */ (dwrite_1),
	.gpu_din /* IN */ ({gpu_din[0],gpu_din[1],gpu_din[2],gpu_din[3],gpu_din[4],gpu_din[5],gpu_din[6],gpu_din[7],gpu_din[8],gpu_din[9],gpu_din[10],gpu_din[11],gpu_din[12],gpu_din[13],gpu_din[14],gpu_din[15],gpu_din[16],gpu_din[17],gpu_din[18],gpu_din[19],gpu_din[20],gpu_din[21],gpu_din[22],gpu_din[23],gpu_din[24],gpu_din[25],gpu_din[26],gpu_din[27],gpu_din[28],gpu_din[29],gpu_din[30],gpu_din[31]}),
	.nowrite /* IN */ (nowrite),
	.statrd /* IN */ (statrd),
	.stopld /* IN */ (stopld),
	.xreset_n /* IN */ (xreset_n),
	.sys_clk(sys_clk) // Generated
);
endmodule
/* verilator lint_on LITENDIAN */
