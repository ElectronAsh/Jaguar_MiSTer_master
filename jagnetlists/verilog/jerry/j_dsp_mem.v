/* verilator lint_off LITENDIAN */
`include "defs.v"

module j_dsp_mem
(
	output [0:31] gpu_data_out,
	output [0:31] gpu_data_oe,
	input [0:31] gpu_data_in,
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
	output accumrd,
	output big_instr,
	output big_io,
	output ctrlwr,
	output dacw_0,
	output dacw_1,
	output datack,
	output dbgrd,
	output del_xld,
	output divwr,
	output externalb,
	output flagrd,
	output flagwr,
	output gateack,
	output [0:23] gpu_addr,
	output gpu_memw,
	output i2sr_0,
	output i2sr_1,
	output i2sr_2,
	output i2sw_0,
	output i2sw_1,
	output i2sw_2,
	output i2sw_3,
	output [0:31] mem_data,
	output modulowr,
	output mtxawr,
	output mtxcwr,
	output pcrd,
	output pcwr,
	output progack,
	output progserv,
	output ram_addr_2,
	output ram_addr_3,
	output ram_addr_4,
	output ram_addr_5,
	output ram_addr_6,
	output ram_addr_7,
	output ram_addr_8,
	output ram_addr_9,
	output ram_addr_10,
	output ram_addr_11,
	output ramen_0,
	output ramen_1,
	output remrd,
	output romen,
	output statrd,
	input clk,
	input [0:12] cpuaddr,
	input [0:31] cpudata,
	input [0:23] dataddr,
	input [0:31] dstd,
	input dstdgate,
	input datreq,
	input datwe,
	input gatereq,
	input go,
	input [0:31] gpu_din,
	input ioreq,
	input iowr,
	input pabort,
	input [0:21] progaddr,
	input progreq,
	input reset_n,
	input sys_clk // Generated
);
wire [0:31] datdata;
wire [0:31] datdata_n;
wire [0:31] wdata;
wire one;
wire zero;
wire datreq_n;
wire datwe_n;
wire gatereq_n;
wire go_n;
wire ioreq_n;
wire pabort_n;
wire progreq_n;
wire gatereqa;
wire datreqa;
wire progreqa;
wire xprogi_n;
wire ioservt;
wire ioserv;
wire ioserv_n;
wire ioserva_0;
wire ioserva_1;
wire ioserva_2;
wire gateserv;
wire gateserv_n;
wire datservt;
wire datservb_0;
wire datservb_1;
wire datservb_2;
wire datservb_3;
wire datservb_4;
wire datserv;
wire datserv_n;
wire progservt;
wire progserv_n;
wire busactive_n;
wire xpabortset_n;
wire xprog;
wire xpabortt_0;
wire xpabort;
wire xpabortt_1;
wire xpabort_n;
wire xprogset_n;
wire xprogt_0;
wire xprogi;
wire xprog_n;
wire external;
wire xprt;
wire xprt_n;
wire progat_0;
wire progat_1;
wire gpu_memwi;
wire gpu_memwt;
wire gpu_memw_n;
wire dstdld_n;
wire cpudsel;
wire gpuprd_n;
wire gpuden;
wire gpuprd;
wire gpu_addr_0;
wire gpu_addr_1;
wire ram_addr_12;
wire ram_addr_13;
wire ram_addr_14;
wire ram_addr_n_12;
wire ram_addr_n_13;
wire ram_addr_n_14;
wire gpu_addr_2;
wire gpu_addr_3;
wire gpu_addr_4;
wire gpu_addr_5;
wire gpu_addr_6;
wire gpu_addr_7;
wire gpu_addr_8;
wire gpu_addr_9;
wire gpu_addr_10;
wire gpu_addr_11;
wire gpu_addr_12;
wire gpu_addr_13;
wire gpu_addr_14;
wire gpu_addr_15;
wire gpu_addr_16;
wire gpu_addr_17;
wire gpu_addr_18;
wire gpu_addr_19;
wire gpu_addr_20;
wire gpu_addr_21;
wire gpu_addr_22;
wire gpu_addr_23;
wire gpu_addr_n_2;
wire gpu_addr_n_3;
wire gpu_addr_n_4;
wire gpu_addr_n_5;
wire gpu_addr_n_6;
wire gpu_addr_n_7;
wire gpu_addr_n_8;
wire gpu_addr_n_9;
wire gpu_addr_n_10;
wire gpu_addr_n_11;
wire gpu_addr_n_12;
wire gpu_addr_n_14;
wire locala_15;
wire locala_16;
wire locala_n_17;
wire locala_n_18;
wire locala_n_19;
wire locala_20;
wire locala_21;
wire locala_22;
wire locala_23;
wire localaddr_n;
wire localt_0;
wire localt_1;
wire _local;
wire localf;
wire extt;
wire idle_n;
wire gpuen;
wire rament_0;
wire rament_1;
wire gpuireg;
wire gpu_addrb_2;
wire gpu_addrb_3;
wire gpu_addrb_4;
wire gpu_addrb_5;
wire gpu_addrb_6;
wire bigwr;
wire i2shien;
wire big_ioi;
wire big_iot;

// Output buffers
wire externalb_obuf;
wire flagrd_obuf;
wire gpu_addr_b2_obuf;
wire gpu_addr_b3_obuf;
wire gpu_addr_b4_obuf;
wire gpu_addr_b5_obuf;
wire gpu_addr_b6_obuf;
wire gpu_addr_b7_obuf;
wire gpu_addr_b8_obuf;
wire gpu_addr_b9_obuf;
wire gpu_addr_b10_obuf;
wire gpu_addr_b11_obuf;
wire gpu_addr_b12_obuf;
wire gpu_addr_b14_obuf;
wire gpu_memw_obuf;
wire i2sr_0_obuf;
wire i2sr_1_obuf;
wire i2sr_2_obuf;
wire progserv_obuf;
wire ram_addr_2_obuf;
wire ram_addr_3_obuf;
wire ram_addr_4_obuf;
wire ram_addr_5_obuf;
wire ram_addr_6_obuf;
wire ram_addr_7_obuf;
wire ram_addr_8_obuf;
wire ram_addr_9_obuf;
wire ram_addr_10_obuf;
wire ram_addr_11_obuf;
wire statrd_obuf;


// Output buffers
assign externalb = externalb_obuf;
assign flagrd = flagrd_obuf;
assign gpu_addr[2] = gpu_addr_b2_obuf;
assign gpu_addr[3] = gpu_addr_b3_obuf;
assign gpu_addr[4] = gpu_addr_b4_obuf;
assign gpu_addr[5] = gpu_addr_b5_obuf;
assign gpu_addr[6] = gpu_addr_b6_obuf;
assign gpu_addr[7] = gpu_addr_b7_obuf;
assign gpu_addr[8] = gpu_addr_b8_obuf;
assign gpu_addr[9] = gpu_addr_b9_obuf;
assign gpu_addr[10] = gpu_addr_b10_obuf;
assign gpu_addr[11] = gpu_addr_b11_obuf;
assign gpu_addr[12] = gpu_addr_b12_obuf;
assign gpu_addr[14] = gpu_addr_b14_obuf;
assign gpu_memw = gpu_memw_obuf;
assign i2sr_0 = i2sr_0_obuf;
assign i2sr_1 = i2sr_1_obuf;
assign i2sr_2 = i2sr_2_obuf;
assign progserv = progserv_obuf;
assign ram_addr_2 = ram_addr_2_obuf;
assign ram_addr_3 = ram_addr_3_obuf;
assign ram_addr_4 = ram_addr_4_obuf;
assign ram_addr_5 = ram_addr_5_obuf;
assign ram_addr_6 = ram_addr_6_obuf;
assign ram_addr_7 = ram_addr_7_obuf;
assign ram_addr_8 = ram_addr_8_obuf;
assign ram_addr_9 = ram_addr_9_obuf;
assign ram_addr_10 = ram_addr_10_obuf;
assign ram_addr_11 = ram_addr_11_obuf;
assign statrd = statrd_obuf;


// DSP_MEM.NET (111) - one : tie1
assign one = 1'b1;

// DSP_MEM.NET (112) - zero : tie0
assign zero = 1'b0;

// DSP_MEM.NET (114) - datreq\ : iv
assign datreq_n = ~datreq;

// DSP_MEM.NET (115) - datwe\ : iv
assign datwe_n = ~datwe;

// DSP_MEM.NET (116) - gatereq\ : iv
assign gatereq_n = ~gatereq;

// DSP_MEM.NET (117) - go\ : iv
assign go_n = ~go;

// DSP_MEM.NET (118) - ioreq\ : iv
assign ioreq_n = ~ioreq;

// DSP_MEM.NET (119) - pabort\ : ivs
assign pabort_n = ~pabort;

// DSP_MEM.NET (120) - progreq\ : iv
assign progreq_n = ~progreq;

// DSP_MEM.NET (124) - gatereqa : an2
assign gatereqa = gatereq & ioreq_n;

// DSP_MEM.NET (125) - datreqa : an3h
assign datreqa = datreq & gatereq_n & ioreq_n;

// DSP_MEM.NET (126) - progreqa : an5p
assign progreqa = progreq & datreq_n & gatereq_n & ioreq_n & xprogi_n;

// DSP_MEM.NET (132) - ioservt : fd2q
fd2q ioservt_inst
(
	.q /* OUT */ (ioservt),
	.d /* IN */ (ioreq),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// DSP_MEM.NET (133) - ioserv : niv
assign ioserv = ioservt;

// DSP_MEM.NET (134) - ioserv\ : iv
assign ioserv_n = ~ioservt;

// DSP_MEM.NET (135) - ioserva[0-2] : fd2q
fd2q ioserva_from_0_to_2_inst_0
(
	.q /* OUT */ (ioserva_0),
	.d /* IN */ (ioreq),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q ioserva_from_0_to_2_inst_1
(
	.q /* OUT */ (ioserva_1),
	.d /* IN */ (ioreq),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q ioserva_from_0_to_2_inst_2
(
	.q /* OUT */ (ioserva_2),
	.d /* IN */ (ioreq),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// DSP_MEM.NET (136) - gateserv : fd2q
fd2q gateserv_inst
(
	.q /* OUT */ (gateserv),
	.d /* IN */ (gatereqa),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// DSP_MEM.NET (137) - gateserv\ : iv
assign gateserv_n = ~gateserv;

// DSP_MEM.NET (138) - datservt : fd2q
fd2q datservt_inst
(
	.q /* OUT */ (datservt),
	.d /* IN */ (datreqa),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// DSP_MEM.NET (139) - datservb[0-4] : fd2qp
fd2q datservb_from_0_to_4_inst_0
(
	.q /* OUT */ (datservb_0),
	.d /* IN */ (datreqa),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q datservb_from_0_to_4_inst_1
(
	.q /* OUT */ (datservb_1),
	.d /* IN */ (datreqa),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q datservb_from_0_to_4_inst_2
(
	.q /* OUT */ (datservb_2),
	.d /* IN */ (datreqa),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q datservb_from_0_to_4_inst_3
(
	.q /* OUT */ (datservb_3),
	.d /* IN */ (datreqa),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q datservb_from_0_to_4_inst_4
(
	.q /* OUT */ (datservb_4),
	.d /* IN */ (datreqa),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// DSP_MEM.NET (140) - datserv : nivu
assign datserv = datservt;

// DSP_MEM.NET (141) - datserv\ : iv
assign datserv_n = ~datservt;

// DSP_MEM.NET (142) - progservt : fd2q
fd2q progservt_inst
(
	.q /* OUT */ (progservt),
	.d /* IN */ (progreqa),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// DSP_MEM.NET (143) - progserv : nivm
assign progserv_obuf = progservt;

// DSP_MEM.NET (144) - progserv\ : iv
assign progserv_n = ~progservt;

// DSP_MEM.NET (148) - busactive\ : nr4
assign busactive_n = ~(ioserv | gateserv | datserv | progserv_obuf);

// DSP_MEM.NET (160) - xpabortset : nd3
assign xpabortset_n = ~(xprog & progreq_n & gateserv_n);

// DSP_MEM.NET (161) - xpabortt0 : nd2
assign xpabortt_0 = ~(xpabort & gateserv_n);

// DSP_MEM.NET (162) - xpabortt1 : nd2
assign xpabortt_1 = ~(xpabortset_n & xpabortt_0);

// DSP_MEM.NET (163) - xpabort : fd2q
fd2q xpabort_inst
(
	.q /* OUT */ (xpabort),
	.d /* IN */ (xpabortt_1),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// DSP_MEM.NET (164) - xpabort\ : iv
assign xpabort_n = ~xpabort;

// DSP_MEM.NET (177) - xprogset\ : nd3p
assign xprogset_n = ~(progserv_obuf & externalb_obuf & pabort_n);

// DSP_MEM.NET (178) - xprogt0 : nd2
assign xprogt_0 = ~(xprog & gateserv_n);

// DSP_MEM.NET (179) - xprogi : nd2
assign xprogi = ~(xprogt_0 & xprogset_n);

// DSP_MEM.NET (180) - xprogi\ : iv
assign xprogi_n = ~xprogi;

// DSP_MEM.NET (181) - xprog : fd2q
fd2q xprog_inst
(
	.q /* OUT */ (xprog),
	.d /* IN */ (xprogi),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// DSP_MEM.NET (182) - xprog\ : iv
assign xprog_n = ~xprog;

// DSP_MEM.NET (193) - del_xld : an3m
assign del_xld = datserv & external & datwe_n;

// DSP_MEM.NET (202) - xprt : nd2p
assign xprt = ~(xprog_n & xprogset_n);

// DSP_MEM.NET (203) - xprt\ : iv
assign xprt_n = ~xprt;

// DSP_MEM.NET (204) - progat0 : nd3
assign progat_0 = ~(xprt_n & progserv_obuf & pabort_n);

// DSP_MEM.NET (205) - progat1 : nd3
assign progat_1 = ~(xprt & gateserv & xpabort_n);

// DSP_MEM.NET (206) - progack : nd2u
assign progack = ~(progat_0 & progat_1);

// DSP_MEM.NET (210) - datack : nivu
assign datack = datserv;

// DSP_MEM.NET (214) - gateack : nivu
assign gateack = gateserv;

// DSP_MEM.NET (221) - gpu_memwi : aor2
assign gpu_memwi = (datwe & datreqa) | (iowr & ioreq);

// DSP_MEM.NET (223) - gpu_memwt : fd1q
fd1q gpu_memwt_inst
(
	.q /* OUT */ (gpu_memwt),
	.d /* IN */ (gpu_memwi),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DSP_MEM.NET (224) - gpu_memw\ : ivm
assign gpu_memw_n = ~gpu_memwt;

// DSP_MEM.NET (225) - gpu_memw : nivh
assign gpu_memw_obuf = gpu_memwt;

// DSP_MEM.NET (239) - dstdld : nr2u
assign dstdld_n = ~(dstdgate | go_n);

// DSP_MEM.NET (240) - datdata : fd1e
fd1e datdata_inst_0
(
	.q /* OUT */ (datdata[0]),
	.qn /* OUT */ (datdata_n[0]),
	.d /* IN */ (dstd[0]),
	.cp /* IN */ (clk),
	.ti /* IN */ (datdata[0]),
	.te /* IN */ (dstdld_n),
	.sys_clk(sys_clk) // Generated
);
fd1e datdata_inst_1
(
	.q /* OUT */ (datdata[1]),
	.qn /* OUT */ (datdata_n[1]),
	.d /* IN */ (dstd[1]),
	.cp /* IN */ (clk),
	.ti /* IN */ (datdata[1]),
	.te /* IN */ (dstdld_n),
	.sys_clk(sys_clk) // Generated
);
fd1e datdata_inst_2
(
	.q /* OUT */ (datdata[2]),
	.qn /* OUT */ (datdata_n[2]),
	.d /* IN */ (dstd[2]),
	.cp /* IN */ (clk),
	.ti /* IN */ (datdata[2]),
	.te /* IN */ (dstdld_n),
	.sys_clk(sys_clk) // Generated
);
fd1e datdata_inst_3
(
	.q /* OUT */ (datdata[3]),
	.qn /* OUT */ (datdata_n[3]),
	.d /* IN */ (dstd[3]),
	.cp /* IN */ (clk),
	.ti /* IN */ (datdata[3]),
	.te /* IN */ (dstdld_n),
	.sys_clk(sys_clk) // Generated
);
fd1e datdata_inst_4
(
	.q /* OUT */ (datdata[4]),
	.qn /* OUT */ (datdata_n[4]),
	.d /* IN */ (dstd[4]),
	.cp /* IN */ (clk),
	.ti /* IN */ (datdata[4]),
	.te /* IN */ (dstdld_n),
	.sys_clk(sys_clk) // Generated
);
fd1e datdata_inst_5
(
	.q /* OUT */ (datdata[5]),
	.qn /* OUT */ (datdata_n[5]),
	.d /* IN */ (dstd[5]),
	.cp /* IN */ (clk),
	.ti /* IN */ (datdata[5]),
	.te /* IN */ (dstdld_n),
	.sys_clk(sys_clk) // Generated
);
fd1e datdata_inst_6
(
	.q /* OUT */ (datdata[6]),
	.qn /* OUT */ (datdata_n[6]),
	.d /* IN */ (dstd[6]),
	.cp /* IN */ (clk),
	.ti /* IN */ (datdata[6]),
	.te /* IN */ (dstdld_n),
	.sys_clk(sys_clk) // Generated
);
fd1e datdata_inst_7
(
	.q /* OUT */ (datdata[7]),
	.qn /* OUT */ (datdata_n[7]),
	.d /* IN */ (dstd[7]),
	.cp /* IN */ (clk),
	.ti /* IN */ (datdata[7]),
	.te /* IN */ (dstdld_n),
	.sys_clk(sys_clk) // Generated
);
fd1e datdata_inst_8
(
	.q /* OUT */ (datdata[8]),
	.qn /* OUT */ (datdata_n[8]),
	.d /* IN */ (dstd[8]),
	.cp /* IN */ (clk),
	.ti /* IN */ (datdata[8]),
	.te /* IN */ (dstdld_n),
	.sys_clk(sys_clk) // Generated
);
fd1e datdata_inst_9
(
	.q /* OUT */ (datdata[9]),
	.qn /* OUT */ (datdata_n[9]),
	.d /* IN */ (dstd[9]),
	.cp /* IN */ (clk),
	.ti /* IN */ (datdata[9]),
	.te /* IN */ (dstdld_n),
	.sys_clk(sys_clk) // Generated
);
fd1e datdata_inst_10
(
	.q /* OUT */ (datdata[10]),
	.qn /* OUT */ (datdata_n[10]),
	.d /* IN */ (dstd[10]),
	.cp /* IN */ (clk),
	.ti /* IN */ (datdata[10]),
	.te /* IN */ (dstdld_n),
	.sys_clk(sys_clk) // Generated
);
fd1e datdata_inst_11
(
	.q /* OUT */ (datdata[11]),
	.qn /* OUT */ (datdata_n[11]),
	.d /* IN */ (dstd[11]),
	.cp /* IN */ (clk),
	.ti /* IN */ (datdata[11]),
	.te /* IN */ (dstdld_n),
	.sys_clk(sys_clk) // Generated
);
fd1e datdata_inst_12
(
	.q /* OUT */ (datdata[12]),
	.qn /* OUT */ (datdata_n[12]),
	.d /* IN */ (dstd[12]),
	.cp /* IN */ (clk),
	.ti /* IN */ (datdata[12]),
	.te /* IN */ (dstdld_n),
	.sys_clk(sys_clk) // Generated
);
fd1e datdata_inst_13
(
	.q /* OUT */ (datdata[13]),
	.qn /* OUT */ (datdata_n[13]),
	.d /* IN */ (dstd[13]),
	.cp /* IN */ (clk),
	.ti /* IN */ (datdata[13]),
	.te /* IN */ (dstdld_n),
	.sys_clk(sys_clk) // Generated
);
fd1e datdata_inst_14
(
	.q /* OUT */ (datdata[14]),
	.qn /* OUT */ (datdata_n[14]),
	.d /* IN */ (dstd[14]),
	.cp /* IN */ (clk),
	.ti /* IN */ (datdata[14]),
	.te /* IN */ (dstdld_n),
	.sys_clk(sys_clk) // Generated
);
fd1e datdata_inst_15
(
	.q /* OUT */ (datdata[15]),
	.qn /* OUT */ (datdata_n[15]),
	.d /* IN */ (dstd[15]),
	.cp /* IN */ (clk),
	.ti /* IN */ (datdata[15]),
	.te /* IN */ (dstdld_n),
	.sys_clk(sys_clk) // Generated
);
fd1e datdata_inst_16
(
	.q /* OUT */ (datdata[16]),
	.qn /* OUT */ (datdata_n[16]),
	.d /* IN */ (dstd[16]),
	.cp /* IN */ (clk),
	.ti /* IN */ (datdata[16]),
	.te /* IN */ (dstdld_n),
	.sys_clk(sys_clk) // Generated
);
fd1e datdata_inst_17
(
	.q /* OUT */ (datdata[17]),
	.qn /* OUT */ (datdata_n[17]),
	.d /* IN */ (dstd[17]),
	.cp /* IN */ (clk),
	.ti /* IN */ (datdata[17]),
	.te /* IN */ (dstdld_n),
	.sys_clk(sys_clk) // Generated
);
fd1e datdata_inst_18
(
	.q /* OUT */ (datdata[18]),
	.qn /* OUT */ (datdata_n[18]),
	.d /* IN */ (dstd[18]),
	.cp /* IN */ (clk),
	.ti /* IN */ (datdata[18]),
	.te /* IN */ (dstdld_n),
	.sys_clk(sys_clk) // Generated
);
fd1e datdata_inst_19
(
	.q /* OUT */ (datdata[19]),
	.qn /* OUT */ (datdata_n[19]),
	.d /* IN */ (dstd[19]),
	.cp /* IN */ (clk),
	.ti /* IN */ (datdata[19]),
	.te /* IN */ (dstdld_n),
	.sys_clk(sys_clk) // Generated
);
fd1e datdata_inst_20
(
	.q /* OUT */ (datdata[20]),
	.qn /* OUT */ (datdata_n[20]),
	.d /* IN */ (dstd[20]),
	.cp /* IN */ (clk),
	.ti /* IN */ (datdata[20]),
	.te /* IN */ (dstdld_n),
	.sys_clk(sys_clk) // Generated
);
fd1e datdata_inst_21
(
	.q /* OUT */ (datdata[21]),
	.qn /* OUT */ (datdata_n[21]),
	.d /* IN */ (dstd[21]),
	.cp /* IN */ (clk),
	.ti /* IN */ (datdata[21]),
	.te /* IN */ (dstdld_n),
	.sys_clk(sys_clk) // Generated
);
fd1e datdata_inst_22
(
	.q /* OUT */ (datdata[22]),
	.qn /* OUT */ (datdata_n[22]),
	.d /* IN */ (dstd[22]),
	.cp /* IN */ (clk),
	.ti /* IN */ (datdata[22]),
	.te /* IN */ (dstdld_n),
	.sys_clk(sys_clk) // Generated
);
fd1e datdata_inst_23
(
	.q /* OUT */ (datdata[23]),
	.qn /* OUT */ (datdata_n[23]),
	.d /* IN */ (dstd[23]),
	.cp /* IN */ (clk),
	.ti /* IN */ (datdata[23]),
	.te /* IN */ (dstdld_n),
	.sys_clk(sys_clk) // Generated
);
fd1e datdata_inst_24
(
	.q /* OUT */ (datdata[24]),
	.qn /* OUT */ (datdata_n[24]),
	.d /* IN */ (dstd[24]),
	.cp /* IN */ (clk),
	.ti /* IN */ (datdata[24]),
	.te /* IN */ (dstdld_n),
	.sys_clk(sys_clk) // Generated
);
fd1e datdata_inst_25
(
	.q /* OUT */ (datdata[25]),
	.qn /* OUT */ (datdata_n[25]),
	.d /* IN */ (dstd[25]),
	.cp /* IN */ (clk),
	.ti /* IN */ (datdata[25]),
	.te /* IN */ (dstdld_n),
	.sys_clk(sys_clk) // Generated
);
fd1e datdata_inst_26
(
	.q /* OUT */ (datdata[26]),
	.qn /* OUT */ (datdata_n[26]),
	.d /* IN */ (dstd[26]),
	.cp /* IN */ (clk),
	.ti /* IN */ (datdata[26]),
	.te /* IN */ (dstdld_n),
	.sys_clk(sys_clk) // Generated
);
fd1e datdata_inst_27
(
	.q /* OUT */ (datdata[27]),
	.qn /* OUT */ (datdata_n[27]),
	.d /* IN */ (dstd[27]),
	.cp /* IN */ (clk),
	.ti /* IN */ (datdata[27]),
	.te /* IN */ (dstdld_n),
	.sys_clk(sys_clk) // Generated
);
fd1e datdata_inst_28
(
	.q /* OUT */ (datdata[28]),
	.qn /* OUT */ (datdata_n[28]),
	.d /* IN */ (dstd[28]),
	.cp /* IN */ (clk),
	.ti /* IN */ (datdata[28]),
	.te /* IN */ (dstdld_n),
	.sys_clk(sys_clk) // Generated
);
fd1e datdata_inst_29
(
	.q /* OUT */ (datdata[29]),
	.qn /* OUT */ (datdata_n[29]),
	.d /* IN */ (dstd[29]),
	.cp /* IN */ (clk),
	.ti /* IN */ (datdata[29]),
	.te /* IN */ (dstdld_n),
	.sys_clk(sys_clk) // Generated
);
fd1e datdata_inst_30
(
	.q /* OUT */ (datdata[30]),
	.qn /* OUT */ (datdata_n[30]),
	.d /* IN */ (dstd[30]),
	.cp /* IN */ (clk),
	.ti /* IN */ (datdata[30]),
	.te /* IN */ (dstdld_n),
	.sys_clk(sys_clk) // Generated
);
fd1e datdata_inst_31
(
	.q /* OUT */ (datdata[31]),
	.qn /* OUT */ (datdata_n[31]),
	.d /* IN */ (dstd[31]),
	.cp /* IN */ (clk),
	.ti /* IN */ (datdata[31]),
	.te /* IN */ (dstdld_n),
	.sys_clk(sys_clk) // Generated
);

// DSP_MEM.NET (242) - dummy : dummy

// DSP_MEM.NET (244) - cpusel : an2u
assign cpudsel = ioserv & gpuprd_n;

// DSP_MEM.NET (245) - gpuden : or4u
assign gpuden = gpu_memw_obuf | gpuprd | busactive_n | externalb_obuf;

// DSP_MEM.NET (247) - wseld : mx2
assign wdata[0] = (cpudsel) ? cpudata[0] : datdata[0];
assign wdata[1] = (cpudsel) ? cpudata[1] : datdata[1];
assign wdata[2] = (cpudsel) ? cpudata[2] : datdata[2];
assign wdata[3] = (cpudsel) ? cpudata[3] : datdata[3];
assign wdata[4] = (cpudsel) ? cpudata[4] : datdata[4];
assign wdata[5] = (cpudsel) ? cpudata[5] : datdata[5];
assign wdata[6] = (cpudsel) ? cpudata[6] : datdata[6];
assign wdata[7] = (cpudsel) ? cpudata[7] : datdata[7];
assign wdata[8] = (cpudsel) ? cpudata[8] : datdata[8];
assign wdata[9] = (cpudsel) ? cpudata[9] : datdata[9];
assign wdata[10] = (cpudsel) ? cpudata[10] : datdata[10];
assign wdata[11] = (cpudsel) ? cpudata[11] : datdata[11];
assign wdata[12] = (cpudsel) ? cpudata[12] : datdata[12];
assign wdata[13] = (cpudsel) ? cpudata[13] : datdata[13];
assign wdata[14] = (cpudsel) ? cpudata[14] : datdata[14];
assign wdata[15] = (cpudsel) ? cpudata[15] : datdata[15];
assign wdata[16] = (cpudsel) ? cpudata[16] : datdata[16];
assign wdata[17] = (cpudsel) ? cpudata[17] : datdata[17];
assign wdata[18] = (cpudsel) ? cpudata[18] : datdata[18];
assign wdata[19] = (cpudsel) ? cpudata[19] : datdata[19];
assign wdata[20] = (cpudsel) ? cpudata[20] : datdata[20];
assign wdata[21] = (cpudsel) ? cpudata[21] : datdata[21];
assign wdata[22] = (cpudsel) ? cpudata[22] : datdata[22];
assign wdata[23] = (cpudsel) ? cpudata[23] : datdata[23];
assign wdata[24] = (cpudsel) ? cpudata[24] : datdata[24];
assign wdata[25] = (cpudsel) ? cpudata[25] : datdata[25];
assign wdata[26] = (cpudsel) ? cpudata[26] : datdata[26];
assign wdata[27] = (cpudsel) ? cpudata[27] : datdata[27];
assign wdata[28] = (cpudsel) ? cpudata[28] : datdata[28];
assign wdata[29] = (cpudsel) ? cpudata[29] : datdata[29];
assign wdata[30] = (cpudsel) ? cpudata[30] : datdata[30];
assign wdata[31] = (cpudsel) ? cpudata[31] : datdata[31];

// DSP_MEM.NET (248) - gpu_data : ts
assign gpu_data_out[0] = wdata[0];
assign gpu_data_oe[0] = gpuden;
assign gpu_data_out[1] = wdata[1];
assign gpu_data_oe[1] = gpuden;
assign gpu_data_out[2] = wdata[2];
assign gpu_data_oe[2] = gpuden;
assign gpu_data_out[3] = wdata[3];
assign gpu_data_oe[3] = gpuden;
assign gpu_data_out[4] = wdata[4];
assign gpu_data_oe[4] = gpuden;
assign gpu_data_out[5] = wdata[5];
assign gpu_data_oe[5] = gpuden;
assign gpu_data_out[6] = wdata[6];
assign gpu_data_oe[6] = gpuden;
assign gpu_data_out[7] = wdata[7];
assign gpu_data_oe[7] = gpuden;
assign gpu_data_out[8] = wdata[8];
assign gpu_data_oe[8] = gpuden;
assign gpu_data_out[9] = wdata[9];
assign gpu_data_oe[9] = gpuden;
assign gpu_data_out[10] = wdata[10];
assign gpu_data_oe[10] = gpuden;
assign gpu_data_out[11] = wdata[11];
assign gpu_data_oe[11] = gpuden;
assign gpu_data_out[12] = wdata[12];
assign gpu_data_oe[12] = gpuden;
assign gpu_data_out[13] = wdata[13];
assign gpu_data_oe[13] = gpuden;
assign gpu_data_out[14] = wdata[14];
assign gpu_data_oe[14] = gpuden;
assign gpu_data_out[15] = wdata[15];
assign gpu_data_oe[15] = gpuden;
assign gpu_data_out[16] = wdata[16];
assign gpu_data_oe[16] = gpuden;
assign gpu_data_out[17] = wdata[17];
assign gpu_data_oe[17] = gpuden;
assign gpu_data_out[18] = wdata[18];
assign gpu_data_oe[18] = gpuden;
assign gpu_data_out[19] = wdata[19];
assign gpu_data_oe[19] = gpuden;
assign gpu_data_out[20] = wdata[20];
assign gpu_data_oe[20] = gpuden;
assign gpu_data_out[21] = wdata[21];
assign gpu_data_oe[21] = gpuden;
assign gpu_data_out[22] = wdata[22];
assign gpu_data_oe[22] = gpuden;
assign gpu_data_out[23] = wdata[23];
assign gpu_data_oe[23] = gpuden;
assign gpu_data_out[24] = wdata[24];
assign gpu_data_oe[24] = gpuden;
assign gpu_data_out[25] = wdata[25];
assign gpu_data_oe[25] = gpuden;
assign gpu_data_out[26] = wdata[26];
assign gpu_data_oe[26] = gpuden;
assign gpu_data_out[27] = wdata[27];
assign gpu_data_oe[27] = gpuden;
assign gpu_data_out[28] = wdata[28];
assign gpu_data_oe[28] = gpuden;
assign gpu_data_out[29] = wdata[29];
assign gpu_data_oe[29] = gpuden;
assign gpu_data_out[30] = wdata[30];
assign gpu_data_oe[30] = gpuden;
assign gpu_data_out[31] = wdata[31];
assign gpu_data_oe[31] = gpuden;

// DSP_MEM.NET (253) - mem_data : fd1q
fd1q mem_data_inst_0
(
	.q /* OUT */ (mem_data[0]),
	.d /* IN */ (gpu_din[0]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mem_data_inst_1
(
	.q /* OUT */ (mem_data[1]),
	.d /* IN */ (gpu_din[1]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mem_data_inst_2
(
	.q /* OUT */ (mem_data[2]),
	.d /* IN */ (gpu_din[2]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mem_data_inst_3
(
	.q /* OUT */ (mem_data[3]),
	.d /* IN */ (gpu_din[3]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mem_data_inst_4
(
	.q /* OUT */ (mem_data[4]),
	.d /* IN */ (gpu_din[4]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mem_data_inst_5
(
	.q /* OUT */ (mem_data[5]),
	.d /* IN */ (gpu_din[5]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mem_data_inst_6
(
	.q /* OUT */ (mem_data[6]),
	.d /* IN */ (gpu_din[6]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mem_data_inst_7
(
	.q /* OUT */ (mem_data[7]),
	.d /* IN */ (gpu_din[7]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mem_data_inst_8
(
	.q /* OUT */ (mem_data[8]),
	.d /* IN */ (gpu_din[8]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mem_data_inst_9
(
	.q /* OUT */ (mem_data[9]),
	.d /* IN */ (gpu_din[9]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mem_data_inst_10
(
	.q /* OUT */ (mem_data[10]),
	.d /* IN */ (gpu_din[10]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mem_data_inst_11
(
	.q /* OUT */ (mem_data[11]),
	.d /* IN */ (gpu_din[11]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mem_data_inst_12
(
	.q /* OUT */ (mem_data[12]),
	.d /* IN */ (gpu_din[12]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mem_data_inst_13
(
	.q /* OUT */ (mem_data[13]),
	.d /* IN */ (gpu_din[13]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mem_data_inst_14
(
	.q /* OUT */ (mem_data[14]),
	.d /* IN */ (gpu_din[14]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mem_data_inst_15
(
	.q /* OUT */ (mem_data[15]),
	.d /* IN */ (gpu_din[15]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mem_data_inst_16
(
	.q /* OUT */ (mem_data[16]),
	.d /* IN */ (gpu_din[16]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mem_data_inst_17
(
	.q /* OUT */ (mem_data[17]),
	.d /* IN */ (gpu_din[17]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mem_data_inst_18
(
	.q /* OUT */ (mem_data[18]),
	.d /* IN */ (gpu_din[18]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mem_data_inst_19
(
	.q /* OUT */ (mem_data[19]),
	.d /* IN */ (gpu_din[19]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mem_data_inst_20
(
	.q /* OUT */ (mem_data[20]),
	.d /* IN */ (gpu_din[20]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mem_data_inst_21
(
	.q /* OUT */ (mem_data[21]),
	.d /* IN */ (gpu_din[21]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mem_data_inst_22
(
	.q /* OUT */ (mem_data[22]),
	.d /* IN */ (gpu_din[22]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mem_data_inst_23
(
	.q /* OUT */ (mem_data[23]),
	.d /* IN */ (gpu_din[23]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mem_data_inst_24
(
	.q /* OUT */ (mem_data[24]),
	.d /* IN */ (gpu_din[24]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mem_data_inst_25
(
	.q /* OUT */ (mem_data[25]),
	.d /* IN */ (gpu_din[25]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mem_data_inst_26
(
	.q /* OUT */ (mem_data[26]),
	.d /* IN */ (gpu_din[26]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mem_data_inst_27
(
	.q /* OUT */ (mem_data[27]),
	.d /* IN */ (gpu_din[27]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mem_data_inst_28
(
	.q /* OUT */ (mem_data[28]),
	.d /* IN */ (gpu_din[28]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mem_data_inst_29
(
	.q /* OUT */ (mem_data[29]),
	.d /* IN */ (gpu_din[29]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mem_data_inst_30
(
	.q /* OUT */ (mem_data[30]),
	.d /* IN */ (gpu_din[30]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q mem_data_inst_31
(
	.q /* OUT */ (mem_data[31]),
	.d /* IN */ (gpu_din[31]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DSP_MEM.NET (266) - gpu_addr[0-1] : an2
assign gpu_addr_0 = dataddr[0] & datserv;
assign gpu_addr_1 = dataddr[1] & datserv;

// DSP_MEM.NET (267) - amux[2-5] : mx4p
mx4 amux_from_2_to_5_inst_0
(
	.z /* OUT */ (ram_addr_2_obuf),
	.a0 /* IN */ (progaddr[0]),
	.a1 /* IN */ (dataddr[2]),
	.a2 /* IN */ (cpuaddr[0]),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (datservb_0),
	.s1 /* IN */ (ioserva_0)
);
mx4 amux_from_2_to_5_inst_1
(
	.z /* OUT */ (ram_addr_3_obuf),
	.a0 /* IN */ (progaddr[1]),
	.a1 /* IN */ (dataddr[3]),
	.a2 /* IN */ (cpuaddr[1]),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (datservb_0),
	.s1 /* IN */ (ioserva_0)
);
mx4 amux_from_2_to_5_inst_2
(
	.z /* OUT */ (ram_addr_4_obuf),
	.a0 /* IN */ (progaddr[2]),
	.a1 /* IN */ (dataddr[4]),
	.a2 /* IN */ (cpuaddr[2]),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (datservb_0),
	.s1 /* IN */ (ioserva_0)
);
mx4 amux_from_2_to_5_inst_3
(
	.z /* OUT */ (ram_addr_5_obuf),
	.a0 /* IN */ (progaddr[3]),
	.a1 /* IN */ (dataddr[5]),
	.a2 /* IN */ (cpuaddr[3]),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (datservb_0),
	.s1 /* IN */ (ioserva_0)
);

// DSP_MEM.NET (270) - amux[6-9] : mx4p
mx4 amux_from_6_to_9_inst_0
(
	.z /* OUT */ (ram_addr_6_obuf),
	.a0 /* IN */ (progaddr[4]),
	.a1 /* IN */ (dataddr[6]),
	.a2 /* IN */ (cpuaddr[4]),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (datservb_1),
	.s1 /* IN */ (ioserva_1)
);
mx4 amux_from_6_to_9_inst_1
(
	.z /* OUT */ (ram_addr_7_obuf),
	.a0 /* IN */ (progaddr[5]),
	.a1 /* IN */ (dataddr[7]),
	.a2 /* IN */ (cpuaddr[5]),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (datservb_1),
	.s1 /* IN */ (ioserva_1)
);
mx4 amux_from_6_to_9_inst_2
(
	.z /* OUT */ (ram_addr_8_obuf),
	.a0 /* IN */ (progaddr[6]),
	.a1 /* IN */ (dataddr[8]),
	.a2 /* IN */ (cpuaddr[6]),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (datservb_1),
	.s1 /* IN */ (ioserva_1)
);
mx4 amux_from_6_to_9_inst_3
(
	.z /* OUT */ (ram_addr_9_obuf),
	.a0 /* IN */ (progaddr[7]),
	.a1 /* IN */ (dataddr[9]),
	.a2 /* IN */ (cpuaddr[7]),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (datservb_1),
	.s1 /* IN */ (ioserva_1)
);

// DSP_MEM.NET (273) - amux[10-14] : mx4p
mx4 amux_from_10_to_14_inst_0
(
	.z /* OUT */ (ram_addr_10_obuf),
	.a0 /* IN */ (progaddr[8]),
	.a1 /* IN */ (dataddr[10]),
	.a2 /* IN */ (cpuaddr[8]),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (datservb_2),
	.s1 /* IN */ (ioserva_2)
);
mx4 amux_from_10_to_14_inst_1
(
	.z /* OUT */ (ram_addr_11_obuf),
	.a0 /* IN */ (progaddr[9]),
	.a1 /* IN */ (dataddr[11]),
	.a2 /* IN */ (cpuaddr[9]),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (datservb_2),
	.s1 /* IN */ (ioserva_2)
);
mx4 amux_from_10_to_14_inst_2
(
	.z /* OUT */ (ram_addr_12),
	.a0 /* IN */ (progaddr[10]),
	.a1 /* IN */ (dataddr[12]),
	.a2 /* IN */ (cpuaddr[10]),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (datservb_2),
	.s1 /* IN */ (ioserva_2)
);
mx4 amux_from_10_to_14_inst_3
(
	.z /* OUT */ (ram_addr_13),
	.a0 /* IN */ (progaddr[11]),
	.a1 /* IN */ (dataddr[13]),
	.a2 /* IN */ (cpuaddr[11]),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (datservb_2),
	.s1 /* IN */ (ioserva_2)
);
mx4 amux_from_10_to_14_inst_4
(
	.z /* OUT */ (ram_addr_14),
	.a0 /* IN */ (progaddr[12]),
	.a1 /* IN */ (dataddr[14]),
	.a2 /* IN */ (cpuaddr[12]),
	.a3 /* IN */ (zero),
	.s0 /* IN */ (datservb_2),
	.s1 /* IN */ (ioserva_2)
);

// DSP_MEM.NET (276) - ram_addr\[12-14] : iv
assign ram_addr_n_12 = ~ram_addr_12;
assign ram_addr_n_13 = ~ram_addr_13;
assign ram_addr_n_14 = ~ram_addr_14;

// DSP_MEM.NET (277) - gpu_addr[2-14] : nivm
assign gpu_addr_2 = ram_addr_2_obuf;
assign gpu_addr_3 = ram_addr_3_obuf;
assign gpu_addr_4 = ram_addr_4_obuf;
assign gpu_addr_5 = ram_addr_5_obuf;
assign gpu_addr_6 = ram_addr_6_obuf;
assign gpu_addr_7 = ram_addr_7_obuf;
assign gpu_addr_8 = ram_addr_8_obuf;
assign gpu_addr_9 = ram_addr_9_obuf;
assign gpu_addr_10 = ram_addr_10_obuf;
assign gpu_addr_11 = ram_addr_11_obuf;
assign gpu_addr_12 = ram_addr_12;
assign gpu_addr_13 = ram_addr_13;
assign gpu_addr_14 = ram_addr_14;

// DSP_MEM.NET (279) - amux[15-23] : mx2
assign gpu_addr_15 = (datserv) ? dataddr[15] : progaddr[13];
assign gpu_addr_16 = (datserv) ? dataddr[16] : progaddr[14];
assign gpu_addr_17 = (datserv) ? dataddr[17] : progaddr[15];
assign gpu_addr_18 = (datserv) ? dataddr[18] : progaddr[16];
assign gpu_addr_19 = (datserv) ? dataddr[19] : progaddr[17];
assign gpu_addr_20 = (datserv) ? dataddr[20] : progaddr[18];
assign gpu_addr_21 = (datserv) ? dataddr[21] : progaddr[19];
assign gpu_addr_22 = (datserv) ? dataddr[22] : progaddr[20];
assign gpu_addr_23 = (datserv) ? dataddr[23] : progaddr[21];

// DSP_MEM.NET (281) - gpu_addr : join
assign gpu_addr[0] = gpu_addr_0;
assign gpu_addr[1] = gpu_addr_1;
assign gpu_addr_b2_obuf = gpu_addr_2;
assign gpu_addr_b3_obuf = gpu_addr_3;
assign gpu_addr_b4_obuf = gpu_addr_4;
assign gpu_addr_b5_obuf = gpu_addr_5;
assign gpu_addr_b6_obuf = gpu_addr_6;
assign gpu_addr_b7_obuf = gpu_addr_7;
assign gpu_addr_b8_obuf = gpu_addr_8;
assign gpu_addr_b9_obuf = gpu_addr_9;
assign gpu_addr_b10_obuf = gpu_addr_10;
assign gpu_addr_b11_obuf = gpu_addr_11;
assign gpu_addr_b12_obuf = gpu_addr_12;
assign gpu_addr[13] = gpu_addr_13;
assign gpu_addr_b14_obuf = gpu_addr_14;
assign gpu_addr[15] = gpu_addr_15;
assign gpu_addr[16] = gpu_addr_16;
assign gpu_addr[17] = gpu_addr_17;
assign gpu_addr[18] = gpu_addr_18;
assign gpu_addr[19] = gpu_addr_19;
assign gpu_addr[20] = gpu_addr_20;
assign gpu_addr[21] = gpu_addr_21;
assign gpu_addr[22] = gpu_addr_22;
assign gpu_addr[23] = gpu_addr_23;

// DSP_MEM.NET (290) - gpua\[2] : ivml
assign gpu_addr_n_2 = ~gpu_addr_b2_obuf;

// DSP_MEM.NET (291) - gpua\[3] : ivml
assign gpu_addr_n_3 = ~gpu_addr_b3_obuf;

// DSP_MEM.NET (292) - gpua\[4] : ivml
assign gpu_addr_n_4 = ~gpu_addr_b4_obuf;

// DSP_MEM.NET (293) - gpua\[5-6] : ivml
assign gpu_addr_n_5 = ~gpu_addr_b5_obuf;
assign gpu_addr_n_6 = ~gpu_addr_b6_obuf;

// DSP_MEM.NET (294) - gpua\[7-12] : iv
assign gpu_addr_n_7 = ~gpu_addr_b7_obuf;
assign gpu_addr_n_8 = ~gpu_addr_b8_obuf;
assign gpu_addr_n_9 = ~gpu_addr_b9_obuf;
assign gpu_addr_n_10 = ~gpu_addr_b10_obuf;
assign gpu_addr_n_11 = ~gpu_addr_b11_obuf;
assign gpu_addr_n_12 = ~gpu_addr_b12_obuf;

// DSP_MEM.NET (295) - gpua\[14] : iv
assign gpu_addr_n_14 = ~gpu_addr_b14_obuf;

// DSP_MEM.NET (304) - locala[15-16] : mx2p
assign locala_15 = (datservb_3) ? dataddr[15] : progaddr[13];
assign locala_16 = (datservb_3) ? dataddr[16] : progaddr[14];

// DSP_MEM.NET (306) - locala[17-19] : mxi2p
mxi2 locala_from_17_to_19_inst_0
(
	.z /* OUT */ (locala_n_17),
	.a0 /* IN */ (progaddr[15]),
	.a1 /* IN */ (dataddr[17]),
	.s /* IN */ (datservb_3)
);
mxi2 locala_from_17_to_19_inst_1
(
	.z /* OUT */ (locala_n_18),
	.a0 /* IN */ (progaddr[16]),
	.a1 /* IN */ (dataddr[18]),
	.s /* IN */ (datservb_3)
);
mxi2 locala_from_17_to_19_inst_2
(
	.z /* OUT */ (locala_n_19),
	.a0 /* IN */ (progaddr[17]),
	.a1 /* IN */ (dataddr[19]),
	.s /* IN */ (datservb_3)
);

// DSP_MEM.NET (308) - locala[20-21] : mx2p
assign locala_20 = (datservb_3) ? dataddr[20] : progaddr[18];
assign locala_21 = (datservb_3) ? dataddr[21] : progaddr[19];

// DSP_MEM.NET (310) - locala[22-23] : mx2p
assign locala_22 = (datservb_4) ? dataddr[22] : progaddr[20];
assign locala_23 = (datservb_4) ? dataddr[23] : progaddr[21];

// DSP_MEM.NET (312) - localaddr\ : nd9
assign localaddr_n = ~(locala_15 & locala_16 & locala_n_17 & locala_n_18 & locala_n_19 & locala_20 & locala_21 & locala_22 & locala_23);

// DSP_MEM.NET (315) - localt0 : nd2
assign localt_0 = ~(progserv_n & datserv_n);

// DSP_MEM.NET (316) - localt1 : nd10
assign localt_1 = ~(locala_15 & locala_16 & locala_n_17 & locala_n_18 & locala_n_19 & locala_20 & locala_21 & locala_22 & locala_23 & localt_0);

// DSP_MEM.NET (319) - local : nd2p
assign _local = ~(ioserv_n & localt_1);

// DSP_MEM.NET (320) - localf : nd2
assign localf = ~(ioserv_n & localt_1);

// DSP_MEM.NET (324) - extt : nd2
assign extt = ~(datserv_n & progserv_n);

// DSP_MEM.NET (325) - external : an2
assign external = localaddr_n & extt;

// DSP_MEM.NET (326) - externalb : nivm
assign externalb_obuf = external;

// DSP_MEM.NET (336) - idle\ : or3
assign idle_n = ioserv | datserv | progserv_obuf;

// DSP_MEM.NET (337) - gpuen : an8
assign gpuen = gpu_addr_n_9 & gpu_addr_n_10 & gpu_addr_n_11 & gpu_addr_n_12 & gpu_addr_13 & gpu_addr_n_14 & _local & idle_n;

// DSP_MEM.NET (339) - rament[0] : an3
assign rament_0 = ram_addr_12 & ram_addr_13 & ram_addr_n_14;

// DSP_MEM.NET (341) - rament[1] : an3
assign rament_1 = ram_addr_n_12 & ram_addr_n_13 & ram_addr_14;

// DSP_MEM.NET (343) - ramen[0-1] : an3p
assign ramen_0 = rament_0 & localf & idle_n;
assign ramen_1 = rament_1 & localf & idle_n;

// DSP_MEM.NET (344) - romen : an6p
assign romen = ram_addr_12 & ram_addr_n_13 & ram_addr_14 & localf & idle_n & one;

// DSP_MEM.NET (351) - gpuprd\ : nd4
assign gpuprd_n = ~(gpuen & gpu_addr_n_8 & go_n & gpu_memw_n);

// DSP_MEM.NET (353) - gpuprd : iv
assign gpuprd = ~gpuprd_n;

// DSP_MEM.NET (357) - gpuireg : an3h
assign gpuireg = gpuen & gpu_addr_n_7 & gpu_addr_b8_obuf;

// DSP_MEM.NET (362) - gpu_addrb[2] : nivm
assign gpu_addrb_2 = gpu_addr_b2_obuf;

// DSP_MEM.NET (363) - gpu_addrb[3] : nivh
assign gpu_addrb_3 = gpu_addr_b3_obuf;

// DSP_MEM.NET (364) - gpu_addrb[4] : nivm
assign gpu_addrb_4 = gpu_addr_b4_obuf;

// DSP_MEM.NET (365) - gpu_addrb[5] : niv
assign gpu_addrb_5 = gpu_addr_b5_obuf;

// DSP_MEM.NET (366) - gpu_addrb[6] : nivm
assign gpu_addrb_6 = gpu_addr_b6_obuf;

// DSP_MEM.NET (368) - flagwr : an7h
assign flagwr = gpu_addr_n_2 & gpu_addr_n_3 & gpu_addr_n_4 & gpu_addr_n_5 & gpu_addr_n_6 & gpuireg & gpu_memw_obuf;

// DSP_MEM.NET (370) - mtxcwr : an7m
assign mtxcwr = gpu_addrb_2 & gpu_addr_n_3 & gpu_addr_n_4 & gpu_addr_n_5 & gpu_addr_n_6 & gpuireg & gpu_memw_obuf;

// DSP_MEM.NET (372) - mtxawr : an7m
assign mtxawr = gpu_addr_n_2 & gpu_addrb_3 & gpu_addr_n_4 & gpu_addr_n_5 & gpu_addr_n_6 & gpuireg & gpu_memw_obuf;

// DSP_MEM.NET (374) - bigwr : an7
assign bigwr = gpu_addrb_2 & gpu_addrb_3 & gpu_addr_n_4 & gpu_addr_n_5 & gpu_addr_n_6 & gpuireg & gpu_memw_obuf;

// DSP_MEM.NET (376) - pcwr : an7
assign pcwr = gpu_addr_n_2 & gpu_addr_n_3 & gpu_addrb_4 & gpu_addr_n_5 & gpu_addr_n_6 & gpuireg & gpu_memw_obuf;

// DSP_MEM.NET (378) - ctrlwr : an7m
assign ctrlwr = gpu_addrb_2 & gpu_addr_n_3 & gpu_addrb_4 & gpu_addr_n_5 & gpu_addr_n_6 & gpuireg & gpu_memw_obuf;

// DSP_MEM.NET (381) - modulowr : an7u
assign modulowr = gpu_addr_n_2 & gpu_addrb_3 & gpu_addrb_4 & gpu_addr_n_5 & gpu_addr_n_6 & gpuireg & gpu_memw_obuf;

// DSP_MEM.NET (383) - divwr : an7
assign divwr = gpu_addrb_2 & gpu_addrb_3 & gpu_addrb_4 & gpu_addr_n_5 & gpu_addr_n_6 & gpuireg & gpu_memw_obuf;

// DSP_MEM.NET (387) - dacw[0] : an7h
assign dacw_0 = gpu_addr_n_2 & gpu_addr_n_3 & gpu_addr_n_4 & gpu_addr_n_5 & gpu_addrb_6 & gpuireg & gpu_memw_obuf;

// DSP_MEM.NET (389) - dacw[1] : an7h
assign dacw_1 = gpu_addr_2 & gpu_addr_n_3 & gpu_addr_n_4 & gpu_addr_n_5 & gpu_addrb_6 & gpuireg & gpu_memw_obuf;

// DSP_MEM.NET (391) - i2sw[0] : an7h
assign i2sw_0 = gpu_addr_n_2 & gpu_addr_3 & gpu_addr_n_4 & gpu_addr_n_5 & gpu_addrb_6 & gpuireg & gpu_memw_obuf;

// DSP_MEM.NET (394) - i2sw[1] : an7h
assign i2sw_1 = gpu_addr_2 & gpu_addr_3 & gpu_addr_n_4 & gpu_addr_n_5 & gpu_addrb_6 & gpuireg & gpu_memw_obuf;

// DSP_MEM.NET (397) - i2sw[2] : an7h
assign i2sw_2 = gpu_addr_n_2 & gpu_addr_n_3 & gpu_addr_4 & gpu_addr_n_5 & gpu_addrb_6 & gpuireg & gpu_memw_obuf;

// DSP_MEM.NET (400) - i2sw[3] : an7h
assign i2sw_3 = gpu_addr_2 & gpu_addr_n_3 & gpu_addr_4 & gpu_addr_n_5 & gpu_addrb_6 & gpuireg & gpu_memw_obuf;

// DSP_MEM.NET (406) - flagrd : an7h
assign flagrd_obuf = gpu_addr_n_2 & gpu_addr_n_3 & gpu_addr_n_4 & gpu_addr_n_5 & gpu_addr_n_6 & gpuireg & gpu_memw_n;

// DSP_MEM.NET (408) - pcrd : an7u
assign pcrd = gpu_addr_n_2 & gpu_addr_n_3 & gpu_addrb_4 & gpu_addr_n_5 & gpu_addr_n_6 & gpuireg & gpu_memw_n;

// DSP_MEM.NET (410) - statrd : an7h
assign statrd_obuf = gpu_addrb_2 & gpu_addr_n_3 & gpu_addrb_4 & gpu_addr_n_5 & gpu_addr_n_6 & gpuireg & gpu_memw_n;

// DSP_MEM.NET (413) - remrd : an7u
assign remrd = gpu_addrb_2 & gpu_addrb_3 & gpu_addrb_4 & gpu_addr_n_5 & gpu_addr_n_6 & gpuireg & gpu_memw_n;

// DSP_MEM.NET (415) - accumrd : an7u
assign accumrd = gpu_addr_n_2 & gpu_addr_n_3 & gpu_addr_n_4 & gpu_addrb_5 & gpu_addr_n_6 & gpuireg & gpu_memw_n;

// DSP_MEM.NET (418) - dbgrd : or2_h
assign dbgrd = flagrd_obuf | statrd_obuf;

// DSP_MEM.NET (420) - i2sr[0] : an7h
assign i2sr_0_obuf = gpu_addr_n_2 & gpu_addr_3 & gpu_addr_n_4 & gpu_addr_n_5 & gpu_addrb_6 & gpuireg & gpu_memw_n;

// DSP_MEM.NET (423) - i2sr[1] : an7h
assign i2sr_1_obuf = gpu_addr_2 & gpu_addr_3 & gpu_addr_n_4 & gpu_addr_n_5 & gpu_addrb_6 & gpuireg & gpu_memw_n;

// DSP_MEM.NET (426) - i2sr[2] : an7h
assign i2sr_2_obuf = gpu_addr_n_2 & gpu_addr_n_3 & gpu_addr_4 & gpu_addr_n_5 & gpu_addrb_6 & gpuireg & gpu_memw_n;

// DSP_MEM.NET (432) - i2shien : or3_h
assign i2shien = i2sr_0_obuf | i2sr_1_obuf | i2sr_2_obuf;

// DSP_MEM.NET (433) - i2shid[16-31] : ts
assign gpu_dout_16_out = gpu_dout_0_in;
assign gpu_dout_16_oe = i2shien;
assign gpu_dout_17_out = gpu_dout_1_in;
assign gpu_dout_17_oe = i2shien;
assign gpu_dout_18_out = gpu_dout_2_in;
assign gpu_dout_18_oe = i2shien;
assign gpu_dout_19_out = gpu_dout_3_in;
assign gpu_dout_19_oe = i2shien;
assign gpu_dout_20_out = gpu_dout_4_in;
assign gpu_dout_20_oe = i2shien;
assign gpu_dout_21_out = gpu_dout_5_in;
assign gpu_dout_21_oe = i2shien;
assign gpu_dout_22_out = gpu_dout_6_in;
assign gpu_dout_22_oe = i2shien;
assign gpu_dout_23_out = gpu_dout_7_in;
assign gpu_dout_23_oe = i2shien;
assign gpu_dout_24_out = gpu_dout_8_in;
assign gpu_dout_24_oe = i2shien;
assign gpu_dout_25_out = gpu_dout_9_in;
assign gpu_dout_25_oe = i2shien;
assign gpu_dout_26_out = gpu_dout_10_in;
assign gpu_dout_26_oe = i2shien;
assign gpu_dout_27_out = gpu_dout_11_in;
assign gpu_dout_27_oe = i2shien;
assign gpu_dout_28_out = gpu_dout_12_in;
assign gpu_dout_28_oe = i2shien;
assign gpu_dout_29_out = gpu_dout_13_in;
assign gpu_dout_29_oe = i2shien;
assign gpu_dout_30_out = gpu_dout_14_in;
assign gpu_dout_30_oe = i2shien;
assign gpu_dout_31_out = gpu_dout_15_in;
assign gpu_dout_31_oe = i2shien;

// DSP_MEM.NET (436) - i2shid[0-15] : ts
assign gpu_dout_0_out = zero;
assign gpu_dout_0_oe = zero;
assign gpu_dout_1_out = zero;
assign gpu_dout_1_oe = zero;
assign gpu_dout_2_out = zero;
assign gpu_dout_2_oe = zero;
assign gpu_dout_3_out = zero;
assign gpu_dout_3_oe = zero;
assign gpu_dout_4_out = zero;
assign gpu_dout_4_oe = zero;
assign gpu_dout_5_out = zero;
assign gpu_dout_5_oe = zero;
assign gpu_dout_6_out = zero;
assign gpu_dout_6_oe = zero;
assign gpu_dout_7_out = zero;
assign gpu_dout_7_oe = zero;
assign gpu_dout_8_out = zero;
assign gpu_dout_8_oe = zero;
assign gpu_dout_9_out = zero;
assign gpu_dout_9_oe = zero;
assign gpu_dout_10_out = zero;
assign gpu_dout_10_oe = zero;
assign gpu_dout_11_out = zero;
assign gpu_dout_11_oe = zero;
assign gpu_dout_12_out = zero;
assign gpu_dout_12_oe = zero;
assign gpu_dout_13_out = zero;
assign gpu_dout_13_oe = zero;
assign gpu_dout_14_out = zero;
assign gpu_dout_14_oe = zero;
assign gpu_dout_15_out = zero;
assign gpu_dout_15_oe = zero;

// DSP_MEM.NET (440) - big_ioi : mx2
assign big_ioi = (bigwr) ? gpu_din[0] : big_iot;

// DSP_MEM.NET (441) - big_iot : fd4q
fd4q big_iot_inst
(
	.q /* OUT */ (big_iot),
	.d /* IN */ (big_ioi),
	.cp /* IN */ (clk),
	.sd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// DSP_MEM.NET (442) - big_io : nivu2
assign big_io = big_iot;

// DSP_MEM.NET (444) - big_instr : fdsyncr
j_fdsyncr big_instr_inst
(
	.q /* OUT */ (big_instr),
	.d /* IN */ (gpu_din[2]),
	.ld /* IN */ (bigwr),
	.clk /* IN */ (clk),
	.rst_n /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
endmodule
/* verilator lint_on LITENDIAN */
