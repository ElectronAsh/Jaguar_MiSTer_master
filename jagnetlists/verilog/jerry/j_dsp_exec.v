/* verilator lint_off LITENDIAN */
`include "defs.v"

module j_dsp_exec
(
	output [0:31] gpu_data_out,
	output [0:31] gpu_data_oe,
	input [0:31] gpu_data_in,
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
	output [0:2] alufunc,
	output brlmux_0,
	output brlmux_1,
	output [0:23] dataddr,
	output datreq,
	output datweb,
	output datwe_raw,
	output div_instr,
	output div_start,
	output [0:5] dstanwi,
	output [0:5] dstat,
	output dstdgate,
	output dstrrd,
	output dstrrdi,
	output dstrwr,
	output dstrwri,
	output dstwen,
	output exe,
	output flag_depend,
	output flagld,
	output [0:31] immdata,
	output immld,
	output immwri,
	output insexei,
	output locden,
	output [0:31] locsrc,
	output macop,
	output memrw,
	output msize_0,
	output msize_1,
	output mtx_dover,
	output multsel,
	output multsign,
	output pabort,
	output precomp,
	output [0:21] progaddr,
	output progreq,
	output resld,
	output ressel_0,
	output ressel_1,
	output ressel_2,
	output reswr,
	output rev_sub,
	output satsz,
	output srcrrd,
	output single_stop,
	output [0:5] srcanwi,
	input big_instr,
	input carry_flag,
	input clk,
	input clkb,
	input tlw,
	input datack,
	input dbgrd,
	input div_activei,
	input external,
	input flagrd,
	input flagwr,
	input gate_active,
	input go,
	input [0:31] gpu_din,
	input gpu_irq_0,
	input gpu_irq_1,
	input gpu_irq_2,
	input gpu_irq_3,
	input gpu_irq_4,
	input gpu_irq_5,
	input mtxawr,
	input mtxcwr,
	input nega_flag,
	input pcrd,
	input pcwr,
	input progack,
	input resaddrldi,
	input reset_n,
	input [0:31] result,
	input sbwait,
	input sdatreq,
	input single_go,
	input single_step,
	input srcaddrldi,
	input [0:31] srcd,
	input [0:31] srcdp,
	input [0:31] srcdpa,
	input statrd,
	input zero_flag,
	input sys_clk // Generated
);
wire [0:4] dstop;
wire [0:4] dstopb;
wire [0:4] srcopi;
wire [0:4] srcop;
wire [0:4] dstopi;
wire [0:4] srcopin;
wire [0:4] dstopin;
wire [0:5] opcode;
wire [0:5] opcodei;
wire [0:5] opcodein;
wire [0:5] dstati;
wire [0:5] impdai;
wire [0:5] dstatun;
wire [0:15] immlo;
wire [0:15] instruction;
wire [0:15] insval;
wire [0:15] preinstr;
wire [0:15] intins;
wire [0:23] mtx_addr;
wire [0:26] microword;
wire [0:26] romword27;
wire [0:26] mwordi;
wire [0:31] prog_count;
wire [0:23] program_count;
wire [0:15] sysins;
wire [0:26] romword;
wire [0:4] srcopb;
wire zero;
wire one;
wire jump_ena;
wire sysser;
wire intser;
wire insrdy;
wire jump_atomic;
wire jumprel;
wire jumpabs;
wire promold_n;
wire jump_ins;
wire jump_insp;
wire preinstr_n_11;
wire preinstr_n_13;
wire preinstr_n_10;
wire preinstr_n_14;
wire preinstr_n_15;
wire movei;
wire moveild_n;
wire romoldb_2;
wire moveild;
wire romold_n;
wire idlet_0;
wire await2;
wire idlet_1;
wire idle;
wire idlet_2;
wire await1t_0;
wire await1t_1;
wire await1;
wire await1t_2;
wire await2t_0;
wire await2t_1;
wire await2t_2;
wire atomict_0;
wire atomict_1;
wire movei_atomic;
wire movei_data;
wire atomic;
wire mtx_atomic;
wire mult_atomic;
wire multnt;
wire multn;
wire multn_n;
wire multaset;
wire multaclr;
wire multa;
wire imaski;
wire mtx_wait;
wire mtxaddr_2;
wire mtxaddr_3;
wire mtxaddr_4;
wire mtxaddr_5;
wire mtxaddr_6;
wire mtxaddr_7;
wire mtxaddr_8;
wire mtxaddr_9;
wire mtxaddr_10;
wire mtxaddr_11;
wire mtx_mreq;
wire sromold;
wire mtx_mreq_n;
wire mtx_doveri;
wire intser_n;
wire sysser_n;
wire romold;
wire clkdela;
wire clkdelb;
wire clkdelc;
wire clkdeld;
wire clkdele;
wire clkdel_n;
wire romcs;
wire romoldb_0;
wire romoldb_4;
wire romoldb_3;
wire opcode_n_1;
wire opcode_n_3;
wire opcode_n_5;
wire msizet_0;
wire msizet_1;
wire srcdat_0;
wire srcdat_1;
wire srcdat_2;
wire srcdat_3;
wire srcrrdt;
wire insexe;
wire memrw_n;
wire datwet;
wire dsttinv;
wire opcd_0;
wire opcd_1;
wire opcd_2;
wire opcd_3;
wire opcd_4;
wire opcd_5;
wire opcd_n_0;
wire opcd_n_1;
wire opcd_n_2;
wire opcd_n_3;
wire opcd_n_4;
wire idc_n_36;
wire idc_n_37;
wire idc_n_43;
wire idc_n_44;
wire idc_n_49;
wire idc_n_50;
wire idc_n_58;
wire idc_n_59;
wire idc_n_60;
wire idc_n_61;
wire precompit_0;
wire precompit_1;
wire precompit;
wire precompi;
wire precompil;
wire romoldb_1;
wire dsttinvit;
wire dsttinvi;
wire dsttinvil;
wire srctinvit;
wire srctinvi;
wire srctinvil;
wire indselit;
wire indseli;
wire indselil;
wire datwet_0;
wire exeb_1;
wire exe_n;
wire datwet_1;
wire datwelat;
wire datwet_2;
wire datwe;
wire datwec;
wire microword_n_8;
wire microword_n_15;
wire alufunc2_n;
wire alufunc7_n;
wire rev_subt;
wire srcdat4;
wire conditional;
wire jump;
wire fdt_0;
wire alufunc_n_2;
wire fdt_1;
wire loimmld;
wire locdent;
wire regpagei;
wire regpage;
wire imaski_n;
wire reghighi;
wire imask_n;
wire reghigh;
wire dsttopi;
wire dsttop;
wire danwsel;
wire srctopti;
wire srctopi;
wire zero_flag_n;
wire other_flag;
wire other_flag_n;
wire cond_0;
wire cond_1;
wire cond_2;
wire cond_3;
wire dataseli_0;
wire dataseli_1;
wire datasel0_0;
wire datasel0_1;
wire datasel0_2;
wire datasel0_3;
wire datasel0_4;
wire datasel0_5;
wire datasel1_0;
wire datasel1_1;
wire datasel1_2;
wire datasel1_3;
wire datasel1_4;
wire datasel1_5;
wire dataddr_0;
wire dataddr_1;
wire dataddr_2;
wire dataddr_3;
wire srcaddrl_0;
wire srcaddrl_1;
wire srcaddrl_2;
wire srcaddrl_3;
wire dataddr_4;
wire dataddr_5;
wire dataddr_6;
wire dataddr_7;
wire srcaddrl_4;
wire srcaddrl_5;
wire srcaddrl_6;
wire srcaddrl_7;
wire dataddr_8;
wire dataddr_9;
wire dataddr_10;
wire dataddr_11;
wire srcaddrl_8;
wire srcaddrl_9;
wire srcaddrl_10;
wire srcaddrl_11;
wire dataddr_12;
wire dataddr_13;
wire dataddr_14;
wire dataddr_15;
wire srcaddrl_12;
wire srcaddrl_13;
wire srcaddrl_14;
wire srcaddrl_15;
wire dataddr_16;
wire dataddr_17;
wire dataddr_18;
wire dataddr_19;
wire srcaddrl_16;
wire srcaddrl_17;
wire srcaddrl_18;
wire srcaddrl_19;
wire dataddr_20;
wire dataddr_21;
wire dataddr_22;
wire dataddr_23;
wire srcaddrl_20;
wire srcaddrl_21;
wire srcaddrl_22;
wire srcaddrl_23;
wire addrlatt;
wire addrlat;

// Output buffers
wire alufunc_b0_obuf;
wire alufunc_b2_obuf;
wire datweb_obuf;
wire div_instr_obuf;
wire dstwen_obuf;
wire exe_obuf;
wire immld_obuf;
wire insexei_obuf;
wire memrw_obuf;
wire precomp_obuf;


// Output buffers
assign alufunc[0] = alufunc_b0_obuf;
assign alufunc[2] = alufunc_b2_obuf;
assign datweb = datweb_obuf;
assign div_instr = div_instr_obuf;
assign dstwen = dstwen_obuf;
assign exe = exe_obuf;
assign immld = immld_obuf;
assign insexei = insexei_obuf;
assign memrw = memrw_obuf;
assign precomp = precomp_obuf;


// DSP_EXEC.NET (122) - zero : tie0
assign zero = 1'b0;

// DSP_EXEC.NET (123) - one : tie1
assign one = 1'b1;

// DSP_EXEC.NET (125) - dbgrd[25] : ts
assign gpu_dout_25_out = sbwait;
assign gpu_dout_25_oe = dbgrd;

// DSP_EXEC.NET (126) - dbgrd[26] : ts
assign gpu_dout_26_out = div_activei;
assign gpu_dout_26_oe = dbgrd;

// DSP_EXEC.NET (127) - dbgrd[27] : ts
assign gpu_dout_27_out = external;
assign gpu_dout_27_oe = dbgrd;

// DSP_EXEC.NET (128) - dbgrd[28] : ts
assign gpu_dout_28_out = gate_active;
assign gpu_dout_28_oe = dbgrd;

// DSP_EXEC.NET (129) - dbgrd[29] : ts
assign gpu_dout_29_out = jump_ena;
assign gpu_dout_29_oe = dbgrd;

// DSP_EXEC.NET (130) - dbgrd[30] : ts
assign gpu_dout_30_out = sysser;
assign gpu_dout_30_oe = dbgrd;

// DSP_EXEC.NET (131) - dbgrd[31] : ts
assign gpu_dout_31_out = intser;
assign gpu_dout_31_oe = dbgrd;

// DSP_EXEC.NET (135) - prefetch : dsp_fetch
j_dsp_fetch prefetch_inst
(
	.gpu_dout_22_out /* BUS */ (gpu_dout_22_out),
	.gpu_dout_22_oe /* BUS */ (gpu_dout_22_oe),
	.gpu_dout_22_in /* BUS */ (gpu_dout_22_in),
	.gpu_dout_23_out /* BUS */ (gpu_dout_23_out),
	.gpu_dout_23_oe /* BUS */ (gpu_dout_23_oe),
	.gpu_dout_23_in /* BUS */ (gpu_dout_23_in),
	.gpu_dout_24_out /* BUS */ (gpu_dout_24_out),
	.gpu_dout_24_oe /* BUS */ (gpu_dout_24_oe),
	.gpu_dout_24_in /* BUS */ (gpu_dout_24_in),
	.insrdy /* OUT */ (insrdy),
	.instruction /* OUT */ ({preinstr[0],preinstr[1],preinstr[2],preinstr[3],preinstr[4],preinstr[5],preinstr[6],preinstr[7],preinstr[8],preinstr[9],preinstr[10],preinstr[11],preinstr[12],preinstr[13],preinstr[14],preinstr[15]}),
	.jump_atomic /* OUT */ (jump_atomic),
	.pabort /* OUT */ (pabort),
	.progreq /* OUT */ (progreq),
	.progaddr /* OUT */ ({progaddr[0],progaddr[1],progaddr[2],progaddr[3],progaddr[4],progaddr[5],progaddr[6],progaddr[7],progaddr[8],progaddr[9],progaddr[10],progaddr[11],progaddr[12],progaddr[13],progaddr[14],progaddr[15],progaddr[16],progaddr[17],progaddr[18],progaddr[19],progaddr[20],progaddr[21]}),
	.program_count /* OUT */ ({program_count[0],program_count[1],program_count[2],program_count[3],program_count[4],program_count[5],program_count[6],program_count[7],program_count[8],program_count[9],program_count[10],program_count[11],program_count[12],program_count[13],program_count[14],program_count[15],program_count[16],program_count[17],program_count[18],program_count[19],program_count[20],program_count[21],program_count[22],program_count[23]}),
	.big_instr /* IN */ (big_instr),
	.clk /* IN */ (clkb),
	.dbgrd /* IN */ (dbgrd),
	.go /* IN */ (go),
	.gpu_data /* IN */ ({gpu_data_in[0],gpu_data_in[1],gpu_data_in[2],gpu_data_in[3],gpu_data_in[4],gpu_data_in[5],gpu_data_in[6],gpu_data_in[7],gpu_data_in[8],gpu_data_in[9],gpu_data_in[10],gpu_data_in[11],gpu_data_in[12],gpu_data_in[13],gpu_data_in[14],gpu_data_in[15],gpu_data_in[16],gpu_data_in[17],gpu_data_in[18],gpu_data_in[19],gpu_data_in[20],gpu_data_in[21],gpu_data_in[22],gpu_data_in[23],gpu_data_in[24],gpu_data_in[25],gpu_data_in[26],gpu_data_in[27],gpu_data_in[28],gpu_data_in[29],gpu_data_in[30],gpu_data_in[31]}),
	.gpu_din /* IN */ ({gpu_din[0],gpu_din[1],gpu_din[2],gpu_din[3],gpu_din[4],gpu_din[5],gpu_din[6],gpu_din[7],gpu_din[8],gpu_din[9],gpu_din[10],gpu_din[11],gpu_din[12],gpu_din[13],gpu_din[14],gpu_din[15],gpu_din[16],gpu_din[17],gpu_din[18],gpu_din[19],gpu_din[20],gpu_din[21],gpu_din[22],gpu_din[23],gpu_din[24],gpu_din[25],gpu_din[26],gpu_din[27],gpu_din[28],gpu_din[29],gpu_din[30],gpu_din[31]}),
	.progack /* IN */ (progack),
	.jumprel /* IN */ (jumprel),
	.jumpabs /* IN */ (jumpabs),
	.pcwr /* IN */ (pcwr),
	.reset_n /* IN */ (reset_n),
	.promoldx_n /* IN */ (promold_n),
	.single_go /* IN */ (single_go),
	.single_step /* IN */ (single_step),
	.srcd /* IN */ ({srcd[0],srcd[1],srcd[2],srcd[3],srcd[4],srcd[5],srcd[6],srcd[7],srcd[8],srcd[9],srcd[10],srcd[11],srcd[12],srcd[13],srcd[14],srcd[15],srcd[16],srcd[17],srcd[18],srcd[19],srcd[20],srcd[21],srcd[22],srcd[23],srcd[24],srcd[25],srcd[26],srcd[27],srcd[28],srcd[29],srcd[30],srcd[31]}),
	.srcdp /* IN */ ({srcdp[0],srcdp[1],srcdp[2],srcdp[3],srcdp[4],srcdp[5],srcdp[6],srcdp[7],srcdp[8],srcdp[9],srcdp[10],srcdp[11],srcdp[12],srcdp[13],srcdp[14],srcdp[15],srcdp[16],srcdp[17],srcdp[18],srcdp[19],srcdp[20],srcdp[21],srcdp[22],srcdp[23],srcdp[24],srcdp[25],srcdp[26],srcdp[27],srcdp[28],srcdp[29],srcdp[30],srcdp[31]}),
	.sys_clk(sys_clk) // Generated
);

// DSP_EXEC.NET (142) - prog_cnt : join
assign prog_count[0] = program_count[0];
assign prog_count[1] = program_count[1];
assign prog_count[2] = program_count[2];
assign prog_count[3] = program_count[3];
assign prog_count[4] = program_count[4];
assign prog_count[5] = program_count[5];
assign prog_count[6] = program_count[6];
assign prog_count[7] = program_count[7];
assign prog_count[8] = program_count[8];
assign prog_count[9] = program_count[9];
assign prog_count[10] = program_count[10];
assign prog_count[11] = program_count[11];
assign prog_count[12] = program_count[12];
assign prog_count[13] = program_count[13];
assign prog_count[14] = program_count[14];
assign prog_count[15] = program_count[15];
assign prog_count[16] = program_count[16];
assign prog_count[17] = program_count[17];
assign prog_count[18] = program_count[18];
assign prog_count[19] = program_count[19];
assign prog_count[20] = program_count[20];
assign prog_count[21] = program_count[21];
assign prog_count[22] = program_count[22];
assign prog_count[23] = program_count[23];
assign prog_count[24] = zero;
assign prog_count[25] = zero;
assign prog_count[26] = zero;
assign prog_count[27] = zero;
assign prog_count[28] = zero;
assign prog_count[29] = zero;
assign prog_count[30] = zero;
assign prog_count[31] = zero;

// DSP_EXEC.NET (172) - jumpins : or2
assign jump_ins = microword[23] | microword[24];

// DSP_EXEC.NET (176) - jumpinsp : an5
assign jump_insp = preinstr_n_11 & preinstr[12] & preinstr_n_13 & preinstr[14] & preinstr[15];

// DSP_EXEC.NET (181) - preinstr\[10-11] : iv
assign preinstr_n_10 = ~preinstr[10];
assign preinstr_n_11 = ~preinstr[11];

// DSP_EXEC.NET (182) - preinstr\[13-15] : iv
assign preinstr_n_13 = ~preinstr[13];
assign preinstr_n_14 = ~preinstr[14];
assign preinstr_n_15 = ~preinstr[15];

// DSP_EXEC.NET (183) - movei : an6
assign movei = preinstr_n_10 & preinstr[11] & preinstr[12] & preinstr_n_13 & preinstr_n_14 & preinstr[15];

// DSP_EXEC.NET (185) - moveild\ : nd2
assign moveild_n = ~(movei & romoldb_2);

// DSP_EXEC.NET (186) - moveild : iv
assign moveild = ~moveild_n;

// DSP_EXEC.NET (188) - romold\ : iv
assign romold_n = ~romoldb_2;

// DSP_EXEC.NET (190) - idlet0 : nd2
assign idlet_0 = ~(await2 & romoldb_2);

// DSP_EXEC.NET (191) - idlet1 : nd2
assign idlet_1 = ~(idle & moveild_n);

// DSP_EXEC.NET (192) - idlet2 : nd2
assign idlet_2 = ~(idlet_0 & idlet_1);

// DSP_EXEC.NET (193) - idle : fd4q
fd4q idle_inst
(
	.q /* OUT */ (idle),
	.d /* IN */ (idlet_2),
	.cp /* IN */ (clk),
	.sd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// DSP_EXEC.NET (195) - await1t0 : nd2
assign await1t_0 = ~(idle & moveild);

// DSP_EXEC.NET (196) - await1t1 : nd2
assign await1t_1 = ~(await1 & romold_n);

// DSP_EXEC.NET (197) - await1t2 : nd2
assign await1t_2 = ~(await1t_0 & await1t_1);

// DSP_EXEC.NET (198) - await1 : fd2q
fd2q await1_inst
(
	.q /* OUT */ (await1),
	.d /* IN */ (await1t_2),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// DSP_EXEC.NET (200) - await2t0 : nd2
assign await2t_0 = ~(await1 & romoldb_2);

// DSP_EXEC.NET (201) - await2t1 : nd2
assign await2t_1 = ~(await2 & romold_n);

// DSP_EXEC.NET (202) - await2t2 : nd2
assign await2t_2 = ~(await2t_0 & await2t_1);

// DSP_EXEC.NET (203) - await2 : fd2q
fd2q await2_inst
(
	.q /* OUT */ (await2),
	.d /* IN */ (await2t_2),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// DSP_EXEC.NET (205) - atomict[0] : an2
assign atomict_0 = movei & insrdy;

// DSP_EXEC.NET (206) - atomict[1] : an2
assign atomict_1 = await2 & romold_n;

// DSP_EXEC.NET (207) - movei_atomic : or3
assign movei_atomic = atomict_0 | atomict_1 | await1;

// DSP_EXEC.NET (208) - movei_data : or2
assign movei_data = await1 | await2;

// DSP_EXEC.NET (209) - atomic : or6
assign atomic = movei_atomic | mtx_atomic | mult_atomic | jump_atomic | jump_ins | jump_insp;

// DSP_EXEC.NET (217) - multnt : eo
assign multnt = preinstr[11] ^ preinstr[12];

// DSP_EXEC.NET (218) - multn : an5
assign multn = preinstr_n_10 & multnt & preinstr_n_13 & preinstr[14] & preinstr_n_15;

// DSP_EXEC.NET (221) - multn\ : iv
assign multn_n = ~multn;

// DSP_EXEC.NET (222) - multaset : an3
assign multaset = romoldb_2 & multn & idle;

// DSP_EXEC.NET (223) - multaclr : an2
assign multaclr = romoldb_2 & multn_n;

// DSP_EXEC.NET (224) - multa : cp_latch
j_cp_latch multa_inst
(
	.q /* OUT */ (multa),
	.set /* IN */ (multaset),
	.clear /* IN */ (multaclr),
	.clock /* IN */ (clk),
	.reset_n /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// DSP_EXEC.NET (226) - mult_atomic : or2
assign mult_atomic = multa | multaset;

// DSP_EXEC.NET (230) - interrupt : dsp_int
j_dsp_int interrupt_inst
(
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
	.gpu_dout_11_out /* BUS */ (gpu_dout_11_out),
	.gpu_dout_11_oe /* BUS */ (gpu_dout_11_oe),
	.gpu_dout_11_in /* BUS */ (gpu_dout_11_in),
	.gpu_dout_12_out /* BUS */ (gpu_dout_12_out),
	.gpu_dout_12_oe /* BUS */ (gpu_dout_12_oe),
	.gpu_dout_12_in /* BUS */ (gpu_dout_12_in),
	.gpu_dout_13_out /* BUS */ (gpu_dout_13_out),
	.gpu_dout_13_oe /* BUS */ (gpu_dout_13_oe),
	.gpu_dout_13_in /* BUS */ (gpu_dout_13_in),
	.gpu_dout_16_out /* BUS */ (gpu_dout_16_out),
	.gpu_dout_16_oe /* BUS */ (gpu_dout_16_oe),
	.gpu_dout_16_in /* BUS */ (gpu_dout_16_in),
	.gpu_dout_17_out /* BUS */ (gpu_dout_17_out),
	.gpu_dout_17_oe /* BUS */ (gpu_dout_17_oe),
	.gpu_dout_17_in /* BUS */ (gpu_dout_17_in),
	.imaski /* OUT */ (imaski),
	.intins /* OUT */ ({intins[0],intins[1],intins[2],intins[3],intins[4],intins[5],intins[6],intins[7],intins[8],intins[9],intins[10],intins[11],intins[12],intins[13],intins[14],intins[15]}),
	.intser /* OUT */ (intser),
	.atomic /* IN */ (atomic),
	.clk /* IN */ (clk),
	.gpu_din /* IN */ ({gpu_din[0],gpu_din[1],gpu_din[2],gpu_din[3],gpu_din[4],gpu_din[5],gpu_din[6],gpu_din[7],gpu_din[8],gpu_din[9],gpu_din[10],gpu_din[11],gpu_din[12],gpu_din[13],gpu_din[14],gpu_din[15],gpu_din[16],gpu_din[17],gpu_din[18],gpu_din[19],gpu_din[20],gpu_din[21],gpu_din[22],gpu_din[23],gpu_din[24],gpu_din[25],gpu_din[26],gpu_din[27],gpu_din[28],gpu_din[29],gpu_din[30],gpu_din[31]}),
	.flagrd /* IN */ (flagrd),
	.flagwr /* IN */ (flagwr),
	.gpu_irq_0 /* IN */ (gpu_irq_0),
	.gpu_irq_1 /* IN */ (gpu_irq_1),
	.gpu_irq_2 /* IN */ (gpu_irq_2),
	.gpu_irq_3 /* IN */ (gpu_irq_3),
	.gpu_irq_4 /* IN */ (gpu_irq_4),
	.gpu_irq_5 /* IN */ (gpu_irq_5),
	.reset_n /* IN */ (reset_n),
	.romold /* IN */ (romoldb_2),
	.statrd /* IN */ (statrd),
	.sys_clk(sys_clk) // Generated
);

// DSP_EXEC.NET (238) - systolic : systolic
j_systolic systolic_inst
(
	.mtx_atomic /* OUT */ (mtx_atomic),
	.mtx_dover /* OUT */ (mtx_dover),
	.mtx_wait /* OUT */ (mtx_wait),
	.mtxaddr_2 /* OUT */ (mtxaddr_2),
	.mtxaddr_3 /* OUT */ (mtxaddr_3),
	.mtxaddr_4 /* OUT */ (mtxaddr_4),
	.mtxaddr_5 /* OUT */ (mtxaddr_5),
	.mtxaddr_6 /* OUT */ (mtxaddr_6),
	.mtxaddr_7 /* OUT */ (mtxaddr_7),
	.mtxaddr_8 /* OUT */ (mtxaddr_8),
	.mtxaddr_9 /* OUT */ (mtxaddr_9),
	.mtxaddr_10 /* OUT */ (mtxaddr_10),
	.mtxaddr_11 /* OUT */ (mtxaddr_11),
	.mtx_mreq /* OUT */ (mtx_mreq),
	.multsel /* OUT */ (multsel),
	.sysins /* OUT */ ({sysins[0],sysins[1],sysins[2],sysins[3],sysins[4],sysins[5],sysins[6],sysins[7],sysins[8],sysins[9],sysins[10],sysins[11],sysins[12],sysins[13],sysins[14],sysins[15]}),
	.sysser /* OUT */ (sysser),
	.movei_data /* IN */ (movei_data),
	.clk /* IN */ (clk),
	.datack /* IN */ (datack),
	.gpu_din /* IN */ ({gpu_din[0],gpu_din[1],gpu_din[2],gpu_din[3],gpu_din[4],gpu_din[5],gpu_din[6],gpu_din[7],gpu_din[8],gpu_din[9],gpu_din[10],gpu_din[11],gpu_din[12],gpu_din[13],gpu_din[14],gpu_din[15],gpu_din[16],gpu_din[17],gpu_din[18],gpu_din[19],gpu_din[20],gpu_din[21],gpu_din[22],gpu_din[23],gpu_din[24],gpu_din[25],gpu_din[26],gpu_din[27],gpu_din[28],gpu_din[29],gpu_din[30],gpu_din[31]}),
	.instruction /* IN */ ({preinstr[0],preinstr[1],preinstr[2],preinstr[3],preinstr[4],preinstr[5],preinstr[6],preinstr[7],preinstr[8],preinstr[9],preinstr[10],preinstr[11],preinstr[12],preinstr[13],preinstr[14],preinstr[15]}),
	.mtxawr /* IN */ (mtxawr),
	.mtxcwr /* IN */ (mtxcwr),
	.reset_n /* IN */ (reset_n),
	.romold /* IN */ (sromold),
	.sys_clk(sys_clk) // Generated
);

// DSP_EXEC.NET (243) - mtx_mreq\ : iv
assign mtx_mreq_n = ~mtx_mreq;

// DSP_EXEC.NET (244) - mtx_doveri : join
assign mtx_doveri = mtx_mreq;

// DSP_EXEC.NET (250) - instruction : mx4p
mx4 instruction_inst_0
(
	.z /* OUT */ (instruction[0]),
	.a0 /* IN */ (preinstr[0]),
	.a1 /* IN */ (sysins[0]),
	.a2 /* IN */ (intins[0]),
	.a3 /* IN */ (intins[0]),
	.s0 /* IN */ (sysser),
	.s1 /* IN */ (intser)
);
mx4 instruction_inst_1
(
	.z /* OUT */ (instruction[1]),
	.a0 /* IN */ (preinstr[1]),
	.a1 /* IN */ (sysins[1]),
	.a2 /* IN */ (intins[1]),
	.a3 /* IN */ (intins[1]),
	.s0 /* IN */ (sysser),
	.s1 /* IN */ (intser)
);
mx4 instruction_inst_2
(
	.z /* OUT */ (instruction[2]),
	.a0 /* IN */ (preinstr[2]),
	.a1 /* IN */ (sysins[2]),
	.a2 /* IN */ (intins[2]),
	.a3 /* IN */ (intins[2]),
	.s0 /* IN */ (sysser),
	.s1 /* IN */ (intser)
);
mx4 instruction_inst_3
(
	.z /* OUT */ (instruction[3]),
	.a0 /* IN */ (preinstr[3]),
	.a1 /* IN */ (sysins[3]),
	.a2 /* IN */ (intins[3]),
	.a3 /* IN */ (intins[3]),
	.s0 /* IN */ (sysser),
	.s1 /* IN */ (intser)
);
mx4 instruction_inst_4
(
	.z /* OUT */ (instruction[4]),
	.a0 /* IN */ (preinstr[4]),
	.a1 /* IN */ (sysins[4]),
	.a2 /* IN */ (intins[4]),
	.a3 /* IN */ (intins[4]),
	.s0 /* IN */ (sysser),
	.s1 /* IN */ (intser)
);
mx4 instruction_inst_5
(
	.z /* OUT */ (instruction[5]),
	.a0 /* IN */ (preinstr[5]),
	.a1 /* IN */ (sysins[5]),
	.a2 /* IN */ (intins[5]),
	.a3 /* IN */ (intins[5]),
	.s0 /* IN */ (sysser),
	.s1 /* IN */ (intser)
);
mx4 instruction_inst_6
(
	.z /* OUT */ (instruction[6]),
	.a0 /* IN */ (preinstr[6]),
	.a1 /* IN */ (sysins[6]),
	.a2 /* IN */ (intins[6]),
	.a3 /* IN */ (intins[6]),
	.s0 /* IN */ (sysser),
	.s1 /* IN */ (intser)
);
mx4 instruction_inst_7
(
	.z /* OUT */ (instruction[7]),
	.a0 /* IN */ (preinstr[7]),
	.a1 /* IN */ (sysins[7]),
	.a2 /* IN */ (intins[7]),
	.a3 /* IN */ (intins[7]),
	.s0 /* IN */ (sysser),
	.s1 /* IN */ (intser)
);
mx4 instruction_inst_8
(
	.z /* OUT */ (instruction[8]),
	.a0 /* IN */ (preinstr[8]),
	.a1 /* IN */ (sysins[8]),
	.a2 /* IN */ (intins[8]),
	.a3 /* IN */ (intins[8]),
	.s0 /* IN */ (sysser),
	.s1 /* IN */ (intser)
);
mx4 instruction_inst_9
(
	.z /* OUT */ (instruction[9]),
	.a0 /* IN */ (preinstr[9]),
	.a1 /* IN */ (sysins[9]),
	.a2 /* IN */ (intins[9]),
	.a3 /* IN */ (intins[9]),
	.s0 /* IN */ (sysser),
	.s1 /* IN */ (intser)
);
mx4 instruction_inst_10
(
	.z /* OUT */ (instruction[10]),
	.a0 /* IN */ (preinstr[10]),
	.a1 /* IN */ (sysins[10]),
	.a2 /* IN */ (intins[10]),
	.a3 /* IN */ (intins[10]),
	.s0 /* IN */ (sysser),
	.s1 /* IN */ (intser)
);
mx4 instruction_inst_11
(
	.z /* OUT */ (instruction[11]),
	.a0 /* IN */ (preinstr[11]),
	.a1 /* IN */ (sysins[11]),
	.a2 /* IN */ (intins[11]),
	.a3 /* IN */ (intins[11]),
	.s0 /* IN */ (sysser),
	.s1 /* IN */ (intser)
);
mx4 instruction_inst_12
(
	.z /* OUT */ (instruction[12]),
	.a0 /* IN */ (preinstr[12]),
	.a1 /* IN */ (sysins[12]),
	.a2 /* IN */ (intins[12]),
	.a3 /* IN */ (intins[12]),
	.s0 /* IN */ (sysser),
	.s1 /* IN */ (intser)
);
mx4 instruction_inst_13
(
	.z /* OUT */ (instruction[13]),
	.a0 /* IN */ (preinstr[13]),
	.a1 /* IN */ (sysins[13]),
	.a2 /* IN */ (intins[13]),
	.a3 /* IN */ (intins[13]),
	.s0 /* IN */ (sysser),
	.s1 /* IN */ (intser)
);
mx4 instruction_inst_14
(
	.z /* OUT */ (instruction[14]),
	.a0 /* IN */ (preinstr[14]),
	.a1 /* IN */ (sysins[14]),
	.a2 /* IN */ (intins[14]),
	.a3 /* IN */ (intins[14]),
	.s0 /* IN */ (sysser),
	.s1 /* IN */ (intser)
);
mx4 instruction_inst_15
(
	.z /* OUT */ (instruction[15]),
	.a0 /* IN */ (preinstr[15]),
	.a1 /* IN */ (sysins[15]),
	.a2 /* IN */ (intins[15]),
	.a3 /* IN */ (intins[15]),
	.s0 /* IN */ (sysser),
	.s1 /* IN */ (intser)
);

// DSP_EXEC.NET (256) - intser\ : iv
assign intser_n = ~intser;

// DSP_EXEC.NET (257) - sysser\ : iv
assign sysser_n = ~sysser;

// DSP_EXEC.NET (258) - promold : nd3p
assign promold_n = ~(romold & intser_n & sysser_n);

// DSP_EXEC.NET (263) - sromold : an2h
assign sromold = romoldb_2 & intser_n;

// DSP_EXEC.NET (267) - opcodei : join
assign opcodei[0] = instruction[10];
assign opcodei[1] = instruction[11];
assign opcodei[2] = instruction[12];
assign opcodei[3] = instruction[13];
assign opcodei[4] = instruction[14];
assign opcodei[5] = instruction[15];

// DSP_EXEC.NET (268) - srcopi : join
assign srcopi[0] = instruction[5];
assign srcopi[1] = instruction[6];
assign srcopi[2] = instruction[7];
assign srcopi[3] = instruction[8];
assign srcopi[4] = instruction[9];

// DSP_EXEC.NET (269) - dstopi : join
assign dstopi[0] = instruction[0];
assign dstopi[1] = instruction[1];
assign dstopi[2] = instruction[2];
assign dstopi[3] = instruction[3];
assign dstopi[4] = instruction[4];

// DSP_EXEC.NET (277) - clkdela : dly8
dly clkdela_inst
(
	.z /* OUT */ (clkdela),
	.a /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DSP_EXEC.NET (278) - clkdelb : dly8
dly clkdelb_inst
(
	.z /* OUT */ (clkdelb),
	.a /* IN */ (clkdela),
	.sys_clk(sys_clk) // Generated
);

// DSP_EXEC.NET (279) - clkdelc : dly8
dly clkdelc_inst
(
	.z /* OUT */ (clkdelc),
	.a /* IN */ (clkdelb),
	.sys_clk(sys_clk) // Generated
);

// DSP_EXEC.NET (280) - clkdeld : dly8
dly clkdeld_inst
(
	.z /* OUT */ (clkdeld),
	.a /* IN */ (clkdelc),
	.sys_clk(sys_clk) // Generated
);

// DSP_EXEC.NET (281) - clkdele : dly8
dly clkdele_inst
(
	.z /* OUT */ (clkdele),
	.a /* IN */ (clkdeld),
	.sys_clk(sys_clk) // Generated
);

// DSP_EXEC.NET (282) - clkdel\ : iv
assign clkdel_n = ~clkdele;

// DSP_EXEC.NET (283) - romcs : an2
assign romcs = clk & clkdel_n;

// DSP_EXEC.NET (285) - mcode : ra6032a
ra6032a mcode_inst
(
	.z /* OUT */ ({romword[0],romword[1],romword[2],romword[3],romword[4],romword[5],romword[6],romword[7],romword[8],romword[9],romword[10],romword[11],romword[12],romword[13],romword[14],romword[15],romword[16],romword[17],romword[18],romword[19],romword[20],romword[21],romword[22],romword[23],romword[24],romword[25],romword[26]}),
	.clk /* IN */ (romcs),
	.a /* IN */ ({opcodei[0],opcodei[1],opcodei[2],opcodei[3],opcodei[4],opcodei[5]}),
	.sys_clk(sys_clk) // Generated
);

// DSP_EXEC.NET (286) - romword : join
assign romword27[0] = romword[0];
assign romword27[1] = romword[1];
assign romword27[2] = romword[2];
assign romword27[3] = romword[3];
assign romword27[4] = romword[4];
assign romword27[5] = romword[5];
assign romword27[6] = romword[6];
assign romword27[7] = romword[7];
assign romword27[8] = romword[8];
assign romword27[9] = romword[9];
assign romword27[10] = romword[10];
assign romword27[11] = romword[11];
assign romword27[12] = romword[12];
assign romword27[13] = romword[13];
assign romword27[14] = romword[14];
assign romword27[15] = romword[15];
assign romword27[16] = romword[16];
assign romword27[17] = romword[17];
assign romword27[18] = romword[18];
assign romword27[19] = romword[19];
assign romword27[20] = romword[20];
assign romword27[21] = romword[21];
assign romword27[22] = romword[22];
assign romword27[23] = romword[23];
assign romword27[24] = romword[24];
assign romword27[25] = romword[25];
assign romword27[26] = romword[26];

// DSP_EXEC.NET (290) - mwordi : mx2p
assign mwordi[0] = (romoldb_0) ? romword27[0] : microword[0];
assign mwordi[1] = (romoldb_0) ? romword27[1] : microword[1];
assign mwordi[2] = (romoldb_0) ? romword27[2] : microword[2];
assign mwordi[3] = (romoldb_0) ? romword27[3] : microword[3];
assign mwordi[4] = (romoldb_0) ? romword27[4] : microword[4];
assign mwordi[5] = (romoldb_0) ? romword27[5] : microword[5];
assign mwordi[6] = (romoldb_0) ? romword27[6] : microword[6];
assign mwordi[7] = (romoldb_0) ? romword27[7] : microword[7];
assign mwordi[8] = (romoldb_0) ? romword27[8] : microword[8];
assign mwordi[9] = (romoldb_0) ? romword27[9] : microword[9];
assign mwordi[10] = (romoldb_0) ? romword27[10] : microword[10];
assign mwordi[11] = (romoldb_0) ? romword27[11] : microword[11];
assign mwordi[12] = (romoldb_0) ? romword27[12] : microword[12];
assign mwordi[13] = (romoldb_0) ? romword27[13] : microword[13];
assign mwordi[14] = (romoldb_0) ? romword27[14] : microword[14];
assign mwordi[15] = (romoldb_0) ? romword27[15] : microword[15];
assign mwordi[16] = (romoldb_0) ? romword27[16] : microword[16];
assign mwordi[17] = (romoldb_0) ? romword27[17] : microword[17];
assign mwordi[18] = (romoldb_0) ? romword27[18] : microword[18];
assign mwordi[19] = (romoldb_0) ? romword27[19] : microword[19];
assign mwordi[20] = (romoldb_0) ? romword27[20] : microword[20];
assign mwordi[21] = (romoldb_0) ? romword27[21] : microword[21];
assign mwordi[22] = (romoldb_0) ? romword27[22] : microword[22];
assign mwordi[23] = (romoldb_0) ? romword27[23] : microword[23];
assign mwordi[24] = (romoldb_0) ? romword27[24] : microword[24];
assign mwordi[25] = (romoldb_0) ? romword27[25] : microword[25];
assign mwordi[26] = (romoldb_0) ? romword27[26] : microword[26];

// DSP_EXEC.NET (291) - mcodepipe : fd2qp
fd2q mcodepipe_inst_0
(
	.q /* OUT */ (microword[0]),
	.d /* IN */ (mwordi[0]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q mcodepipe_inst_1
(
	.q /* OUT */ (microword[1]),
	.d /* IN */ (mwordi[1]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q mcodepipe_inst_2
(
	.q /* OUT */ (microword[2]),
	.d /* IN */ (mwordi[2]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q mcodepipe_inst_3
(
	.q /* OUT */ (microword[3]),
	.d /* IN */ (mwordi[3]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q mcodepipe_inst_4
(
	.q /* OUT */ (microword[4]),
	.d /* IN */ (mwordi[4]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q mcodepipe_inst_5
(
	.q /* OUT */ (microword[5]),
	.d /* IN */ (mwordi[5]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q mcodepipe_inst_6
(
	.q /* OUT */ (microword[6]),
	.d /* IN */ (mwordi[6]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q mcodepipe_inst_7
(
	.q /* OUT */ (microword[7]),
	.d /* IN */ (mwordi[7]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q mcodepipe_inst_8
(
	.q /* OUT */ (microword[8]),
	.d /* IN */ (mwordi[8]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q mcodepipe_inst_9
(
	.q /* OUT */ (microword[9]),
	.d /* IN */ (mwordi[9]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q mcodepipe_inst_10
(
	.q /* OUT */ (microword[10]),
	.d /* IN */ (mwordi[10]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q mcodepipe_inst_11
(
	.q /* OUT */ (microword[11]),
	.d /* IN */ (mwordi[11]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q mcodepipe_inst_12
(
	.q /* OUT */ (microword[12]),
	.d /* IN */ (mwordi[12]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q mcodepipe_inst_13
(
	.q /* OUT */ (microword[13]),
	.d /* IN */ (mwordi[13]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q mcodepipe_inst_14
(
	.q /* OUT */ (microword[14]),
	.d /* IN */ (mwordi[14]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q mcodepipe_inst_15
(
	.q /* OUT */ (microword[15]),
	.d /* IN */ (mwordi[15]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q mcodepipe_inst_16
(
	.q /* OUT */ (microword[16]),
	.d /* IN */ (mwordi[16]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q mcodepipe_inst_17
(
	.q /* OUT */ (microword[17]),
	.d /* IN */ (mwordi[17]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q mcodepipe_inst_18
(
	.q /* OUT */ (microword[18]),
	.d /* IN */ (mwordi[18]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q mcodepipe_inst_19
(
	.q /* OUT */ (microword[19]),
	.d /* IN */ (mwordi[19]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q mcodepipe_inst_20
(
	.q /* OUT */ (microword[20]),
	.d /* IN */ (mwordi[20]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q mcodepipe_inst_21
(
	.q /* OUT */ (microword[21]),
	.d /* IN */ (mwordi[21]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q mcodepipe_inst_22
(
	.q /* OUT */ (microword[22]),
	.d /* IN */ (mwordi[22]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q mcodepipe_inst_23
(
	.q /* OUT */ (microword[23]),
	.d /* IN */ (mwordi[23]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q mcodepipe_inst_24
(
	.q /* OUT */ (microword[24]),
	.d /* IN */ (mwordi[24]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q mcodepipe_inst_25
(
	.q /* OUT */ (microword[25]),
	.d /* IN */ (mwordi[25]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q mcodepipe_inst_26
(
	.q /* OUT */ (microword[26]),
	.d /* IN */ (mwordi[26]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// DSP_EXEC.NET (292) - srcopin : mx2
assign srcopin[0] = (romoldb_4) ? srcopi[0] : srcopb[0];
assign srcopin[1] = (romoldb_4) ? srcopi[1] : srcopb[1];
assign srcopin[2] = (romoldb_4) ? srcopi[2] : srcopb[2];
assign srcopin[3] = (romoldb_4) ? srcopi[3] : srcopb[3];
assign srcopin[4] = (romoldb_4) ? srcopi[4] : srcopb[4];

// DSP_EXEC.NET (293) - srcop : fd2qp
fd2q srcop_inst_0
(
	.q /* OUT */ (srcop[0]),
	.d /* IN */ (srcopin[0]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q srcop_inst_1
(
	.q /* OUT */ (srcop[1]),
	.d /* IN */ (srcopin[1]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q srcop_inst_2
(
	.q /* OUT */ (srcop[2]),
	.d /* IN */ (srcopin[2]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q srcop_inst_3
(
	.q /* OUT */ (srcop[3]),
	.d /* IN */ (srcopin[3]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q srcop_inst_4
(
	.q /* OUT */ (srcop[4]),
	.d /* IN */ (srcopin[4]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// DSP_EXEC.NET (294) - srcopb : nivm
assign srcopb[0] = srcop[0];
assign srcopb[1] = srcop[1];
assign srcopb[2] = srcop[2];
assign srcopb[3] = srcop[3];
assign srcopb[4] = srcop[4];

// DSP_EXEC.NET (295) - dstopin : mx2p
assign dstopin[0] = (romoldb_3) ? dstopi[0] : dstopb[0];
assign dstopin[1] = (romoldb_3) ? dstopi[1] : dstopb[1];
assign dstopin[2] = (romoldb_3) ? dstopi[2] : dstopb[2];
assign dstopin[3] = (romoldb_3) ? dstopi[3] : dstopb[3];
assign dstopin[4] = (romoldb_3) ? dstopi[4] : dstopb[4];

// DSP_EXEC.NET (296) - dstop : fd2qp
fd2q dstop_inst_0
(
	.q /* OUT */ (dstop[0]),
	.d /* IN */ (dstopin[0]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q dstop_inst_1
(
	.q /* OUT */ (dstop[1]),
	.d /* IN */ (dstopin[1]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q dstop_inst_2
(
	.q /* OUT */ (dstop[2]),
	.d /* IN */ (dstopin[2]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q dstop_inst_3
(
	.q /* OUT */ (dstop[3]),
	.d /* IN */ (dstopin[3]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q dstop_inst_4
(
	.q /* OUT */ (dstop[4]),
	.d /* IN */ (dstopin[4]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// DSP_EXEC.NET (297) - dstopb : nivm
assign dstopb[0] = dstop[0];
assign dstopb[1] = dstop[1];
assign dstopb[2] = dstop[2];
assign dstopb[3] = dstop[3];
assign dstopb[4] = dstop[4];

// DSP_EXEC.NET (298) - opcodein : mx2
assign opcodein[0] = (romoldb_0) ? opcodei[0] : opcode[0];
assign opcodein[1] = (romoldb_0) ? opcodei[1] : opcode[1];
assign opcodein[2] = (romoldb_0) ? opcodei[2] : opcode[2];
assign opcodein[3] = (romoldb_0) ? opcodei[3] : opcode[3];
assign opcodein[4] = (romoldb_0) ? opcodei[4] : opcode[4];
assign opcodein[5] = (romoldb_0) ? opcodei[5] : opcode[5];

// DSP_EXEC.NET (299) - opcode : fd2q
fd2q opcode_inst_0
(
	.q /* OUT */ (opcode[0]),
	.d /* IN */ (opcodein[0]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q opcode_inst_1
(
	.q /* OUT */ (opcode[1]),
	.d /* IN */ (opcodein[1]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q opcode_inst_2
(
	.q /* OUT */ (opcode[2]),
	.d /* IN */ (opcodein[2]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q opcode_inst_3
(
	.q /* OUT */ (opcode[3]),
	.d /* IN */ (opcodein[3]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q opcode_inst_4
(
	.q /* OUT */ (opcode[4]),
	.d /* IN */ (opcodein[4]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q opcode_inst_5
(
	.q /* OUT */ (opcode[5]),
	.d /* IN */ (opcodein[5]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// DSP_EXEC.NET (300) - opcode\[1] : iv
assign opcode_n_1 = ~opcode[1];

// DSP_EXEC.NET (301) - opcode\[3] : iv
assign opcode_n_3 = ~opcode[3];

// DSP_EXEC.NET (302) - opcode\[5] : iv
assign opcode_n_5 = ~opcode[5];

// DSP_EXEC.NET (304) - dbgrd[18-21] : ts
assign gpu_dout_18_out = opcode[2];
assign gpu_dout_18_oe = dbgrd;
assign gpu_dout_19_out = opcode[3];
assign gpu_dout_19_oe = dbgrd;
assign gpu_dout_20_out = opcode[4];
assign gpu_dout_20_oe = dbgrd;
assign gpu_dout_21_out = opcode[5];
assign gpu_dout_21_oe = dbgrd;

// DSP_EXEC.NET (306) - ressel[0-2] : join
assign ressel_0 = microword[0];
assign ressel_1 = microword[1];
assign ressel_2 = microword[2];

// DSP_EXEC.NET (307) - brlmux[0-1] : join
assign brlmux_0 = microword[3];
assign brlmux_1 = microword[4];

// DSP_EXEC.NET (308) - multsign : niv
assign multsign = microword[4];

// DSP_EXEC.NET (309) - msizet[0-1] : join
assign msizet_0 = microword[3];
assign msizet_1 = microword[4];

// DSP_EXEC.NET (310) - satsz : join
assign satsz = microword[5];

// DSP_EXEC.NET (311) - mac : an2
assign macop = exe_obuf & microword[6];

// DSP_EXEC.NET (312) - alufunc : join
assign alufunc_b0_obuf = microword[7];
assign alufunc[1] = microword[8];
assign alufunc_b2_obuf = microword[9];

// DSP_EXEC.NET (314) - flagld : an2
assign flagld = exe_obuf & microword[11];

// DSP_EXEC.NET (315) - resld : an2
assign resld = exe_obuf & microword[12];

// DSP_EXEC.NET (316) - srcdat[0-3] : niv
assign srcdat_0 = microword[13];
assign srcdat_1 = microword[14];
assign srcdat_2 = microword[15];
assign srcdat_3 = microword[16];

// DSP_EXEC.NET (317) - srcrrdt : nr4
assign srcrrdt = ~(microword[13] | microword[14] | microword[15] | microword[16]);

// DSP_EXEC.NET (318) - srcrrd : niv
assign srcrrd = srcrrdt;

// DSP_EXEC.NET (319) - reswr : an2
assign reswr = insexe & microword[17];

// DSP_EXEC.NET (320) - dstrrd : join
assign dstrrd = microword[18];

// DSP_EXEC.NET (321) - dstrrdi : join
assign dstrrdi = mwordi[18];

// DSP_EXEC.NET (322) - memrw : an2p
assign memrw_obuf = insexe & microword[19];

// DSP_EXEC.NET (323) - memrw\ : iv
assign memrw_n = ~memrw_obuf;

// DSP_EXEC.NET (324) - datwet : an2
assign datwet = go & microword[20];

// DSP_EXEC.NET (325) - datwe_raw : an2
assign datwe_raw = insexe & microword[20];

// DSP_EXEC.NET (326) - precomp : nivu
assign precomp_obuf = microword[21];

// DSP_EXEC.NET (327) - immld : join
assign immld_obuf = microword[22];

// DSP_EXEC.NET (328) - jumprel : an3
assign jumprel = exe_obuf & jump_ena & microword[23];

// DSP_EXEC.NET (329) - jumpabs : an3
assign jumpabs = exe_obuf & jump_ena & microword[24];

// DSP_EXEC.NET (330) - dstwen : an2
assign dstwen_obuf = insexe & microword[25];

// DSP_EXEC.NET (331) - dstrwr : niv
assign dstrwr = microword[25];

// DSP_EXEC.NET (332) - dstrwri : join
assign dstrwri = mwordi[25];

// DSP_EXEC.NET (333) - dsttinv : an2
assign dsttinv = microword[1] & dstwen_obuf;

// DSP_EXEC.NET (345) - opcd[0-4] : niv
assign opcd_0 = opcodei[0];
assign opcd_1 = opcodei[1];
assign opcd_2 = opcodei[2];
assign opcd_3 = opcodei[3];
assign opcd_4 = opcodei[4];

// DSP_EXEC.NET (346) - opcd[5] : nivm
assign opcd_5 = opcodei[5];

// DSP_EXEC.NET (347) - opcd\[0-4] : iv
assign opcd_n_0 = ~opcd_0;
assign opcd_n_1 = ~opcd_1;
assign opcd_n_2 = ~opcd_2;
assign opcd_n_3 = ~opcd_3;
assign opcd_n_4 = ~opcd_4;

// DSP_EXEC.NET (353) - idc\[36] : nd6
assign idc_n_36 = ~(opcd_5 & opcd_n_4 & opcd_n_3 & opcd_2 & opcd_n_1 & opcd_n_0);

// DSP_EXEC.NET (355) - idc\[37] : nd6
assign idc_n_37 = ~(opcd_5 & opcd_n_4 & opcd_n_3 & opcd_2 & opcd_n_1 & opcd_0);

// DSP_EXEC.NET (357) - idc\[43] : nd6
assign idc_n_43 = ~(opcd_5 & opcd_n_4 & opcd_3 & opcd_n_2 & opcd_1 & opcd_0);

// DSP_EXEC.NET (359) - idc\[44] : nd6
assign idc_n_44 = ~(opcd_5 & opcd_n_4 & opcd_3 & opcd_2 & opcd_n_1 & opcd_n_0);

// DSP_EXEC.NET (361) - idc\[49] : nd6
assign idc_n_49 = ~(opcd_5 & opcd_4 & opcd_n_3 & opcd_n_2 & opcd_n_1 & opcd_0);

// DSP_EXEC.NET (363) - idc\[50] : nd6
assign idc_n_50 = ~(opcd_5 & opcd_4 & opcd_n_3 & opcd_n_2 & opcd_1 & opcd_n_0);

// DSP_EXEC.NET (365) - idc\[58] : nd6
assign idc_n_58 = ~(opcd_5 & opcd_4 & opcd_3 & opcd_n_2 & opcd_1 & opcd_n_0);

// DSP_EXEC.NET (367) - idc\[59] : nd6
assign idc_n_59 = ~(opcd_5 & opcd_4 & opcd_3 & opcd_n_2 & opcd_1 & opcd_0);

// DSP_EXEC.NET (369) - idc\[60] : nd6
assign idc_n_60 = ~(opcd_5 & opcd_4 & opcd_3 & opcd_2 & opcd_n_1 & opcd_n_0);

// DSP_EXEC.NET (371) - idc\[61] : nd6
assign idc_n_61 = ~(opcd_5 & opcd_4 & opcd_3 & opcd_2 & opcd_n_1 & opcd_0);

// DSP_EXEC.NET (375) - precompit0 : an4
assign precompit_0 = idc_n_43 & idc_n_44 & idc_n_49 & idc_n_50;

// DSP_EXEC.NET (376) - precompit1 : an4
assign precompit_1 = idc_n_58 & idc_n_59 & idc_n_60 & idc_n_61;

// DSP_EXEC.NET (377) - precompit : nd2
assign precompit = ~(precompit_0 & precompit_1);

// DSP_EXEC.NET (378) - precompi : mx2
assign precompi = (romoldb_1) ? precompit : precompil;

// DSP_EXEC.NET (380) - precompil : fd2q
fd2q precompil_inst
(
	.q /* OUT */ (precompil),
	.d /* IN */ (precompi),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// DSP_EXEC.NET (390) - dsttinvit : iv
assign dsttinvit = ~idc_n_36;

// DSP_EXEC.NET (391) - dsttinvi : mx2
assign dsttinvi = (romoldb_1) ? dsttinvit : dsttinvil;

// DSP_EXEC.NET (393) - dsttinvil : fd2q
fd2q dsttinvil_inst
(
	.q /* OUT */ (dsttinvil),
	.d /* IN */ (dsttinvi),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// DSP_EXEC.NET (397) - srctinvit : iv
assign srctinvit = ~idc_n_37;

// DSP_EXEC.NET (398) - srctinvi : mx2
assign srctinvi = (romoldb_1) ? srctinvit : srctinvil;

// DSP_EXEC.NET (400) - srctinvil : fd2q
fd2q srctinvil_inst
(
	.q /* OUT */ (srctinvil),
	.d /* IN */ (srctinvi),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// DSP_EXEC.NET (404) - indselit : nd4
assign indselit = ~(idc_n_44 & idc_n_50 & idc_n_59 & idc_n_61);

// DSP_EXEC.NET (406) - indseli : mx2
assign indseli = (romoldb_1) ? indselit : indselil;

// DSP_EXEC.NET (408) - indselil : fd2q
fd2q indselil_inst
(
	.q /* OUT */ (indselil),
	.d /* IN */ (indseli),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// DSP_EXEC.NET (423) - datwet[0] : nd4
assign datwet_0 = ~(mtx_mreq_n & datwet & exeb_1 & memrw_obuf);

// DSP_EXEC.NET (425) - exe\ : iv
assign exe_n = ~exeb_1;

// DSP_EXEC.NET (426) - datwet[1] : nd3
assign datwet_1 = ~(mtx_mreq_n & datwelat & exe_n);

// DSP_EXEC.NET (427) - datwet[2] : nd3
assign datwet_2 = ~(mtx_mreq_n & datwelat & memrw_n);

// DSP_EXEC.NET (428) - datwe : nd3p
assign datwe = ~(datwet_0 & datwet_1 & datwet_2);

// DSP_EXEC.NET (430) - datweb : niv
assign datweb_obuf = datwe;

// DSP_EXEC.NET (431) - datwel : fd1q
fd1q datwel_inst
(
	.q /* OUT */ (datwelat),
	.d /* IN */ (datweb_obuf),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DSP_EXEC.NET (433) - datwec : an2p
assign datwec = exe_obuf & memrw_obuf;

// DSP_EXEC.NET (434) - msize[0-1] : fdsync
j_fdsync msize_from_0_to_1_inst_0
(
	.q /* OUT */ (msize_0),
	.d /* IN */ (msizet_0),
	.ld /* IN */ (datwec),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
j_fdsync msize_from_0_to_1_inst_1
(
	.q /* OUT */ (msize_1),
	.d /* IN */ (msizet_1),
	.ld /* IN */ (datwec),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DSP_EXEC.NET (439) - microword\[8] : iv
assign microword_n_8 = ~microword[8];

// DSP_EXEC.NET (440) - microword\[15] : iv
assign microword_n_15 = ~microword[15];

// DSP_EXEC.NET (441) - alufunc2\ : or3
assign alufunc2_n = microword[7] | microword_n_8 | microword[9];

// DSP_EXEC.NET (443) - alufunc7\ : nd3
assign alufunc7_n = ~(microword[7] & microword[8] & microword[9]);

// DSP_EXEC.NET (444) - rev_subt : nd2
assign rev_subt = ~(alufunc2_n & alufunc7_n);

// DSP_EXEC.NET (445) - srcdat4 : nr4
assign srcdat4 = ~(microword[13] | microword[14] | microword_n_15 | microword[16]);

// DSP_EXEC.NET (447) - rev_sub : an2
assign rev_sub = rev_subt & srcdat4;

// DSP_EXEC.NET (452) - div_instr : an6
assign div_instr_obuf = opcode[0] & opcode_n_1 & opcode[2] & opcode_n_3 & opcode[4] & opcode_n_5;

// DSP_EXEC.NET (455) - div_start : an2m
assign div_start = exe_obuf & div_instr_obuf;

// DSP_EXEC.NET (461) - conditional : or5
assign conditional = dstopb[0] | dstopb[1] | dstopb[2] | dstopb[3] | dstopb[4];

// DSP_EXEC.NET (462) - jump : or2
assign jump = microword[23] | microword[24];

// DSP_EXEC.NET (463) - fdt0 : nd2
assign fdt_0 = ~(conditional & jump);

// DSP_EXEC.NET (464) - alufunc\[2] : iv
assign alufunc_n_2 = ~alufunc_b2_obuf;

// DSP_EXEC.NET (465) - fdt1 : nd2
assign fdt_1 = ~(alufunc_b0_obuf & alufunc_n_2);

// DSP_EXEC.NET (466) - flag_depend : nd2
assign flag_depend = ~(fdt_0 & fdt_1);

// DSP_EXEC.NET (470) - insval : join
assign insval[0] = dstopb[0];
assign insval[1] = dstopb[1];
assign insval[2] = dstopb[2];
assign insval[3] = dstopb[3];
assign insval[4] = dstopb[4];
assign insval[5] = srcopb[0];
assign insval[6] = srcopb[1];
assign insval[7] = srcopb[2];
assign insval[8] = srcopb[3];
assign insval[9] = srcopb[4];
assign insval[10] = opcode[0];
assign insval[11] = opcode[1];
assign insval[12] = opcode[2];
assign insval[13] = opcode[3];
assign insval[14] = opcode[4];
assign insval[15] = opcode[5];

// DSP_EXEC.NET (471) - immlo : fdsync16
j_fdsync16 immlo_inst
(
	.q /* OUT */ ({immlo[0],immlo[1],immlo[2],immlo[3],immlo[4],immlo[5],immlo[6],immlo[7],immlo[8],immlo[9],immlo[10],immlo[11],immlo[12],immlo[13],immlo[14],immlo[15]}),
	.d /* IN */ ({insval[0],insval[1],insval[2],insval[3],insval[4],insval[5],insval[6],insval[7],insval[8],insval[9],insval[10],insval[11],insval[12],insval[13],insval[14],insval[15]}),
	.ld /* IN */ (loimmld),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DSP_EXEC.NET (472) - immdata : join
assign immdata[0] = immlo[0];
assign immdata[1] = immlo[1];
assign immdata[2] = immlo[2];
assign immdata[3] = immlo[3];
assign immdata[4] = immlo[4];
assign immdata[5] = immlo[5];
assign immdata[6] = immlo[6];
assign immdata[7] = immlo[7];
assign immdata[8] = immlo[8];
assign immdata[9] = immlo[9];
assign immdata[10] = immlo[10];
assign immdata[11] = immlo[11];
assign immdata[12] = immlo[12];
assign immdata[13] = immlo[13];
assign immdata[14] = immlo[14];
assign immdata[15] = immlo[15];
assign immdata[16] = insval[0];
assign immdata[17] = insval[1];
assign immdata[18] = insval[2];
assign immdata[19] = insval[3];
assign immdata[20] = insval[4];
assign immdata[21] = insval[5];
assign immdata[22] = insval[6];
assign immdata[23] = insval[7];
assign immdata[24] = insval[8];
assign immdata[25] = insval[9];
assign immdata[26] = insval[10];
assign immdata[27] = insval[11];
assign immdata[28] = insval[12];
assign immdata[29] = insval[13];
assign immdata[30] = insval[14];
assign immdata[31] = insval[15];

// DSP_EXEC.NET (476) - srcdgen : srcdgen
j_srcdgen srcdgen_inst
(
	.locdent /* OUT */ (locdent),
	.locsrc /* OUT */ ({locsrc[0],locsrc[1],locsrc[2],locsrc[3],locsrc[4],locsrc[5],locsrc[6],locsrc[7],locsrc[8],locsrc[9],locsrc[10],locsrc[11],locsrc[12],locsrc[13],locsrc[14],locsrc[15],locsrc[16],locsrc[17],locsrc[18],locsrc[19],locsrc[20],locsrc[21],locsrc[22],locsrc[23],locsrc[24],locsrc[25],locsrc[26],locsrc[27],locsrc[28],locsrc[29],locsrc[30],locsrc[31]}),
	.program_count /* IN */ ({prog_count[0],prog_count[1],prog_count[2],prog_count[3],prog_count[4],prog_count[5],prog_count[6],prog_count[7],prog_count[8],prog_count[9],prog_count[10],prog_count[11],prog_count[12],prog_count[13],prog_count[14],prog_count[15],prog_count[16],prog_count[17],prog_count[18],prog_count[19],prog_count[20],prog_count[21],prog_count[22],prog_count[23],prog_count[24],prog_count[25],prog_count[26],prog_count[27],prog_count[28],prog_count[29],prog_count[30],prog_count[31]}),
	.srcdat_0 /* IN */ (srcdat_0),
	.srcdat_1 /* IN */ (srcdat_1),
	.srcdat_2 /* IN */ (srcdat_2),
	.srcdat_3 /* IN */ (srcdat_3),
	.srcop /* IN */ ({srcopb[0],srcopb[1],srcopb[2],srcopb[3],srcopb[4]})
);

// DSP_EXEC.NET (482) - locden : an2u
assign locden = locdent & exe_obuf;

// DSP_EXEC.NET (490) - regpagei : mx2
assign regpagei = (flagwr) ? gpu_din[14] : regpage;

// DSP_EXEC.NET (491) - regpage : fd2q
fd2q regpage_inst
(
	.q /* OUT */ (regpage),
	.d /* IN */ (regpagei),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// DSP_EXEC.NET (492) - flagrd[14] : ts
assign gpu_dout_14_out = regpage;
assign gpu_dout_14_oe = flagrd;

// DSP_EXEC.NET (493) - imaski\ : iv
assign imaski_n = ~imaski;

// DSP_EXEC.NET (494) - reghighi : an2
assign reghighi = regpagei & imaski_n;

// DSP_EXEC.NET (495) - imask\ : fd1q
fd1q imask_n_inst
(
	.q /* OUT */ (imask_n),
	.d /* IN */ (imaski_n),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DSP_EXEC.NET (496) - reghigh : an2
assign reghigh = regpage & imask_n;

// DSP_EXEC.NET (508) - dsttopi : eo
assign dsttopi = dsttinvi ^ reghighi;

// DSP_EXEC.NET (509) - dstati : join
assign dstati[0] = dstopin[0];
assign dstati[1] = dstopin[1];
assign dstati[2] = dstopin[2];
assign dstati[3] = dstopin[3];
assign dstati[4] = dstopin[4];
assign dstati[5] = dsttopi;

// DSP_EXEC.NET (510) - impdai : join
assign impdai[0] = indseli;
assign impdai[1] = one;
assign impdai[2] = one;
assign impdai[3] = one;
assign impdai[4] = zero;
assign impdai[5] = dsttopi;

// DSP_EXEC.NET (512) - dsttop : eo
assign dsttop = dsttinv ^ reghigh;

// DSP_EXEC.NET (513) - dstatun : join
assign dstatun[0] = dstop[0];
assign dstatun[1] = dstop[1];
assign dstatun[2] = dstop[2];
assign dstatun[3] = dstop[3];
assign dstatun[4] = dstop[4];
assign dstatun[5] = dsttop;

// DSP_EXEC.NET (514) - dstat : nivh
assign dstat[0] = dstatun[0];
assign dstat[1] = dstatun[1];
assign dstat[2] = dstatun[2];
assign dstat[3] = dstatun[3];
assign dstat[4] = dstatun[4];
assign dstat[5] = dstatun[5];

// DSP_EXEC.NET (524) - danwsel1 : an2p
assign danwsel = insexei_obuf & precompi;

// DSP_EXEC.NET (525) - dstanwi : mx2p
assign dstanwi[0] = (danwsel) ? impdai[0] : dstati[0];
assign dstanwi[1] = (danwsel) ? impdai[1] : dstati[1];
assign dstanwi[2] = (danwsel) ? impdai[2] : dstati[2];
assign dstanwi[3] = (danwsel) ? impdai[3] : dstati[3];
assign dstanwi[4] = (danwsel) ? impdai[4] : dstati[4];
assign dstanwi[5] = (danwsel) ? impdai[5] : dstati[5];

// DSP_EXEC.NET (531) - srctopti : eo
assign srctopti = srctinvi ^ reghighi;

// DSP_EXEC.NET (532) - srctopi : or2
assign srctopi = srctopti | mtx_doveri;

// DSP_EXEC.NET (533) - srcanwi : join
assign srcanwi[0] = srcopin[0];
assign srcanwi[1] = srcopin[1];
assign srcanwi[2] = srcopin[2];
assign srcanwi[3] = srcopin[3];
assign srcanwi[4] = srcopin[4];
assign srcanwi[5] = srctopi;

// DSP_EXEC.NET (537) - execon : execon
j_execon execon_inst
(
	.dstdgate /* OUT */ (dstdgate),
	.exe /* OUT */ (exe_obuf),
	.exeb_1 /* OUT */ (exeb_1),
	.immwri /* OUT */ (immwri),
	.insexe /* OUT */ (insexe),
	.insexei /* OUT */ (insexei_obuf),
	.loimmld /* OUT */ (loimmld),
	.romold /* OUT */ (romold),
	.romoldb_0 /* OUT */ (romoldb_0),
	.romoldb_1 /* OUT */ (romoldb_1),
	.romoldb_2 /* OUT */ (romoldb_2),
	.romoldb_3 /* OUT */ (romoldb_3),
	.romoldb_4 /* OUT */ (romoldb_4),
	.stop /* OUT */ (single_stop),
	.clk_0 /* IN */ (clk),
	.go /* IN */ (go),
	.immld /* IN */ (immld_obuf),
	.insrdy /* IN */ (insrdy),
	.memrw /* IN */ (memrw_obuf),
	.datwe /* IN */ (datwe),
	.mtx_wait /* IN */ (mtx_wait),
	.precomp /* IN */ (precomp_obuf),
	.reset_n /* IN */ (reset_n),
	.sbwait /* IN */ (sbwait),
	.single_go /* IN */ (single_go),
	.single_step /* IN */ (single_step),
	.sys_clk(sys_clk) // Generated
);

// DSP_EXEC.NET (553) - zero_flag\ : iv
assign zero_flag_n = ~zero_flag;

// DSP_EXEC.NET (554) - other_flag : mx2
assign other_flag = (dstopb[4]) ? nega_flag : carry_flag;

// DSP_EXEC.NET (556) - other_flag\ : iv
assign other_flag_n = ~other_flag;

// DSP_EXEC.NET (557) - cond0 : nd2
assign cond_0 = ~(dstopb[0] & zero_flag);

// DSP_EXEC.NET (558) - cond1 : nd2
assign cond_1 = ~(dstopb[1] & zero_flag_n);

// DSP_EXEC.NET (559) - cond2 : nd2
assign cond_2 = ~(dstopb[2] & other_flag);

// DSP_EXEC.NET (560) - cond3 : nd2
assign cond_3 = ~(dstopb[3] & other_flag_n);

// DSP_EXEC.NET (561) - conddis : an4
assign jump_ena = cond_0 & cond_1 & cond_2 & cond_3;

// DSP_EXEC.NET (575) - mtx_addr : join
assign mtx_addr[0] = zero;
assign mtx_addr[1] = zero;
assign mtx_addr[2] = mtxaddr_2;
assign mtx_addr[3] = mtxaddr_3;
assign mtx_addr[4] = mtxaddr_4;
assign mtx_addr[5] = mtxaddr_5;
assign mtx_addr[6] = mtxaddr_6;
assign mtx_addr[7] = mtxaddr_7;
assign mtx_addr[8] = mtxaddr_8;
assign mtx_addr[9] = mtxaddr_9;
assign mtx_addr[10] = mtxaddr_10;
assign mtx_addr[11] = mtxaddr_11;
assign mtx_addr[12] = one;
assign mtx_addr[13] = one;
assign mtx_addr[14] = zero;
assign mtx_addr[15] = one;
assign mtx_addr[16] = one;
assign mtx_addr[17] = zero;
assign mtx_addr[18] = zero;
assign mtx_addr[19] = zero;
assign mtx_addr[20] = one;
assign mtx_addr[21] = one;
assign mtx_addr[22] = one;
assign mtx_addr[23] = one;

// DSP_EXEC.NET (579) - dataseli[0] : or2
assign dataseli_0 = srcaddrldi | mtx_doveri;

// DSP_EXEC.NET (580) - dataseli[1] : or2
assign dataseli_1 = resaddrldi | mtx_doveri;

// DSP_EXEC.NET (581) - datasel0[0-5] : fd1qp
fd1q datasel0_from_0_to_5_inst_0
(
	.q /* OUT */ (datasel0_0),
	.d /* IN */ (dataseli_0),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q datasel0_from_0_to_5_inst_1
(
	.q /* OUT */ (datasel0_1),
	.d /* IN */ (dataseli_0),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q datasel0_from_0_to_5_inst_2
(
	.q /* OUT */ (datasel0_2),
	.d /* IN */ (dataseli_0),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q datasel0_from_0_to_5_inst_3
(
	.q /* OUT */ (datasel0_3),
	.d /* IN */ (dataseli_0),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q datasel0_from_0_to_5_inst_4
(
	.q /* OUT */ (datasel0_4),
	.d /* IN */ (dataseli_0),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q datasel0_from_0_to_5_inst_5
(
	.q /* OUT */ (datasel0_5),
	.d /* IN */ (dataseli_0),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DSP_EXEC.NET (582) - datasel1[0-5] : fd1qp
fd1q datasel1_from_0_to_5_inst_0
(
	.q /* OUT */ (datasel1_0),
	.d /* IN */ (dataseli_1),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q datasel1_from_0_to_5_inst_1
(
	.q /* OUT */ (datasel1_1),
	.d /* IN */ (dataseli_1),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q datasel1_from_0_to_5_inst_2
(
	.q /* OUT */ (datasel1_2),
	.d /* IN */ (dataseli_1),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q datasel1_from_0_to_5_inst_3
(
	.q /* OUT */ (datasel1_3),
	.d /* IN */ (dataseli_1),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q datasel1_from_0_to_5_inst_4
(
	.q /* OUT */ (datasel1_4),
	.d /* IN */ (dataseli_1),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q datasel1_from_0_to_5_inst_5
(
	.q /* OUT */ (datasel1_5),
	.d /* IN */ (dataseli_1),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// DSP_EXEC.NET (584) - dataddr[0-3] : mx4p
mx4 dataddr_from_0_to_3_inst_0
(
	.z /* OUT */ (dataddr_0),
	.a0 /* IN */ (srcaddrl_0),
	.a1 /* IN */ (srcdpa[0]),
	.a2 /* IN */ (result[0]),
	.a3 /* IN */ (mtx_addr[0]),
	.s0 /* IN */ (datasel0_0),
	.s1 /* IN */ (datasel1_0)
);
mx4 dataddr_from_0_to_3_inst_1
(
	.z /* OUT */ (dataddr_1),
	.a0 /* IN */ (srcaddrl_1),
	.a1 /* IN */ (srcdpa[1]),
	.a2 /* IN */ (result[1]),
	.a3 /* IN */ (mtx_addr[1]),
	.s0 /* IN */ (datasel0_0),
	.s1 /* IN */ (datasel1_0)
);
mx4 dataddr_from_0_to_3_inst_2
(
	.z /* OUT */ (dataddr_2),
	.a0 /* IN */ (srcaddrl_2),
	.a1 /* IN */ (srcdpa[2]),
	.a2 /* IN */ (result[2]),
	.a3 /* IN */ (mtx_addr[2]),
	.s0 /* IN */ (datasel0_0),
	.s1 /* IN */ (datasel1_0)
);
mx4 dataddr_from_0_to_3_inst_3
(
	.z /* OUT */ (dataddr_3),
	.a0 /* IN */ (srcaddrl_3),
	.a1 /* IN */ (srcdpa[3]),
	.a2 /* IN */ (result[3]),
	.a3 /* IN */ (mtx_addr[3]),
	.s0 /* IN */ (datasel0_0),
	.s1 /* IN */ (datasel1_0)
);

// DSP_EXEC.NET (587) - dataddr[4-7] : mx4p
mx4 dataddr_from_4_to_7_inst_0
(
	.z /* OUT */ (dataddr_4),
	.a0 /* IN */ (srcaddrl_4),
	.a1 /* IN */ (srcdpa[4]),
	.a2 /* IN */ (result[4]),
	.a3 /* IN */ (mtx_addr[4]),
	.s0 /* IN */ (datasel0_1),
	.s1 /* IN */ (datasel1_1)
);
mx4 dataddr_from_4_to_7_inst_1
(
	.z /* OUT */ (dataddr_5),
	.a0 /* IN */ (srcaddrl_5),
	.a1 /* IN */ (srcdpa[5]),
	.a2 /* IN */ (result[5]),
	.a3 /* IN */ (mtx_addr[5]),
	.s0 /* IN */ (datasel0_1),
	.s1 /* IN */ (datasel1_1)
);
mx4 dataddr_from_4_to_7_inst_2
(
	.z /* OUT */ (dataddr_6),
	.a0 /* IN */ (srcaddrl_6),
	.a1 /* IN */ (srcdpa[6]),
	.a2 /* IN */ (result[6]),
	.a3 /* IN */ (mtx_addr[6]),
	.s0 /* IN */ (datasel0_1),
	.s1 /* IN */ (datasel1_1)
);
mx4 dataddr_from_4_to_7_inst_3
(
	.z /* OUT */ (dataddr_7),
	.a0 /* IN */ (srcaddrl_7),
	.a1 /* IN */ (srcdpa[7]),
	.a2 /* IN */ (result[7]),
	.a3 /* IN */ (mtx_addr[7]),
	.s0 /* IN */ (datasel0_1),
	.s1 /* IN */ (datasel1_1)
);

// DSP_EXEC.NET (590) - dataddr[8-11] : mx4p
mx4 dataddr_from_8_to_11_inst_0
(
	.z /* OUT */ (dataddr_8),
	.a0 /* IN */ (srcaddrl_8),
	.a1 /* IN */ (srcdpa[8]),
	.a2 /* IN */ (result[8]),
	.a3 /* IN */ (mtx_addr[8]),
	.s0 /* IN */ (datasel0_2),
	.s1 /* IN */ (datasel1_2)
);
mx4 dataddr_from_8_to_11_inst_1
(
	.z /* OUT */ (dataddr_9),
	.a0 /* IN */ (srcaddrl_9),
	.a1 /* IN */ (srcdpa[9]),
	.a2 /* IN */ (result[9]),
	.a3 /* IN */ (mtx_addr[9]),
	.s0 /* IN */ (datasel0_2),
	.s1 /* IN */ (datasel1_2)
);
mx4 dataddr_from_8_to_11_inst_2
(
	.z /* OUT */ (dataddr_10),
	.a0 /* IN */ (srcaddrl_10),
	.a1 /* IN */ (srcdpa[10]),
	.a2 /* IN */ (result[10]),
	.a3 /* IN */ (mtx_addr[10]),
	.s0 /* IN */ (datasel0_2),
	.s1 /* IN */ (datasel1_2)
);
mx4 dataddr_from_8_to_11_inst_3
(
	.z /* OUT */ (dataddr_11),
	.a0 /* IN */ (srcaddrl_11),
	.a1 /* IN */ (srcdpa[11]),
	.a2 /* IN */ (result[11]),
	.a3 /* IN */ (mtx_addr[11]),
	.s0 /* IN */ (datasel0_2),
	.s1 /* IN */ (datasel1_2)
);

// DSP_EXEC.NET (593) - dataddr[12-15] : mx4p
mx4 dataddr_from_12_to_15_inst_0
(
	.z /* OUT */ (dataddr_12),
	.a0 /* IN */ (srcaddrl_12),
	.a1 /* IN */ (srcdpa[12]),
	.a2 /* IN */ (result[12]),
	.a3 /* IN */ (mtx_addr[12]),
	.s0 /* IN */ (datasel0_3),
	.s1 /* IN */ (datasel1_3)
);
mx4 dataddr_from_12_to_15_inst_1
(
	.z /* OUT */ (dataddr_13),
	.a0 /* IN */ (srcaddrl_13),
	.a1 /* IN */ (srcdpa[13]),
	.a2 /* IN */ (result[13]),
	.a3 /* IN */ (mtx_addr[13]),
	.s0 /* IN */ (datasel0_3),
	.s1 /* IN */ (datasel1_3)
);
mx4 dataddr_from_12_to_15_inst_2
(
	.z /* OUT */ (dataddr_14),
	.a0 /* IN */ (srcaddrl_14),
	.a1 /* IN */ (srcdpa[14]),
	.a2 /* IN */ (result[14]),
	.a3 /* IN */ (mtx_addr[14]),
	.s0 /* IN */ (datasel0_3),
	.s1 /* IN */ (datasel1_3)
);
mx4 dataddr_from_12_to_15_inst_3
(
	.z /* OUT */ (dataddr_15),
	.a0 /* IN */ (srcaddrl_15),
	.a1 /* IN */ (srcdpa[15]),
	.a2 /* IN */ (result[15]),
	.a3 /* IN */ (mtx_addr[15]),
	.s0 /* IN */ (datasel0_3),
	.s1 /* IN */ (datasel1_3)
);

// DSP_EXEC.NET (596) - dataddr[16-19] : mx4p
mx4 dataddr_from_16_to_19_inst_0
(
	.z /* OUT */ (dataddr_16),
	.a0 /* IN */ (srcaddrl_16),
	.a1 /* IN */ (srcdpa[16]),
	.a2 /* IN */ (result[16]),
	.a3 /* IN */ (mtx_addr[16]),
	.s0 /* IN */ (datasel0_4),
	.s1 /* IN */ (datasel1_4)
);
mx4 dataddr_from_16_to_19_inst_1
(
	.z /* OUT */ (dataddr_17),
	.a0 /* IN */ (srcaddrl_17),
	.a1 /* IN */ (srcdpa[17]),
	.a2 /* IN */ (result[17]),
	.a3 /* IN */ (mtx_addr[17]),
	.s0 /* IN */ (datasel0_4),
	.s1 /* IN */ (datasel1_4)
);
mx4 dataddr_from_16_to_19_inst_2
(
	.z /* OUT */ (dataddr_18),
	.a0 /* IN */ (srcaddrl_18),
	.a1 /* IN */ (srcdpa[18]),
	.a2 /* IN */ (result[18]),
	.a3 /* IN */ (mtx_addr[18]),
	.s0 /* IN */ (datasel0_4),
	.s1 /* IN */ (datasel1_4)
);
mx4 dataddr_from_16_to_19_inst_3
(
	.z /* OUT */ (dataddr_19),
	.a0 /* IN */ (srcaddrl_19),
	.a1 /* IN */ (srcdpa[19]),
	.a2 /* IN */ (result[19]),
	.a3 /* IN */ (mtx_addr[19]),
	.s0 /* IN */ (datasel0_4),
	.s1 /* IN */ (datasel1_4)
);

// DSP_EXEC.NET (599) - dataddr[20-23] : mx4p
mx4 dataddr_from_20_to_23_inst_0
(
	.z /* OUT */ (dataddr_20),
	.a0 /* IN */ (srcaddrl_20),
	.a1 /* IN */ (srcdpa[20]),
	.a2 /* IN */ (result[20]),
	.a3 /* IN */ (mtx_addr[20]),
	.s0 /* IN */ (datasel0_5),
	.s1 /* IN */ (datasel1_5)
);
mx4 dataddr_from_20_to_23_inst_1
(
	.z /* OUT */ (dataddr_21),
	.a0 /* IN */ (srcaddrl_21),
	.a1 /* IN */ (srcdpa[21]),
	.a2 /* IN */ (result[21]),
	.a3 /* IN */ (mtx_addr[21]),
	.s0 /* IN */ (datasel0_5),
	.s1 /* IN */ (datasel1_5)
);
mx4 dataddr_from_20_to_23_inst_2
(
	.z /* OUT */ (dataddr_22),
	.a0 /* IN */ (srcaddrl_22),
	.a1 /* IN */ (srcdpa[22]),
	.a2 /* IN */ (result[22]),
	.a3 /* IN */ (mtx_addr[22]),
	.s0 /* IN */ (datasel0_5),
	.s1 /* IN */ (datasel1_5)
);
mx4 dataddr_from_20_to_23_inst_3
(
	.z /* OUT */ (dataddr_23),
	.a0 /* IN */ (srcaddrl_23),
	.a1 /* IN */ (srcdpa[23]),
	.a2 /* IN */ (result[23]),
	.a3 /* IN */ (mtx_addr[23]),
	.s0 /* IN */ (datasel0_5),
	.s1 /* IN */ (datasel1_5)
);

// DSP_EXEC.NET (603) - dataddr : join
assign dataddr[0] = dataddr_0;
assign dataddr[1] = dataddr_1;
assign dataddr[2] = dataddr_2;
assign dataddr[3] = dataddr_3;
assign dataddr[4] = dataddr_4;
assign dataddr[5] = dataddr_5;
assign dataddr[6] = dataddr_6;
assign dataddr[7] = dataddr_7;
assign dataddr[8] = dataddr_8;
assign dataddr[9] = dataddr_9;
assign dataddr[10] = dataddr_10;
assign dataddr[11] = dataddr_11;
assign dataddr[12] = dataddr_12;
assign dataddr[13] = dataddr_13;
assign dataddr[14] = dataddr_14;
assign dataddr[15] = dataddr_15;
assign dataddr[16] = dataddr_16;
assign dataddr[17] = dataddr_17;
assign dataddr[18] = dataddr_18;
assign dataddr[19] = dataddr_19;
assign dataddr[20] = dataddr_20;
assign dataddr[21] = dataddr_21;
assign dataddr[22] = dataddr_22;
assign dataddr[23] = dataddr_23;

// DSP_EXEC.NET (606) - addrlatt : oan1
assign addrlatt = (datasel0_5 | datasel1_5) & tlw;

// DSP_EXEC.NET (608) - addrlat : nivu
assign addrlat = addrlatt;

// DSP_EXEC.NET (609) - srcaddrl[0-23] : ldp1q
ldp1q srcaddrl_from_0_to_23_inst_0
(
	.q /* OUT */ (srcaddrl_0),
	.d /* IN */ (dataddr_0),
	.g /* IN */ (addrlat),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcaddrl_from_0_to_23_inst_1
(
	.q /* OUT */ (srcaddrl_1),
	.d /* IN */ (dataddr_1),
	.g /* IN */ (addrlat),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcaddrl_from_0_to_23_inst_2
(
	.q /* OUT */ (srcaddrl_2),
	.d /* IN */ (dataddr_2),
	.g /* IN */ (addrlat),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcaddrl_from_0_to_23_inst_3
(
	.q /* OUT */ (srcaddrl_3),
	.d /* IN */ (dataddr_3),
	.g /* IN */ (addrlat),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcaddrl_from_0_to_23_inst_4
(
	.q /* OUT */ (srcaddrl_4),
	.d /* IN */ (dataddr_4),
	.g /* IN */ (addrlat),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcaddrl_from_0_to_23_inst_5
(
	.q /* OUT */ (srcaddrl_5),
	.d /* IN */ (dataddr_5),
	.g /* IN */ (addrlat),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcaddrl_from_0_to_23_inst_6
(
	.q /* OUT */ (srcaddrl_6),
	.d /* IN */ (dataddr_6),
	.g /* IN */ (addrlat),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcaddrl_from_0_to_23_inst_7
(
	.q /* OUT */ (srcaddrl_7),
	.d /* IN */ (dataddr_7),
	.g /* IN */ (addrlat),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcaddrl_from_0_to_23_inst_8
(
	.q /* OUT */ (srcaddrl_8),
	.d /* IN */ (dataddr_8),
	.g /* IN */ (addrlat),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcaddrl_from_0_to_23_inst_9
(
	.q /* OUT */ (srcaddrl_9),
	.d /* IN */ (dataddr_9),
	.g /* IN */ (addrlat),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcaddrl_from_0_to_23_inst_10
(
	.q /* OUT */ (srcaddrl_10),
	.d /* IN */ (dataddr_10),
	.g /* IN */ (addrlat),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcaddrl_from_0_to_23_inst_11
(
	.q /* OUT */ (srcaddrl_11),
	.d /* IN */ (dataddr_11),
	.g /* IN */ (addrlat),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcaddrl_from_0_to_23_inst_12
(
	.q /* OUT */ (srcaddrl_12),
	.d /* IN */ (dataddr_12),
	.g /* IN */ (addrlat),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcaddrl_from_0_to_23_inst_13
(
	.q /* OUT */ (srcaddrl_13),
	.d /* IN */ (dataddr_13),
	.g /* IN */ (addrlat),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcaddrl_from_0_to_23_inst_14
(
	.q /* OUT */ (srcaddrl_14),
	.d /* IN */ (dataddr_14),
	.g /* IN */ (addrlat),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcaddrl_from_0_to_23_inst_15
(
	.q /* OUT */ (srcaddrl_15),
	.d /* IN */ (dataddr_15),
	.g /* IN */ (addrlat),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcaddrl_from_0_to_23_inst_16
(
	.q /* OUT */ (srcaddrl_16),
	.d /* IN */ (dataddr_16),
	.g /* IN */ (addrlat),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcaddrl_from_0_to_23_inst_17
(
	.q /* OUT */ (srcaddrl_17),
	.d /* IN */ (dataddr_17),
	.g /* IN */ (addrlat),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcaddrl_from_0_to_23_inst_18
(
	.q /* OUT */ (srcaddrl_18),
	.d /* IN */ (dataddr_18),
	.g /* IN */ (addrlat),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcaddrl_from_0_to_23_inst_19
(
	.q /* OUT */ (srcaddrl_19),
	.d /* IN */ (dataddr_19),
	.g /* IN */ (addrlat),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcaddrl_from_0_to_23_inst_20
(
	.q /* OUT */ (srcaddrl_20),
	.d /* IN */ (dataddr_20),
	.g /* IN */ (addrlat),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcaddrl_from_0_to_23_inst_21
(
	.q /* OUT */ (srcaddrl_21),
	.d /* IN */ (dataddr_21),
	.g /* IN */ (addrlat),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcaddrl_from_0_to_23_inst_22
(
	.q /* OUT */ (srcaddrl_22),
	.d /* IN */ (dataddr_22),
	.g /* IN */ (addrlat),
	.sys_clk(sys_clk) // Generated
);
ldp1q srcaddrl_from_0_to_23_inst_23
(
	.q /* OUT */ (srcaddrl_23),
	.d /* IN */ (dataddr_23),
	.g /* IN */ (addrlat),
	.sys_clk(sys_clk) // Generated
);

// DSP_EXEC.NET (614) - datreq : or2
assign datreq = sdatreq | mtx_mreq;

// DSP_EXEC.NET (618) - pcrd : ts
assign gpu_data_out[0] = prog_count[0];
assign gpu_data_oe[0] = pcrd;
assign gpu_data_out[1] = prog_count[1];
assign gpu_data_oe[1] = pcrd;
assign gpu_data_out[2] = prog_count[2];
assign gpu_data_oe[2] = pcrd;
assign gpu_data_out[3] = prog_count[3];
assign gpu_data_oe[3] = pcrd;
assign gpu_data_out[4] = prog_count[4];
assign gpu_data_oe[4] = pcrd;
assign gpu_data_out[5] = prog_count[5];
assign gpu_data_oe[5] = pcrd;
assign gpu_data_out[6] = prog_count[6];
assign gpu_data_oe[6] = pcrd;
assign gpu_data_out[7] = prog_count[7];
assign gpu_data_oe[7] = pcrd;
assign gpu_data_out[8] = prog_count[8];
assign gpu_data_oe[8] = pcrd;
assign gpu_data_out[9] = prog_count[9];
assign gpu_data_oe[9] = pcrd;
assign gpu_data_out[10] = prog_count[10];
assign gpu_data_oe[10] = pcrd;
assign gpu_data_out[11] = prog_count[11];
assign gpu_data_oe[11] = pcrd;
assign gpu_data_out[12] = prog_count[12];
assign gpu_data_oe[12] = pcrd;
assign gpu_data_out[13] = prog_count[13];
assign gpu_data_oe[13] = pcrd;
assign gpu_data_out[14] = prog_count[14];
assign gpu_data_oe[14] = pcrd;
assign gpu_data_out[15] = prog_count[15];
assign gpu_data_oe[15] = pcrd;
assign gpu_data_out[16] = prog_count[16];
assign gpu_data_oe[16] = pcrd;
assign gpu_data_out[17] = prog_count[17];
assign gpu_data_oe[17] = pcrd;
assign gpu_data_out[18] = prog_count[18];
assign gpu_data_oe[18] = pcrd;
assign gpu_data_out[19] = prog_count[19];
assign gpu_data_oe[19] = pcrd;
assign gpu_data_out[20] = prog_count[20];
assign gpu_data_oe[20] = pcrd;
assign gpu_data_out[21] = prog_count[21];
assign gpu_data_oe[21] = pcrd;
assign gpu_data_out[22] = prog_count[22];
assign gpu_data_oe[22] = pcrd;
assign gpu_data_out[23] = prog_count[23];
assign gpu_data_oe[23] = pcrd;
assign gpu_data_out[24] = prog_count[24];
assign gpu_data_oe[24] = pcrd;
assign gpu_data_out[25] = prog_count[25];
assign gpu_data_oe[25] = pcrd;
assign gpu_data_out[26] = prog_count[26];
assign gpu_data_oe[26] = pcrd;
assign gpu_data_out[27] = prog_count[27];
assign gpu_data_oe[27] = pcrd;
assign gpu_data_out[28] = prog_count[28];
assign gpu_data_oe[28] = pcrd;
assign gpu_data_out[29] = prog_count[29];
assign gpu_data_oe[29] = pcrd;
assign gpu_data_out[30] = prog_count[30];
assign gpu_data_oe[30] = pcrd;
assign gpu_data_out[31] = prog_count[31];
assign gpu_data_oe[31] = pcrd;
endmodule
/* verilator lint_on LITENDIAN */
