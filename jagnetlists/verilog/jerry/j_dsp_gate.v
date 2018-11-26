/* verilator lint_off LITENDIAN */
`include "defs.v"

module j_dsp_gate
(
	output [0:31] gpu_data_out,
	output [0:31] gpu_data_oe,
	input [0:31] gpu_data_in,
	output gpu_dout_15_out,
	output gpu_dout_15_oe,
	input gpu_dout_15_in,
	output [0:23] address,
	output mreq,
	output read,
	output width_0,
	output width_1,
	output width_2,
	output dma_breq_n,
	output gate_active,
	output gatereq,
	output gpu_breq_n,
	output [0:31] load_data,
	output xld_ready,
	input ack,
	input bus_hog,
	input clk,
	input tlw,
	input data_0,
	input data_1,
	input data_2,
	input data_3,
	input data_4,
	input data_5,
	input data_6,
	input data_7,
	input data_8,
	input data_9,
	input data_10,
	input data_11,
	input data_12,
	input data_13,
	input data_14,
	input data_15,
	input data_16,
	input data_17,
	input data_18,
	input data_19,
	input data_20,
	input data_21,
	input data_22,
	input data_23,
	input data_24,
	input data_25,
	input data_26,
	input data_27,
	input data_28,
	input data_29,
	input data_30,
	input data_31,
	input external,
	input flagrd,
	input flagwr,
	input gateack,
	input [0:23] gpu_addr,
	input gpu_back_n,
	input [0:31] gpu_din,
	input gpu_memw,
	input msize_0,
	input msize_1,
	input progserv,
	input reset_n,
	input sys_clk // Generated
);
wire [0:23] cpu_addr;
wire [0:23] dat_addr;
wire [0:31] lddatai;
wire [0:31] zero32;
wire [0:31] lodatai;
wire [0:31] lodin;
wire [0:31] prog_data;
wire zero;
wire ack_n;
wire external_n;
wire gateack_n;
wire gpu_back;
wire gpu_memw_n;
wire progserv_n;
wire dmaen;
wire dmaen_n;
wire prot_1;
wire active;
wire gpu_ack;
wire cycgo;
wire prot_2;
wire idle;
wire cycstart;
wire progoi;
wire progown;
wire progownp;
wire cycpend;
wire progown_n;
wire readp;
wire readi;
wire reada;
wire msizelat;
wire msized_0;
wire msized_1;
wire cyptset;
wire cypt_0;
wire cypt_1;
wire activet_0;
wire activet_1;
wire gpu_ack_n;
wire activet_2;
wire activet_3;
wire activet;
wire pawset_n;
wire pawt_0;
wire packwt;
wire pawt_1;
wire pdatld;
wire pdatldb;
wire greqt_0;
wire greqt_2;
wire greqt_1;
wire dawset_n;
wire dawt_0;
wire dackwt;
wire dawt_1;
wire ddatld;
wire ddatldb;
wire busackt;
wire busack;
wire cald;
wire dald;
wire msizet_0;
wire msizet_1;
wire width_3;
wire lodwr;
wire maskwt_n;
wire maskbt_n;
wire maskld;
wire maskb_n;
wire maskw_n;
wire lodm_8;
wire lodm_9;
wire lodm_10;
wire lodm_11;
wire lodm_12;
wire lodm_13;
wire lodm_14;
wire lodm_15;
wire lodm_16;
wire lodm_17;
wire lodm_18;
wire lodm_19;
wire lodm_20;
wire lodm_21;
wire lodm_22;
wire lodm_23;
wire lodm_24;
wire lodm_25;
wire lodm_26;
wire lodm_27;
wire lodm_28;
wire lodm_29;
wire lodm_30;
wire lodm_31;
wire ext_reqt_0;
wire ext_reqt_1;
wire ext_reqt_2;
wire ext_reqt_3;
wire ext_reqt_4;
wire ext_reqt_5;
wire ext_req_n;
wire gpu_bt_0;
wire gpu_bt_1;
wire gpu_bt_2;

// Output buffers
wire dma_breq_n_obuf;
wire gpu_breq_n_obuf;
wire load_data_b0_obuf;
wire load_data_b1_obuf;
wire load_data_b2_obuf;
wire load_data_b3_obuf;
wire load_data_b4_obuf;
wire load_data_b5_obuf;
wire load_data_b6_obuf;
wire load_data_b7_obuf;
wire load_data_b8_obuf;
wire load_data_b9_obuf;
wire load_data_b10_obuf;
wire load_data_b11_obuf;
wire load_data_b12_obuf;
wire load_data_b13_obuf;
wire load_data_b14_obuf;
wire load_data_b15_obuf;
wire load_data_b16_obuf;
wire load_data_b17_obuf;
wire load_data_b18_obuf;
wire load_data_b19_obuf;
wire load_data_b20_obuf;
wire load_data_b21_obuf;
wire load_data_b22_obuf;
wire load_data_b23_obuf;
wire load_data_b24_obuf;
wire load_data_b25_obuf;
wire load_data_b26_obuf;
wire load_data_b27_obuf;
wire load_data_b28_obuf;
wire load_data_b29_obuf;
wire load_data_b30_obuf;
wire load_data_b31_obuf;


// Output buffers
assign dma_breq_n = dma_breq_n_obuf;
assign gpu_breq_n = gpu_breq_n_obuf;
assign load_data[0] = load_data_b0_obuf;
assign load_data[1] = load_data_b1_obuf;
assign load_data[2] = load_data_b2_obuf;
assign load_data[3] = load_data_b3_obuf;
assign load_data[4] = load_data_b4_obuf;
assign load_data[5] = load_data_b5_obuf;
assign load_data[6] = load_data_b6_obuf;
assign load_data[7] = load_data_b7_obuf;
assign load_data[8] = load_data_b8_obuf;
assign load_data[9] = load_data_b9_obuf;
assign load_data[10] = load_data_b10_obuf;
assign load_data[11] = load_data_b11_obuf;
assign load_data[12] = load_data_b12_obuf;
assign load_data[13] = load_data_b13_obuf;
assign load_data[14] = load_data_b14_obuf;
assign load_data[15] = load_data_b15_obuf;
assign load_data[16] = load_data_b16_obuf;
assign load_data[17] = load_data_b17_obuf;
assign load_data[18] = load_data_b18_obuf;
assign load_data[19] = load_data_b19_obuf;
assign load_data[20] = load_data_b20_obuf;
assign load_data[21] = load_data_b21_obuf;
assign load_data[22] = load_data_b22_obuf;
assign load_data[23] = load_data_b23_obuf;
assign load_data[24] = load_data_b24_obuf;
assign load_data[25] = load_data_b25_obuf;
assign load_data[26] = load_data_b26_obuf;
assign load_data[27] = load_data_b27_obuf;
assign load_data[28] = load_data_b28_obuf;
assign load_data[29] = load_data_b29_obuf;
assign load_data[30] = load_data_b30_obuf;
assign load_data[31] = load_data_b31_obuf;


// DSP_GATE.NET (52) - zero : tie0
assign zero = 1'b0;

// DSP_GATE.NET (53) - zero32 : join
assign zero32[0] = zero;
assign zero32[1] = zero;
assign zero32[2] = zero;
assign zero32[3] = zero;
assign zero32[4] = zero;
assign zero32[5] = zero;
assign zero32[6] = zero;
assign zero32[7] = zero;
assign zero32[8] = zero;
assign zero32[9] = zero;
assign zero32[10] = zero;
assign zero32[11] = zero;
assign zero32[12] = zero;
assign zero32[13] = zero;
assign zero32[14] = zero;
assign zero32[15] = zero;
assign zero32[16] = zero;
assign zero32[17] = zero;
assign zero32[18] = zero;
assign zero32[19] = zero;
assign zero32[20] = zero;
assign zero32[21] = zero;
assign zero32[22] = zero;
assign zero32[23] = zero;
assign zero32[24] = zero;
assign zero32[25] = zero;
assign zero32[26] = zero;
assign zero32[27] = zero;
assign zero32[28] = zero;
assign zero32[29] = zero;
assign zero32[30] = zero;
assign zero32[31] = zero;

// DSP_GATE.NET (58) - lodatai : join
assign lodatai[0] = data_0;
assign lodatai[1] = data_1;
assign lodatai[2] = data_2;
assign lodatai[3] = data_3;
assign lodatai[4] = data_4;
assign lodatai[5] = data_5;
assign lodatai[6] = data_6;
assign lodatai[7] = data_7;
assign lodatai[8] = data_8;
assign lodatai[9] = data_9;
assign lodatai[10] = data_10;
assign lodatai[11] = data_11;
assign lodatai[12] = data_12;
assign lodatai[13] = data_13;
assign lodatai[14] = data_14;
assign lodatai[15] = data_15;
assign lodatai[16] = data_16;
assign lodatai[17] = data_17;
assign lodatai[18] = data_18;
assign lodatai[19] = data_19;
assign lodatai[20] = data_20;
assign lodatai[21] = data_21;
assign lodatai[22] = data_22;
assign lodatai[23] = data_23;
assign lodatai[24] = data_24;
assign lodatai[25] = data_25;
assign lodatai[26] = data_26;
assign lodatai[27] = data_27;
assign lodatai[28] = data_28;
assign lodatai[29] = data_29;
assign lodatai[30] = data_30;
assign lodatai[31] = data_31;

// DSP_GATE.NET (60) - ack\ : iv
assign ack_n = ~ack;

// DSP_GATE.NET (61) - external\ : iv
assign external_n = ~external;

// DSP_GATE.NET (62) - gateack\ : iv
assign gateack_n = ~gateack;

// DSP_GATE.NET (63) - gpu_back : iv
assign gpu_back = ~gpu_back_n;

// DSP_GATE.NET (64) - gpu_memw\ : iv
assign gpu_memw_n = ~gpu_memw;

// DSP_GATE.NET (65) - progserv\ : iv
assign progserv_n = ~progserv;

// DSP_GATE.NET (70) - dmaen : fdsyncr
j_fdsyncr dmaen_inst
(
	.q /* OUT */ (dmaen),
	.d /* IN */ (gpu_din[15]),
	.ld /* IN */ (flagwr),
	.clk /* IN */ (clk),
	.rst_n /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// DSP_GATE.NET (72) - dmaen\ : iv
assign dmaen_n = ~dmaen;

// DSP_GATE.NET (73) - dmaenr : ts
assign gpu_dout_15_out = dmaen;
assign gpu_dout_15_oe = flagrd;

// DSP_GATE.NET (82) - prot1 : nd3
assign prot_1 = ~(active & gpu_ack & cycgo);

// DSP_GATE.NET (83) - prot2 : nd2
assign prot_2 = ~(idle & external);

// DSP_GATE.NET (84) - cycstart : nd2
assign cycstart = ~(prot_1 & prot_2);

// DSP_GATE.NET (88) - progoi : mx4
mx4 progoi_inst
(
	.z /* OUT */ (progoi),
	.a0 /* IN */ (progown),
	.a1 /* IN */ (progown),
	.a2 /* IN */ (progserv),
	.a3 /* IN */ (progownp),
	.s0 /* IN */ (cycpend),
	.s1 /* IN */ (cycstart)
);

// DSP_GATE.NET (90) - progown : fd2qu
fd2q progown_inst
(
	.q /* OUT */ (progown),
	.d /* IN */ (progoi),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// DSP_GATE.NET (91) - progown\ : iv
assign progown_n = ~progown;

// DSP_GATE.NET (95) - progownp : fdsync
j_fdsync progownp_inst
(
	.q /* OUT */ (progownp),
	.d /* IN */ (progserv),
	.ld /* IN */ (external),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DSP_GATE.NET (99) - readp : fdsync
j_fdsync readp_inst
(
	.q /* OUT */ (readp),
	.d /* IN */ (gpu_memw_n),
	.ld /* IN */ (external),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DSP_GATE.NET (101) - readi : mx4
mx4 readi_inst
(
	.z /* OUT */ (readi),
	.a0 /* IN */ (reada),
	.a1 /* IN */ (reada),
	.a2 /* IN */ (gpu_memw_n),
	.a3 /* IN */ (readp),
	.s0 /* IN */ (cycpend),
	.s1 /* IN */ (cycstart)
);

// DSP_GATE.NET (103) - reada : fd1q
fd1q reada_inst
(
	.q /* OUT */ (reada),
	.d /* IN */ (readi),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DSP_GATE.NET (107) - msizelat : an3
assign msizelat = external & progserv_n & tlw;

// DSP_GATE.NET (108) - msized[0-1] : ldp1q
ldp1q msized_from_0_to_1_inst_0
(
	.q /* OUT */ (msized_0),
	.d /* IN */ (msize_0),
	.g /* IN */ (msizelat),
	.sys_clk(sys_clk) // Generated
);
ldp1q msized_from_0_to_1_inst_1
(
	.q /* OUT */ (msized_1),
	.d /* IN */ (msize_1),
	.g /* IN */ (msizelat),
	.sys_clk(sys_clk) // Generated
);

// DSP_GATE.NET (113) - cyptset : nr3
assign cyptset = ~(external_n | idle | cycstart);

// DSP_GATE.NET (114) - cypt0 : nr2
assign cypt_0 = ~(cyptset | cycpend);

// DSP_GATE.NET (115) - cypt1 : nr2
assign cypt_1 = ~(cypt_0 | cycstart);

// DSP_GATE.NET (116) - cycpend : fd2q
fd2q cycpend_inst
(
	.q /* OUT */ (cycpend),
	.d /* IN */ (cypt_1),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// DSP_GATE.NET (118) - cycgo : or2
assign cycgo = external | cycpend;

// DSP_GATE.NET (122) - activet0 : nd2
assign activet_0 = ~(idle & external);

// DSP_GATE.NET (123) - activet1 : nd2
assign activet_1 = ~(active & gpu_ack_n);

// DSP_GATE.NET (124) - activet2 : nd3
assign activet_2 = ~(active & gpu_ack & cycgo);

// DSP_GATE.NET (125) - activet3 : nd3
assign activet_3 = ~(activet_0 & activet_1 & activet_2);

// DSP_GATE.NET (126) - activet : fd2q
fd2q activet_inst
(
	.q /* OUT */ (activet),
	.d /* IN */ (activet_3),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// DSP_GATE.NET (127) - active : nivm
assign active = activet;

// DSP_GATE.NET (128) - idle : iv
assign idle = ~active;

// DSP_GATE.NET (135) - gate_active : niv
assign gate_active = active;

// DSP_GATE.NET (141) - pawset\ : nd3
assign pawset_n = ~(active & progown & gpu_ack);

// DSP_GATE.NET (142) - pawt0 : nd2
assign pawt_0 = ~(packwt & ack_n);

// DSP_GATE.NET (143) - pawt1 : nd2
assign pawt_1 = ~(pawset_n & pawt_0);

// DSP_GATE.NET (144) - packwt : fd2q
fd2q packwt_inst
(
	.q /* OUT */ (packwt),
	.d /* IN */ (pawt_1),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// DSP_GATE.NET (145) - pdatld : an2
assign pdatld = packwt & ack;

// DSP_GATE.NET (146) - pdatldb : nivu
assign pdatldb = pdatld;

// DSP_GATE.NET (153) - greqt0 : nr2
assign greqt_0 = ~(pdatld | greqt_2);

// DSP_GATE.NET (154) - greqt1 : nr2
assign greqt_1 = ~(gateack | greqt_0);

// DSP_GATE.NET (155) - greqt2 : fd2q
fd2q greqt2_inst
(
	.q /* OUT */ (greqt_2),
	.d /* IN */ (greqt_1),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// DSP_GATE.NET (156) - gatereq : oan1
assign gatereq = (pdatld | greqt_2) & gateack_n;

// DSP_GATE.NET (160) - dawset\ : nd4
assign dawset_n = ~(active & progown_n & gpu_ack & reada);

// DSP_GATE.NET (161) - dawt0 : nd2
assign dawt_0 = ~(dackwt & ack_n);

// DSP_GATE.NET (162) - dawt1 : nd2
assign dawt_1 = ~(dawset_n & dawt_0);

// DSP_GATE.NET (163) - dackwt : fd2q
fd2q dackwt_inst
(
	.q /* OUT */ (dackwt),
	.d /* IN */ (dawt_1),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// DSP_GATE.NET (164) - ddatld : an2
assign ddatld = dackwt & ack;

// DSP_GATE.NET (165) - ddatldb : nivu
assign ddatldb = ddatld;

// DSP_GATE.NET (169) - xld_ready : fd1qu
fd1q xld_ready_inst
(
	.q /* OUT */ (xld_ready),
	.d /* IN */ (ddatld),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DSP_GATE.NET (173) - busackt : nd2
assign busackt = ~(gpu_breq_n_obuf & dma_breq_n_obuf);

// DSP_GATE.NET (174) - busack : an2
assign busack = busackt & gpu_back;

// DSP_GATE.NET (178) - gpu_ack\ : nd2
assign gpu_ack_n = ~(ack & busack);

// DSP_GATE.NET (179) - gpu_ack : iv
assign gpu_ack = ~gpu_ack_n;

// DSP_GATE.NET (183) - cald : an3u
assign cald = external & progserv & tlw;

// DSP_GATE.NET (184) - cpu_addr : ldp1q
ldp1q cpu_addr_inst_0
(
	.q /* OUT */ (cpu_addr[0]),
	.d /* IN */ (gpu_addr[0]),
	.g /* IN */ (cald),
	.sys_clk(sys_clk) // Generated
);
ldp1q cpu_addr_inst_1
(
	.q /* OUT */ (cpu_addr[1]),
	.d /* IN */ (gpu_addr[1]),
	.g /* IN */ (cald),
	.sys_clk(sys_clk) // Generated
);
ldp1q cpu_addr_inst_2
(
	.q /* OUT */ (cpu_addr[2]),
	.d /* IN */ (gpu_addr[2]),
	.g /* IN */ (cald),
	.sys_clk(sys_clk) // Generated
);
ldp1q cpu_addr_inst_3
(
	.q /* OUT */ (cpu_addr[3]),
	.d /* IN */ (gpu_addr[3]),
	.g /* IN */ (cald),
	.sys_clk(sys_clk) // Generated
);
ldp1q cpu_addr_inst_4
(
	.q /* OUT */ (cpu_addr[4]),
	.d /* IN */ (gpu_addr[4]),
	.g /* IN */ (cald),
	.sys_clk(sys_clk) // Generated
);
ldp1q cpu_addr_inst_5
(
	.q /* OUT */ (cpu_addr[5]),
	.d /* IN */ (gpu_addr[5]),
	.g /* IN */ (cald),
	.sys_clk(sys_clk) // Generated
);
ldp1q cpu_addr_inst_6
(
	.q /* OUT */ (cpu_addr[6]),
	.d /* IN */ (gpu_addr[6]),
	.g /* IN */ (cald),
	.sys_clk(sys_clk) // Generated
);
ldp1q cpu_addr_inst_7
(
	.q /* OUT */ (cpu_addr[7]),
	.d /* IN */ (gpu_addr[7]),
	.g /* IN */ (cald),
	.sys_clk(sys_clk) // Generated
);
ldp1q cpu_addr_inst_8
(
	.q /* OUT */ (cpu_addr[8]),
	.d /* IN */ (gpu_addr[8]),
	.g /* IN */ (cald),
	.sys_clk(sys_clk) // Generated
);
ldp1q cpu_addr_inst_9
(
	.q /* OUT */ (cpu_addr[9]),
	.d /* IN */ (gpu_addr[9]),
	.g /* IN */ (cald),
	.sys_clk(sys_clk) // Generated
);
ldp1q cpu_addr_inst_10
(
	.q /* OUT */ (cpu_addr[10]),
	.d /* IN */ (gpu_addr[10]),
	.g /* IN */ (cald),
	.sys_clk(sys_clk) // Generated
);
ldp1q cpu_addr_inst_11
(
	.q /* OUT */ (cpu_addr[11]),
	.d /* IN */ (gpu_addr[11]),
	.g /* IN */ (cald),
	.sys_clk(sys_clk) // Generated
);
ldp1q cpu_addr_inst_12
(
	.q /* OUT */ (cpu_addr[12]),
	.d /* IN */ (gpu_addr[12]),
	.g /* IN */ (cald),
	.sys_clk(sys_clk) // Generated
);
ldp1q cpu_addr_inst_13
(
	.q /* OUT */ (cpu_addr[13]),
	.d /* IN */ (gpu_addr[13]),
	.g /* IN */ (cald),
	.sys_clk(sys_clk) // Generated
);
ldp1q cpu_addr_inst_14
(
	.q /* OUT */ (cpu_addr[14]),
	.d /* IN */ (gpu_addr[14]),
	.g /* IN */ (cald),
	.sys_clk(sys_clk) // Generated
);
ldp1q cpu_addr_inst_15
(
	.q /* OUT */ (cpu_addr[15]),
	.d /* IN */ (gpu_addr[15]),
	.g /* IN */ (cald),
	.sys_clk(sys_clk) // Generated
);
ldp1q cpu_addr_inst_16
(
	.q /* OUT */ (cpu_addr[16]),
	.d /* IN */ (gpu_addr[16]),
	.g /* IN */ (cald),
	.sys_clk(sys_clk) // Generated
);
ldp1q cpu_addr_inst_17
(
	.q /* OUT */ (cpu_addr[17]),
	.d /* IN */ (gpu_addr[17]),
	.g /* IN */ (cald),
	.sys_clk(sys_clk) // Generated
);
ldp1q cpu_addr_inst_18
(
	.q /* OUT */ (cpu_addr[18]),
	.d /* IN */ (gpu_addr[18]),
	.g /* IN */ (cald),
	.sys_clk(sys_clk) // Generated
);
ldp1q cpu_addr_inst_19
(
	.q /* OUT */ (cpu_addr[19]),
	.d /* IN */ (gpu_addr[19]),
	.g /* IN */ (cald),
	.sys_clk(sys_clk) // Generated
);
ldp1q cpu_addr_inst_20
(
	.q /* OUT */ (cpu_addr[20]),
	.d /* IN */ (gpu_addr[20]),
	.g /* IN */ (cald),
	.sys_clk(sys_clk) // Generated
);
ldp1q cpu_addr_inst_21
(
	.q /* OUT */ (cpu_addr[21]),
	.d /* IN */ (gpu_addr[21]),
	.g /* IN */ (cald),
	.sys_clk(sys_clk) // Generated
);
ldp1q cpu_addr_inst_22
(
	.q /* OUT */ (cpu_addr[22]),
	.d /* IN */ (gpu_addr[22]),
	.g /* IN */ (cald),
	.sys_clk(sys_clk) // Generated
);
ldp1q cpu_addr_inst_23
(
	.q /* OUT */ (cpu_addr[23]),
	.d /* IN */ (gpu_addr[23]),
	.g /* IN */ (cald),
	.sys_clk(sys_clk) // Generated
);

// DSP_GATE.NET (185) - dald : an3u
assign dald = external & progserv_n & tlw;

// DSP_GATE.NET (186) - dat_addr : ldp1q
ldp1q dat_addr_inst_0
(
	.q /* OUT */ (dat_addr[0]),
	.d /* IN */ (gpu_addr[0]),
	.g /* IN */ (dald),
	.sys_clk(sys_clk) // Generated
);
ldp1q dat_addr_inst_1
(
	.q /* OUT */ (dat_addr[1]),
	.d /* IN */ (gpu_addr[1]),
	.g /* IN */ (dald),
	.sys_clk(sys_clk) // Generated
);
ldp1q dat_addr_inst_2
(
	.q /* OUT */ (dat_addr[2]),
	.d /* IN */ (gpu_addr[2]),
	.g /* IN */ (dald),
	.sys_clk(sys_clk) // Generated
);
ldp1q dat_addr_inst_3
(
	.q /* OUT */ (dat_addr[3]),
	.d /* IN */ (gpu_addr[3]),
	.g /* IN */ (dald),
	.sys_clk(sys_clk) // Generated
);
ldp1q dat_addr_inst_4
(
	.q /* OUT */ (dat_addr[4]),
	.d /* IN */ (gpu_addr[4]),
	.g /* IN */ (dald),
	.sys_clk(sys_clk) // Generated
);
ldp1q dat_addr_inst_5
(
	.q /* OUT */ (dat_addr[5]),
	.d /* IN */ (gpu_addr[5]),
	.g /* IN */ (dald),
	.sys_clk(sys_clk) // Generated
);
ldp1q dat_addr_inst_6
(
	.q /* OUT */ (dat_addr[6]),
	.d /* IN */ (gpu_addr[6]),
	.g /* IN */ (dald),
	.sys_clk(sys_clk) // Generated
);
ldp1q dat_addr_inst_7
(
	.q /* OUT */ (dat_addr[7]),
	.d /* IN */ (gpu_addr[7]),
	.g /* IN */ (dald),
	.sys_clk(sys_clk) // Generated
);
ldp1q dat_addr_inst_8
(
	.q /* OUT */ (dat_addr[8]),
	.d /* IN */ (gpu_addr[8]),
	.g /* IN */ (dald),
	.sys_clk(sys_clk) // Generated
);
ldp1q dat_addr_inst_9
(
	.q /* OUT */ (dat_addr[9]),
	.d /* IN */ (gpu_addr[9]),
	.g /* IN */ (dald),
	.sys_clk(sys_clk) // Generated
);
ldp1q dat_addr_inst_10
(
	.q /* OUT */ (dat_addr[10]),
	.d /* IN */ (gpu_addr[10]),
	.g /* IN */ (dald),
	.sys_clk(sys_clk) // Generated
);
ldp1q dat_addr_inst_11
(
	.q /* OUT */ (dat_addr[11]),
	.d /* IN */ (gpu_addr[11]),
	.g /* IN */ (dald),
	.sys_clk(sys_clk) // Generated
);
ldp1q dat_addr_inst_12
(
	.q /* OUT */ (dat_addr[12]),
	.d /* IN */ (gpu_addr[12]),
	.g /* IN */ (dald),
	.sys_clk(sys_clk) // Generated
);
ldp1q dat_addr_inst_13
(
	.q /* OUT */ (dat_addr[13]),
	.d /* IN */ (gpu_addr[13]),
	.g /* IN */ (dald),
	.sys_clk(sys_clk) // Generated
);
ldp1q dat_addr_inst_14
(
	.q /* OUT */ (dat_addr[14]),
	.d /* IN */ (gpu_addr[14]),
	.g /* IN */ (dald),
	.sys_clk(sys_clk) // Generated
);
ldp1q dat_addr_inst_15
(
	.q /* OUT */ (dat_addr[15]),
	.d /* IN */ (gpu_addr[15]),
	.g /* IN */ (dald),
	.sys_clk(sys_clk) // Generated
);
ldp1q dat_addr_inst_16
(
	.q /* OUT */ (dat_addr[16]),
	.d /* IN */ (gpu_addr[16]),
	.g /* IN */ (dald),
	.sys_clk(sys_clk) // Generated
);
ldp1q dat_addr_inst_17
(
	.q /* OUT */ (dat_addr[17]),
	.d /* IN */ (gpu_addr[17]),
	.g /* IN */ (dald),
	.sys_clk(sys_clk) // Generated
);
ldp1q dat_addr_inst_18
(
	.q /* OUT */ (dat_addr[18]),
	.d /* IN */ (gpu_addr[18]),
	.g /* IN */ (dald),
	.sys_clk(sys_clk) // Generated
);
ldp1q dat_addr_inst_19
(
	.q /* OUT */ (dat_addr[19]),
	.d /* IN */ (gpu_addr[19]),
	.g /* IN */ (dald),
	.sys_clk(sys_clk) // Generated
);
ldp1q dat_addr_inst_20
(
	.q /* OUT */ (dat_addr[20]),
	.d /* IN */ (gpu_addr[20]),
	.g /* IN */ (dald),
	.sys_clk(sys_clk) // Generated
);
ldp1q dat_addr_inst_21
(
	.q /* OUT */ (dat_addr[21]),
	.d /* IN */ (gpu_addr[21]),
	.g /* IN */ (dald),
	.sys_clk(sys_clk) // Generated
);
ldp1q dat_addr_inst_22
(
	.q /* OUT */ (dat_addr[22]),
	.d /* IN */ (gpu_addr[22]),
	.g /* IN */ (dald),
	.sys_clk(sys_clk) // Generated
);
ldp1q dat_addr_inst_23
(
	.q /* OUT */ (dat_addr[23]),
	.d /* IN */ (gpu_addr[23]),
	.g /* IN */ (dald),
	.sys_clk(sys_clk) // Generated
);

// DSP_GATE.NET (190) - out_addr : mx2
assign address[0] = (progown) ? cpu_addr[0] : dat_addr[0];
assign address[1] = (progown) ? cpu_addr[1] : dat_addr[1];
assign address[2] = (progown) ? cpu_addr[2] : dat_addr[2];
assign address[3] = (progown) ? cpu_addr[3] : dat_addr[3];
assign address[4] = (progown) ? cpu_addr[4] : dat_addr[4];
assign address[5] = (progown) ? cpu_addr[5] : dat_addr[5];
assign address[6] = (progown) ? cpu_addr[6] : dat_addr[6];
assign address[7] = (progown) ? cpu_addr[7] : dat_addr[7];
assign address[8] = (progown) ? cpu_addr[8] : dat_addr[8];
assign address[9] = (progown) ? cpu_addr[9] : dat_addr[9];
assign address[10] = (progown) ? cpu_addr[10] : dat_addr[10];
assign address[11] = (progown) ? cpu_addr[11] : dat_addr[11];
assign address[12] = (progown) ? cpu_addr[12] : dat_addr[12];
assign address[13] = (progown) ? cpu_addr[13] : dat_addr[13];
assign address[14] = (progown) ? cpu_addr[14] : dat_addr[14];
assign address[15] = (progown) ? cpu_addr[15] : dat_addr[15];
assign address[16] = (progown) ? cpu_addr[16] : dat_addr[16];
assign address[17] = (progown) ? cpu_addr[17] : dat_addr[17];
assign address[18] = (progown) ? cpu_addr[18] : dat_addr[18];
assign address[19] = (progown) ? cpu_addr[19] : dat_addr[19];
assign address[20] = (progown) ? cpu_addr[20] : dat_addr[20];
assign address[21] = (progown) ? cpu_addr[21] : dat_addr[21];
assign address[22] = (progown) ? cpu_addr[22] : dat_addr[22];
assign address[23] = (progown) ? cpu_addr[23] : dat_addr[23];

// DSP_GATE.NET (194) - mreq : niv
assign mreq = active;

// DSP_GATE.NET (195) - read : niv
assign read = reada;

// DSP_GATE.NET (200) - msizet[0] : an2
assign msizet_0 = msized_0 & progown_n;

// DSP_GATE.NET (201) - msizet[1] : or2
assign msizet_1 = msized_1 | progown;

// DSP_GATE.NET (202) - width : d24h
d24h width_inst
(
	.z0 /* OUT */ (width_0),
	.z1 /* OUT */ (width_1),
	.z2 /* OUT */ (width_2),
	.z3 /* OUT */ (width_3),
	.a0 /* IN */ (msizet_0),
	.a1 /* IN */ (msizet_1)
);

// DSP_GATE.NET (203) - width[3] : dummy

// DSP_GATE.NET (207) - prog_data : fdsync32
j_fdsync32 prog_data_inst
(
	.q /* OUT */ ({prog_data[0],prog_data[1],prog_data[2],prog_data[3],prog_data[4],prog_data[5],prog_data[6],prog_data[7],prog_data[8],prog_data[9],prog_data[10],prog_data[11],prog_data[12],prog_data[13],prog_data[14],prog_data[15],prog_data[16],prog_data[17],prog_data[18],prog_data[19],prog_data[20],prog_data[21],prog_data[22],prog_data[23],prog_data[24],prog_data[25],prog_data[26],prog_data[27],prog_data[28],prog_data[29],prog_data[30],prog_data[31]}),
	.d /* IN */ ({lodatai[0],lodatai[1],lodatai[2],lodatai[3],lodatai[4],lodatai[5],lodatai[6],lodatai[7],lodatai[8],lodatai[9],lodatai[10],lodatai[11],lodatai[12],lodatai[13],lodatai[14],lodatai[15],lodatai[16],lodatai[17],lodatai[18],lodatai[19],lodatai[20],lodatai[21],lodatai[22],lodatai[23],lodatai[24],lodatai[25],lodatai[26],lodatai[27],lodatai[28],lodatai[29],lodatai[30],lodatai[31]}),
	.ld /* IN */ (pdatldb),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DSP_GATE.NET (211) - lodrd : ts
assign gpu_data_out[0] = prog_data[0];
assign gpu_data_oe[0] = gateack;
assign gpu_data_out[1] = prog_data[1];
assign gpu_data_oe[1] = gateack;
assign gpu_data_out[2] = prog_data[2];
assign gpu_data_oe[2] = gateack;
assign gpu_data_out[3] = prog_data[3];
assign gpu_data_oe[3] = gateack;
assign gpu_data_out[4] = prog_data[4];
assign gpu_data_oe[4] = gateack;
assign gpu_data_out[5] = prog_data[5];
assign gpu_data_oe[5] = gateack;
assign gpu_data_out[6] = prog_data[6];
assign gpu_data_oe[6] = gateack;
assign gpu_data_out[7] = prog_data[7];
assign gpu_data_oe[7] = gateack;
assign gpu_data_out[8] = prog_data[8];
assign gpu_data_oe[8] = gateack;
assign gpu_data_out[9] = prog_data[9];
assign gpu_data_oe[9] = gateack;
assign gpu_data_out[10] = prog_data[10];
assign gpu_data_oe[10] = gateack;
assign gpu_data_out[11] = prog_data[11];
assign gpu_data_oe[11] = gateack;
assign gpu_data_out[12] = prog_data[12];
assign gpu_data_oe[12] = gateack;
assign gpu_data_out[13] = prog_data[13];
assign gpu_data_oe[13] = gateack;
assign gpu_data_out[14] = prog_data[14];
assign gpu_data_oe[14] = gateack;
assign gpu_data_out[15] = prog_data[15];
assign gpu_data_oe[15] = gateack;
assign gpu_data_out[16] = prog_data[16];
assign gpu_data_oe[16] = gateack;
assign gpu_data_out[17] = prog_data[17];
assign gpu_data_oe[17] = gateack;
assign gpu_data_out[18] = prog_data[18];
assign gpu_data_oe[18] = gateack;
assign gpu_data_out[19] = prog_data[19];
assign gpu_data_oe[19] = gateack;
assign gpu_data_out[20] = prog_data[20];
assign gpu_data_oe[20] = gateack;
assign gpu_data_out[21] = prog_data[21];
assign gpu_data_oe[21] = gateack;
assign gpu_data_out[22] = prog_data[22];
assign gpu_data_oe[22] = gateack;
assign gpu_data_out[23] = prog_data[23];
assign gpu_data_oe[23] = gateack;
assign gpu_data_out[24] = prog_data[24];
assign gpu_data_oe[24] = gateack;
assign gpu_data_out[25] = prog_data[25];
assign gpu_data_oe[25] = gateack;
assign gpu_data_out[26] = prog_data[26];
assign gpu_data_oe[26] = gateack;
assign gpu_data_out[27] = prog_data[27];
assign gpu_data_oe[27] = gateack;
assign gpu_data_out[28] = prog_data[28];
assign gpu_data_oe[28] = gateack;
assign gpu_data_out[29] = prog_data[29];
assign gpu_data_oe[29] = gateack;
assign gpu_data_out[30] = prog_data[30];
assign gpu_data_oe[30] = gateack;
assign gpu_data_out[31] = prog_data[31];
assign gpu_data_oe[31] = gateack;

// DSP_GATE.NET (215) - lodwr : an3u
assign lodwr = external & progserv_n & gpu_memw;

// DSP_GATE.NET (223) - maskwt : join
assign maskwt_n = msizet_1;

// DSP_GATE.NET (224) - maskbt : or2
assign maskbt_n = msizet_0 | msizet_1;

// DSP_GATE.NET (226) - maskld : an2
assign maskld = active & gpu_ack;

// DSP_GATE.NET (227) - maskb : fdsynch
j_fdsynch maskb_inst
(
	.q /* OUT */ (maskb_n),
	.d /* IN */ (maskbt_n),
	.ld /* IN */ (maskld),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DSP_GATE.NET (228) - maskw : fdsynch
j_fdsynch maskw_inst
(
	.q /* OUT */ (maskw_n),
	.d /* IN */ (maskwt_n),
	.ld /* IN */ (maskld),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DSP_GATE.NET (230) - lodm[8-15] : an2
assign lodm_8 = maskb_n & data_8;
assign lodm_9 = maskb_n & data_9;
assign lodm_10 = maskb_n & data_10;
assign lodm_11 = maskb_n & data_11;
assign lodm_12 = maskb_n & data_12;
assign lodm_13 = maskb_n & data_13;
assign lodm_14 = maskb_n & data_14;
assign lodm_15 = maskb_n & data_15;

// DSP_GATE.NET (231) - lodm[16-31] : an2
assign lodm_16 = maskw_n & data_16;
assign lodm_17 = maskw_n & data_17;
assign lodm_18 = maskw_n & data_18;
assign lodm_19 = maskw_n & data_19;
assign lodm_20 = maskw_n & data_20;
assign lodm_21 = maskw_n & data_21;
assign lodm_22 = maskw_n & data_22;
assign lodm_23 = maskw_n & data_23;
assign lodm_24 = maskw_n & data_24;
assign lodm_25 = maskw_n & data_25;
assign lodm_26 = maskw_n & data_26;
assign lodm_27 = maskw_n & data_27;
assign lodm_28 = maskw_n & data_28;
assign lodm_29 = maskw_n & data_29;
assign lodm_30 = maskw_n & data_30;
assign lodm_31 = maskw_n & data_31;

// DSP_GATE.NET (233) - lddatai : join
assign lddatai[0] = data_0;
assign lddatai[1] = data_1;
assign lddatai[2] = data_2;
assign lddatai[3] = data_3;
assign lddatai[4] = data_4;
assign lddatai[5] = data_5;
assign lddatai[6] = data_6;
assign lddatai[7] = data_7;
assign lddatai[8] = lodm_8;
assign lddatai[9] = lodm_9;
assign lddatai[10] = lodm_10;
assign lddatai[11] = lodm_11;
assign lddatai[12] = lodm_12;
assign lddatai[13] = lodm_13;
assign lddatai[14] = lodm_14;
assign lddatai[15] = lodm_15;
assign lddatai[16] = lodm_16;
assign lddatai[17] = lodm_17;
assign lddatai[18] = lodm_18;
assign lddatai[19] = lodm_19;
assign lddatai[20] = lodm_20;
assign lddatai[21] = lodm_21;
assign lddatai[22] = lodm_22;
assign lddatai[23] = lodm_23;
assign lddatai[24] = lodm_24;
assign lddatai[25] = lodm_25;
assign lddatai[26] = lodm_26;
assign lddatai[27] = lodm_27;
assign lddatai[28] = lodm_28;
assign lddatai[29] = lodm_29;
assign lddatai[30] = lodm_30;
assign lddatai[31] = lodm_31;

// DSP_GATE.NET (234) - lodin : mx4
mx4 lodin_inst_0
(
	.z /* OUT */ (lodin[0]),
	.a0 /* IN */ (load_data_b0_obuf),
	.a1 /* IN */ (lddatai[0]),
	.a2 /* IN */ (gpu_din[0]),
	.a3 /* IN */ (zero32[0]),
	.s0 /* IN */ (ddatldb),
	.s1 /* IN */ (lodwr)
);
mx4 lodin_inst_1
(
	.z /* OUT */ (lodin[1]),
	.a0 /* IN */ (load_data_b1_obuf),
	.a1 /* IN */ (lddatai[1]),
	.a2 /* IN */ (gpu_din[1]),
	.a3 /* IN */ (zero32[1]),
	.s0 /* IN */ (ddatldb),
	.s1 /* IN */ (lodwr)
);
mx4 lodin_inst_2
(
	.z /* OUT */ (lodin[2]),
	.a0 /* IN */ (load_data_b2_obuf),
	.a1 /* IN */ (lddatai[2]),
	.a2 /* IN */ (gpu_din[2]),
	.a3 /* IN */ (zero32[2]),
	.s0 /* IN */ (ddatldb),
	.s1 /* IN */ (lodwr)
);
mx4 lodin_inst_3
(
	.z /* OUT */ (lodin[3]),
	.a0 /* IN */ (load_data_b3_obuf),
	.a1 /* IN */ (lddatai[3]),
	.a2 /* IN */ (gpu_din[3]),
	.a3 /* IN */ (zero32[3]),
	.s0 /* IN */ (ddatldb),
	.s1 /* IN */ (lodwr)
);
mx4 lodin_inst_4
(
	.z /* OUT */ (lodin[4]),
	.a0 /* IN */ (load_data_b4_obuf),
	.a1 /* IN */ (lddatai[4]),
	.a2 /* IN */ (gpu_din[4]),
	.a3 /* IN */ (zero32[4]),
	.s0 /* IN */ (ddatldb),
	.s1 /* IN */ (lodwr)
);
mx4 lodin_inst_5
(
	.z /* OUT */ (lodin[5]),
	.a0 /* IN */ (load_data_b5_obuf),
	.a1 /* IN */ (lddatai[5]),
	.a2 /* IN */ (gpu_din[5]),
	.a3 /* IN */ (zero32[5]),
	.s0 /* IN */ (ddatldb),
	.s1 /* IN */ (lodwr)
);
mx4 lodin_inst_6
(
	.z /* OUT */ (lodin[6]),
	.a0 /* IN */ (load_data_b6_obuf),
	.a1 /* IN */ (lddatai[6]),
	.a2 /* IN */ (gpu_din[6]),
	.a3 /* IN */ (zero32[6]),
	.s0 /* IN */ (ddatldb),
	.s1 /* IN */ (lodwr)
);
mx4 lodin_inst_7
(
	.z /* OUT */ (lodin[7]),
	.a0 /* IN */ (load_data_b7_obuf),
	.a1 /* IN */ (lddatai[7]),
	.a2 /* IN */ (gpu_din[7]),
	.a3 /* IN */ (zero32[7]),
	.s0 /* IN */ (ddatldb),
	.s1 /* IN */ (lodwr)
);
mx4 lodin_inst_8
(
	.z /* OUT */ (lodin[8]),
	.a0 /* IN */ (load_data_b8_obuf),
	.a1 /* IN */ (lddatai[8]),
	.a2 /* IN */ (gpu_din[8]),
	.a3 /* IN */ (zero32[8]),
	.s0 /* IN */ (ddatldb),
	.s1 /* IN */ (lodwr)
);
mx4 lodin_inst_9
(
	.z /* OUT */ (lodin[9]),
	.a0 /* IN */ (load_data_b9_obuf),
	.a1 /* IN */ (lddatai[9]),
	.a2 /* IN */ (gpu_din[9]),
	.a3 /* IN */ (zero32[9]),
	.s0 /* IN */ (ddatldb),
	.s1 /* IN */ (lodwr)
);
mx4 lodin_inst_10
(
	.z /* OUT */ (lodin[10]),
	.a0 /* IN */ (load_data_b10_obuf),
	.a1 /* IN */ (lddatai[10]),
	.a2 /* IN */ (gpu_din[10]),
	.a3 /* IN */ (zero32[10]),
	.s0 /* IN */ (ddatldb),
	.s1 /* IN */ (lodwr)
);
mx4 lodin_inst_11
(
	.z /* OUT */ (lodin[11]),
	.a0 /* IN */ (load_data_b11_obuf),
	.a1 /* IN */ (lddatai[11]),
	.a2 /* IN */ (gpu_din[11]),
	.a3 /* IN */ (zero32[11]),
	.s0 /* IN */ (ddatldb),
	.s1 /* IN */ (lodwr)
);
mx4 lodin_inst_12
(
	.z /* OUT */ (lodin[12]),
	.a0 /* IN */ (load_data_b12_obuf),
	.a1 /* IN */ (lddatai[12]),
	.a2 /* IN */ (gpu_din[12]),
	.a3 /* IN */ (zero32[12]),
	.s0 /* IN */ (ddatldb),
	.s1 /* IN */ (lodwr)
);
mx4 lodin_inst_13
(
	.z /* OUT */ (lodin[13]),
	.a0 /* IN */ (load_data_b13_obuf),
	.a1 /* IN */ (lddatai[13]),
	.a2 /* IN */ (gpu_din[13]),
	.a3 /* IN */ (zero32[13]),
	.s0 /* IN */ (ddatldb),
	.s1 /* IN */ (lodwr)
);
mx4 lodin_inst_14
(
	.z /* OUT */ (lodin[14]),
	.a0 /* IN */ (load_data_b14_obuf),
	.a1 /* IN */ (lddatai[14]),
	.a2 /* IN */ (gpu_din[14]),
	.a3 /* IN */ (zero32[14]),
	.s0 /* IN */ (ddatldb),
	.s1 /* IN */ (lodwr)
);
mx4 lodin_inst_15
(
	.z /* OUT */ (lodin[15]),
	.a0 /* IN */ (load_data_b15_obuf),
	.a1 /* IN */ (lddatai[15]),
	.a2 /* IN */ (gpu_din[15]),
	.a3 /* IN */ (zero32[15]),
	.s0 /* IN */ (ddatldb),
	.s1 /* IN */ (lodwr)
);
mx4 lodin_inst_16
(
	.z /* OUT */ (lodin[16]),
	.a0 /* IN */ (load_data_b16_obuf),
	.a1 /* IN */ (lddatai[16]),
	.a2 /* IN */ (gpu_din[16]),
	.a3 /* IN */ (zero32[16]),
	.s0 /* IN */ (ddatldb),
	.s1 /* IN */ (lodwr)
);
mx4 lodin_inst_17
(
	.z /* OUT */ (lodin[17]),
	.a0 /* IN */ (load_data_b17_obuf),
	.a1 /* IN */ (lddatai[17]),
	.a2 /* IN */ (gpu_din[17]),
	.a3 /* IN */ (zero32[17]),
	.s0 /* IN */ (ddatldb),
	.s1 /* IN */ (lodwr)
);
mx4 lodin_inst_18
(
	.z /* OUT */ (lodin[18]),
	.a0 /* IN */ (load_data_b18_obuf),
	.a1 /* IN */ (lddatai[18]),
	.a2 /* IN */ (gpu_din[18]),
	.a3 /* IN */ (zero32[18]),
	.s0 /* IN */ (ddatldb),
	.s1 /* IN */ (lodwr)
);
mx4 lodin_inst_19
(
	.z /* OUT */ (lodin[19]),
	.a0 /* IN */ (load_data_b19_obuf),
	.a1 /* IN */ (lddatai[19]),
	.a2 /* IN */ (gpu_din[19]),
	.a3 /* IN */ (zero32[19]),
	.s0 /* IN */ (ddatldb),
	.s1 /* IN */ (lodwr)
);
mx4 lodin_inst_20
(
	.z /* OUT */ (lodin[20]),
	.a0 /* IN */ (load_data_b20_obuf),
	.a1 /* IN */ (lddatai[20]),
	.a2 /* IN */ (gpu_din[20]),
	.a3 /* IN */ (zero32[20]),
	.s0 /* IN */ (ddatldb),
	.s1 /* IN */ (lodwr)
);
mx4 lodin_inst_21
(
	.z /* OUT */ (lodin[21]),
	.a0 /* IN */ (load_data_b21_obuf),
	.a1 /* IN */ (lddatai[21]),
	.a2 /* IN */ (gpu_din[21]),
	.a3 /* IN */ (zero32[21]),
	.s0 /* IN */ (ddatldb),
	.s1 /* IN */ (lodwr)
);
mx4 lodin_inst_22
(
	.z /* OUT */ (lodin[22]),
	.a0 /* IN */ (load_data_b22_obuf),
	.a1 /* IN */ (lddatai[22]),
	.a2 /* IN */ (gpu_din[22]),
	.a3 /* IN */ (zero32[22]),
	.s0 /* IN */ (ddatldb),
	.s1 /* IN */ (lodwr)
);
mx4 lodin_inst_23
(
	.z /* OUT */ (lodin[23]),
	.a0 /* IN */ (load_data_b23_obuf),
	.a1 /* IN */ (lddatai[23]),
	.a2 /* IN */ (gpu_din[23]),
	.a3 /* IN */ (zero32[23]),
	.s0 /* IN */ (ddatldb),
	.s1 /* IN */ (lodwr)
);
mx4 lodin_inst_24
(
	.z /* OUT */ (lodin[24]),
	.a0 /* IN */ (load_data_b24_obuf),
	.a1 /* IN */ (lddatai[24]),
	.a2 /* IN */ (gpu_din[24]),
	.a3 /* IN */ (zero32[24]),
	.s0 /* IN */ (ddatldb),
	.s1 /* IN */ (lodwr)
);
mx4 lodin_inst_25
(
	.z /* OUT */ (lodin[25]),
	.a0 /* IN */ (load_data_b25_obuf),
	.a1 /* IN */ (lddatai[25]),
	.a2 /* IN */ (gpu_din[25]),
	.a3 /* IN */ (zero32[25]),
	.s0 /* IN */ (ddatldb),
	.s1 /* IN */ (lodwr)
);
mx4 lodin_inst_26
(
	.z /* OUT */ (lodin[26]),
	.a0 /* IN */ (load_data_b26_obuf),
	.a1 /* IN */ (lddatai[26]),
	.a2 /* IN */ (gpu_din[26]),
	.a3 /* IN */ (zero32[26]),
	.s0 /* IN */ (ddatldb),
	.s1 /* IN */ (lodwr)
);
mx4 lodin_inst_27
(
	.z /* OUT */ (lodin[27]),
	.a0 /* IN */ (load_data_b27_obuf),
	.a1 /* IN */ (lddatai[27]),
	.a2 /* IN */ (gpu_din[27]),
	.a3 /* IN */ (zero32[27]),
	.s0 /* IN */ (ddatldb),
	.s1 /* IN */ (lodwr)
);
mx4 lodin_inst_28
(
	.z /* OUT */ (lodin[28]),
	.a0 /* IN */ (load_data_b28_obuf),
	.a1 /* IN */ (lddatai[28]),
	.a2 /* IN */ (gpu_din[28]),
	.a3 /* IN */ (zero32[28]),
	.s0 /* IN */ (ddatldb),
	.s1 /* IN */ (lodwr)
);
mx4 lodin_inst_29
(
	.z /* OUT */ (lodin[29]),
	.a0 /* IN */ (load_data_b29_obuf),
	.a1 /* IN */ (lddatai[29]),
	.a2 /* IN */ (gpu_din[29]),
	.a3 /* IN */ (zero32[29]),
	.s0 /* IN */ (ddatldb),
	.s1 /* IN */ (lodwr)
);
mx4 lodin_inst_30
(
	.z /* OUT */ (lodin[30]),
	.a0 /* IN */ (load_data_b30_obuf),
	.a1 /* IN */ (lddatai[30]),
	.a2 /* IN */ (gpu_din[30]),
	.a3 /* IN */ (zero32[30]),
	.s0 /* IN */ (ddatldb),
	.s1 /* IN */ (lodwr)
);
mx4 lodin_inst_31
(
	.z /* OUT */ (lodin[31]),
	.a0 /* IN */ (load_data_b31_obuf),
	.a1 /* IN */ (lddatai[31]),
	.a2 /* IN */ (gpu_din[31]),
	.a3 /* IN */ (zero32[31]),
	.s0 /* IN */ (ddatldb),
	.s1 /* IN */ (lodwr)
);

// DSP_GATE.NET (236) - loaddata : fd1q
fd1q loaddata_inst_0
(
	.q /* OUT */ (load_data_b0_obuf),
	.d /* IN */ (lodin[0]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q loaddata_inst_1
(
	.q /* OUT */ (load_data_b1_obuf),
	.d /* IN */ (lodin[1]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q loaddata_inst_2
(
	.q /* OUT */ (load_data_b2_obuf),
	.d /* IN */ (lodin[2]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q loaddata_inst_3
(
	.q /* OUT */ (load_data_b3_obuf),
	.d /* IN */ (lodin[3]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q loaddata_inst_4
(
	.q /* OUT */ (load_data_b4_obuf),
	.d /* IN */ (lodin[4]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q loaddata_inst_5
(
	.q /* OUT */ (load_data_b5_obuf),
	.d /* IN */ (lodin[5]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q loaddata_inst_6
(
	.q /* OUT */ (load_data_b6_obuf),
	.d /* IN */ (lodin[6]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q loaddata_inst_7
(
	.q /* OUT */ (load_data_b7_obuf),
	.d /* IN */ (lodin[7]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q loaddata_inst_8
(
	.q /* OUT */ (load_data_b8_obuf),
	.d /* IN */ (lodin[8]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q loaddata_inst_9
(
	.q /* OUT */ (load_data_b9_obuf),
	.d /* IN */ (lodin[9]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q loaddata_inst_10
(
	.q /* OUT */ (load_data_b10_obuf),
	.d /* IN */ (lodin[10]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q loaddata_inst_11
(
	.q /* OUT */ (load_data_b11_obuf),
	.d /* IN */ (lodin[11]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q loaddata_inst_12
(
	.q /* OUT */ (load_data_b12_obuf),
	.d /* IN */ (lodin[12]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q loaddata_inst_13
(
	.q /* OUT */ (load_data_b13_obuf),
	.d /* IN */ (lodin[13]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q loaddata_inst_14
(
	.q /* OUT */ (load_data_b14_obuf),
	.d /* IN */ (lodin[14]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q loaddata_inst_15
(
	.q /* OUT */ (load_data_b15_obuf),
	.d /* IN */ (lodin[15]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q loaddata_inst_16
(
	.q /* OUT */ (load_data_b16_obuf),
	.d /* IN */ (lodin[16]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q loaddata_inst_17
(
	.q /* OUT */ (load_data_b17_obuf),
	.d /* IN */ (lodin[17]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q loaddata_inst_18
(
	.q /* OUT */ (load_data_b18_obuf),
	.d /* IN */ (lodin[18]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q loaddata_inst_19
(
	.q /* OUT */ (load_data_b19_obuf),
	.d /* IN */ (lodin[19]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q loaddata_inst_20
(
	.q /* OUT */ (load_data_b20_obuf),
	.d /* IN */ (lodin[20]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q loaddata_inst_21
(
	.q /* OUT */ (load_data_b21_obuf),
	.d /* IN */ (lodin[21]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q loaddata_inst_22
(
	.q /* OUT */ (load_data_b22_obuf),
	.d /* IN */ (lodin[22]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q loaddata_inst_23
(
	.q /* OUT */ (load_data_b23_obuf),
	.d /* IN */ (lodin[23]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q loaddata_inst_24
(
	.q /* OUT */ (load_data_b24_obuf),
	.d /* IN */ (lodin[24]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q loaddata_inst_25
(
	.q /* OUT */ (load_data_b25_obuf),
	.d /* IN */ (lodin[25]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q loaddata_inst_26
(
	.q /* OUT */ (load_data_b26_obuf),
	.d /* IN */ (lodin[26]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q loaddata_inst_27
(
	.q /* OUT */ (load_data_b27_obuf),
	.d /* IN */ (lodin[27]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q loaddata_inst_28
(
	.q /* OUT */ (load_data_b28_obuf),
	.d /* IN */ (lodin[28]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q loaddata_inst_29
(
	.q /* OUT */ (load_data_b29_obuf),
	.d /* IN */ (lodin[29]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q loaddata_inst_30
(
	.q /* OUT */ (load_data_b30_obuf),
	.d /* IN */ (lodin[30]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q loaddata_inst_31
(
	.q /* OUT */ (load_data_b31_obuf),
	.d /* IN */ (lodin[31]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DSP_GATE.NET (244) - ext_reqt0 : aor1
assign ext_reqt_0 = (active & progown) | packwt;

// DSP_GATE.NET (245) - ext_reqt[1-4] : fd1q
fd1q ext_reqt_from_1_to_4_inst_0
(
	.q /* OUT */ (ext_reqt_1),
	.d /* IN */ (ext_reqt_0),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q ext_reqt_from_1_to_4_inst_1
(
	.q /* OUT */ (ext_reqt_2),
	.d /* IN */ (ext_reqt_1),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q ext_reqt_from_1_to_4_inst_2
(
	.q /* OUT */ (ext_reqt_3),
	.d /* IN */ (ext_reqt_2),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q ext_reqt_from_1_to_4_inst_3
(
	.q /* OUT */ (ext_reqt_4),
	.d /* IN */ (ext_reqt_3),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DSP_GATE.NET (246) - ext_reqt[5] : or4
assign ext_reqt_5 = ext_reqt_1 | ext_reqt_2 | ext_reqt_3 | ext_reqt_4;

// DSP_GATE.NET (247) - ext_req\ : nd2
assign ext_req_n = ~(ext_reqt_5 & bus_hog);

// DSP_GATE.NET (255) - gpu_bt0 : nd2
assign gpu_bt_0 = ~(progown_n & dmaen_n);

// DSP_GATE.NET (256) - gpu_bt1 : nd2
assign gpu_bt_1 = ~(gpu_bt_0 & progown_n);

// DSP_GATE.NET (257) - gpu_bt2 : nd2
assign gpu_bt_2 = ~(gpu_bt_1 & active);

// DSP_GATE.NET (258) - gpu_breq : an2
assign gpu_breq_n_obuf = gpu_bt_2 & ext_req_n;

// DSP_GATE.NET (260) - dma_breq : nd3
assign dma_breq_n_obuf = ~(active & progown_n & dmaen);
endmodule
/* verilator lint_on LITENDIAN */
