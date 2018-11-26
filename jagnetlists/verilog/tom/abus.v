/* verilator lint_off LITENDIAN */
`include "defs.v"

module abus
(
	input ain_0,
	input ain_1,
	input ain_2,
	input ain_3,
	input ain_4,
	input ain_5,
	input ain_6,
	input ain_7,
	input ain_8,
	input ain_9,
	input ain_10,
	input ain_11,
	input ain_12,
	input ain_13,
	input ain_14,
	input ain_15,
	input ain_16,
	input ain_17,
	input ain_18,
	input ain_19,
	input ain_20,
	input ain_21,
	input ain_22,
	input ain_23,
	input ainen,
	input at_0,
	input at_1,
	input at_2,
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
	input newrow,
	input resrow,
	input mux,
	input resetl,
	input vcc,
	input memc1r,
	input memc2r,
	input memc1w,
	input memc2w,
	input cfg_0,
	input cfg_1,
	input cfg_2,
	input cfg_4,
	input cfg_5,
	input cfg_6,
	input cfg_8,
	input cfgw,
	input cfgen,
	input ack,
	input clk,
	input ba,
	input fc_0,
	input fc_1,
	input fc_2,
	input siz_1,
	input mreq,
	input dreqin,
	input lbufa,
	input d7a,
	input readt,
	input wet,
	output aout_3,
	output aout_4,
	output aout_5,
	output aout_6,
	output aout_7,
	output aout_8,
	output aout_9,
	output aout_10,
	output aout_11,
	output aout_12,
	output aout_13,
	output aout_14,
	output aout_15,
	output aout_16,
	output aout_17,
	output aout_18,
	output aout_19,
	output aout_20,
	output aout_21,
	output aout_22,
	output aout_23,
	output ma_0,
	output ma_1,
	output ma_2,
	output ma_3,
	output ma_4,
	output ma_5,
	output ma_6,
	output ma_7,
	output ma_8,
	output ma_9,
	output ma_10,
	output match,
	output intdev,
	output fintdev,
	output fextdev,
	output fdram,
	output from,
	output dspd_0,
	output dspd_1,
	output romspd_0,
	output romspd_1,
	output iospd_0,
	output iospd_1,
	output dram,
	output mw_0,
	output mw_1,
	output bs_0,
	output bs_1,
	output bs_2,
	output bs_3,
	output cpu32,
	output refrate_0,
	output refrate_1,
	output refrate_2,
	output refrate_3,
	output bigend,
	output ourack,
	output nocpu,
	output gpuread,
	output gpuwrite,
	output abs_2,
	output abs_3,
	output hilo,
	output lba,
	output lbb,
	output lbt,
	output clut,
	output clutt,
	output fastrom,
	output m68k,
	output at_3,
	output at_4,
	output at_5,
	output at_6,
	output at_7,
	output at_8,
	output at_9,
	output at_10,
	output a_0_out,
	output a_0_oe,
	input a_0_in,
	output a_1_out,
	output a_1_oe,
	input a_1_in,
	output a_2_out,
	output a_2_oe,
	input a_2_in,
	output a_3_out,
	output a_3_oe,
	input a_3_in,
	output a_4_out,
	output a_4_oe,
	input a_4_in,
	output a_5_out,
	output a_5_oe,
	input a_5_in,
	output a_6_out,
	output a_6_oe,
	input a_6_in,
	output a_7_out,
	output a_7_oe,
	input a_7_in,
	output a_8_out,
	output a_8_oe,
	input a_8_in,
	output a_9_out,
	output a_9_oe,
	input a_9_in,
	output a_10_out,
	output a_10_oe,
	input a_10_in,
	output a_11_out,
	output a_11_oe,
	input a_11_in,
	output a_12_out,
	output a_12_oe,
	input a_12_in,
	output a_13_out,
	output a_13_oe,
	input a_13_in,
	output a_14_out,
	output a_14_oe,
	input a_14_in,
	output a_15_out,
	output a_15_oe,
	input a_15_in,
	output a_16_out,
	output a_16_oe,
	input a_16_in,
	output a_17_out,
	output a_17_oe,
	input a_17_in,
	output a_18_out,
	output a_18_oe,
	input a_18_in,
	output a_19_out,
	output a_19_oe,
	input a_19_in,
	output a_20_out,
	output a_20_oe,
	input a_20_in,
	output a_21_out,
	output a_21_oe,
	input a_21_in,
	output a_22_out,
	output a_22_oe,
	input a_22_in,
	output a_23_out,
	output a_23_oe,
	input a_23_in,
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
wire [0:10] ma;
wire m1d_0;
wire m1d_1;
wire m1d_2;
wire m1d_13;
wire m1d_14;
wire m2d_12;
wire m1ld;
wire m2ld;
wire memc2;
wire romhii;
wire romhi;
wire romlo;
wire romwid_0;
wire romwid_1;
wire gnd;
wire cols0_0;
wire cols0_1;
wire dwid0_0;
wire dwid0_1;
wire cols1_0;
wire cols1_1;
wire dwid1_0;
wire dwid1_1;
wire bigd;
wire hiloi;
wire bigendi;
wire m68ki;
wire not68k;
wire aouti_3;
wire aouti_4;
wire aouti_5;
wire aouti_6;
wire aouti_7;
wire aouti_8;
wire aouti_9;
wire aouti_10;
wire aouti_11;
wire aouti_12;
wire aouti_13;
wire aouti_14;
wire aouti_15;
wire at_11;
wire at_12;
wire at_13;
wire at_14;
wire at_15;
wire at_16;
wire at_17;
wire at_18;
wire at_19;
wire at_20;
wire at_21;
wire at_22;
wire at_23;
wire ab_16;
wire ab_17;
wire ab_18;
wire ab_19;
wire ab_20;
wire ab_21;
wire ab_22;
wire ab_23;
wire mseti;
wire mset;
wire alb_10;
wire alb_11;
wire alb_12;
wire alb_13;
wire alb_14;
wire alb_15;
wire alb_16;
wire alb_17;
wire alb_18;
wire alb_19;
wire alb_20;
wire alb_21;
wire alb_22;
wire alb_23;
wire ab_10;
wire ab_11;
wire ab_12;
wire ab_15;
wire notmset;
wire mreqb;
wire abs01;
wire abs02;
wire abs03;
wire abs_0;
wire abs10;
wire abs11;
wire abs12;
wire abs13;
wire abs_1;
wire abs20;
wire abs21;
wire abs30;
wire abs31;
wire fintdev1;
wire fextdevl;
wire rom1;
wire notdev;
wire rom2;
wire rom3;
wire rom4;
wire rom5;
wire rom6;
wire rom7;
wire romcsl_0;
wire intdevi;
wire rom0;
wire bsi_2;
wire abti_2;
wire abt_2;
wire mw01;
wire mw02;
wire dev16;
wire mw03;
wire mw04;
wire mw05;
wire mw06;
wire mw07;
wire mw08;
wire mw09;
wire mw0a;
wire mw0b;
wire mw0c;
wire mw0d;
wire mw0e;
wire mw11;
wire mw12;
wire dev32;
wire mw13;
wire mw14;
wire mw15;
wire mw16;
wire mw17;
wire mw18;
wire mw19;
wire mw1a;
wire mw1b;
wire mw1c;
wire mw1d;
wire mw1e;
wire dev32l;
wire dev160;
wire dev161;
wire notba;
wire bm68k;
wire ai_0;
wire dwidi_0;
wire dwidi_1;
wire dwid_0;
wire dwid_1;
wire ald_0;
wire ald_1;
wire ald_2;
wire ald_3;
wire ald_4;
wire ald_5;
wire ald_6;
wire ald_7;
wire ald_8;
wire ald_9;
wire ald_10;
wire cw0i_0;
wire co0_0;
wire cw0i_1;
wire cw0i_2;
wire cw0_0;
wire cw0_1;
wire cw0_2;
wire cw1i_0;
wire co1_0;
wire cw1i_1;
wire cw1i_2;
wire cw1_0;
wire cw1_1;
wire cw1_2;
wire ahd0_0;
wire ahd0_1;
wire ahd0_2;
wire ahd0_3;
wire ahd0_4;
wire ahd0_5;
wire ahd0_6;
wire ahd0_7;
wire ahd0_8;
wire ahd0_9;
wire ahd0_10;
wire ahd1_0;
wire ahd1_1;
wire ahd1_2;
wire ahd1_3;
wire ahd1_4;
wire ahd1_5;
wire ahd1_6;
wire ahd1_7;
wire ahd1_8;
wire ahd1_9;
wire ahd1_10;
wire ahd_0;
wire ahd_1;
wire ahd_2;
wire ahd_3;
wire ahd_4;
wire ahd_5;
wire ahd_6;
wire ahd_7;
wire ahd_8;
wire ahd_9;
wire ahd_10;
wire mad_0;
wire mad_1;
wire mad_2;
wire mad_3;
wire mad_4;
wire mad_5;
wire mad_6;
wire mad_7;
wire mad_8;
wire mad_9;
wire mad_10;
wire newrow_0;
wire newrow_1;
wire reset;
wire bankresl;
wire match_0;
wire match_1;
wire m_0;
wire m_1;
wire intd0;
wire intd1;
wire fcl_0;
wire intd;
wire ouracki;
wire notourack;
wire gpuadd;
wire writet;
wire lbufb;
wire lba0;
wire lba1;
wire lbad;
wire lbb0;
wire lbb1;
wire lbbd;
wire clutd;
wire lb0;
wire lb1;
wire lbd;
wire lbat;
wire lbbt;
wire lb;
wire ts_pe_272_a0_out;
wire ts_pe_272_a0_oe;
wire ts_pe_272_a0_in;
wire ts_pe_272_a1_out;
wire ts_pe_272_a1_oe;
wire ts_pe_272_a1_in;
wire ts_pe_273_a0_out;
wire ts_pe_273_a0_oe;
wire ts_pe_273_a0_in;
wire ts_pe_273_a1_out;
wire ts_pe_273_a1_oe;
wire ts_pe_273_a1_in;
wire ts_pe_274_a0_out;
wire ts_pe_274_a0_oe;
wire ts_pe_274_a0_in;
wire ts_pe_274_a1_out;
wire ts_pe_274_a1_oe;
wire ts_pe_274_a1_in;
wire ts_pe_275_a0_out;
wire ts_pe_275_a0_oe;
wire ts_pe_275_a0_in;
wire ts_pe_275_a1_out;
wire ts_pe_275_a1_oe;
wire ts_pe_275_a1_in;
wire ts_pe_276_a0_out;
wire ts_pe_276_a0_oe;
wire ts_pe_276_a0_in;
wire ts_pe_276_a1_out;
wire ts_pe_276_a1_oe;
wire ts_pe_276_a1_in;
wire ts_pe_277_a0_out;
wire ts_pe_277_a0_oe;
wire ts_pe_277_a0_in;
wire ts_pe_277_a1_out;
wire ts_pe_277_a1_oe;
wire ts_pe_277_a1_in;
wire ts_pe_278_a0_out;
wire ts_pe_278_a0_oe;
wire ts_pe_278_a0_in;
wire ts_pe_278_a1_out;
wire ts_pe_278_a1_oe;
wire ts_pe_278_a1_in;
wire ts_pe_279_a0_out;
wire ts_pe_279_a0_oe;
wire ts_pe_279_a0_in;
wire ts_pe_279_a1_out;
wire ts_pe_279_a1_oe;
wire ts_pe_279_a1_in;
wire ts_pe_280_a0_out;
wire ts_pe_280_a0_oe;
wire ts_pe_280_a0_in;
wire ts_pe_280_a1_out;
wire ts_pe_280_a1_oe;
wire ts_pe_280_a1_in;
wire ts_pe_281_a0_out;
wire ts_pe_281_a0_oe;
wire ts_pe_281_a0_in;
wire ts_pe_281_a1_out;
wire ts_pe_281_a1_oe;
wire ts_pe_281_a1_in;
wire ts_pe_282_a0_out;
wire ts_pe_282_a0_oe;
wire ts_pe_282_a0_in;
wire ts_pe_282_a1_out;
wire ts_pe_282_a1_oe;
wire ts_pe_282_a1_in;
wire ts_pe_283_a0_out;
wire ts_pe_283_a0_oe;
wire ts_pe_283_a0_in;
wire ts_pe_283_a1_out;
wire ts_pe_283_a1_oe;
wire ts_pe_283_a1_in;
wire ts_pe_284_a0_out;
wire ts_pe_284_a0_oe;
wire ts_pe_284_a0_in;
wire ts_pe_284_a1_out;
wire ts_pe_284_a1_oe;
wire ts_pe_284_a1_in;
wire ts_pe_285_a0_out;
wire ts_pe_285_a0_oe;
wire ts_pe_285_a0_in;
wire ts_pe_285_a1_out;
wire ts_pe_285_a1_oe;
wire ts_pe_285_a1_in;
wire ts_pe_286_a0_out;
wire ts_pe_286_a0_oe;
wire ts_pe_286_a0_in;
wire ts_pe_286_a1_out;
wire ts_pe_286_a1_oe;
wire ts_pe_286_a1_in;
wire ts_pe_287_a0_out;
wire ts_pe_287_a0_oe;
wire ts_pe_287_a0_in;
wire ts_pe_287_a1_out;
wire ts_pe_287_a1_oe;
wire ts_pe_287_a1_in;

// Output buffers
wire aout_16_obuf;
wire aout_17_obuf;
wire aout_18_obuf;
wire aout_19_obuf;
wire aout_20_obuf;
wire aout_21_obuf;
wire aout_22_obuf;
wire aout_23_obuf;
wire ma_0_obuf;
wire ma_1_obuf;
wire ma_2_obuf;
wire ma_3_obuf;
wire ma_4_obuf;
wire ma_5_obuf;
wire ma_6_obuf;
wire ma_7_obuf;
wire ma_8_obuf;
wire ma_9_obuf;
wire ma_10_obuf;
wire fintdev_obuf;
wire fdram_obuf;
wire dspd_0_obuf;
wire dspd_1_obuf;
wire romspd_0_obuf;
wire romspd_1_obuf;
wire iospd_0_obuf;
wire iospd_1_obuf;
wire bs_2_obuf;
wire bs_3_obuf;
wire cpu32_obuf;
wire refrate_0_obuf;
wire refrate_1_obuf;
wire refrate_2_obuf;
wire refrate_3_obuf;
wire nocpu_obuf;
wire abs_2_obuf;
wire abs_3_obuf;
wire hilo_obuf;
wire lba_obuf;
wire lbb_obuf;
wire lbt_obuf;
wire clut_obuf;
wire clutt_obuf;
wire fastrom_obuf;
wire m68k_obuf;
wire at_3_obuf;
wire at_4_obuf;
wire at_5_obuf;
wire at_6_obuf;
wire at_7_obuf;
wire at_8_obuf;
wire at_9_obuf;
wire at_10_obuf;


// Output buffers
assign aout_16 = aout_16_obuf;
assign aout_17 = aout_17_obuf;
assign aout_18 = aout_18_obuf;
assign aout_19 = aout_19_obuf;
assign aout_20 = aout_20_obuf;
assign aout_21 = aout_21_obuf;
assign aout_22 = aout_22_obuf;
assign aout_23 = aout_23_obuf;
assign ma_0 = ma_0_obuf;
assign ma_1 = ma_1_obuf;
assign ma_2 = ma_2_obuf;
assign ma_3 = ma_3_obuf;
assign ma_4 = ma_4_obuf;
assign ma_5 = ma_5_obuf;
assign ma_6 = ma_6_obuf;
assign ma_7 = ma_7_obuf;
assign ma_8 = ma_8_obuf;
assign ma_9 = ma_9_obuf;
assign ma_10 = ma_10_obuf;
assign fintdev = fintdev_obuf;
assign fdram = fdram_obuf;
assign dspd_0 = dspd_0_obuf;
assign dspd_1 = dspd_1_obuf;
assign romspd_0 = romspd_0_obuf;
assign romspd_1 = romspd_1_obuf;
assign iospd_0 = iospd_0_obuf;
assign iospd_1 = iospd_1_obuf;
assign bs_2 = bs_2_obuf;
assign bs_3 = bs_3_obuf;
assign cpu32 = cpu32_obuf;
assign refrate_0 = refrate_0_obuf;
assign refrate_1 = refrate_1_obuf;
assign refrate_2 = refrate_2_obuf;
assign refrate_3 = refrate_3_obuf;
assign nocpu = nocpu_obuf;
assign abs_2 = abs_2_obuf;
assign abs_3 = abs_3_obuf;
assign hilo = hilo_obuf;
assign lba = lba_obuf;
assign lbb = lbb_obuf;
assign lbt = lbt_obuf;
assign clut = clut_obuf;
assign clutt = clutt_obuf;
assign fastrom = fastrom_obuf;
assign m68k = m68k_obuf;
assign at_3 = at_3_obuf;
assign at_4 = at_4_obuf;
assign at_5 = at_5_obuf;
assign at_6 = at_6_obuf;
assign at_7 = at_7_obuf;
assign at_8 = at_8_obuf;
assign at_9 = at_9_obuf;
assign at_10 = at_10_obuf;


// ABUS.NET (76) - ma : join
assign ma[0] = ma_0_obuf;
assign ma[1] = ma_1_obuf;
assign ma[2] = ma_2_obuf;
assign ma[3] = ma_3_obuf;
assign ma[4] = ma_4_obuf;
assign ma[5] = ma_5_obuf;
assign ma[6] = ma_6_obuf;
assign ma[7] = ma_7_obuf;
assign ma[8] = ma_8_obuf;
assign ma[9] = ma_9_obuf;
assign ma[10] = ma_10_obuf;

// ABUS.NET (77) - mau : dummy

// ABUS.NET (83) - m1d[0-2] : mx2
assign m1d_0 = (cfgen) ? din_0 : cfg_0;
assign m1d_1 = (cfgen) ? din_1 : cfg_1;
assign m1d_2 = (cfgen) ? din_2 : cfg_2;

// ABUS.NET (84) - m1d[13] : mx2
assign m1d_13 = (cfgen) ? din_13 : cfg_4;

// ABUS.NET (85) - m1d[14] : mx2
assign m1d_14 = (cfgen) ? din_14 : cfg_5;

// ABUS.NET (86) - m2d[12] : mx2
assign m2d_12 = (cfgen) ? din_12 : cfg_6;

// ABUS.NET (90) - m1ld : or2
assign m1ld = memc1w | cfgw;

// ABUS.NET (91) - m2ld : or2
assign m2ld = memc2 | cfgw;

// ABUS.NET (94) - romhii : ldp1q
ldp1q romhii_inst
(
	.q /* OUT */ (romhii),
	.d /* IN */ (m1d_0),
	.g /* IN */ (m1ld),
	.sys_clk(sys_clk) // Generated
);

// ABUS.NET (95) - romhi : nivh
assign romhi = romhii;

// ABUS.NET (96) - romlo : ivh
assign romlo = ~romhii;

// ABUS.NET (97) - romwid[0-1] : ldp1q
ldp1q romwid_from_0_to_1_inst_0
(
	.q /* OUT */ (romwid_0),
	.d /* IN */ (m1d_1),
	.g /* IN */ (m1ld),
	.sys_clk(sys_clk) // Generated
);
ldp1q romwid_from_0_to_1_inst_1
(
	.q /* OUT */ (romwid_1),
	.d /* IN */ (m1d_2),
	.g /* IN */ (m1ld),
	.sys_clk(sys_clk) // Generated
);

// ABUS.NET (98) - romspd[0-1] : ldp2q
ldp2q romspd_from_0_to_1_inst_0
(
	.q /* OUT */ (romspd_0_obuf),
	.d /* IN */ (din_3),
	.g /* IN */ (memc1w),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
ldp2q romspd_from_0_to_1_inst_1
(
	.q /* OUT */ (romspd_1_obuf),
	.d /* IN */ (din_4),
	.g /* IN */ (memc1w),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// ABUS.NET (99) - dspd[0-1] : ldp1q
ldp1q dspd_from_0_to_1_inst_0
(
	.q /* OUT */ (dspd_0_obuf),
	.d /* IN */ (din_5),
	.g /* IN */ (memc1w),
	.sys_clk(sys_clk) // Generated
);
ldp1q dspd_from_0_to_1_inst_1
(
	.q /* OUT */ (dspd_1_obuf),
	.d /* IN */ (din_6),
	.g /* IN */ (memc1w),
	.sys_clk(sys_clk) // Generated
);

// ABUS.NET (100) - fastrom : ldp2q
ldp2q fastrom_inst
(
	.q /* OUT */ (fastrom_obuf),
	.d /* IN */ (din_7),
	.g /* IN */ (memc1w),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// ABUS.NET (101) - iospd[0-1] : ldp1q
ldp1q iospd_from_0_to_1_inst_0
(
	.q /* OUT */ (iospd_0_obuf),
	.d /* IN */ (din_11),
	.g /* IN */ (memc1w),
	.sys_clk(sys_clk) // Generated
);
ldp1q iospd_from_0_to_1_inst_1
(
	.q /* OUT */ (iospd_1_obuf),
	.d /* IN */ (din_12),
	.g /* IN */ (memc1w),
	.sys_clk(sys_clk) // Generated
);

// ABUS.NET (102) - nocpu : ldp1q
ldp1q nocpu_inst
(
	.q /* OUT */ (nocpu_obuf),
	.d /* IN */ (m1d_13),
	.g /* IN */ (m1ld),
	.sys_clk(sys_clk) // Generated
);

// ABUS.NET (103) - cpu32 : ldp1q
ldp1q cpu32_inst
(
	.q /* OUT */ (cpu32_obuf),
	.d /* IN */ (m1d_14),
	.g /* IN */ (m1ld),
	.sys_clk(sys_clk) // Generated
);

// ABUS.NET (105) - d1[0] : ts
assign ts_pe_272_a0_out = romhi;
assign ts_pe_272_a0_oe = memc1r;

// ABUS.NET (106) - d1[1-2] : ts
assign ts_pe_273_a0_out = romwid_0;
assign ts_pe_273_a0_oe = memc1r;
assign ts_pe_274_a0_out = romwid_1;
assign ts_pe_274_a0_oe = memc1r;

// ABUS.NET (107) - d1[3-4] : ts
assign ts_pe_275_a0_out = romspd_0_obuf;
assign ts_pe_275_a0_oe = memc1r;
assign ts_pe_276_a0_out = romspd_1_obuf;
assign ts_pe_276_a0_oe = memc1r;

// ABUS.NET (108) - d1[5-6] : ts
assign ts_pe_277_a0_out = dspd_0_obuf;
assign ts_pe_277_a0_oe = memc1r;
assign ts_pe_278_a0_out = dspd_1_obuf;
assign ts_pe_278_a0_oe = memc1r;

// ABUS.NET (109) - d1[7] : ts
assign ts_pe_279_a0_out = fastrom_obuf;
assign ts_pe_279_a0_oe = memc1r;

// ABUS.NET (110) - d1[8-10] : ts
assign ts_pe_280_a0_out = gnd;
assign ts_pe_280_a0_oe = memc1r;
assign ts_pe_281_a0_out = gnd;
assign ts_pe_281_a0_oe = memc1r;
assign ts_pe_282_a0_out = gnd;
assign ts_pe_282_a0_oe = memc1r;

// ABUS.NET (111) - d1[11-12] : ts
assign ts_pe_283_a0_out = iospd_0_obuf;
assign ts_pe_283_a0_oe = memc1r;
assign ts_pe_284_a0_out = iospd_1_obuf;
assign ts_pe_284_a0_oe = memc1r;

// ABUS.NET (112) - d1[13] : ts
assign ts_pe_285_a0_out = nocpu_obuf;
assign ts_pe_285_a0_oe = memc1r;

// ABUS.NET (113) - d1[14] : ts
assign ts_pe_286_a0_out = cpu32_obuf;
assign ts_pe_286_a0_oe = memc1r;

// ABUS.NET (114) - d1[15] : ts
assign ts_pe_287_a0_out = gnd;
assign ts_pe_287_a0_oe = memc1r;

// ABUS.NET (118) - memc2 : an2h
assign memc2 = wet & memc2w;

// ABUS.NET (119) - cols0[0-1] : ldp1q
ldp1q cols0_from_0_to_1_inst_0
(
	.q /* OUT */ (cols0_0),
	.d /* IN */ (din_0),
	.g /* IN */ (memc2),
	.sys_clk(sys_clk) // Generated
);
ldp1q cols0_from_0_to_1_inst_1
(
	.q /* OUT */ (cols0_1),
	.d /* IN */ (din_1),
	.g /* IN */ (memc2),
	.sys_clk(sys_clk) // Generated
);

// ABUS.NET (120) - dwid0[0-1] : ldp1q
ldp1q dwid0_from_0_to_1_inst_0
(
	.q /* OUT */ (dwid0_0),
	.d /* IN */ (din_2),
	.g /* IN */ (memc2),
	.sys_clk(sys_clk) // Generated
);
ldp1q dwid0_from_0_to_1_inst_1
(
	.q /* OUT */ (dwid0_1),
	.d /* IN */ (din_3),
	.g /* IN */ (memc2),
	.sys_clk(sys_clk) // Generated
);

// ABUS.NET (121) - cols1[0-1] : ldp1q
ldp1q cols1_from_0_to_1_inst_0
(
	.q /* OUT */ (cols1_0),
	.d /* IN */ (din_4),
	.g /* IN */ (memc2),
	.sys_clk(sys_clk) // Generated
);
ldp1q cols1_from_0_to_1_inst_1
(
	.q /* OUT */ (cols1_1),
	.d /* IN */ (din_5),
	.g /* IN */ (memc2),
	.sys_clk(sys_clk) // Generated
);

// ABUS.NET (122) - dwid1[0-1] : ldp1q
ldp1q dwid1_from_0_to_1_inst_0
(
	.q /* OUT */ (dwid1_0),
	.d /* IN */ (din_6),
	.g /* IN */ (memc2),
	.sys_clk(sys_clk) // Generated
);
ldp1q dwid1_from_0_to_1_inst_1
(
	.q /* OUT */ (dwid1_1),
	.d /* IN */ (din_7),
	.g /* IN */ (memc2),
	.sys_clk(sys_clk) // Generated
);

// ABUS.NET (123) - refrate[0-3] : slatch
slatch refrate_from_0_to_3_inst_0
(
	.q /* OUT */ (refrate_0_obuf),
	.d /* IN */ (din_8),
	.clk /* IN */ (clk),
	.en /* IN */ (memc2w),
	.sys_clk(sys_clk) // Generated
);
slatch refrate_from_0_to_3_inst_1
(
	.q /* OUT */ (refrate_1_obuf),
	.d /* IN */ (din_9),
	.clk /* IN */ (clk),
	.en /* IN */ (memc2w),
	.sys_clk(sys_clk) // Generated
);
slatch refrate_from_0_to_3_inst_2
(
	.q /* OUT */ (refrate_2_obuf),
	.d /* IN */ (din_10),
	.clk /* IN */ (clk),
	.en /* IN */ (memc2w),
	.sys_clk(sys_clk) // Generated
);
slatch refrate_from_0_to_3_inst_3
(
	.q /* OUT */ (refrate_3_obuf),
	.d /* IN */ (din_11),
	.clk /* IN */ (clk),
	.en /* IN */ (memc2w),
	.sys_clk(sys_clk) // Generated
);

// ABUS.NET (124) - bigd : ldp1q
ldp1q bigd_inst
(
	.q /* OUT */ (bigd),
	.d /* IN */ (m2d_12),
	.g /* IN */ (m2ld),
	.sys_clk(sys_clk) // Generated
);

// ABUS.NET (125) - hiloi : ldp1q
ldp1q hiloi_inst
(
	.q /* OUT */ (hiloi),
	.d /* IN */ (din_13),
	.g /* IN */ (memc2),
	.sys_clk(sys_clk) // Generated
);

// ABUS.NET (126) - hilo : nivh
assign hilo_obuf = hiloi;

// ABUS.NET (128) - d2[0-1] : ts
assign ts_pe_272_a1_out = cols0_0;
assign ts_pe_272_a1_oe = memc2r;
assign ts_pe_273_a1_out = cols0_1;
assign ts_pe_273_a1_oe = memc2r;

// ABUS.NET (129) - d2[2-3] : ts
assign ts_pe_274_a1_out = dwid0_0;
assign ts_pe_274_a1_oe = memc2r;
assign ts_pe_275_a1_out = dwid0_1;
assign ts_pe_275_a1_oe = memc2r;

// ABUS.NET (130) - d2[4-5] : ts
assign ts_pe_276_a1_out = cols1_0;
assign ts_pe_276_a1_oe = memc2r;
assign ts_pe_277_a1_out = cols1_1;
assign ts_pe_277_a1_oe = memc2r;

// ABUS.NET (131) - d2[6-7] : ts
assign ts_pe_278_a1_out = dwid1_0;
assign ts_pe_278_a1_oe = memc2r;
assign ts_pe_279_a1_out = dwid1_1;
assign ts_pe_279_a1_oe = memc2r;

// ABUS.NET (132) - d2[8-11] : ts
assign ts_pe_280_a1_out = refrate_0_obuf;
assign ts_pe_280_a1_oe = memc2r;
assign ts_pe_281_a1_out = refrate_1_obuf;
assign ts_pe_281_a1_oe = memc2r;
assign ts_pe_282_a1_out = refrate_2_obuf;
assign ts_pe_282_a1_oe = memc2r;
assign ts_pe_283_a1_out = refrate_3_obuf;
assign ts_pe_283_a1_oe = memc2r;

// ABUS.NET (133) - d2[12] : ts
assign ts_pe_284_a1_out = bigd;
assign ts_pe_284_a1_oe = memc2r;

// ABUS.NET (134) - d2[13] : ts
assign ts_pe_285_a1_out = hilo_obuf;
assign ts_pe_285_a1_oe = memc2r;

// ABUS.NET (135) - d2[14-15] : ts
assign ts_pe_286_a1_out = gnd;
assign ts_pe_286_a1_oe = memc2r;
assign ts_pe_287_a1_out = gnd;
assign ts_pe_287_a1_oe = memc2r;

// ABUS.NET (142) - bigendi : fd1q
fd1q bigendi_inst
(
	.q /* OUT */ (bigendi),
	.d /* IN */ (bigd),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// ABUS.NET (143) - bigend : nivh
assign bigend = bigendi;

// ABUS.NET (149) - motorola : ldp1
ldp1 motorola_inst
(
	.q /* OUT */ (m68ki),
	.qn /* OUT */ (not68k),
	.d /* IN */ (cfg_8),
	.g /* IN */ (cfgw),
	.sys_clk(sys_clk) // Generated
);

// ABUS.NET (150) - m68k : nivh
assign m68k_obuf = m68ki;

// ABUS.NET (154) - aouti[3-15] : fd1qp
fd1q aouti_from_3_to_15_inst_0
(
	.q /* OUT */ (aouti_3),
	.d /* IN */ (at_3_obuf),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q aouti_from_3_to_15_inst_1
(
	.q /* OUT */ (aouti_4),
	.d /* IN */ (at_4_obuf),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q aouti_from_3_to_15_inst_2
(
	.q /* OUT */ (aouti_5),
	.d /* IN */ (at_5_obuf),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q aouti_from_3_to_15_inst_3
(
	.q /* OUT */ (aouti_6),
	.d /* IN */ (at_6_obuf),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q aouti_from_3_to_15_inst_4
(
	.q /* OUT */ (aouti_7),
	.d /* IN */ (at_7_obuf),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q aouti_from_3_to_15_inst_5
(
	.q /* OUT */ (aouti_8),
	.d /* IN */ (at_8_obuf),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q aouti_from_3_to_15_inst_6
(
	.q /* OUT */ (aouti_9),
	.d /* IN */ (at_9_obuf),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q aouti_from_3_to_15_inst_7
(
	.q /* OUT */ (aouti_10),
	.d /* IN */ (at_10_obuf),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q aouti_from_3_to_15_inst_8
(
	.q /* OUT */ (aouti_11),
	.d /* IN */ (at_11),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q aouti_from_3_to_15_inst_9
(
	.q /* OUT */ (aouti_12),
	.d /* IN */ (at_12),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q aouti_from_3_to_15_inst_10
(
	.q /* OUT */ (aouti_13),
	.d /* IN */ (at_13),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q aouti_from_3_to_15_inst_11
(
	.q /* OUT */ (aouti_14),
	.d /* IN */ (at_14),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q aouti_from_3_to_15_inst_12
(
	.q /* OUT */ (aouti_15),
	.d /* IN */ (at_15),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// ABUS.NET (155) - at[3-15] : mx2h
assign at_3_obuf = (ack) ? a_3_in : aouti_3;
assign at_4_obuf = (ack) ? a_4_in : aouti_4;
assign at_5_obuf = (ack) ? a_5_in : aouti_5;
assign at_6_obuf = (ack) ? a_6_in : aouti_6;
assign at_7_obuf = (ack) ? a_7_in : aouti_7;
assign at_8_obuf = (ack) ? a_8_in : aouti_8;
assign at_9_obuf = (ack) ? a_9_in : aouti_9;
assign at_10_obuf = (ack) ? a_10_in : aouti_10;
assign at_11 = (ack) ? a_11_in : aouti_11;
assign at_12 = (ack) ? a_12_in : aouti_12;
assign at_13 = (ack) ? a_13_in : aouti_13;
assign at_14 = (ack) ? a_14_in : aouti_14;
assign at_15 = (ack) ? a_15_in : aouti_15;

// ABUS.NET (156) - aout[3-8] : nivh
assign aout_3 = aouti_3;
assign aout_4 = aouti_4;
assign aout_5 = aouti_5;
assign aout_6 = aouti_6;
assign aout_7 = aouti_7;
assign aout_8 = aouti_8;

// ABUS.NET (157) - aout[9] : nivu
assign aout_9 = aouti_9;

// ABUS.NET (158) - aout[10-14] : nivh
assign aout_10 = aouti_10;
assign aout_11 = aouti_11;
assign aout_12 = aouti_12;
assign aout_13 = aouti_13;
assign aout_14 = aouti_14;

// ABUS.NET (159) - aout[15] : nivu
assign aout_15 = aouti_15;

// ABUS.NET (160) - aout[16-23] : fd1q
fd1q aout_from_16_to_23_inst_0
(
	.q /* OUT */ (aout_16_obuf),
	.d /* IN */ (at_16),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q aout_from_16_to_23_inst_1
(
	.q /* OUT */ (aout_17_obuf),
	.d /* IN */ (at_17),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q aout_from_16_to_23_inst_2
(
	.q /* OUT */ (aout_18_obuf),
	.d /* IN */ (at_18),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q aout_from_16_to_23_inst_3
(
	.q /* OUT */ (aout_19_obuf),
	.d /* IN */ (at_19),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q aout_from_16_to_23_inst_4
(
	.q /* OUT */ (aout_20_obuf),
	.d /* IN */ (at_20),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q aout_from_16_to_23_inst_5
(
	.q /* OUT */ (aout_21_obuf),
	.d /* IN */ (at_21),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q aout_from_16_to_23_inst_6
(
	.q /* OUT */ (aout_22_obuf),
	.d /* IN */ (at_22),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q aout_from_16_to_23_inst_7
(
	.q /* OUT */ (aout_23_obuf),
	.d /* IN */ (at_23),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// ABUS.NET (161) - at[16-23] : mx2m
assign at_16 = (ack) ? ab_16 : aout_16_obuf;
assign at_17 = (ack) ? ab_17 : aout_17_obuf;
assign at_18 = (ack) ? ab_18 : aout_18_obuf;
assign at_19 = (ack) ? ab_19 : aout_19_obuf;
assign at_20 = (ack) ? ab_20 : aout_20_obuf;
assign at_21 = (ack) ? ab_21 : aout_21_obuf;
assign at_22 = (ack) ? ab_22 : aout_22_obuf;
assign at_23 = (ack) ? ab_23 : aout_23_obuf;

// ABUS.NET (168) - mseti : fd2q
fd2q mseti_inst
(
	.q /* OUT */ (mseti),
	.d /* IN */ (vcc),
	.cp /* IN */ (memc1w),
	.cd /* IN */ (cfgen),
	.sys_clk(sys_clk) // Generated
);

// ABUS.NET (169) - mset : nivh
assign mset = mseti;

// ABUS.NET (193) - alb[10-23] : ivu
assign alb_10 = ~a_10_in;
assign alb_11 = ~a_11_in;
assign alb_12 = ~a_12_in;
assign alb_13 = ~a_13_in;
assign alb_14 = ~a_14_in;
assign alb_15 = ~a_15_in;
assign alb_16 = ~a_16_in;
assign alb_17 = ~a_17_in;
assign alb_18 = ~a_18_in;
assign alb_19 = ~a_19_in;
assign alb_20 = ~a_20_in;
assign alb_21 = ~a_21_in;
assign alb_22 = ~a_22_in;
assign alb_23 = ~a_23_in;

// ABUS.NET (194) - ab[10-12] : iv
assign ab_10 = ~alb_10;
assign ab_11 = ~alb_11;
assign ab_12 = ~alb_12;

// ABUS.NET (195) - ab[15-23] : ivu
assign ab_15 = ~alb_15;
assign ab_16 = ~alb_16;
assign ab_17 = ~alb_17;
assign ab_18 = ~alb_18;
assign ab_19 = ~alb_19;
assign ab_20 = ~alb_20;
assign ab_21 = ~alb_21;
assign ab_22 = ~alb_22;
assign ab_23 = ~alb_23;

// ABUS.NET (196) - notmset : iv
assign notmset = ~mset;

// ABUS.NET (197) - ab23 : dummy

// ABUS.NET (198) - mreqb : nivm
assign mreqb = mreq;

// ABUS.NET (200) - abs01 : nd2
assign abs01 = ~(mreqb & notmset);

// ABUS.NET (201) - abs02 : nd6
assign abs02 = ~(vcc & mreqb & romlo & alb_23 & alb_22 & alb_21);

// ABUS.NET (202) - abs03 : nd6
assign abs03 = ~(vcc & mreqb & romhi & ab_23 & ab_22 & ab_21);

// ABUS.NET (203) - abs0 : nd3
assign abs_0 = ~(abs01 & abs02 & abs03);

// ABUS.NET (205) - abs10 : nd6
assign abs10 = ~(mreqb & romlo & alb_23 & alb_22 & ab_21 & mset);

// ABUS.NET (206) - abs11 : nd6
assign abs11 = ~(vcc & mreqb & romlo & alb_23 & ab_22 & mset);

// ABUS.NET (207) - abs12 : nd6
assign abs12 = ~(mreqb & romhi & ab_23 & ab_22 & alb_21 & mset);

// ABUS.NET (208) - abs13 : nd6
assign abs13 = ~(vcc & mreqb & romhi & ab_23 & alb_22 & mset);

// ABUS.NET (209) - abs1 : nd4
assign abs_1 = ~(abs10 & abs11 & abs12 & abs13);

// ABUS.NET (211) - abs20 : nd6
assign abs20 = ~(vcc & mreqb & romlo & ab_23 & alb_22 & mset);

// ABUS.NET (212) - abs21 : nd6
assign abs21 = ~(vcc & mreqb & romhi & alb_23 & ab_22 & mset);

// ABUS.NET (213) - abs2 : nd2
assign abs_2_obuf = ~(abs20 & abs21);

// ABUS.NET (215) - abs30 : nd6
assign abs30 = ~(vcc & mreqb & romlo & ab_23 & ab_22 & mset);

// ABUS.NET (216) - abs31 : nd6
assign abs31 = ~(vcc & mreqb & romhi & alb_23 & alb_22 & mset);

// ABUS.NET (217) - abs3 : nd2
assign abs_3_obuf = ~(abs30 & abs31);

// ABUS.NET (223) - fdram : or2
assign fdram_obuf = abs_2_obuf | abs_3_obuf;

// ABUS.NET (230) - fintdev1 : nd6
assign fintdev1 = ~(abs_0 & alb_16 & alb_17 & alb_18 & alb_19 & ab_20);

// ABUS.NET (231) - fintdev : ivh
assign fintdev_obuf = ~fintdev1;

// ABUS.NET (232) - fextdevl : nd6
assign fextdevl = ~(abs_0 & ab_16 & alb_17 & alb_18 & alb_19 & ab_20);

// ABUS.NET (233) - fextdev : iv
assign fextdev = ~fextdevl;

// ABUS.NET (246) - rom1 : nd6
assign rom1 = ~(mset & romlo & alb_23 & alb_22 & alb_21 & notdev);

// ABUS.NET (247) - rom2 : nd6
assign rom2 = ~(mset & romhi & ab_23 & ab_22 & ab_21 & notdev);

// ABUS.NET (248) - rom3 : nd6
assign rom3 = ~(vcc & mset & romlo & alb_23 & alb_22 & ab_21);

// ABUS.NET (249) - rom4 : nd6
assign rom4 = ~(vcc & mset & romhi & ab_23 & ab_22 & alb_21);

// ABUS.NET (250) - rom5 : nd4
assign rom5 = ~(mset & romlo & alb_23 & ab_22);

// ABUS.NET (251) - rom6 : nd4
assign rom6 = ~(mset & romhi & ab_23 & alb_22);

// ABUS.NET (252) - rom7 : nd2
assign rom7 = ~(notmset & notdev);

// ABUS.NET (253) - from : nd8
assign from = ~(rom7 & rom1 & rom2 & rom3 & rom4 & rom5 & rom6 & vcc);

// ABUS.NET (255) - romcsl[0] : an3
assign romcsl_0 = rom1 & rom2 & rom7;

// ABUS.NET (260) - intdevi : slatchc
slatchc intdevi_inst
(
	.q /* OUT */ (intdevi),
	.d /* IN */ (fintdev_obuf),
	.clk /* IN */ (clk),
	.en /* IN */ (ack),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// ABUS.NET (261) - intdev : nivh
assign intdev = intdevi;

// ABUS.NET (262) - dram : slatch
slatch dram_inst
(
	.q /* OUT */ (dram),
	.d /* IN */ (fdram_obuf),
	.clk /* IN */ (clk),
	.en /* IN */ (ack),
	.sys_clk(sys_clk) // Generated
);

// ABUS.NET (268) - rom0 : iv
assign rom0 = ~romcsl_0;

// ABUS.NET (269) - bs[0] : slatch
slatch bs_index_0_inst
(
	.q /* OUT */ (bs_0),
	.d /* IN */ (rom0),
	.clk /* IN */ (clk),
	.en /* IN */ (ack),
	.sys_clk(sys_clk) // Generated
);

// ABUS.NET (270) - bs[1] : slatch
slatch bs_index_1_inst
(
	.q /* OUT */ (bs_1),
	.d /* IN */ (abs_1),
	.clk /* IN */ (clk),
	.en /* IN */ (ack),
	.sys_clk(sys_clk) // Generated
);

// ABUS.NET (271) - bsi[2] : fd1q
fd1q bsi_index_2_inst
(
	.q /* OUT */ (bsi_2),
	.d /* IN */ (abti_2),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// ABUS.NET (272) - abti[2] : mx2
assign abti_2 = (ack) ? abs_2_obuf : bsi_2;

// ABUS.NET (273) - abt[2] : nivh
assign abt_2 = abti_2;

// ABUS.NET (274) - bs[3] : slatch
slatch bs_index_3_inst
(
	.q /* OUT */ (bs_3_obuf),
	.d /* IN */ (abs_3_obuf),
	.clk /* IN */ (clk),
	.en /* IN */ (ack),
	.sys_clk(sys_clk) // Generated
);

// ABUS.NET (275) - bs[2] : nivm
assign bs_2_obuf = bsi_2;

// ABUS.NET (297) - mw01 : nd3
assign mw01 = ~(notmset & notdev & romwid_0);

// ABUS.NET (298) - mw02 : nd2
assign mw02 = ~(notmset & dev16);

// ABUS.NET (299) - mw03 : nd8
assign mw03 = ~(vcc & mset & romlo & alb_23 & alb_22 & alb_21 & notdev & romwid_0);

// ABUS.NET (300) - mw04 : nd6
assign mw04 = ~(mset & romlo & alb_23 & alb_22 & alb_21 & dev16);

// ABUS.NET (301) - mw05 : nd8
assign mw05 = ~(vcc & mset & romhi & ab_23 & ab_22 & ab_21 & notdev & romwid_0);

// ABUS.NET (302) - mw06 : nd6
assign mw06 = ~(mset & romhi & ab_23 & ab_22 & ab_21 & dev16);

// ABUS.NET (303) - mw07 : nd6
assign mw07 = ~(mset & romlo & alb_23 & alb_22 & ab_21 & romwid_0);

// ABUS.NET (304) - mw08 : nd6
assign mw08 = ~(mset & romhi & ab_23 & ab_22 & alb_21 & romwid_0);

// ABUS.NET (305) - mw09 : nd6
assign mw09 = ~(vcc & mset & romlo & alb_23 & ab_22 & romwid_0);

// ABUS.NET (306) - mw0a : nd6
assign mw0a = ~(vcc & mset & romhi & ab_23 & alb_22 & romwid_0);

// ABUS.NET (307) - mw0b : nd6
assign mw0b = ~(vcc & mset & romlo & ab_23 & alb_22 & dwid1_0);

// ABUS.NET (308) - mw0c : nd6
assign mw0c = ~(vcc & mset & romhi & alb_23 & ab_22 & dwid1_0);

// ABUS.NET (309) - mw0d : nd6
assign mw0d = ~(vcc & mset & romlo & ab_23 & ab_22 & dwid0_0);

// ABUS.NET (310) - mw0e : nd6
assign mw0e = ~(vcc & mset & romhi & alb_23 & alb_22 & dwid0_0);

// ABUS.NET (312) - mw[0] : nand14
assign mw_0 = ~(mw01 & mw02 & mw03 & mw04 & mw05 & mw06 & mw07 & mw08 & mw09 & mw0a & mw0b & mw0c & mw0d & mw0e);

// ABUS.NET (315) - mw11 : nd3
assign mw11 = ~(notmset & notdev & romwid_1);

// ABUS.NET (316) - mw12 : nd2
assign mw12 = ~(notmset & dev32);

// ABUS.NET (317) - mw13 : nd8
assign mw13 = ~(vcc & mset & romlo & alb_23 & alb_22 & alb_21 & notdev & romwid_1);

// ABUS.NET (318) - mw14 : nd6
assign mw14 = ~(mset & romlo & alb_23 & alb_22 & alb_21 & dev32);

// ABUS.NET (319) - mw15 : nd8
assign mw15 = ~(vcc & mset & romhi & ab_23 & ab_22 & ab_21 & notdev & romwid_1);

// ABUS.NET (320) - mw16 : nd6
assign mw16 = ~(mset & romhi & ab_23 & ab_22 & ab_21 & dev32);

// ABUS.NET (321) - mw17 : nd6
assign mw17 = ~(mset & romlo & alb_23 & alb_22 & ab_21 & romwid_1);

// ABUS.NET (322) - mw18 : nd6
assign mw18 = ~(mset & romhi & ab_23 & ab_22 & alb_21 & romwid_1);

// ABUS.NET (323) - mw19 : nd6
assign mw19 = ~(vcc & mset & romlo & alb_23 & ab_22 & romwid_1);

// ABUS.NET (324) - mw1a : nd6
assign mw1a = ~(vcc & mset & romhi & ab_23 & alb_22 & romwid_1);

// ABUS.NET (325) - mw1b : nd6
assign mw1b = ~(vcc & mset & romlo & ab_23 & alb_22 & dwid1_1);

// ABUS.NET (326) - mw1c : nd6
assign mw1c = ~(vcc & mset & romhi & alb_23 & ab_22 & dwid1_1);

// ABUS.NET (327) - mw1d : nd6
assign mw1d = ~(vcc & mset & romlo & ab_23 & ab_22 & dwid0_1);

// ABUS.NET (328) - mw1e : nd6
assign mw1e = ~(vcc & mset & romhi & alb_23 & alb_22 & dwid0_1);

// ABUS.NET (330) - mw[1] : nand14
assign mw_1 = ~(mw11 & mw12 & mw13 & mw14 & mw15 & mw16 & mw17 & mw18 & mw19 & mw1a & mw1b & mw1c & mw1d & mw1e);

// ABUS.NET (333) - notdev : nd4p
assign notdev = ~(ab_20 & alb_19 & alb_18 & alb_17);

// ABUS.NET (334) - dev32l : nd6
assign dev32l = ~(ab_20 & alb_19 & alb_18 & alb_17 & alb_16 & ab_15);

// ABUS.NET (335) - dev32 : ivm
assign dev32 = ~dev32l;

// ABUS.NET (336) - dev160 : nd6
assign dev160 = ~(ab_20 & alb_19 & alb_18 & alb_17 & alb_16 & alb_15);

// ABUS.NET (337) - dev161 : nd6
assign dev161 = ~(ab_20 & alb_19 & alb_18 & alb_17 & ab_16 & vcc);

// ABUS.NET (338) - dev16 : nd2p
assign dev16 = ~(dev160 & dev161);

// ABUS.NET (346) - notba : iv
assign notba = ~ba;

// ABUS.NET (347) - bm68k : an2
assign bm68k = notba & m68k_obuf;

// ABUS.NET (348) - ai[0] : mx2
assign ai_0 = (bm68k) ? siz_1 : ain_0;

// ABUS.NET (350) - a[0] : tsm
assign a_0_out = ai_0;
assign a_0_oe = ainen;

// ABUS.NET (351) - a[1-23] : tsm
assign a_1_out = ain_1;
assign a_1_oe = ainen;
assign a_2_out = ain_2;
assign a_2_oe = ainen;
assign a_3_out = ain_3;
assign a_3_oe = ainen;
assign a_4_out = ain_4;
assign a_4_oe = ainen;
assign a_5_out = ain_5;
assign a_5_oe = ainen;
assign a_6_out = ain_6;
assign a_6_oe = ainen;
assign a_7_out = ain_7;
assign a_7_oe = ainen;
assign a_8_out = ain_8;
assign a_8_oe = ainen;
assign a_9_out = ain_9;
assign a_9_oe = ainen;
assign a_10_out = ain_10;
assign a_10_oe = ainen;
assign a_11_out = ain_11;
assign a_11_oe = ainen;
assign a_12_out = ain_12;
assign a_12_oe = ainen;
assign a_13_out = ain_13;
assign a_13_oe = ainen;
assign a_14_out = ain_14;
assign a_14_oe = ainen;
assign a_15_out = ain_15;
assign a_15_oe = ainen;
assign a_16_out = ain_16;
assign a_16_oe = ainen;
assign a_17_out = ain_17;
assign a_17_oe = ainen;
assign a_18_out = ain_18;
assign a_18_oe = ainen;
assign a_19_out = ain_19;
assign a_19_oe = ainen;
assign a_20_out = ain_20;
assign a_20_oe = ainen;
assign a_21_out = ain_21;
assign a_21_oe = ainen;
assign a_22_out = ain_22;
assign a_22_oe = ainen;
assign a_23_out = ain_23;
assign a_23_oe = ainen;

// ABUS.NET (375) - dwidi[0-1] : mx2
assign dwidi_0 = (abt_2) ? dwid1_0 : dwid0_0;
assign dwidi_1 = (abt_2) ? dwid1_1 : dwid0_1;

// ABUS.NET (376) - dwid[0-1] : nivh
assign dwid_0 = dwidi_0;
assign dwid_1 = dwidi_1;

// ABUS.NET (378) - ald[0-10] : mx4
mx4 ald_from_0_to_10_inst_0
(
	.z /* OUT */ (ald_0),
	.a0 /* IN */ (at_0),
	.a1 /* IN */ (at_1),
	.a2 /* IN */ (at_2),
	.a3 /* IN */ (at_3_obuf),
	.s0 /* IN */ (dwid_0),
	.s1 /* IN */ (dwid_1)
);
mx4 ald_from_0_to_10_inst_1
(
	.z /* OUT */ (ald_1),
	.a0 /* IN */ (at_1),
	.a1 /* IN */ (at_2),
	.a2 /* IN */ (at_3_obuf),
	.a3 /* IN */ (at_4_obuf),
	.s0 /* IN */ (dwid_0),
	.s1 /* IN */ (dwid_1)
);
mx4 ald_from_0_to_10_inst_2
(
	.z /* OUT */ (ald_2),
	.a0 /* IN */ (at_2),
	.a1 /* IN */ (at_3_obuf),
	.a2 /* IN */ (at_4_obuf),
	.a3 /* IN */ (at_5_obuf),
	.s0 /* IN */ (dwid_0),
	.s1 /* IN */ (dwid_1)
);
mx4 ald_from_0_to_10_inst_3
(
	.z /* OUT */ (ald_3),
	.a0 /* IN */ (at_3_obuf),
	.a1 /* IN */ (at_4_obuf),
	.a2 /* IN */ (at_5_obuf),
	.a3 /* IN */ (at_6_obuf),
	.s0 /* IN */ (dwid_0),
	.s1 /* IN */ (dwid_1)
);
mx4 ald_from_0_to_10_inst_4
(
	.z /* OUT */ (ald_4),
	.a0 /* IN */ (at_4_obuf),
	.a1 /* IN */ (at_5_obuf),
	.a2 /* IN */ (at_6_obuf),
	.a3 /* IN */ (at_7_obuf),
	.s0 /* IN */ (dwid_0),
	.s1 /* IN */ (dwid_1)
);
mx4 ald_from_0_to_10_inst_5
(
	.z /* OUT */ (ald_5),
	.a0 /* IN */ (at_5_obuf),
	.a1 /* IN */ (at_6_obuf),
	.a2 /* IN */ (at_7_obuf),
	.a3 /* IN */ (at_8_obuf),
	.s0 /* IN */ (dwid_0),
	.s1 /* IN */ (dwid_1)
);
mx4 ald_from_0_to_10_inst_6
(
	.z /* OUT */ (ald_6),
	.a0 /* IN */ (at_6_obuf),
	.a1 /* IN */ (at_7_obuf),
	.a2 /* IN */ (at_8_obuf),
	.a3 /* IN */ (at_9_obuf),
	.s0 /* IN */ (dwid_0),
	.s1 /* IN */ (dwid_1)
);
mx4 ald_from_0_to_10_inst_7
(
	.z /* OUT */ (ald_7),
	.a0 /* IN */ (at_7_obuf),
	.a1 /* IN */ (at_8_obuf),
	.a2 /* IN */ (at_9_obuf),
	.a3 /* IN */ (at_10_obuf),
	.s0 /* IN */ (dwid_0),
	.s1 /* IN */ (dwid_1)
);
mx4 ald_from_0_to_10_inst_8
(
	.z /* OUT */ (ald_8),
	.a0 /* IN */ (at_8_obuf),
	.a1 /* IN */ (at_9_obuf),
	.a2 /* IN */ (at_10_obuf),
	.a3 /* IN */ (at_11),
	.s0 /* IN */ (dwid_0),
	.s1 /* IN */ (dwid_1)
);
mx4 ald_from_0_to_10_inst_9
(
	.z /* OUT */ (ald_9),
	.a0 /* IN */ (at_9_obuf),
	.a1 /* IN */ (at_10_obuf),
	.a2 /* IN */ (at_11),
	.a3 /* IN */ (at_12),
	.s0 /* IN */ (dwid_0),
	.s1 /* IN */ (dwid_1)
);
mx4 ald_from_0_to_10_inst_10
(
	.z /* OUT */ (ald_10),
	.a0 /* IN */ (at_10_obuf),
	.a1 /* IN */ (at_11),
	.a2 /* IN */ (at_12),
	.a3 /* IN */ (at_13),
	.s0 /* IN */ (dwid_0),
	.s1 /* IN */ (dwid_1)
);

// ABUS.NET (383) - cw0i[0] : ha1
ha1 cw0i_index_0_inst
(
	.s /* OUT */ (cw0i_0),
	.co /* OUT */ (co0_0),
	.a /* IN */ (dwid0_0),
	.b /* IN */ (cols0_0)
);

// ABUS.NET (384) - cw0i[1] : fa1
fa1 cw0i_index_1_inst
(
	.s /* OUT */ (cw0i_1),
	.co /* OUT */ (cw0i_2),
	.ci /* IN */ (dwid0_1),
	.a /* IN */ (cols0_1),
	.b /* IN */ (co0_0)
);

// ABUS.NET (385) - cw0[0-2] : nivm
assign cw0_0 = cw0i_0;
assign cw0_1 = cw0i_1;
assign cw0_2 = cw0i_2;

// ABUS.NET (387) - cw1i[0] : ha1
ha1 cw1i_index_0_inst
(
	.s /* OUT */ (cw1i_0),
	.co /* OUT */ (co1_0),
	.a /* IN */ (dwid1_0),
	.b /* IN */ (cols1_0)
);

// ABUS.NET (388) - cw1i[1] : fa1
fa1 cw1i_index_1_inst
(
	.s /* OUT */ (cw1i_1),
	.co /* OUT */ (cw1i_2),
	.ci /* IN */ (dwid1_1),
	.a /* IN */ (cols1_1),
	.b /* IN */ (co1_0)
);

// ABUS.NET (389) - cw1[0-2] : nivm
assign cw1_0 = cw1i_0;
assign cw1_1 = cw1i_1;
assign cw1_2 = cw1i_2;

// ABUS.NET (393) - ahd0[0-9] : mx8
mx8 ahd0_from_0_to_9_inst_0
(
	.z /* OUT */ (ahd0_0),
	.a0 /* IN */ (at_8_obuf),
	.a1 /* IN */ (at_9_obuf),
	.a2 /* IN */ (at_10_obuf),
	.a3 /* IN */ (at_11),
	.a4 /* IN */ (at_12),
	.a5 /* IN */ (at_13),
	.a6 /* IN */ (at_14),
	.a7 /* IN */ (gnd),
	.s0 /* IN */ (cw0_0),
	.s1 /* IN */ (cw0_1),
	.s2 /* IN */ (cw0_2)
);
mx8 ahd0_from_0_to_9_inst_1
(
	.z /* OUT */ (ahd0_1),
	.a0 /* IN */ (at_9_obuf),
	.a1 /* IN */ (at_10_obuf),
	.a2 /* IN */ (at_11),
	.a3 /* IN */ (at_12),
	.a4 /* IN */ (at_13),
	.a5 /* IN */ (at_14),
	.a6 /* IN */ (at_15),
	.a7 /* IN */ (gnd),
	.s0 /* IN */ (cw0_0),
	.s1 /* IN */ (cw0_1),
	.s2 /* IN */ (cw0_2)
);
mx8 ahd0_from_0_to_9_inst_2
(
	.z /* OUT */ (ahd0_2),
	.a0 /* IN */ (at_10_obuf),
	.a1 /* IN */ (at_11),
	.a2 /* IN */ (at_12),
	.a3 /* IN */ (at_13),
	.a4 /* IN */ (at_14),
	.a5 /* IN */ (at_15),
	.a6 /* IN */ (at_16),
	.a7 /* IN */ (gnd),
	.s0 /* IN */ (cw0_0),
	.s1 /* IN */ (cw0_1),
	.s2 /* IN */ (cw0_2)
);
mx8 ahd0_from_0_to_9_inst_3
(
	.z /* OUT */ (ahd0_3),
	.a0 /* IN */ (at_11),
	.a1 /* IN */ (at_12),
	.a2 /* IN */ (at_13),
	.a3 /* IN */ (at_14),
	.a4 /* IN */ (at_15),
	.a5 /* IN */ (at_16),
	.a6 /* IN */ (at_17),
	.a7 /* IN */ (gnd),
	.s0 /* IN */ (cw0_0),
	.s1 /* IN */ (cw0_1),
	.s2 /* IN */ (cw0_2)
);
mx8 ahd0_from_0_to_9_inst_4
(
	.z /* OUT */ (ahd0_4),
	.a0 /* IN */ (at_12),
	.a1 /* IN */ (at_13),
	.a2 /* IN */ (at_14),
	.a3 /* IN */ (at_15),
	.a4 /* IN */ (at_16),
	.a5 /* IN */ (at_17),
	.a6 /* IN */ (at_18),
	.a7 /* IN */ (gnd),
	.s0 /* IN */ (cw0_0),
	.s1 /* IN */ (cw0_1),
	.s2 /* IN */ (cw0_2)
);
mx8 ahd0_from_0_to_9_inst_5
(
	.z /* OUT */ (ahd0_5),
	.a0 /* IN */ (at_13),
	.a1 /* IN */ (at_14),
	.a2 /* IN */ (at_15),
	.a3 /* IN */ (at_16),
	.a4 /* IN */ (at_17),
	.a5 /* IN */ (at_18),
	.a6 /* IN */ (at_19),
	.a7 /* IN */ (gnd),
	.s0 /* IN */ (cw0_0),
	.s1 /* IN */ (cw0_1),
	.s2 /* IN */ (cw0_2)
);
mx8 ahd0_from_0_to_9_inst_6
(
	.z /* OUT */ (ahd0_6),
	.a0 /* IN */ (at_14),
	.a1 /* IN */ (at_15),
	.a2 /* IN */ (at_16),
	.a3 /* IN */ (at_17),
	.a4 /* IN */ (at_18),
	.a5 /* IN */ (at_19),
	.a6 /* IN */ (at_20),
	.a7 /* IN */ (gnd),
	.s0 /* IN */ (cw0_0),
	.s1 /* IN */ (cw0_1),
	.s2 /* IN */ (cw0_2)
);
mx8 ahd0_from_0_to_9_inst_7
(
	.z /* OUT */ (ahd0_7),
	.a0 /* IN */ (at_15),
	.a1 /* IN */ (at_16),
	.a2 /* IN */ (at_17),
	.a3 /* IN */ (at_18),
	.a4 /* IN */ (at_19),
	.a5 /* IN */ (at_20),
	.a6 /* IN */ (at_21),
	.a7 /* IN */ (gnd),
	.s0 /* IN */ (cw0_0),
	.s1 /* IN */ (cw0_1),
	.s2 /* IN */ (cw0_2)
);
mx8 ahd0_from_0_to_9_inst_8
(
	.z /* OUT */ (ahd0_8),
	.a0 /* IN */ (at_16),
	.a1 /* IN */ (at_17),
	.a2 /* IN */ (at_18),
	.a3 /* IN */ (at_19),
	.a4 /* IN */ (at_20),
	.a5 /* IN */ (at_21),
	.a6 /* IN */ (at_22),
	.a7 /* IN */ (gnd),
	.s0 /* IN */ (cw0_0),
	.s1 /* IN */ (cw0_1),
	.s2 /* IN */ (cw0_2)
);
mx8 ahd0_from_0_to_9_inst_9
(
	.z /* OUT */ (ahd0_9),
	.a0 /* IN */ (at_17),
	.a1 /* IN */ (at_18),
	.a2 /* IN */ (at_19),
	.a3 /* IN */ (at_20),
	.a4 /* IN */ (at_21),
	.a5 /* IN */ (at_22),
	.a6 /* IN */ (at_23),
	.a7 /* IN */ (gnd),
	.s0 /* IN */ (cw0_0),
	.s1 /* IN */ (cw0_1),
	.s2 /* IN */ (cw0_2)
);

// ABUS.NET (395) - ahd0[10] : mx8
mx8 ahd0_index_10_inst
(
	.z /* OUT */ (ahd0_10),
	.a0 /* IN */ (at_18),
	.a1 /* IN */ (at_19),
	.a2 /* IN */ (at_20),
	.a3 /* IN */ (at_21),
	.a4 /* IN */ (at_22),
	.a5 /* IN */ (at_23),
	.a6 /* IN */ (gnd),
	.a7 /* IN */ (gnd),
	.s0 /* IN */ (cw0_0),
	.s1 /* IN */ (cw0_1),
	.s2 /* IN */ (cw0_2)
);

// ABUS.NET (397) - ahd1[0-9] : mx8
mx8 ahd1_from_0_to_9_inst_0
(
	.z /* OUT */ (ahd1_0),
	.a0 /* IN */ (at_8_obuf),
	.a1 /* IN */ (at_9_obuf),
	.a2 /* IN */ (at_10_obuf),
	.a3 /* IN */ (at_11),
	.a4 /* IN */ (at_12),
	.a5 /* IN */ (at_13),
	.a6 /* IN */ (at_14),
	.a7 /* IN */ (gnd),
	.s0 /* IN */ (cw1_0),
	.s1 /* IN */ (cw1_1),
	.s2 /* IN */ (cw1_2)
);
mx8 ahd1_from_0_to_9_inst_1
(
	.z /* OUT */ (ahd1_1),
	.a0 /* IN */ (at_9_obuf),
	.a1 /* IN */ (at_10_obuf),
	.a2 /* IN */ (at_11),
	.a3 /* IN */ (at_12),
	.a4 /* IN */ (at_13),
	.a5 /* IN */ (at_14),
	.a6 /* IN */ (at_15),
	.a7 /* IN */ (gnd),
	.s0 /* IN */ (cw1_0),
	.s1 /* IN */ (cw1_1),
	.s2 /* IN */ (cw1_2)
);
mx8 ahd1_from_0_to_9_inst_2
(
	.z /* OUT */ (ahd1_2),
	.a0 /* IN */ (at_10_obuf),
	.a1 /* IN */ (at_11),
	.a2 /* IN */ (at_12),
	.a3 /* IN */ (at_13),
	.a4 /* IN */ (at_14),
	.a5 /* IN */ (at_15),
	.a6 /* IN */ (at_16),
	.a7 /* IN */ (gnd),
	.s0 /* IN */ (cw1_0),
	.s1 /* IN */ (cw1_1),
	.s2 /* IN */ (cw1_2)
);
mx8 ahd1_from_0_to_9_inst_3
(
	.z /* OUT */ (ahd1_3),
	.a0 /* IN */ (at_11),
	.a1 /* IN */ (at_12),
	.a2 /* IN */ (at_13),
	.a3 /* IN */ (at_14),
	.a4 /* IN */ (at_15),
	.a5 /* IN */ (at_16),
	.a6 /* IN */ (at_17),
	.a7 /* IN */ (gnd),
	.s0 /* IN */ (cw1_0),
	.s1 /* IN */ (cw1_1),
	.s2 /* IN */ (cw1_2)
);
mx8 ahd1_from_0_to_9_inst_4
(
	.z /* OUT */ (ahd1_4),
	.a0 /* IN */ (at_12),
	.a1 /* IN */ (at_13),
	.a2 /* IN */ (at_14),
	.a3 /* IN */ (at_15),
	.a4 /* IN */ (at_16),
	.a5 /* IN */ (at_17),
	.a6 /* IN */ (at_18),
	.a7 /* IN */ (gnd),
	.s0 /* IN */ (cw1_0),
	.s1 /* IN */ (cw1_1),
	.s2 /* IN */ (cw1_2)
);
mx8 ahd1_from_0_to_9_inst_5
(
	.z /* OUT */ (ahd1_5),
	.a0 /* IN */ (at_13),
	.a1 /* IN */ (at_14),
	.a2 /* IN */ (at_15),
	.a3 /* IN */ (at_16),
	.a4 /* IN */ (at_17),
	.a5 /* IN */ (at_18),
	.a6 /* IN */ (at_19),
	.a7 /* IN */ (gnd),
	.s0 /* IN */ (cw1_0),
	.s1 /* IN */ (cw1_1),
	.s2 /* IN */ (cw1_2)
);
mx8 ahd1_from_0_to_9_inst_6
(
	.z /* OUT */ (ahd1_6),
	.a0 /* IN */ (at_14),
	.a1 /* IN */ (at_15),
	.a2 /* IN */ (at_16),
	.a3 /* IN */ (at_17),
	.a4 /* IN */ (at_18),
	.a5 /* IN */ (at_19),
	.a6 /* IN */ (at_20),
	.a7 /* IN */ (gnd),
	.s0 /* IN */ (cw1_0),
	.s1 /* IN */ (cw1_1),
	.s2 /* IN */ (cw1_2)
);
mx8 ahd1_from_0_to_9_inst_7
(
	.z /* OUT */ (ahd1_7),
	.a0 /* IN */ (at_15),
	.a1 /* IN */ (at_16),
	.a2 /* IN */ (at_17),
	.a3 /* IN */ (at_18),
	.a4 /* IN */ (at_19),
	.a5 /* IN */ (at_20),
	.a6 /* IN */ (at_21),
	.a7 /* IN */ (gnd),
	.s0 /* IN */ (cw1_0),
	.s1 /* IN */ (cw1_1),
	.s2 /* IN */ (cw1_2)
);
mx8 ahd1_from_0_to_9_inst_8
(
	.z /* OUT */ (ahd1_8),
	.a0 /* IN */ (at_16),
	.a1 /* IN */ (at_17),
	.a2 /* IN */ (at_18),
	.a3 /* IN */ (at_19),
	.a4 /* IN */ (at_20),
	.a5 /* IN */ (at_21),
	.a6 /* IN */ (at_22),
	.a7 /* IN */ (gnd),
	.s0 /* IN */ (cw1_0),
	.s1 /* IN */ (cw1_1),
	.s2 /* IN */ (cw1_2)
);
mx8 ahd1_from_0_to_9_inst_9
(
	.z /* OUT */ (ahd1_9),
	.a0 /* IN */ (at_17),
	.a1 /* IN */ (at_18),
	.a2 /* IN */ (at_19),
	.a3 /* IN */ (at_20),
	.a4 /* IN */ (at_21),
	.a5 /* IN */ (at_22),
	.a6 /* IN */ (at_23),
	.a7 /* IN */ (gnd),
	.s0 /* IN */ (cw1_0),
	.s1 /* IN */ (cw1_1),
	.s2 /* IN */ (cw1_2)
);

// ABUS.NET (399) - ahd1[10] : mx8
mx8 ahd1_index_10_inst
(
	.z /* OUT */ (ahd1_10),
	.a0 /* IN */ (at_18),
	.a1 /* IN */ (at_19),
	.a2 /* IN */ (at_20),
	.a3 /* IN */ (at_21),
	.a4 /* IN */ (at_22),
	.a5 /* IN */ (at_23),
	.a6 /* IN */ (gnd),
	.a7 /* IN */ (gnd),
	.s0 /* IN */ (cw1_0),
	.s1 /* IN */ (cw1_1),
	.s2 /* IN */ (cw1_2)
);

// ABUS.NET (401) - gnd : tie0
assign gnd = 1'b0;

// ABUS.NET (403) - ahd[0-10] : mx2
assign ahd_0 = (abt_2) ? ahd1_0 : ahd0_0;
assign ahd_1 = (abt_2) ? ahd1_1 : ahd0_1;
assign ahd_2 = (abt_2) ? ahd1_2 : ahd0_2;
assign ahd_3 = (abt_2) ? ahd1_3 : ahd0_3;
assign ahd_4 = (abt_2) ? ahd1_4 : ahd0_4;
assign ahd_5 = (abt_2) ? ahd1_5 : ahd0_5;
assign ahd_6 = (abt_2) ? ahd1_6 : ahd0_6;
assign ahd_7 = (abt_2) ? ahd1_7 : ahd0_7;
assign ahd_8 = (abt_2) ? ahd1_8 : ahd0_8;
assign ahd_9 = (abt_2) ? ahd1_9 : ahd0_9;
assign ahd_10 = (abt_2) ? ahd1_10 : ahd0_10;

// ABUS.NET (404) - mad[0-10] : mx2
assign mad_0 = (mux) ? ahd_0 : ald_0;
assign mad_1 = (mux) ? ahd_1 : ald_1;
assign mad_2 = (mux) ? ahd_2 : ald_2;
assign mad_3 = (mux) ? ahd_3 : ald_3;
assign mad_4 = (mux) ? ahd_4 : ald_4;
assign mad_5 = (mux) ? ahd_5 : ald_5;
assign mad_6 = (mux) ? ahd_6 : ald_6;
assign mad_7 = (mux) ? ahd_7 : ald_7;
assign mad_8 = (mux) ? ahd_8 : ald_8;
assign mad_9 = (mux) ? ahd_9 : ald_9;
assign mad_10 = (mux) ? ahd_10 : ald_10;

// ABUS.NET (405) - ma[0-10] : fd1q
fd1q ma_from_0_to_10_inst_0
(
	.q /* OUT */ (ma_0_obuf),
	.d /* IN */ (mad_0),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q ma_from_0_to_10_inst_1
(
	.q /* OUT */ (ma_1_obuf),
	.d /* IN */ (mad_1),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q ma_from_0_to_10_inst_2
(
	.q /* OUT */ (ma_2_obuf),
	.d /* IN */ (mad_2),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q ma_from_0_to_10_inst_3
(
	.q /* OUT */ (ma_3_obuf),
	.d /* IN */ (mad_3),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q ma_from_0_to_10_inst_4
(
	.q /* OUT */ (ma_4_obuf),
	.d /* IN */ (mad_4),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q ma_from_0_to_10_inst_5
(
	.q /* OUT */ (ma_5_obuf),
	.d /* IN */ (mad_5),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q ma_from_0_to_10_inst_6
(
	.q /* OUT */ (ma_6_obuf),
	.d /* IN */ (mad_6),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q ma_from_0_to_10_inst_7
(
	.q /* OUT */ (ma_7_obuf),
	.d /* IN */ (mad_7),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q ma_from_0_to_10_inst_8
(
	.q /* OUT */ (ma_8_obuf),
	.d /* IN */ (mad_8),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q ma_from_0_to_10_inst_9
(
	.q /* OUT */ (ma_9_obuf),
	.d /* IN */ (mad_9),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q ma_from_0_to_10_inst_10
(
	.q /* OUT */ (ma_10_obuf),
	.d /* IN */ (mad_10),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// ABUS.NET (411) - newrow[0] : an2h
assign newrow_0 = bs_3_obuf & newrow;

// ABUS.NET (412) - newrow[1] : an2h
assign newrow_1 = bs_2_obuf & newrow;

// ABUS.NET (413) - reset : iv
assign reset = ~resetl;

// ABUS.NET (414) - bankresl : nr2
assign bankresl = ~(reset | resrow);

// ABUS.NET (416) - bank[0] : bank
bank bank_index_0_inst
(
	.match /* OUT */ (match_0),
	.a_0 /* IN */ (ahd0_0),
	.a_1 /* IN */ (ahd0_1),
	.a_2 /* IN */ (ahd0_2),
	.a_3 /* IN */ (ahd0_3),
	.a_4 /* IN */ (ahd0_4),
	.a_5 /* IN */ (ahd0_5),
	.a_6 /* IN */ (ahd0_6),
	.a_7 /* IN */ (ahd0_7),
	.a_8 /* IN */ (ahd0_8),
	.a_9 /* IN */ (ahd0_9),
	.a_10 /* IN */ (ahd0_10),
	.newrow /* IN */ (newrow_0),
	.resl /* IN */ (bankresl),
	.sys_clk(sys_clk) // Generated
);

// ABUS.NET (417) - bank[1] : bank
bank bank_index_1_inst
(
	.match /* OUT */ (match_1),
	.a_0 /* IN */ (ahd1_0),
	.a_1 /* IN */ (ahd1_1),
	.a_2 /* IN */ (ahd1_2),
	.a_3 /* IN */ (ahd1_3),
	.a_4 /* IN */ (ahd1_4),
	.a_5 /* IN */ (ahd1_5),
	.a_6 /* IN */ (ahd1_6),
	.a_7 /* IN */ (ahd1_7),
	.a_8 /* IN */ (ahd1_8),
	.a_9 /* IN */ (ahd1_9),
	.a_10 /* IN */ (ahd1_10),
	.newrow /* IN */ (newrow_1),
	.resl /* IN */ (bankresl),
	.sys_clk(sys_clk) // Generated
);

// ABUS.NET (419) - m[0] : nd2
assign m_0 = ~(match_0 & abs_3_obuf);

// ABUS.NET (420) - m[1] : nd2
assign m_1 = ~(match_1 & abs_2_obuf);

// ABUS.NET (421) - match : nd2
assign match = ~(m_0 & m_1);

// ABUS.NET (429) - intd0 : nd6
assign intd0 = ~(dreqin & fc_0 & fc_1 & fc_2 & ainen & m68k_obuf);

// ABUS.NET (430) - intd1 : nd2
assign intd1 = ~(fcl_0 & not68k);

// ABUS.NET (431) - intd : nd2
assign intd = ~(intd0 & intd1);

// ABUS.NET (432) - intas : fd1q
fd1q intas_inst
(
	.q /* OUT */ (ouracki),
	.d /* IN */ (intd),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// ABUS.NET (433) - notourack : ivm
assign notourack = ~ouracki;

// ABUS.NET (434) - ourack : ivh
assign ourack = ~notourack;

// ABUS.NET (436) - fcl[0] : iv
assign fcl_0 = ~fc_0;

// ABUS.NET (440) - gpuadd : or2
assign gpuadd = at_13 | at_14;

// ABUS.NET (441) - gpuread : an3
assign gpuread = gpuadd & readt & d7a;

// ABUS.NET (442) - gpuwrite : an3
assign gpuwrite = gpuadd & writet & d7a;

// ABUS.NET (443) - wr : iv
assign writet = ~readt;

// ABUS.NET (447) - lbufb : iv
assign lbufb = ~lbufa;

// ABUS.NET (448) - lba0 : nd6
assign lba0 = ~(fintdev_obuf & ab_11 & alb_12 & alb_13 & alb_14 & notourack);

// ABUS.NET (449) - lba1 : nd8
assign lba1 = ~(fintdev_obuf & ab_11 & ab_12 & alb_13 & alb_14 & lbufb & notourack & vcc);

// ABUS.NET (450) - lbad : nd2
assign lbad = ~(lba0 & lba1);

// ABUS.NET (451) - lbb0 : nd6
assign lbb0 = ~(fintdev_obuf & alb_11 & ab_12 & alb_13 & alb_14 & notourack);

// ABUS.NET (452) - lbb1 : nd8
assign lbb1 = ~(fintdev_obuf & ab_11 & ab_12 & alb_13 & alb_14 & lbufa & notourack & vcc);

// ABUS.NET (453) - lbbd : nd2
assign lbbd = ~(lbb0 & lbb1);

// ABUS.NET (454) - clutd : an8
assign clutd = fintdev_obuf & ab_10 & alb_11 & alb_12 & alb_13 & alb_14 & alb_15 & notourack;

// ABUS.NET (455) - lb0 : nd6
assign lb0 = ~(fintdev_obuf & ab_11 & alb_13 & alb_14 & notourack & vcc);

// ABUS.NET (456) - lb1 : nd6
assign lb1 = ~(fintdev_obuf & ab_12 & alb_13 & alb_14 & notourack & vcc);

// ABUS.NET (457) - lbd : nd2
assign lbd = ~(lb0 & lb1);

// ABUS.NET (459) - lbat : mx2
assign lbat = (ack) ? lbad : lba_obuf;

// ABUS.NET (460) - lbai : fd2qp
fd2q lbai_inst
(
	.q /* OUT */ (lba_obuf),
	.d /* IN */ (lbat),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// ABUS.NET (462) - lbbt : mx2
assign lbbt = (ack) ? lbbd : lbb_obuf;

// ABUS.NET (463) - lbbi : fd2qp
fd2q lbbi_inst
(
	.q /* OUT */ (lbb_obuf),
	.d /* IN */ (lbbt),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// ABUS.NET (465) - lbt : mx2h
assign lbt_obuf = (ack) ? lbd : lb;

// ABUS.NET (466) - lbi : fd2qp
fd2q lbi_inst
(
	.q /* OUT */ (lb),
	.d /* IN */ (lbt_obuf),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// ABUS.NET (468) - clutt : mx2h
assign clutt_obuf = (ack) ? clutd : clut_obuf;

// ABUS.NET (469) - cluti : fd2qp
fd2q cluti_inst
(
	.q /* OUT */ (clut_obuf),
	.d /* IN */ (clutt_obuf),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// --- Compiler-generated PE for BUS dr[0]
assign dr_0_out = (ts_pe_272_a0_oe & ts_pe_272_a0_out ) | (ts_pe_272_a1_oe & ts_pe_272_a1_out ) | 1'b0;
assign dr_0_oe = ts_pe_272_a0_oe | ts_pe_272_a1_oe;
assign ts_pe_272_a0_in = dr_0_in;
assign ts_pe_272_a1_in = dr_0_in;

// --- Compiler-generated PE for BUS dr[1]
assign dr_1_out = (ts_pe_273_a0_oe & ts_pe_273_a0_out ) | (ts_pe_273_a1_oe & ts_pe_273_a1_out ) | 1'b0;
assign dr_1_oe = ts_pe_273_a0_oe | ts_pe_273_a1_oe;
assign ts_pe_273_a0_in = dr_1_in;
assign ts_pe_273_a1_in = dr_1_in;

// --- Compiler-generated PE for BUS dr[2]
assign dr_2_out = (ts_pe_274_a0_oe & ts_pe_274_a0_out ) | (ts_pe_274_a1_oe & ts_pe_274_a1_out ) | 1'b0;
assign dr_2_oe = ts_pe_274_a0_oe | ts_pe_274_a1_oe;
assign ts_pe_274_a0_in = dr_2_in;
assign ts_pe_274_a1_in = dr_2_in;

// --- Compiler-generated PE for BUS dr[3]
assign dr_3_out = (ts_pe_275_a0_oe & ts_pe_275_a0_out ) | (ts_pe_275_a1_oe & ts_pe_275_a1_out ) | 1'b0;
assign dr_3_oe = ts_pe_275_a0_oe | ts_pe_275_a1_oe;
assign ts_pe_275_a0_in = dr_3_in;
assign ts_pe_275_a1_in = dr_3_in;

// --- Compiler-generated PE for BUS dr[4]
assign dr_4_out = (ts_pe_276_a0_oe & ts_pe_276_a0_out ) | (ts_pe_276_a1_oe & ts_pe_276_a1_out ) | 1'b0;
assign dr_4_oe = ts_pe_276_a0_oe | ts_pe_276_a1_oe;
assign ts_pe_276_a0_in = dr_4_in;
assign ts_pe_276_a1_in = dr_4_in;

// --- Compiler-generated PE for BUS dr[5]
assign dr_5_out = (ts_pe_277_a0_oe & ts_pe_277_a0_out ) | (ts_pe_277_a1_oe & ts_pe_277_a1_out ) | 1'b0;
assign dr_5_oe = ts_pe_277_a0_oe | ts_pe_277_a1_oe;
assign ts_pe_277_a0_in = dr_5_in;
assign ts_pe_277_a1_in = dr_5_in;

// --- Compiler-generated PE for BUS dr[6]
assign dr_6_out = (ts_pe_278_a0_oe & ts_pe_278_a0_out ) | (ts_pe_278_a1_oe & ts_pe_278_a1_out ) | 1'b0;
assign dr_6_oe = ts_pe_278_a0_oe | ts_pe_278_a1_oe;
assign ts_pe_278_a0_in = dr_6_in;
assign ts_pe_278_a1_in = dr_6_in;

// --- Compiler-generated PE for BUS dr[7]
assign dr_7_out = (ts_pe_279_a0_oe & ts_pe_279_a0_out ) | (ts_pe_279_a1_oe & ts_pe_279_a1_out ) | 1'b0;
assign dr_7_oe = ts_pe_279_a0_oe | ts_pe_279_a1_oe;
assign ts_pe_279_a0_in = dr_7_in;
assign ts_pe_279_a1_in = dr_7_in;

// --- Compiler-generated PE for BUS dr[8]
assign dr_8_out = (ts_pe_280_a0_oe & ts_pe_280_a0_out ) | (ts_pe_280_a1_oe & ts_pe_280_a1_out ) | 1'b0;
assign dr_8_oe = ts_pe_280_a0_oe | ts_pe_280_a1_oe;
assign ts_pe_280_a0_in = dr_8_in;
assign ts_pe_280_a1_in = dr_8_in;

// --- Compiler-generated PE for BUS dr[9]
assign dr_9_out = (ts_pe_281_a0_oe & ts_pe_281_a0_out ) | (ts_pe_281_a1_oe & ts_pe_281_a1_out ) | 1'b0;
assign dr_9_oe = ts_pe_281_a0_oe | ts_pe_281_a1_oe;
assign ts_pe_281_a0_in = dr_9_in;
assign ts_pe_281_a1_in = dr_9_in;

// --- Compiler-generated PE for BUS dr[10]
assign dr_10_out = (ts_pe_282_a0_oe & ts_pe_282_a0_out ) | (ts_pe_282_a1_oe & ts_pe_282_a1_out ) | 1'b0;
assign dr_10_oe = ts_pe_282_a0_oe | ts_pe_282_a1_oe;
assign ts_pe_282_a0_in = dr_10_in;
assign ts_pe_282_a1_in = dr_10_in;

// --- Compiler-generated PE for BUS dr[11]
assign dr_11_out = (ts_pe_283_a0_oe & ts_pe_283_a0_out ) | (ts_pe_283_a1_oe & ts_pe_283_a1_out ) | 1'b0;
assign dr_11_oe = ts_pe_283_a0_oe | ts_pe_283_a1_oe;
assign ts_pe_283_a0_in = dr_11_in;
assign ts_pe_283_a1_in = dr_11_in;

// --- Compiler-generated PE for BUS dr[12]
assign dr_12_out = (ts_pe_284_a0_oe & ts_pe_284_a0_out ) | (ts_pe_284_a1_oe & ts_pe_284_a1_out ) | 1'b0;
assign dr_12_oe = ts_pe_284_a0_oe | ts_pe_284_a1_oe;
assign ts_pe_284_a0_in = dr_12_in;
assign ts_pe_284_a1_in = dr_12_in;

// --- Compiler-generated PE for BUS dr[13]
assign dr_13_out = (ts_pe_285_a0_oe & ts_pe_285_a0_out ) | (ts_pe_285_a1_oe & ts_pe_285_a1_out ) | 1'b0;
assign dr_13_oe = ts_pe_285_a0_oe | ts_pe_285_a1_oe;
assign ts_pe_285_a0_in = dr_13_in;
assign ts_pe_285_a1_in = dr_13_in;

// --- Compiler-generated PE for BUS dr[14]
assign dr_14_out = (ts_pe_286_a0_oe & ts_pe_286_a0_out ) | (ts_pe_286_a1_oe & ts_pe_286_a1_out ) | 1'b0;
assign dr_14_oe = ts_pe_286_a0_oe | ts_pe_286_a1_oe;
assign ts_pe_286_a0_in = dr_14_in;
assign ts_pe_286_a1_in = dr_14_in;

// --- Compiler-generated PE for BUS dr[15]
assign dr_15_out = (ts_pe_287_a0_oe & ts_pe_287_a0_out ) | (ts_pe_287_a1_oe & ts_pe_287_a1_out ) | 1'b0;
assign dr_15_oe = ts_pe_287_a0_oe | ts_pe_287_a1_oe;
assign ts_pe_287_a0_in = dr_15_in;
assign ts_pe_287_a1_in = dr_15_in;
endmodule
/* verilator lint_on LITENDIAN */
