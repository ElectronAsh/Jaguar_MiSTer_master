/* verilator lint_off LITENDIAN */
`include "defs.v"

module misc
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
	input pit0w,
	input pit1w,
	input int1w,
	input int2w,
	input intr,
	input obint,
	input gpuint,
	input vint,
	input dint,
	input refrate_0,
	input refrate_1,
	input refrate_2,
	input refrate_3,
	input refback,
	input ack,
	input startref,
	input wet,
	input pit0r,
	input pit1r,
	input tcount,
	input test3r,
	output ihandler,
	output tint,
	output refreq,
	output intl,
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
	output mreq_out,
	output mreq_oe,
	input mreq_in,
	input sys_clk // Generated
);
wire [0:15] tp;
wire [0:15] t;
wire [0:3] rc;
wire vcc;
wire intw;
wire ie_0;
wire ie_1;
wire ie_2;
wire ie_3;
wire ie_4;
wire ack_0;
wire ack_1;
wire ack_2;
wire ack_3;
wire ack_4;
wire lvint;
wire vclr;
wire ackl_0;
wire vi1;
wire vi2;
wire vi2l;
wire vip;
wire gip;
wire oip;
wire tip;
wire di1;
wire di2;
wire di2l;
wire dip;
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
wire gnd;
wire notint2w;
wire ihd0;
wire ihd;
wire pit0;
wire pit1;
wire pd_0;
wire pd_1;
wire pd_2;
wire pd_3;
wire pd_4;
wire pd_5;
wire pd_6;
wire pd_7;
wire pd_8;
wire pd_9;
wire pd_10;
wire pd_11;
wire pd_12;
wire pd_13;
wire pd_14;
wire pd_15;
wire td_0;
wire td_1;
wire td_2;
wire td_3;
wire td_4;
wire td_5;
wire td_6;
wire td_7;
wire td_8;
wire td_9;
wire td_10;
wire td_11;
wire td_12;
wire td_13;
wire td_14;
wire td_15;
wire ten0;
wire ten1;
wire ten;
wire presl;
wire tp_0;
wire tpco_0;
wire tpld;
wire tp_1;
wire tp_2;
wire tp_3;
wire tp_4;
wire tp_5;
wire tp_6;
wire tp_7;
wire tpco_1;
wire tpco_2;
wire tpco_3;
wire tpco_4;
wire tpco_5;
wire tpco_6;
wire tpco_7;
wire tp_8;
wire tpco_8;
wire tpc8;
wire tp_9;
wire tp_10;
wire tp_11;
wire tp_12;
wire tp_13;
wire tp_14;
wire tp_15;
wire tpco_9;
wire tpco_10;
wire tpco_11;
wire tpco_12;
wire tpco_13;
wire tpco_14;
wire tpco_15;
wire tplac0;
wire tplac1;
wire tpc16;
wire tpldi;
wire t_0;
wire tco_0;
wire tld;
wire t_1;
wire t_2;
wire t_3;
wire t_4;
wire t_5;
wire t_6;
wire t_7;
wire tco_1;
wire tco_2;
wire tco_3;
wire tco_4;
wire tco_5;
wire tco_6;
wire tco_7;
wire t_8;
wire tco_8;
wire tc8;
wire t_9;
wire t_10;
wire t_11;
wire t_12;
wire t_13;
wire t_14;
wire t_15;
wire tco_9;
wire tco_10;
wire tco_11;
wire tco_12;
wire tco_13;
wire tco_14;
wire tco_15;
wire tlac0;
wire tlac1;
wire tc16;
wire tldi;
wire rc_0;
wire rc_1;
wire rc_2;
wire rc_3;
wire ps_0;
wire psco_0;
wire ps_1;
wire ps_2;
wire ps_3;
wire ps_4;
wire ps_5;
wire psco_1;
wire psco_2;
wire psco_3;
wire psco_4;
wire psco_5;
wire pen;
wire rq;
wire d0;
wire d00;
wire notrq;
wire full;
wire d01;
wire notempty;
wire d02;
wire decl;
wire refack;
wire dec;
wire rpcen;
wire rp_0;
wire rpc_0;
wire lrpc;
wire rp_1;
wire rp_2;
wire rp_3;
wire rpc_1;
wire rpc_2;
wire rpc_3;
wire rpl_0;
wire rpl_1;
wire rpl_2;
wire rpl_3;
wire lrpcl;
wire rpenl;
wire rpen;
wire rcc_0;
wire refcount;
wire rcc_1;
wire rcc_2;
wire rcc_3;
wire rfc0;
wire rfc1;
wire rfc2;
wire notrefack;
wire ts_pe_560_a0_out;
wire ts_pe_560_a0_oe;
wire ts_pe_560_a0_in;
wire ts_pe_560_a1_out;
wire ts_pe_560_a1_oe;
wire ts_pe_560_a1_in;
wire ts_pe_560_a2_out;
wire ts_pe_560_a2_oe;
wire ts_pe_560_a2_in;
wire ts_pe_561_a0_out;
wire ts_pe_561_a0_oe;
wire ts_pe_561_a0_in;
wire ts_pe_561_a1_out;
wire ts_pe_561_a1_oe;
wire ts_pe_561_a1_in;
wire ts_pe_561_a2_out;
wire ts_pe_561_a2_oe;
wire ts_pe_561_a2_in;
wire ts_pe_562_a0_out;
wire ts_pe_562_a0_oe;
wire ts_pe_562_a0_in;
wire ts_pe_562_a1_out;
wire ts_pe_562_a1_oe;
wire ts_pe_562_a1_in;
wire ts_pe_562_a2_out;
wire ts_pe_562_a2_oe;
wire ts_pe_562_a2_in;
wire ts_pe_563_a0_out;
wire ts_pe_563_a0_oe;
wire ts_pe_563_a0_in;
wire ts_pe_563_a1_out;
wire ts_pe_563_a1_oe;
wire ts_pe_563_a1_in;
wire ts_pe_563_a2_out;
wire ts_pe_563_a2_oe;
wire ts_pe_563_a2_in;
wire ts_pe_564_a0_out;
wire ts_pe_564_a0_oe;
wire ts_pe_564_a0_in;
wire ts_pe_564_a1_out;
wire ts_pe_564_a1_oe;
wire ts_pe_564_a1_in;
wire ts_pe_564_a2_out;
wire ts_pe_564_a2_oe;
wire ts_pe_564_a2_in;
wire ts_pe_565_a0_out;
wire ts_pe_565_a0_oe;
wire ts_pe_565_a0_in;
wire ts_pe_565_a1_out;
wire ts_pe_565_a1_oe;
wire ts_pe_565_a1_in;
wire ts_pe_565_a2_out;
wire ts_pe_565_a2_oe;
wire ts_pe_565_a2_in;
wire ts_pe_566_a0_out;
wire ts_pe_566_a0_oe;
wire ts_pe_566_a0_in;
wire ts_pe_566_a1_out;
wire ts_pe_566_a1_oe;
wire ts_pe_566_a1_in;
wire ts_pe_566_a2_out;
wire ts_pe_566_a2_oe;
wire ts_pe_566_a2_in;
wire ts_pe_567_a0_out;
wire ts_pe_567_a0_oe;
wire ts_pe_567_a0_in;
wire ts_pe_567_a1_out;
wire ts_pe_567_a1_oe;
wire ts_pe_567_a1_in;
wire ts_pe_567_a2_out;
wire ts_pe_567_a2_oe;
wire ts_pe_567_a2_in;
wire ts_pe_568_a0_out;
wire ts_pe_568_a0_oe;
wire ts_pe_568_a0_in;
wire ts_pe_568_a1_out;
wire ts_pe_568_a1_oe;
wire ts_pe_568_a1_in;
wire ts_pe_568_a2_out;
wire ts_pe_568_a2_oe;
wire ts_pe_568_a2_in;
wire ts_pe_569_a0_out;
wire ts_pe_569_a0_oe;
wire ts_pe_569_a0_in;
wire ts_pe_569_a1_out;
wire ts_pe_569_a1_oe;
wire ts_pe_569_a1_in;
wire ts_pe_569_a2_out;
wire ts_pe_569_a2_oe;
wire ts_pe_569_a2_in;
wire ts_pe_570_a0_out;
wire ts_pe_570_a0_oe;
wire ts_pe_570_a0_in;
wire ts_pe_570_a1_out;
wire ts_pe_570_a1_oe;
wire ts_pe_570_a1_in;
wire ts_pe_570_a2_out;
wire ts_pe_570_a2_oe;
wire ts_pe_570_a2_in;
wire ts_pe_571_a0_out;
wire ts_pe_571_a0_oe;
wire ts_pe_571_a0_in;
wire ts_pe_571_a1_out;
wire ts_pe_571_a1_oe;
wire ts_pe_571_a1_in;
wire ts_pe_571_a2_out;
wire ts_pe_571_a2_oe;
wire ts_pe_571_a2_in;
wire ts_pe_572_a0_out;
wire ts_pe_572_a0_oe;
wire ts_pe_572_a0_in;
wire ts_pe_572_a1_out;
wire ts_pe_572_a1_oe;
wire ts_pe_572_a1_in;
wire ts_pe_572_a2_out;
wire ts_pe_572_a2_oe;
wire ts_pe_572_a2_in;
wire ts_pe_572_a3_out;
wire ts_pe_572_a3_oe;
wire ts_pe_572_a3_in;
wire ts_pe_573_a0_out;
wire ts_pe_573_a0_oe;
wire ts_pe_573_a0_in;
wire ts_pe_573_a1_out;
wire ts_pe_573_a1_oe;
wire ts_pe_573_a1_in;
wire ts_pe_573_a2_out;
wire ts_pe_573_a2_oe;
wire ts_pe_573_a2_in;
wire ts_pe_573_a3_out;
wire ts_pe_573_a3_oe;
wire ts_pe_573_a3_in;
wire ts_pe_574_a0_out;
wire ts_pe_574_a0_oe;
wire ts_pe_574_a0_in;
wire ts_pe_574_a1_out;
wire ts_pe_574_a1_oe;
wire ts_pe_574_a1_in;
wire ts_pe_574_a2_out;
wire ts_pe_574_a2_oe;
wire ts_pe_574_a2_in;
wire ts_pe_574_a3_out;
wire ts_pe_574_a3_oe;
wire ts_pe_574_a3_in;
wire ts_pe_575_a0_out;
wire ts_pe_575_a0_oe;
wire ts_pe_575_a0_in;
wire ts_pe_575_a1_out;
wire ts_pe_575_a1_oe;
wire ts_pe_575_a1_in;
wire ts_pe_575_a2_out;
wire ts_pe_575_a2_oe;
wire ts_pe_575_a2_in;
wire ts_pe_575_a3_out;
wire ts_pe_575_a3_oe;
wire ts_pe_575_a3_in;

// Output buffers
wire ihandler_obuf;
wire tint_obuf;
wire refreq_obuf;
wire intl_obuf;


// Output buffers
assign ihandler = ihandler_obuf;
assign tint = tint_obuf;
assign refreq = refreq_obuf;
assign intl = intl_obuf;


// MISC.NET (44) - vcc : tie1
assign vcc = 1'b1;

// MISC.NET (48) - intw : an2
assign intw = int1w & wet;

// MISC.NET (49) - ie[0-4] : ldp2q
ldp2q ie_from_0_to_4_inst_0
(
	.q /* OUT */ (ie_0),
	.d /* IN */ (din_0),
	.g /* IN */ (intw),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
ldp2q ie_from_0_to_4_inst_1
(
	.q /* OUT */ (ie_1),
	.d /* IN */ (din_1),
	.g /* IN */ (intw),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
ldp2q ie_from_0_to_4_inst_2
(
	.q /* OUT */ (ie_2),
	.d /* IN */ (din_2),
	.g /* IN */ (intw),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
ldp2q ie_from_0_to_4_inst_3
(
	.q /* OUT */ (ie_3),
	.d /* IN */ (din_3),
	.g /* IN */ (intw),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
ldp2q ie_from_0_to_4_inst_4
(
	.q /* OUT */ (ie_4),
	.d /* IN */ (din_4),
	.g /* IN */ (intw),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MISC.NET (51) - ack[0-4] : an2
assign ack_0 = din_8 & int1w;
assign ack_1 = din_9 & int1w;
assign ack_2 = din_10 & int1w;
assign ack_3 = din_11 & int1w;
assign ack_4 = din_12 & int1w;

// MISC.NET (55) - lvint : lsrb
lsrb lvint_inst
(
	.q /* OUT */ (lvint),
	.r /* IN */ (vclr),
	.s /* IN */ (vint),
	.sys_clk(sys_clk) // Generated
);

// MISC.NET (56) - vclr : nd2
assign vclr = ~(resetl & ackl_0);

// MISC.NET (57) - ackl[0] : iv
assign ackl_0 = ~ack_0;

// MISC.NET (61) - vi1 : fd2q
fd2q vi1_inst
(
	.q /* OUT */ (vi1),
	.d /* IN */ (lvint),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MISC.NET (62) - vi2 : fd2q
fd2q vi2_inst
(
	.q /* OUT */ (vi2),
	.d /* IN */ (vi1),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MISC.NET (63) - vi2l : iv
assign vi2l = ~vi2;

// MISC.NET (64) - vip : an3
assign vip = vi1 & vi2l & ie_0;

// MISC.NET (66) - gip : an2
assign gip = gpuint & ie_1;

// MISC.NET (67) - oip : an2
assign oip = obint & ie_2;

// MISC.NET (68) - tip : an2
assign tip = tint_obuf & ie_3;

// MISC.NET (70) - di1 : fd2q
fd2q di1_inst
(
	.q /* OUT */ (di1),
	.d /* IN */ (dint),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MISC.NET (71) - di2 : fd2q
fd2q di2_inst
(
	.q /* OUT */ (di2),
	.d /* IN */ (di1),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MISC.NET (72) - di2l : iv
assign di2l = ~di2;

// MISC.NET (73) - dip : an3
assign dip = di1 & di2l & ie_4;

// MISC.NET (77) - i[0] : fjk2
fjk2 i_index_0_inst
(
	.q /* OUT */ (i_0),
	.qn /* OUT */ (il_0),
	.j /* IN */ (vip),
	.k /* IN */ (ack_0),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MISC.NET (78) - i[1] : fjk2
fjk2 i_index_1_inst
(
	.q /* OUT */ (i_1),
	.qn /* OUT */ (il_1),
	.j /* IN */ (gip),
	.k /* IN */ (ack_1),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MISC.NET (79) - i[2] : fjk2
fjk2 i_index_2_inst
(
	.q /* OUT */ (i_2),
	.qn /* OUT */ (il_2),
	.j /* IN */ (oip),
	.k /* IN */ (ack_2),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MISC.NET (80) - i[3] : fjk2
fjk2 i_index_3_inst
(
	.q /* OUT */ (i_3),
	.qn /* OUT */ (il_3),
	.j /* IN */ (tip),
	.k /* IN */ (ack_3),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MISC.NET (81) - i[4] : fjk2
fjk2 i_index_4_inst
(
	.q /* OUT */ (i_4),
	.qn /* OUT */ (il_4),
	.j /* IN */ (dip),
	.k /* IN */ (ack_4),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MISC.NET (83) - ilu[0-4] : dummy

// MISC.NET (87) - intl : nr6
assign intl_obuf = ~(i_0 | i_1 | i_2 | i_3 | i_4 | gnd);

// MISC.NET (91) - di[0-4] : ts
assign ts_pe_560_a0_out = i_0;
assign ts_pe_560_a0_oe = intr;
assign ts_pe_561_a0_out = i_1;
assign ts_pe_561_a0_oe = intr;
assign ts_pe_562_a0_out = i_2;
assign ts_pe_562_a0_oe = intr;
assign ts_pe_563_a0_out = i_3;
assign ts_pe_563_a0_oe = intr;
assign ts_pe_564_a0_out = i_4;
assign ts_pe_564_a0_oe = intr;

// MISC.NET (92) - di[5-15] : ts
assign ts_pe_565_a0_out = gnd;
assign ts_pe_565_a0_oe = intr;
assign ts_pe_566_a0_out = gnd;
assign ts_pe_566_a0_oe = intr;
assign ts_pe_567_a0_out = gnd;
assign ts_pe_567_a0_oe = intr;
assign ts_pe_568_a0_out = gnd;
assign ts_pe_568_a0_oe = intr;
assign ts_pe_569_a0_out = gnd;
assign ts_pe_569_a0_oe = intr;
assign ts_pe_570_a0_out = gnd;
assign ts_pe_570_a0_oe = intr;
assign ts_pe_571_a0_out = gnd;
assign ts_pe_571_a0_oe = intr;
assign ts_pe_572_a0_out = gnd;
assign ts_pe_572_a0_oe = intr;
assign ts_pe_573_a0_out = gnd;
assign ts_pe_573_a0_oe = intr;
assign ts_pe_574_a0_out = gnd;
assign ts_pe_574_a0_oe = intr;
assign ts_pe_575_a0_out = gnd;
assign ts_pe_575_a0_oe = intr;

// MISC.NET (93) - gnd : tie0
assign gnd = 1'b0;

// MISC.NET (100) - notint2w : iv
assign notint2w = ~int2w;

// MISC.NET (101) - ihd0 : nd2
assign ihd0 = ~(ihandler_obuf & notint2w);

// MISC.NET (102) - ihd : nd2
assign ihd = ~(ihd0 & intl_obuf);

// MISC.NET (103) - ihandler : fd2q
fd2q ihandler_inst
(
	.q /* OUT */ (ihandler_obuf),
	.d /* IN */ (ihd),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MISC.NET (110) - pit0 : nivh
assign pit0 = pit0w;

// MISC.NET (111) - pit1 : an2h
assign pit1 = wet & pit1w;

// MISC.NET (113) - pd[0-15] : slatch
slatch pd_from_0_to_15_inst_0
(
	.q /* OUT */ (pd_0),
	.d /* IN */ (din_0),
	.clk /* IN */ (clk),
	.en /* IN */ (pit0),
	.sys_clk(sys_clk) // Generated
);
slatch pd_from_0_to_15_inst_1
(
	.q /* OUT */ (pd_1),
	.d /* IN */ (din_1),
	.clk /* IN */ (clk),
	.en /* IN */ (pit0),
	.sys_clk(sys_clk) // Generated
);
slatch pd_from_0_to_15_inst_2
(
	.q /* OUT */ (pd_2),
	.d /* IN */ (din_2),
	.clk /* IN */ (clk),
	.en /* IN */ (pit0),
	.sys_clk(sys_clk) // Generated
);
slatch pd_from_0_to_15_inst_3
(
	.q /* OUT */ (pd_3),
	.d /* IN */ (din_3),
	.clk /* IN */ (clk),
	.en /* IN */ (pit0),
	.sys_clk(sys_clk) // Generated
);
slatch pd_from_0_to_15_inst_4
(
	.q /* OUT */ (pd_4),
	.d /* IN */ (din_4),
	.clk /* IN */ (clk),
	.en /* IN */ (pit0),
	.sys_clk(sys_clk) // Generated
);
slatch pd_from_0_to_15_inst_5
(
	.q /* OUT */ (pd_5),
	.d /* IN */ (din_5),
	.clk /* IN */ (clk),
	.en /* IN */ (pit0),
	.sys_clk(sys_clk) // Generated
);
slatch pd_from_0_to_15_inst_6
(
	.q /* OUT */ (pd_6),
	.d /* IN */ (din_6),
	.clk /* IN */ (clk),
	.en /* IN */ (pit0),
	.sys_clk(sys_clk) // Generated
);
slatch pd_from_0_to_15_inst_7
(
	.q /* OUT */ (pd_7),
	.d /* IN */ (din_7),
	.clk /* IN */ (clk),
	.en /* IN */ (pit0),
	.sys_clk(sys_clk) // Generated
);
slatch pd_from_0_to_15_inst_8
(
	.q /* OUT */ (pd_8),
	.d /* IN */ (din_8),
	.clk /* IN */ (clk),
	.en /* IN */ (pit0),
	.sys_clk(sys_clk) // Generated
);
slatch pd_from_0_to_15_inst_9
(
	.q /* OUT */ (pd_9),
	.d /* IN */ (din_9),
	.clk /* IN */ (clk),
	.en /* IN */ (pit0),
	.sys_clk(sys_clk) // Generated
);
slatch pd_from_0_to_15_inst_10
(
	.q /* OUT */ (pd_10),
	.d /* IN */ (din_10),
	.clk /* IN */ (clk),
	.en /* IN */ (pit0),
	.sys_clk(sys_clk) // Generated
);
slatch pd_from_0_to_15_inst_11
(
	.q /* OUT */ (pd_11),
	.d /* IN */ (din_11),
	.clk /* IN */ (clk),
	.en /* IN */ (pit0),
	.sys_clk(sys_clk) // Generated
);
slatch pd_from_0_to_15_inst_12
(
	.q /* OUT */ (pd_12),
	.d /* IN */ (din_12),
	.clk /* IN */ (clk),
	.en /* IN */ (pit0),
	.sys_clk(sys_clk) // Generated
);
slatch pd_from_0_to_15_inst_13
(
	.q /* OUT */ (pd_13),
	.d /* IN */ (din_13),
	.clk /* IN */ (clk),
	.en /* IN */ (pit0),
	.sys_clk(sys_clk) // Generated
);
slatch pd_from_0_to_15_inst_14
(
	.q /* OUT */ (pd_14),
	.d /* IN */ (din_14),
	.clk /* IN */ (clk),
	.en /* IN */ (pit0),
	.sys_clk(sys_clk) // Generated
);
slatch pd_from_0_to_15_inst_15
(
	.q /* OUT */ (pd_15),
	.d /* IN */ (din_15),
	.clk /* IN */ (clk),
	.en /* IN */ (pit0),
	.sys_clk(sys_clk) // Generated
);

// MISC.NET (114) - td[0-15] : ldp1q
ldp1q td_from_0_to_15_inst_0
(
	.q /* OUT */ (td_0),
	.d /* IN */ (din_0),
	.g /* IN */ (pit1),
	.sys_clk(sys_clk) // Generated
);
ldp1q td_from_0_to_15_inst_1
(
	.q /* OUT */ (td_1),
	.d /* IN */ (din_1),
	.g /* IN */ (pit1),
	.sys_clk(sys_clk) // Generated
);
ldp1q td_from_0_to_15_inst_2
(
	.q /* OUT */ (td_2),
	.d /* IN */ (din_2),
	.g /* IN */ (pit1),
	.sys_clk(sys_clk) // Generated
);
ldp1q td_from_0_to_15_inst_3
(
	.q /* OUT */ (td_3),
	.d /* IN */ (din_3),
	.g /* IN */ (pit1),
	.sys_clk(sys_clk) // Generated
);
ldp1q td_from_0_to_15_inst_4
(
	.q /* OUT */ (td_4),
	.d /* IN */ (din_4),
	.g /* IN */ (pit1),
	.sys_clk(sys_clk) // Generated
);
ldp1q td_from_0_to_15_inst_5
(
	.q /* OUT */ (td_5),
	.d /* IN */ (din_5),
	.g /* IN */ (pit1),
	.sys_clk(sys_clk) // Generated
);
ldp1q td_from_0_to_15_inst_6
(
	.q /* OUT */ (td_6),
	.d /* IN */ (din_6),
	.g /* IN */ (pit1),
	.sys_clk(sys_clk) // Generated
);
ldp1q td_from_0_to_15_inst_7
(
	.q /* OUT */ (td_7),
	.d /* IN */ (din_7),
	.g /* IN */ (pit1),
	.sys_clk(sys_clk) // Generated
);
ldp1q td_from_0_to_15_inst_8
(
	.q /* OUT */ (td_8),
	.d /* IN */ (din_8),
	.g /* IN */ (pit1),
	.sys_clk(sys_clk) // Generated
);
ldp1q td_from_0_to_15_inst_9
(
	.q /* OUT */ (td_9),
	.d /* IN */ (din_9),
	.g /* IN */ (pit1),
	.sys_clk(sys_clk) // Generated
);
ldp1q td_from_0_to_15_inst_10
(
	.q /* OUT */ (td_10),
	.d /* IN */ (din_10),
	.g /* IN */ (pit1),
	.sys_clk(sys_clk) // Generated
);
ldp1q td_from_0_to_15_inst_11
(
	.q /* OUT */ (td_11),
	.d /* IN */ (din_11),
	.g /* IN */ (pit1),
	.sys_clk(sys_clk) // Generated
);
ldp1q td_from_0_to_15_inst_12
(
	.q /* OUT */ (td_12),
	.d /* IN */ (din_12),
	.g /* IN */ (pit1),
	.sys_clk(sys_clk) // Generated
);
ldp1q td_from_0_to_15_inst_13
(
	.q /* OUT */ (td_13),
	.d /* IN */ (din_13),
	.g /* IN */ (pit1),
	.sys_clk(sys_clk) // Generated
);
ldp1q td_from_0_to_15_inst_14
(
	.q /* OUT */ (td_14),
	.d /* IN */ (din_14),
	.g /* IN */ (pit1),
	.sys_clk(sys_clk) // Generated
);
ldp1q td_from_0_to_15_inst_15
(
	.q /* OUT */ (td_15),
	.d /* IN */ (din_15),
	.g /* IN */ (pit1),
	.sys_clk(sys_clk) // Generated
);

// MISC.NET (118) - ten0 : or8
assign ten0 = pd_0 | pd_1 | pd_2 | pd_3 | pd_4 | pd_5 | pd_6 | pd_7;

// MISC.NET (119) - ten1 : or8
assign ten1 = pd_8 | pd_9 | pd_10 | pd_11 | pd_12 | pd_13 | pd_14 | pd_15;

// MISC.NET (120) - ten : or2
assign ten = ten0 | ten1;

// MISC.NET (121) - presl : an2u
assign presl = ten & resetl;

// MISC.NET (125) - tp[0] : dncnt
dncnt tp_index_0_inst
(
	.q /* OUT */ (tp_0),
	.co /* OUT */ (tpco_0),
	.d /* IN */ (pd_0),
	.clk /* IN */ (clk),
	.ci /* IN */ (ten),
	.ld /* IN */ (tpld),
	.resl /* IN */ (presl),
	.sys_clk(sys_clk) // Generated
);

// MISC.NET (126) - tp[1-7] : dncnt
dncnt tp_from_1_to_7_inst_0
(
	.q /* OUT */ (tp_1),
	.co /* OUT */ (tpco_1),
	.d /* IN */ (pd_1),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco_0),
	.ld /* IN */ (tpld),
	.resl /* IN */ (presl),
	.sys_clk(sys_clk) // Generated
);
dncnt tp_from_1_to_7_inst_1
(
	.q /* OUT */ (tp_2),
	.co /* OUT */ (tpco_2),
	.d /* IN */ (pd_2),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco_1),
	.ld /* IN */ (tpld),
	.resl /* IN */ (presl),
	.sys_clk(sys_clk) // Generated
);
dncnt tp_from_1_to_7_inst_2
(
	.q /* OUT */ (tp_3),
	.co /* OUT */ (tpco_3),
	.d /* IN */ (pd_3),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco_2),
	.ld /* IN */ (tpld),
	.resl /* IN */ (presl),
	.sys_clk(sys_clk) // Generated
);
dncnt tp_from_1_to_7_inst_3
(
	.q /* OUT */ (tp_4),
	.co /* OUT */ (tpco_4),
	.d /* IN */ (pd_4),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco_3),
	.ld /* IN */ (tpld),
	.resl /* IN */ (presl),
	.sys_clk(sys_clk) // Generated
);
dncnt tp_from_1_to_7_inst_4
(
	.q /* OUT */ (tp_5),
	.co /* OUT */ (tpco_5),
	.d /* IN */ (pd_5),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco_4),
	.ld /* IN */ (tpld),
	.resl /* IN */ (presl),
	.sys_clk(sys_clk) // Generated
);
dncnt tp_from_1_to_7_inst_5
(
	.q /* OUT */ (tp_6),
	.co /* OUT */ (tpco_6),
	.d /* IN */ (pd_6),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco_5),
	.ld /* IN */ (tpld),
	.resl /* IN */ (presl),
	.sys_clk(sys_clk) // Generated
);
dncnt tp_from_1_to_7_inst_6
(
	.q /* OUT */ (tp_7),
	.co /* OUT */ (tpco_7),
	.d /* IN */ (pd_7),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco_6),
	.ld /* IN */ (tpld),
	.resl /* IN */ (presl),
	.sys_clk(sys_clk) // Generated
);

// MISC.NET (127) - tp[8] : dncnt
dncnt tp_index_8_inst
(
	.q /* OUT */ (tp_8),
	.co /* OUT */ (tpco_8),
	.d /* IN */ (pd_8),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpc8),
	.ld /* IN */ (tpld),
	.resl /* IN */ (presl),
	.sys_clk(sys_clk) // Generated
);

// MISC.NET (128) - tp[9-15] : dncnt
dncnt tp_from_9_to_15_inst_0
(
	.q /* OUT */ (tp_9),
	.co /* OUT */ (tpco_9),
	.d /* IN */ (pd_9),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco_8),
	.ld /* IN */ (tpld),
	.resl /* IN */ (presl),
	.sys_clk(sys_clk) // Generated
);
dncnt tp_from_9_to_15_inst_1
(
	.q /* OUT */ (tp_10),
	.co /* OUT */ (tpco_10),
	.d /* IN */ (pd_10),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco_9),
	.ld /* IN */ (tpld),
	.resl /* IN */ (presl),
	.sys_clk(sys_clk) // Generated
);
dncnt tp_from_9_to_15_inst_2
(
	.q /* OUT */ (tp_11),
	.co /* OUT */ (tpco_11),
	.d /* IN */ (pd_11),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco_10),
	.ld /* IN */ (tpld),
	.resl /* IN */ (presl),
	.sys_clk(sys_clk) // Generated
);
dncnt tp_from_9_to_15_inst_3
(
	.q /* OUT */ (tp_12),
	.co /* OUT */ (tpco_12),
	.d /* IN */ (pd_12),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco_11),
	.ld /* IN */ (tpld),
	.resl /* IN */ (presl),
	.sys_clk(sys_clk) // Generated
);
dncnt tp_from_9_to_15_inst_4
(
	.q /* OUT */ (tp_13),
	.co /* OUT */ (tpco_13),
	.d /* IN */ (pd_13),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco_12),
	.ld /* IN */ (tpld),
	.resl /* IN */ (presl),
	.sys_clk(sys_clk) // Generated
);
dncnt tp_from_9_to_15_inst_5
(
	.q /* OUT */ (tp_14),
	.co /* OUT */ (tpco_14),
	.d /* IN */ (pd_14),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco_13),
	.ld /* IN */ (tpld),
	.resl /* IN */ (presl),
	.sys_clk(sys_clk) // Generated
);
dncnt tp_from_9_to_15_inst_6
(
	.q /* OUT */ (tp_15),
	.co /* OUT */ (tpco_15),
	.d /* IN */ (pd_15),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpco_14),
	.ld /* IN */ (tpld),
	.resl /* IN */ (presl),
	.sys_clk(sys_clk) // Generated
);

// MISC.NET (129) - tpu[0-15] : dummy

// MISC.NET (130) - tpco[7] : dummy

// MISC.NET (131) - tpco[15] : dummy

// MISC.NET (132) - tplac0 : nr8
assign tplac0 = ~(tp_0 | tp_1 | tp_2 | tp_3 | tp_4 | tp_5 | tp_6 | tp_7);

// MISC.NET (133) - tplac1 : nr8
assign tplac1 = ~(tp_8 | tp_9 | tp_10 | tp_11 | tp_12 | tp_13 | tp_14 | tp_15);

// MISC.NET (134) - tpc8 : an2
assign tpc8 = tplac0 & ten;

// MISC.NET (135) - tpc16 : an3
assign tpc16 = tplac0 & tplac1 & ten;

// MISC.NET (137) - tpldi : nr2
assign tpldi = ~(tpc16 | pit0w);

// MISC.NET (138) - tpld : ivh
assign tpld = ~tpldi;

// MISC.NET (140) - dtp[0-15] : ts
assign ts_pe_560_a1_out = tp_0;
assign ts_pe_560_a1_oe = pit0r;
assign ts_pe_561_a1_out = tp_1;
assign ts_pe_561_a1_oe = pit0r;
assign ts_pe_562_a1_out = tp_2;
assign ts_pe_562_a1_oe = pit0r;
assign ts_pe_563_a1_out = tp_3;
assign ts_pe_563_a1_oe = pit0r;
assign ts_pe_564_a1_out = tp_4;
assign ts_pe_564_a1_oe = pit0r;
assign ts_pe_565_a1_out = tp_5;
assign ts_pe_565_a1_oe = pit0r;
assign ts_pe_566_a1_out = tp_6;
assign ts_pe_566_a1_oe = pit0r;
assign ts_pe_567_a1_out = tp_7;
assign ts_pe_567_a1_oe = pit0r;
assign ts_pe_568_a1_out = tp_8;
assign ts_pe_568_a1_oe = pit0r;
assign ts_pe_569_a1_out = tp_9;
assign ts_pe_569_a1_oe = pit0r;
assign ts_pe_570_a1_out = tp_10;
assign ts_pe_570_a1_oe = pit0r;
assign ts_pe_571_a1_out = tp_11;
assign ts_pe_571_a1_oe = pit0r;
assign ts_pe_572_a1_out = tp_12;
assign ts_pe_572_a1_oe = pit0r;
assign ts_pe_573_a1_out = tp_13;
assign ts_pe_573_a1_oe = pit0r;
assign ts_pe_574_a1_out = tp_14;
assign ts_pe_574_a1_oe = pit0r;
assign ts_pe_575_a1_out = tp_15;
assign ts_pe_575_a1_oe = pit0r;

// MISC.NET (144) - t[0] : dncnt
dncnt t_index_0_inst
(
	.q /* OUT */ (t_0),
	.co /* OUT */ (tco_0),
	.d /* IN */ (td_0),
	.clk /* IN */ (clk),
	.ci /* IN */ (tpc16),
	.ld /* IN */ (tld),
	.resl /* IN */ (presl),
	.sys_clk(sys_clk) // Generated
);

// MISC.NET (145) - t[1-7] : dncnt
dncnt t_from_1_to_7_inst_0
(
	.q /* OUT */ (t_1),
	.co /* OUT */ (tco_1),
	.d /* IN */ (td_1),
	.clk /* IN */ (clk),
	.ci /* IN */ (tco_0),
	.ld /* IN */ (tld),
	.resl /* IN */ (presl),
	.sys_clk(sys_clk) // Generated
);
dncnt t_from_1_to_7_inst_1
(
	.q /* OUT */ (t_2),
	.co /* OUT */ (tco_2),
	.d /* IN */ (td_2),
	.clk /* IN */ (clk),
	.ci /* IN */ (tco_1),
	.ld /* IN */ (tld),
	.resl /* IN */ (presl),
	.sys_clk(sys_clk) // Generated
);
dncnt t_from_1_to_7_inst_2
(
	.q /* OUT */ (t_3),
	.co /* OUT */ (tco_3),
	.d /* IN */ (td_3),
	.clk /* IN */ (clk),
	.ci /* IN */ (tco_2),
	.ld /* IN */ (tld),
	.resl /* IN */ (presl),
	.sys_clk(sys_clk) // Generated
);
dncnt t_from_1_to_7_inst_3
(
	.q /* OUT */ (t_4),
	.co /* OUT */ (tco_4),
	.d /* IN */ (td_4),
	.clk /* IN */ (clk),
	.ci /* IN */ (tco_3),
	.ld /* IN */ (tld),
	.resl /* IN */ (presl),
	.sys_clk(sys_clk) // Generated
);
dncnt t_from_1_to_7_inst_4
(
	.q /* OUT */ (t_5),
	.co /* OUT */ (tco_5),
	.d /* IN */ (td_5),
	.clk /* IN */ (clk),
	.ci /* IN */ (tco_4),
	.ld /* IN */ (tld),
	.resl /* IN */ (presl),
	.sys_clk(sys_clk) // Generated
);
dncnt t_from_1_to_7_inst_5
(
	.q /* OUT */ (t_6),
	.co /* OUT */ (tco_6),
	.d /* IN */ (td_6),
	.clk /* IN */ (clk),
	.ci /* IN */ (tco_5),
	.ld /* IN */ (tld),
	.resl /* IN */ (presl),
	.sys_clk(sys_clk) // Generated
);
dncnt t_from_1_to_7_inst_6
(
	.q /* OUT */ (t_7),
	.co /* OUT */ (tco_7),
	.d /* IN */ (td_7),
	.clk /* IN */ (clk),
	.ci /* IN */ (tco_6),
	.ld /* IN */ (tld),
	.resl /* IN */ (presl),
	.sys_clk(sys_clk) // Generated
);

// MISC.NET (146) - t[8] : dncnt
dncnt t_index_8_inst
(
	.q /* OUT */ (t_8),
	.co /* OUT */ (tco_8),
	.d /* IN */ (td_8),
	.clk /* IN */ (clk),
	.ci /* IN */ (tc8),
	.ld /* IN */ (tld),
	.resl /* IN */ (presl),
	.sys_clk(sys_clk) // Generated
);

// MISC.NET (147) - t[9-15] : dncnt
dncnt t_from_9_to_15_inst_0
(
	.q /* OUT */ (t_9),
	.co /* OUT */ (tco_9),
	.d /* IN */ (td_9),
	.clk /* IN */ (clk),
	.ci /* IN */ (tco_8),
	.ld /* IN */ (tld),
	.resl /* IN */ (presl),
	.sys_clk(sys_clk) // Generated
);
dncnt t_from_9_to_15_inst_1
(
	.q /* OUT */ (t_10),
	.co /* OUT */ (tco_10),
	.d /* IN */ (td_10),
	.clk /* IN */ (clk),
	.ci /* IN */ (tco_9),
	.ld /* IN */ (tld),
	.resl /* IN */ (presl),
	.sys_clk(sys_clk) // Generated
);
dncnt t_from_9_to_15_inst_2
(
	.q /* OUT */ (t_11),
	.co /* OUT */ (tco_11),
	.d /* IN */ (td_11),
	.clk /* IN */ (clk),
	.ci /* IN */ (tco_10),
	.ld /* IN */ (tld),
	.resl /* IN */ (presl),
	.sys_clk(sys_clk) // Generated
);
dncnt t_from_9_to_15_inst_3
(
	.q /* OUT */ (t_12),
	.co /* OUT */ (tco_12),
	.d /* IN */ (td_12),
	.clk /* IN */ (clk),
	.ci /* IN */ (tco_11),
	.ld /* IN */ (tld),
	.resl /* IN */ (presl),
	.sys_clk(sys_clk) // Generated
);
dncnt t_from_9_to_15_inst_4
(
	.q /* OUT */ (t_13),
	.co /* OUT */ (tco_13),
	.d /* IN */ (td_13),
	.clk /* IN */ (clk),
	.ci /* IN */ (tco_12),
	.ld /* IN */ (tld),
	.resl /* IN */ (presl),
	.sys_clk(sys_clk) // Generated
);
dncnt t_from_9_to_15_inst_5
(
	.q /* OUT */ (t_14),
	.co /* OUT */ (tco_14),
	.d /* IN */ (td_14),
	.clk /* IN */ (clk),
	.ci /* IN */ (tco_13),
	.ld /* IN */ (tld),
	.resl /* IN */ (presl),
	.sys_clk(sys_clk) // Generated
);
dncnt t_from_9_to_15_inst_6
(
	.q /* OUT */ (t_15),
	.co /* OUT */ (tco_15),
	.d /* IN */ (td_15),
	.clk /* IN */ (clk),
	.ci /* IN */ (tco_14),
	.ld /* IN */ (tld),
	.resl /* IN */ (presl),
	.sys_clk(sys_clk) // Generated
);

// MISC.NET (148) - tu[0-15] : dummy

// MISC.NET (149) - tco[7] : dummy

// MISC.NET (150) - tco[15] : dummy

// MISC.NET (151) - tlac0 : nr8
assign tlac0 = ~(t_0 | t_1 | t_2 | t_3 | t_4 | t_5 | t_6 | t_7);

// MISC.NET (152) - tlac1 : nr8
assign tlac1 = ~(t_8 | t_9 | t_10 | t_11 | t_12 | t_13 | t_14 | t_15);

// MISC.NET (153) - tc8 : an2
assign tc8 = tlac0 & tpc16;

// MISC.NET (154) - tc16 : an3
assign tc16 = tlac0 & tlac1 & tpc16;

// MISC.NET (155) - tldi : nr2
assign tldi = ~(tc16 | pit1w);

// MISC.NET (156) - tld : ivh
assign tld = ~tldi;

// MISC.NET (158) - dt[0-15] : ts
assign ts_pe_560_a2_out = t_0;
assign ts_pe_560_a2_oe = pit1r;
assign ts_pe_561_a2_out = t_1;
assign ts_pe_561_a2_oe = pit1r;
assign ts_pe_562_a2_out = t_2;
assign ts_pe_562_a2_oe = pit1r;
assign ts_pe_563_a2_out = t_3;
assign ts_pe_563_a2_oe = pit1r;
assign ts_pe_564_a2_out = t_4;
assign ts_pe_564_a2_oe = pit1r;
assign ts_pe_565_a2_out = t_5;
assign ts_pe_565_a2_oe = pit1r;
assign ts_pe_566_a2_out = t_6;
assign ts_pe_566_a2_oe = pit1r;
assign ts_pe_567_a2_out = t_7;
assign ts_pe_567_a2_oe = pit1r;
assign ts_pe_568_a2_out = t_8;
assign ts_pe_568_a2_oe = pit1r;
assign ts_pe_569_a2_out = t_9;
assign ts_pe_569_a2_oe = pit1r;
assign ts_pe_570_a2_out = t_10;
assign ts_pe_570_a2_oe = pit1r;
assign ts_pe_571_a2_out = t_11;
assign ts_pe_571_a2_oe = pit1r;
assign ts_pe_572_a2_out = t_12;
assign ts_pe_572_a2_oe = pit1r;
assign ts_pe_573_a2_out = t_13;
assign ts_pe_573_a2_oe = pit1r;
assign ts_pe_574_a2_out = t_14;
assign ts_pe_574_a2_oe = pit1r;
assign ts_pe_575_a2_out = t_15;
assign ts_pe_575_a2_oe = pit1r;

// MISC.NET (160) - tint : niv
assign tint_obuf = tc16;

// MISC.NET (162) - tp : join
assign tp[0] = tp_0;
assign tp[1] = tp_1;
assign tp[2] = tp_2;
assign tp[3] = tp_3;
assign tp[4] = tp_4;
assign tp[5] = tp_5;
assign tp[6] = tp_6;
assign tp[7] = tp_7;
assign tp[8] = tp_8;
assign tp[9] = tp_9;
assign tp[10] = tp_10;
assign tp[11] = tp_11;
assign tp[12] = tp_12;
assign tp[13] = tp_13;
assign tp[14] = tp_14;
assign tp[15] = tp_15;

// MISC.NET (163) - t : join
assign t[0] = t_0;
assign t[1] = t_1;
assign t[2] = t_2;
assign t[3] = t_3;
assign t[4] = t_4;
assign t[5] = t_5;
assign t[6] = t_6;
assign t[7] = t_7;
assign t[8] = t_8;
assign t[9] = t_9;
assign t[10] = t_10;
assign t[11] = t_11;
assign t[12] = t_12;
assign t[13] = t_13;
assign t[14] = t_14;
assign t[15] = t_15;

// MISC.NET (164) - rc : join
assign rc[0] = rc_0;
assign rc[1] = rc_1;
assign rc[2] = rc_2;
assign rc[3] = rc_3;

// MISC.NET (165) - tpu : dummy

// MISC.NET (166) - tu : dummy

// MISC.NET (167) - rcu : dummy

// MISC.NET (175) - ps[0] : upcnt1
upcnt1 ps_index_0_inst
(
	.q /* OUT */ (ps_0),
	.co /* OUT */ (psco_0),
	.clk /* IN */ (clk),
	.ci /* IN */ (vcc),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MISC.NET (176) - ps[1-5] : upcnt1
upcnt1 ps_from_1_to_5_inst_0
(
	.q /* OUT */ (ps_1),
	.co /* OUT */ (psco_1),
	.clk /* IN */ (clk),
	.ci /* IN */ (psco_0),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
upcnt1 ps_from_1_to_5_inst_1
(
	.q /* OUT */ (ps_2),
	.co /* OUT */ (psco_2),
	.clk /* IN */ (clk),
	.ci /* IN */ (psco_1),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
upcnt1 ps_from_1_to_5_inst_2
(
	.q /* OUT */ (ps_3),
	.co /* OUT */ (psco_3),
	.clk /* IN */ (clk),
	.ci /* IN */ (psco_2),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
upcnt1 ps_from_1_to_5_inst_3
(
	.q /* OUT */ (ps_4),
	.co /* OUT */ (psco_4),
	.clk /* IN */ (clk),
	.ci /* IN */ (psco_3),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
upcnt1 ps_from_1_to_5_inst_4
(
	.q /* OUT */ (ps_5),
	.co /* OUT */ (psco_5),
	.clk /* IN */ (clk),
	.ci /* IN */ (psco_4),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MISC.NET (177) - pen : an6
assign pen = ps_0 & ps_1 & ps_2 & ps_3 & ps_4 & ps_5;

// MISC.NET (178) - psco[5] : dummy

// MISC.NET (195) - rq : fd2q
fd2q rq_inst
(
	.q /* OUT */ (rq),
	.d /* IN */ (d0),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MISC.NET (197) - d00 : nd2
assign d00 = ~(notrq & full);

// MISC.NET (198) - d01 : nd3
assign d01 = ~(notrq & startref & notempty);

// MISC.NET (199) - d02 : nd2
assign d02 = ~(rq & notempty);

// MISC.NET (200) - d0 : nd3
assign d0 = ~(d00 & d01 & d02);

// MISC.NET (202) - refbreq : an2
assign refreq_obuf = rq & notempty;

// MISC.NET (203) - mreq : ts
assign mreq_out = refreq_obuf;
assign mreq_oe = refback;

// MISC.NET (205) - decl : nd2
assign decl = ~(refack & mreq_in);

// MISC.NET (206) - dec : iv
assign dec = ~decl;

// MISC.NET (215) - rpcen : or2
assign rpcen = pen | tcount;

// MISC.NET (217) - rp[0] : dncnt
dncnt rp_index_0_inst
(
	.q /* OUT */ (rp_0),
	.co /* OUT */ (rpc_0),
	.d /* IN */ (refrate_0),
	.clk /* IN */ (clk),
	.ci /* IN */ (rpcen),
	.ld /* IN */ (lrpc),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MISC.NET (218) - rp[1-3] : dncnt
dncnt rp_from_1_to_3_inst_0
(
	.q /* OUT */ (rp_1),
	.co /* OUT */ (rpc_1),
	.d /* IN */ (refrate_1),
	.clk /* IN */ (clk),
	.ci /* IN */ (rpc_0),
	.ld /* IN */ (lrpc),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
dncnt rp_from_1_to_3_inst_1
(
	.q /* OUT */ (rp_2),
	.co /* OUT */ (rpc_2),
	.d /* IN */ (refrate_2),
	.clk /* IN */ (clk),
	.ci /* IN */ (rpc_1),
	.ld /* IN */ (lrpc),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
dncnt rp_from_1_to_3_inst_2
(
	.q /* OUT */ (rp_3),
	.co /* OUT */ (rpc_3),
	.d /* IN */ (refrate_3),
	.clk /* IN */ (clk),
	.ci /* IN */ (rpc_2),
	.ld /* IN */ (lrpc),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MISC.NET (219) - rpd[0-3] : dummy

// MISC.NET (220) - rpc[3] : dummy

// MISC.NET (222) - rpl[0-3] : iv
assign rpl_0 = ~rp_0;
assign rpl_1 = ~rp_1;
assign rpl_2 = ~rp_2;
assign rpl_3 = ~rp_3;

// MISC.NET (223) - lrpcl : nd6
assign lrpcl = ~(rpl_0 & rpl_1 & rpl_2 & rpl_3 & rpcen & vcc);

// MISC.NET (224) - lrpc : ivh
assign lrpc = ~lrpcl;

// MISC.NET (228) - rpenl : nr4p
assign rpenl = ~(refrate_0 | refrate_1 | refrate_2 | refrate_3);

// MISC.NET (229) - rpen : iv
assign rpen = ~rpenl;

// MISC.NET (237) - rc[0] : udcnt1
udcnt1 rc_index_0_inst
(
	.q /* OUT */ (rc_0),
	.co /* OUT */ (rcc_0),
	.clk /* IN */ (clk),
	.ci /* IN */ (refcount),
	.up /* IN */ (lrpc),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MISC.NET (238) - rc[1-3] : udcnt1
udcnt1 rc_from_1_to_3_inst_0
(
	.q /* OUT */ (rc_1),
	.co /* OUT */ (rcc_1),
	.clk /* IN */ (clk),
	.ci /* IN */ (rcc_0),
	.up /* IN */ (lrpc),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
udcnt1 rc_from_1_to_3_inst_1
(
	.q /* OUT */ (rc_2),
	.co /* OUT */ (rcc_2),
	.clk /* IN */ (clk),
	.ci /* IN */ (rcc_1),
	.up /* IN */ (lrpc),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
udcnt1 rc_from_1_to_3_inst_2
(
	.q /* OUT */ (rc_3),
	.co /* OUT */ (rcc_3),
	.clk /* IN */ (clk),
	.ci /* IN */ (rcc_2),
	.up /* IN */ (lrpc),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// MISC.NET (239) - rcc[3] : dummy

// MISC.NET (245) - drc[0-3] : ts
assign ts_pe_572_a3_out = rc_0;
assign ts_pe_572_a3_oe = test3r;
assign ts_pe_573_a3_out = rc_1;
assign ts_pe_573_a3_oe = test3r;
assign ts_pe_574_a3_out = rc_2;
assign ts_pe_574_a3_oe = test3r;
assign ts_pe_575_a3_out = rc_3;
assign ts_pe_575_a3_oe = test3r;

// MISC.NET (247) - rfc0 : nd3
assign rfc0 = ~(lrpc & rpen & decl);

// MISC.NET (248) - rfc1 : nd2
assign rfc1 = ~(lrpcl & dec);

// MISC.NET (249) - rfc2 : nd2
assign rfc2 = ~(rpenl & dec);

// MISC.NET (250) - refcount : nd3
assign refcount = ~(rfc0 & rfc1 & rfc2);

// MISC.NET (252) - full : niv
assign full = rc_3;

// MISC.NET (253) - notempty : or4
assign notempty = rc_0 | rc_1 | rc_2 | rc_3;

// MISC.NET (255) - notrefack : nd2
assign notrefack = ~(refback & ack);

// MISC.NET (256) - refack : iv
assign refack = ~notrefack;

// MISC.NET (258) - notrq : iv
assign notrq = ~rq;

// --- Compiler-generated PE for BUS dr[0]
assign dr_0_out = (ts_pe_560_a0_oe & ts_pe_560_a0_out ) | (ts_pe_560_a1_oe & ts_pe_560_a1_out ) | (ts_pe_560_a2_oe & ts_pe_560_a2_out ) | 1'b0;
assign dr_0_oe = ts_pe_560_a0_oe | ts_pe_560_a1_oe | ts_pe_560_a2_oe;
assign ts_pe_560_a0_in = dr_0_in;
assign ts_pe_560_a1_in = dr_0_in;
assign ts_pe_560_a2_in = dr_0_in;

// --- Compiler-generated PE for BUS dr[1]
assign dr_1_out = (ts_pe_561_a0_oe & ts_pe_561_a0_out ) | (ts_pe_561_a1_oe & ts_pe_561_a1_out ) | (ts_pe_561_a2_oe & ts_pe_561_a2_out ) | 1'b0;
assign dr_1_oe = ts_pe_561_a0_oe | ts_pe_561_a1_oe | ts_pe_561_a2_oe;
assign ts_pe_561_a0_in = dr_1_in;
assign ts_pe_561_a1_in = dr_1_in;
assign ts_pe_561_a2_in = dr_1_in;

// --- Compiler-generated PE for BUS dr[2]
assign dr_2_out = (ts_pe_562_a0_oe & ts_pe_562_a0_out ) | (ts_pe_562_a1_oe & ts_pe_562_a1_out ) | (ts_pe_562_a2_oe & ts_pe_562_a2_out ) | 1'b0;
assign dr_2_oe = ts_pe_562_a0_oe | ts_pe_562_a1_oe | ts_pe_562_a2_oe;
assign ts_pe_562_a0_in = dr_2_in;
assign ts_pe_562_a1_in = dr_2_in;
assign ts_pe_562_a2_in = dr_2_in;

// --- Compiler-generated PE for BUS dr[3]
assign dr_3_out = (ts_pe_563_a0_oe & ts_pe_563_a0_out ) | (ts_pe_563_a1_oe & ts_pe_563_a1_out ) | (ts_pe_563_a2_oe & ts_pe_563_a2_out ) | 1'b0;
assign dr_3_oe = ts_pe_563_a0_oe | ts_pe_563_a1_oe | ts_pe_563_a2_oe;
assign ts_pe_563_a0_in = dr_3_in;
assign ts_pe_563_a1_in = dr_3_in;
assign ts_pe_563_a2_in = dr_3_in;

// --- Compiler-generated PE for BUS dr[4]
assign dr_4_out = (ts_pe_564_a0_oe & ts_pe_564_a0_out ) | (ts_pe_564_a1_oe & ts_pe_564_a1_out ) | (ts_pe_564_a2_oe & ts_pe_564_a2_out ) | 1'b0;
assign dr_4_oe = ts_pe_564_a0_oe | ts_pe_564_a1_oe | ts_pe_564_a2_oe;
assign ts_pe_564_a0_in = dr_4_in;
assign ts_pe_564_a1_in = dr_4_in;
assign ts_pe_564_a2_in = dr_4_in;

// --- Compiler-generated PE for BUS dr[5]
assign dr_5_out = (ts_pe_565_a0_oe & ts_pe_565_a0_out ) | (ts_pe_565_a1_oe & ts_pe_565_a1_out ) | (ts_pe_565_a2_oe & ts_pe_565_a2_out ) | 1'b0;
assign dr_5_oe = ts_pe_565_a0_oe | ts_pe_565_a1_oe | ts_pe_565_a2_oe;
assign ts_pe_565_a0_in = dr_5_in;
assign ts_pe_565_a1_in = dr_5_in;
assign ts_pe_565_a2_in = dr_5_in;

// --- Compiler-generated PE for BUS dr[6]
assign dr_6_out = (ts_pe_566_a0_oe & ts_pe_566_a0_out ) | (ts_pe_566_a1_oe & ts_pe_566_a1_out ) | (ts_pe_566_a2_oe & ts_pe_566_a2_out ) | 1'b0;
assign dr_6_oe = ts_pe_566_a0_oe | ts_pe_566_a1_oe | ts_pe_566_a2_oe;
assign ts_pe_566_a0_in = dr_6_in;
assign ts_pe_566_a1_in = dr_6_in;
assign ts_pe_566_a2_in = dr_6_in;

// --- Compiler-generated PE for BUS dr[7]
assign dr_7_out = (ts_pe_567_a0_oe & ts_pe_567_a0_out ) | (ts_pe_567_a1_oe & ts_pe_567_a1_out ) | (ts_pe_567_a2_oe & ts_pe_567_a2_out ) | 1'b0;
assign dr_7_oe = ts_pe_567_a0_oe | ts_pe_567_a1_oe | ts_pe_567_a2_oe;
assign ts_pe_567_a0_in = dr_7_in;
assign ts_pe_567_a1_in = dr_7_in;
assign ts_pe_567_a2_in = dr_7_in;

// --- Compiler-generated PE for BUS dr[8]
assign dr_8_out = (ts_pe_568_a0_oe & ts_pe_568_a0_out ) | (ts_pe_568_a1_oe & ts_pe_568_a1_out ) | (ts_pe_568_a2_oe & ts_pe_568_a2_out ) | 1'b0;
assign dr_8_oe = ts_pe_568_a0_oe | ts_pe_568_a1_oe | ts_pe_568_a2_oe;
assign ts_pe_568_a0_in = dr_8_in;
assign ts_pe_568_a1_in = dr_8_in;
assign ts_pe_568_a2_in = dr_8_in;

// --- Compiler-generated PE for BUS dr[9]
assign dr_9_out = (ts_pe_569_a0_oe & ts_pe_569_a0_out ) | (ts_pe_569_a1_oe & ts_pe_569_a1_out ) | (ts_pe_569_a2_oe & ts_pe_569_a2_out ) | 1'b0;
assign dr_9_oe = ts_pe_569_a0_oe | ts_pe_569_a1_oe | ts_pe_569_a2_oe;
assign ts_pe_569_a0_in = dr_9_in;
assign ts_pe_569_a1_in = dr_9_in;
assign ts_pe_569_a2_in = dr_9_in;

// --- Compiler-generated PE for BUS dr[10]
assign dr_10_out = (ts_pe_570_a0_oe & ts_pe_570_a0_out ) | (ts_pe_570_a1_oe & ts_pe_570_a1_out ) | (ts_pe_570_a2_oe & ts_pe_570_a2_out ) | 1'b0;
assign dr_10_oe = ts_pe_570_a0_oe | ts_pe_570_a1_oe | ts_pe_570_a2_oe;
assign ts_pe_570_a0_in = dr_10_in;
assign ts_pe_570_a1_in = dr_10_in;
assign ts_pe_570_a2_in = dr_10_in;

// --- Compiler-generated PE for BUS dr[11]
assign dr_11_out = (ts_pe_571_a0_oe & ts_pe_571_a0_out ) | (ts_pe_571_a1_oe & ts_pe_571_a1_out ) | (ts_pe_571_a2_oe & ts_pe_571_a2_out ) | 1'b0;
assign dr_11_oe = ts_pe_571_a0_oe | ts_pe_571_a1_oe | ts_pe_571_a2_oe;
assign ts_pe_571_a0_in = dr_11_in;
assign ts_pe_571_a1_in = dr_11_in;
assign ts_pe_571_a2_in = dr_11_in;

// --- Compiler-generated PE for BUS dr[12]
assign dr_12_out = (ts_pe_572_a0_oe & ts_pe_572_a0_out ) | (ts_pe_572_a1_oe & ts_pe_572_a1_out ) | (ts_pe_572_a2_oe & ts_pe_572_a2_out ) | (ts_pe_572_a3_oe & ts_pe_572_a3_out ) | 1'b0;
assign dr_12_oe = ts_pe_572_a0_oe | ts_pe_572_a1_oe | ts_pe_572_a2_oe | ts_pe_572_a3_oe;
assign ts_pe_572_a0_in = dr_12_in;
assign ts_pe_572_a1_in = dr_12_in;
assign ts_pe_572_a2_in = dr_12_in;
assign ts_pe_572_a3_in = dr_12_in;

// --- Compiler-generated PE for BUS dr[13]
assign dr_13_out = (ts_pe_573_a0_oe & ts_pe_573_a0_out ) | (ts_pe_573_a1_oe & ts_pe_573_a1_out ) | (ts_pe_573_a2_oe & ts_pe_573_a2_out ) | (ts_pe_573_a3_oe & ts_pe_573_a3_out ) | 1'b0;
assign dr_13_oe = ts_pe_573_a0_oe | ts_pe_573_a1_oe | ts_pe_573_a2_oe | ts_pe_573_a3_oe;
assign ts_pe_573_a0_in = dr_13_in;
assign ts_pe_573_a1_in = dr_13_in;
assign ts_pe_573_a2_in = dr_13_in;
assign ts_pe_573_a3_in = dr_13_in;

// --- Compiler-generated PE for BUS dr[14]
assign dr_14_out = (ts_pe_574_a0_oe & ts_pe_574_a0_out ) | (ts_pe_574_a1_oe & ts_pe_574_a1_out ) | (ts_pe_574_a2_oe & ts_pe_574_a2_out ) | (ts_pe_574_a3_oe & ts_pe_574_a3_out ) | 1'b0;
assign dr_14_oe = ts_pe_574_a0_oe | ts_pe_574_a1_oe | ts_pe_574_a2_oe | ts_pe_574_a3_oe;
assign ts_pe_574_a0_in = dr_14_in;
assign ts_pe_574_a1_in = dr_14_in;
assign ts_pe_574_a2_in = dr_14_in;
assign ts_pe_574_a3_in = dr_14_in;

// --- Compiler-generated PE for BUS dr[15]
assign dr_15_out = (ts_pe_575_a0_oe & ts_pe_575_a0_out ) | (ts_pe_575_a1_oe & ts_pe_575_a1_out ) | (ts_pe_575_a2_oe & ts_pe_575_a2_out ) | (ts_pe_575_a3_oe & ts_pe_575_a3_out ) | 1'b0;
assign dr_15_oe = ts_pe_575_a0_oe | ts_pe_575_a1_oe | ts_pe_575_a2_oe | ts_pe_575_a3_oe;
assign ts_pe_575_a0_in = dr_15_in;
assign ts_pe_575_a1_in = dr_15_in;
assign ts_pe_575_a2_in = dr_15_in;
assign ts_pe_575_a3_in = dr_15_in;
endmodule
/* verilator lint_on LITENDIAN */
