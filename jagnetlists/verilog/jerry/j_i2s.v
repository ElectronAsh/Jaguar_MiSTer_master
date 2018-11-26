/* verilator lint_off LITENDIAN */
`include "defs.v"

module j_i2s
(
	input resetl,
	input clk,
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
	input i2s1w,
	input i2s2w,
	input i2s3w,
	input i2s4w,
	input i2s1r,
	input i2s2r,
	input i2s3r,
	input i2rxd,
	input sckin,
	input wsin,
	output i2txd,
	output sckout,
	output wsout,
	output i2int,
	output i2sen,
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
	output [0:15] snd_l,
	output [0:15] snd_r,
	output snd_l_en,
	output snd_r_en,
	input sys_clk // Generated
);
wire [0:7] t;
wire [0:4] b;
wire [0:3] bc;
wire t_0;
wire t_1;
wire t_2;
wire t_3;
wire t_4;
wire t_5;
wire t_6;
wire t_7;
wire b_0;
wire b_1;
wire b_2;
wire b_3;
wire b_4;
wire bc_0;
wire bc_1;
wire bc_2;
wire bc_3;
wire p_0;
wire p_1;
wire p_2;
wire p_3;
wire p_4;
wire p_5;
wire p_6;
wire p_7;
wire tco_0;
wire vcc;
wire tld;
wire tco_1;
wire tco_2;
wire tco_3;
wire tco_4;
wire tco_5;
wire tco_6;
wire tco_7;
wire tldl;
wire sckol;
wire bresl;
wire ben;
wire bco_0;
wire bco_1;
wire bco_2;
wire bco_3;
wire bco_4;
wire i2s3wl;
wire wsod0;
wire bl_4;
wire wsen;
wire wsod1;
wire notbco_3;
wire wsod;
wire scks;
wire sck;
wire sckl;
wire wss;
wire ws;
wire wsl;
wire ws_0;
wire wsl_0;
wire ws_1;
wire wsl_1;
wire wsp0;
wire rising;
wire wsp1;
wire falling;
wire wsp2;
wire msb;
wire everyword;
wire wsp;
wire bci_0;
wire bcco_0;
wire bcen;
wire bcresl;
wire bci_1;
wire bci_2;
wire bci_3;
wire bcco_1;
wire bcco_2;
wire bcco_3;
wire bcl_0;
wire bcl_1;
wire bcl_2;
wire bcl_3;
wire bcres0;
wire bcres1;
wire mode16;
wire bcres2;
wire lsb;
wire mode32;
wire ov;
wire ovd0;
wire ovd1;
wire ovd;
wire ovl;
wire leftd0;
wire leftd1;
wire left;
wire notlsb;
wire leftd2;
wire right;
wire leftd;
wire ll;
wire rr;
wire bit_14;
wire bit_13;
wire bit_12;
wire bit_11;
wire bit_10;
wire bit_9;
wire bit_8;
wire bit_7;
wire bit_6;
wire bit_5;
wire bit_4;
wire bit_3;
wire bit_2;
wire bit_1;
wire bit_0;
wire msbl;
wire msbd;
wire msbi;
wire sd_15;
wire sd_0;
wire sd_1;
wire sd_2;
wire sd_3;
wire sd_4;
wire sd_5;
wire sd_6;
wire sd_7;
wire sd_8;
wire sd_9;
wire sd_10;
wire sd_11;
wire sd_12;
wire sd_13;
wire sd_14;
wire lrd_0;
wire lrd_1;
wire lrd_2;
wire lrd_3;
wire lrd_4;
wire lrd_5;
wire lrd_6;
wire lrd_7;
wire lrd_8;
wire lrd_9;
wire lrd_10;
wire lrd_11;
wire lrd_12;
wire lrd_13;
wire lrd_14;
wire lrd_15;
wire trrd;
wire rrd_0;
wire rrd_1;
wire rrd_2;
wire rrd_3;
wire rrd_4;
wire rrd_5;
wire rrd_6;
wire rrd_7;
wire rrd_8;
wire rrd_9;
wire rrd_10;
wire rrd_11;
wire rrd_12;
wire rrd_13;
wire rrd_14;
wire rrd_15;
wire trld;
wire gnd;
wire dpl_0;
wire dpl_1;
wire dpl_2;
wire dpl_3;
wire dpl_4;
wire dpl_5;
wire dpl_6;
wire dpl_7;
wire dpl_8;
wire dpl_9;
wire dpl_10;
wire dpl_11;
wire dpl_12;
wire dpl_13;
wire dpl_14;
wire dpl_15;
wire dpr_0;
wire dpr_1;
wire dpr_2;
wire dpr_3;
wire dpr_4;
wire dpr_5;
wire dpr_6;
wire dpr_7;
wire dpr_8;
wire dpr_9;
wire dpr_10;
wire dpr_11;
wire dpr_12;
wire dpr_13;
wire dpr_14;
wire dpr_15;
wire dp_0;
wire dp_1;
wire dp_2;
wire dp_3;
wire dp_4;
wire dp_5;
wire dp_6;
wire dp_7;
wire dp_8;
wire dp_9;
wire dp_10;
wire dp_11;
wire dp_12;
wire dp_13;
wire dp_14;
wire dp_15;
wire ds_0;
wire ds_1;
wire ds_2;
wire ds_3;
wire ds_4;
wire ds_5;
wire ds_6;
wire ds_7;
wire ds_8;
wire ds_9;
wire ds_10;
wire ds_11;
wire ds_12;
wire ds_13;
wire ds_14;
wire ds_15;
wire qs_0;
wire qs_1;
wire qs_2;
wire qs_3;
wire qs_4;
wire qs_5;
wire qs_6;
wire qs_7;
wire qs_8;
wire qs_9;
wire qs_10;
wire qs_11;
wire qs_12;
wire qs_13;
wire qs_14;
wire qs_15;
wire ts_pe_151_a0_out;
wire ts_pe_151_a0_oe;
wire ts_pe_151_a0_in;
wire ts_pe_151_a1_out;
wire ts_pe_151_a1_oe;
wire ts_pe_151_a1_in;
wire ts_pe_151_a2_out;
wire ts_pe_151_a2_oe;
wire ts_pe_151_a2_in;
wire ts_pe_152_a0_out;
wire ts_pe_152_a0_oe;
wire ts_pe_152_a0_in;
wire ts_pe_152_a1_out;
wire ts_pe_152_a1_oe;
wire ts_pe_152_a1_in;
wire ts_pe_152_a2_out;
wire ts_pe_152_a2_oe;
wire ts_pe_152_a2_in;
wire ts_pe_153_a0_out;
wire ts_pe_153_a0_oe;
wire ts_pe_153_a0_in;
wire ts_pe_153_a1_out;
wire ts_pe_153_a1_oe;
wire ts_pe_153_a1_in;
wire ts_pe_153_a2_out;
wire ts_pe_153_a2_oe;
wire ts_pe_153_a2_in;
wire ts_pe_154_a0_out;
wire ts_pe_154_a0_oe;
wire ts_pe_154_a0_in;
wire ts_pe_154_a1_out;
wire ts_pe_154_a1_oe;
wire ts_pe_154_a1_in;
wire ts_pe_154_a2_out;
wire ts_pe_154_a2_oe;
wire ts_pe_154_a2_in;
wire ts_pe_155_a0_out;
wire ts_pe_155_a0_oe;
wire ts_pe_155_a0_in;
wire ts_pe_155_a1_out;
wire ts_pe_155_a1_oe;
wire ts_pe_155_a1_in;
wire ts_pe_155_a2_out;
wire ts_pe_155_a2_oe;
wire ts_pe_155_a2_in;
wire ts_pe_156_a0_out;
wire ts_pe_156_a0_oe;
wire ts_pe_156_a0_in;
wire ts_pe_156_a1_out;
wire ts_pe_156_a1_oe;
wire ts_pe_156_a1_in;
wire ts_pe_156_a2_out;
wire ts_pe_156_a2_oe;
wire ts_pe_156_a2_in;
wire ts_pe_157_a0_out;
wire ts_pe_157_a0_oe;
wire ts_pe_157_a0_in;
wire ts_pe_157_a1_out;
wire ts_pe_157_a1_oe;
wire ts_pe_157_a1_in;
wire ts_pe_157_a2_out;
wire ts_pe_157_a2_oe;
wire ts_pe_157_a2_in;
wire ts_pe_158_a0_out;
wire ts_pe_158_a0_oe;
wire ts_pe_158_a0_in;
wire ts_pe_158_a1_out;
wire ts_pe_158_a1_oe;
wire ts_pe_158_a1_in;
wire ts_pe_158_a2_out;
wire ts_pe_158_a2_oe;
wire ts_pe_158_a2_in;
wire ts_pe_159_a0_out;
wire ts_pe_159_a0_oe;
wire ts_pe_159_a0_in;
wire ts_pe_159_a1_out;
wire ts_pe_159_a1_oe;
wire ts_pe_159_a1_in;
wire ts_pe_159_a2_out;
wire ts_pe_159_a2_oe;
wire ts_pe_159_a2_in;
wire ts_pe_160_a0_out;
wire ts_pe_160_a0_oe;
wire ts_pe_160_a0_in;
wire ts_pe_160_a1_out;
wire ts_pe_160_a1_oe;
wire ts_pe_160_a1_in;
wire ts_pe_160_a2_out;
wire ts_pe_160_a2_oe;
wire ts_pe_160_a2_in;
wire ts_pe_161_a0_out;
wire ts_pe_161_a0_oe;
wire ts_pe_161_a0_in;
wire ts_pe_161_a1_out;
wire ts_pe_161_a1_oe;
wire ts_pe_161_a1_in;
wire ts_pe_161_a2_out;
wire ts_pe_161_a2_oe;
wire ts_pe_161_a2_in;
wire ts_pe_162_a0_out;
wire ts_pe_162_a0_oe;
wire ts_pe_162_a0_in;
wire ts_pe_162_a1_out;
wire ts_pe_162_a1_oe;
wire ts_pe_162_a1_in;
wire ts_pe_162_a2_out;
wire ts_pe_162_a2_oe;
wire ts_pe_162_a2_in;
wire ts_pe_163_a0_out;
wire ts_pe_163_a0_oe;
wire ts_pe_163_a0_in;
wire ts_pe_163_a1_out;
wire ts_pe_163_a1_oe;
wire ts_pe_163_a1_in;
wire ts_pe_163_a2_out;
wire ts_pe_163_a2_oe;
wire ts_pe_163_a2_in;
wire ts_pe_164_a0_out;
wire ts_pe_164_a0_oe;
wire ts_pe_164_a0_in;
wire ts_pe_164_a1_out;
wire ts_pe_164_a1_oe;
wire ts_pe_164_a1_in;
wire ts_pe_164_a2_out;
wire ts_pe_164_a2_oe;
wire ts_pe_164_a2_in;
wire ts_pe_165_a0_out;
wire ts_pe_165_a0_oe;
wire ts_pe_165_a0_in;
wire ts_pe_165_a1_out;
wire ts_pe_165_a1_oe;
wire ts_pe_165_a1_in;
wire ts_pe_165_a2_out;
wire ts_pe_165_a2_oe;
wire ts_pe_165_a2_in;
wire ts_pe_166_a0_out;
wire ts_pe_166_a0_oe;
wire ts_pe_166_a0_in;
wire ts_pe_166_a1_out;
wire ts_pe_166_a1_oe;
wire ts_pe_166_a1_in;
wire ts_pe_166_a2_out;
wire ts_pe_166_a2_oe;
wire ts_pe_166_a2_in;

// Output buffers
wire sckout_obuf;
wire wsout_obuf;
wire i2sen_obuf;


// Output buffers
assign sckout = sckout_obuf;
assign wsout = wsout_obuf;
assign i2sen = i2sen_obuf;


// I2S.NET (24) - t : join
assign t[0] = t_0;
assign t[1] = t_1;
assign t[2] = t_2;
assign t[3] = t_3;
assign t[4] = t_4;
assign t[5] = t_5;
assign t[6] = t_6;
assign t[7] = t_7;

// I2S.NET (25) - b : join
assign b[0] = b_0;
assign b[1] = b_1;
assign b[2] = b_2;
assign b[3] = b_3;
assign b[4] = b_4;

// I2S.NET (26) - bc : join
assign bc[0] = bc_0;
assign bc[1] = bc_1;
assign bc[2] = bc_2;
assign bc[3] = bc_3;

// I2S.NET (27) - pu : dummy

// I2S.NET (28) - bu : dummy

// I2S.NET (29) - bcu : dummy

// I2S.NET (50) - p[0-7] : stlatchc
j_stlatchc p_from_0_to_7_inst_0
(
	.d1 /* OUT */ (p_0),
	.d /* IN */ (din_0),
	.clk /* IN */ (clk),
	.en /* IN */ (i2s3w),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_stlatchc p_from_0_to_7_inst_1
(
	.d1 /* OUT */ (p_1),
	.d /* IN */ (din_1),
	.clk /* IN */ (clk),
	.en /* IN */ (i2s3w),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_stlatchc p_from_0_to_7_inst_2
(
	.d1 /* OUT */ (p_2),
	.d /* IN */ (din_2),
	.clk /* IN */ (clk),
	.en /* IN */ (i2s3w),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_stlatchc p_from_0_to_7_inst_3
(
	.d1 /* OUT */ (p_3),
	.d /* IN */ (din_3),
	.clk /* IN */ (clk),
	.en /* IN */ (i2s3w),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_stlatchc p_from_0_to_7_inst_4
(
	.d1 /* OUT */ (p_4),
	.d /* IN */ (din_4),
	.clk /* IN */ (clk),
	.en /* IN */ (i2s3w),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_stlatchc p_from_0_to_7_inst_5
(
	.d1 /* OUT */ (p_5),
	.d /* IN */ (din_5),
	.clk /* IN */ (clk),
	.en /* IN */ (i2s3w),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_stlatchc p_from_0_to_7_inst_6
(
	.d1 /* OUT */ (p_6),
	.d /* IN */ (din_6),
	.clk /* IN */ (clk),
	.en /* IN */ (i2s3w),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_stlatchc p_from_0_to_7_inst_7
(
	.d1 /* OUT */ (p_7),
	.d /* IN */ (din_7),
	.clk /* IN */ (clk),
	.en /* IN */ (i2s3w),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// I2S.NET (54) - t[0] : dncnt
j_dncnt t_index_0_inst
(
	.q /* OUT */ (t_0),
	.co /* OUT */ (tco_0),
	.d /* IN */ (p_0),
	.clk /* IN */ (clk),
	.ci /* IN */ (vcc),
	.ld /* IN */ (tld),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// I2S.NET (55) - t[1-7] : dncnt
j_dncnt t_from_1_to_7_inst_0
(
	.q /* OUT */ (t_1),
	.co /* OUT */ (tco_1),
	.d /* IN */ (p_1),
	.clk /* IN */ (clk),
	.ci /* IN */ (tco_0),
	.ld /* IN */ (tld),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_dncnt t_from_1_to_7_inst_1
(
	.q /* OUT */ (t_2),
	.co /* OUT */ (tco_2),
	.d /* IN */ (p_2),
	.clk /* IN */ (clk),
	.ci /* IN */ (tco_1),
	.ld /* IN */ (tld),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_dncnt t_from_1_to_7_inst_2
(
	.q /* OUT */ (t_3),
	.co /* OUT */ (tco_3),
	.d /* IN */ (p_3),
	.clk /* IN */ (clk),
	.ci /* IN */ (tco_2),
	.ld /* IN */ (tld),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_dncnt t_from_1_to_7_inst_3
(
	.q /* OUT */ (t_4),
	.co /* OUT */ (tco_4),
	.d /* IN */ (p_4),
	.clk /* IN */ (clk),
	.ci /* IN */ (tco_3),
	.ld /* IN */ (tld),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_dncnt t_from_1_to_7_inst_4
(
	.q /* OUT */ (t_5),
	.co /* OUT */ (tco_5),
	.d /* IN */ (p_5),
	.clk /* IN */ (clk),
	.ci /* IN */ (tco_4),
	.ld /* IN */ (tld),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_dncnt t_from_1_to_7_inst_5
(
	.q /* OUT */ (t_6),
	.co /* OUT */ (tco_6),
	.d /* IN */ (p_6),
	.clk /* IN */ (clk),
	.ci /* IN */ (tco_5),
	.ld /* IN */ (tld),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
j_dncnt t_from_1_to_7_inst_6
(
	.q /* OUT */ (t_7),
	.co /* OUT */ (tco_7),
	.d /* IN */ (p_7),
	.clk /* IN */ (clk),
	.ci /* IN */ (tco_6),
	.ld /* IN */ (tld),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// I2S.NET (56) - tldl : nr2
assign tldl = ~(tco_7 | i2s3w);

// I2S.NET (57) - tld : ivm
assign tld = ~tldl;

// I2S.NET (58) - tu[0-7] : dummy

// I2S.NET (62) - sckout : slatchc
j_slatchc sckout_inst
(
	.q /* OUT */ (sckout_obuf),
	.d /* IN */ (sckol),
	.clk /* IN */ (clk),
	.en /* IN */ (tco_7),
	.resl /* IN */ (bresl),
	.sys_clk(sys_clk) // Generated
);

// I2S.NET (63) - sckol : iv
assign sckol = ~sckout_obuf;

// I2S.NET (64) - ben : an2
assign ben = sckout_obuf & tco_7;

// I2S.NET (68) - b[0] : upcnt1
j_upcnt1 b_index_0_inst
(
	.q /* OUT */ (b_0),
	.co /* OUT */ (bco_0),
	.clk /* IN */ (clk),
	.ci /* IN */ (ben),
	.resl /* IN */ (bresl),
	.sys_clk(sys_clk) // Generated
);

// I2S.NET (69) - b[1-4] : upcnt1
j_upcnt1 b_from_1_to_4_inst_0
(
	.q /* OUT */ (b_1),
	.co /* OUT */ (bco_1),
	.clk /* IN */ (clk),
	.ci /* IN */ (bco_0),
	.resl /* IN */ (bresl),
	.sys_clk(sys_clk) // Generated
);
j_upcnt1 b_from_1_to_4_inst_1
(
	.q /* OUT */ (b_2),
	.co /* OUT */ (bco_2),
	.clk /* IN */ (clk),
	.ci /* IN */ (bco_1),
	.resl /* IN */ (bresl),
	.sys_clk(sys_clk) // Generated
);
j_upcnt1 b_from_1_to_4_inst_2
(
	.q /* OUT */ (b_3),
	.co /* OUT */ (bco_3),
	.clk /* IN */ (clk),
	.ci /* IN */ (bco_2),
	.resl /* IN */ (bresl),
	.sys_clk(sys_clk) // Generated
);
j_upcnt1 b_from_1_to_4_inst_3
(
	.q /* OUT */ (b_4),
	.co /* OUT */ (bco_4),
	.clk /* IN */ (clk),
	.ci /* IN */ (bco_3),
	.resl /* IN */ (bresl),
	.sys_clk(sys_clk) // Generated
);

// I2S.NET (70) - bu[0-3] : dummy

// I2S.NET (71) - bco[4] : dummy

// I2S.NET (72) - bresl : an2h
assign bresl = resetl & i2s3wl;

// I2S.NET (73) - i2s3wl : iv
assign i2s3wl = ~i2s3w;

// I2S.NET (77) - wsod0 : nd3
assign wsod0 = ~(bco_3 & bl_4 & wsen);

// I2S.NET (78) - wsod1 : nd2
assign wsod1 = ~(wsout_obuf & notbco_3);

// I2S.NET (79) - wsod : nd2
assign wsod = ~(wsod0 & wsod1);

// I2S.NET (80) - wsi : fd2q
fd2q wsi_inst
(
	.q /* OUT */ (wsout_obuf),
	.d /* IN */ (wsod),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// I2S.NET (81) - notbco[3] : iv
assign notbco_3 = ~bco_3;

// I2S.NET (82) - bl[4] : iv
assign bl_4 = ~b_4;

// I2S.NET (87) - scks : mx2p
assign scks = (i2sen_obuf) ? sckout_obuf : sckin;

// I2S.NET (88) - sck : nivu
assign sck = scks;

// I2S.NET (89) - sckl : ivh
assign sckl = ~scks;

// I2S.NET (108) - wss : mx2p
assign wss = (i2sen_obuf) ? wsout_obuf : wsin;

// I2S.NET (109) - ws : nivh
assign ws = wss;

// I2S.NET (110) - wsl : iv
assign wsl = ~wss;

// I2S.NET (111) - ws[0] : fd2
fd2 ws_index_0_inst
(
	.q /* OUT */ (ws_0),
	.qn /* OUT */ (wsl_0),
	.d /* IN */ (ws),
	.cp /* IN */ (sck),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// I2S.NET (112) - ws[1] : fd2
fd2 ws_index_1_inst
(
	.q /* OUT */ (ws_1),
	.qn /* OUT */ (wsl_1),
	.d /* IN */ (ws_0),
	.cp /* IN */ (sck),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// I2S.NET (113) - wsp0 : nd3
assign wsp0 = ~(ws_0 & wsl_1 & rising);

// I2S.NET (114) - wsp1 : nd3
assign wsp1 = ~(wsl_0 & ws_1 & falling);

// I2S.NET (115) - wsp2 : nd2
assign wsp2 = ~(msb & everyword);

// I2S.NET (116) - wsp : nd3
assign wsp = ~(wsp0 & wsp1 & wsp2);

// I2S.NET (117) - i2sint : fd1q
fd1q i2sint_inst
(
	.q /* OUT */ (i2int),
	.d /* IN */ (wsp),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// I2S.NET (118) - wsu[1] : dummy

// I2S.NET (122) - bci[0] : upcnt1s
j_upcnt1s bci_index_0_inst
(
	.q /* OUT */ (bci_0),
	.co /* OUT */ (bcco_0),
	.clk /* IN */ (sck),
	.ci /* IN */ (bcen),
	.resl /* IN */ (bcresl),
	.sys_clk(sys_clk) // Generated
);

// I2S.NET (123) - bci[1-3] : upcnt1s
j_upcnt1s bci_from_1_to_3_inst_0
(
	.q /* OUT */ (bci_1),
	.co /* OUT */ (bcco_1),
	.clk /* IN */ (sck),
	.ci /* IN */ (bcco_0),
	.resl /* IN */ (bcresl),
	.sys_clk(sys_clk) // Generated
);
j_upcnt1s bci_from_1_to_3_inst_1
(
	.q /* OUT */ (bci_2),
	.co /* OUT */ (bcco_2),
	.clk /* IN */ (sck),
	.ci /* IN */ (bcco_1),
	.resl /* IN */ (bcresl),
	.sys_clk(sys_clk) // Generated
);
j_upcnt1s bci_from_1_to_3_inst_2
(
	.q /* OUT */ (bci_3),
	.co /* OUT */ (bcco_3),
	.clk /* IN */ (sck),
	.ci /* IN */ (bcco_2),
	.resl /* IN */ (bcresl),
	.sys_clk(sys_clk) // Generated
);

// I2S.NET (124) - bcco[3] : dummy

// I2S.NET (125) - bcl[0-3] : ivm
assign bcl_0 = ~bci_0;
assign bcl_1 = ~bci_1;
assign bcl_2 = ~bci_2;
assign bcl_3 = ~bci_3;

// I2S.NET (126) - bc[0-3] : ivm
assign bc_0 = ~bcl_0;
assign bc_1 = ~bcl_1;
assign bc_2 = ~bcl_2;
assign bc_3 = ~bcl_3;

// I2S.NET (128) - bcres0 : nd2
assign bcres0 = ~(wsl_0 & ws);

// I2S.NET (129) - bcres1 : nd3
assign bcres1 = ~(ws_0 & wsl & mode16);

// I2S.NET (130) - bcres2 : nd2
assign bcres2 = ~(lsb & mode32);

// I2S.NET (131) - bcresl : an4p
assign bcresl = bcres0 & bcres1 & bcres2 & resetl;

// I2S.NET (133) - bcen : nd2
assign bcen = ~(mode16 & ov);

// I2S.NET (137) - ovd0 : nd2
assign ovd0 = ~(ov & bcresl);

// I2S.NET (138) - ovd1 : nd3
assign ovd1 = ~(lsb & mode16 & bcresl);

// I2S.NET (139) - ovd : nd2
assign ovd = ~(ovd0 & ovd1);

// I2S.NET (140) - ov : fd1q
fd1q ov_inst
(
	.q /* OUT */ (ov),
	.d /* IN */ (ovd),
	.cp /* IN */ (sck),
	.sys_clk(sys_clk) // Generated
);

// I2S.NET (141) - ovl : ivh
assign ovl = ~ov;

// I2S.NET (146) - leftd0 : nd2
assign leftd0 = ~(wsl_0 & ws);

// I2S.NET (147) - leftd1 : nd2
assign leftd1 = ~(left & notlsb);

// I2S.NET (148) - leftd2 : nd2
assign leftd2 = ~(right & lsb);

// I2S.NET (149) - leftd : nd3
assign leftd = ~(leftd0 & leftd1 & leftd2);

// I2S.NET (150) - left : fd1q
fd1q left_inst
(
	.q /* OUT */ (left),
	.d /* IN */ (leftd),
	.cp /* IN */ (sck),
	.sys_clk(sys_clk) // Generated
);

// I2S.NET (151) - right : iv
assign right = ~left;

// I2S.NET (153) - ll : mx2
assign ll = (mode32) ? left : wsl_0;

// I2S.NET (154) - rr : ivh
assign rr = ~ll;

// I2S.NET (158) - bit[14] : an6
assign bit_14 = ovl & bcl_3 & bcl_2 & bcl_1 & bc_0 & vcc;

// I2S.NET (159) - bit[13] : an6
assign bit_13 = ovl & bcl_3 & bcl_2 & bc_1 & bcl_0 & vcc;

// I2S.NET (160) - bit[12] : an6
assign bit_12 = ovl & bcl_3 & bcl_2 & bc_1 & bc_0 & vcc;

// I2S.NET (161) - bit[11] : an6
assign bit_11 = ovl & bcl_3 & bc_2 & bcl_1 & bcl_0 & vcc;

// I2S.NET (162) - bit[10] : an6
assign bit_10 = ovl & bcl_3 & bc_2 & bcl_1 & bc_0 & vcc;

// I2S.NET (163) - bit[9] : an6
assign bit_9 = ovl & bcl_3 & bc_2 & bc_1 & bcl_0 & vcc;

// I2S.NET (164) - bit[8] : an6
assign bit_8 = ovl & bcl_3 & bc_2 & bc_1 & bc_0 & vcc;

// I2S.NET (165) - bit[7] : an6
assign bit_7 = ovl & bc_3 & bcl_2 & bcl_1 & bcl_0 & vcc;

// I2S.NET (166) - bit[6] : an6
assign bit_6 = ovl & bc_3 & bcl_2 & bcl_1 & bc_0 & vcc;

// I2S.NET (167) - bit[5] : an6
assign bit_5 = ovl & bc_3 & bcl_2 & bc_1 & bcl_0 & vcc;

// I2S.NET (168) - bit[4] : an6
assign bit_4 = ovl & bc_3 & bcl_2 & bc_1 & bc_0 & vcc;

// I2S.NET (169) - bit[3] : an6
assign bit_3 = ovl & bc_3 & bc_2 & bcl_1 & bcl_0 & vcc;

// I2S.NET (170) - bit[2] : an6
assign bit_2 = ovl & bc_3 & bc_2 & bcl_1 & bc_0 & vcc;

// I2S.NET (171) - bit[1] : an6
assign bit_1 = ovl & bc_3 & bc_2 & bc_1 & bcl_0 & vcc;

// I2S.NET (172) - bit[0] : an6
assign bit_0 = ovl & bc_3 & bc_2 & bc_1 & bc_0 & vcc;

// I2S.NET (176) - msbl : ivh
assign msbl = ~msb;

// I2S.NET (177) - lsb : niv
assign lsb = bit_0;

// I2S.NET (178) - notlsb : iv
assign notlsb = ~lsb;

// I2S.NET (182) - msbd : nr2
assign msbd = ~(ovd | bcresl);

// I2S.NET (183) - msbi : fd1q
fd1q msbi_inst
(
	.q /* OUT */ (msbi),
	.d /* IN */ (msbd),
	.cp /* IN */ (sck),
	.sys_clk(sys_clk) // Generated
);

// I2S.NET (184) - msb : nivh
assign msb = msbi;

// I2S.NET (188) - sd[15] : slatch
j_slatch sd_index_15_inst
(
	.q /* OUT */ (sd_15),
	.d /* IN */ (i2rxd),
	.clk /* IN */ (sck),
	.en /* IN */ (msb),
	.sys_clk(sys_clk) // Generated
);

// I2S.NET (189) - sd[0-14] : slatchr
j_slatchr sd_from_0_to_14_inst_0
(
	.q /* OUT */ (sd_0),
	.d /* IN */ (i2rxd),
	.clk /* IN */ (sck),
	.en /* IN */ (bit_0),
	.resl /* IN */ (msbl),
	.sys_clk(sys_clk) // Generated
);
j_slatchr sd_from_0_to_14_inst_1
(
	.q /* OUT */ (sd_1),
	.d /* IN */ (i2rxd),
	.clk /* IN */ (sck),
	.en /* IN */ (bit_1),
	.resl /* IN */ (msbl),
	.sys_clk(sys_clk) // Generated
);
j_slatchr sd_from_0_to_14_inst_2
(
	.q /* OUT */ (sd_2),
	.d /* IN */ (i2rxd),
	.clk /* IN */ (sck),
	.en /* IN */ (bit_2),
	.resl /* IN */ (msbl),
	.sys_clk(sys_clk) // Generated
);
j_slatchr sd_from_0_to_14_inst_3
(
	.q /* OUT */ (sd_3),
	.d /* IN */ (i2rxd),
	.clk /* IN */ (sck),
	.en /* IN */ (bit_3),
	.resl /* IN */ (msbl),
	.sys_clk(sys_clk) // Generated
);
j_slatchr sd_from_0_to_14_inst_4
(
	.q /* OUT */ (sd_4),
	.d /* IN */ (i2rxd),
	.clk /* IN */ (sck),
	.en /* IN */ (bit_4),
	.resl /* IN */ (msbl),
	.sys_clk(sys_clk) // Generated
);
j_slatchr sd_from_0_to_14_inst_5
(
	.q /* OUT */ (sd_5),
	.d /* IN */ (i2rxd),
	.clk /* IN */ (sck),
	.en /* IN */ (bit_5),
	.resl /* IN */ (msbl),
	.sys_clk(sys_clk) // Generated
);
j_slatchr sd_from_0_to_14_inst_6
(
	.q /* OUT */ (sd_6),
	.d /* IN */ (i2rxd),
	.clk /* IN */ (sck),
	.en /* IN */ (bit_6),
	.resl /* IN */ (msbl),
	.sys_clk(sys_clk) // Generated
);
j_slatchr sd_from_0_to_14_inst_7
(
	.q /* OUT */ (sd_7),
	.d /* IN */ (i2rxd),
	.clk /* IN */ (sck),
	.en /* IN */ (bit_7),
	.resl /* IN */ (msbl),
	.sys_clk(sys_clk) // Generated
);
j_slatchr sd_from_0_to_14_inst_8
(
	.q /* OUT */ (sd_8),
	.d /* IN */ (i2rxd),
	.clk /* IN */ (sck),
	.en /* IN */ (bit_8),
	.resl /* IN */ (msbl),
	.sys_clk(sys_clk) // Generated
);
j_slatchr sd_from_0_to_14_inst_9
(
	.q /* OUT */ (sd_9),
	.d /* IN */ (i2rxd),
	.clk /* IN */ (sck),
	.en /* IN */ (bit_9),
	.resl /* IN */ (msbl),
	.sys_clk(sys_clk) // Generated
);
j_slatchr sd_from_0_to_14_inst_10
(
	.q /* OUT */ (sd_10),
	.d /* IN */ (i2rxd),
	.clk /* IN */ (sck),
	.en /* IN */ (bit_10),
	.resl /* IN */ (msbl),
	.sys_clk(sys_clk) // Generated
);
j_slatchr sd_from_0_to_14_inst_11
(
	.q /* OUT */ (sd_11),
	.d /* IN */ (i2rxd),
	.clk /* IN */ (sck),
	.en /* IN */ (bit_11),
	.resl /* IN */ (msbl),
	.sys_clk(sys_clk) // Generated
);
j_slatchr sd_from_0_to_14_inst_12
(
	.q /* OUT */ (sd_12),
	.d /* IN */ (i2rxd),
	.clk /* IN */ (sck),
	.en /* IN */ (bit_12),
	.resl /* IN */ (msbl),
	.sys_clk(sys_clk) // Generated
);
j_slatchr sd_from_0_to_14_inst_13
(
	.q /* OUT */ (sd_13),
	.d /* IN */ (i2rxd),
	.clk /* IN */ (sck),
	.en /* IN */ (bit_13),
	.resl /* IN */ (msbl),
	.sys_clk(sys_clk) // Generated
);
j_slatchr sd_from_0_to_14_inst_14
(
	.q /* OUT */ (sd_14),
	.d /* IN */ (i2rxd),
	.clk /* IN */ (sck),
	.en /* IN */ (bit_14),
	.resl /* IN */ (msbl),
	.sys_clk(sys_clk) // Generated
);

// I2S.NET (193) - lrd[0-15] : slatch
j_slatch lrd_from_0_to_15_inst_0
(
	.q /* OUT */ (lrd_0),
	.d /* IN */ (sd_0),
	.clk /* IN */ (sck),
	.en /* IN */ (trrd),
	.sys_clk(sys_clk) // Generated
);
j_slatch lrd_from_0_to_15_inst_1
(
	.q /* OUT */ (lrd_1),
	.d /* IN */ (sd_1),
	.clk /* IN */ (sck),
	.en /* IN */ (trrd),
	.sys_clk(sys_clk) // Generated
);
j_slatch lrd_from_0_to_15_inst_2
(
	.q /* OUT */ (lrd_2),
	.d /* IN */ (sd_2),
	.clk /* IN */ (sck),
	.en /* IN */ (trrd),
	.sys_clk(sys_clk) // Generated
);
j_slatch lrd_from_0_to_15_inst_3
(
	.q /* OUT */ (lrd_3),
	.d /* IN */ (sd_3),
	.clk /* IN */ (sck),
	.en /* IN */ (trrd),
	.sys_clk(sys_clk) // Generated
);
j_slatch lrd_from_0_to_15_inst_4
(
	.q /* OUT */ (lrd_4),
	.d /* IN */ (sd_4),
	.clk /* IN */ (sck),
	.en /* IN */ (trrd),
	.sys_clk(sys_clk) // Generated
);
j_slatch lrd_from_0_to_15_inst_5
(
	.q /* OUT */ (lrd_5),
	.d /* IN */ (sd_5),
	.clk /* IN */ (sck),
	.en /* IN */ (trrd),
	.sys_clk(sys_clk) // Generated
);
j_slatch lrd_from_0_to_15_inst_6
(
	.q /* OUT */ (lrd_6),
	.d /* IN */ (sd_6),
	.clk /* IN */ (sck),
	.en /* IN */ (trrd),
	.sys_clk(sys_clk) // Generated
);
j_slatch lrd_from_0_to_15_inst_7
(
	.q /* OUT */ (lrd_7),
	.d /* IN */ (sd_7),
	.clk /* IN */ (sck),
	.en /* IN */ (trrd),
	.sys_clk(sys_clk) // Generated
);
j_slatch lrd_from_0_to_15_inst_8
(
	.q /* OUT */ (lrd_8),
	.d /* IN */ (sd_8),
	.clk /* IN */ (sck),
	.en /* IN */ (trrd),
	.sys_clk(sys_clk) // Generated
);
j_slatch lrd_from_0_to_15_inst_9
(
	.q /* OUT */ (lrd_9),
	.d /* IN */ (sd_9),
	.clk /* IN */ (sck),
	.en /* IN */ (trrd),
	.sys_clk(sys_clk) // Generated
);
j_slatch lrd_from_0_to_15_inst_10
(
	.q /* OUT */ (lrd_10),
	.d /* IN */ (sd_10),
	.clk /* IN */ (sck),
	.en /* IN */ (trrd),
	.sys_clk(sys_clk) // Generated
);
j_slatch lrd_from_0_to_15_inst_11
(
	.q /* OUT */ (lrd_11),
	.d /* IN */ (sd_11),
	.clk /* IN */ (sck),
	.en /* IN */ (trrd),
	.sys_clk(sys_clk) // Generated
);
j_slatch lrd_from_0_to_15_inst_12
(
	.q /* OUT */ (lrd_12),
	.d /* IN */ (sd_12),
	.clk /* IN */ (sck),
	.en /* IN */ (trrd),
	.sys_clk(sys_clk) // Generated
);
j_slatch lrd_from_0_to_15_inst_13
(
	.q /* OUT */ (lrd_13),
	.d /* IN */ (sd_13),
	.clk /* IN */ (sck),
	.en /* IN */ (trrd),
	.sys_clk(sys_clk) // Generated
);
j_slatch lrd_from_0_to_15_inst_14
(
	.q /* OUT */ (lrd_14),
	.d /* IN */ (sd_14),
	.clk /* IN */ (sck),
	.en /* IN */ (trrd),
	.sys_clk(sys_clk) // Generated
);
j_slatch lrd_from_0_to_15_inst_15
(
	.q /* OUT */ (lrd_15),
	.d /* IN */ (sd_15),
	.clk /* IN */ (sck),
	.en /* IN */ (trrd),
	.sys_clk(sys_clk) // Generated
);

// I2S.NET (194) - rrd[0-15] : slatch
j_slatch rrd_from_0_to_15_inst_0
(
	.q /* OUT */ (rrd_0),
	.d /* IN */ (sd_0),
	.clk /* IN */ (sck),
	.en /* IN */ (trld),
	.sys_clk(sys_clk) // Generated
);
j_slatch rrd_from_0_to_15_inst_1
(
	.q /* OUT */ (rrd_1),
	.d /* IN */ (sd_1),
	.clk /* IN */ (sck),
	.en /* IN */ (trld),
	.sys_clk(sys_clk) // Generated
);
j_slatch rrd_from_0_to_15_inst_2
(
	.q /* OUT */ (rrd_2),
	.d /* IN */ (sd_2),
	.clk /* IN */ (sck),
	.en /* IN */ (trld),
	.sys_clk(sys_clk) // Generated
);
j_slatch rrd_from_0_to_15_inst_3
(
	.q /* OUT */ (rrd_3),
	.d /* IN */ (sd_3),
	.clk /* IN */ (sck),
	.en /* IN */ (trld),
	.sys_clk(sys_clk) // Generated
);
j_slatch rrd_from_0_to_15_inst_4
(
	.q /* OUT */ (rrd_4),
	.d /* IN */ (sd_4),
	.clk /* IN */ (sck),
	.en /* IN */ (trld),
	.sys_clk(sys_clk) // Generated
);
j_slatch rrd_from_0_to_15_inst_5
(
	.q /* OUT */ (rrd_5),
	.d /* IN */ (sd_5),
	.clk /* IN */ (sck),
	.en /* IN */ (trld),
	.sys_clk(sys_clk) // Generated
);
j_slatch rrd_from_0_to_15_inst_6
(
	.q /* OUT */ (rrd_6),
	.d /* IN */ (sd_6),
	.clk /* IN */ (sck),
	.en /* IN */ (trld),
	.sys_clk(sys_clk) // Generated
);
j_slatch rrd_from_0_to_15_inst_7
(
	.q /* OUT */ (rrd_7),
	.d /* IN */ (sd_7),
	.clk /* IN */ (sck),
	.en /* IN */ (trld),
	.sys_clk(sys_clk) // Generated
);
j_slatch rrd_from_0_to_15_inst_8
(
	.q /* OUT */ (rrd_8),
	.d /* IN */ (sd_8),
	.clk /* IN */ (sck),
	.en /* IN */ (trld),
	.sys_clk(sys_clk) // Generated
);
j_slatch rrd_from_0_to_15_inst_9
(
	.q /* OUT */ (rrd_9),
	.d /* IN */ (sd_9),
	.clk /* IN */ (sck),
	.en /* IN */ (trld),
	.sys_clk(sys_clk) // Generated
);
j_slatch rrd_from_0_to_15_inst_10
(
	.q /* OUT */ (rrd_10),
	.d /* IN */ (sd_10),
	.clk /* IN */ (sck),
	.en /* IN */ (trld),
	.sys_clk(sys_clk) // Generated
);
j_slatch rrd_from_0_to_15_inst_11
(
	.q /* OUT */ (rrd_11),
	.d /* IN */ (sd_11),
	.clk /* IN */ (sck),
	.en /* IN */ (trld),
	.sys_clk(sys_clk) // Generated
);
j_slatch rrd_from_0_to_15_inst_12
(
	.q /* OUT */ (rrd_12),
	.d /* IN */ (sd_12),
	.clk /* IN */ (sck),
	.en /* IN */ (trld),
	.sys_clk(sys_clk) // Generated
);
j_slatch rrd_from_0_to_15_inst_13
(
	.q /* OUT */ (rrd_13),
	.d /* IN */ (sd_13),
	.clk /* IN */ (sck),
	.en /* IN */ (trld),
	.sys_clk(sys_clk) // Generated
);
j_slatch rrd_from_0_to_15_inst_14
(
	.q /* OUT */ (rrd_14),
	.d /* IN */ (sd_14),
	.clk /* IN */ (sck),
	.en /* IN */ (trld),
	.sys_clk(sys_clk) // Generated
);
j_slatch rrd_from_0_to_15_inst_15
(
	.q /* OUT */ (rrd_15),
	.d /* IN */ (sd_15),
	.clk /* IN */ (sck),
	.en /* IN */ (trld),
	.sys_clk(sys_clk) // Generated
);

// I2S.NET (195) - trrd : an2h
assign trrd = msb & ll;

// I2S.NET (196) - trld : an2h
assign trld = msb & rr;

// I2S.NET (200) - drr[0-15] : ts
assign ts_pe_151_a0_out = rrd_0;
assign ts_pe_151_a0_oe = i2s1r;
assign ts_pe_152_a0_out = rrd_1;
assign ts_pe_152_a0_oe = i2s1r;
assign ts_pe_153_a0_out = rrd_2;
assign ts_pe_153_a0_oe = i2s1r;
assign ts_pe_154_a0_out = rrd_3;
assign ts_pe_154_a0_oe = i2s1r;
assign ts_pe_155_a0_out = rrd_4;
assign ts_pe_155_a0_oe = i2s1r;
assign ts_pe_156_a0_out = rrd_5;
assign ts_pe_156_a0_oe = i2s1r;
assign ts_pe_157_a0_out = rrd_6;
assign ts_pe_157_a0_oe = i2s1r;
assign ts_pe_158_a0_out = rrd_7;
assign ts_pe_158_a0_oe = i2s1r;
assign ts_pe_159_a0_out = rrd_8;
assign ts_pe_159_a0_oe = i2s1r;
assign ts_pe_160_a0_out = rrd_9;
assign ts_pe_160_a0_oe = i2s1r;
assign ts_pe_161_a0_out = rrd_10;
assign ts_pe_161_a0_oe = i2s1r;
assign ts_pe_162_a0_out = rrd_11;
assign ts_pe_162_a0_oe = i2s1r;
assign ts_pe_163_a0_out = rrd_12;
assign ts_pe_163_a0_oe = i2s1r;
assign ts_pe_164_a0_out = rrd_13;
assign ts_pe_164_a0_oe = i2s1r;
assign ts_pe_165_a0_out = rrd_14;
assign ts_pe_165_a0_oe = i2s1r;
assign ts_pe_166_a0_out = rrd_15;
assign ts_pe_166_a0_oe = i2s1r;

// I2S.NET (201) - drl[0-15] : ts
assign ts_pe_151_a1_out = lrd_0;
assign ts_pe_151_a1_oe = i2s2r;
assign ts_pe_152_a1_out = lrd_1;
assign ts_pe_152_a1_oe = i2s2r;
assign ts_pe_153_a1_out = lrd_2;
assign ts_pe_153_a1_oe = i2s2r;
assign ts_pe_154_a1_out = lrd_3;
assign ts_pe_154_a1_oe = i2s2r;
assign ts_pe_155_a1_out = lrd_4;
assign ts_pe_155_a1_oe = i2s2r;
assign ts_pe_156_a1_out = lrd_5;
assign ts_pe_156_a1_oe = i2s2r;
assign ts_pe_157_a1_out = lrd_6;
assign ts_pe_157_a1_oe = i2s2r;
assign ts_pe_158_a1_out = lrd_7;
assign ts_pe_158_a1_oe = i2s2r;
assign ts_pe_159_a1_out = lrd_8;
assign ts_pe_159_a1_oe = i2s2r;
assign ts_pe_160_a1_out = lrd_9;
assign ts_pe_160_a1_oe = i2s2r;
assign ts_pe_161_a1_out = lrd_10;
assign ts_pe_161_a1_oe = i2s2r;
assign ts_pe_162_a1_out = lrd_11;
assign ts_pe_162_a1_oe = i2s2r;
assign ts_pe_163_a1_out = lrd_12;
assign ts_pe_163_a1_oe = i2s2r;
assign ts_pe_164_a1_out = lrd_13;
assign ts_pe_164_a1_oe = i2s2r;
assign ts_pe_165_a1_out = lrd_14;
assign ts_pe_165_a1_oe = i2s2r;
assign ts_pe_166_a1_out = lrd_15;
assign ts_pe_166_a1_oe = i2s2r;

// I2S.NET (205) - drws : ts
assign ts_pe_151_a2_out = ws;
assign ts_pe_151_a2_oe = i2s3r;

// I2S.NET (206) - drleft : ts
assign ts_pe_152_a2_out = left;
assign ts_pe_152_a2_oe = i2s3r;

// I2S.NET (207) - dru[2-15] : ts
assign ts_pe_153_a2_out = gnd;
assign ts_pe_153_a2_oe = i2s3r;
assign ts_pe_154_a2_out = gnd;
assign ts_pe_154_a2_oe = i2s3r;
assign ts_pe_155_a2_out = gnd;
assign ts_pe_155_a2_oe = i2s3r;
assign ts_pe_156_a2_out = gnd;
assign ts_pe_156_a2_oe = i2s3r;
assign ts_pe_157_a2_out = gnd;
assign ts_pe_157_a2_oe = i2s3r;
assign ts_pe_158_a2_out = gnd;
assign ts_pe_158_a2_oe = i2s3r;
assign ts_pe_159_a2_out = gnd;
assign ts_pe_159_a2_oe = i2s3r;
assign ts_pe_160_a2_out = gnd;
assign ts_pe_160_a2_oe = i2s3r;
assign ts_pe_161_a2_out = gnd;
assign ts_pe_161_a2_oe = i2s3r;
assign ts_pe_162_a2_out = gnd;
assign ts_pe_162_a2_oe = i2s3r;
assign ts_pe_163_a2_out = gnd;
assign ts_pe_163_a2_oe = i2s3r;
assign ts_pe_164_a2_out = gnd;
assign ts_pe_164_a2_oe = i2s3r;
assign ts_pe_165_a2_out = gnd;
assign ts_pe_165_a2_oe = i2s3r;
assign ts_pe_166_a2_out = gnd;
assign ts_pe_166_a2_oe = i2s3r;

// I2S.NET (213) - dpl[0-15] : slatch
j_slatch dpl_from_0_to_15_inst_0
(
	.q /* OUT */ (dpl_0),
	.d /* IN */ (din_0),
	.clk /* IN */ (clk),
	.en /* IN */ (i2s1w),
	.sys_clk(sys_clk) // Generated
);
j_slatch dpl_from_0_to_15_inst_1
(
	.q /* OUT */ (dpl_1),
	.d /* IN */ (din_1),
	.clk /* IN */ (clk),
	.en /* IN */ (i2s1w),
	.sys_clk(sys_clk) // Generated
);
j_slatch dpl_from_0_to_15_inst_2
(
	.q /* OUT */ (dpl_2),
	.d /* IN */ (din_2),
	.clk /* IN */ (clk),
	.en /* IN */ (i2s1w),
	.sys_clk(sys_clk) // Generated
);
j_slatch dpl_from_0_to_15_inst_3
(
	.q /* OUT */ (dpl_3),
	.d /* IN */ (din_3),
	.clk /* IN */ (clk),
	.en /* IN */ (i2s1w),
	.sys_clk(sys_clk) // Generated
);
j_slatch dpl_from_0_to_15_inst_4
(
	.q /* OUT */ (dpl_4),
	.d /* IN */ (din_4),
	.clk /* IN */ (clk),
	.en /* IN */ (i2s1w),
	.sys_clk(sys_clk) // Generated
);
j_slatch dpl_from_0_to_15_inst_5
(
	.q /* OUT */ (dpl_5),
	.d /* IN */ (din_5),
	.clk /* IN */ (clk),
	.en /* IN */ (i2s1w),
	.sys_clk(sys_clk) // Generated
);
j_slatch dpl_from_0_to_15_inst_6
(
	.q /* OUT */ (dpl_6),
	.d /* IN */ (din_6),
	.clk /* IN */ (clk),
	.en /* IN */ (i2s1w),
	.sys_clk(sys_clk) // Generated
);
j_slatch dpl_from_0_to_15_inst_7
(
	.q /* OUT */ (dpl_7),
	.d /* IN */ (din_7),
	.clk /* IN */ (clk),
	.en /* IN */ (i2s1w),
	.sys_clk(sys_clk) // Generated
);
j_slatch dpl_from_0_to_15_inst_8
(
	.q /* OUT */ (dpl_8),
	.d /* IN */ (din_8),
	.clk /* IN */ (clk),
	.en /* IN */ (i2s1w),
	.sys_clk(sys_clk) // Generated
);
j_slatch dpl_from_0_to_15_inst_9
(
	.q /* OUT */ (dpl_9),
	.d /* IN */ (din_9),
	.clk /* IN */ (clk),
	.en /* IN */ (i2s1w),
	.sys_clk(sys_clk) // Generated
);
j_slatch dpl_from_0_to_15_inst_10
(
	.q /* OUT */ (dpl_10),
	.d /* IN */ (din_10),
	.clk /* IN */ (clk),
	.en /* IN */ (i2s1w),
	.sys_clk(sys_clk) // Generated
);
j_slatch dpl_from_0_to_15_inst_11
(
	.q /* OUT */ (dpl_11),
	.d /* IN */ (din_11),
	.clk /* IN */ (clk),
	.en /* IN */ (i2s1w),
	.sys_clk(sys_clk) // Generated
);
j_slatch dpl_from_0_to_15_inst_12
(
	.q /* OUT */ (dpl_12),
	.d /* IN */ (din_12),
	.clk /* IN */ (clk),
	.en /* IN */ (i2s1w),
	.sys_clk(sys_clk) // Generated
);
j_slatch dpl_from_0_to_15_inst_13
(
	.q /* OUT */ (dpl_13),
	.d /* IN */ (din_13),
	.clk /* IN */ (clk),
	.en /* IN */ (i2s1w),
	.sys_clk(sys_clk) // Generated
);
j_slatch dpl_from_0_to_15_inst_14
(
	.q /* OUT */ (dpl_14),
	.d /* IN */ (din_14),
	.clk /* IN */ (clk),
	.en /* IN */ (i2s1w),
	.sys_clk(sys_clk) // Generated
);
j_slatch dpl_from_0_to_15_inst_15
(
	.q /* OUT */ (dpl_15),
	.d /* IN */ (din_15),
	.clk /* IN */ (clk),
	.en /* IN */ (i2s1w),
	.sys_clk(sys_clk) // Generated
);

// I2S.NET (214) - dpr[0-15] : slatch
j_slatch dpr_from_0_to_15_inst_0
(
	.q /* OUT */ (dpr_0),
	.d /* IN */ (din_0),
	.clk /* IN */ (clk),
	.en /* IN */ (i2s2w),
	.sys_clk(sys_clk) // Generated
);
j_slatch dpr_from_0_to_15_inst_1
(
	.q /* OUT */ (dpr_1),
	.d /* IN */ (din_1),
	.clk /* IN */ (clk),
	.en /* IN */ (i2s2w),
	.sys_clk(sys_clk) // Generated
);
j_slatch dpr_from_0_to_15_inst_2
(
	.q /* OUT */ (dpr_2),
	.d /* IN */ (din_2),
	.clk /* IN */ (clk),
	.en /* IN */ (i2s2w),
	.sys_clk(sys_clk) // Generated
);
j_slatch dpr_from_0_to_15_inst_3
(
	.q /* OUT */ (dpr_3),
	.d /* IN */ (din_3),
	.clk /* IN */ (clk),
	.en /* IN */ (i2s2w),
	.sys_clk(sys_clk) // Generated
);
j_slatch dpr_from_0_to_15_inst_4
(
	.q /* OUT */ (dpr_4),
	.d /* IN */ (din_4),
	.clk /* IN */ (clk),
	.en /* IN */ (i2s2w),
	.sys_clk(sys_clk) // Generated
);
j_slatch dpr_from_0_to_15_inst_5
(
	.q /* OUT */ (dpr_5),
	.d /* IN */ (din_5),
	.clk /* IN */ (clk),
	.en /* IN */ (i2s2w),
	.sys_clk(sys_clk) // Generated
);
j_slatch dpr_from_0_to_15_inst_6
(
	.q /* OUT */ (dpr_6),
	.d /* IN */ (din_6),
	.clk /* IN */ (clk),
	.en /* IN */ (i2s2w),
	.sys_clk(sys_clk) // Generated
);
j_slatch dpr_from_0_to_15_inst_7
(
	.q /* OUT */ (dpr_7),
	.d /* IN */ (din_7),
	.clk /* IN */ (clk),
	.en /* IN */ (i2s2w),
	.sys_clk(sys_clk) // Generated
);
j_slatch dpr_from_0_to_15_inst_8
(
	.q /* OUT */ (dpr_8),
	.d /* IN */ (din_8),
	.clk /* IN */ (clk),
	.en /* IN */ (i2s2w),
	.sys_clk(sys_clk) // Generated
);
j_slatch dpr_from_0_to_15_inst_9
(
	.q /* OUT */ (dpr_9),
	.d /* IN */ (din_9),
	.clk /* IN */ (clk),
	.en /* IN */ (i2s2w),
	.sys_clk(sys_clk) // Generated
);
j_slatch dpr_from_0_to_15_inst_10
(
	.q /* OUT */ (dpr_10),
	.d /* IN */ (din_10),
	.clk /* IN */ (clk),
	.en /* IN */ (i2s2w),
	.sys_clk(sys_clk) // Generated
);
j_slatch dpr_from_0_to_15_inst_11
(
	.q /* OUT */ (dpr_11),
	.d /* IN */ (din_11),
	.clk /* IN */ (clk),
	.en /* IN */ (i2s2w),
	.sys_clk(sys_clk) // Generated
);
j_slatch dpr_from_0_to_15_inst_12
(
	.q /* OUT */ (dpr_12),
	.d /* IN */ (din_12),
	.clk /* IN */ (clk),
	.en /* IN */ (i2s2w),
	.sys_clk(sys_clk) // Generated
);
j_slatch dpr_from_0_to_15_inst_13
(
	.q /* OUT */ (dpr_13),
	.d /* IN */ (din_13),
	.clk /* IN */ (clk),
	.en /* IN */ (i2s2w),
	.sys_clk(sys_clk) // Generated
);
j_slatch dpr_from_0_to_15_inst_14
(
	.q /* OUT */ (dpr_14),
	.d /* IN */ (din_14),
	.clk /* IN */ (clk),
	.en /* IN */ (i2s2w),
	.sys_clk(sys_clk) // Generated
);
j_slatch dpr_from_0_to_15_inst_15
(
	.q /* OUT */ (dpr_15),
	.d /* IN */ (din_15),
	.clk /* IN */ (clk),
	.en /* IN */ (i2s2w),
	.sys_clk(sys_clk) // Generated
);

// I2S.NET (215) - dp[0-15] : mx2
assign dp_0 = (rr) ? dpr_0 : dpl_0;
assign dp_1 = (rr) ? dpr_1 : dpl_1;
assign dp_2 = (rr) ? dpr_2 : dpl_2;
assign dp_3 = (rr) ? dpr_3 : dpl_3;
assign dp_4 = (rr) ? dpr_4 : dpl_4;
assign dp_5 = (rr) ? dpr_5 : dpl_5;
assign dp_6 = (rr) ? dpr_6 : dpl_6;
assign dp_7 = (rr) ? dpr_7 : dpl_7;
assign dp_8 = (rr) ? dpr_8 : dpl_8;
assign dp_9 = (rr) ? dpr_9 : dpl_9;
assign dp_10 = (rr) ? dpr_10 : dpl_10;
assign dp_11 = (rr) ? dpr_11 : dpl_11;
assign dp_12 = (rr) ? dpr_12 : dpl_12;
assign dp_13 = (rr) ? dpr_13 : dpl_13;
assign dp_14 = (rr) ? dpr_14 : dpl_14;
assign dp_15 = (rr) ? dpr_15 : dpl_15;

// I2S.NET (219) - ds[0] : mx2
assign ds_0 = (msb) ? dp_0 : gnd;

// I2S.NET (220) - ds[1-15] : mx2
assign ds_1 = (msb) ? dp_1 : qs_0;
assign ds_2 = (msb) ? dp_2 : qs_1;
assign ds_3 = (msb) ? dp_3 : qs_2;
assign ds_4 = (msb) ? dp_4 : qs_3;
assign ds_5 = (msb) ? dp_5 : qs_4;
assign ds_6 = (msb) ? dp_6 : qs_5;
assign ds_7 = (msb) ? dp_7 : qs_6;
assign ds_8 = (msb) ? dp_8 : qs_7;
assign ds_9 = (msb) ? dp_9 : qs_8;
assign ds_10 = (msb) ? dp_10 : qs_9;
assign ds_11 = (msb) ? dp_11 : qs_10;
assign ds_12 = (msb) ? dp_12 : qs_11;
assign ds_13 = (msb) ? dp_13 : qs_12;
assign ds_14 = (msb) ? dp_14 : qs_13;
assign ds_15 = (msb) ? dp_15 : qs_14;

// I2S.NET (222) - qs[0-15] : fd1q
fd1q qs_from_0_to_15_inst_0
(
	.q /* OUT */ (qs_0),
	.d /* IN */ (ds_0),
	.cp /* IN */ (sckl),
	.sys_clk(sys_clk) // Generated
);
fd1q qs_from_0_to_15_inst_1
(
	.q /* OUT */ (qs_1),
	.d /* IN */ (ds_1),
	.cp /* IN */ (sckl),
	.sys_clk(sys_clk) // Generated
);
fd1q qs_from_0_to_15_inst_2
(
	.q /* OUT */ (qs_2),
	.d /* IN */ (ds_2),
	.cp /* IN */ (sckl),
	.sys_clk(sys_clk) // Generated
);
fd1q qs_from_0_to_15_inst_3
(
	.q /* OUT */ (qs_3),
	.d /* IN */ (ds_3),
	.cp /* IN */ (sckl),
	.sys_clk(sys_clk) // Generated
);
fd1q qs_from_0_to_15_inst_4
(
	.q /* OUT */ (qs_4),
	.d /* IN */ (ds_4),
	.cp /* IN */ (sckl),
	.sys_clk(sys_clk) // Generated
);
fd1q qs_from_0_to_15_inst_5
(
	.q /* OUT */ (qs_5),
	.d /* IN */ (ds_5),
	.cp /* IN */ (sckl),
	.sys_clk(sys_clk) // Generated
);
fd1q qs_from_0_to_15_inst_6
(
	.q /* OUT */ (qs_6),
	.d /* IN */ (ds_6),
	.cp /* IN */ (sckl),
	.sys_clk(sys_clk) // Generated
);
fd1q qs_from_0_to_15_inst_7
(
	.q /* OUT */ (qs_7),
	.d /* IN */ (ds_7),
	.cp /* IN */ (sckl),
	.sys_clk(sys_clk) // Generated
);
fd1q qs_from_0_to_15_inst_8
(
	.q /* OUT */ (qs_8),
	.d /* IN */ (ds_8),
	.cp /* IN */ (sckl),
	.sys_clk(sys_clk) // Generated
);
fd1q qs_from_0_to_15_inst_9
(
	.q /* OUT */ (qs_9),
	.d /* IN */ (ds_9),
	.cp /* IN */ (sckl),
	.sys_clk(sys_clk) // Generated
);
fd1q qs_from_0_to_15_inst_10
(
	.q /* OUT */ (qs_10),
	.d /* IN */ (ds_10),
	.cp /* IN */ (sckl),
	.sys_clk(sys_clk) // Generated
);
fd1q qs_from_0_to_15_inst_11
(
	.q /* OUT */ (qs_11),
	.d /* IN */ (ds_11),
	.cp /* IN */ (sckl),
	.sys_clk(sys_clk) // Generated
);
fd1q qs_from_0_to_15_inst_12
(
	.q /* OUT */ (qs_12),
	.d /* IN */ (ds_12),
	.cp /* IN */ (sckl),
	.sys_clk(sys_clk) // Generated
);
fd1q qs_from_0_to_15_inst_13
(
	.q /* OUT */ (qs_13),
	.d /* IN */ (ds_13),
	.cp /* IN */ (sckl),
	.sys_clk(sys_clk) // Generated
);
fd1q qs_from_0_to_15_inst_14
(
	.q /* OUT */ (qs_14),
	.d /* IN */ (ds_14),
	.cp /* IN */ (sckl),
	.sys_clk(sys_clk) // Generated
);
fd1q qs_from_0_to_15_inst_15
(
	.q /* OUT */ (qs_15),
	.d /* IN */ (ds_15),
	.cp /* IN */ (sckl),
	.sys_clk(sys_clk) // Generated
);

// I2S.NET (223) - i2txd : join
assign i2txd = qs_15;

// I2S.NET (227) - i2sen : slatchc
j_slatchc i2sen_inst
(
	.q /* OUT */ (i2sen_obuf),
	.d /* IN */ (din_0),
	.clk /* IN */ (clk),
	.en /* IN */ (i2s4w),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// I2S.NET (228) - mode32 : slatch
j_slatch mode32_inst
(
	.q /* OUT */ (mode32),
	.d /* IN */ (din_1),
	.clk /* IN */ (clk),
	.en /* IN */ (i2s4w),
	.sys_clk(sys_clk) // Generated
);

// I2S.NET (229) - wsen : slatch
j_slatch wsen_inst
(
	.q /* OUT */ (wsen),
	.d /* IN */ (din_2),
	.clk /* IN */ (clk),
	.en /* IN */ (i2s4w),
	.sys_clk(sys_clk) // Generated
);

// I2S.NET (230) - rising : slatch
j_slatch rising_inst
(
	.q /* OUT */ (rising),
	.d /* IN */ (din_3),
	.clk /* IN */ (clk),
	.en /* IN */ (i2s4w),
	.sys_clk(sys_clk) // Generated
);

// I2S.NET (231) - falling : slatch
j_slatch falling_inst
(
	.q /* OUT */ (falling),
	.d /* IN */ (din_4),
	.clk /* IN */ (clk),
	.en /* IN */ (i2s4w),
	.sys_clk(sys_clk) // Generated
);

// I2S.NET (232) - everyword : slatch
j_slatch everyword_inst
(
	.q /* OUT */ (everyword),
	.d /* IN */ (din_5),
	.clk /* IN */ (clk),
	.en /* IN */ (i2s4w),
	.sys_clk(sys_clk) // Generated
);

// I2S.NET (234) - mode16 : iv
assign mode16 = ~mode32;

// I2S.NET (236) - gnd : tie0
assign gnd = 1'b0;

// I2S.NET (237) - vcc : tie1
assign vcc = 1'b1;

// I2S.NET (240) - snd_l : join
assign snd_l[0] = dpl_0;
assign snd_l[1] = dpl_1;
assign snd_l[2] = dpl_2;
assign snd_l[3] = dpl_3;
assign snd_l[4] = dpl_4;
assign snd_l[5] = dpl_5;
assign snd_l[6] = dpl_6;
assign snd_l[7] = dpl_7;
assign snd_l[8] = dpl_8;
assign snd_l[9] = dpl_9;
assign snd_l[10] = dpl_10;
assign snd_l[11] = dpl_11;
assign snd_l[12] = dpl_12;
assign snd_l[13] = dpl_13;
assign snd_l[14] = dpl_14;
assign snd_l[15] = dpl_15;

// I2S.NET (241) - snd_r : join
assign snd_r[0] = dpr_0;
assign snd_r[1] = dpr_1;
assign snd_r[2] = dpr_2;
assign snd_r[3] = dpr_3;
assign snd_r[4] = dpr_4;
assign snd_r[5] = dpr_5;
assign snd_r[6] = dpr_6;
assign snd_r[7] = dpr_7;
assign snd_r[8] = dpr_8;
assign snd_r[9] = dpr_9;
assign snd_r[10] = dpr_10;
assign snd_r[11] = dpr_11;
assign snd_r[12] = dpr_12;
assign snd_r[13] = dpr_13;
assign snd_r[14] = dpr_14;
assign snd_r[15] = dpr_15;

// I2S.NET (242) - snd_l_en : niv
assign snd_l_en = i2s1w;

// I2S.NET (243) - snd_r_en : niv
assign snd_r_en = i2s2w;

// --- Compiler-generated PE for BUS dr[0]
assign dr_0_out = (ts_pe_151_a0_oe & ts_pe_151_a0_out ) | (ts_pe_151_a1_oe & ts_pe_151_a1_out ) | (ts_pe_151_a2_oe & ts_pe_151_a2_out ) | 1'b0;
assign dr_0_oe = ts_pe_151_a0_oe | ts_pe_151_a1_oe | ts_pe_151_a2_oe;
assign ts_pe_151_a0_in = dr_0_in;
assign ts_pe_151_a1_in = dr_0_in;
assign ts_pe_151_a2_in = dr_0_in;

// --- Compiler-generated PE for BUS dr[1]
assign dr_1_out = (ts_pe_152_a0_oe & ts_pe_152_a0_out ) | (ts_pe_152_a1_oe & ts_pe_152_a1_out ) | (ts_pe_152_a2_oe & ts_pe_152_a2_out ) | 1'b0;
assign dr_1_oe = ts_pe_152_a0_oe | ts_pe_152_a1_oe | ts_pe_152_a2_oe;
assign ts_pe_152_a0_in = dr_1_in;
assign ts_pe_152_a1_in = dr_1_in;
assign ts_pe_152_a2_in = dr_1_in;

// --- Compiler-generated PE for BUS dr[2]
assign dr_2_out = (ts_pe_153_a0_oe & ts_pe_153_a0_out ) | (ts_pe_153_a1_oe & ts_pe_153_a1_out ) | (ts_pe_153_a2_oe & ts_pe_153_a2_out ) | 1'b0;
assign dr_2_oe = ts_pe_153_a0_oe | ts_pe_153_a1_oe | ts_pe_153_a2_oe;
assign ts_pe_153_a0_in = dr_2_in;
assign ts_pe_153_a1_in = dr_2_in;
assign ts_pe_153_a2_in = dr_2_in;

// --- Compiler-generated PE for BUS dr[3]
assign dr_3_out = (ts_pe_154_a0_oe & ts_pe_154_a0_out ) | (ts_pe_154_a1_oe & ts_pe_154_a1_out ) | (ts_pe_154_a2_oe & ts_pe_154_a2_out ) | 1'b0;
assign dr_3_oe = ts_pe_154_a0_oe | ts_pe_154_a1_oe | ts_pe_154_a2_oe;
assign ts_pe_154_a0_in = dr_3_in;
assign ts_pe_154_a1_in = dr_3_in;
assign ts_pe_154_a2_in = dr_3_in;

// --- Compiler-generated PE for BUS dr[4]
assign dr_4_out = (ts_pe_155_a0_oe & ts_pe_155_a0_out ) | (ts_pe_155_a1_oe & ts_pe_155_a1_out ) | (ts_pe_155_a2_oe & ts_pe_155_a2_out ) | 1'b0;
assign dr_4_oe = ts_pe_155_a0_oe | ts_pe_155_a1_oe | ts_pe_155_a2_oe;
assign ts_pe_155_a0_in = dr_4_in;
assign ts_pe_155_a1_in = dr_4_in;
assign ts_pe_155_a2_in = dr_4_in;

// --- Compiler-generated PE for BUS dr[5]
assign dr_5_out = (ts_pe_156_a0_oe & ts_pe_156_a0_out ) | (ts_pe_156_a1_oe & ts_pe_156_a1_out ) | (ts_pe_156_a2_oe & ts_pe_156_a2_out ) | 1'b0;
assign dr_5_oe = ts_pe_156_a0_oe | ts_pe_156_a1_oe | ts_pe_156_a2_oe;
assign ts_pe_156_a0_in = dr_5_in;
assign ts_pe_156_a1_in = dr_5_in;
assign ts_pe_156_a2_in = dr_5_in;

// --- Compiler-generated PE for BUS dr[6]
assign dr_6_out = (ts_pe_157_a0_oe & ts_pe_157_a0_out ) | (ts_pe_157_a1_oe & ts_pe_157_a1_out ) | (ts_pe_157_a2_oe & ts_pe_157_a2_out ) | 1'b0;
assign dr_6_oe = ts_pe_157_a0_oe | ts_pe_157_a1_oe | ts_pe_157_a2_oe;
assign ts_pe_157_a0_in = dr_6_in;
assign ts_pe_157_a1_in = dr_6_in;
assign ts_pe_157_a2_in = dr_6_in;

// --- Compiler-generated PE for BUS dr[7]
assign dr_7_out = (ts_pe_158_a0_oe & ts_pe_158_a0_out ) | (ts_pe_158_a1_oe & ts_pe_158_a1_out ) | (ts_pe_158_a2_oe & ts_pe_158_a2_out ) | 1'b0;
assign dr_7_oe = ts_pe_158_a0_oe | ts_pe_158_a1_oe | ts_pe_158_a2_oe;
assign ts_pe_158_a0_in = dr_7_in;
assign ts_pe_158_a1_in = dr_7_in;
assign ts_pe_158_a2_in = dr_7_in;

// --- Compiler-generated PE for BUS dr[8]
assign dr_8_out = (ts_pe_159_a0_oe & ts_pe_159_a0_out ) | (ts_pe_159_a1_oe & ts_pe_159_a1_out ) | (ts_pe_159_a2_oe & ts_pe_159_a2_out ) | 1'b0;
assign dr_8_oe = ts_pe_159_a0_oe | ts_pe_159_a1_oe | ts_pe_159_a2_oe;
assign ts_pe_159_a0_in = dr_8_in;
assign ts_pe_159_a1_in = dr_8_in;
assign ts_pe_159_a2_in = dr_8_in;

// --- Compiler-generated PE for BUS dr[9]
assign dr_9_out = (ts_pe_160_a0_oe & ts_pe_160_a0_out ) | (ts_pe_160_a1_oe & ts_pe_160_a1_out ) | (ts_pe_160_a2_oe & ts_pe_160_a2_out ) | 1'b0;
assign dr_9_oe = ts_pe_160_a0_oe | ts_pe_160_a1_oe | ts_pe_160_a2_oe;
assign ts_pe_160_a0_in = dr_9_in;
assign ts_pe_160_a1_in = dr_9_in;
assign ts_pe_160_a2_in = dr_9_in;

// --- Compiler-generated PE for BUS dr[10]
assign dr_10_out = (ts_pe_161_a0_oe & ts_pe_161_a0_out ) | (ts_pe_161_a1_oe & ts_pe_161_a1_out ) | (ts_pe_161_a2_oe & ts_pe_161_a2_out ) | 1'b0;
assign dr_10_oe = ts_pe_161_a0_oe | ts_pe_161_a1_oe | ts_pe_161_a2_oe;
assign ts_pe_161_a0_in = dr_10_in;
assign ts_pe_161_a1_in = dr_10_in;
assign ts_pe_161_a2_in = dr_10_in;

// --- Compiler-generated PE for BUS dr[11]
assign dr_11_out = (ts_pe_162_a0_oe & ts_pe_162_a0_out ) | (ts_pe_162_a1_oe & ts_pe_162_a1_out ) | (ts_pe_162_a2_oe & ts_pe_162_a2_out ) | 1'b0;
assign dr_11_oe = ts_pe_162_a0_oe | ts_pe_162_a1_oe | ts_pe_162_a2_oe;
assign ts_pe_162_a0_in = dr_11_in;
assign ts_pe_162_a1_in = dr_11_in;
assign ts_pe_162_a2_in = dr_11_in;

// --- Compiler-generated PE for BUS dr[12]
assign dr_12_out = (ts_pe_163_a0_oe & ts_pe_163_a0_out ) | (ts_pe_163_a1_oe & ts_pe_163_a1_out ) | (ts_pe_163_a2_oe & ts_pe_163_a2_out ) | 1'b0;
assign dr_12_oe = ts_pe_163_a0_oe | ts_pe_163_a1_oe | ts_pe_163_a2_oe;
assign ts_pe_163_a0_in = dr_12_in;
assign ts_pe_163_a1_in = dr_12_in;
assign ts_pe_163_a2_in = dr_12_in;

// --- Compiler-generated PE for BUS dr[13]
assign dr_13_out = (ts_pe_164_a0_oe & ts_pe_164_a0_out ) | (ts_pe_164_a1_oe & ts_pe_164_a1_out ) | (ts_pe_164_a2_oe & ts_pe_164_a2_out ) | 1'b0;
assign dr_13_oe = ts_pe_164_a0_oe | ts_pe_164_a1_oe | ts_pe_164_a2_oe;
assign ts_pe_164_a0_in = dr_13_in;
assign ts_pe_164_a1_in = dr_13_in;
assign ts_pe_164_a2_in = dr_13_in;

// --- Compiler-generated PE for BUS dr[14]
assign dr_14_out = (ts_pe_165_a0_oe & ts_pe_165_a0_out ) | (ts_pe_165_a1_oe & ts_pe_165_a1_out ) | (ts_pe_165_a2_oe & ts_pe_165_a2_out ) | 1'b0;
assign dr_14_oe = ts_pe_165_a0_oe | ts_pe_165_a1_oe | ts_pe_165_a2_oe;
assign ts_pe_165_a0_in = dr_14_in;
assign ts_pe_165_a1_in = dr_14_in;
assign ts_pe_165_a2_in = dr_14_in;

// --- Compiler-generated PE for BUS dr[15]
assign dr_15_out = (ts_pe_166_a0_oe & ts_pe_166_a0_out ) | (ts_pe_166_a1_oe & ts_pe_166_a1_out ) | (ts_pe_166_a2_oe & ts_pe_166_a2_out ) | 1'b0;
assign dr_15_oe = ts_pe_166_a0_oe | ts_pe_166_a1_oe | ts_pe_166_a2_oe;
assign ts_pe_166_a0_in = dr_15_in;
assign ts_pe_166_a1_in = dr_15_in;
assign ts_pe_166_a2_in = dr_15_in;
endmodule
/* verilator lint_on LITENDIAN */
