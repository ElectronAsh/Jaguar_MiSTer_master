/* verilator lint_off LITENDIAN */
`include "defs.v"

module interrupt
(
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
	output imaski,
	output [0:15] intins,
	output intser,
	input atomic,
	input clk,
	input [0:31] gpu_din,
	input flagrd,
	input flagwr,
	input gpu_irq_0,
	input gpu_irq_1,
	input gpu_irq_2,
	input gpu_irq_3,
	input gpu_irq_4,
	input reset_n,
	input romold,
	input statrd,
	input sys_clk // Generated
);
wire [0:2] _int;
wire [0:15] ins_0;
wire [0:15] ins_1;
wire [0:15] ins_2;
wire [0:15] ins_3;
wire [0:15] ins_4;
wire [0:15] ins_5;
wire [0:15] ins_6;
wire [0:15] ins_7;
wire zero;
wire atomic_n;
wire int_ena_0;
wire int_ena_1;
wire int_ena_2;
wire int_ena_3;
wire int_ena_4;
wire ilclr_n_0;
wire ilclr_n_1;
wire ilclr_n_2;
wire ilclr_n_3;
wire ilclr_n_4;
wire ilt_0;
wire ilt_1;
wire ilt_2;
wire ilt_3;
wire ilt_4;
wire ilatch_0;
wire ilatch_1;
wire ilatch_2;
wire ilatch_3;
wire ilatch_4;
wire irqm_n_0;
wire irqm_n_1;
wire irqm_n_2;
wire irqm_n_3;
wire irqm_n_4;
wire ils_0;
wire ils_1;
wire ils_2;
wire ils_3;
wire ils_4;
wire irq;
wire ilatch_n_1;
wire int0t0;
wire int0t1;
wire int_0;
wire int1t;
wire int_1;
wire isrset;
wire intser_n;
wire imask_n;
wire isrclr;
wire jumped;
wire intsert;
wire isrt0;
wire isrt1;
wire imset_n;
wire gpu_din_n_3;
wire imclr_n;
wire imt_0;
wire imask;
wire cnten;
wire icount_0;
wire icount_1;
wire icount_2;
wire i;
wire o;
wire ts_pe_0_a0_out;
wire ts_pe_0_a0_oe;
wire ts_pe_0_a0_in;
wire ts_pe_0_a1_out;
wire ts_pe_0_a1_oe;
wire ts_pe_0_a1_in;
wire ts_pe_1_a0_out;
wire ts_pe_1_a0_oe;
wire ts_pe_1_a0_in;
wire ts_pe_1_a1_out;
wire ts_pe_1_a1_oe;
wire ts_pe_1_a1_in;
wire ts_pe_2_a0_out;
wire ts_pe_2_a0_oe;
wire ts_pe_2_a0_in;
wire ts_pe_2_a1_out;
wire ts_pe_2_a1_oe;
wire ts_pe_2_a1_in;
wire ts_pe_3_a0_out;
wire ts_pe_3_a0_oe;
wire ts_pe_3_a0_in;
wire ts_pe_3_a1_out;
wire ts_pe_3_a1_oe;
wire ts_pe_3_a1_in;
wire ts_pe_4_a0_out;
wire ts_pe_4_a0_oe;
wire ts_pe_4_a0_in;
wire ts_pe_4_a1_out;
wire ts_pe_4_a1_oe;
wire ts_pe_4_a1_in;

// Output buffers
wire imaski_obuf;
wire intser_obuf;


// Output buffers
assign imaski = imaski_obuf;
assign intser = intser_obuf;


// INTER-UA.NET (41) - zero : tie0
assign zero = 1'b0;

// INTER-UA.NET (43) - atomic\ : iv
assign atomic_n = ~atomic;

// INTER-UA.NET (51) - int_ena[0-4] : fdsyncr
fdsyncr int_ena_from_0_to_4_inst_0
(
	.q /* OUT */ (int_ena_0),
	.d /* IN */ (gpu_din[4]),
	.ld /* IN */ (flagwr),
	.clk /* IN */ (clk),
	.rst_n /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fdsyncr int_ena_from_0_to_4_inst_1
(
	.q /* OUT */ (int_ena_1),
	.d /* IN */ (gpu_din[5]),
	.ld /* IN */ (flagwr),
	.clk /* IN */ (clk),
	.rst_n /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fdsyncr int_ena_from_0_to_4_inst_2
(
	.q /* OUT */ (int_ena_2),
	.d /* IN */ (gpu_din[6]),
	.ld /* IN */ (flagwr),
	.clk /* IN */ (clk),
	.rst_n /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fdsyncr int_ena_from_0_to_4_inst_3
(
	.q /* OUT */ (int_ena_3),
	.d /* IN */ (gpu_din[7]),
	.ld /* IN */ (flagwr),
	.clk /* IN */ (clk),
	.rst_n /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fdsyncr int_ena_from_0_to_4_inst_4
(
	.q /* OUT */ (int_ena_4),
	.d /* IN */ (gpu_din[8]),
	.ld /* IN */ (flagwr),
	.clk /* IN */ (clk),
	.rst_n /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// INTER-UA.NET (58) - ilclr\[0-4] : nd2
assign ilclr_n_0 = ~(gpu_din[9] & flagwr);
assign ilclr_n_1 = ~(gpu_din[10] & flagwr);
assign ilclr_n_2 = ~(gpu_din[11] & flagwr);
assign ilclr_n_3 = ~(gpu_din[12] & flagwr);
assign ilclr_n_4 = ~(gpu_din[13] & flagwr);

// INTER-UA.NET (59) - ilt[0-4] : nd2
assign ilt_0 = ~(ilatch_0 & ilclr_n_0);
assign ilt_1 = ~(ilatch_1 & ilclr_n_1);
assign ilt_2 = ~(ilatch_2 & ilclr_n_2);
assign ilt_3 = ~(ilatch_3 & ilclr_n_3);
assign ilt_4 = ~(ilatch_4 & ilclr_n_4);

// INTER-UA.NET (60) - gpu_irqm[0-4] : nd2
assign irqm_n_0 = ~(gpu_irq_0 & int_ena_0);
assign irqm_n_1 = ~(gpu_irq_1 & int_ena_1);
assign irqm_n_2 = ~(gpu_irq_2 & int_ena_2);
assign irqm_n_3 = ~(gpu_irq_3 & int_ena_3);
assign irqm_n_4 = ~(gpu_irq_4 & int_ena_4);

// INTER-UA.NET (61) - ils[0-4] : nd2
assign ils_0 = ~(irqm_n_0 & ilt_0);
assign ils_1 = ~(irqm_n_1 & ilt_1);
assign ils_2 = ~(irqm_n_2 & ilt_2);
assign ils_3 = ~(irqm_n_3 & ilt_3);
assign ils_4 = ~(irqm_n_4 & ilt_4);

// INTER-UA.NET (62) - ilatch[0-4] : fd2q
fd2q ilatch_from_0_to_4_inst_0
(
	.q /* OUT */ (ilatch_0),
	.d /* IN */ (ils_0),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q ilatch_from_0_to_4_inst_1
(
	.q /* OUT */ (ilatch_1),
	.d /* IN */ (ils_1),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q ilatch_from_0_to_4_inst_2
(
	.q /* OUT */ (ilatch_2),
	.d /* IN */ (ils_2),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q ilatch_from_0_to_4_inst_3
(
	.q /* OUT */ (ilatch_3),
	.d /* IN */ (ils_3),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q ilatch_from_0_to_4_inst_4
(
	.q /* OUT */ (ilatch_4),
	.d /* IN */ (ils_4),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// INTER-UA.NET (66) - flagrd[4-8] : ts
assign gpu_dout_4_out = int_ena_0;
assign gpu_dout_4_oe = flagrd;
assign gpu_dout_5_out = int_ena_1;
assign gpu_dout_5_oe = flagrd;
assign ts_pe_0_a0_out = int_ena_2;
assign ts_pe_0_a0_oe = flagrd;
assign ts_pe_1_a0_out = int_ena_3;
assign ts_pe_1_a0_oe = flagrd;
assign ts_pe_2_a0_out = int_ena_4;
assign ts_pe_2_a0_oe = flagrd;

// INTER-UA.NET (67) - flagrd[9-13] : ts
assign ts_pe_3_a0_out = zero;
assign ts_pe_3_a0_oe = flagrd;
assign ts_pe_4_a0_out = zero;
assign ts_pe_4_a0_oe = flagrd;
assign gpu_dout_11_out = zero;
assign gpu_dout_11_oe = flagrd;
assign gpu_dout_12_out = zero;
assign gpu_dout_12_oe = flagrd;
assign gpu_dout_13_out = zero;
assign gpu_dout_13_oe = flagrd;

// INTER-UA.NET (68) - statrd[6-10] : ts
assign ts_pe_0_a1_out = ilatch_0;
assign ts_pe_0_a1_oe = statrd;
assign ts_pe_1_a1_out = ilatch_1;
assign ts_pe_1_a1_oe = statrd;
assign ts_pe_2_a1_out = ilatch_2;
assign ts_pe_2_a1_oe = statrd;
assign ts_pe_3_a1_out = ilatch_3;
assign ts_pe_3_a1_oe = statrd;
assign ts_pe_4_a1_out = ilatch_4;
assign ts_pe_4_a1_oe = statrd;

// INTER-UA.NET (72) - irq : or5
assign irq = ilatch_0 | ilatch_1 | ilatch_2 | ilatch_3 | ilatch_4;

// INTER-UA.NET (82) - ilatch\[1] : iv
assign ilatch_n_1 = ~ilatch_1;

// INTER-UA.NET (83) - int0t0 : nr2
assign int0t0 = ~(ilatch_n_1 | ilatch_2);

// INTER-UA.NET (84) - int0t1 : nr2
assign int0t1 = ~(ilatch_3 | int0t0);

// INTER-UA.NET (85) - int[0] : nr2
assign int_0 = ~(ilatch_4 | int0t1);

// INTER-UA.NET (86) - int1t : nr2
assign int1t = ~(ilatch_2 | ilatch_3);

// INTER-UA.NET (87) - int[1] : nr2
assign int_1 = ~(ilatch_4 | int1t);

// INTER-UA.NET (88) - int : join
assign _int[0] = int_0;
assign _int[1] = int_1;
assign _int[2] = ilatch_4;

// INTER-UA.NET (97) - isrset : an4
assign isrset = irq & intser_n & imask_n & atomic_n;

// INTER-UA.NET (98) - isrclr : an2
assign isrclr = jumped & intsert;

// INTER-UA.NET (99) - isrt0 : nr2
assign isrt0 = ~(isrset | intsert);

// INTER-UA.NET (100) - isrt1 : nr2
assign isrt1 = ~(isrt0 | isrclr);

// INTER-UA.NET (101) - intsert : fd2
fd2 intsert_inst
(
	.q /* OUT */ (intsert),
	.qn /* OUT */ (intser_n),
	.d /* IN */ (isrt1),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// INTER-UA.NET (102) - intser : nivh
assign intser_obuf = intsert;

// INTER-UA.NET (109) - imset : nd2
assign imset_n = ~(romold & intser_obuf);

// INTER-UA.NET (110) - gpu_data\[3] : iv
assign gpu_din_n_3 = ~gpu_din[3];

// INTER-UA.NET (111) - imclr : nd2
assign imclr_n = ~(flagwr & gpu_din_n_3);

// INTER-UA.NET (112) - imt0 : nd2
assign imt_0 = ~(imask & imclr_n);

// INTER-UA.NET (113) - imt1 : nd2
assign imaski_obuf = ~(imset_n & imt_0);

// INTER-UA.NET (114) - imask : fd2q
fd2q imask_inst
(
	.q /* OUT */ (imask),
	.d /* IN */ (imaski_obuf),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// INTER-UA.NET (115) - imask\ : iv
assign imask_n = ~imask;

// INTER-UA.NET (116) - flagrd[3] : ts
assign gpu_dout_3_out = imask;
assign gpu_dout_3_oe = flagrd;

// INTER-UA.NET (122) - cnten : an2
assign cnten = romold & intser_obuf;

// INTER-UA.NET (123) - cnter : cnte3
cnte3 cnter_inst
(
	.count_0 /* OUT */ (icount_0),
	.count_1 /* OUT */ (icount_1),
	.count_2 /* OUT */ (icount_2),
	.cnten /* IN */ (cnten),
	.clk /* IN */ (clk),
	.reset_n /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// INTER-UA.NET (125) - jumped : an4
assign jumped = romold & icount_0 & icount_1 & icount_2;

// INTER-UA.NET (142) - high : tie1
assign i = 1'b1;

// INTER-UA.NET (143) - low : tie0
assign o = 1'b0;

// INTER-UA.NET (144) - ins0 : join
assign ins_0[0] = i;
assign ins_0[1] = i;
assign ins_0[2] = i;
assign ins_0[3] = i;
assign ins_0[4] = i;
assign ins_0[5] = o;
assign ins_0[6] = o;
assign ins_0[7] = i;
assign ins_0[8] = o;
assign ins_0[9] = o;
assign ins_0[10] = i;
assign ins_0[11] = i;
assign ins_0[12] = i;
assign ins_0[13] = o;
assign ins_0[14] = o;
assign ins_0[15] = o;

// INTER-UA.NET (145) - ins1 : join
assign ins_1[0] = o;
assign ins_1[1] = i;
assign ins_1[2] = i;
assign ins_1[3] = i;
assign ins_1[4] = i;
assign ins_1[5] = o;
assign ins_1[6] = o;
assign ins_1[7] = o;
assign ins_1[8] = o;
assign ins_1[9] = o;
assign ins_1[10] = i;
assign ins_1[11] = i;
assign ins_1[12] = o;
assign ins_1[13] = o;
assign ins_1[14] = i;
assign ins_1[15] = i;

// INTER-UA.NET (146) - ins2 : join
assign ins_2[0] = o;
assign ins_2[1] = i;
assign ins_2[2] = i;
assign ins_2[3] = i;
assign ins_2[4] = i;
assign ins_2[5] = i;
assign ins_2[6] = i;
assign ins_2[7] = i;
assign ins_2[8] = i;
assign ins_2[9] = i;
assign ins_2[10] = i;
assign ins_2[11] = i;
assign ins_2[12] = i;
assign ins_2[13] = i;
assign ins_2[14] = o;
assign ins_2[15] = i;

// INTER-UA.NET (147) - ins3 : join
assign ins_3[0] = o;
assign ins_3[1] = i;
assign ins_3[2] = i;
assign ins_3[3] = i;
assign ins_3[4] = i;
assign ins_3[5] = o;
assign ins_3[6] = o;
assign ins_3[7] = o;
assign ins_3[8] = o;
assign ins_3[9] = o;
assign ins_3[10] = o;
assign ins_3[11] = i;
assign ins_3[12] = i;
assign ins_3[13] = o;
assign ins_3[14] = o;
assign ins_3[15] = i;

// INTER-UA.NET (148) - ins4 : join
assign ins_4[0] = o;
assign ins_4[1] = o;
assign ins_4[2] = o;
assign ins_4[3] = o;
assign ins_4[4] = _int[0];
assign ins_4[5] = _int[1];
assign ins_4[6] = _int[2];
assign ins_4[7] = o;
assign ins_4[8] = o;
assign ins_4[9] = o;
assign ins_4[10] = o;
assign ins_4[11] = o;
assign ins_4[12] = i;
assign ins_4[13] = i;
assign ins_4[14] = o;
assign ins_4[15] = o;

// INTER-UA.NET (149) - ins5 : join
assign ins_5[0] = o;
assign ins_5[1] = o;
assign ins_5[2] = o;
assign ins_5[3] = o;
assign ins_5[4] = i;
assign ins_5[5] = i;
assign ins_5[6] = i;
assign ins_5[7] = i;
assign ins_5[8] = o;
assign ins_5[9] = o;
assign ins_5[10] = o;
assign ins_5[11] = o;
assign ins_5[12] = o;
assign ins_5[13] = o;
assign ins_5[14] = o;
assign ins_5[15] = o;

// INTER-UA.NET (150) - ins6 : join
assign ins_6[0] = o;
assign ins_6[1] = o;
assign ins_6[2] = o;
assign ins_6[3] = o;
assign ins_6[4] = o;
assign ins_6[5] = o;
assign ins_6[6] = i;
assign ins_6[7] = i;
assign ins_6[8] = i;
assign ins_6[9] = i;
assign ins_6[10] = o;
assign ins_6[11] = o;
assign ins_6[12] = i;
assign ins_6[13] = o;
assign ins_6[14] = i;
assign ins_6[15] = i;

// INTER-UA.NET (151) - ins7 : join
assign ins_7[0] = o;
assign ins_7[1] = o;
assign ins_7[2] = o;
assign ins_7[3] = o;
assign ins_7[4] = o;
assign ins_7[5] = o;
assign ins_7[6] = o;
assign ins_7[7] = o;
assign ins_7[8] = o;
assign ins_7[9] = o;
assign ins_7[10] = i;
assign ins_7[11] = o;
assign ins_7[12] = o;
assign ins_7[13] = i;
assign ins_7[14] = i;
assign ins_7[15] = i;

// INTER-UA.NET (153) - inssel : mx8p
mx8 inssel_inst_0
(
	.z /* OUT */ (intins[0]),
	.a0 /* IN */ (ins_0[0]),
	.a1 /* IN */ (ins_1[0]),
	.a2 /* IN */ (ins_2[0]),
	.a3 /* IN */ (ins_3[0]),
	.a4 /* IN */ (ins_4[0]),
	.a5 /* IN */ (ins_5[0]),
	.a6 /* IN */ (ins_6[0]),
	.a7 /* IN */ (ins_7[0]),
	.s0 /* IN */ (icount_0),
	.s1 /* IN */ (icount_1),
	.s2 /* IN */ (icount_2)
);
mx8 inssel_inst_1
(
	.z /* OUT */ (intins[1]),
	.a0 /* IN */ (ins_0[1]),
	.a1 /* IN */ (ins_1[1]),
	.a2 /* IN */ (ins_2[1]),
	.a3 /* IN */ (ins_3[1]),
	.a4 /* IN */ (ins_4[1]),
	.a5 /* IN */ (ins_5[1]),
	.a6 /* IN */ (ins_6[1]),
	.a7 /* IN */ (ins_7[1]),
	.s0 /* IN */ (icount_0),
	.s1 /* IN */ (icount_1),
	.s2 /* IN */ (icount_2)
);
mx8 inssel_inst_2
(
	.z /* OUT */ (intins[2]),
	.a0 /* IN */ (ins_0[2]),
	.a1 /* IN */ (ins_1[2]),
	.a2 /* IN */ (ins_2[2]),
	.a3 /* IN */ (ins_3[2]),
	.a4 /* IN */ (ins_4[2]),
	.a5 /* IN */ (ins_5[2]),
	.a6 /* IN */ (ins_6[2]),
	.a7 /* IN */ (ins_7[2]),
	.s0 /* IN */ (icount_0),
	.s1 /* IN */ (icount_1),
	.s2 /* IN */ (icount_2)
);
mx8 inssel_inst_3
(
	.z /* OUT */ (intins[3]),
	.a0 /* IN */ (ins_0[3]),
	.a1 /* IN */ (ins_1[3]),
	.a2 /* IN */ (ins_2[3]),
	.a3 /* IN */ (ins_3[3]),
	.a4 /* IN */ (ins_4[3]),
	.a5 /* IN */ (ins_5[3]),
	.a6 /* IN */ (ins_6[3]),
	.a7 /* IN */ (ins_7[3]),
	.s0 /* IN */ (icount_0),
	.s1 /* IN */ (icount_1),
	.s2 /* IN */ (icount_2)
);
mx8 inssel_inst_4
(
	.z /* OUT */ (intins[4]),
	.a0 /* IN */ (ins_0[4]),
	.a1 /* IN */ (ins_1[4]),
	.a2 /* IN */ (ins_2[4]),
	.a3 /* IN */ (ins_3[4]),
	.a4 /* IN */ (ins_4[4]),
	.a5 /* IN */ (ins_5[4]),
	.a6 /* IN */ (ins_6[4]),
	.a7 /* IN */ (ins_7[4]),
	.s0 /* IN */ (icount_0),
	.s1 /* IN */ (icount_1),
	.s2 /* IN */ (icount_2)
);
mx8 inssel_inst_5
(
	.z /* OUT */ (intins[5]),
	.a0 /* IN */ (ins_0[5]),
	.a1 /* IN */ (ins_1[5]),
	.a2 /* IN */ (ins_2[5]),
	.a3 /* IN */ (ins_3[5]),
	.a4 /* IN */ (ins_4[5]),
	.a5 /* IN */ (ins_5[5]),
	.a6 /* IN */ (ins_6[5]),
	.a7 /* IN */ (ins_7[5]),
	.s0 /* IN */ (icount_0),
	.s1 /* IN */ (icount_1),
	.s2 /* IN */ (icount_2)
);
mx8 inssel_inst_6
(
	.z /* OUT */ (intins[6]),
	.a0 /* IN */ (ins_0[6]),
	.a1 /* IN */ (ins_1[6]),
	.a2 /* IN */ (ins_2[6]),
	.a3 /* IN */ (ins_3[6]),
	.a4 /* IN */ (ins_4[6]),
	.a5 /* IN */ (ins_5[6]),
	.a6 /* IN */ (ins_6[6]),
	.a7 /* IN */ (ins_7[6]),
	.s0 /* IN */ (icount_0),
	.s1 /* IN */ (icount_1),
	.s2 /* IN */ (icount_2)
);
mx8 inssel_inst_7
(
	.z /* OUT */ (intins[7]),
	.a0 /* IN */ (ins_0[7]),
	.a1 /* IN */ (ins_1[7]),
	.a2 /* IN */ (ins_2[7]),
	.a3 /* IN */ (ins_3[7]),
	.a4 /* IN */ (ins_4[7]),
	.a5 /* IN */ (ins_5[7]),
	.a6 /* IN */ (ins_6[7]),
	.a7 /* IN */ (ins_7[7]),
	.s0 /* IN */ (icount_0),
	.s1 /* IN */ (icount_1),
	.s2 /* IN */ (icount_2)
);
mx8 inssel_inst_8
(
	.z /* OUT */ (intins[8]),
	.a0 /* IN */ (ins_0[8]),
	.a1 /* IN */ (ins_1[8]),
	.a2 /* IN */ (ins_2[8]),
	.a3 /* IN */ (ins_3[8]),
	.a4 /* IN */ (ins_4[8]),
	.a5 /* IN */ (ins_5[8]),
	.a6 /* IN */ (ins_6[8]),
	.a7 /* IN */ (ins_7[8]),
	.s0 /* IN */ (icount_0),
	.s1 /* IN */ (icount_1),
	.s2 /* IN */ (icount_2)
);
mx8 inssel_inst_9
(
	.z /* OUT */ (intins[9]),
	.a0 /* IN */ (ins_0[9]),
	.a1 /* IN */ (ins_1[9]),
	.a2 /* IN */ (ins_2[9]),
	.a3 /* IN */ (ins_3[9]),
	.a4 /* IN */ (ins_4[9]),
	.a5 /* IN */ (ins_5[9]),
	.a6 /* IN */ (ins_6[9]),
	.a7 /* IN */ (ins_7[9]),
	.s0 /* IN */ (icount_0),
	.s1 /* IN */ (icount_1),
	.s2 /* IN */ (icount_2)
);
mx8 inssel_inst_10
(
	.z /* OUT */ (intins[10]),
	.a0 /* IN */ (ins_0[10]),
	.a1 /* IN */ (ins_1[10]),
	.a2 /* IN */ (ins_2[10]),
	.a3 /* IN */ (ins_3[10]),
	.a4 /* IN */ (ins_4[10]),
	.a5 /* IN */ (ins_5[10]),
	.a6 /* IN */ (ins_6[10]),
	.a7 /* IN */ (ins_7[10]),
	.s0 /* IN */ (icount_0),
	.s1 /* IN */ (icount_1),
	.s2 /* IN */ (icount_2)
);
mx8 inssel_inst_11
(
	.z /* OUT */ (intins[11]),
	.a0 /* IN */ (ins_0[11]),
	.a1 /* IN */ (ins_1[11]),
	.a2 /* IN */ (ins_2[11]),
	.a3 /* IN */ (ins_3[11]),
	.a4 /* IN */ (ins_4[11]),
	.a5 /* IN */ (ins_5[11]),
	.a6 /* IN */ (ins_6[11]),
	.a7 /* IN */ (ins_7[11]),
	.s0 /* IN */ (icount_0),
	.s1 /* IN */ (icount_1),
	.s2 /* IN */ (icount_2)
);
mx8 inssel_inst_12
(
	.z /* OUT */ (intins[12]),
	.a0 /* IN */ (ins_0[12]),
	.a1 /* IN */ (ins_1[12]),
	.a2 /* IN */ (ins_2[12]),
	.a3 /* IN */ (ins_3[12]),
	.a4 /* IN */ (ins_4[12]),
	.a5 /* IN */ (ins_5[12]),
	.a6 /* IN */ (ins_6[12]),
	.a7 /* IN */ (ins_7[12]),
	.s0 /* IN */ (icount_0),
	.s1 /* IN */ (icount_1),
	.s2 /* IN */ (icount_2)
);
mx8 inssel_inst_13
(
	.z /* OUT */ (intins[13]),
	.a0 /* IN */ (ins_0[13]),
	.a1 /* IN */ (ins_1[13]),
	.a2 /* IN */ (ins_2[13]),
	.a3 /* IN */ (ins_3[13]),
	.a4 /* IN */ (ins_4[13]),
	.a5 /* IN */ (ins_5[13]),
	.a6 /* IN */ (ins_6[13]),
	.a7 /* IN */ (ins_7[13]),
	.s0 /* IN */ (icount_0),
	.s1 /* IN */ (icount_1),
	.s2 /* IN */ (icount_2)
);
mx8 inssel_inst_14
(
	.z /* OUT */ (intins[14]),
	.a0 /* IN */ (ins_0[14]),
	.a1 /* IN */ (ins_1[14]),
	.a2 /* IN */ (ins_2[14]),
	.a3 /* IN */ (ins_3[14]),
	.a4 /* IN */ (ins_4[14]),
	.a5 /* IN */ (ins_5[14]),
	.a6 /* IN */ (ins_6[14]),
	.a7 /* IN */ (ins_7[14]),
	.s0 /* IN */ (icount_0),
	.s1 /* IN */ (icount_1),
	.s2 /* IN */ (icount_2)
);
mx8 inssel_inst_15
(
	.z /* OUT */ (intins[15]),
	.a0 /* IN */ (ins_0[15]),
	.a1 /* IN */ (ins_1[15]),
	.a2 /* IN */ (ins_2[15]),
	.a3 /* IN */ (ins_3[15]),
	.a4 /* IN */ (ins_4[15]),
	.a5 /* IN */ (ins_5[15]),
	.a6 /* IN */ (ins_6[15]),
	.a7 /* IN */ (ins_7[15]),
	.s0 /* IN */ (icount_0),
	.s1 /* IN */ (icount_1),
	.s2 /* IN */ (icount_2)
);

// --- Compiler-generated PE for BUS gpu_dout[6]
assign gpu_dout_6_out = (ts_pe_0_a0_oe & ts_pe_0_a0_out ) | (ts_pe_0_a1_oe & ts_pe_0_a1_out ) | 1'b0;
assign gpu_dout_6_oe = ts_pe_0_a0_oe | ts_pe_0_a1_oe;
assign ts_pe_0_a0_in = gpu_dout_6_in;
assign ts_pe_0_a1_in = gpu_dout_6_in;

// --- Compiler-generated PE for BUS gpu_dout[7]
assign gpu_dout_7_out = (ts_pe_1_a0_oe & ts_pe_1_a0_out ) | (ts_pe_1_a1_oe & ts_pe_1_a1_out ) | 1'b0;
assign gpu_dout_7_oe = ts_pe_1_a0_oe | ts_pe_1_a1_oe;
assign ts_pe_1_a0_in = gpu_dout_7_in;
assign ts_pe_1_a1_in = gpu_dout_7_in;

// --- Compiler-generated PE for BUS gpu_dout[8]
assign gpu_dout_8_out = (ts_pe_2_a0_oe & ts_pe_2_a0_out ) | (ts_pe_2_a1_oe & ts_pe_2_a1_out ) | 1'b0;
assign gpu_dout_8_oe = ts_pe_2_a0_oe | ts_pe_2_a1_oe;
assign ts_pe_2_a0_in = gpu_dout_8_in;
assign ts_pe_2_a1_in = gpu_dout_8_in;

// --- Compiler-generated PE for BUS gpu_dout[9]
assign gpu_dout_9_out = (ts_pe_3_a0_oe & ts_pe_3_a0_out ) | (ts_pe_3_a1_oe & ts_pe_3_a1_out ) | 1'b0;
assign gpu_dout_9_oe = ts_pe_3_a0_oe | ts_pe_3_a1_oe;
assign ts_pe_3_a0_in = gpu_dout_9_in;
assign ts_pe_3_a1_in = gpu_dout_9_in;

// --- Compiler-generated PE for BUS gpu_dout[10]
assign gpu_dout_10_out = (ts_pe_4_a0_oe & ts_pe_4_a0_out ) | (ts_pe_4_a1_oe & ts_pe_4_a1_out ) | 1'b0;
assign gpu_dout_10_oe = ts_pe_4_a0_oe | ts_pe_4_a1_oe;
assign ts_pe_4_a0_in = gpu_dout_10_in;
assign ts_pe_4_a1_in = gpu_dout_10_in;
endmodule
/* verilator lint_on LITENDIAN */
