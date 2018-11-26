/* verilator lint_off LITENDIAN */
`include "defs.v"

module sboard
(
	output [0:5] dsta,
	output sdatreq,
	output dstrwen_n,
	output [0:31] dstwd,
	output resaddrldi,
	output sbwait,
	output [0:5] srca,
	output srcaddrldi,
	output srcrwen_n,
	output [0:31] srcwd,
	input clk,
	input datack,
	input datwe,
	input datwe_raw,
	input del_xld,
	input div_activei,
	input div_instr,
	input div_start,
	input [0:5] dstanwi,
	input [0:5] dstat,
	input dstrrd,
	input dstrrdi,
	input dstrwr,
	input dstrwri,
	input dstwen,
	input exe,
	input flag_depend,
	input flagld,
	input gate_active,
	input [0:31] immdata,
	input immld,
	input immwri,
	input insexei,
	input [0:31] load_data,
	input [0:31] mem_data,
	input memrw,
	input mtx_dover,
	input precomp,
	input [0:31] quotient,
	input reset_n,
	input reswr,
	input [0:31] result,
	input [0:5] srcanwi,
	input [0:31] srcdp,
	input srcrrd,
	input xld_ready,
	input sys_clk // Generated
);
wire [0:5] alu_wbaddr;
wire [0:5] div_wbaddr;
wire [0:5] dstwbaddr;
wire [0:5] hwbaddr;
wire [0:5] ild_wbaddr;
wire [0:5] ild_wbaddrl;
wire [0:5] imm_wbaddr;
wire [0:5] mov_wbaddr;
wire [0:5] srcwbaddr;
wire [0:5] swbaddr;
wire [0:5] xld_wbaddr;
wire [0:5] xlddst;
wire [0:5] xlddst2;
wire [0:5] zero6;
wire [0:5] dsta_reg;
wire [0:5] srca_reg;
wire [0:5] dstanw;
wire [0:5] srcanw;
wire [0:31] mxdata;
wire [0:31] xld_data;
wire [0:31] ild_data;
wire [0:31] ild_datad;
wire datack_n;
wire datwe_n;
wire del_xld_n;
wire exe_n;
wire memrw_n;
wire mtx_dover_n;
wire precomp_n;
wire zero;
wire insexe;
wire dstren;
wire dsta_reg_ena;
wire srca_reg_ena;
wire pendwr;
wire alu_wback;
wire alu_wback_n;
wire dp1eq;
wire sp1eq;
wire aluwt;
wire aludwait;
wire mov_wback_n;
wire mov_wback;
wire immasel;
wire imm_wback;
wire imm_wback_n;
wire ildwal;
wire ildwbset_n;
wire ildwbset;
wire ildwbclr;
wire ild_wbackh_n;
wire ild_wbacks_n;
wire ildwbt;
wire ild_wbackd;
wire ild_wbacki;
wire ild_wbackd_n;
wire ild_wback;
wire ild_wback_n;
wire ilddselt_n;
wire ilddsel_n;
wire idlet_0;
wire idle;
wire idlet_1;
wire idlet_2;
wire loading;
wire idlei;
wire idle_n;
wire comp1i;
wire comp1;
wire comp2i;
wire comp2;
wire comp2_n;
wire loadingt_0;
wire loadingt_1;
wire loadingt_2;
wire loadingi;
wire dlaeq;
wire slaeq;
wire ldwaitt_0;
wire ldwaitt_1;
wire ldwaitt_2;
wire ldwait;
wire drqt_0;
wire drqt_1;
wire drqt_2;
wire ld1t_0;
wire ldidle;
wire ld1t_1;
wire oneld;
wire xldd_sel_n;
wire ld1t_2;
wire xldd_sel;
wire ld1t_3;
wire twold;
wire oneldi;
wire ld2t_0;
wire ld2t_1;
wire twoldi;
wire ldidle_n;
wire xlddt_0;
wire xlddt_1;
wire xlddt_2;
wire xlddt_3;
wire xlddeq;
wire xldseq;
wire xldeq;
wire xld2deq;
wire xld2seq;
wire xld2eq;
wire xlddwait;
wire mbsywt_0;
wire mbsywt_1;
wire mbsywt_2;
wire mbsywt_3;
wire mbusywait;
wire xwbclr;
wire xld_wbackh_n;
wire xld_wbacks_n;
wire xwbat_0;
wire xld_wbackl;
wire xwbat_1;
wire xld_wback;
wire xld_wback_n;
wire div_active;
wire div_activei_n;
wire divdeq;
wire divseq;
wire diveq;
wire divdwait;
wire dwbset;
wire dwbclr;
wire div_wbackh_n;
wire div_wbacks_n;
wire dwbat_0;
wire div_wbackl;
wire dwbat_1;
wire div_wback;
wire div_wback_n;
wire diviwait;
wire flag_pend;
wire flagwait;
wire wbacki;
wire wback;
wire alu_wbackh_n;
wire mov_wbackh_n;
wire imm_wbackh_n;
wire mov_wbacks_n;
wire imm_wbackst;
wire imm_wbacks_n;
wire ild_wbackst;
wire xld_wbackst;
wire div_wbackst;
wire mult_wbacki;
wire mult_wback;
wire mult_wback_n;
wire hasel_0;
wire hasel_1;
wire hasel_2;
wire sasel_0;
wire sasel_1;
wire sasel_2;
wire wbdcmpt_0;
wire wbdcmpt_1;
wire wbdcmpt_2;
wire wbdcmpt_3;
wire wbdcmpt_4;
wire wbdcmpt_5;
wire wbdeqi_n;
wire wbdeqit;
wire wbdeqi;
wire wbdeq_n;
wire wbseqi_n;
wire wbseq_n;
wire bothen;
wire wbwaitt;
wire wbwait;
wire dwbt_0;
wire dwbt_4;
wire dwbt_5;
wire dwbt_6;
wire dwbt_1;
wire dwbt_2;
wire dwbt_3;
wire dstwbwei;
wire dstwbwet;
wire dstwbwe_n;
wire dstwbwe;
wire swbt_0;
wire swbt_1;
wire srcwbwei;
wire srcwbwe;
wire xldd_selt;
wire divd_selt;
wire divd_sel;
wire dwselt_0;
wire dwselt_1;
wire dwsel_0;
wire dwsel_1;
wire dwselb_0;
wire dwselb_1;
wire swselti_0;
wire swselti_1;
wire swselt_0;
wire swselt_1;
wire swsel_0;
wire swsel_1;
wire swselb_0;
wire swselb_1;
wire sbwaitt_0;
wire sbwaitt_1;
wire sbwaitt_2;
wire sbwaitt_3;
wire sbwait_tmp;

// SBOARD.NET (91) - datack\ : iv
assign datack_n = ~datack;

// SBOARD.NET (92) - datwe\ : iv
assign datwe_n = ~datwe;

// SBOARD.NET (93) - del_xld\ : iv
assign del_xld_n = ~del_xld;

// SBOARD.NET (94) - exe\ : iv
assign exe_n = ~exe;

// SBOARD.NET (95) - memrw\ : iv
assign memrw_n = ~memrw;

// SBOARD.NET (96) - mtx_dover\ : iv
assign mtx_dover_n = ~mtx_dover;

// SBOARD.NET (97) - precomp\ : iv
assign precomp_n = ~precomp;

// SBOARD.NET (98) - zero : tie0
assign zero = 1'b0;

// SBOARD.NET (99) - zero6 : join
assign zero6[0] = zero;
assign zero6[1] = zero;
assign zero6[2] = zero;
assign zero6[3] = zero;
assign zero6[4] = zero;
assign zero6[5] = zero;

// SBOARD.NET (102) - insexe : fd1q
fd1q insexe_inst
(
	.q /* OUT */ (insexe),
	.d /* IN */ (insexei),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// SBOARD.NET (103) - dstanw : fd1q
fd1q dstanw_inst_0
(
	.q /* OUT */ (dstanw[0]),
	.d /* IN */ (dstanwi[0]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dstanw_inst_1
(
	.q /* OUT */ (dstanw[1]),
	.d /* IN */ (dstanwi[1]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dstanw_inst_2
(
	.q /* OUT */ (dstanw[2]),
	.d /* IN */ (dstanwi[2]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dstanw_inst_3
(
	.q /* OUT */ (dstanw[3]),
	.d /* IN */ (dstanwi[3]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dstanw_inst_4
(
	.q /* OUT */ (dstanw[4]),
	.d /* IN */ (dstanwi[4]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dstanw_inst_5
(
	.q /* OUT */ (dstanw[5]),
	.d /* IN */ (dstanwi[5]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// SBOARD.NET (104) - srcanw : fd1q
fd1q srcanw_inst_0
(
	.q /* OUT */ (srcanw[0]),
	.d /* IN */ (srcanwi[0]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srcanw_inst_1
(
	.q /* OUT */ (srcanw[1]),
	.d /* IN */ (srcanwi[1]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srcanw_inst_2
(
	.q /* OUT */ (srcanw[2]),
	.d /* IN */ (srcanwi[2]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srcanw_inst_3
(
	.q /* OUT */ (srcanw[3]),
	.d /* IN */ (srcanwi[3]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srcanw_inst_4
(
	.q /* OUT */ (srcanw[4]),
	.d /* IN */ (srcanwi[4]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srcanw_inst_5
(
	.q /* OUT */ (srcanw[5]),
	.d /* IN */ (srcanwi[5]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// SBOARD.NET (108) - dstren : or2
assign dstren = dstrrd | dstrwr;

// SBOARD.NET (127) - dsta_reg : niv
assign dsta_reg[0] = dstanw[0];
assign dsta_reg[1] = dstanw[1];
assign dsta_reg[2] = dstanw[2];
assign dsta_reg[3] = dstanw[3];
assign dsta_reg[4] = dstanw[4];
assign dsta_reg[5] = dstanw[5];

// SBOARD.NET (128) - srca_reg : niv
assign srca_reg[0] = srcanw[0];
assign srca_reg[1] = srcanw[1];
assign srca_reg[2] = srcanw[2];
assign srca_reg[3] = srcanw[3];
assign srca_reg[4] = srcanw[4];
assign srca_reg[5] = srcanw[5];

// SBOARD.NET (129) - dsta_reg_ena : join
assign dsta_reg_ena = dstrrd;

// SBOARD.NET (130) - srca_reg_ena : or2
assign srca_reg_ena = srcrrd | precomp;

// SBOARD.NET (136) - alu_wbaddr : fd2qp
fd2q alu_wbaddr_inst_0
(
	.q /* OUT */ (alu_wbaddr[0]),
	.d /* IN */ (dstanw[0]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q alu_wbaddr_inst_1
(
	.q /* OUT */ (alu_wbaddr[1]),
	.d /* IN */ (dstanw[1]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q alu_wbaddr_inst_2
(
	.q /* OUT */ (alu_wbaddr[2]),
	.d /* IN */ (dstanw[2]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q alu_wbaddr_inst_3
(
	.q /* OUT */ (alu_wbaddr[3]),
	.d /* IN */ (dstanw[3]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q alu_wbaddr_inst_4
(
	.q /* OUT */ (alu_wbaddr[4]),
	.d /* IN */ (dstanw[4]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q alu_wbaddr_inst_5
(
	.q /* OUT */ (alu_wbaddr[5]),
	.d /* IN */ (dstanw[5]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// SBOARD.NET (140) - pendwr : an2
assign pendwr = reswr & exe;

// SBOARD.NET (141) - alu_wback : fd2qp
fd2q alu_wback_inst
(
	.q /* OUT */ (alu_wback),
	.d /* IN */ (pendwr),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// SBOARD.NET (142) - alu_wback\ : iv
assign alu_wback_n = ~alu_wback;

// SBOARD.NET (152) - dp1cmp : cmp6
cmp6 dp1cmp_inst
(
	.equal /* OUT */ (dp1eq),
	.a /* IN */ ({alu_wbaddr[0],alu_wbaddr[1],alu_wbaddr[2],alu_wbaddr[3],alu_wbaddr[4],alu_wbaddr[5]}),
	.b /* IN */ ({dsta_reg[0],dsta_reg[1],dsta_reg[2],dsta_reg[3],dsta_reg[4],dsta_reg[5]})
);

// SBOARD.NET (153) - sp1cmp : cmp6
cmp6 sp1cmp_inst
(
	.equal /* OUT */ (sp1eq),
	.a /* IN */ ({alu_wbaddr[0],alu_wbaddr[1],alu_wbaddr[2],alu_wbaddr[3],alu_wbaddr[4],alu_wbaddr[5]}),
	.b /* IN */ ({srca_reg[0],srca_reg[1],srca_reg[2],srca_reg[3],srca_reg[4],srca_reg[5]})
);

// SBOARD.NET (154) - aluwt : aor2
assign aluwt = (dp1eq & dsta_reg_ena) | (sp1eq & srca_reg_ena);

// SBOARD.NET (156) - aludwait : an2
assign aludwait = aluwt & alu_wback;

// SBOARD.NET (162) - moveai : join
assign mov_wbaddr[0] = dstanw[0];
assign mov_wbaddr[1] = dstanw[1];
assign mov_wbaddr[2] = dstanw[2];
assign mov_wbaddr[3] = dstanw[3];
assign mov_wbaddr[4] = dstanw[4];
assign mov_wbaddr[5] = dstanw[5];

// SBOARD.NET (163) - mov_wback\ : nd2p
assign mov_wback_n = ~(dstwen & exe);

// SBOARD.NET (164) - mov_wback : ivs
assign mov_wback = ~mov_wback_n;

// SBOARD.NET (171) - immasel : an2
assign immasel = immld & exe;

// SBOARD.NET (172) - imm_wbaddr : fdsync6
fdsync6 imm_wbaddr_inst
(
	.q /* OUT */ ({imm_wbaddr[0],imm_wbaddr[1],imm_wbaddr[2],imm_wbaddr[3],imm_wbaddr[4],imm_wbaddr[5]}),
	.d /* IN */ ({dstanw[0],dstanw[1],dstanw[2],dstanw[3],dstanw[4],dstanw[5]}),
	.ld /* IN */ (immasel),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// SBOARD.NET (174) - imm_wback : join
assign imm_wback = immwri;

// SBOARD.NET (175) - imm_wback\ : iv
assign imm_wback_n = ~imm_wback;

// SBOARD.NET (188) - ildwal : an2
assign ildwal = memrw & exe;

// SBOARD.NET (189) - ild_wbaddr : mx2
assign ild_wbaddr[0] = (ildwal) ? dstat[0] : ild_wbaddrl[0];
assign ild_wbaddr[1] = (ildwal) ? dstat[1] : ild_wbaddrl[1];
assign ild_wbaddr[2] = (ildwal) ? dstat[2] : ild_wbaddrl[2];
assign ild_wbaddr[3] = (ildwal) ? dstat[3] : ild_wbaddrl[3];
assign ild_wbaddr[4] = (ildwal) ? dstat[4] : ild_wbaddrl[4];
assign ild_wbaddr[5] = (ildwal) ? dstat[5] : ild_wbaddrl[5];

// SBOARD.NET (190) - ild_wbaddrl : fd2q
fd2q ild_wbaddrl_inst_0
(
	.q /* OUT */ (ild_wbaddrl[0]),
	.d /* IN */ (ild_wbaddr[0]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q ild_wbaddrl_inst_1
(
	.q /* OUT */ (ild_wbaddrl[1]),
	.d /* IN */ (ild_wbaddr[1]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q ild_wbaddrl_inst_2
(
	.q /* OUT */ (ild_wbaddrl[2]),
	.d /* IN */ (ild_wbaddr[2]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q ild_wbaddrl_inst_3
(
	.q /* OUT */ (ild_wbaddrl[3]),
	.d /* IN */ (ild_wbaddr[3]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q ild_wbaddrl_inst_4
(
	.q /* OUT */ (ild_wbaddrl[4]),
	.d /* IN */ (ild_wbaddr[4]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q ild_wbaddrl_inst_5
(
	.q /* OUT */ (ild_wbaddrl[5]),
	.d /* IN */ (ild_wbaddr[5]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// SBOARD.NET (198) - ildwbset\ : nd4
assign ildwbset_n = ~(datack & datwe_n & del_xld_n & mtx_dover_n);

// SBOARD.NET (200) - ildwbset : iv
assign ildwbset = ~ildwbset_n;

// SBOARD.NET (201) - ildwbclr : nd2
assign ildwbclr = ~(ild_wbackh_n & ild_wbacks_n);

// SBOARD.NET (202) - ildwbt : nr2
assign ildwbt = ~(ild_wbackd | ildwbset);

// SBOARD.NET (203) - ild_wbacki : nr2
assign ild_wbacki = ~(ildwbclr | ildwbt);

// SBOARD.NET (204) - ild_wbackd : fd2
fd2 ild_wbackd_inst
(
	.q /* OUT */ (ild_wbackd),
	.qn /* OUT */ (ild_wbackd_n),
	.d /* IN */ (ild_wbacki),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// SBOARD.NET (206) - ild_wback : nd2
assign ild_wback = ~(ildwbset_n & ild_wbackd_n);

// SBOARD.NET (207) - ild_wback\ : iv
assign ild_wback_n = ~ild_wback;

// SBOARD.NET (209) - ilddselt\ : fd1q
fd1q ilddselt_n_inst
(
	.q /* OUT */ (ilddselt_n),
	.d /* IN */ (ildwbset_n),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// SBOARD.NET (210) - ilddsel\ : nivu
assign ilddsel_n = ilddselt_n;

// SBOARD.NET (211) - ild_data : mx2
assign ild_data[0] = (ilddsel_n) ? ild_datad[0] : mem_data[0];
assign ild_data[1] = (ilddsel_n) ? ild_datad[1] : mem_data[1];
assign ild_data[2] = (ilddsel_n) ? ild_datad[2] : mem_data[2];
assign ild_data[3] = (ilddsel_n) ? ild_datad[3] : mem_data[3];
assign ild_data[4] = (ilddsel_n) ? ild_datad[4] : mem_data[4];
assign ild_data[5] = (ilddsel_n) ? ild_datad[5] : mem_data[5];
assign ild_data[6] = (ilddsel_n) ? ild_datad[6] : mem_data[6];
assign ild_data[7] = (ilddsel_n) ? ild_datad[7] : mem_data[7];
assign ild_data[8] = (ilddsel_n) ? ild_datad[8] : mem_data[8];
assign ild_data[9] = (ilddsel_n) ? ild_datad[9] : mem_data[9];
assign ild_data[10] = (ilddsel_n) ? ild_datad[10] : mem_data[10];
assign ild_data[11] = (ilddsel_n) ? ild_datad[11] : mem_data[11];
assign ild_data[12] = (ilddsel_n) ? ild_datad[12] : mem_data[12];
assign ild_data[13] = (ilddsel_n) ? ild_datad[13] : mem_data[13];
assign ild_data[14] = (ilddsel_n) ? ild_datad[14] : mem_data[14];
assign ild_data[15] = (ilddsel_n) ? ild_datad[15] : mem_data[15];
assign ild_data[16] = (ilddsel_n) ? ild_datad[16] : mem_data[16];
assign ild_data[17] = (ilddsel_n) ? ild_datad[17] : mem_data[17];
assign ild_data[18] = (ilddsel_n) ? ild_datad[18] : mem_data[18];
assign ild_data[19] = (ilddsel_n) ? ild_datad[19] : mem_data[19];
assign ild_data[20] = (ilddsel_n) ? ild_datad[20] : mem_data[20];
assign ild_data[21] = (ilddsel_n) ? ild_datad[21] : mem_data[21];
assign ild_data[22] = (ilddsel_n) ? ild_datad[22] : mem_data[22];
assign ild_data[23] = (ilddsel_n) ? ild_datad[23] : mem_data[23];
assign ild_data[24] = (ilddsel_n) ? ild_datad[24] : mem_data[24];
assign ild_data[25] = (ilddsel_n) ? ild_datad[25] : mem_data[25];
assign ild_data[26] = (ilddsel_n) ? ild_datad[26] : mem_data[26];
assign ild_data[27] = (ilddsel_n) ? ild_datad[27] : mem_data[27];
assign ild_data[28] = (ilddsel_n) ? ild_datad[28] : mem_data[28];
assign ild_data[29] = (ilddsel_n) ? ild_datad[29] : mem_data[29];
assign ild_data[30] = (ilddsel_n) ? ild_datad[30] : mem_data[30];
assign ild_data[31] = (ilddsel_n) ? ild_datad[31] : mem_data[31];

// SBOARD.NET (212) - ild_datad : fd1q
fd1q ild_datad_inst_0
(
	.q /* OUT */ (ild_datad[0]),
	.d /* IN */ (ild_data[0]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q ild_datad_inst_1
(
	.q /* OUT */ (ild_datad[1]),
	.d /* IN */ (ild_data[1]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q ild_datad_inst_2
(
	.q /* OUT */ (ild_datad[2]),
	.d /* IN */ (ild_data[2]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q ild_datad_inst_3
(
	.q /* OUT */ (ild_datad[3]),
	.d /* IN */ (ild_data[3]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q ild_datad_inst_4
(
	.q /* OUT */ (ild_datad[4]),
	.d /* IN */ (ild_data[4]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q ild_datad_inst_5
(
	.q /* OUT */ (ild_datad[5]),
	.d /* IN */ (ild_data[5]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q ild_datad_inst_6
(
	.q /* OUT */ (ild_datad[6]),
	.d /* IN */ (ild_data[6]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q ild_datad_inst_7
(
	.q /* OUT */ (ild_datad[7]),
	.d /* IN */ (ild_data[7]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q ild_datad_inst_8
(
	.q /* OUT */ (ild_datad[8]),
	.d /* IN */ (ild_data[8]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q ild_datad_inst_9
(
	.q /* OUT */ (ild_datad[9]),
	.d /* IN */ (ild_data[9]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q ild_datad_inst_10
(
	.q /* OUT */ (ild_datad[10]),
	.d /* IN */ (ild_data[10]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q ild_datad_inst_11
(
	.q /* OUT */ (ild_datad[11]),
	.d /* IN */ (ild_data[11]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q ild_datad_inst_12
(
	.q /* OUT */ (ild_datad[12]),
	.d /* IN */ (ild_data[12]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q ild_datad_inst_13
(
	.q /* OUT */ (ild_datad[13]),
	.d /* IN */ (ild_data[13]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q ild_datad_inst_14
(
	.q /* OUT */ (ild_datad[14]),
	.d /* IN */ (ild_data[14]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q ild_datad_inst_15
(
	.q /* OUT */ (ild_datad[15]),
	.d /* IN */ (ild_data[15]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q ild_datad_inst_16
(
	.q /* OUT */ (ild_datad[16]),
	.d /* IN */ (ild_data[16]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q ild_datad_inst_17
(
	.q /* OUT */ (ild_datad[17]),
	.d /* IN */ (ild_data[17]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q ild_datad_inst_18
(
	.q /* OUT */ (ild_datad[18]),
	.d /* IN */ (ild_data[18]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q ild_datad_inst_19
(
	.q /* OUT */ (ild_datad[19]),
	.d /* IN */ (ild_data[19]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q ild_datad_inst_20
(
	.q /* OUT */ (ild_datad[20]),
	.d /* IN */ (ild_data[20]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q ild_datad_inst_21
(
	.q /* OUT */ (ild_datad[21]),
	.d /* IN */ (ild_data[21]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q ild_datad_inst_22
(
	.q /* OUT */ (ild_datad[22]),
	.d /* IN */ (ild_data[22]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q ild_datad_inst_23
(
	.q /* OUT */ (ild_datad[23]),
	.d /* IN */ (ild_data[23]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q ild_datad_inst_24
(
	.q /* OUT */ (ild_datad[24]),
	.d /* IN */ (ild_data[24]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q ild_datad_inst_25
(
	.q /* OUT */ (ild_datad[25]),
	.d /* IN */ (ild_data[25]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q ild_datad_inst_26
(
	.q /* OUT */ (ild_datad[26]),
	.d /* IN */ (ild_data[26]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q ild_datad_inst_27
(
	.q /* OUT */ (ild_datad[27]),
	.d /* IN */ (ild_data[27]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q ild_datad_inst_28
(
	.q /* OUT */ (ild_datad[28]),
	.d /* IN */ (ild_data[28]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q ild_datad_inst_29
(
	.q /* OUT */ (ild_datad[29]),
	.d /* IN */ (ild_data[29]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q ild_datad_inst_30
(
	.q /* OUT */ (ild_datad[30]),
	.d /* IN */ (ild_data[30]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q ild_datad_inst_31
(
	.q /* OUT */ (ild_datad[31]),
	.d /* IN */ (ild_data[31]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// SBOARD.NET (216) - idlet[0] : nd2
assign idlet_0 = ~(idle & memrw_n);

// SBOARD.NET (217) - idlet[1] : nd2
assign idlet_1 = ~(idle & exe_n);

// SBOARD.NET (218) - idlet[2] : nd2
assign idlet_2 = ~(loading & datack);

// SBOARD.NET (219) - idlei : nd3
assign idlei = ~(idlet_0 & idlet_1 & idlet_2);

// SBOARD.NET (220) - idle : fd4q
fd4q idle_inst
(
	.q /* OUT */ (idle),
	.d /* IN */ (idlei),
	.cp /* IN */ (clk),
	.sd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// SBOARD.NET (221) - idle\ : iv
assign idle_n = ~idle;

// SBOARD.NET (223) - comp1i : an4
assign comp1i = idle & memrw & precomp & exe;

// SBOARD.NET (224) - comp1 : fd2q
fd2q comp1_inst
(
	.q /* OUT */ (comp1),
	.d /* IN */ (comp1i),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// SBOARD.NET (226) - comp2i : join
assign comp2i = comp1;

// SBOARD.NET (227) - comp2 : fd2q
fd2q comp2_inst
(
	.q /* OUT */ (comp2),
	.d /* IN */ (comp2i),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// SBOARD.NET (228) - comp2\ : iv
assign comp2_n = ~comp2;

// SBOARD.NET (230) - loadingt[0] : nd4
assign loadingt_0 = ~(idle & memrw & precomp_n & exe);

// SBOARD.NET (231) - loadingt[1] : iv
assign loadingt_1 = ~comp2;

// SBOARD.NET (232) - loadingt[2] : nd2
assign loadingt_2 = ~(loading & datack_n);

// SBOARD.NET (233) - loadingi : nd3
assign loadingi = ~(loadingt_0 & loadingt_1 & loadingt_2);

// SBOARD.NET (234) - loading : fd2q
fd2q loading_inst
(
	.q /* OUT */ (loading),
	.d /* IN */ (loadingi),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// SBOARD.NET (239) - dlacmp : cmp6
cmp6 dlacmp_inst
(
	.equal /* OUT */ (dlaeq),
	.a /* IN */ ({ild_wbaddrl[0],ild_wbaddrl[1],ild_wbaddrl[2],ild_wbaddrl[3],ild_wbaddrl[4],ild_wbaddrl[5]}),
	.b /* IN */ ({dsta_reg[0],dsta_reg[1],dsta_reg[2],dsta_reg[3],dsta_reg[4],dsta_reg[5]})
);

// SBOARD.NET (240) - slacmp : cmp6
cmp6 slacmp_inst
(
	.equal /* OUT */ (slaeq),
	.a /* IN */ ({ild_wbaddrl[0],ild_wbaddrl[1],ild_wbaddrl[2],ild_wbaddrl[3],ild_wbaddrl[4],ild_wbaddrl[5]}),
	.b /* IN */ ({srca_reg[0],srca_reg[1],srca_reg[2],srca_reg[3],srca_reg[4],srca_reg[5]})
);

// SBOARD.NET (241) - ldwaitt0 : aor2
assign ldwaitt_0 = (dlaeq & dsta_reg_ena) | (slaeq & srca_reg_ena);

// SBOARD.NET (243) - ldwaitt1 : nd2
assign ldwaitt_1 = ~(ldwaitt_0 & idle_n);

// SBOARD.NET (244) - ldwaitt2 : nd2
assign ldwaitt_2 = ~(idle_n & memrw);

// SBOARD.NET (245) - ldwait : nd2
assign ldwait = ~(ldwaitt_1 & ldwaitt_2);

// SBOARD.NET (254) - drqt[0] : nd4
assign drqt_0 = ~(idle & exe & precomp_n & memrw);

// SBOARD.NET (255) - drqt[1] : nd2
assign drqt_1 = ~(drqt_0 & comp2_n);

// SBOARD.NET (256) - drqt[2] : cp_latch
cp_latch drqt_index_2_inst
(
	.q /* OUT */ (drqt_2),
	.set /* IN */ (drqt_1),
	.clear /* IN */ (datack),
	.clock /* IN */ (clk),
	.reset_n /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// SBOARD.NET (258) - datreq : oan1
assign sdatreq = (drqt_1 | drqt_2) & datack_n;

// SBOARD.NET (264) - srcaddrldi : an4
assign srcaddrldi = idle & exe & precomp_n & memrw;

// SBOARD.NET (271) - resaddrldi : join
assign resaddrldi = comp1;

// SBOARD.NET (284) - ld1t0 : nd2
assign ld1t_0 = ~(del_xld & ldidle);

// SBOARD.NET (285) - ld1t1 : nd3
assign ld1t_1 = ~(oneld & del_xld_n & xldd_sel_n);

// SBOARD.NET (286) - ld1t2 : nd3
assign ld1t_2 = ~(oneld & del_xld & xldd_sel);

// SBOARD.NET (287) - ld1t3 : nd2
assign ld1t_3 = ~(twold & xldd_sel);

// SBOARD.NET (288) - ld1t4 : nd4
assign oneldi = ~(ld1t_0 & ld1t_1 & ld1t_2 & ld1t_3);

// SBOARD.NET (289) - oneld : fd2qp
fd2q oneld_inst
(
	.q /* OUT */ (oneld),
	.d /* IN */ (oneldi),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// SBOARD.NET (291) - ld2t0 : nd3
assign ld2t_0 = ~(oneld & del_xld & xldd_sel_n);

// SBOARD.NET (292) - ld2t1 : nd2
assign ld2t_1 = ~(twold & xldd_sel_n);

// SBOARD.NET (293) - ld2t2 : nd2
assign twoldi = ~(ld2t_0 & ld2t_1);

// SBOARD.NET (294) - twold : fd2qp
fd2q twold_inst
(
	.q /* OUT */ (twold),
	.d /* IN */ (twoldi),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// SBOARD.NET (296) - ldidle : nr2p
assign ldidle = ~(twold | oneld);

// SBOARD.NET (297) - ldidle\ : iv
assign ldidle_n = ~ldidle;

// SBOARD.NET (314) - xlddt0 : nd2
assign xlddt_0 = ~(del_xld & ldidle);

// SBOARD.NET (315) - xlddt1 : nd3
assign xlddt_1 = ~(del_xld & oneld & xldd_sel);

// SBOARD.NET (316) - xlddt2 : nd2p
assign xlddt_2 = ~(xlddt_0 & xlddt_1);

// SBOARD.NET (317) - xlddt3 : an2p
assign xlddt_3 = xldd_sel & twold;

// SBOARD.NET (318) - xlddsti : mx4
mx4 xlddsti_inst_0
(
	.z /* OUT */ (xld_wbaddr[0]),
	.a0 /* IN */ (xlddst[0]),
	.a1 /* IN */ (ild_wbaddr[0]),
	.a2 /* IN */ (xlddst2[0]),
	.a3 /* IN */ (xlddst2[0]),
	.s0 /* IN */ (xlddt_2),
	.s1 /* IN */ (xlddt_3)
);
mx4 xlddsti_inst_1
(
	.z /* OUT */ (xld_wbaddr[1]),
	.a0 /* IN */ (xlddst[1]),
	.a1 /* IN */ (ild_wbaddr[1]),
	.a2 /* IN */ (xlddst2[1]),
	.a3 /* IN */ (xlddst2[1]),
	.s0 /* IN */ (xlddt_2),
	.s1 /* IN */ (xlddt_3)
);
mx4 xlddsti_inst_2
(
	.z /* OUT */ (xld_wbaddr[2]),
	.a0 /* IN */ (xlddst[2]),
	.a1 /* IN */ (ild_wbaddr[2]),
	.a2 /* IN */ (xlddst2[2]),
	.a3 /* IN */ (xlddst2[2]),
	.s0 /* IN */ (xlddt_2),
	.s1 /* IN */ (xlddt_3)
);
mx4 xlddsti_inst_3
(
	.z /* OUT */ (xld_wbaddr[3]),
	.a0 /* IN */ (xlddst[3]),
	.a1 /* IN */ (ild_wbaddr[3]),
	.a2 /* IN */ (xlddst2[3]),
	.a3 /* IN */ (xlddst2[3]),
	.s0 /* IN */ (xlddt_2),
	.s1 /* IN */ (xlddt_3)
);
mx4 xlddsti_inst_4
(
	.z /* OUT */ (xld_wbaddr[4]),
	.a0 /* IN */ (xlddst[4]),
	.a1 /* IN */ (ild_wbaddr[4]),
	.a2 /* IN */ (xlddst2[4]),
	.a3 /* IN */ (xlddst2[4]),
	.s0 /* IN */ (xlddt_2),
	.s1 /* IN */ (xlddt_3)
);
mx4 xlddsti_inst_5
(
	.z /* OUT */ (xld_wbaddr[5]),
	.a0 /* IN */ (xlddst[5]),
	.a1 /* IN */ (ild_wbaddr[5]),
	.a2 /* IN */ (xlddst2[5]),
	.a3 /* IN */ (xlddst2[5]),
	.s0 /* IN */ (xlddt_2),
	.s1 /* IN */ (xlddt_3)
);

// SBOARD.NET (320) - xlddst : fd2q
fd2q xlddst_inst_0
(
	.q /* OUT */ (xlddst[0]),
	.d /* IN */ (xld_wbaddr[0]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q xlddst_inst_1
(
	.q /* OUT */ (xlddst[1]),
	.d /* IN */ (xld_wbaddr[1]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q xlddst_inst_2
(
	.q /* OUT */ (xlddst[2]),
	.d /* IN */ (xld_wbaddr[2]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q xlddst_inst_3
(
	.q /* OUT */ (xlddst[3]),
	.d /* IN */ (xld_wbaddr[3]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q xlddst_inst_4
(
	.q /* OUT */ (xlddst[4]),
	.d /* IN */ (xld_wbaddr[4]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q xlddst_inst_5
(
	.q /* OUT */ (xlddst[5]),
	.d /* IN */ (xld_wbaddr[5]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// SBOARD.NET (322) - xlddst2 : fdsyncr6
fdsyncr6 xlddst2_inst
(
	.q /* OUT */ ({xlddst2[0],xlddst2[1],xlddst2[2],xlddst2[3],xlddst2[4],xlddst2[5]}),
	.d /* IN */ ({ild_wbaddr[0],ild_wbaddr[1],ild_wbaddr[2],ild_wbaddr[3],ild_wbaddr[4],ild_wbaddr[5]}),
	.ld /* IN */ (del_xld),
	.clk /* IN */ (clk),
	.rst_n /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// SBOARD.NET (330) - xlddmatch : cmp6
cmp6 xlddmatch_inst
(
	.equal /* OUT */ (xlddeq),
	.a /* IN */ ({dsta_reg[0],dsta_reg[1],dsta_reg[2],dsta_reg[3],dsta_reg[4],dsta_reg[5]}),
	.b /* IN */ ({xlddst[0],xlddst[1],xlddst[2],xlddst[3],xlddst[4],xlddst[5]})
);

// SBOARD.NET (331) - xldsmatch : cmp6
cmp6 xldsmatch_inst
(
	.equal /* OUT */ (xldseq),
	.a /* IN */ ({srca_reg[0],srca_reg[1],srca_reg[2],srca_reg[3],srca_reg[4],srca_reg[5]}),
	.b /* IN */ ({xlddst[0],xlddst[1],xlddst[2],xlddst[3],xlddst[4],xlddst[5]})
);

// SBOARD.NET (332) - xldeq : aor2
assign xldeq = (xlddeq & dsta_reg_ena) | (xldseq & srca_reg_ena);

// SBOARD.NET (334) - xld2dmatch : cmp6
cmp6 xld2dmatch_inst
(
	.equal /* OUT */ (xld2deq),
	.a /* IN */ ({dsta_reg[0],dsta_reg[1],dsta_reg[2],dsta_reg[3],dsta_reg[4],dsta_reg[5]}),
	.b /* IN */ ({xlddst2[0],xlddst2[1],xlddst2[2],xlddst2[3],xlddst2[4],xlddst2[5]})
);

// SBOARD.NET (335) - xld2smatch : cmp6
cmp6 xld2smatch_inst
(
	.equal /* OUT */ (xld2seq),
	.a /* IN */ ({srca_reg[0],srca_reg[1],srca_reg[2],srca_reg[3],srca_reg[4],srca_reg[5]}),
	.b /* IN */ ({xlddst2[0],xlddst2[1],xlddst2[2],xlddst2[3],xlddst2[4],xlddst2[5]})
);

// SBOARD.NET (336) - xld2eq : aor2
assign xld2eq = (xld2deq & dsta_reg_ena) | (xld2seq & srca_reg_ena);

// SBOARD.NET (339) - xlddwait : aor2
assign xlddwait = (ldidle_n & xldeq) | (twold & xld2eq);

// SBOARD.NET (343) - xld_data : fdsync32
fdsync32 xld_data_inst
(
	.q /* OUT */ ({xld_data[0],xld_data[1],xld_data[2],xld_data[3],xld_data[4],xld_data[5],xld_data[6],xld_data[7],xld_data[8],xld_data[9],xld_data[10],xld_data[11],xld_data[12],xld_data[13],xld_data[14],xld_data[15],xld_data[16],xld_data[17],xld_data[18],xld_data[19],xld_data[20],xld_data[21],xld_data[22],xld_data[23],xld_data[24],xld_data[25],xld_data[26],xld_data[27],xld_data[28],xld_data[29],xld_data[30],xld_data[31]}),
	.d /* IN */ ({load_data[0],load_data[1],load_data[2],load_data[3],load_data[4],load_data[5],load_data[6],load_data[7],load_data[8],load_data[9],load_data[10],load_data[11],load_data[12],load_data[13],load_data[14],load_data[15],load_data[16],load_data[17],load_data[18],load_data[19],load_data[20],load_data[21],load_data[22],load_data[23],load_data[24],load_data[25],load_data[26],load_data[27],load_data[28],load_data[29],load_data[30],load_data[31]}),
	.ld /* IN */ (xld_ready),
	.clk /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// SBOARD.NET (353) - mbsywt0 : or2
assign mbsywt_0 = gate_active | twoldi;

// SBOARD.NET (354) - mbsywt1 : nd2
assign mbsywt_1 = ~(mbsywt_0 & memrw);

// SBOARD.NET (355) - mbsywt2 : or2
assign mbsywt_2 = oneldi | twoldi;

// SBOARD.NET (356) - mbsywt3 : nd2
assign mbsywt_3 = ~(mbsywt_2 & datwe_raw);

// SBOARD.NET (357) - mbusywait : nd2
assign mbusywait = ~(mbsywt_1 & mbsywt_3);

// SBOARD.NET (362) - xwbclr : nd2
assign xwbclr = ~(xld_wbackh_n & xld_wbacks_n);

// SBOARD.NET (363) - xwbat0 : nr2
assign xwbat_0 = ~(xld_wbackl | xld_ready);

// SBOARD.NET (364) - xwbat1 : nr2
assign xwbat_1 = ~(xwbclr | xwbat_0);

// SBOARD.NET (365) - xldpend : fd2q
fd2q xldpend_inst
(
	.q /* OUT */ (xld_wbackl),
	.d /* IN */ (xwbat_1),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// SBOARD.NET (366) - xld_wback : or2
assign xld_wback = xld_wbackl | xld_ready;

// SBOARD.NET (367) - xld_wback\ : iv
assign xld_wback_n = ~xld_wback;

// SBOARD.NET (375) - div_active : fd1q
fd1q div_active_inst
(
	.q /* OUT */ (div_active),
	.d /* IN */ (div_activei),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// SBOARD.NET (376) - div_activei\ : iv
assign div_activei_n = ~div_activei;

// SBOARD.NET (378) - divdst : fdsyncr6
fdsyncr6 divdst_inst
(
	.q /* OUT */ ({div_wbaddr[0],div_wbaddr[1],div_wbaddr[2],div_wbaddr[3],div_wbaddr[4],div_wbaddr[5]}),
	.d /* IN */ ({dstanw[0],dstanw[1],dstanw[2],dstanw[3],dstanw[4],dstanw[5]}),
	.ld /* IN */ (div_start),
	.clk /* IN */ (clk),
	.rst_n /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// SBOARD.NET (380) - divdmatch : cmp6
cmp6 divdmatch_inst
(
	.equal /* OUT */ (divdeq),
	.a /* IN */ ({dsta_reg[0],dsta_reg[1],dsta_reg[2],dsta_reg[3],dsta_reg[4],dsta_reg[5]}),
	.b /* IN */ ({div_wbaddr[0],div_wbaddr[1],div_wbaddr[2],div_wbaddr[3],div_wbaddr[4],div_wbaddr[5]})
);

// SBOARD.NET (381) - divsmatch : cmp6
cmp6 divsmatch_inst
(
	.equal /* OUT */ (divseq),
	.a /* IN */ ({srca_reg[0],srca_reg[1],srca_reg[2],srca_reg[3],srca_reg[4],srca_reg[5]}),
	.b /* IN */ ({div_wbaddr[0],div_wbaddr[1],div_wbaddr[2],div_wbaddr[3],div_wbaddr[4],div_wbaddr[5]})
);

// SBOARD.NET (382) - diveq : aor2
assign diveq = (divdeq & dsta_reg_ena) | (divseq & srca_reg_ena);

// SBOARD.NET (384) - divdwait : an2
assign divdwait = div_active & diveq;

// SBOARD.NET (390) - dwbset : an2
assign dwbset = div_active & div_activei_n;

// SBOARD.NET (391) - dwbclr : nd2
assign dwbclr = ~(div_wbackh_n & div_wbacks_n);

// SBOARD.NET (392) - dwbat0 : nr2
assign dwbat_0 = ~(div_wbackl | dwbset);

// SBOARD.NET (393) - dwbat1 : nr2
assign dwbat_1 = ~(dwbat_0 | dwbclr);

// SBOARD.NET (394) - dwbat2 : fd2q
fd2q dwbat2_inst
(
	.q /* OUT */ (div_wbackl),
	.d /* IN */ (dwbat_1),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// SBOARD.NET (395) - div_wback : or2
assign div_wback = div_wbackl | dwbset;

// SBOARD.NET (396) - div_wback\ : iv
assign div_wback_n = ~div_wback;

// SBOARD.NET (402) - diviwait : oan1
assign diviwait = (div_active | div_wback) & div_instr;

// SBOARD.NET (411) - flag_pend : fd1q
fd1q flag_pend_inst
(
	.q /* OUT */ (flag_pend),
	.d /* IN */ (flagld),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// SBOARD.NET (412) - flagwait : an2
assign flagwait = flag_pend & flag_depend;

// SBOARD.NET (446) - wbacki : nd6
assign wbacki = ~(alu_wback_n & mov_wback_n & imm_wback_n & div_wback_n & xld_wback_n & ild_wback_n);

// SBOARD.NET (449) - wback : fd1q
fd1q wback_inst
(
	.q /* OUT */ (wback),
	.d /* IN */ (wbacki),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// SBOARD.NET (453) - alu_wbackh : iv
assign alu_wbackh_n = ~alu_wback;

// SBOARD.NET (454) - mov_wbackh : nd2
assign mov_wbackh_n = ~(mov_wback & alu_wback_n);

// SBOARD.NET (455) - imm_wbackh : nd3
assign imm_wbackh_n = ~(imm_wback & mov_wback_n & alu_wback_n);

// SBOARD.NET (457) - ild_wbackh : nd4p
assign ild_wbackh_n = ~(ild_wback & imm_wback_n & mov_wback_n & alu_wback_n);

// SBOARD.NET (459) - xld_wbackh : nd5
assign xld_wbackh_n = ~(xld_wback & ild_wback_n & imm_wback_n & mov_wback_n & alu_wback_n);

// SBOARD.NET (461) - div_wbackh : nd6
assign div_wbackh_n = ~(div_wback & xld_wback_n & ild_wback_n & imm_wback_n & mov_wback_n & alu_wback_n);

// SBOARD.NET (474) - mov_wbacks : nd2
assign mov_wbacks_n = ~(mov_wback & alu_wback);

// SBOARD.NET (477) - imm_wbackst : nd2
assign imm_wbackst = ~(mov_wbackh_n & alu_wbackh_n);

// SBOARD.NET (478) - imm_wbacks : nd2
assign imm_wbacks_n = ~(imm_wback & imm_wbackst);

// SBOARD.NET (482) - ild_wbackst : nd3
assign ild_wbackst = ~(imm_wbackh_n & mov_wbackh_n & alu_wbackh_n);

// SBOARD.NET (484) - ild_wbacks : nd4p
assign ild_wbacks_n = ~(ild_wback & ild_wbackst & imm_wbacks_n & mov_wbacks_n);

// SBOARD.NET (486) - xld_wbackst : nd4
assign xld_wbackst = ~(ild_wbackh_n & imm_wbackh_n & mov_wbackh_n & alu_wbackh_n);

// SBOARD.NET (488) - xld_wbacks : nd5
assign xld_wbacks_n = ~(xld_wback & xld_wbackst & imm_wback_n & ild_wbacks_n & mov_wbacks_n);

// SBOARD.NET (490) - div_wbackst : nd5
assign div_wbackst = ~(xld_wbackh_n & ild_wbackh_n & imm_wbackh_n & mov_wbackh_n & alu_wbackh_n);

// SBOARD.NET (492) - div_wbacks : nd6
assign div_wbacks_n = ~(div_wback & div_wbackst & xld_wback_n & imm_wback_n & ild_wbacks_n & mov_wbacks_n);

// SBOARD.NET (498) - mult_wbacki : nd5
assign mult_wbacki = ~(mov_wbacks_n & imm_wbacks_n & ild_wbacks_n & xld_wbacks_n & div_wbacks_n);

// SBOARD.NET (500) - mult_wback : fd1q
fd1q mult_wback_inst
(
	.q /* OUT */ (mult_wback),
	.d /* IN */ (mult_wbacki),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// SBOARD.NET (501) - mult_wback\ : iv
assign mult_wback_n = ~mult_wback;

// SBOARD.NET (505) - hasel[0] : nd3
assign hasel_0 = ~(mov_wbackh_n & ild_wbackh_n & div_wbackh_n);

// SBOARD.NET (507) - hasel[1] : nd2
assign hasel_1 = ~(imm_wbackh_n & ild_wbackh_n);

// SBOARD.NET (508) - hasel[2] : nd2
assign hasel_2 = ~(xld_wbackh_n & div_wbackh_n);

// SBOARD.NET (509) - hwbaddr : mx8p
mx8 hwbaddr_inst_0
(
	.z /* OUT */ (hwbaddr[0]),
	.a0 /* IN */ (alu_wbaddr[0]),
	.a1 /* IN */ (mov_wbaddr[0]),
	.a2 /* IN */ (imm_wbaddr[0]),
	.a3 /* IN */ (ild_wbaddr[0]),
	.a4 /* IN */ (xld_wbaddr[0]),
	.a5 /* IN */ (div_wbaddr[0]),
	.a6 /* IN */ (zero6[0]),
	.a7 /* IN */ (zero6[0]),
	.s0 /* IN */ (hasel_0),
	.s1 /* IN */ (hasel_1),
	.s2 /* IN */ (hasel_2)
);
mx8 hwbaddr_inst_1
(
	.z /* OUT */ (hwbaddr[1]),
	.a0 /* IN */ (alu_wbaddr[1]),
	.a1 /* IN */ (mov_wbaddr[1]),
	.a2 /* IN */ (imm_wbaddr[1]),
	.a3 /* IN */ (ild_wbaddr[1]),
	.a4 /* IN */ (xld_wbaddr[1]),
	.a5 /* IN */ (div_wbaddr[1]),
	.a6 /* IN */ (zero6[1]),
	.a7 /* IN */ (zero6[1]),
	.s0 /* IN */ (hasel_0),
	.s1 /* IN */ (hasel_1),
	.s2 /* IN */ (hasel_2)
);
mx8 hwbaddr_inst_2
(
	.z /* OUT */ (hwbaddr[2]),
	.a0 /* IN */ (alu_wbaddr[2]),
	.a1 /* IN */ (mov_wbaddr[2]),
	.a2 /* IN */ (imm_wbaddr[2]),
	.a3 /* IN */ (ild_wbaddr[2]),
	.a4 /* IN */ (xld_wbaddr[2]),
	.a5 /* IN */ (div_wbaddr[2]),
	.a6 /* IN */ (zero6[2]),
	.a7 /* IN */ (zero6[2]),
	.s0 /* IN */ (hasel_0),
	.s1 /* IN */ (hasel_1),
	.s2 /* IN */ (hasel_2)
);
mx8 hwbaddr_inst_3
(
	.z /* OUT */ (hwbaddr[3]),
	.a0 /* IN */ (alu_wbaddr[3]),
	.a1 /* IN */ (mov_wbaddr[3]),
	.a2 /* IN */ (imm_wbaddr[3]),
	.a3 /* IN */ (ild_wbaddr[3]),
	.a4 /* IN */ (xld_wbaddr[3]),
	.a5 /* IN */ (div_wbaddr[3]),
	.a6 /* IN */ (zero6[3]),
	.a7 /* IN */ (zero6[3]),
	.s0 /* IN */ (hasel_0),
	.s1 /* IN */ (hasel_1),
	.s2 /* IN */ (hasel_2)
);
mx8 hwbaddr_inst_4
(
	.z /* OUT */ (hwbaddr[4]),
	.a0 /* IN */ (alu_wbaddr[4]),
	.a1 /* IN */ (mov_wbaddr[4]),
	.a2 /* IN */ (imm_wbaddr[4]),
	.a3 /* IN */ (ild_wbaddr[4]),
	.a4 /* IN */ (xld_wbaddr[4]),
	.a5 /* IN */ (div_wbaddr[4]),
	.a6 /* IN */ (zero6[4]),
	.a7 /* IN */ (zero6[4]),
	.s0 /* IN */ (hasel_0),
	.s1 /* IN */ (hasel_1),
	.s2 /* IN */ (hasel_2)
);
mx8 hwbaddr_inst_5
(
	.z /* OUT */ (hwbaddr[5]),
	.a0 /* IN */ (alu_wbaddr[5]),
	.a1 /* IN */ (mov_wbaddr[5]),
	.a2 /* IN */ (imm_wbaddr[5]),
	.a3 /* IN */ (ild_wbaddr[5]),
	.a4 /* IN */ (xld_wbaddr[5]),
	.a5 /* IN */ (div_wbaddr[5]),
	.a6 /* IN */ (zero6[5]),
	.a7 /* IN */ (zero6[5]),
	.s0 /* IN */ (hasel_0),
	.s1 /* IN */ (hasel_1),
	.s2 /* IN */ (hasel_2)
);

// SBOARD.NET (515) - sasel[0] : nd3
assign sasel_0 = ~(mov_wbacks_n & ild_wbacks_n & div_wbacks_n);

// SBOARD.NET (517) - sasel[1] : nd2
assign sasel_1 = ~(imm_wbacks_n & ild_wbacks_n);

// SBOARD.NET (518) - sasel[2] : nd2
assign sasel_2 = ~(xld_wbacks_n & div_wbacks_n);

// SBOARD.NET (519) - swbaddr : mx8
mx8 swbaddr_inst_0
(
	.z /* OUT */ (swbaddr[0]),
	.a0 /* IN */ (alu_wbaddr[0]),
	.a1 /* IN */ (mov_wbaddr[0]),
	.a2 /* IN */ (imm_wbaddr[0]),
	.a3 /* IN */ (ild_wbaddr[0]),
	.a4 /* IN */ (xld_wbaddr[0]),
	.a5 /* IN */ (div_wbaddr[0]),
	.a6 /* IN */ (zero6[0]),
	.a7 /* IN */ (zero6[0]),
	.s0 /* IN */ (sasel_0),
	.s1 /* IN */ (sasel_1),
	.s2 /* IN */ (sasel_2)
);
mx8 swbaddr_inst_1
(
	.z /* OUT */ (swbaddr[1]),
	.a0 /* IN */ (alu_wbaddr[1]),
	.a1 /* IN */ (mov_wbaddr[1]),
	.a2 /* IN */ (imm_wbaddr[1]),
	.a3 /* IN */ (ild_wbaddr[1]),
	.a4 /* IN */ (xld_wbaddr[1]),
	.a5 /* IN */ (div_wbaddr[1]),
	.a6 /* IN */ (zero6[1]),
	.a7 /* IN */ (zero6[1]),
	.s0 /* IN */ (sasel_0),
	.s1 /* IN */ (sasel_1),
	.s2 /* IN */ (sasel_2)
);
mx8 swbaddr_inst_2
(
	.z /* OUT */ (swbaddr[2]),
	.a0 /* IN */ (alu_wbaddr[2]),
	.a1 /* IN */ (mov_wbaddr[2]),
	.a2 /* IN */ (imm_wbaddr[2]),
	.a3 /* IN */ (ild_wbaddr[2]),
	.a4 /* IN */ (xld_wbaddr[2]),
	.a5 /* IN */ (div_wbaddr[2]),
	.a6 /* IN */ (zero6[2]),
	.a7 /* IN */ (zero6[2]),
	.s0 /* IN */ (sasel_0),
	.s1 /* IN */ (sasel_1),
	.s2 /* IN */ (sasel_2)
);
mx8 swbaddr_inst_3
(
	.z /* OUT */ (swbaddr[3]),
	.a0 /* IN */ (alu_wbaddr[3]),
	.a1 /* IN */ (mov_wbaddr[3]),
	.a2 /* IN */ (imm_wbaddr[3]),
	.a3 /* IN */ (ild_wbaddr[3]),
	.a4 /* IN */ (xld_wbaddr[3]),
	.a5 /* IN */ (div_wbaddr[3]),
	.a6 /* IN */ (zero6[3]),
	.a7 /* IN */ (zero6[3]),
	.s0 /* IN */ (sasel_0),
	.s1 /* IN */ (sasel_1),
	.s2 /* IN */ (sasel_2)
);
mx8 swbaddr_inst_4
(
	.z /* OUT */ (swbaddr[4]),
	.a0 /* IN */ (alu_wbaddr[4]),
	.a1 /* IN */ (mov_wbaddr[4]),
	.a2 /* IN */ (imm_wbaddr[4]),
	.a3 /* IN */ (ild_wbaddr[4]),
	.a4 /* IN */ (xld_wbaddr[4]),
	.a5 /* IN */ (div_wbaddr[4]),
	.a6 /* IN */ (zero6[4]),
	.a7 /* IN */ (zero6[4]),
	.s0 /* IN */ (sasel_0),
	.s1 /* IN */ (sasel_1),
	.s2 /* IN */ (sasel_2)
);
mx8 swbaddr_inst_5
(
	.z /* OUT */ (swbaddr[5]),
	.a0 /* IN */ (alu_wbaddr[5]),
	.a1 /* IN */ (mov_wbaddr[5]),
	.a2 /* IN */ (imm_wbaddr[5]),
	.a3 /* IN */ (ild_wbaddr[5]),
	.a4 /* IN */ (xld_wbaddr[5]),
	.a5 /* IN */ (div_wbaddr[5]),
	.a6 /* IN */ (zero6[5]),
	.a7 /* IN */ (zero6[5]),
	.s0 /* IN */ (sasel_0),
	.s1 /* IN */ (sasel_1),
	.s2 /* IN */ (sasel_2)
);

// SBOARD.NET (531) - wbdcmpt[0-5] : enp
assign wbdcmpt_0 = ~(hwbaddr[0] ^ dstanwi[0]);
assign wbdcmpt_1 = ~(hwbaddr[1] ^ dstanwi[1]);
assign wbdcmpt_2 = ~(hwbaddr[2] ^ dstanwi[2]);
assign wbdcmpt_3 = ~(hwbaddr[3] ^ dstanwi[3]);
assign wbdcmpt_4 = ~(hwbaddr[4] ^ dstanwi[4]);
assign wbdcmpt_5 = ~(hwbaddr[5] ^ dstanwi[5]);

// SBOARD.NET (532) - wbdeqi\ : nd6
assign wbdeqi_n = ~(wbdcmpt_0 & wbdcmpt_1 & wbdcmpt_2 & wbdcmpt_3 & wbdcmpt_4 & wbdcmpt_5);

// SBOARD.NET (533) - wbdeqit : an4
assign wbdeqit = wbdcmpt_0 & wbdcmpt_1 & wbdcmpt_2 & wbdcmpt_3;

// SBOARD.NET (534) - wbdeqi : an3
assign wbdeqi = wbdeqit & wbdcmpt_4 & wbdcmpt_5;

// SBOARD.NET (536) - wbdeq\ : fd1q
fd1q wbdeq_n_inst
(
	.q /* OUT */ (wbdeq_n),
	.d /* IN */ (wbdeqi_n),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// SBOARD.NET (537) - wbscmp : cmp6i
cmp6i wbscmp_inst
(
	.equal_n /* OUT */ (wbseqi_n),
	.a /* IN */ ({hwbaddr[0],hwbaddr[1],hwbaddr[2],hwbaddr[3],hwbaddr[4],hwbaddr[5]}),
	.b /* IN */ ({srcanwi[0],srcanwi[1],srcanwi[2],srcanwi[3],srcanwi[4],srcanwi[5]})
);

// SBOARD.NET (538) - wbdsq : fd1q
fd1q wbdsq_inst
(
	.q /* OUT */ (wbseq_n),
	.d /* IN */ (wbseqi_n),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// SBOARD.NET (539) - bothen : an3
assign bothen = srcrrd & dstren & insexe;

// SBOARD.NET (540) - wbwaitt : nd4
assign wbwaitt = ~(wbdeq_n & wbseq_n & bothen & wback);

// SBOARD.NET (541) - wbwait : nd2
assign wbwait = ~(wbwaitt & mult_wback_n);

// SBOARD.NET (553) - dwbt0 : nd2p
assign dwbt_0 = ~(wbacki & wbdeqi);

// SBOARD.NET (554) - dwbt4 : nd2
assign dwbt_4 = ~(comp1i & datwe);

// SBOARD.NET (555) - dwbt5 : nd2
assign dwbt_5 = ~(insexei & dstrrdi);

// SBOARD.NET (556) - dwbt6 : nd2
assign dwbt_6 = ~(insexei & dstrwri);

// SBOARD.NET (557) - dwbt1 : an3
assign dwbt_1 = dwbt_4 & dwbt_5 & dwbt_6;

// SBOARD.NET (558) - dwbt2 : nd2p
assign dwbt_2 = ~(wbacki & dwbt_1);

// SBOARD.NET (559) - dwbt3 : nd2p
assign dwbt_3 = ~(wbacki & mult_wbacki);

// SBOARD.NET (560) - dstwbwei : nd3
assign dstwbwei = ~(dwbt_0 & dwbt_2 & dwbt_3);

// SBOARD.NET (561) - dstwbwe : fd1p
fd1 dstwbwe_inst
(
	.q /* OUT */ (dstwbwet),
	.qn /* OUT */ (dstwbwe_n),
	.d /* IN */ (dstwbwei),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// SBOARD.NET (562) - dstwbweb : nivm
assign dstwbwe = dstwbwet;

// SBOARD.NET (573) - swbt0 : nd4
assign swbt_0 = ~(wbacki & dwbt_0 & dwbt_2 & dwbt_3);

// SBOARD.NET (574) - swbt1 : nd2
assign swbt_1 = ~(wbacki & mult_wbacki);

// SBOARD.NET (575) - srcwbwei : nd2
assign srcwbwei = ~(swbt_0 & swbt_1);

// SBOARD.NET (576) - srcwbwe : fd1qm
fd1q srcwbwe_inst
(
	.q /* OUT */ (srcwbwe),
	.d /* IN */ (srcwbwei),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// SBOARD.NET (580) - dstwbaddr : fd1q
fd1q dstwbaddr_inst_0
(
	.q /* OUT */ (dstwbaddr[0]),
	.d /* IN */ (hwbaddr[0]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dstwbaddr_inst_1
(
	.q /* OUT */ (dstwbaddr[1]),
	.d /* IN */ (hwbaddr[1]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dstwbaddr_inst_2
(
	.q /* OUT */ (dstwbaddr[2]),
	.d /* IN */ (hwbaddr[2]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dstwbaddr_inst_3
(
	.q /* OUT */ (dstwbaddr[3]),
	.d /* IN */ (hwbaddr[3]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dstwbaddr_inst_4
(
	.q /* OUT */ (dstwbaddr[4]),
	.d /* IN */ (hwbaddr[4]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dstwbaddr_inst_5
(
	.q /* OUT */ (dstwbaddr[5]),
	.d /* IN */ (hwbaddr[5]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// SBOARD.NET (581) - dsta : mx2
assign dsta[0] = (dstwbwe) ? dstwbaddr[0] : dstanw[0];
assign dsta[1] = (dstwbwe) ? dstwbaddr[1] : dstanw[1];
assign dsta[2] = (dstwbwe) ? dstwbaddr[2] : dstanw[2];
assign dsta[3] = (dstwbwe) ? dstwbaddr[3] : dstanw[3];
assign dsta[4] = (dstwbwe) ? dstwbaddr[4] : dstanw[4];
assign dsta[5] = (dstwbwe) ? dstwbaddr[5] : dstanw[5];

// SBOARD.NET (585) - srcwbaddr : fd1q
fd1q srcwbaddr_inst_0
(
	.q /* OUT */ (srcwbaddr[0]),
	.d /* IN */ (swbaddr[0]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srcwbaddr_inst_1
(
	.q /* OUT */ (srcwbaddr[1]),
	.d /* IN */ (swbaddr[1]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srcwbaddr_inst_2
(
	.q /* OUT */ (srcwbaddr[2]),
	.d /* IN */ (swbaddr[2]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srcwbaddr_inst_3
(
	.q /* OUT */ (srcwbaddr[3]),
	.d /* IN */ (swbaddr[3]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srcwbaddr_inst_4
(
	.q /* OUT */ (srcwbaddr[4]),
	.d /* IN */ (swbaddr[4]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q srcwbaddr_inst_5
(
	.q /* OUT */ (srcwbaddr[5]),
	.d /* IN */ (swbaddr[5]),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// SBOARD.NET (586) - srca : mx4
mx4 srca_inst_0
(
	.z /* OUT */ (srca[0]),
	.a0 /* IN */ (srcanw[0]),
	.a1 /* IN */ (srcwbaddr[0]),
	.a2 /* IN */ (srcanw[0]),
	.a3 /* IN */ (dstwbaddr[0]),
	.s0 /* IN */ (srcwbwe),
	.s1 /* IN */ (dstwbwe_n)
);
mx4 srca_inst_1
(
	.z /* OUT */ (srca[1]),
	.a0 /* IN */ (srcanw[1]),
	.a1 /* IN */ (srcwbaddr[1]),
	.a2 /* IN */ (srcanw[1]),
	.a3 /* IN */ (dstwbaddr[1]),
	.s0 /* IN */ (srcwbwe),
	.s1 /* IN */ (dstwbwe_n)
);
mx4 srca_inst_2
(
	.z /* OUT */ (srca[2]),
	.a0 /* IN */ (srcanw[2]),
	.a1 /* IN */ (srcwbaddr[2]),
	.a2 /* IN */ (srcanw[2]),
	.a3 /* IN */ (dstwbaddr[2]),
	.s0 /* IN */ (srcwbwe),
	.s1 /* IN */ (dstwbwe_n)
);
mx4 srca_inst_3
(
	.z /* OUT */ (srca[3]),
	.a0 /* IN */ (srcanw[3]),
	.a1 /* IN */ (srcwbaddr[3]),
	.a2 /* IN */ (srcanw[3]),
	.a3 /* IN */ (dstwbaddr[3]),
	.s0 /* IN */ (srcwbwe),
	.s1 /* IN */ (dstwbwe_n)
);
mx4 srca_inst_4
(
	.z /* OUT */ (srca[4]),
	.a0 /* IN */ (srcanw[4]),
	.a1 /* IN */ (srcwbaddr[4]),
	.a2 /* IN */ (srcanw[4]),
	.a3 /* IN */ (dstwbaddr[4]),
	.s0 /* IN */ (srcwbwe),
	.s1 /* IN */ (dstwbwe_n)
);
mx4 srca_inst_5
(
	.z /* OUT */ (srca[5]),
	.a0 /* IN */ (srcanw[5]),
	.a1 /* IN */ (srcwbaddr[5]),
	.a2 /* IN */ (srcanw[5]),
	.a3 /* IN */ (dstwbaddr[5]),
	.s0 /* IN */ (srcwbwe),
	.s1 /* IN */ (dstwbwe_n)
);

// SBOARD.NET (596) - xldd_selt : nd2
assign xldd_selt = ~(xld_wbackh_n & xld_wbacks_n);

// SBOARD.NET (597) - xldd_sel : fd1qu
fd1q xldd_sel_inst
(
	.q /* OUT */ (xldd_sel),
	.d /* IN */ (xldd_selt),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// SBOARD.NET (598) - xldd_sel\ : iv
assign xldd_sel_n = ~xldd_sel;

// SBOARD.NET (599) - divd_selt : nd2
assign divd_selt = ~(div_wbackh_n & div_wbacks_n);

// SBOARD.NET (600) - divd_sel : fd1qu
fd1q divd_sel_inst
(
	.q /* OUT */ (divd_sel),
	.d /* IN */ (divd_selt),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// SBOARD.NET (601) - mxdata : mx4
mx4 mxdata_inst_0
(
	.z /* OUT */ (mxdata[0]),
	.a0 /* IN */ (immdata[0]),
	.a1 /* IN */ (quotient[0]),
	.a2 /* IN */ (xld_data[0]),
	.a3 /* IN */ (xld_data[0]),
	.s0 /* IN */ (divd_sel),
	.s1 /* IN */ (xldd_sel)
);
mx4 mxdata_inst_1
(
	.z /* OUT */ (mxdata[1]),
	.a0 /* IN */ (immdata[1]),
	.a1 /* IN */ (quotient[1]),
	.a2 /* IN */ (xld_data[1]),
	.a3 /* IN */ (xld_data[1]),
	.s0 /* IN */ (divd_sel),
	.s1 /* IN */ (xldd_sel)
);
mx4 mxdata_inst_2
(
	.z /* OUT */ (mxdata[2]),
	.a0 /* IN */ (immdata[2]),
	.a1 /* IN */ (quotient[2]),
	.a2 /* IN */ (xld_data[2]),
	.a3 /* IN */ (xld_data[2]),
	.s0 /* IN */ (divd_sel),
	.s1 /* IN */ (xldd_sel)
);
mx4 mxdata_inst_3
(
	.z /* OUT */ (mxdata[3]),
	.a0 /* IN */ (immdata[3]),
	.a1 /* IN */ (quotient[3]),
	.a2 /* IN */ (xld_data[3]),
	.a3 /* IN */ (xld_data[3]),
	.s0 /* IN */ (divd_sel),
	.s1 /* IN */ (xldd_sel)
);
mx4 mxdata_inst_4
(
	.z /* OUT */ (mxdata[4]),
	.a0 /* IN */ (immdata[4]),
	.a1 /* IN */ (quotient[4]),
	.a2 /* IN */ (xld_data[4]),
	.a3 /* IN */ (xld_data[4]),
	.s0 /* IN */ (divd_sel),
	.s1 /* IN */ (xldd_sel)
);
mx4 mxdata_inst_5
(
	.z /* OUT */ (mxdata[5]),
	.a0 /* IN */ (immdata[5]),
	.a1 /* IN */ (quotient[5]),
	.a2 /* IN */ (xld_data[5]),
	.a3 /* IN */ (xld_data[5]),
	.s0 /* IN */ (divd_sel),
	.s1 /* IN */ (xldd_sel)
);
mx4 mxdata_inst_6
(
	.z /* OUT */ (mxdata[6]),
	.a0 /* IN */ (immdata[6]),
	.a1 /* IN */ (quotient[6]),
	.a2 /* IN */ (xld_data[6]),
	.a3 /* IN */ (xld_data[6]),
	.s0 /* IN */ (divd_sel),
	.s1 /* IN */ (xldd_sel)
);
mx4 mxdata_inst_7
(
	.z /* OUT */ (mxdata[7]),
	.a0 /* IN */ (immdata[7]),
	.a1 /* IN */ (quotient[7]),
	.a2 /* IN */ (xld_data[7]),
	.a3 /* IN */ (xld_data[7]),
	.s0 /* IN */ (divd_sel),
	.s1 /* IN */ (xldd_sel)
);
mx4 mxdata_inst_8
(
	.z /* OUT */ (mxdata[8]),
	.a0 /* IN */ (immdata[8]),
	.a1 /* IN */ (quotient[8]),
	.a2 /* IN */ (xld_data[8]),
	.a3 /* IN */ (xld_data[8]),
	.s0 /* IN */ (divd_sel),
	.s1 /* IN */ (xldd_sel)
);
mx4 mxdata_inst_9
(
	.z /* OUT */ (mxdata[9]),
	.a0 /* IN */ (immdata[9]),
	.a1 /* IN */ (quotient[9]),
	.a2 /* IN */ (xld_data[9]),
	.a3 /* IN */ (xld_data[9]),
	.s0 /* IN */ (divd_sel),
	.s1 /* IN */ (xldd_sel)
);
mx4 mxdata_inst_10
(
	.z /* OUT */ (mxdata[10]),
	.a0 /* IN */ (immdata[10]),
	.a1 /* IN */ (quotient[10]),
	.a2 /* IN */ (xld_data[10]),
	.a3 /* IN */ (xld_data[10]),
	.s0 /* IN */ (divd_sel),
	.s1 /* IN */ (xldd_sel)
);
mx4 mxdata_inst_11
(
	.z /* OUT */ (mxdata[11]),
	.a0 /* IN */ (immdata[11]),
	.a1 /* IN */ (quotient[11]),
	.a2 /* IN */ (xld_data[11]),
	.a3 /* IN */ (xld_data[11]),
	.s0 /* IN */ (divd_sel),
	.s1 /* IN */ (xldd_sel)
);
mx4 mxdata_inst_12
(
	.z /* OUT */ (mxdata[12]),
	.a0 /* IN */ (immdata[12]),
	.a1 /* IN */ (quotient[12]),
	.a2 /* IN */ (xld_data[12]),
	.a3 /* IN */ (xld_data[12]),
	.s0 /* IN */ (divd_sel),
	.s1 /* IN */ (xldd_sel)
);
mx4 mxdata_inst_13
(
	.z /* OUT */ (mxdata[13]),
	.a0 /* IN */ (immdata[13]),
	.a1 /* IN */ (quotient[13]),
	.a2 /* IN */ (xld_data[13]),
	.a3 /* IN */ (xld_data[13]),
	.s0 /* IN */ (divd_sel),
	.s1 /* IN */ (xldd_sel)
);
mx4 mxdata_inst_14
(
	.z /* OUT */ (mxdata[14]),
	.a0 /* IN */ (immdata[14]),
	.a1 /* IN */ (quotient[14]),
	.a2 /* IN */ (xld_data[14]),
	.a3 /* IN */ (xld_data[14]),
	.s0 /* IN */ (divd_sel),
	.s1 /* IN */ (xldd_sel)
);
mx4 mxdata_inst_15
(
	.z /* OUT */ (mxdata[15]),
	.a0 /* IN */ (immdata[15]),
	.a1 /* IN */ (quotient[15]),
	.a2 /* IN */ (xld_data[15]),
	.a3 /* IN */ (xld_data[15]),
	.s0 /* IN */ (divd_sel),
	.s1 /* IN */ (xldd_sel)
);
mx4 mxdata_inst_16
(
	.z /* OUT */ (mxdata[16]),
	.a0 /* IN */ (immdata[16]),
	.a1 /* IN */ (quotient[16]),
	.a2 /* IN */ (xld_data[16]),
	.a3 /* IN */ (xld_data[16]),
	.s0 /* IN */ (divd_sel),
	.s1 /* IN */ (xldd_sel)
);
mx4 mxdata_inst_17
(
	.z /* OUT */ (mxdata[17]),
	.a0 /* IN */ (immdata[17]),
	.a1 /* IN */ (quotient[17]),
	.a2 /* IN */ (xld_data[17]),
	.a3 /* IN */ (xld_data[17]),
	.s0 /* IN */ (divd_sel),
	.s1 /* IN */ (xldd_sel)
);
mx4 mxdata_inst_18
(
	.z /* OUT */ (mxdata[18]),
	.a0 /* IN */ (immdata[18]),
	.a1 /* IN */ (quotient[18]),
	.a2 /* IN */ (xld_data[18]),
	.a3 /* IN */ (xld_data[18]),
	.s0 /* IN */ (divd_sel),
	.s1 /* IN */ (xldd_sel)
);
mx4 mxdata_inst_19
(
	.z /* OUT */ (mxdata[19]),
	.a0 /* IN */ (immdata[19]),
	.a1 /* IN */ (quotient[19]),
	.a2 /* IN */ (xld_data[19]),
	.a3 /* IN */ (xld_data[19]),
	.s0 /* IN */ (divd_sel),
	.s1 /* IN */ (xldd_sel)
);
mx4 mxdata_inst_20
(
	.z /* OUT */ (mxdata[20]),
	.a0 /* IN */ (immdata[20]),
	.a1 /* IN */ (quotient[20]),
	.a2 /* IN */ (xld_data[20]),
	.a3 /* IN */ (xld_data[20]),
	.s0 /* IN */ (divd_sel),
	.s1 /* IN */ (xldd_sel)
);
mx4 mxdata_inst_21
(
	.z /* OUT */ (mxdata[21]),
	.a0 /* IN */ (immdata[21]),
	.a1 /* IN */ (quotient[21]),
	.a2 /* IN */ (xld_data[21]),
	.a3 /* IN */ (xld_data[21]),
	.s0 /* IN */ (divd_sel),
	.s1 /* IN */ (xldd_sel)
);
mx4 mxdata_inst_22
(
	.z /* OUT */ (mxdata[22]),
	.a0 /* IN */ (immdata[22]),
	.a1 /* IN */ (quotient[22]),
	.a2 /* IN */ (xld_data[22]),
	.a3 /* IN */ (xld_data[22]),
	.s0 /* IN */ (divd_sel),
	.s1 /* IN */ (xldd_sel)
);
mx4 mxdata_inst_23
(
	.z /* OUT */ (mxdata[23]),
	.a0 /* IN */ (immdata[23]),
	.a1 /* IN */ (quotient[23]),
	.a2 /* IN */ (xld_data[23]),
	.a3 /* IN */ (xld_data[23]),
	.s0 /* IN */ (divd_sel),
	.s1 /* IN */ (xldd_sel)
);
mx4 mxdata_inst_24
(
	.z /* OUT */ (mxdata[24]),
	.a0 /* IN */ (immdata[24]),
	.a1 /* IN */ (quotient[24]),
	.a2 /* IN */ (xld_data[24]),
	.a3 /* IN */ (xld_data[24]),
	.s0 /* IN */ (divd_sel),
	.s1 /* IN */ (xldd_sel)
);
mx4 mxdata_inst_25
(
	.z /* OUT */ (mxdata[25]),
	.a0 /* IN */ (immdata[25]),
	.a1 /* IN */ (quotient[25]),
	.a2 /* IN */ (xld_data[25]),
	.a3 /* IN */ (xld_data[25]),
	.s0 /* IN */ (divd_sel),
	.s1 /* IN */ (xldd_sel)
);
mx4 mxdata_inst_26
(
	.z /* OUT */ (mxdata[26]),
	.a0 /* IN */ (immdata[26]),
	.a1 /* IN */ (quotient[26]),
	.a2 /* IN */ (xld_data[26]),
	.a3 /* IN */ (xld_data[26]),
	.s0 /* IN */ (divd_sel),
	.s1 /* IN */ (xldd_sel)
);
mx4 mxdata_inst_27
(
	.z /* OUT */ (mxdata[27]),
	.a0 /* IN */ (immdata[27]),
	.a1 /* IN */ (quotient[27]),
	.a2 /* IN */ (xld_data[27]),
	.a3 /* IN */ (xld_data[27]),
	.s0 /* IN */ (divd_sel),
	.s1 /* IN */ (xldd_sel)
);
mx4 mxdata_inst_28
(
	.z /* OUT */ (mxdata[28]),
	.a0 /* IN */ (immdata[28]),
	.a1 /* IN */ (quotient[28]),
	.a2 /* IN */ (xld_data[28]),
	.a3 /* IN */ (xld_data[28]),
	.s0 /* IN */ (divd_sel),
	.s1 /* IN */ (xldd_sel)
);
mx4 mxdata_inst_29
(
	.z /* OUT */ (mxdata[29]),
	.a0 /* IN */ (immdata[29]),
	.a1 /* IN */ (quotient[29]),
	.a2 /* IN */ (xld_data[29]),
	.a3 /* IN */ (xld_data[29]),
	.s0 /* IN */ (divd_sel),
	.s1 /* IN */ (xldd_sel)
);
mx4 mxdata_inst_30
(
	.z /* OUT */ (mxdata[30]),
	.a0 /* IN */ (immdata[30]),
	.a1 /* IN */ (quotient[30]),
	.a2 /* IN */ (xld_data[30]),
	.a3 /* IN */ (xld_data[30]),
	.s0 /* IN */ (divd_sel),
	.s1 /* IN */ (xldd_sel)
);
mx4 mxdata_inst_31
(
	.z /* OUT */ (mxdata[31]),
	.a0 /* IN */ (immdata[31]),
	.a1 /* IN */ (quotient[31]),
	.a2 /* IN */ (xld_data[31]),
	.a3 /* IN */ (xld_data[31]),
	.s0 /* IN */ (divd_sel),
	.s1 /* IN */ (xldd_sel)
);

// SBOARD.NET (609) - dwselt[0] : nd2
assign dwselt_0 = ~(alu_wbackh_n & mov_wbackh_n);

// SBOARD.NET (610) - dwselt[1] : nd2
assign dwselt_1 = ~(ild_wbackh_n & mov_wbackh_n);

// SBOARD.NET (611) - dwsel[0-1] : fd1q
fd1q dwsel_from_0_to_1_inst_0
(
	.q /* OUT */ (dwsel_0),
	.d /* IN */ (dwselt_0),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q dwsel_from_0_to_1_inst_1
(
	.q /* OUT */ (dwsel_1),
	.d /* IN */ (dwselt_1),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// SBOARD.NET (612) - dwselb[0-1] : nivu
assign dwselb_0 = dwsel_0;
assign dwselb_1 = dwsel_1;

// SBOARD.NET (613) - dstwdmux : mx4
mx4 dstwdmux_inst_0
(
	.z /* OUT */ (dstwd[0]),
	.a0 /* IN */ (mxdata[0]),
	.a1 /* IN */ (result[0]),
	.a2 /* IN */ (ild_data[0]),
	.a3 /* IN */ (srcdp[0]),
	.s0 /* IN */ (dwselb_0),
	.s1 /* IN */ (dwselb_1)
);
mx4 dstwdmux_inst_1
(
	.z /* OUT */ (dstwd[1]),
	.a0 /* IN */ (mxdata[1]),
	.a1 /* IN */ (result[1]),
	.a2 /* IN */ (ild_data[1]),
	.a3 /* IN */ (srcdp[1]),
	.s0 /* IN */ (dwselb_0),
	.s1 /* IN */ (dwselb_1)
);
mx4 dstwdmux_inst_2
(
	.z /* OUT */ (dstwd[2]),
	.a0 /* IN */ (mxdata[2]),
	.a1 /* IN */ (result[2]),
	.a2 /* IN */ (ild_data[2]),
	.a3 /* IN */ (srcdp[2]),
	.s0 /* IN */ (dwselb_0),
	.s1 /* IN */ (dwselb_1)
);
mx4 dstwdmux_inst_3
(
	.z /* OUT */ (dstwd[3]),
	.a0 /* IN */ (mxdata[3]),
	.a1 /* IN */ (result[3]),
	.a2 /* IN */ (ild_data[3]),
	.a3 /* IN */ (srcdp[3]),
	.s0 /* IN */ (dwselb_0),
	.s1 /* IN */ (dwselb_1)
);
mx4 dstwdmux_inst_4
(
	.z /* OUT */ (dstwd[4]),
	.a0 /* IN */ (mxdata[4]),
	.a1 /* IN */ (result[4]),
	.a2 /* IN */ (ild_data[4]),
	.a3 /* IN */ (srcdp[4]),
	.s0 /* IN */ (dwselb_0),
	.s1 /* IN */ (dwselb_1)
);
mx4 dstwdmux_inst_5
(
	.z /* OUT */ (dstwd[5]),
	.a0 /* IN */ (mxdata[5]),
	.a1 /* IN */ (result[5]),
	.a2 /* IN */ (ild_data[5]),
	.a3 /* IN */ (srcdp[5]),
	.s0 /* IN */ (dwselb_0),
	.s1 /* IN */ (dwselb_1)
);
mx4 dstwdmux_inst_6
(
	.z /* OUT */ (dstwd[6]),
	.a0 /* IN */ (mxdata[6]),
	.a1 /* IN */ (result[6]),
	.a2 /* IN */ (ild_data[6]),
	.a3 /* IN */ (srcdp[6]),
	.s0 /* IN */ (dwselb_0),
	.s1 /* IN */ (dwselb_1)
);
mx4 dstwdmux_inst_7
(
	.z /* OUT */ (dstwd[7]),
	.a0 /* IN */ (mxdata[7]),
	.a1 /* IN */ (result[7]),
	.a2 /* IN */ (ild_data[7]),
	.a3 /* IN */ (srcdp[7]),
	.s0 /* IN */ (dwselb_0),
	.s1 /* IN */ (dwselb_1)
);
mx4 dstwdmux_inst_8
(
	.z /* OUT */ (dstwd[8]),
	.a0 /* IN */ (mxdata[8]),
	.a1 /* IN */ (result[8]),
	.a2 /* IN */ (ild_data[8]),
	.a3 /* IN */ (srcdp[8]),
	.s0 /* IN */ (dwselb_0),
	.s1 /* IN */ (dwselb_1)
);
mx4 dstwdmux_inst_9
(
	.z /* OUT */ (dstwd[9]),
	.a0 /* IN */ (mxdata[9]),
	.a1 /* IN */ (result[9]),
	.a2 /* IN */ (ild_data[9]),
	.a3 /* IN */ (srcdp[9]),
	.s0 /* IN */ (dwselb_0),
	.s1 /* IN */ (dwselb_1)
);
mx4 dstwdmux_inst_10
(
	.z /* OUT */ (dstwd[10]),
	.a0 /* IN */ (mxdata[10]),
	.a1 /* IN */ (result[10]),
	.a2 /* IN */ (ild_data[10]),
	.a3 /* IN */ (srcdp[10]),
	.s0 /* IN */ (dwselb_0),
	.s1 /* IN */ (dwselb_1)
);
mx4 dstwdmux_inst_11
(
	.z /* OUT */ (dstwd[11]),
	.a0 /* IN */ (mxdata[11]),
	.a1 /* IN */ (result[11]),
	.a2 /* IN */ (ild_data[11]),
	.a3 /* IN */ (srcdp[11]),
	.s0 /* IN */ (dwselb_0),
	.s1 /* IN */ (dwselb_1)
);
mx4 dstwdmux_inst_12
(
	.z /* OUT */ (dstwd[12]),
	.a0 /* IN */ (mxdata[12]),
	.a1 /* IN */ (result[12]),
	.a2 /* IN */ (ild_data[12]),
	.a3 /* IN */ (srcdp[12]),
	.s0 /* IN */ (dwselb_0),
	.s1 /* IN */ (dwselb_1)
);
mx4 dstwdmux_inst_13
(
	.z /* OUT */ (dstwd[13]),
	.a0 /* IN */ (mxdata[13]),
	.a1 /* IN */ (result[13]),
	.a2 /* IN */ (ild_data[13]),
	.a3 /* IN */ (srcdp[13]),
	.s0 /* IN */ (dwselb_0),
	.s1 /* IN */ (dwselb_1)
);
mx4 dstwdmux_inst_14
(
	.z /* OUT */ (dstwd[14]),
	.a0 /* IN */ (mxdata[14]),
	.a1 /* IN */ (result[14]),
	.a2 /* IN */ (ild_data[14]),
	.a3 /* IN */ (srcdp[14]),
	.s0 /* IN */ (dwselb_0),
	.s1 /* IN */ (dwselb_1)
);
mx4 dstwdmux_inst_15
(
	.z /* OUT */ (dstwd[15]),
	.a0 /* IN */ (mxdata[15]),
	.a1 /* IN */ (result[15]),
	.a2 /* IN */ (ild_data[15]),
	.a3 /* IN */ (srcdp[15]),
	.s0 /* IN */ (dwselb_0),
	.s1 /* IN */ (dwselb_1)
);
mx4 dstwdmux_inst_16
(
	.z /* OUT */ (dstwd[16]),
	.a0 /* IN */ (mxdata[16]),
	.a1 /* IN */ (result[16]),
	.a2 /* IN */ (ild_data[16]),
	.a3 /* IN */ (srcdp[16]),
	.s0 /* IN */ (dwselb_0),
	.s1 /* IN */ (dwselb_1)
);
mx4 dstwdmux_inst_17
(
	.z /* OUT */ (dstwd[17]),
	.a0 /* IN */ (mxdata[17]),
	.a1 /* IN */ (result[17]),
	.a2 /* IN */ (ild_data[17]),
	.a3 /* IN */ (srcdp[17]),
	.s0 /* IN */ (dwselb_0),
	.s1 /* IN */ (dwselb_1)
);
mx4 dstwdmux_inst_18
(
	.z /* OUT */ (dstwd[18]),
	.a0 /* IN */ (mxdata[18]),
	.a1 /* IN */ (result[18]),
	.a2 /* IN */ (ild_data[18]),
	.a3 /* IN */ (srcdp[18]),
	.s0 /* IN */ (dwselb_0),
	.s1 /* IN */ (dwselb_1)
);
mx4 dstwdmux_inst_19
(
	.z /* OUT */ (dstwd[19]),
	.a0 /* IN */ (mxdata[19]),
	.a1 /* IN */ (result[19]),
	.a2 /* IN */ (ild_data[19]),
	.a3 /* IN */ (srcdp[19]),
	.s0 /* IN */ (dwselb_0),
	.s1 /* IN */ (dwselb_1)
);
mx4 dstwdmux_inst_20
(
	.z /* OUT */ (dstwd[20]),
	.a0 /* IN */ (mxdata[20]),
	.a1 /* IN */ (result[20]),
	.a2 /* IN */ (ild_data[20]),
	.a3 /* IN */ (srcdp[20]),
	.s0 /* IN */ (dwselb_0),
	.s1 /* IN */ (dwselb_1)
);
mx4 dstwdmux_inst_21
(
	.z /* OUT */ (dstwd[21]),
	.a0 /* IN */ (mxdata[21]),
	.a1 /* IN */ (result[21]),
	.a2 /* IN */ (ild_data[21]),
	.a3 /* IN */ (srcdp[21]),
	.s0 /* IN */ (dwselb_0),
	.s1 /* IN */ (dwselb_1)
);
mx4 dstwdmux_inst_22
(
	.z /* OUT */ (dstwd[22]),
	.a0 /* IN */ (mxdata[22]),
	.a1 /* IN */ (result[22]),
	.a2 /* IN */ (ild_data[22]),
	.a3 /* IN */ (srcdp[22]),
	.s0 /* IN */ (dwselb_0),
	.s1 /* IN */ (dwselb_1)
);
mx4 dstwdmux_inst_23
(
	.z /* OUT */ (dstwd[23]),
	.a0 /* IN */ (mxdata[23]),
	.a1 /* IN */ (result[23]),
	.a2 /* IN */ (ild_data[23]),
	.a3 /* IN */ (srcdp[23]),
	.s0 /* IN */ (dwselb_0),
	.s1 /* IN */ (dwselb_1)
);
mx4 dstwdmux_inst_24
(
	.z /* OUT */ (dstwd[24]),
	.a0 /* IN */ (mxdata[24]),
	.a1 /* IN */ (result[24]),
	.a2 /* IN */ (ild_data[24]),
	.a3 /* IN */ (srcdp[24]),
	.s0 /* IN */ (dwselb_0),
	.s1 /* IN */ (dwselb_1)
);
mx4 dstwdmux_inst_25
(
	.z /* OUT */ (dstwd[25]),
	.a0 /* IN */ (mxdata[25]),
	.a1 /* IN */ (result[25]),
	.a2 /* IN */ (ild_data[25]),
	.a3 /* IN */ (srcdp[25]),
	.s0 /* IN */ (dwselb_0),
	.s1 /* IN */ (dwselb_1)
);
mx4 dstwdmux_inst_26
(
	.z /* OUT */ (dstwd[26]),
	.a0 /* IN */ (mxdata[26]),
	.a1 /* IN */ (result[26]),
	.a2 /* IN */ (ild_data[26]),
	.a3 /* IN */ (srcdp[26]),
	.s0 /* IN */ (dwselb_0),
	.s1 /* IN */ (dwselb_1)
);
mx4 dstwdmux_inst_27
(
	.z /* OUT */ (dstwd[27]),
	.a0 /* IN */ (mxdata[27]),
	.a1 /* IN */ (result[27]),
	.a2 /* IN */ (ild_data[27]),
	.a3 /* IN */ (srcdp[27]),
	.s0 /* IN */ (dwselb_0),
	.s1 /* IN */ (dwselb_1)
);
mx4 dstwdmux_inst_28
(
	.z /* OUT */ (dstwd[28]),
	.a0 /* IN */ (mxdata[28]),
	.a1 /* IN */ (result[28]),
	.a2 /* IN */ (ild_data[28]),
	.a3 /* IN */ (srcdp[28]),
	.s0 /* IN */ (dwselb_0),
	.s1 /* IN */ (dwselb_1)
);
mx4 dstwdmux_inst_29
(
	.z /* OUT */ (dstwd[29]),
	.a0 /* IN */ (mxdata[29]),
	.a1 /* IN */ (result[29]),
	.a2 /* IN */ (ild_data[29]),
	.a3 /* IN */ (srcdp[29]),
	.s0 /* IN */ (dwselb_0),
	.s1 /* IN */ (dwselb_1)
);
mx4 dstwdmux_inst_30
(
	.z /* OUT */ (dstwd[30]),
	.a0 /* IN */ (mxdata[30]),
	.a1 /* IN */ (result[30]),
	.a2 /* IN */ (ild_data[30]),
	.a3 /* IN */ (srcdp[30]),
	.s0 /* IN */ (dwselb_0),
	.s1 /* IN */ (dwselb_1)
);
mx4 dstwdmux_inst_31
(
	.z /* OUT */ (dstwd[31]),
	.a0 /* IN */ (mxdata[31]),
	.a1 /* IN */ (result[31]),
	.a2 /* IN */ (ild_data[31]),
	.a3 /* IN */ (srcdp[31]),
	.s0 /* IN */ (dwselb_0),
	.s1 /* IN */ (dwselb_1)
);

// SBOARD.NET (622) - swselti[0] : iv
assign swselti_0 = ~mov_wbacks_n;

// SBOARD.NET (623) - swselti[1] : nd2
assign swselti_1 = ~(ild_wbacks_n & mov_wbacks_n);

// SBOARD.NET (624) - swselt[0-1] : fd1q
fd1q swselt_from_0_to_1_inst_0
(
	.q /* OUT */ (swselt_0),
	.d /* IN */ (swselti_0),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q swselt_from_0_to_1_inst_1
(
	.q /* OUT */ (swselt_1),
	.d /* IN */ (swselti_1),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// SBOARD.NET (625) - swsel[0-1] : mx2
assign swsel_0 = (dstwbwe) ? swselt_0 : dwsel_0;
assign swsel_1 = (dstwbwe) ? swselt_1 : dwsel_1;

// SBOARD.NET (627) - swselb[0-1] : nivu
assign swselb_0 = swsel_0;
assign swselb_1 = swsel_1;

// SBOARD.NET (628) - srcwdmux : mx4
mx4 srcwdmux_inst_0
(
	.z /* OUT */ (srcwd[0]),
	.a0 /* IN */ (mxdata[0]),
	.a1 /* IN */ (result[0]),
	.a2 /* IN */ (ild_data[0]),
	.a3 /* IN */ (srcdp[0]),
	.s0 /* IN */ (swselb_0),
	.s1 /* IN */ (swselb_1)
);
mx4 srcwdmux_inst_1
(
	.z /* OUT */ (srcwd[1]),
	.a0 /* IN */ (mxdata[1]),
	.a1 /* IN */ (result[1]),
	.a2 /* IN */ (ild_data[1]),
	.a3 /* IN */ (srcdp[1]),
	.s0 /* IN */ (swselb_0),
	.s1 /* IN */ (swselb_1)
);
mx4 srcwdmux_inst_2
(
	.z /* OUT */ (srcwd[2]),
	.a0 /* IN */ (mxdata[2]),
	.a1 /* IN */ (result[2]),
	.a2 /* IN */ (ild_data[2]),
	.a3 /* IN */ (srcdp[2]),
	.s0 /* IN */ (swselb_0),
	.s1 /* IN */ (swselb_1)
);
mx4 srcwdmux_inst_3
(
	.z /* OUT */ (srcwd[3]),
	.a0 /* IN */ (mxdata[3]),
	.a1 /* IN */ (result[3]),
	.a2 /* IN */ (ild_data[3]),
	.a3 /* IN */ (srcdp[3]),
	.s0 /* IN */ (swselb_0),
	.s1 /* IN */ (swselb_1)
);
mx4 srcwdmux_inst_4
(
	.z /* OUT */ (srcwd[4]),
	.a0 /* IN */ (mxdata[4]),
	.a1 /* IN */ (result[4]),
	.a2 /* IN */ (ild_data[4]),
	.a3 /* IN */ (srcdp[4]),
	.s0 /* IN */ (swselb_0),
	.s1 /* IN */ (swselb_1)
);
mx4 srcwdmux_inst_5
(
	.z /* OUT */ (srcwd[5]),
	.a0 /* IN */ (mxdata[5]),
	.a1 /* IN */ (result[5]),
	.a2 /* IN */ (ild_data[5]),
	.a3 /* IN */ (srcdp[5]),
	.s0 /* IN */ (swselb_0),
	.s1 /* IN */ (swselb_1)
);
mx4 srcwdmux_inst_6
(
	.z /* OUT */ (srcwd[6]),
	.a0 /* IN */ (mxdata[6]),
	.a1 /* IN */ (result[6]),
	.a2 /* IN */ (ild_data[6]),
	.a3 /* IN */ (srcdp[6]),
	.s0 /* IN */ (swselb_0),
	.s1 /* IN */ (swselb_1)
);
mx4 srcwdmux_inst_7
(
	.z /* OUT */ (srcwd[7]),
	.a0 /* IN */ (mxdata[7]),
	.a1 /* IN */ (result[7]),
	.a2 /* IN */ (ild_data[7]),
	.a3 /* IN */ (srcdp[7]),
	.s0 /* IN */ (swselb_0),
	.s1 /* IN */ (swselb_1)
);
mx4 srcwdmux_inst_8
(
	.z /* OUT */ (srcwd[8]),
	.a0 /* IN */ (mxdata[8]),
	.a1 /* IN */ (result[8]),
	.a2 /* IN */ (ild_data[8]),
	.a3 /* IN */ (srcdp[8]),
	.s0 /* IN */ (swselb_0),
	.s1 /* IN */ (swselb_1)
);
mx4 srcwdmux_inst_9
(
	.z /* OUT */ (srcwd[9]),
	.a0 /* IN */ (mxdata[9]),
	.a1 /* IN */ (result[9]),
	.a2 /* IN */ (ild_data[9]),
	.a3 /* IN */ (srcdp[9]),
	.s0 /* IN */ (swselb_0),
	.s1 /* IN */ (swselb_1)
);
mx4 srcwdmux_inst_10
(
	.z /* OUT */ (srcwd[10]),
	.a0 /* IN */ (mxdata[10]),
	.a1 /* IN */ (result[10]),
	.a2 /* IN */ (ild_data[10]),
	.a3 /* IN */ (srcdp[10]),
	.s0 /* IN */ (swselb_0),
	.s1 /* IN */ (swselb_1)
);
mx4 srcwdmux_inst_11
(
	.z /* OUT */ (srcwd[11]),
	.a0 /* IN */ (mxdata[11]),
	.a1 /* IN */ (result[11]),
	.a2 /* IN */ (ild_data[11]),
	.a3 /* IN */ (srcdp[11]),
	.s0 /* IN */ (swselb_0),
	.s1 /* IN */ (swselb_1)
);
mx4 srcwdmux_inst_12
(
	.z /* OUT */ (srcwd[12]),
	.a0 /* IN */ (mxdata[12]),
	.a1 /* IN */ (result[12]),
	.a2 /* IN */ (ild_data[12]),
	.a3 /* IN */ (srcdp[12]),
	.s0 /* IN */ (swselb_0),
	.s1 /* IN */ (swselb_1)
);
mx4 srcwdmux_inst_13
(
	.z /* OUT */ (srcwd[13]),
	.a0 /* IN */ (mxdata[13]),
	.a1 /* IN */ (result[13]),
	.a2 /* IN */ (ild_data[13]),
	.a3 /* IN */ (srcdp[13]),
	.s0 /* IN */ (swselb_0),
	.s1 /* IN */ (swselb_1)
);
mx4 srcwdmux_inst_14
(
	.z /* OUT */ (srcwd[14]),
	.a0 /* IN */ (mxdata[14]),
	.a1 /* IN */ (result[14]),
	.a2 /* IN */ (ild_data[14]),
	.a3 /* IN */ (srcdp[14]),
	.s0 /* IN */ (swselb_0),
	.s1 /* IN */ (swselb_1)
);
mx4 srcwdmux_inst_15
(
	.z /* OUT */ (srcwd[15]),
	.a0 /* IN */ (mxdata[15]),
	.a1 /* IN */ (result[15]),
	.a2 /* IN */ (ild_data[15]),
	.a3 /* IN */ (srcdp[15]),
	.s0 /* IN */ (swselb_0),
	.s1 /* IN */ (swselb_1)
);
mx4 srcwdmux_inst_16
(
	.z /* OUT */ (srcwd[16]),
	.a0 /* IN */ (mxdata[16]),
	.a1 /* IN */ (result[16]),
	.a2 /* IN */ (ild_data[16]),
	.a3 /* IN */ (srcdp[16]),
	.s0 /* IN */ (swselb_0),
	.s1 /* IN */ (swselb_1)
);
mx4 srcwdmux_inst_17
(
	.z /* OUT */ (srcwd[17]),
	.a0 /* IN */ (mxdata[17]),
	.a1 /* IN */ (result[17]),
	.a2 /* IN */ (ild_data[17]),
	.a3 /* IN */ (srcdp[17]),
	.s0 /* IN */ (swselb_0),
	.s1 /* IN */ (swselb_1)
);
mx4 srcwdmux_inst_18
(
	.z /* OUT */ (srcwd[18]),
	.a0 /* IN */ (mxdata[18]),
	.a1 /* IN */ (result[18]),
	.a2 /* IN */ (ild_data[18]),
	.a3 /* IN */ (srcdp[18]),
	.s0 /* IN */ (swselb_0),
	.s1 /* IN */ (swselb_1)
);
mx4 srcwdmux_inst_19
(
	.z /* OUT */ (srcwd[19]),
	.a0 /* IN */ (mxdata[19]),
	.a1 /* IN */ (result[19]),
	.a2 /* IN */ (ild_data[19]),
	.a3 /* IN */ (srcdp[19]),
	.s0 /* IN */ (swselb_0),
	.s1 /* IN */ (swselb_1)
);
mx4 srcwdmux_inst_20
(
	.z /* OUT */ (srcwd[20]),
	.a0 /* IN */ (mxdata[20]),
	.a1 /* IN */ (result[20]),
	.a2 /* IN */ (ild_data[20]),
	.a3 /* IN */ (srcdp[20]),
	.s0 /* IN */ (swselb_0),
	.s1 /* IN */ (swselb_1)
);
mx4 srcwdmux_inst_21
(
	.z /* OUT */ (srcwd[21]),
	.a0 /* IN */ (mxdata[21]),
	.a1 /* IN */ (result[21]),
	.a2 /* IN */ (ild_data[21]),
	.a3 /* IN */ (srcdp[21]),
	.s0 /* IN */ (swselb_0),
	.s1 /* IN */ (swselb_1)
);
mx4 srcwdmux_inst_22
(
	.z /* OUT */ (srcwd[22]),
	.a0 /* IN */ (mxdata[22]),
	.a1 /* IN */ (result[22]),
	.a2 /* IN */ (ild_data[22]),
	.a3 /* IN */ (srcdp[22]),
	.s0 /* IN */ (swselb_0),
	.s1 /* IN */ (swselb_1)
);
mx4 srcwdmux_inst_23
(
	.z /* OUT */ (srcwd[23]),
	.a0 /* IN */ (mxdata[23]),
	.a1 /* IN */ (result[23]),
	.a2 /* IN */ (ild_data[23]),
	.a3 /* IN */ (srcdp[23]),
	.s0 /* IN */ (swselb_0),
	.s1 /* IN */ (swselb_1)
);
mx4 srcwdmux_inst_24
(
	.z /* OUT */ (srcwd[24]),
	.a0 /* IN */ (mxdata[24]),
	.a1 /* IN */ (result[24]),
	.a2 /* IN */ (ild_data[24]),
	.a3 /* IN */ (srcdp[24]),
	.s0 /* IN */ (swselb_0),
	.s1 /* IN */ (swselb_1)
);
mx4 srcwdmux_inst_25
(
	.z /* OUT */ (srcwd[25]),
	.a0 /* IN */ (mxdata[25]),
	.a1 /* IN */ (result[25]),
	.a2 /* IN */ (ild_data[25]),
	.a3 /* IN */ (srcdp[25]),
	.s0 /* IN */ (swselb_0),
	.s1 /* IN */ (swselb_1)
);
mx4 srcwdmux_inst_26
(
	.z /* OUT */ (srcwd[26]),
	.a0 /* IN */ (mxdata[26]),
	.a1 /* IN */ (result[26]),
	.a2 /* IN */ (ild_data[26]),
	.a3 /* IN */ (srcdp[26]),
	.s0 /* IN */ (swselb_0),
	.s1 /* IN */ (swselb_1)
);
mx4 srcwdmux_inst_27
(
	.z /* OUT */ (srcwd[27]),
	.a0 /* IN */ (mxdata[27]),
	.a1 /* IN */ (result[27]),
	.a2 /* IN */ (ild_data[27]),
	.a3 /* IN */ (srcdp[27]),
	.s0 /* IN */ (swselb_0),
	.s1 /* IN */ (swselb_1)
);
mx4 srcwdmux_inst_28
(
	.z /* OUT */ (srcwd[28]),
	.a0 /* IN */ (mxdata[28]),
	.a1 /* IN */ (result[28]),
	.a2 /* IN */ (ild_data[28]),
	.a3 /* IN */ (srcdp[28]),
	.s0 /* IN */ (swselb_0),
	.s1 /* IN */ (swselb_1)
);
mx4 srcwdmux_inst_29
(
	.z /* OUT */ (srcwd[29]),
	.a0 /* IN */ (mxdata[29]),
	.a1 /* IN */ (result[29]),
	.a2 /* IN */ (ild_data[29]),
	.a3 /* IN */ (srcdp[29]),
	.s0 /* IN */ (swselb_0),
	.s1 /* IN */ (swselb_1)
);
mx4 srcwdmux_inst_30
(
	.z /* OUT */ (srcwd[30]),
	.a0 /* IN */ (mxdata[30]),
	.a1 /* IN */ (result[30]),
	.a2 /* IN */ (ild_data[30]),
	.a3 /* IN */ (srcdp[30]),
	.s0 /* IN */ (swselb_0),
	.s1 /* IN */ (swselb_1)
);
mx4 srcwdmux_inst_31
(
	.z /* OUT */ (srcwd[31]),
	.a0 /* IN */ (mxdata[31]),
	.a1 /* IN */ (result[31]),
	.a2 /* IN */ (ild_data[31]),
	.a3 /* IN */ (srcdp[31]),
	.s0 /* IN */ (swselb_0),
	.s1 /* IN */ (swselb_1)
);

// SBOARD.NET (633) - srcrwen\ : iv
assign srcrwen_n = ~srcwbwe;

// SBOARD.NET (637) - dstrwen\ : iv
assign dstrwen_n = ~dstwbwe;

// SBOARD.NET (641) - sbwaitt0 : nr2
assign sbwaitt_0 = ~(wbwait | divdwait);

// SBOARD.NET (642) - sbwaitt1 : nr2
assign sbwaitt_1 = ~(diviwait | aludwait);

// SBOARD.NET (643) - sbwaitt2 : nr2
assign sbwaitt_2 = ~(flagwait | xlddwait);

// SBOARD.NET (644) - sbwaitt3 : nr2
assign sbwaitt_3 = ~(mbusywait | ldwait);

// SBOARD.NET (646) - sbwait_tmp : nd4p
assign sbwait_tmp = ~(sbwaitt_0 & sbwaitt_1 & sbwaitt_2 & sbwaitt_3);

// SBOARD.NET (647) - sbwait : sysclkdly
sysclkdly sbwait_inst
(
	.z /* OUT */ (sbwait),
	.a /* IN */ (sbwait_tmp),
	.sys_clk(sys_clk) // Generated
);
endmodule
/* verilator lint_on LITENDIAN */
