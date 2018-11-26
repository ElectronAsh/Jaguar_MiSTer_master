/* verilator lint_off LITENDIAN */
`include "defs.v"

module comp_ctrl
(
	output dbinh_n_0,
	output dbinh_n_1,
	output dbinh_n_2,
	output dbinh_n_3,
	output dbinh_n_4,
	output dbinh_n_5,
	output dbinh_n_6,
	output dbinh_n_7,
	output nowrite,
	input bcompen,
	input big_pix,
	input bkgwren,
	input clk,
	input dcomp_0,
	input dcomp_1,
	input dcomp_2,
	input dcomp_3,
	input dcomp_4,
	input dcomp_5,
	input dcomp_6,
	input dcomp_7,
	input dcompen,
	input icount_0,
	input icount_1,
	input icount_2,
	input pixsize_0,
	input pixsize_1,
	input pixsize_2,
	input phrase_mode,
	input srcd_0,
	input srcd_1,
	input srcd_2,
	input srcd_3,
	input srcd_4,
	input srcd_5,
	input srcd_6,
	input srcd_7,
	input step_inner,
	input zcomp_0,
	input zcomp_1,
	input zcomp_2,
	input zcomp_3,
	input sys_clk // Generated
);
wire bkgwren_n;
wire phrase_mode_n;
wire pixsize_n_0;
wire pixsize_n_1;
wire pixsize_n_2;
wire bcompselt_0;
wire bcompselt_1;
wire bcompselt_2;
wire bcompbit;
wire bcompbit_n;
wire bcompsel_0;
wire bcompsel_1;
wire bcompsel_2;
wire bcompbitpt;
wire bcompbitp;
wire bcompbitp_n;
wire nowt_0;
wire nowt_1;
wire nowt_2;
wire nowt_3;
wire nowt_4;
wire winht;
wire winhibit;
wire srcd_n_0;
wire srcd_n_1;
wire srcd_n_2;
wire srcd_n_3;
wire srcd_n_4;
wire srcd_n_5;
wire srcd_n_6;
wire srcd_n_7;
wire di0t_0;
wire di0t_1;
wire di0t_2;
wire di0t_3;
wire di0t_4;
wire di1t_0;
wire di1t_1;
wire di1t_2;
wire di2t_0;
wire di2t_1;
wire di2t_2;
wire di2t_3;
wire di2t_4;
wire di3t_0;
wire di3t_1;
wire di3t_2;
wire di4t_0;
wire di4t_1;
wire di4t_2;
wire di4t_3;
wire di4t_4;
wire di5t_0;
wire di5t_1;
wire di5t_2;
wire di6t_0;
wire di6t_1;
wire di6t_2;
wire di6t_3;
wire di6t_4;
wire di7t_0;
wire di7t_1;
wire di7t_2;

// INNER.NET (732) - bkgwren\ : iv
assign bkgwren_n = ~bkgwren;

// INNER.NET (733) - phrase_mode\ : iv
assign phrase_mode_n = ~phrase_mode;

// INNER.NET (734) - pixsize\[0-2] : ivm
assign pixsize_n_0 = ~pixsize_0;
assign pixsize_n_1 = ~pixsize_1;
assign pixsize_n_2 = ~pixsize_2;

// INNER.NET (748) - bcompselt[0-2] : eo
assign bcompselt_0 = icount_0 ^ big_pix;
assign bcompselt_1 = icount_1 ^ big_pix;
assign bcompselt_2 = icount_2 ^ big_pix;

// INNER.NET (749) - bcompbit : mx8
mx8 bcompbit_inst
(
	.z /* OUT */ (bcompbit),
	.a0 /* IN */ (srcd_7),
	.a1 /* IN */ (srcd_6),
	.a2 /* IN */ (srcd_5),
	.a3 /* IN */ (srcd_4),
	.a4 /* IN */ (srcd_3),
	.a5 /* IN */ (srcd_2),
	.a6 /* IN */ (srcd_1),
	.a7 /* IN */ (srcd_0),
	.s0 /* IN */ (bcompselt_0),
	.s1 /* IN */ (bcompselt_1),
	.s2 /* IN */ (bcompselt_2)
);

// INNER.NET (752) - bcompbit\ : iv
assign bcompbit_n = ~bcompbit;

// INNER.NET (755) - bcompsel[0-2] : fdsync
fdsync bcompsel_from_0_to_2_inst_0
(
	.q /* OUT */ (bcompsel_0),
	.d /* IN */ (bcompselt_0),
	.ld /* IN */ (step_inner),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fdsync bcompsel_from_0_to_2_inst_1
(
	.q /* OUT */ (bcompsel_1),
	.d /* IN */ (bcompselt_1),
	.ld /* IN */ (step_inner),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fdsync bcompsel_from_0_to_2_inst_2
(
	.q /* OUT */ (bcompsel_2),
	.d /* IN */ (bcompselt_2),
	.ld /* IN */ (step_inner),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// INNER.NET (757) - bcompbt : mx8
mx8 bcompbt_inst
(
	.z /* OUT */ (bcompbitpt),
	.a0 /* IN */ (srcd_7),
	.a1 /* IN */ (srcd_6),
	.a2 /* IN */ (srcd_5),
	.a3 /* IN */ (srcd_4),
	.a4 /* IN */ (srcd_3),
	.a5 /* IN */ (srcd_2),
	.a6 /* IN */ (srcd_1),
	.a7 /* IN */ (srcd_0),
	.s0 /* IN */ (bcompsel_0),
	.s1 /* IN */ (bcompsel_1),
	.s2 /* IN */ (bcompsel_2)
);

// INNER.NET (760) - bcompbitp : fd1q
fd1q bcompbitp_inst
(
	.q /* OUT */ (bcompbitp),
	.d /* IN */ (bcompbitpt),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// INNER.NET (761) - bcompbitp\ : iv
assign bcompbitp_n = ~bcompbitp;

// INNER.NET (773) - nowt0 : nd3
assign nowt_0 = ~(bcompen & bcompbit_n & phrase_mode_n);

// INNER.NET (774) - nowt1 : nd6
assign nowt_1 = ~(dcompen & dcomp_0 & phrase_mode_n & pixsize_n_2 & pixsize_0 & pixsize_1);

// INNER.NET (776) - nowt2 : nd7
assign nowt_2 = ~(dcompen & dcomp_0 & dcomp_1 & phrase_mode_n & pixsize_2 & pixsize_n_0 & pixsize_n_1);

// INNER.NET (778) - nowt3 : nd5
assign nowt_3 = ~(zcomp_0 & phrase_mode_n & pixsize_2 & pixsize_n_0 & pixsize_n_1);

// INNER.NET (780) - nowt4 : nd4
assign nowt_4 = ~(nowt_0 & nowt_1 & nowt_2 & nowt_3);

// INNER.NET (781) - nowrite : an2
assign nowrite = nowt_4 & bkgwren_n;

// INNER.NET (783) - winht : nd3
assign winht = ~(bcompen & bcompbitp_n & phrase_mode_n);

// INNER.NET (784) - winhibit : nd4
assign winhibit = ~(winht & nowt_1 & nowt_2 & nowt_3);

// INNER.NET (798) - srcd\[0-7] : iv
assign srcd_n_0 = ~srcd_0;
assign srcd_n_1 = ~srcd_1;
assign srcd_n_2 = ~srcd_2;
assign srcd_n_3 = ~srcd_3;
assign srcd_n_4 = ~srcd_4;
assign srcd_n_5 = ~srcd_5;
assign srcd_n_6 = ~srcd_6;
assign srcd_n_7 = ~srcd_7;

// INNER.NET (801) - di0t0 : nd2p
assign di0t_0 = ~(pixsize_2 & zcomp_0);

// INNER.NET (802) - di0t1 : nd4p
assign di0t_1 = ~(pixsize_2 & dcomp_0 & dcomp_1 & dcompen);

// INNER.NET (804) - di0t2 : nd2
assign di0t_2 = ~(srcd_n_0 & bcompen);

// INNER.NET (805) - di0t3 : nd3
assign di0t_3 = ~(pixsize_n_2 & dcomp_0 & dcompen);

// INNER.NET (806) - di0t4 : nd4
assign di0t_4 = ~(di0t_0 & di0t_1 & di0t_2 & di0t_3);

// INNER.NET (807) - dbinh[0] : anr1p
assign dbinh_n_0 = ~( (di0t_4 & phrase_mode) | winhibit );

// INNER.NET (810) - di1t0 : nd3
assign di1t_0 = ~(pixsize_n_2 & dcomp_1 & dcompen);

// INNER.NET (811) - di1t1 : nd2
assign di1t_1 = ~(srcd_n_1 & bcompen);

// INNER.NET (812) - di1t2 : nd4
assign di1t_2 = ~(di0t_0 & di0t_1 & di1t_0 & di1t_1);

// INNER.NET (813) - dbinh[1] : anr1
assign dbinh_n_1 = ~( (di1t_2 & phrase_mode) | winhibit );

// INNER.NET (816) - di2t0 : nd2p
assign di2t_0 = ~(pixsize_2 & zcomp_1);

// INNER.NET (817) - di2t1 : nd4p
assign di2t_1 = ~(pixsize_2 & dcomp_2 & dcomp_3 & dcompen);

// INNER.NET (819) - di2t2 : nd2
assign di2t_2 = ~(srcd_n_2 & bcompen);

// INNER.NET (820) - di2t3 : nd3
assign di2t_3 = ~(pixsize_n_2 & dcomp_2 & dcompen);

// INNER.NET (821) - di2t4 : nd4
assign di2t_4 = ~(di2t_0 & di2t_1 & di2t_2 & di2t_3);

// INNER.NET (822) - dbinh[2] : anr1
assign dbinh_n_2 = ~( (di2t_4 & phrase_mode) | winhibit );

// INNER.NET (825) - di3t0 : nd3
assign di3t_0 = ~(pixsize_n_2 & dcomp_3 & dcompen);

// INNER.NET (826) - di3t1 : nd2
assign di3t_1 = ~(srcd_n_3 & bcompen);

// INNER.NET (827) - di3t2 : nd4
assign di3t_2 = ~(di2t_0 & di2t_1 & di3t_0 & di3t_1);

// INNER.NET (828) - dbinh[3] : anr1
assign dbinh_n_3 = ~( (di3t_2 & phrase_mode) | winhibit );

// INNER.NET (831) - di4t0 : nd2p
assign di4t_0 = ~(pixsize_2 & zcomp_2);

// INNER.NET (832) - di4t1 : nd4p
assign di4t_1 = ~(pixsize_2 & dcomp_4 & dcomp_5 & dcompen);

// INNER.NET (834) - di4t2 : nd2
assign di4t_2 = ~(srcd_n_4 & bcompen);

// INNER.NET (835) - di4t3 : nd3
assign di4t_3 = ~(pixsize_n_2 & dcomp_4 & dcompen);

// INNER.NET (836) - di4t4 : nd4
assign di4t_4 = ~(di4t_0 & di4t_1 & di4t_2 & di4t_3);

// INNER.NET (837) - dbinh[4] : nd2
assign dbinh_n_4 = ~(di4t_4 & phrase_mode);

// INNER.NET (839) - di5t0 : nd3
assign di5t_0 = ~(pixsize_n_2 & dcomp_5 & dcompen);

// INNER.NET (840) - di5t1 : nd2
assign di5t_1 = ~(srcd_n_5 & bcompen);

// INNER.NET (841) - di5t2 : nd4
assign di5t_2 = ~(di4t_0 & di4t_1 & di5t_0 & di5t_1);

// INNER.NET (842) - dbinh[5] : nd2
assign dbinh_n_5 = ~(di5t_2 & phrase_mode);

// INNER.NET (844) - di6t0 : nd2p
assign di6t_0 = ~(pixsize_2 & zcomp_3);

// INNER.NET (845) - di6t1 : nd4p
assign di6t_1 = ~(pixsize_2 & dcomp_6 & dcomp_7 & dcompen);

// INNER.NET (847) - di6t2 : nd2
assign di6t_2 = ~(srcd_n_6 & bcompen);

// INNER.NET (848) - di6t3 : nd3
assign di6t_3 = ~(pixsize_n_2 & dcomp_6 & dcompen);

// INNER.NET (849) - di6t4 : nd4
assign di6t_4 = ~(di6t_0 & di6t_1 & di6t_2 & di6t_3);

// INNER.NET (850) - dbinh[6] : nd2
assign dbinh_n_6 = ~(di6t_4 & phrase_mode);

// INNER.NET (852) - di7t0 : nd3
assign di7t_0 = ~(pixsize_n_2 & dcomp_7 & dcompen);

// INNER.NET (853) - di7t1 : nd2
assign di7t_1 = ~(srcd_n_7 & bcompen);

// INNER.NET (854) - di7t2 : nd4
assign di7t_2 = ~(di6t_0 & di6t_1 & di7t_0 & di7t_1);

// INNER.NET (855) - dbinh[7] : nd2
assign dbinh_n_7 = ~(di7t_2 & phrase_mode);
endmodule
/* verilator lint_on LITENDIAN */
