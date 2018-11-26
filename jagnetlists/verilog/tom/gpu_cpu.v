/* verilator lint_off LITENDIAN */
`include "defs.v"

module gpu_cpu
(
	output [0:15] dread_out,
	output [0:15] dread_oe,
	input [0:15] dread_in,
	output [0:12] cpuaddr,
	output [0:31] cpudata,
	output ioreq,
	input at_1,
	input a_15,
	input ack,
	input big_io,
	input clk_0,
	input clk_2,
	input dwrite_0,
	input dwrite_1,
	input dwrite_2,
	input dwrite_3,
	input dwrite_4,
	input dwrite_5,
	input dwrite_6,
	input dwrite_7,
	input dwrite_8,
	input dwrite_9,
	input dwrite_10,
	input dwrite_11,
	input dwrite_12,
	input dwrite_13,
	input dwrite_14,
	input dwrite_15,
	input dwrite_16,
	input dwrite_17,
	input dwrite_18,
	input dwrite_19,
	input dwrite_20,
	input dwrite_21,
	input dwrite_22,
	input dwrite_23,
	input dwrite_24,
	input dwrite_25,
	input dwrite_26,
	input dwrite_27,
	input dwrite_28,
	input dwrite_29,
	input dwrite_30,
	input dwrite_31,
	input [0:15] io_addr,
	input iord,
	input iowr,
	input [0:31] mem_data,
	input reset_n,
	input sys_clk // Generated
);
wire [0:15] cpudlo;
wire [0:15] cpudhi;
wire [0:15] cpudhit;
wire [0:15] dreadt;
wire [0:15] dwritelo;
wire [0:15] dwritehi;
wire [0:15] gpudlo;
wire [0:15] gpudhi;
wire [0:15] lodata;
wire [0:15] latrdata;
wire [0:15] latrdatai;
wire [0:15] immrdata;
wire io_addr_n_1;
wire at_n_1;
wire at_15;
wire atl_15;
wire iorqt_0;
wire iorqt_2;
wire iorqt_1;
wire rden;
wire rdenp;
wire iowrite;
wire lodld;
wire lodsel;
wire cpuaddr_2;
wire cpuaddr_3;
wire cpuaddr_4;
wire cpuaddr_5;
wire cpuaddr_6;
wire cpuaddr_7;
wire cpuaddr_8;
wire cpuaddr_9;
wire cpuaddr_10;
wire cpuaddr_11;
wire cpuaddr_12;
wire cpuaddr_13;
wire cpuaddr_14;
wire hidld;
wire dreaden;

// GPU_CPU.NET (50) - dwritelo : join
assign dwritelo[0] = dwrite_0;
assign dwritelo[1] = dwrite_1;
assign dwritelo[2] = dwrite_2;
assign dwritelo[3] = dwrite_3;
assign dwritelo[4] = dwrite_4;
assign dwritelo[5] = dwrite_5;
assign dwritelo[6] = dwrite_6;
assign dwritelo[7] = dwrite_7;
assign dwritelo[8] = dwrite_8;
assign dwritelo[9] = dwrite_9;
assign dwritelo[10] = dwrite_10;
assign dwritelo[11] = dwrite_11;
assign dwritelo[12] = dwrite_12;
assign dwritelo[13] = dwrite_13;
assign dwritelo[14] = dwrite_14;
assign dwritelo[15] = dwrite_15;

// GPU_CPU.NET (51) - dwritehi : join
assign dwritehi[0] = dwrite_16;
assign dwritehi[1] = dwrite_17;
assign dwritehi[2] = dwrite_18;
assign dwritehi[3] = dwrite_19;
assign dwritehi[4] = dwrite_20;
assign dwritehi[5] = dwrite_21;
assign dwritehi[6] = dwrite_22;
assign dwritehi[7] = dwrite_23;
assign dwritehi[8] = dwrite_24;
assign dwritehi[9] = dwrite_25;
assign dwritehi[10] = dwrite_26;
assign dwritehi[11] = dwrite_27;
assign dwritehi[12] = dwrite_28;
assign dwritehi[13] = dwrite_29;
assign dwritehi[14] = dwrite_30;
assign dwritehi[15] = dwrite_31;

// GPU_CPU.NET (52) - gpudlo : join
assign gpudlo[0] = mem_data[0];
assign gpudlo[1] = mem_data[1];
assign gpudlo[2] = mem_data[2];
assign gpudlo[3] = mem_data[3];
assign gpudlo[4] = mem_data[4];
assign gpudlo[5] = mem_data[5];
assign gpudlo[6] = mem_data[6];
assign gpudlo[7] = mem_data[7];
assign gpudlo[8] = mem_data[8];
assign gpudlo[9] = mem_data[9];
assign gpudlo[10] = mem_data[10];
assign gpudlo[11] = mem_data[11];
assign gpudlo[12] = mem_data[12];
assign gpudlo[13] = mem_data[13];
assign gpudlo[14] = mem_data[14];
assign gpudlo[15] = mem_data[15];

// GPU_CPU.NET (53) - gpudhi : join
assign gpudhi[0] = mem_data[16];
assign gpudhi[1] = mem_data[17];
assign gpudhi[2] = mem_data[18];
assign gpudhi[3] = mem_data[19];
assign gpudhi[4] = mem_data[20];
assign gpudhi[5] = mem_data[21];
assign gpudhi[6] = mem_data[22];
assign gpudhi[7] = mem_data[23];
assign gpudhi[8] = mem_data[24];
assign gpudhi[9] = mem_data[25];
assign gpudhi[10] = mem_data[26];
assign gpudhi[11] = mem_data[27];
assign gpudhi[12] = mem_data[28];
assign gpudhi[13] = mem_data[29];
assign gpudhi[14] = mem_data[30];
assign gpudhi[15] = mem_data[31];

// GPU_CPU.NET (54) - io_addr\[1] : iv
assign io_addr_n_1 = ~io_addr[1];

// GPU_CPU.NET (59) - at\[1] : iv
assign at_n_1 = ~at_1;

// GPU_CPU.NET (60) - at[15] : mx2
assign at_15 = (ack) ? a_15 : atl_15;

// GPU_CPU.NET (61) - atl[15] : fd1q
fd1q atl_index_15_inst
(
	.q /* OUT */ (atl_15),
	.d /* IN */ (at_15),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);

// GPU_CPU.NET (67) - iorqt0 : nd2
assign iorqt_0 = ~(iord & at_n_1);

// GPU_CPU.NET (68) - iorqt2 : or2
assign iorqt_2 = at_1 | at_15;

// GPU_CPU.NET (69) - iorqt1 : nd2
assign iorqt_1 = ~(iowr & iorqt_2);

// GPU_CPU.NET (70) - ioreq : nd2
assign ioreq = ~(iorqt_0 & iorqt_1);

// GPU_CPU.NET (74) - rden : fd2q
fd2q rden_inst
(
	.q /* OUT */ (rden),
	.d /* IN */ (iord),
	.cp /* IN */ (clk_0),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// GPU_CPU.NET (75) - rdenp : fd2q
fd2q rdenp_inst
(
	.q /* OUT */ (rdenp),
	.d /* IN */ (rden),
	.cp /* IN */ (clk_0),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// GPU_CPU.NET (76) - iowrite : fd1q
fd1q iowrite_inst
(
	.q /* OUT */ (iowrite),
	.d /* IN */ (iowr),
	.cp /* IN */ (clk_0),
	.sys_clk(sys_clk) // Generated
);

// GPU_CPU.NET (86) - lodld : an3h
assign lodld = iowrite & clk_2 & io_addr_n_1;

// GPU_CPU.NET (87) - lodata : ldp1q
ldp1q lodata_inst_0
(
	.q /* OUT */ (lodata[0]),
	.d /* IN */ (dwritelo[0]),
	.g /* IN */ (lodld),
	.sys_clk(sys_clk) // Generated
);
ldp1q lodata_inst_1
(
	.q /* OUT */ (lodata[1]),
	.d /* IN */ (dwritelo[1]),
	.g /* IN */ (lodld),
	.sys_clk(sys_clk) // Generated
);
ldp1q lodata_inst_2
(
	.q /* OUT */ (lodata[2]),
	.d /* IN */ (dwritelo[2]),
	.g /* IN */ (lodld),
	.sys_clk(sys_clk) // Generated
);
ldp1q lodata_inst_3
(
	.q /* OUT */ (lodata[3]),
	.d /* IN */ (dwritelo[3]),
	.g /* IN */ (lodld),
	.sys_clk(sys_clk) // Generated
);
ldp1q lodata_inst_4
(
	.q /* OUT */ (lodata[4]),
	.d /* IN */ (dwritelo[4]),
	.g /* IN */ (lodld),
	.sys_clk(sys_clk) // Generated
);
ldp1q lodata_inst_5
(
	.q /* OUT */ (lodata[5]),
	.d /* IN */ (dwritelo[5]),
	.g /* IN */ (lodld),
	.sys_clk(sys_clk) // Generated
);
ldp1q lodata_inst_6
(
	.q /* OUT */ (lodata[6]),
	.d /* IN */ (dwritelo[6]),
	.g /* IN */ (lodld),
	.sys_clk(sys_clk) // Generated
);
ldp1q lodata_inst_7
(
	.q /* OUT */ (lodata[7]),
	.d /* IN */ (dwritelo[7]),
	.g /* IN */ (lodld),
	.sys_clk(sys_clk) // Generated
);
ldp1q lodata_inst_8
(
	.q /* OUT */ (lodata[8]),
	.d /* IN */ (dwritelo[8]),
	.g /* IN */ (lodld),
	.sys_clk(sys_clk) // Generated
);
ldp1q lodata_inst_9
(
	.q /* OUT */ (lodata[9]),
	.d /* IN */ (dwritelo[9]),
	.g /* IN */ (lodld),
	.sys_clk(sys_clk) // Generated
);
ldp1q lodata_inst_10
(
	.q /* OUT */ (lodata[10]),
	.d /* IN */ (dwritelo[10]),
	.g /* IN */ (lodld),
	.sys_clk(sys_clk) // Generated
);
ldp1q lodata_inst_11
(
	.q /* OUT */ (lodata[11]),
	.d /* IN */ (dwritelo[11]),
	.g /* IN */ (lodld),
	.sys_clk(sys_clk) // Generated
);
ldp1q lodata_inst_12
(
	.q /* OUT */ (lodata[12]),
	.d /* IN */ (dwritelo[12]),
	.g /* IN */ (lodld),
	.sys_clk(sys_clk) // Generated
);
ldp1q lodata_inst_13
(
	.q /* OUT */ (lodata[13]),
	.d /* IN */ (dwritelo[13]),
	.g /* IN */ (lodld),
	.sys_clk(sys_clk) // Generated
);
ldp1q lodata_inst_14
(
	.q /* OUT */ (lodata[14]),
	.d /* IN */ (dwritelo[14]),
	.g /* IN */ (lodld),
	.sys_clk(sys_clk) // Generated
);
ldp1q lodata_inst_15
(
	.q /* OUT */ (lodata[15]),
	.d /* IN */ (dwritelo[15]),
	.g /* IN */ (lodld),
	.sys_clk(sys_clk) // Generated
);

// GPU_CPU.NET (89) - lodsel : or2_h
assign lodsel = big_io | io_addr[15];

// GPU_CPU.NET (90) - cpudlo : mx2
assign cpudlo[0] = (lodsel) ? dwritelo[0] : lodata[0];
assign cpudlo[1] = (lodsel) ? dwritelo[1] : lodata[1];
assign cpudlo[2] = (lodsel) ? dwritelo[2] : lodata[2];
assign cpudlo[3] = (lodsel) ? dwritelo[3] : lodata[3];
assign cpudlo[4] = (lodsel) ? dwritelo[4] : lodata[4];
assign cpudlo[5] = (lodsel) ? dwritelo[5] : lodata[5];
assign cpudlo[6] = (lodsel) ? dwritelo[6] : lodata[6];
assign cpudlo[7] = (lodsel) ? dwritelo[7] : lodata[7];
assign cpudlo[8] = (lodsel) ? dwritelo[8] : lodata[8];
assign cpudlo[9] = (lodsel) ? dwritelo[9] : lodata[9];
assign cpudlo[10] = (lodsel) ? dwritelo[10] : lodata[10];
assign cpudlo[11] = (lodsel) ? dwritelo[11] : lodata[11];
assign cpudlo[12] = (lodsel) ? dwritelo[12] : lodata[12];
assign cpudlo[13] = (lodsel) ? dwritelo[13] : lodata[13];
assign cpudlo[14] = (lodsel) ? dwritelo[14] : lodata[14];
assign cpudlo[15] = (lodsel) ? dwritelo[15] : lodata[15];

// GPU_CPU.NET (91) - cpudhit : mx2
assign cpudhit[0] = (big_io) ? lodata[0] : dwritelo[0];
assign cpudhit[1] = (big_io) ? lodata[1] : dwritelo[1];
assign cpudhit[2] = (big_io) ? lodata[2] : dwritelo[2];
assign cpudhit[3] = (big_io) ? lodata[3] : dwritelo[3];
assign cpudhit[4] = (big_io) ? lodata[4] : dwritelo[4];
assign cpudhit[5] = (big_io) ? lodata[5] : dwritelo[5];
assign cpudhit[6] = (big_io) ? lodata[6] : dwritelo[6];
assign cpudhit[7] = (big_io) ? lodata[7] : dwritelo[7];
assign cpudhit[8] = (big_io) ? lodata[8] : dwritelo[8];
assign cpudhit[9] = (big_io) ? lodata[9] : dwritelo[9];
assign cpudhit[10] = (big_io) ? lodata[10] : dwritelo[10];
assign cpudhit[11] = (big_io) ? lodata[11] : dwritelo[11];
assign cpudhit[12] = (big_io) ? lodata[12] : dwritelo[12];
assign cpudhit[13] = (big_io) ? lodata[13] : dwritelo[13];
assign cpudhit[14] = (big_io) ? lodata[14] : dwritelo[14];
assign cpudhit[15] = (big_io) ? lodata[15] : dwritelo[15];

// GPU_CPU.NET (92) - cpudhi : mx2
assign cpudhi[0] = (io_addr[15]) ? dwritehi[0] : cpudhit[0];
assign cpudhi[1] = (io_addr[15]) ? dwritehi[1] : cpudhit[1];
assign cpudhi[2] = (io_addr[15]) ? dwritehi[2] : cpudhit[2];
assign cpudhi[3] = (io_addr[15]) ? dwritehi[3] : cpudhit[3];
assign cpudhi[4] = (io_addr[15]) ? dwritehi[4] : cpudhit[4];
assign cpudhi[5] = (io_addr[15]) ? dwritehi[5] : cpudhit[5];
assign cpudhi[6] = (io_addr[15]) ? dwritehi[6] : cpudhit[6];
assign cpudhi[7] = (io_addr[15]) ? dwritehi[7] : cpudhit[7];
assign cpudhi[8] = (io_addr[15]) ? dwritehi[8] : cpudhit[8];
assign cpudhi[9] = (io_addr[15]) ? dwritehi[9] : cpudhit[9];
assign cpudhi[10] = (io_addr[15]) ? dwritehi[10] : cpudhit[10];
assign cpudhi[11] = (io_addr[15]) ? dwritehi[11] : cpudhit[11];
assign cpudhi[12] = (io_addr[15]) ? dwritehi[12] : cpudhit[12];
assign cpudhi[13] = (io_addr[15]) ? dwritehi[13] : cpudhit[13];
assign cpudhi[14] = (io_addr[15]) ? dwritehi[14] : cpudhit[14];
assign cpudhi[15] = (io_addr[15]) ? dwritehi[15] : cpudhit[15];

// GPU_CPU.NET (93) - cpudata : join
assign cpudata[0] = cpudlo[0];
assign cpudata[1] = cpudlo[1];
assign cpudata[2] = cpudlo[2];
assign cpudata[3] = cpudlo[3];
assign cpudata[4] = cpudlo[4];
assign cpudata[5] = cpudlo[5];
assign cpudata[6] = cpudlo[6];
assign cpudata[7] = cpudlo[7];
assign cpudata[8] = cpudlo[8];
assign cpudata[9] = cpudlo[9];
assign cpudata[10] = cpudlo[10];
assign cpudata[11] = cpudlo[11];
assign cpudata[12] = cpudlo[12];
assign cpudata[13] = cpudlo[13];
assign cpudata[14] = cpudlo[14];
assign cpudata[15] = cpudlo[15];
assign cpudata[16] = cpudhi[0];
assign cpudata[17] = cpudhi[1];
assign cpudata[18] = cpudhi[2];
assign cpudata[19] = cpudhi[3];
assign cpudata[20] = cpudhi[4];
assign cpudata[21] = cpudhi[5];
assign cpudata[22] = cpudhi[6];
assign cpudata[23] = cpudhi[7];
assign cpudata[24] = cpudhi[8];
assign cpudata[25] = cpudhi[9];
assign cpudata[26] = cpudhi[10];
assign cpudata[27] = cpudhi[11];
assign cpudata[28] = cpudhi[12];
assign cpudata[29] = cpudhi[13];
assign cpudata[30] = cpudhi[14];
assign cpudata[31] = cpudhi[15];

// GPU_CPU.NET (95) - cpuaddr[2-14] : niv
assign cpuaddr_2 = io_addr[2];
assign cpuaddr_3 = io_addr[3];
assign cpuaddr_4 = io_addr[4];
assign cpuaddr_5 = io_addr[5];
assign cpuaddr_6 = io_addr[6];
assign cpuaddr_7 = io_addr[7];
assign cpuaddr_8 = io_addr[8];
assign cpuaddr_9 = io_addr[9];
assign cpuaddr_10 = io_addr[10];
assign cpuaddr_11 = io_addr[11];
assign cpuaddr_12 = io_addr[12];
assign cpuaddr_13 = io_addr[13];
assign cpuaddr_14 = io_addr[14];

// GPU_CPU.NET (96) - cpuaddr : join
assign cpuaddr[0] = cpuaddr_2;
assign cpuaddr[1] = cpuaddr_3;
assign cpuaddr[2] = cpuaddr_4;
assign cpuaddr[3] = cpuaddr_5;
assign cpuaddr[4] = cpuaddr_6;
assign cpuaddr[5] = cpuaddr_7;
assign cpuaddr[6] = cpuaddr_8;
assign cpuaddr[7] = cpuaddr_9;
assign cpuaddr[8] = cpuaddr_10;
assign cpuaddr[9] = cpuaddr_11;
assign cpuaddr[10] = cpuaddr_12;
assign cpuaddr[11] = cpuaddr_13;
assign cpuaddr[12] = cpuaddr_14;

// GPU_CPU.NET (103) - latrdld : an3h
assign hidld = rdenp & clk_2 & io_addr_n_1;

// GPU_CPU.NET (104) - latrdatai : mx2
assign latrdatai[0] = (big_io) ? gpudlo[0] : gpudhi[0];
assign latrdatai[1] = (big_io) ? gpudlo[1] : gpudhi[1];
assign latrdatai[2] = (big_io) ? gpudlo[2] : gpudhi[2];
assign latrdatai[3] = (big_io) ? gpudlo[3] : gpudhi[3];
assign latrdatai[4] = (big_io) ? gpudlo[4] : gpudhi[4];
assign latrdatai[5] = (big_io) ? gpudlo[5] : gpudhi[5];
assign latrdatai[6] = (big_io) ? gpudlo[6] : gpudhi[6];
assign latrdatai[7] = (big_io) ? gpudlo[7] : gpudhi[7];
assign latrdatai[8] = (big_io) ? gpudlo[8] : gpudhi[8];
assign latrdatai[9] = (big_io) ? gpudlo[9] : gpudhi[9];
assign latrdatai[10] = (big_io) ? gpudlo[10] : gpudhi[10];
assign latrdatai[11] = (big_io) ? gpudlo[11] : gpudhi[11];
assign latrdatai[12] = (big_io) ? gpudlo[12] : gpudhi[12];
assign latrdatai[13] = (big_io) ? gpudlo[13] : gpudhi[13];
assign latrdatai[14] = (big_io) ? gpudlo[14] : gpudhi[14];
assign latrdatai[15] = (big_io) ? gpudlo[15] : gpudhi[15];

// GPU_CPU.NET (105) - latrdata : ldp1q
ldp1q latrdata_inst_0
(
	.q /* OUT */ (latrdata[0]),
	.d /* IN */ (latrdatai[0]),
	.g /* IN */ (hidld),
	.sys_clk(sys_clk) // Generated
);
ldp1q latrdata_inst_1
(
	.q /* OUT */ (latrdata[1]),
	.d /* IN */ (latrdatai[1]),
	.g /* IN */ (hidld),
	.sys_clk(sys_clk) // Generated
);
ldp1q latrdata_inst_2
(
	.q /* OUT */ (latrdata[2]),
	.d /* IN */ (latrdatai[2]),
	.g /* IN */ (hidld),
	.sys_clk(sys_clk) // Generated
);
ldp1q latrdata_inst_3
(
	.q /* OUT */ (latrdata[3]),
	.d /* IN */ (latrdatai[3]),
	.g /* IN */ (hidld),
	.sys_clk(sys_clk) // Generated
);
ldp1q latrdata_inst_4
(
	.q /* OUT */ (latrdata[4]),
	.d /* IN */ (latrdatai[4]),
	.g /* IN */ (hidld),
	.sys_clk(sys_clk) // Generated
);
ldp1q latrdata_inst_5
(
	.q /* OUT */ (latrdata[5]),
	.d /* IN */ (latrdatai[5]),
	.g /* IN */ (hidld),
	.sys_clk(sys_clk) // Generated
);
ldp1q latrdata_inst_6
(
	.q /* OUT */ (latrdata[6]),
	.d /* IN */ (latrdatai[6]),
	.g /* IN */ (hidld),
	.sys_clk(sys_clk) // Generated
);
ldp1q latrdata_inst_7
(
	.q /* OUT */ (latrdata[7]),
	.d /* IN */ (latrdatai[7]),
	.g /* IN */ (hidld),
	.sys_clk(sys_clk) // Generated
);
ldp1q latrdata_inst_8
(
	.q /* OUT */ (latrdata[8]),
	.d /* IN */ (latrdatai[8]),
	.g /* IN */ (hidld),
	.sys_clk(sys_clk) // Generated
);
ldp1q latrdata_inst_9
(
	.q /* OUT */ (latrdata[9]),
	.d /* IN */ (latrdatai[9]),
	.g /* IN */ (hidld),
	.sys_clk(sys_clk) // Generated
);
ldp1q latrdata_inst_10
(
	.q /* OUT */ (latrdata[10]),
	.d /* IN */ (latrdatai[10]),
	.g /* IN */ (hidld),
	.sys_clk(sys_clk) // Generated
);
ldp1q latrdata_inst_11
(
	.q /* OUT */ (latrdata[11]),
	.d /* IN */ (latrdatai[11]),
	.g /* IN */ (hidld),
	.sys_clk(sys_clk) // Generated
);
ldp1q latrdata_inst_12
(
	.q /* OUT */ (latrdata[12]),
	.d /* IN */ (latrdatai[12]),
	.g /* IN */ (hidld),
	.sys_clk(sys_clk) // Generated
);
ldp1q latrdata_inst_13
(
	.q /* OUT */ (latrdata[13]),
	.d /* IN */ (latrdatai[13]),
	.g /* IN */ (hidld),
	.sys_clk(sys_clk) // Generated
);
ldp1q latrdata_inst_14
(
	.q /* OUT */ (latrdata[14]),
	.d /* IN */ (latrdatai[14]),
	.g /* IN */ (hidld),
	.sys_clk(sys_clk) // Generated
);
ldp1q latrdata_inst_15
(
	.q /* OUT */ (latrdata[15]),
	.d /* IN */ (latrdatai[15]),
	.g /* IN */ (hidld),
	.sys_clk(sys_clk) // Generated
);

// GPU_CPU.NET (108) - immrdatai : mx2
assign immrdata[0] = (big_io) ? gpudhi[0] : gpudlo[0];
assign immrdata[1] = (big_io) ? gpudhi[1] : gpudlo[1];
assign immrdata[2] = (big_io) ? gpudhi[2] : gpudlo[2];
assign immrdata[3] = (big_io) ? gpudhi[3] : gpudlo[3];
assign immrdata[4] = (big_io) ? gpudhi[4] : gpudlo[4];
assign immrdata[5] = (big_io) ? gpudhi[5] : gpudlo[5];
assign immrdata[6] = (big_io) ? gpudhi[6] : gpudlo[6];
assign immrdata[7] = (big_io) ? gpudhi[7] : gpudlo[7];
assign immrdata[8] = (big_io) ? gpudhi[8] : gpudlo[8];
assign immrdata[9] = (big_io) ? gpudhi[9] : gpudlo[9];
assign immrdata[10] = (big_io) ? gpudhi[10] : gpudlo[10];
assign immrdata[11] = (big_io) ? gpudhi[11] : gpudlo[11];
assign immrdata[12] = (big_io) ? gpudhi[12] : gpudlo[12];
assign immrdata[13] = (big_io) ? gpudhi[13] : gpudlo[13];
assign immrdata[14] = (big_io) ? gpudhi[14] : gpudlo[14];
assign immrdata[15] = (big_io) ? gpudhi[15] : gpudlo[15];

// GPU_CPU.NET (110) - dreadt : mx2
assign dreadt[0] = (io_addr[1]) ? latrdata[0] : immrdata[0];
assign dreadt[1] = (io_addr[1]) ? latrdata[1] : immrdata[1];
assign dreadt[2] = (io_addr[1]) ? latrdata[2] : immrdata[2];
assign dreadt[3] = (io_addr[1]) ? latrdata[3] : immrdata[3];
assign dreadt[4] = (io_addr[1]) ? latrdata[4] : immrdata[4];
assign dreadt[5] = (io_addr[1]) ? latrdata[5] : immrdata[5];
assign dreadt[6] = (io_addr[1]) ? latrdata[6] : immrdata[6];
assign dreadt[7] = (io_addr[1]) ? latrdata[7] : immrdata[7];
assign dreadt[8] = (io_addr[1]) ? latrdata[8] : immrdata[8];
assign dreadt[9] = (io_addr[1]) ? latrdata[9] : immrdata[9];
assign dreadt[10] = (io_addr[1]) ? latrdata[10] : immrdata[10];
assign dreadt[11] = (io_addr[1]) ? latrdata[11] : immrdata[11];
assign dreadt[12] = (io_addr[1]) ? latrdata[12] : immrdata[12];
assign dreadt[13] = (io_addr[1]) ? latrdata[13] : immrdata[13];
assign dreadt[14] = (io_addr[1]) ? latrdata[14] : immrdata[14];
assign dreadt[15] = (io_addr[1]) ? latrdata[15] : immrdata[15];

// GPU_CPU.NET (111) - dreaden : or2_h
assign dreaden = rden | rdenp;

// GPU_CPU.NET (112) - dread : tsm
assign dread_out[0] = dreadt[0];
assign dread_oe[0] = dreaden;
assign dread_out[1] = dreadt[1];
assign dread_oe[1] = dreaden;
assign dread_out[2] = dreadt[2];
assign dread_oe[2] = dreaden;
assign dread_out[3] = dreadt[3];
assign dread_oe[3] = dreaden;
assign dread_out[4] = dreadt[4];
assign dread_oe[4] = dreaden;
assign dread_out[5] = dreadt[5];
assign dread_oe[5] = dreaden;
assign dread_out[6] = dreadt[6];
assign dread_oe[6] = dreaden;
assign dread_out[7] = dreadt[7];
assign dread_oe[7] = dreaden;
assign dread_out[8] = dreadt[8];
assign dread_oe[8] = dreaden;
assign dread_out[9] = dreadt[9];
assign dread_oe[9] = dreaden;
assign dread_out[10] = dreadt[10];
assign dread_oe[10] = dreaden;
assign dread_out[11] = dreadt[11];
assign dread_oe[11] = dreaden;
assign dread_out[12] = dreadt[12];
assign dread_oe[12] = dreaden;
assign dread_out[13] = dreadt[13];
assign dread_oe[13] = dreaden;
assign dread_out[14] = dreadt[14];
assign dread_oe[14] = dreaden;
assign dread_out[15] = dreadt[15];
assign dread_oe[15] = dreaden;
endmodule
/* verilator lint_on LITENDIAN */
