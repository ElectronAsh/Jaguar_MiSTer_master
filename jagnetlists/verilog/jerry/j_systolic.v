/* verilator lint_off LITENDIAN */
`include "defs.v"

module j_systolic
(
	output mtx_atomic,
	output mtx_dover,
	output mtx_wait,
	output mtxaddr_2,
	output mtxaddr_3,
	output mtxaddr_4,
	output mtxaddr_5,
	output mtxaddr_6,
	output mtxaddr_7,
	output mtxaddr_8,
	output mtxaddr_9,
	output mtxaddr_10,
	output mtxaddr_11,
	output mtx_mreq,
	output multsel,
	output [0:15] sysins,
	output sysser,
	input movei_data,
	input clk,
	input datack,
	input [0:31] gpu_din,
	input [0:15] instruction,
	input mtxawr,
	input mtxcwr,
	input reset_n,
	input romold,
	input sys_clk // Generated
);
wire movei_data_n;
wire datack_n;
wire romold_n;
wire zero;
wire mmultt;
wire mmult_n;
wire mmult;
wire mtx_active;
wire mwidth_0;
wire mwidth_1;
wire mwidth_2;
wire mwidth_3;
wire maddw;
wire macnten;
wire idlet_0;
wire idle;
wire idlet_1;
wire resmac;
wire idlet_2;
wire imultnt_0;
wire imultnt_1;
wire imultn;
wire imultnt_2;
wire imacnt_0;
wire imacnt_1;
wire imacn;
wire count1_n;
wire imacnt_2;
wire imacnt_3;
wire resmact_0;
wire count1;
wire resmact_1;
wire resmact_2;
wire mcnten;
wire reghalf;
wire sysr1_0;
wire sysr1_1;
wire sysr1_2;
wire sysr1_3;
wire sysr1_4;
wire sysr2_0;
wire sysr2_1;
wire sysr2_2;
wire sysr2_3;
wire sysr2_4;
wire bit11;
wire oneb;
wire zerob;
wire zeroc;
wire mtx_mreqt;
wire multselt;

// Output buffers
wire mtx_dover_obuf;
wire mtx_mreq_obuf;


// Output buffers
assign mtx_dover = mtx_dover_obuf;
assign mtx_mreq = mtx_mreq_obuf;


// SYSTOLIC.NET (46) - atomic\ : iv
assign movei_data_n = ~movei_data;

// SYSTOLIC.NET (47) - datack\ : iv
assign datack_n = ~datack;

// SYSTOLIC.NET (48) - romold\ : iv
assign romold_n = ~romold;

// SYSTOLIC.NET (50) - zero : tie0
assign zero = 1'b0;

// SYSTOLIC.NET (54) - mmultt : nr2
assign mmultt = ~(instruction[10] | instruction[13]);

// SYSTOLIC.NET (55) - mmult\ : nd7
assign mmult_n = ~(mmultt & movei_data_n & romold & instruction[11] & instruction[12] & instruction[14] & instruction[15]);

// SYSTOLIC.NET (57) - mmult : ivh
assign mmult = ~mmult_n;

// SYSTOLIC.NET (63) - mtx_atomic : or2
assign mtx_atomic = mtx_active | mmult;

// SYSTOLIC.NET (67) - mwidth[0-3] : fdsync
j_fdsync mwidth_from_0_to_3_inst_0
(
	.q /* OUT */ (mwidth_0),
	.d /* IN */ (gpu_din[0]),
	.ld /* IN */ (mtxcwr),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync mwidth_from_0_to_3_inst_1
(
	.q /* OUT */ (mwidth_1),
	.d /* IN */ (gpu_din[1]),
	.ld /* IN */ (mtxcwr),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync mwidth_from_0_to_3_inst_2
(
	.q /* OUT */ (mwidth_2),
	.d /* IN */ (gpu_din[2]),
	.ld /* IN */ (mtxcwr),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync mwidth_from_0_to_3_inst_3
(
	.q /* OUT */ (mwidth_3),
	.d /* IN */ (gpu_din[3]),
	.ld /* IN */ (mtxcwr),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// SYSTOLIC.NET (69) - maddw : fdsync
j_fdsync maddw_inst
(
	.q /* OUT */ (maddw),
	.d /* IN */ (gpu_din[4]),
	.ld /* IN */ (mtxcwr),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// SYSTOLIC.NET (81) - macnten : an2h
assign macnten = mtx_dover_obuf & datack;

// SYSTOLIC.NET (82) - mtxaddr : macount
j_macount mtxaddr_inst
(
	.maddr_0 /* OUT */ (mtxaddr_2),
	.maddr_1 /* OUT */ (mtxaddr_3),
	.maddr_2 /* OUT */ (mtxaddr_4),
	.maddr_3 /* OUT */ (mtxaddr_5),
	.maddr_4 /* OUT */ (mtxaddr_6),
	.maddr_5 /* OUT */ (mtxaddr_7),
	.maddr_6 /* OUT */ (mtxaddr_8),
	.maddr_7 /* OUT */ (mtxaddr_9),
	.maddr_8 /* OUT */ (mtxaddr_10),
	.maddr_9 /* OUT */ (mtxaddr_11),
	.clk /* IN */ (clk),
	.cnten /* IN */ (macnten),
	.cntld /* IN */ (mtxawr),
	.gpu_din_2 /* IN */ (gpu_din[2]),
	.gpu_din_3 /* IN */ (gpu_din[3]),
	.gpu_din_4 /* IN */ (gpu_din[4]),
	.gpu_din_5 /* IN */ (gpu_din[5]),
	.gpu_din_6 /* IN */ (gpu_din[6]),
	.gpu_din_7 /* IN */ (gpu_din[7]),
	.gpu_din_8 /* IN */ (gpu_din[8]),
	.gpu_din_9 /* IN */ (gpu_din[9]),
	.gpu_din_10 /* IN */ (gpu_din[10]),
	.gpu_din_11 /* IN */ (gpu_din[11]),
	.maddw /* IN */ (maddw),
	.mwidth_0 /* IN */ (mwidth_0),
	.mwidth_1 /* IN */ (mwidth_1),
	.mwidth_2 /* IN */ (mwidth_2),
	.mwidth_3 /* IN */ (mwidth_3),
	.sys_clk(sys_clk) // Generated
);

// SYSTOLIC.NET (88) - idlet0 : nd2
assign idlet_0 = ~(idle & mmult_n);

// SYSTOLIC.NET (89) - idlet1 : nd2
assign idlet_1 = ~(resmac & romold);

// SYSTOLIC.NET (90) - idlet2 : nd2
assign idlet_2 = ~(idlet_0 & idlet_1);

// SYSTOLIC.NET (91) - idle : fd4q
fd4q idle_inst
(
	.q /* OUT */ (idle),
	.d /* IN */ (idlet_2),
	.cp /* IN */ (clk),
	.sd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// SYSTOLIC.NET (93) - imultnt0 : nd2
assign imultnt_0 = ~(idle & mmult);

// SYSTOLIC.NET (94) - imultnt1 : nd2
assign imultnt_1 = ~(imultn & romold_n);

// SYSTOLIC.NET (95) - imultnt2 : nd2
assign imultnt_2 = ~(imultnt_0 & imultnt_1);

// SYSTOLIC.NET (96) - imultn : fd2q
fd2q imultn_inst
(
	.q /* OUT */ (imultn),
	.d /* IN */ (imultnt_2),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// SYSTOLIC.NET (98) - imacnt0 : nd2
assign imacnt_0 = ~(imultn & romold);

// SYSTOLIC.NET (99) - imacnt1 : nd2
assign imacnt_1 = ~(imacn & count1_n);

// SYSTOLIC.NET (100) - imacnt2 : nd2
assign imacnt_2 = ~(imacn & romold_n);

// SYSTOLIC.NET (101) - imacnt3 : nd3
assign imacnt_3 = ~(imacnt_0 & imacnt_1 & imacnt_2);

// SYSTOLIC.NET (102) - imacn : fd2q
fd2q imacn_inst
(
	.q /* OUT */ (imacn),
	.d /* IN */ (imacnt_3),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// SYSTOLIC.NET (104) - resmact0 : nd3
assign resmact_0 = ~(imacn & count1 & romold);

// SYSTOLIC.NET (105) - resmact1 : nd2
assign resmact_1 = ~(resmac & romold_n);

// SYSTOLIC.NET (106) - resmact2 : nd2
assign resmact_2 = ~(resmact_0 & resmact_1);

// SYSTOLIC.NET (107) - resmac : fd2q
fd2q resmac_inst
(
	.q /* OUT */ (resmac),
	.d /* IN */ (resmact_2),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// SYSTOLIC.NET (109) - mtx_active : iv
assign mtx_active = ~idle;

// SYSTOLIC.NET (115) - mcnten : an2
assign mcnten = romold & mtx_active;

// SYSTOLIC.NET (116) - mcount : mcount
j_mcount mcount_inst
(
	.count1 /* OUT */ (count1),
	.clk /* IN */ (clk),
	.cnten /* IN */ (mcnten),
	.cntld /* IN */ (mmult),
	.mwidth_0 /* IN */ (mwidth_0),
	.mwidth_1 /* IN */ (mwidth_1),
	.mwidth_2 /* IN */ (mwidth_2),
	.mwidth_3 /* IN */ (mwidth_3),
	.sys_clk(sys_clk) // Generated
);

// SYSTOLIC.NET (118) - count1\ : iv
assign count1_n = ~count1;

// SYSTOLIC.NET (124) - r1count : r1count
j_r1count r1count_inst
(
	.count_0 /* OUT */ (reghalf),
	.count_1 /* OUT */ (sysr1_0),
	.count_2 /* OUT */ (sysr1_1),
	.count_3 /* OUT */ (sysr1_2),
	.count_4 /* OUT */ (sysr1_3),
	.count_5 /* OUT */ (sysr1_4),
	.clk /* IN */ (clk),
	.cnten /* IN */ (romold),
	.cntld /* IN */ (mmult),
	.mr1_0 /* IN */ (instruction[5]),
	.mr1_1 /* IN */ (instruction[6]),
	.mr1_2 /* IN */ (instruction[7]),
	.mr1_3 /* IN */ (instruction[8]),
	.mr1_4 /* IN */ (instruction[9]),
	.sys_clk(sys_clk) // Generated
);

// SYSTOLIC.NET (129) - sysr2[0-4] : fdsync
j_fdsync sysr2_from_0_to_4_inst_0
(
	.q /* OUT */ (sysr2_0),
	.d /* IN */ (instruction[0]),
	.ld /* IN */ (mmult),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync sysr2_from_0_to_4_inst_1
(
	.q /* OUT */ (sysr2_1),
	.d /* IN */ (instruction[1]),
	.ld /* IN */ (mmult),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync sysr2_from_0_to_4_inst_2
(
	.q /* OUT */ (sysr2_2),
	.d /* IN */ (instruction[2]),
	.ld /* IN */ (mmult),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync sysr2_from_0_to_4_inst_3
(
	.q /* OUT */ (sysr2_3),
	.d /* IN */ (instruction[3]),
	.ld /* IN */ (mmult),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync sysr2_from_0_to_4_inst_4
(
	.q /* OUT */ (sysr2_4),
	.d /* IN */ (instruction[4]),
	.ld /* IN */ (mmult),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// SYSTOLIC.NET (141) - bit11 : or2
assign bit11 = imultn | resmac;

// SYSTOLIC.NET (143) - oneb : iv
assign oneb = ~zero;

// SYSTOLIC.NET (144) - zerob : iv
assign zerob = ~oneb;

// SYSTOLIC.NET (145) - zeroc : iv
assign zeroc = ~oneb;

// SYSTOLIC.NET (146) - sysins : join
assign sysins[0] = sysr2_0;
assign sysins[1] = sysr2_1;
assign sysins[2] = sysr2_2;
assign sysins[3] = sysr2_3;
assign sysins[4] = sysr2_4;
assign sysins[5] = sysr1_0;
assign sysins[6] = sysr1_1;
assign sysins[7] = sysr1_2;
assign sysins[8] = sysr1_3;
assign sysins[9] = sysr1_4;
assign sysins[10] = resmac;
assign sysins[11] = bit11;
assign sysins[12] = imacn;
assign sysins[13] = zerob;
assign sysins[14] = oneb;
assign sysins[15] = zeroc;

// SYSTOLIC.NET (152) - sysser : ivu
assign sysser = ~idle;

// SYSTOLIC.NET (158) - mtx_mreqt : or2
assign mtx_mreqt = imultn | imacn;

// SYSTOLIC.NET (159) - mtx_mreq : aor1
assign mtx_mreq_obuf = (mtx_dover_obuf & datack_n) | mtx_mreqt;

// SYSTOLIC.NET (164) - mtx_dover : fd2qu
fd2q mtx_dover_inst
(
	.q /* OUT */ (mtx_dover_obuf),
	.d /* IN */ (mtx_mreq_obuf),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// SYSTOLIC.NET (168) - mtx_wait : an2
assign mtx_wait = mtx_dover_obuf & datack_n;

// SYSTOLIC.NET (174) - multselt : an2
assign multselt = reghalf & mtx_active;

// SYSTOLIC.NET (175) - multsel : fdsync
j_fdsync multsel_inst
(
	.q /* OUT */ (multsel),
	.d /* IN */ (multselt),
	.ld /* IN */ (romold),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
endmodule
/* verilator lint_on LITENDIAN */
