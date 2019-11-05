/* verilator lint_off LITENDIAN */
`include "defs.v"

module j_jerry
(
	input xdspcsl,
	input xpclkosc,
	input xpclkin,
	input xdbgl,
	input xoel_0,
	input xwel_0,
	input xserin,
	input xdtackl,
	input xi2srxd,
	input xeint_0,
	input xeint_1,
	input xtest,
	input xchrin,
	input xresetil,
	output xd_0_out,
	output xd_0_oe,
	input xd_0_in,
	output xd_1_out,
	output xd_1_oe,
	input xd_1_in,
	output xd_2_out,
	output xd_2_oe,
	input xd_2_in,
	output xd_3_out,
	output xd_3_oe,
	input xd_3_in,
	output xd_4_out,
	output xd_4_oe,
	input xd_4_in,
	output xd_5_out,
	output xd_5_oe,
	input xd_5_in,
	output xd_6_out,
	output xd_6_oe,
	input xd_6_in,
	output xd_7_out,
	output xd_7_oe,
	input xd_7_in,
	output xd_8_out,
	output xd_8_oe,
	input xd_8_in,
	output xd_9_out,
	output xd_9_oe,
	input xd_9_in,
	output xd_10_out,
	output xd_10_oe,
	input xd_10_in,
	output xd_11_out,
	output xd_11_oe,
	input xd_11_in,
	output xd_12_out,
	output xd_12_oe,
	input xd_12_in,
	output xd_13_out,
	output xd_13_oe,
	input xd_13_in,
	output xd_14_out,
	output xd_14_oe,
	input xd_14_in,
	output xd_15_out,
	output xd_15_oe,
	input xd_15_in,
	output xd_16_out,
	output xd_16_oe,
	input xd_16_in,
	output xd_17_out,
	output xd_17_oe,
	input xd_17_in,
	output xd_18_out,
	output xd_18_oe,
	input xd_18_in,
	output xd_19_out,
	output xd_19_oe,
	input xd_19_in,
	output xd_20_out,
	output xd_20_oe,
	input xd_20_in,
	output xd_21_out,
	output xd_21_oe,
	input xd_21_in,
	output xd_22_out,
	output xd_22_oe,
	input xd_22_in,
	output xd_23_out,
	output xd_23_oe,
	input xd_23_in,
	output xd_24_out,
	output xd_24_oe,
	input xd_24_in,
	output xd_25_out,
	output xd_25_oe,
	input xd_25_in,
	output xd_26_out,
	output xd_26_oe,
	input xd_26_in,
	output xd_27_out,
	output xd_27_oe,
	input xd_27_in,
	output xd_28_out,
	output xd_28_oe,
	input xd_28_in,
	output xd_29_out,
	output xd_29_oe,
	input xd_29_in,
	output xd_30_out,
	output xd_30_oe,
	input xd_30_in,
	output xd_31_out,
	output xd_31_oe,
	input xd_31_in,
	output xa_0_out,
	output xa_0_oe,
	input xa_0_in,
	output xa_1_out,
	output xa_1_oe,
	input xa_1_in,
	output xa_2_out,
	output xa_2_oe,
	input xa_2_in,
	output xa_3_out,
	output xa_3_oe,
	input xa_3_in,
	output xa_4_out,
	output xa_4_oe,
	input xa_4_in,
	output xa_5_out,
	output xa_5_oe,
	input xa_5_in,
	output xa_6_out,
	output xa_6_oe,
	input xa_6_in,
	output xa_7_out,
	output xa_7_oe,
	input xa_7_in,
	output xa_8_out,
	output xa_8_oe,
	input xa_8_in,
	output xa_9_out,
	output xa_9_oe,
	input xa_9_in,
	output xa_10_out,
	output xa_10_oe,
	input xa_10_in,
	output xa_11_out,
	output xa_11_oe,
	input xa_11_in,
	output xa_12_out,
	output xa_12_oe,
	input xa_12_in,
	output xa_13_out,
	output xa_13_oe,
	input xa_13_in,
	output xa_14_out,
	output xa_14_oe,
	input xa_14_in,
	output xa_15_out,
	output xa_15_oe,
	input xa_15_in,
	output xa_16_out,
	output xa_16_oe,
	input xa_16_in,
	output xa_17_out,
	output xa_17_oe,
	input xa_17_in,
	output xa_18_out,
	output xa_18_oe,
	input xa_18_in,
	output xa_19_out,
	output xa_19_oe,
	input xa_19_in,
	output xa_20_out,
	output xa_20_oe,
	input xa_20_in,
	output xa_21_out,
	output xa_21_oe,
	input xa_21_in,
	output xa_22_out,
	output xa_22_oe,
	input xa_22_in,
	output xa_23_out,
	output xa_23_oe,
	input xa_23_in,
	output xjoy_0_out,
	output xjoy_0_oe,
	input xjoy_0_in,
	output xjoy_1_out,
	output xjoy_1_oe,
	input xjoy_1_in,
	output xjoy_2_out,
	output xjoy_2_oe,
	input xjoy_2_in,
	output xjoy_3_out,
	output xjoy_3_oe,
	input xjoy_3_in,
	output xgpiol_0_out,
	output xgpiol_0_oe,
	input xgpiol_0_in,
	output xgpiol_1_out,
	output xgpiol_1_oe,
	input xgpiol_1_in,
	output xgpiol_2_out,
	output xgpiol_2_oe,
	input xgpiol_2_in,
	output xgpiol_3_out,
	output xgpiol_3_oe,
	input xgpiol_3_in,
	output xsck_out,
	output xsck_oe,
	input xsck_in,
	output xws_out,
	output xws_oe,
	input xws_in,
	output xvclk_out,
	output xvclk_oe,
	input xvclk_in,
	output xsiz_0_out,
	output xsiz_0_oe,
	input xsiz_0_in,
	output xsiz_1_out,
	output xsiz_1_oe,
	input xsiz_1_in,
	output xrw_out,
	output xrw_oe,
	input xrw_in,
	output xdreql_out,
	output xdreql_oe,
	input xdreql_in,
	output xdbrl_0,
	output xdbrl_1,
	output xint,
	output xserout,
	output xgpiol_4,
	output xgpiol_5,
	output xvclkdiv,
	output xchrdiv,
	output xpclkout,
	output xpclkdiv,
	output xresetl,
	output xchrout,
	output xrdac_0,
	output xrdac_1,
	output xldac_0,
	output xldac_1,
	output xiordl,
	output xiowrl,
	output xi2stxd,
	output xcpuclk,
	input tlw,
	output aen,
	output den,
	output ainen,
	output [0:15] snd_l,
	output [0:15] snd_r,
	output snd_l_en,
	output snd_r_en,
	
	output reg [15:0] dac_l,
	output reg [15:0] dac_r,
	
	input sys_clk // Generated
);


always @(posedge sys_clk) begin
	if (i2s1w) dac_l <= {dspwd_15, dspwd_14, dspwd_13, dspwd_12, dspwd_11, dspwd_10, dspwd_9, dspwd_8, dspwd_7, dspwd_6, dspwd_5, dspwd_4, dspwd_3, dspwd_2, dspwd_1, dspwd_0};
	if (i2s2w) dac_r <= {dspwd_15, dspwd_14, dspwd_13, dspwd_12, dspwd_11, dspwd_10, dspwd_9, dspwd_8, dspwd_7, dspwd_6, dspwd_5, dspwd_4, dspwd_3, dspwd_2, dspwd_1, dspwd_0};
end


wire dsprd_0_out;
wire dsprd_0_oe;
wire dsprd_0_in;
wire dsprd_1_out;
wire dsprd_1_oe;
wire dsprd_1_in;
wire dsprd_2_out;
wire dsprd_2_oe;
wire dsprd_2_in;
wire dsprd_3_out;
wire dsprd_3_oe;
wire dsprd_3_in;
wire dsprd_4_out;
wire dsprd_4_oe;
wire dsprd_4_in;
wire dsprd_5_out;
wire dsprd_5_oe;
wire dsprd_5_in;
wire dsprd_6_out;
wire dsprd_6_oe;
wire dsprd_6_in;
wire dsprd_7_out;
wire dsprd_7_oe;
wire dsprd_7_in;
wire dsprd_8_out;
wire dsprd_8_oe;
wire dsprd_8_in;
wire dsprd_9_out;
wire dsprd_9_oe;
wire dsprd_9_in;
wire dsprd_10_out;
wire dsprd_10_oe;
wire dsprd_10_in;
wire dsprd_11_out;
wire dsprd_11_oe;
wire dsprd_11_in;
wire dsprd_12_out;
wire dsprd_12_oe;
wire dsprd_12_in;
wire dsprd_13_out;
wire dsprd_13_oe;
wire dsprd_13_in;
wire dsprd_14_out;
wire dsprd_14_oe;
wire dsprd_14_in;
wire dsprd_15_out;
wire dsprd_15_oe;
wire dsprd_15_in;
wire dr_0_out;
wire dr_0_oe;
wire dr_0_in;
wire dr_1_out;
wire dr_1_oe;
wire dr_1_in;
wire dr_2_out;
wire dr_2_oe;
wire dr_2_in;
wire dr_3_out;
wire dr_3_oe;
wire dr_3_in;
wire dr_4_out;
wire dr_4_oe;
wire dr_4_in;
wire dr_5_out;
wire dr_5_oe;
wire dr_5_in;
wire dr_6_out;
wire dr_6_oe;
wire dr_6_in;
wire dr_7_out;
wire dr_7_oe;
wire dr_7_in;
wire dr_8_out;
wire dr_8_oe;
wire dr_8_in;
wire dr_9_out;
wire dr_9_oe;
wire dr_9_in;
wire dr_10_out;
wire dr_10_oe;
wire dr_10_in;
wire dr_11_out;
wire dr_11_oe;
wire dr_11_in;
wire dr_12_out;
wire dr_12_oe;
wire dr_12_in;
wire dr_13_out;
wire dr_13_oe;
wire dr_13_in;
wire dr_14_out;
wire dr_14_oe;
wire dr_14_in;
wire dr_15_out;
wire dr_15_oe;
wire dr_15_in;
wire din_0;
wire nt_55;
wire dout_0;
wire gnd;
wire nt_54;
wire din_1;
wire dout_1;
wire nt_53;
wire din_2;
wire dout_2;
wire nt_52;
wire din_3;
wire dout_3;
wire nt_51;
wire din_4;
wire dout_4;
wire nt_50;
wire din_5;
wire dout_5;
wire nt_49;
wire din_6;
wire dout_6;
wire nt_48;
wire din_7;
wire dout_7;
wire nt_47;
wire din_8;
wire dout_8;
wire nt_46;
wire din_9;
wire dout_9;
wire nt_45;
wire din_10;
wire dout_10;
wire nt_44;
wire din_11;
wire dout_11;
wire nt_43;
wire din_12;
wire dout_12;
wire nt_42;
wire din_13;
wire dout_13;
wire nt_41;
wire din_14;
wire dout_14;
wire nt_40;
wire din_15;
wire dout_15;
wire nt_39;
wire din_16;
wire dout_16;
wire nt_38;
wire din_17;
wire dout_17;
wire nt_37;
wire din_18;
wire dout_18;
wire nt_36;
wire din_19;
wire dout_19;
wire nt_35;
wire din_20;
wire dout_20;
wire nt_34;
wire din_21;
wire dout_21;
wire nt_33;
wire din_22;
wire dout_22;
wire nt_32;
wire din_23;
wire dout_23;
wire nt_31;
wire din_24;
wire dout_24;
wire nt_30;
wire din_25;
wire dout_25;
wire nt_29;
wire din_26;
wire dout_26;
wire nt_28;
wire din_27;
wire dout_27;
wire nt_27;
wire din_28;
wire dout_28;
wire nt_26;
wire din_29;
wire dout_29;
wire nt_25;
wire din_30;
wire dout_30;
wire nt_24;
wire din_31;
wire dout_31;
wire nt_23;
wire ain_0;
wire nt_79;
wire aout_0;
wire nt_78;
wire ain_1;
wire aout_1;
wire nt_77;
wire ain_2;
wire aout_2;
wire nt_76;
wire ain_3;
wire aout_3;
wire nt_75;
wire ain_4;
wire aout_4;
wire nt_74;
wire ain_5;
wire aout_5;
wire nt_73;
wire ain_6;
wire aout_6;
wire nt_72;
wire ain_7;
wire aout_7;
wire nt_71;
wire ain_8;
wire aout_8;
wire nt_70;
wire ain_9;
wire aout_9;
wire nt_69;
wire ain_10;
wire aout_10;
wire nt_68;
wire ain_11;
wire aout_11;
wire nt_67;
wire ain_12;
wire aout_12;
wire nt_66;
wire ain_13;
wire aout_13;
wire nt_65;
wire ain_14;
wire aout_14;
wire nt_64;
wire ain_15;
wire aout_15;
wire nt_63;
wire ain_16;
wire aout_16;
wire nt_62;
wire ain_17;
wire aout_17;
wire nt_61;
wire ain_18;
wire aout_18;
wire nt_60;
wire ain_19;
wire aout_19;
wire nt_59;
wire ain_20;
wire aout_20;
wire nt_58;
wire ain_21;
wire aout_21;
wire nt_57;
wire ain_22;
wire aout_22;
wire nt_56;
wire ain_23;
wire aout_23;
wire oel_0;
wire nt_5;
wire nt_4;
wire wel_0;
wire nt_6;
wire pclkosc;
wire nt_1;
wire nt_0;
wire pclkin;
wire nt_2;
wire pclkout;
wire cpuclk;
wire vclkin;
wire chrclk;
wire vclken;
wire vcc;
wire pclkdiv;
wire vclkdiv;
wire chrdiv;
wire resetli;
wire nt_8;
wire nt_7;
wire resetl;
wire siz_0;
wire siz_1;
wire rws;
wire dreql;
wire dtackl;
wire nt_3;
wire dbrls_0;
wire dbrls_1;
wire dbgl;
wire dspcsl;
wire intt;
wire _int;
wire ndtest;
wire test;
wire nt_9;
wire serin;
wire nt_20;
wire nt_19;
wire serout;
wire sck;
wire nt_21;
wire sckout;
wire i2sen;
wire ws;
wire nt_22;
wire wsout;
wire i2srxd;
wire i2stxd;
wire eint_0;
wire eint_1;
wire nt_10;
wire nt_11;
wire cfg_0;
wire nt_16;
wire joy1rl;
wire cfgen;
wire nt_15;
wire cfg_1;
wire nt_17;
wire joy2rl;
wire cfg_2;
wire nt_18;
wire joy1wl;
wire cfg_3;
wire joyenl;
wire cfg_4;
wire cfg_5;
wire cfg_6;
wire cfg_7;
wire nt_12;
wire nt_13;
wire nt_14;
wire gpiol_0;
wire gpiol_1;
wire gpiol_2;
wire gpiol_3;
wire gpiol_4;
wire gpiol_5;
wire iordl;
wire iowrl;
wire rdac_0;
wire rdac_1;
wire ldac_0;
wire ldac_1;
wire nottest;
wire testen;
wire ack;
wire resetl_0;
wire clk;
wire tint_0;
wire tint_1;
wire i2int;
wire dspread;
wire dspwrite;
wire dbrl_0;
wire dbrl_1;
wire dint;
wire wd_0;
wire wd_1;
wire wd_2;
wire wd_3;
wire wd_4;
wire wd_5;
wire wd_6;
wire wd_7;
wire wd_8;
wire wd_9;
wire wd_10;
wire wd_11;
wire wd_12;
wire wd_13;
wire wd_14;
wire wd_15;
wire wd_16;
wire wd_17;
wire wd_18;
wire wd_19;
wire wd_20;
wire wd_21;
wire wd_22;
wire wd_23;
wire wd_24;
wire wd_25;
wire wd_26;
wire wd_27;
wire wd_28;
wire wd_29;
wire wd_30;
wire wd_31;
wire a_0;
wire a_1;
wire a_2;
wire a_3;
wire a_4;
wire a_5;
wire a_6;
wire a_7;
wire a_8;
wire a_9;
wire a_10;
wire a_11;
wire a_12;
wire a_13;
wire a_14;
wire a_15;
wire a_16;
wire a_17;
wire a_18;
wire a_19;
wire a_20;
wire a_21;
wire a_22;
wire a_23;
wire w_0;
wire w_1;
wire w_2;
wire rw;
wire mreq;
wire dac1w;
wire dac2w;
wire dspwd_0;
wire dspwd_1;
wire dspwd_2;
wire dspwd_3;
wire dspwd_4;
wire dspwd_5;
wire dspwd_6;
wire dspwd_7;
wire dspwd_8;
wire dspwd_9;
wire dspwd_10;
wire dspwd_11;
wire dspwd_12;
wire dspwd_13;
wire dspwd_14;
wire dspwd_15;
wire i2s1w;
wire i2s2w;
wire i2s3w;
wire i2s4w;
wire i2s1r;
wire i2s2r;
wire i2s3r;
wire dspen;
wire pit1w;
wire pit2w;
wire pit3w;
wire pit4w;
wire clk1w;
wire clk2w;
wire clk3w;
wire int1w;
wire u2dwr;
wire u2ctwr;
wire u2psclw;
wire test1w;
wire int1r;
wire u2drd;
wire u2strd;
wire u2psclr;
wire pit1r;
wire pit2r;
wire pit3r;
wire pit4r;
wire internal;
wire dinlatch_0;
wire dinlatch_1;
wire dmuxd_0;
wire dmuxd_1;
wire dmuxu_0;
wire dmuxu_1;
wire dren;
wire xdsrc;
wire clk_2;
wire cfgw;
wire seta1;
wire masterdata;
wire dsp16;
wire bigend;
wire resetl_2;
wire tlw_unused;
wire resetl_1;
wire resetl_3;
wire resetl_4;
wire resetl_5;
wire clk_0;
wire clk_1;
wire clk_3;
wire uint;
wire ts;
wire ts_local_pe_167_a0_out;
wire ts_local_pe_167_a0_oe;
wire ts_local_pe_167_a0_in;
wire ts_local_pe_167_a1_out;
wire ts_local_pe_167_a1_oe;
wire ts_local_pe_167_a1_in;
wire ts_local_pe_168_a0_out;
wire ts_local_pe_168_a0_oe;
wire ts_local_pe_168_a0_in;
wire ts_local_pe_168_a1_out;
wire ts_local_pe_168_a1_oe;
wire ts_local_pe_168_a1_in;
wire ts_local_pe_169_a0_out;
wire ts_local_pe_169_a0_oe;
wire ts_local_pe_169_a0_in;
wire ts_local_pe_169_a1_out;
wire ts_local_pe_169_a1_oe;
wire ts_local_pe_169_a1_in;
wire ts_local_pe_170_a0_out;
wire ts_local_pe_170_a0_oe;
wire ts_local_pe_170_a0_in;
wire ts_local_pe_170_a1_out;
wire ts_local_pe_170_a1_oe;
wire ts_local_pe_170_a1_in;
wire ts_local_pe_171_a0_out;
wire ts_local_pe_171_a0_oe;
wire ts_local_pe_171_a0_in;
wire ts_local_pe_171_a1_out;
wire ts_local_pe_171_a1_oe;
wire ts_local_pe_171_a1_in;
wire ts_local_pe_172_a0_out;
wire ts_local_pe_172_a0_oe;
wire ts_local_pe_172_a0_in;
wire ts_local_pe_172_a1_out;
wire ts_local_pe_172_a1_oe;
wire ts_local_pe_172_a1_in;
wire ts_local_pe_173_a0_out;
wire ts_local_pe_173_a0_oe;
wire ts_local_pe_173_a0_in;
wire ts_local_pe_173_a1_out;
wire ts_local_pe_173_a1_oe;
wire ts_local_pe_173_a1_in;
wire ts_local_pe_174_a0_out;
wire ts_local_pe_174_a0_oe;
wire ts_local_pe_174_a0_in;
wire ts_local_pe_174_a1_out;
wire ts_local_pe_174_a1_oe;
wire ts_local_pe_174_a1_in;
wire ts_local_pe_175_a0_out;
wire ts_local_pe_175_a0_oe;
wire ts_local_pe_175_a0_in;
wire ts_local_pe_175_a1_out;
wire ts_local_pe_175_a1_oe;
wire ts_local_pe_175_a1_in;
wire ts_local_pe_176_a0_out;
wire ts_local_pe_176_a0_oe;
wire ts_local_pe_176_a0_in;
wire ts_local_pe_176_a1_out;
wire ts_local_pe_176_a1_oe;
wire ts_local_pe_176_a1_in;
wire ts_local_pe_177_a0_out;
wire ts_local_pe_177_a0_oe;
wire ts_local_pe_177_a0_in;
wire ts_local_pe_177_a1_out;
wire ts_local_pe_177_a1_oe;
wire ts_local_pe_177_a1_in;
wire ts_local_pe_178_a0_out;
wire ts_local_pe_178_a0_oe;
wire ts_local_pe_178_a0_in;
wire ts_local_pe_178_a1_out;
wire ts_local_pe_178_a1_oe;
wire ts_local_pe_178_a1_in;
wire ts_local_pe_179_a0_out;
wire ts_local_pe_179_a0_oe;
wire ts_local_pe_179_a0_in;
wire ts_local_pe_179_a1_out;
wire ts_local_pe_179_a1_oe;
wire ts_local_pe_179_a1_in;
wire ts_local_pe_180_a0_out;
wire ts_local_pe_180_a0_oe;
wire ts_local_pe_180_a0_in;
wire ts_local_pe_180_a1_out;
wire ts_local_pe_180_a1_oe;
wire ts_local_pe_180_a1_in;
wire ts_local_pe_181_a0_out;
wire ts_local_pe_181_a0_oe;
wire ts_local_pe_181_a0_in;
wire ts_local_pe_181_a1_out;
wire ts_local_pe_181_a1_oe;
wire ts_local_pe_181_a1_in;
wire ts_local_pe_182_a0_out;
wire ts_local_pe_182_a0_oe;
wire ts_local_pe_182_a0_in;
wire ts_local_pe_182_a1_out;
wire ts_local_pe_182_a1_oe;
wire ts_local_pe_182_a1_in;
wire ts_local_pe_183_a0_out;
wire ts_local_pe_183_a0_oe;
wire ts_local_pe_183_a0_in;
wire ts_local_pe_183_a1_out;
wire ts_local_pe_183_a1_oe;
wire ts_local_pe_183_a1_in;
wire ts_local_pe_183_a2_out;
wire ts_local_pe_183_a2_oe;
wire ts_local_pe_183_a2_in;
wire ts_local_pe_183_a3_out;
wire ts_local_pe_183_a3_oe;
wire ts_local_pe_183_a3_in;
wire ts_local_pe_184_a0_out;
wire ts_local_pe_184_a0_oe;
wire ts_local_pe_184_a0_in;
wire ts_local_pe_184_a1_out;
wire ts_local_pe_184_a1_oe;
wire ts_local_pe_184_a1_in;
wire ts_local_pe_184_a2_out;
wire ts_local_pe_184_a2_oe;
wire ts_local_pe_184_a2_in;
wire ts_local_pe_184_a3_out;
wire ts_local_pe_184_a3_oe;
wire ts_local_pe_184_a3_in;
wire ts_local_pe_185_a0_out;
wire ts_local_pe_185_a0_oe;
wire ts_local_pe_185_a0_in;
wire ts_local_pe_185_a1_out;
wire ts_local_pe_185_a1_oe;
wire ts_local_pe_185_a1_in;
wire ts_local_pe_185_a2_out;
wire ts_local_pe_185_a2_oe;
wire ts_local_pe_185_a2_in;
wire ts_local_pe_185_a3_out;
wire ts_local_pe_185_a3_oe;
wire ts_local_pe_185_a3_in;
wire ts_local_pe_186_a0_out;
wire ts_local_pe_186_a0_oe;
wire ts_local_pe_186_a0_in;
wire ts_local_pe_186_a1_out;
wire ts_local_pe_186_a1_oe;
wire ts_local_pe_186_a1_in;
wire ts_local_pe_186_a2_out;
wire ts_local_pe_186_a2_oe;
wire ts_local_pe_186_a2_in;
wire ts_local_pe_186_a3_out;
wire ts_local_pe_186_a3_oe;
wire ts_local_pe_186_a3_in;
wire ts_local_pe_187_a0_out;
wire ts_local_pe_187_a0_oe;
wire ts_local_pe_187_a0_in;
wire ts_local_pe_187_a1_out;
wire ts_local_pe_187_a1_oe;
wire ts_local_pe_187_a1_in;
wire ts_local_pe_187_a2_out;
wire ts_local_pe_187_a2_oe;
wire ts_local_pe_187_a2_in;
wire ts_local_pe_187_a3_out;
wire ts_local_pe_187_a3_oe;
wire ts_local_pe_187_a3_in;
wire ts_local_pe_188_a0_out;
wire ts_local_pe_188_a0_oe;
wire ts_local_pe_188_a0_in;
wire ts_local_pe_188_a1_out;
wire ts_local_pe_188_a1_oe;
wire ts_local_pe_188_a1_in;
wire ts_local_pe_188_a2_out;
wire ts_local_pe_188_a2_oe;
wire ts_local_pe_188_a2_in;
wire ts_local_pe_188_a3_out;
wire ts_local_pe_188_a3_oe;
wire ts_local_pe_188_a3_in;
wire ts_local_pe_189_a0_out;
wire ts_local_pe_189_a0_oe;
wire ts_local_pe_189_a0_in;
wire ts_local_pe_189_a1_out;
wire ts_local_pe_189_a1_oe;
wire ts_local_pe_189_a1_in;
wire ts_local_pe_189_a2_out;
wire ts_local_pe_189_a2_oe;
wire ts_local_pe_189_a2_in;
wire ts_local_pe_189_a3_out;
wire ts_local_pe_189_a3_oe;
wire ts_local_pe_189_a3_in;
wire ts_local_pe_190_a0_out;
wire ts_local_pe_190_a0_oe;
wire ts_local_pe_190_a0_in;
wire ts_local_pe_190_a1_out;
wire ts_local_pe_190_a1_oe;
wire ts_local_pe_190_a1_in;
wire ts_local_pe_190_a2_out;
wire ts_local_pe_190_a2_oe;
wire ts_local_pe_190_a2_in;
wire ts_local_pe_190_a3_out;
wire ts_local_pe_190_a3_oe;
wire ts_local_pe_190_a3_in;
wire ts_local_pe_191_a0_out;
wire ts_local_pe_191_a0_oe;
wire ts_local_pe_191_a0_in;
wire ts_local_pe_191_a1_out;
wire ts_local_pe_191_a1_oe;
wire ts_local_pe_191_a1_in;
wire ts_local_pe_191_a2_out;
wire ts_local_pe_191_a2_oe;
wire ts_local_pe_191_a2_in;
wire ts_local_pe_191_a3_out;
wire ts_local_pe_191_a3_oe;
wire ts_local_pe_191_a3_in;
wire ts_local_pe_192_a0_out;
wire ts_local_pe_192_a0_oe;
wire ts_local_pe_192_a0_in;
wire ts_local_pe_192_a1_out;
wire ts_local_pe_192_a1_oe;
wire ts_local_pe_192_a1_in;
wire ts_local_pe_192_a2_out;
wire ts_local_pe_192_a2_oe;
wire ts_local_pe_192_a2_in;
wire ts_local_pe_192_a3_out;
wire ts_local_pe_192_a3_oe;
wire ts_local_pe_192_a3_in;
wire ts_local_pe_193_a0_out;
wire ts_local_pe_193_a0_oe;
wire ts_local_pe_193_a0_in;
wire ts_local_pe_193_a1_out;
wire ts_local_pe_193_a1_oe;
wire ts_local_pe_193_a1_in;
wire ts_local_pe_193_a2_out;
wire ts_local_pe_193_a2_oe;
wire ts_local_pe_193_a2_in;
wire ts_local_pe_193_a3_out;
wire ts_local_pe_193_a3_oe;
wire ts_local_pe_193_a3_in;
wire ts_local_pe_194_a0_out;
wire ts_local_pe_194_a0_oe;
wire ts_local_pe_194_a0_in;
wire ts_local_pe_194_a1_out;
wire ts_local_pe_194_a1_oe;
wire ts_local_pe_194_a1_in;
wire ts_local_pe_194_a2_out;
wire ts_local_pe_194_a2_oe;
wire ts_local_pe_194_a2_in;
wire ts_local_pe_194_a3_out;
wire ts_local_pe_194_a3_oe;
wire ts_local_pe_194_a3_in;
wire ts_local_pe_195_a0_out;
wire ts_local_pe_195_a0_oe;
wire ts_local_pe_195_a0_in;
wire ts_local_pe_195_a1_out;
wire ts_local_pe_195_a1_oe;
wire ts_local_pe_195_a1_in;
wire ts_local_pe_195_a2_out;
wire ts_local_pe_195_a2_oe;
wire ts_local_pe_195_a2_in;
wire ts_local_pe_195_a3_out;
wire ts_local_pe_195_a3_oe;
wire ts_local_pe_195_a3_in;
wire ts_local_pe_196_a0_out;
wire ts_local_pe_196_a0_oe;
wire ts_local_pe_196_a0_in;
wire ts_local_pe_196_a1_out;
wire ts_local_pe_196_a1_oe;
wire ts_local_pe_196_a1_in;
wire ts_local_pe_196_a2_out;
wire ts_local_pe_196_a2_oe;
wire ts_local_pe_196_a2_in;
wire ts_local_pe_196_a3_out;
wire ts_local_pe_196_a3_oe;
wire ts_local_pe_196_a3_in;
wire ts_local_pe_197_a0_out;
wire ts_local_pe_197_a0_oe;
wire ts_local_pe_197_a0_in;
wire ts_local_pe_197_a1_out;
wire ts_local_pe_197_a1_oe;
wire ts_local_pe_197_a1_in;
wire ts_local_pe_197_a2_out;
wire ts_local_pe_197_a2_oe;
wire ts_local_pe_197_a2_in;
wire ts_local_pe_197_a3_out;
wire ts_local_pe_197_a3_oe;
wire ts_local_pe_197_a3_in;
wire ts_local_pe_198_a0_out;
wire ts_local_pe_198_a0_oe;
wire ts_local_pe_198_a0_in;
wire ts_local_pe_198_a1_out;
wire ts_local_pe_198_a1_oe;
wire ts_local_pe_198_a1_in;
wire ts_local_pe_198_a2_out;
wire ts_local_pe_198_a2_oe;
wire ts_local_pe_198_a2_in;
wire ts_local_pe_198_a3_out;
wire ts_local_pe_198_a3_oe;
wire ts_local_pe_198_a3_in;

// Output buffers
wire aen_obuf;
wire den_obuf;
wire ainen_obuf;


// Output buffers
assign aen = aen_obuf;
assign den = den_obuf;
assign ainen = ainen_obuf;


// JERRY.NET (115) - d[0] : bd8t
bd d_index_0_inst
(
	.io_out /* BUS */ (xd_0_out),
	.io_oe /* BUS */ (xd_0_oe),
	.io_in /* BUS */ (xd_0_in),
	.zi /* OUT */ (din_0),
	.po /* OUT */ (nt_55),
	.a /* IN */ (dout_0),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_obuf),
	.pi /* IN */ (nt_54)
);

// JERRY.NET (116) - d[1] : bd8t
bd d_index_1_inst
(
	.io_out /* BUS */ (xd_1_out),
	.io_oe /* BUS */ (xd_1_oe),
	.io_in /* BUS */ (xd_1_in),
	.zi /* OUT */ (din_1),
	.po /* OUT */ (nt_54),
	.a /* IN */ (dout_1),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_obuf),
	.pi /* IN */ (nt_53)
);

// JERRY.NET (117) - d[2] : bd8t
bd d_index_2_inst
(
	.io_out /* BUS */ (xd_2_out),
	.io_oe /* BUS */ (xd_2_oe),
	.io_in /* BUS */ (xd_2_in),
	.zi /* OUT */ (din_2),
	.po /* OUT */ (nt_53),
	.a /* IN */ (dout_2),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_obuf),
	.pi /* IN */ (nt_52)
);

// JERRY.NET (118) - d[3] : bd8t
bd d_index_3_inst
(
	.io_out /* BUS */ (xd_3_out),
	.io_oe /* BUS */ (xd_3_oe),
	.io_in /* BUS */ (xd_3_in),
	.zi /* OUT */ (din_3),
	.po /* OUT */ (nt_52),
	.a /* IN */ (dout_3),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_obuf),
	.pi /* IN */ (nt_51)
);

// JERRY.NET (119) - d[4] : bd8t
bd d_index_4_inst
(
	.io_out /* BUS */ (xd_4_out),
	.io_oe /* BUS */ (xd_4_oe),
	.io_in /* BUS */ (xd_4_in),
	.zi /* OUT */ (din_4),
	.po /* OUT */ (nt_51),
	.a /* IN */ (dout_4),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_obuf),
	.pi /* IN */ (nt_50)
);

// JERRY.NET (120) - d[5] : bd8t
bd d_index_5_inst
(
	.io_out /* BUS */ (xd_5_out),
	.io_oe /* BUS */ (xd_5_oe),
	.io_in /* BUS */ (xd_5_in),
	.zi /* OUT */ (din_5),
	.po /* OUT */ (nt_50),
	.a /* IN */ (dout_5),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_obuf),
	.pi /* IN */ (nt_49)
);

// JERRY.NET (121) - d[6] : bd8t
bd d_index_6_inst
(
	.io_out /* BUS */ (xd_6_out),
	.io_oe /* BUS */ (xd_6_oe),
	.io_in /* BUS */ (xd_6_in),
	.zi /* OUT */ (din_6),
	.po /* OUT */ (nt_49),
	.a /* IN */ (dout_6),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_obuf),
	.pi /* IN */ (nt_48)
);

// JERRY.NET (122) - d[7] : bd8t
bd d_index_7_inst
(
	.io_out /* BUS */ (xd_7_out),
	.io_oe /* BUS */ (xd_7_oe),
	.io_in /* BUS */ (xd_7_in),
	.zi /* OUT */ (din_7),
	.po /* OUT */ (nt_48),
	.a /* IN */ (dout_7),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_obuf),
	.pi /* IN */ (nt_47)
);

// JERRY.NET (124) - d[8] : bd8t
bd d_index_8_inst
(
	.io_out /* BUS */ (xd_8_out),
	.io_oe /* BUS */ (xd_8_oe),
	.io_in /* BUS */ (xd_8_in),
	.zi /* OUT */ (din_8),
	.po /* OUT */ (nt_47),
	.a /* IN */ (dout_8),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_obuf),
	.pi /* IN */ (nt_46)
);

// JERRY.NET (125) - d[9] : bd8t
bd d_index_9_inst
(
	.io_out /* BUS */ (xd_9_out),
	.io_oe /* BUS */ (xd_9_oe),
	.io_in /* BUS */ (xd_9_in),
	.zi /* OUT */ (din_9),
	.po /* OUT */ (nt_46),
	.a /* IN */ (dout_9),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_obuf),
	.pi /* IN */ (nt_45)
);

// JERRY.NET (126) - d[10] : bd8t
bd d_index_10_inst
(
	.io_out /* BUS */ (xd_10_out),
	.io_oe /* BUS */ (xd_10_oe),
	.io_in /* BUS */ (xd_10_in),
	.zi /* OUT */ (din_10),
	.po /* OUT */ (nt_45),
	.a /* IN */ (dout_10),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_obuf),
	.pi /* IN */ (nt_44)
);

// JERRY.NET (127) - d[11] : bd8t
bd d_index_11_inst
(
	.io_out /* BUS */ (xd_11_out),
	.io_oe /* BUS */ (xd_11_oe),
	.io_in /* BUS */ (xd_11_in),
	.zi /* OUT */ (din_11),
	.po /* OUT */ (nt_44),
	.a /* IN */ (dout_11),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_obuf),
	.pi /* IN */ (nt_43)
);

// JERRY.NET (128) - d[12] : bd8t
bd d_index_12_inst
(
	.io_out /* BUS */ (xd_12_out),
	.io_oe /* BUS */ (xd_12_oe),
	.io_in /* BUS */ (xd_12_in),
	.zi /* OUT */ (din_12),
	.po /* OUT */ (nt_43),
	.a /* IN */ (dout_12),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_obuf),
	.pi /* IN */ (nt_42)
);

// JERRY.NET (129) - d[13] : bd8t
bd d_index_13_inst
(
	.io_out /* BUS */ (xd_13_out),
	.io_oe /* BUS */ (xd_13_oe),
	.io_in /* BUS */ (xd_13_in),
	.zi /* OUT */ (din_13),
	.po /* OUT */ (nt_42),
	.a /* IN */ (dout_13),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_obuf),
	.pi /* IN */ (nt_41)
);

// JERRY.NET (130) - d[14] : bd8t
bd d_index_14_inst
(
	.io_out /* BUS */ (xd_14_out),
	.io_oe /* BUS */ (xd_14_oe),
	.io_in /* BUS */ (xd_14_in),
	.zi /* OUT */ (din_14),
	.po /* OUT */ (nt_41),
	.a /* IN */ (dout_14),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_obuf),
	.pi /* IN */ (nt_40)
);

// JERRY.NET (131) - d[15] : bd8t
bd d_index_15_inst
(
	.io_out /* BUS */ (xd_15_out),
	.io_oe /* BUS */ (xd_15_oe),
	.io_in /* BUS */ (xd_15_in),
	.zi /* OUT */ (din_15),
	.po /* OUT */ (nt_40),
	.a /* IN */ (dout_15),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_obuf),
	.pi /* IN */ (nt_39)
);

// JERRY.NET (133) - d[16] : bd8t
bd d_index_16_inst
(
	.io_out /* BUS */ (xd_16_out),
	.io_oe /* BUS */ (xd_16_oe),
	.io_in /* BUS */ (xd_16_in),
	.zi /* OUT */ (din_16),
	.po /* OUT */ (nt_39),
	.a /* IN */ (dout_16),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_obuf),
	.pi /* IN */ (nt_38)
);

// JERRY.NET (134) - d[17] : bd8t
bd d_index_17_inst
(
	.io_out /* BUS */ (xd_17_out),
	.io_oe /* BUS */ (xd_17_oe),
	.io_in /* BUS */ (xd_17_in),
	.zi /* OUT */ (din_17),
	.po /* OUT */ (nt_38),
	.a /* IN */ (dout_17),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_obuf),
	.pi /* IN */ (nt_37)
);

// JERRY.NET (135) - d[18] : bd8t
bd d_index_18_inst
(
	.io_out /* BUS */ (xd_18_out),
	.io_oe /* BUS */ (xd_18_oe),
	.io_in /* BUS */ (xd_18_in),
	.zi /* OUT */ (din_18),
	.po /* OUT */ (nt_37),
	.a /* IN */ (dout_18),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_obuf),
	.pi /* IN */ (nt_36)
);

// JERRY.NET (136) - d[19] : bd8t
bd d_index_19_inst
(
	.io_out /* BUS */ (xd_19_out),
	.io_oe /* BUS */ (xd_19_oe),
	.io_in /* BUS */ (xd_19_in),
	.zi /* OUT */ (din_19),
	.po /* OUT */ (nt_36),
	.a /* IN */ (dout_19),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_obuf),
	.pi /* IN */ (nt_35)
);

// JERRY.NET (137) - d[20] : bd8t
bd d_index_20_inst
(
	.io_out /* BUS */ (xd_20_out),
	.io_oe /* BUS */ (xd_20_oe),
	.io_in /* BUS */ (xd_20_in),
	.zi /* OUT */ (din_20),
	.po /* OUT */ (nt_35),
	.a /* IN */ (dout_20),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_obuf),
	.pi /* IN */ (nt_34)
);

// JERRY.NET (138) - d[21] : bd8t
bd d_index_21_inst
(
	.io_out /* BUS */ (xd_21_out),
	.io_oe /* BUS */ (xd_21_oe),
	.io_in /* BUS */ (xd_21_in),
	.zi /* OUT */ (din_21),
	.po /* OUT */ (nt_34),
	.a /* IN */ (dout_21),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_obuf),
	.pi /* IN */ (nt_33)
);

// JERRY.NET (139) - d[22] : bd8t
bd d_index_22_inst
(
	.io_out /* BUS */ (xd_22_out),
	.io_oe /* BUS */ (xd_22_oe),
	.io_in /* BUS */ (xd_22_in),
	.zi /* OUT */ (din_22),
	.po /* OUT */ (nt_33),
	.a /* IN */ (dout_22),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_obuf),
	.pi /* IN */ (nt_32)
);

// JERRY.NET (140) - d[23] : bd8t
bd d_index_23_inst
(
	.io_out /* BUS */ (xd_23_out),
	.io_oe /* BUS */ (xd_23_oe),
	.io_in /* BUS */ (xd_23_in),
	.zi /* OUT */ (din_23),
	.po /* OUT */ (nt_32),
	.a /* IN */ (dout_23),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_obuf),
	.pi /* IN */ (nt_31)
);

// JERRY.NET (141) - d[24] : bd8t
bd d_index_24_inst
(
	.io_out /* BUS */ (xd_24_out),
	.io_oe /* BUS */ (xd_24_oe),
	.io_in /* BUS */ (xd_24_in),
	.zi /* OUT */ (din_24),
	.po /* OUT */ (nt_31),
	.a /* IN */ (dout_24),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_obuf),
	.pi /* IN */ (nt_30)
);

// JERRY.NET (142) - d[25] : bd8t
bd d_index_25_inst
(
	.io_out /* BUS */ (xd_25_out),
	.io_oe /* BUS */ (xd_25_oe),
	.io_in /* BUS */ (xd_25_in),
	.zi /* OUT */ (din_25),
	.po /* OUT */ (nt_30),
	.a /* IN */ (dout_25),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_obuf),
	.pi /* IN */ (nt_29)
);

// JERRY.NET (143) - d[26] : bd8t
bd d_index_26_inst
(
	.io_out /* BUS */ (xd_26_out),
	.io_oe /* BUS */ (xd_26_oe),
	.io_in /* BUS */ (xd_26_in),
	.zi /* OUT */ (din_26),
	.po /* OUT */ (nt_29),
	.a /* IN */ (dout_26),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_obuf),
	.pi /* IN */ (nt_28)
);

// JERRY.NET (144) - d[27] : bd8t
bd d_index_27_inst
(
	.io_out /* BUS */ (xd_27_out),
	.io_oe /* BUS */ (xd_27_oe),
	.io_in /* BUS */ (xd_27_in),
	.zi /* OUT */ (din_27),
	.po /* OUT */ (nt_28),
	.a /* IN */ (dout_27),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_obuf),
	.pi /* IN */ (nt_27)
);

// JERRY.NET (145) - d[28] : bd8t
bd d_index_28_inst
(
	.io_out /* BUS */ (xd_28_out),
	.io_oe /* BUS */ (xd_28_oe),
	.io_in /* BUS */ (xd_28_in),
	.zi /* OUT */ (din_28),
	.po /* OUT */ (nt_27),
	.a /* IN */ (dout_28),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_obuf),
	.pi /* IN */ (nt_26)
);

// JERRY.NET (146) - d[29] : bd8t
bd d_index_29_inst
(
	.io_out /* BUS */ (xd_29_out),
	.io_oe /* BUS */ (xd_29_oe),
	.io_in /* BUS */ (xd_29_in),
	.zi /* OUT */ (din_29),
	.po /* OUT */ (nt_26),
	.a /* IN */ (dout_29),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_obuf),
	.pi /* IN */ (nt_25)
);

// JERRY.NET (147) - d[30] : bd8t
bd d_index_30_inst
(
	.io_out /* BUS */ (xd_30_out),
	.io_oe /* BUS */ (xd_30_oe),
	.io_in /* BUS */ (xd_30_in),
	.zi /* OUT */ (din_30),
	.po /* OUT */ (nt_25),
	.a /* IN */ (dout_30),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_obuf),
	.pi /* IN */ (nt_24)
);

// JERRY.NET (148) - d[31] : bd8t
bd d_index_31_inst
(
	.io_out /* BUS */ (xd_31_out),
	.io_oe /* BUS */ (xd_31_oe),
	.io_in /* BUS */ (xd_31_in),
	.zi /* OUT */ (din_31),
	.po /* OUT */ (nt_24),
	.a /* IN */ (dout_31),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_obuf),
	.pi /* IN */ (nt_23)
);

// JERRY.NET (150) - a[0] : bd8t
bd a_index_0_inst
(
	.io_out /* BUS */ (xa_0_out),
	.io_oe /* BUS */ (xa_0_oe),
	.io_in /* BUS */ (xa_0_in),
	.zi /* OUT */ (ain_0),
	.po /* OUT */ (nt_79),
	.a /* IN */ (aout_0),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_78)
);

// JERRY.NET (151) - a[1] : bd8t
bd a_index_1_inst
(
	.io_out /* BUS */ (xa_1_out),
	.io_oe /* BUS */ (xa_1_oe),
	.io_in /* BUS */ (xa_1_in),
	.zi /* OUT */ (ain_1),
	.po /* OUT */ (nt_78),
	.a /* IN */ (aout_1),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_77)
);

// JERRY.NET (152) - a[2] : bd8t
bd a_index_2_inst
(
	.io_out /* BUS */ (xa_2_out),
	.io_oe /* BUS */ (xa_2_oe),
	.io_in /* BUS */ (xa_2_in),
	.zi /* OUT */ (ain_2),
	.po /* OUT */ (nt_77),
	.a /* IN */ (aout_2),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_76)
);

// JERRY.NET (153) - a[3] : bd8t
bd a_index_3_inst
(
	.io_out /* BUS */ (xa_3_out),
	.io_oe /* BUS */ (xa_3_oe),
	.io_in /* BUS */ (xa_3_in),
	.zi /* OUT */ (ain_3),
	.po /* OUT */ (nt_76),
	.a /* IN */ (aout_3),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_75)
);

// JERRY.NET (154) - a[4] : bd8t
bd a_index_4_inst
(
	.io_out /* BUS */ (xa_4_out),
	.io_oe /* BUS */ (xa_4_oe),
	.io_in /* BUS */ (xa_4_in),
	.zi /* OUT */ (ain_4),
	.po /* OUT */ (nt_75),
	.a /* IN */ (aout_4),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_74)
);

// JERRY.NET (155) - a[5] : bd8t
bd a_index_5_inst
(
	.io_out /* BUS */ (xa_5_out),
	.io_oe /* BUS */ (xa_5_oe),
	.io_in /* BUS */ (xa_5_in),
	.zi /* OUT */ (ain_5),
	.po /* OUT */ (nt_74),
	.a /* IN */ (aout_5),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_73)
);

// JERRY.NET (156) - a[6] : bd8t
bd a_index_6_inst
(
	.io_out /* BUS */ (xa_6_out),
	.io_oe /* BUS */ (xa_6_oe),
	.io_in /* BUS */ (xa_6_in),
	.zi /* OUT */ (ain_6),
	.po /* OUT */ (nt_73),
	.a /* IN */ (aout_6),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_72)
);

// JERRY.NET (157) - a[7] : bd8t
bd a_index_7_inst
(
	.io_out /* BUS */ (xa_7_out),
	.io_oe /* BUS */ (xa_7_oe),
	.io_in /* BUS */ (xa_7_in),
	.zi /* OUT */ (ain_7),
	.po /* OUT */ (nt_72),
	.a /* IN */ (aout_7),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_71)
);

// JERRY.NET (158) - a[8] : bd8t
bd a_index_8_inst
(
	.io_out /* BUS */ (xa_8_out),
	.io_oe /* BUS */ (xa_8_oe),
	.io_in /* BUS */ (xa_8_in),
	.zi /* OUT */ (ain_8),
	.po /* OUT */ (nt_71),
	.a /* IN */ (aout_8),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_70)
);

// JERRY.NET (159) - a[9] : bd8t
bd a_index_9_inst
(
	.io_out /* BUS */ (xa_9_out),
	.io_oe /* BUS */ (xa_9_oe),
	.io_in /* BUS */ (xa_9_in),
	.zi /* OUT */ (ain_9),
	.po /* OUT */ (nt_70),
	.a /* IN */ (aout_9),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_69)
);

// JERRY.NET (160) - a[10] : bd8t
bd a_index_10_inst
(
	.io_out /* BUS */ (xa_10_out),
	.io_oe /* BUS */ (xa_10_oe),
	.io_in /* BUS */ (xa_10_in),
	.zi /* OUT */ (ain_10),
	.po /* OUT */ (nt_69),
	.a /* IN */ (aout_10),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_68)
);

// JERRY.NET (161) - a[11] : bd8t
bd a_index_11_inst
(
	.io_out /* BUS */ (xa_11_out),
	.io_oe /* BUS */ (xa_11_oe),
	.io_in /* BUS */ (xa_11_in),
	.zi /* OUT */ (ain_11),
	.po /* OUT */ (nt_68),
	.a /* IN */ (aout_11),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_67)
);

// JERRY.NET (162) - a[12] : bd8t
bd a_index_12_inst
(
	.io_out /* BUS */ (xa_12_out),
	.io_oe /* BUS */ (xa_12_oe),
	.io_in /* BUS */ (xa_12_in),
	.zi /* OUT */ (ain_12),
	.po /* OUT */ (nt_67),
	.a /* IN */ (aout_12),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_66)
);

// JERRY.NET (163) - a[13] : bd8t
bd a_index_13_inst
(
	.io_out /* BUS */ (xa_13_out),
	.io_oe /* BUS */ (xa_13_oe),
	.io_in /* BUS */ (xa_13_in),
	.zi /* OUT */ (ain_13),
	.po /* OUT */ (nt_66),
	.a /* IN */ (aout_13),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_65)
);

// JERRY.NET (164) - a[14] : bd8t
bd a_index_14_inst
(
	.io_out /* BUS */ (xa_14_out),
	.io_oe /* BUS */ (xa_14_oe),
	.io_in /* BUS */ (xa_14_in),
	.zi /* OUT */ (ain_14),
	.po /* OUT */ (nt_65),
	.a /* IN */ (aout_14),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_64)
);

// JERRY.NET (165) - a[15] : bd8t
bd a_index_15_inst
(
	.io_out /* BUS */ (xa_15_out),
	.io_oe /* BUS */ (xa_15_oe),
	.io_in /* BUS */ (xa_15_in),
	.zi /* OUT */ (ain_15),
	.po /* OUT */ (nt_64),
	.a /* IN */ (aout_15),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_63)
);

// JERRY.NET (166) - a[16] : bd8t
bd a_index_16_inst
(
	.io_out /* BUS */ (xa_16_out),
	.io_oe /* BUS */ (xa_16_oe),
	.io_in /* BUS */ (xa_16_in),
	.zi /* OUT */ (ain_16),
	.po /* OUT */ (nt_63),
	.a /* IN */ (aout_16),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_62)
);

// JERRY.NET (167) - a[17] : bd8t
bd a_index_17_inst
(
	.io_out /* BUS */ (xa_17_out),
	.io_oe /* BUS */ (xa_17_oe),
	.io_in /* BUS */ (xa_17_in),
	.zi /* OUT */ (ain_17),
	.po /* OUT */ (nt_62),
	.a /* IN */ (aout_17),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_61)
);

// JERRY.NET (168) - a[18] : bd8t
bd a_index_18_inst
(
	.io_out /* BUS */ (xa_18_out),
	.io_oe /* BUS */ (xa_18_oe),
	.io_in /* BUS */ (xa_18_in),
	.zi /* OUT */ (ain_18),
	.po /* OUT */ (nt_61),
	.a /* IN */ (aout_18),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_60)
);

// JERRY.NET (169) - a[19] : bd8t
bd a_index_19_inst
(
	.io_out /* BUS */ (xa_19_out),
	.io_oe /* BUS */ (xa_19_oe),
	.io_in /* BUS */ (xa_19_in),
	.zi /* OUT */ (ain_19),
	.po /* OUT */ (nt_60),
	.a /* IN */ (aout_19),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_59)
);

// JERRY.NET (170) - a[20] : bd8t
bd a_index_20_inst
(
	.io_out /* BUS */ (xa_20_out),
	.io_oe /* BUS */ (xa_20_oe),
	.io_in /* BUS */ (xa_20_in),
	.zi /* OUT */ (ain_20),
	.po /* OUT */ (nt_59),
	.a /* IN */ (aout_20),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_58)
);

// JERRY.NET (171) - a[21] : bd8t
bd a_index_21_inst
(
	.io_out /* BUS */ (xa_21_out),
	.io_oe /* BUS */ (xa_21_oe),
	.io_in /* BUS */ (xa_21_in),
	.zi /* OUT */ (ain_21),
	.po /* OUT */ (nt_58),
	.a /* IN */ (aout_21),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_57)
);

// JERRY.NET (172) - a[22] : bd8t
bd a_index_22_inst
(
	.io_out /* BUS */ (xa_22_out),
	.io_oe /* BUS */ (xa_22_oe),
	.io_in /* BUS */ (xa_22_in),
	.zi /* OUT */ (ain_22),
	.po /* OUT */ (nt_57),
	.a /* IN */ (aout_22),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_56)
);

// JERRY.NET (173) - a[23] : bd8t
bd a_index_23_inst
(
	.io_out /* BUS */ (xa_23_out),
	.io_oe /* BUS */ (xa_23_oe),
	.io_in /* BUS */ (xa_23_in),
	.zi /* OUT */ (ain_23),
	.po /* OUT */ (nt_56),
	.a /* IN */ (aout_23),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_55)
);

// JERRY.NET (175) - oe[0] : ibuf
assign oel_0 = xoel_0;
assign nt_5 = ~(xoel_0 & nt_4);

// JERRY.NET (176) - we[0] : ibuf
assign wel_0 = xwel_0;
assign nt_6 = ~(xwel_0 & nt_5);

// JERRY.NET (178) - pclkosc : ibuf
assign pclkosc = xpclkosc;
assign nt_1 = ~(xpclkosc & nt_0);

// JERRY.NET (179) - pclkin : ibuf
assign pclkin = xpclkin;
assign nt_2 = ~(xpclkin & nt_1);

// JERRY.NET (180) - pclkout : b8h
assign xpclkout = pclkout;

// JERRY.NET (181) - cpuclk : b8h
assign xcpuclk = cpuclk;

// JERRY.NET (182) - vclk : bd8t
bd vclk_inst
(
	.io_out /* BUS */ (xvclk_out),
	.io_oe /* BUS */ (xvclk_oe),
	.io_in /* BUS */ (xvclk_in),
	.zi /* OUT */ (vclkin),
	.po /* OUT */ (nt_0),
	.a /* IN */ (chrclk),
	.en /* IN */ (gnd),
	.tn /* IN */ (vclken),
	.pi /* IN */ (vcc)
);

// JERRY.NET (183) - pclkdiv : b8
assign xpclkdiv = pclkdiv;

// JERRY.NET (184) - vclkdiv : b8
assign xvclkdiv = vclkdiv;

// JERRY.NET (185) - chrdiv : b8
assign xchrdiv = chrdiv;

// JERRY.NET (187) - reseti : ibuf
assign resetli = xresetil;
assign nt_8 = ~(xresetil & nt_7);

// JERRY.NET (188) - resetl : b8
assign xresetl = resetl;

// JERRY.NET (190) - siz[0-1] : bt8
bt siz_from_0_to_1_inst_0
(
	.z_out /* BUS */ (xsiz_0_out),
	.z_oe /* BUS */ (xsiz_0_oe),
	.z_in /* BUS */ (xsiz_0_in),
	.a /* IN */ (siz_0),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf)
);
bt siz_from_0_to_1_inst_1
(
	.z_out /* BUS */ (xsiz_1_out),
	.z_oe /* BUS */ (xsiz_1_oe),
	.z_in /* BUS */ (xsiz_1_in),
	.a /* IN */ (siz_1),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf)
);

// JERRY.NET (192) - rw : bt8
bt rw_inst
(
	.z_out /* BUS */ (xrw_out),
	.z_oe /* BUS */ (xrw_oe),
	.z_in /* BUS */ (xrw_in),
	.a /* IN */ (rws),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf)
);

// JERRY.NET (193) - dreq : bt8
bt dreq_inst
(
	.z_out /* BUS */ (xdreql_out),
	.z_oe /* BUS */ (xdreql_oe),
	.z_in /* BUS */ (xdreql_in),
	.a /* IN */ (dreql),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf)
);

// JERRY.NET (195) - dtack : ibuf
assign dtackl = xdtackl;
assign nt_4 = ~(xdtackl & nt_3);

// JERRY.NET (197) - dbrl[0-1] : b8
assign xdbrl_0 = dbrls_0;
assign xdbrl_1 = dbrls_1;

// JERRY.NET (198) - dbgl : ibuf
assign dbgl = xdbgl;
assign nt_7 = ~(xdbgl & nt_6);

// JERRY.NET (199) - dspcsl : ibuf
assign dspcsl = xdspcsl;
assign nt_3 = ~(xdspcsl & nt_2);

// JERRY.NET (203) - intlt : mx2p
assign intt = (ndtest) ? nt_79 : _int;

// JERRY.NET (204) - xint : b8
assign xint = intt;

// JERRY.NET (206) - test : ibuf
assign test = xtest;
assign nt_9 = ~(xtest & nt_8);

// JERRY.NET (208) - serin : ibuf
assign serin = xserin;
assign nt_20 = ~(xserin & nt_19);

// JERRY.NET (209) - serout : b8
assign xserout = serout;

// JERRY.NET (211) - sck : bd8t
bd sck_inst
(
	.io_out /* BUS */ (xsck_out),
	.io_oe /* BUS */ (xsck_oe),
	.io_in /* BUS */ (xsck_in),
	.zi /* OUT */ (sck),
	.po /* OUT */ (nt_21),
	.a /* IN */ (sckout),
	.en /* IN */ (gnd),
	.tn /* IN */ (i2sen),
	.pi /* IN */ (nt_20)
);

// JERRY.NET (212) - ws : bd8t
bd ws_inst
(
	.io_out /* BUS */ (xws_out),
	.io_oe /* BUS */ (xws_oe),
	.io_in /* BUS */ (xws_in),
	.zi /* OUT */ (ws),
	.po /* OUT */ (nt_22),
	.a /* IN */ (wsout),
	.en /* IN */ (gnd),
	.tn /* IN */ (i2sen),
	.pi /* IN */ (nt_21)
);

// JERRY.NET (213) - i2srxd : ibuf
assign i2srxd = xi2srxd;
assign nt_23 = ~(xi2srxd & nt_22);

// JERRY.NET (214) - i2stxd : b8
assign xi2stxd = i2stxd;

// JERRY.NET (216) - eint[0-1] : ibuf
assign eint_0 = xeint_0;
assign nt_10 = ~(xeint_0 & nt_9);
assign eint_1 = xeint_1;
assign nt_11 = ~(xeint_1 & nt_10);

// JERRY.NET (223) - joy[0] : bd8t
bd joy_index_0_inst
(
	.io_out /* BUS */ (xjoy_0_out),
	.io_oe /* BUS */ (xjoy_0_oe),
	.io_in /* BUS */ (xjoy_0_in),
	.zi /* OUT */ (cfg_0),
	.po /* OUT */ (nt_16),
	.a /* IN */ (joy1rl),
	.en /* IN */ (gnd),
	.tn /* IN */ (cfgen),
	.pi /* IN */ (nt_15)
);

// JERRY.NET (224) - joy[1] : bd8t
bd joy_index_1_inst
(
	.io_out /* BUS */ (xjoy_1_out),
	.io_oe /* BUS */ (xjoy_1_oe),
	.io_in /* BUS */ (xjoy_1_in),
	.zi /* OUT */ (cfg_1),
	.po /* OUT */ (nt_17),
	.a /* IN */ (joy2rl),
	.en /* IN */ (gnd),
	.tn /* IN */ (cfgen),
	.pi /* IN */ (nt_16)
);

// JERRY.NET (225) - joy[2] : bd8t
bd joy_index_2_inst
(
	.io_out /* BUS */ (xjoy_2_out),
	.io_oe /* BUS */ (xjoy_2_oe),
	.io_in /* BUS */ (xjoy_2_in),
	.zi /* OUT */ (cfg_2),
	.po /* OUT */ (nt_18),
	.a /* IN */ (joy1wl),
	.en /* IN */ (gnd),
	.tn /* IN */ (cfgen),
	.pi /* IN */ (nt_17)
);

// JERRY.NET (226) - joy[3] : bd8t
bd joy_index_3_inst
(
	.io_out /* BUS */ (xjoy_3_out),
	.io_oe /* BUS */ (xjoy_3_oe),
	.io_in /* BUS */ (xjoy_3_in),
	.zi /* OUT */ (cfg_3),
	.po /* OUT */ (nt_19),
	.a /* IN */ (joyenl),
	.en /* IN */ (gnd),
	.tn /* IN */ (cfgen),
	.pi /* IN */ (nt_18)
);

// JERRY.NET (227) - gpiol[0-3] : bd8t
bd gpiol_from_0_to_3_inst_0
(
	.io_out /* BUS */ (xgpiol_0_out),
	.io_oe /* BUS */ (xgpiol_0_oe),
	.io_in /* BUS */ (xgpiol_0_in),
	.zi /* OUT */ (cfg_4),
	.po /* OUT */ (nt_12),
	.a /* IN */ (gpiol_0),
	.en /* IN */ (gnd),
	.tn /* IN */ (cfgen),
	.pi /* IN */ (nt_11)
);
bd gpiol_from_0_to_3_inst_1
(
	.io_out /* BUS */ (xgpiol_1_out),
	.io_oe /* BUS */ (xgpiol_1_oe),
	.io_in /* BUS */ (xgpiol_1_in),
	.zi /* OUT */ (cfg_5),
	.po /* OUT */ (nt_13),
	.a /* IN */ (gpiol_1),
	.en /* IN */ (gnd),
	.tn /* IN */ (cfgen),
	.pi /* IN */ (nt_12)
);
bd gpiol_from_0_to_3_inst_2
(
	.io_out /* BUS */ (xgpiol_2_out),
	.io_oe /* BUS */ (xgpiol_2_oe),
	.io_in /* BUS */ (xgpiol_2_in),
	.zi /* OUT */ (cfg_6),
	.po /* OUT */ (nt_14),
	.a /* IN */ (gpiol_2),
	.en /* IN */ (gnd),
	.tn /* IN */ (cfgen),
	.pi /* IN */ (nt_13)
);
bd gpiol_from_0_to_3_inst_3
(
	.io_out /* BUS */ (xgpiol_3_out),
	.io_oe /* BUS */ (xgpiol_3_oe),
	.io_in /* BUS */ (xgpiol_3_in),
	.zi /* OUT */ (cfg_7),
	.po /* OUT */ (nt_15),
	.a /* IN */ (gpiol_3),
	.en /* IN */ (gnd),
	.tn /* IN */ (cfgen),
	.pi /* IN */ (nt_14)
);

// JERRY.NET (228) - gpiol[4-5] : b8
assign xgpiol_4 = gpiol_4;
assign xgpiol_5 = gpiol_5;

// JERRY.NET (229) - cfgu[0-7] : dummy

// JERRY.NET (231) - iordl : b8
assign xiordl = iordl;

// JERRY.NET (232) - iowrl : b8
assign xiowrl = iowrl;

// JERRY.NET (234) - rdac[0-1] : b8
assign xrdac_0 = rdac_0;
assign xrdac_1 = rdac_1;

// JERRY.NET (235) - ldac[0-1] : b8
assign xldac_0 = ldac_0;
assign xldac_1 = ldac_1;

// JERRY.NET (237) - chrclk : osc4c
osc4c chrclk_inst
(
	.z0 /* OUT */ (xchrout),
	.z1 /* OUT */ (chrclk),
	.a /* IN */ (xchrin)
);

// JERRY.NET (239) - gnd : tie0
assign gnd = 1'b0;

// JERRY.NET (240) - vcc : tie1
assign vcc = 1'b1;

// JERRY.NET (248) - nottest : iv
assign nottest = ~test;

// JERRY.NET (249) - testen : or2
assign testen = nottest | eint_0;

// JERRY.NET (252) - dsp : dsp
j_dsp dsp_inst
(
	.ima_0 /* IN */ (aout_0),
	.ima_1 /* IN */ (aout_1),
	.ima_2 /* IN */ (aout_2),
	.ima_3 /* IN */ (aout_3),
	.ima_4 /* IN */ (aout_4),
	.ima_5 /* IN */ (aout_5),
	.ima_6 /* IN */ (aout_6),
	.ima_7 /* IN */ (aout_7),
	.ima_8 /* IN */ (aout_8),
	.ima_9 /* IN */ (aout_9),
	.ima_10 /* IN */ (aout_10),
	.ima_11 /* IN */ (aout_11),
	.ima_12 /* IN */ (aout_12),
	.ima_13 /* IN */ (aout_13),
	.ima_14 /* IN */ (aout_14),
	.ima_15 /* IN */ (aout_15),
	.dout_0 /* IN */ (dout_0),
	.dout_1 /* IN */ (dout_1),
	.dout_2 /* IN */ (dout_2),
	.dout_3 /* IN */ (dout_3),
	.dout_4 /* IN */ (dout_4),
	.dout_5 /* IN */ (dout_5),
	.dout_6 /* IN */ (dout_6),
	.dout_7 /* IN */ (dout_7),
	.dout_8 /* IN */ (dout_8),
	.dout_9 /* IN */ (dout_9),
	.dout_10 /* IN */ (dout_10),
	.dout_11 /* IN */ (dout_11),
	.dout_12 /* IN */ (dout_12),
	.dout_13 /* IN */ (dout_13),
	.dout_14 /* IN */ (dout_14),
	.dout_15 /* IN */ (dout_15),
	.dout_16 /* IN */ (dout_16),
	.dout_17 /* IN */ (dout_17),
	.dout_18 /* IN */ (dout_18),
	.dout_19 /* IN */ (dout_19),
	.dout_20 /* IN */ (dout_20),
	.dout_21 /* IN */ (dout_21),
	.dout_22 /* IN */ (dout_22),
	.dout_23 /* IN */ (dout_23),
	.dout_24 /* IN */ (dout_24),
	.dout_25 /* IN */ (dout_25),
	.dout_26 /* IN */ (dout_26),
	.dout_27 /* IN */ (dout_27),
	.dout_28 /* IN */ (dout_28),
	.dout_29 /* IN */ (dout_29),
	.dout_30 /* IN */ (dout_30),
	.dout_31 /* IN */ (dout_31),
	.ack /* IN */ (ack),
	.gpu_back /* IN */ (dbgl),
	.reset_n /* IN */ (resetl_0),
	.clk /* IN */ (clk),
	.eint_n_0 /* IN */ (eint_0),
	.eint_n_1 /* IN */ (eint_1),
	.tint_0 /* IN */ (tint_0),
	.tint_1 /* IN */ (tint_1),
	.i2int /* IN */ (i2int),
	.iord /* IN */ (dspread),
	.iowr /* IN */ (dspwrite),
	.tlw /* IN */ (tlw),
	.gpu_breq /* OUT */ (dbrl_0),
	.dma_breq /* OUT */ (dbrl_1),
	.cpu_int /* OUT */ (dint),
	.wdata_0 /* OUT */ (wd_0),
	.wdata_1 /* OUT */ (wd_1),
	.wdata_2 /* OUT */ (wd_2),
	.wdata_3 /* OUT */ (wd_3),
	.wdata_4 /* OUT */ (wd_4),
	.wdata_5 /* OUT */ (wd_5),
	.wdata_6 /* OUT */ (wd_6),
	.wdata_7 /* OUT */ (wd_7),
	.wdata_8 /* OUT */ (wd_8),
	.wdata_9 /* OUT */ (wd_9),
	.wdata_10 /* OUT */ (wd_10),
	.wdata_11 /* OUT */ (wd_11),
	.wdata_12 /* OUT */ (wd_12),
	.wdata_13 /* OUT */ (wd_13),
	.wdata_14 /* OUT */ (wd_14),
	.wdata_15 /* OUT */ (wd_15),
	.wdata_16 /* OUT */ (wd_16),
	.wdata_17 /* OUT */ (wd_17),
	.wdata_18 /* OUT */ (wd_18),
	.wdata_19 /* OUT */ (wd_19),
	.wdata_20 /* OUT */ (wd_20),
	.wdata_21 /* OUT */ (wd_21),
	.wdata_22 /* OUT */ (wd_22),
	.wdata_23 /* OUT */ (wd_23),
	.wdata_24 /* OUT */ (wd_24),
	.wdata_25 /* OUT */ (wd_25),
	.wdata_26 /* OUT */ (wd_26),
	.wdata_27 /* OUT */ (wd_27),
	.wdata_28 /* OUT */ (wd_28),
	.wdata_29 /* OUT */ (wd_29),
	.wdata_30 /* OUT */ (wd_30),
	.wdata_31 /* OUT */ (wd_31),
	.a_0 /* OUT */ (a_0),
	.a_1 /* OUT */ (a_1),
	.a_2 /* OUT */ (a_2),
	.a_3 /* OUT */ (a_3),
	.a_4 /* OUT */ (a_4),
	.a_5 /* OUT */ (a_5),
	.a_6 /* OUT */ (a_6),
	.a_7 /* OUT */ (a_7),
	.a_8 /* OUT */ (a_8),
	.a_9 /* OUT */ (a_9),
	.a_10 /* OUT */ (a_10),
	.a_11 /* OUT */ (a_11),
	.a_12 /* OUT */ (a_12),
	.a_13 /* OUT */ (a_13),
	.a_14 /* OUT */ (a_14),
	.a_15 /* OUT */ (a_15),
	.a_16 /* OUT */ (a_16),
	.a_17 /* OUT */ (a_17),
	.a_18 /* OUT */ (a_18),
	.a_19 /* OUT */ (a_19),
	.a_20 /* OUT */ (a_20),
	.a_21 /* OUT */ (a_21),
	.a_22 /* OUT */ (a_22),
	.a_23 /* OUT */ (a_23),
	.width_0 /* OUT */ (w_0),
	.width_1 /* OUT */ (w_1),
	.width_2 /* OUT */ (w_2),
	.read /* OUT */ (rw),
	.mreq /* OUT */ (mreq),
	.dacw_0 /* OUT */ (dac1w),
	.dacw_1 /* OUT */ (dac2w),
	.gpu_din_0 /* OUT */ (dspwd_0),
	.gpu_din_1 /* OUT */ (dspwd_1),
	.gpu_din_2 /* OUT */ (dspwd_2),
	.gpu_din_3 /* OUT */ (dspwd_3),
	.gpu_din_4 /* OUT */ (dspwd_4),
	.gpu_din_5 /* OUT */ (dspwd_5),
	.gpu_din_6 /* OUT */ (dspwd_6),
	.gpu_din_7 /* OUT */ (dspwd_7),
	.gpu_din_8 /* OUT */ (dspwd_8),
	.gpu_din_9 /* OUT */ (dspwd_9),
	.gpu_din_10 /* OUT */ (dspwd_10),
	.gpu_din_11 /* OUT */ (dspwd_11),
	.gpu_din_12 /* OUT */ (dspwd_12),
	.gpu_din_13 /* OUT */ (dspwd_13),
	.gpu_din_14 /* OUT */ (dspwd_14),
	.gpu_din_15 /* OUT */ (dspwd_15),
	.i2sw_0 /* OUT */ (i2s1w),
	.i2sw_1 /* OUT */ (i2s2w),
	.i2sw_2 /* OUT */ (i2s3w),
	.i2sw_3 /* OUT */ (i2s4w),
	.i2sr_0 /* OUT */ (i2s1r),
	.i2sr_1 /* OUT */ (i2s2r),
	.i2sr_2 /* OUT */ (i2s3r),
	.dr_0_out /* BUS */ (ts_local_pe_183_a0_out),
	.dr_0_oe /* BUS */ (ts_local_pe_183_a0_oe),
	.dr_0_in /* BUS */ (ts_local_pe_183_a0_in),
	.dr_1_out /* BUS */ (ts_local_pe_184_a0_out),
	.dr_1_oe /* BUS */ (ts_local_pe_184_a0_oe),
	.dr_1_in /* BUS */ (ts_local_pe_184_a0_in),
	.dr_2_out /* BUS */ (ts_local_pe_185_a0_out),
	.dr_2_oe /* BUS */ (ts_local_pe_185_a0_oe),
	.dr_2_in /* BUS */ (ts_local_pe_185_a0_in),
	.dr_3_out /* BUS */ (ts_local_pe_186_a0_out),
	.dr_3_oe /* BUS */ (ts_local_pe_186_a0_oe),
	.dr_3_in /* BUS */ (ts_local_pe_186_a0_in),
	.dr_4_out /* BUS */ (ts_local_pe_187_a0_out),
	.dr_4_oe /* BUS */ (ts_local_pe_187_a0_oe),
	.dr_4_in /* BUS */ (ts_local_pe_187_a0_in),
	.dr_5_out /* BUS */ (ts_local_pe_188_a0_out),
	.dr_5_oe /* BUS */ (ts_local_pe_188_a0_oe),
	.dr_5_in /* BUS */ (ts_local_pe_188_a0_in),
	.dr_6_out /* BUS */ (ts_local_pe_189_a0_out),
	.dr_6_oe /* BUS */ (ts_local_pe_189_a0_oe),
	.dr_6_in /* BUS */ (ts_local_pe_189_a0_in),
	.dr_7_out /* BUS */ (ts_local_pe_190_a0_out),
	.dr_7_oe /* BUS */ (ts_local_pe_190_a0_oe),
	.dr_7_in /* BUS */ (ts_local_pe_190_a0_in),
	.dr_8_out /* BUS */ (ts_local_pe_191_a0_out),
	.dr_8_oe /* BUS */ (ts_local_pe_191_a0_oe),
	.dr_8_in /* BUS */ (ts_local_pe_191_a0_in),
	.dr_9_out /* BUS */ (ts_local_pe_192_a0_out),
	.dr_9_oe /* BUS */ (ts_local_pe_192_a0_oe),
	.dr_9_in /* BUS */ (ts_local_pe_192_a0_in),
	.dr_10_out /* BUS */ (ts_local_pe_193_a0_out),
	.dr_10_oe /* BUS */ (ts_local_pe_193_a0_oe),
	.dr_10_in /* BUS */ (ts_local_pe_193_a0_in),
	.dr_11_out /* BUS */ (ts_local_pe_194_a0_out),
	.dr_11_oe /* BUS */ (ts_local_pe_194_a0_oe),
	.dr_11_in /* BUS */ (ts_local_pe_194_a0_in),
	.dr_12_out /* BUS */ (ts_local_pe_195_a0_out),
	.dr_12_oe /* BUS */ (ts_local_pe_195_a0_oe),
	.dr_12_in /* BUS */ (ts_local_pe_195_a0_in),
	.dr_13_out /* BUS */ (ts_local_pe_196_a0_out),
	.dr_13_oe /* BUS */ (ts_local_pe_196_a0_oe),
	.dr_13_in /* BUS */ (ts_local_pe_196_a0_in),
	.dr_14_out /* BUS */ (ts_local_pe_197_a0_out),
	.dr_14_oe /* BUS */ (ts_local_pe_197_a0_oe),
	.dr_14_in /* BUS */ (ts_local_pe_197_a0_in),
	.dr_15_out /* BUS */ (ts_local_pe_198_a0_out),
	.dr_15_oe /* BUS */ (ts_local_pe_198_a0_oe),
	.dr_15_in /* BUS */ (ts_local_pe_198_a0_in),
	.gpu_dout_o_0_out /* BUS */ (ts_local_pe_167_a0_out),
	.gpu_dout_o_0_oe /* BUS */ (ts_local_pe_167_a0_oe),
	.gpu_dout_o_0_in /* BUS */ (ts_local_pe_167_a0_in),
	.gpu_dout_o_1_out /* BUS */ (ts_local_pe_168_a0_out),
	.gpu_dout_o_1_oe /* BUS */ (ts_local_pe_168_a0_oe),
	.gpu_dout_o_1_in /* BUS */ (ts_local_pe_168_a0_in),
	.gpu_dout_o_2_out /* BUS */ (ts_local_pe_169_a0_out),
	.gpu_dout_o_2_oe /* BUS */ (ts_local_pe_169_a0_oe),
	.gpu_dout_o_2_in /* BUS */ (ts_local_pe_169_a0_in),
	.gpu_dout_o_3_out /* BUS */ (ts_local_pe_170_a0_out),
	.gpu_dout_o_3_oe /* BUS */ (ts_local_pe_170_a0_oe),
	.gpu_dout_o_3_in /* BUS */ (ts_local_pe_170_a0_in),
	.gpu_dout_o_4_out /* BUS */ (ts_local_pe_171_a0_out),
	.gpu_dout_o_4_oe /* BUS */ (ts_local_pe_171_a0_oe),
	.gpu_dout_o_4_in /* BUS */ (ts_local_pe_171_a0_in),
	.gpu_dout_o_5_out /* BUS */ (ts_local_pe_172_a0_out),
	.gpu_dout_o_5_oe /* BUS */ (ts_local_pe_172_a0_oe),
	.gpu_dout_o_5_in /* BUS */ (ts_local_pe_172_a0_in),
	.gpu_dout_o_6_out /* BUS */ (ts_local_pe_173_a0_out),
	.gpu_dout_o_6_oe /* BUS */ (ts_local_pe_173_a0_oe),
	.gpu_dout_o_6_in /* BUS */ (ts_local_pe_173_a0_in),
	.gpu_dout_o_7_out /* BUS */ (ts_local_pe_174_a0_out),
	.gpu_dout_o_7_oe /* BUS */ (ts_local_pe_174_a0_oe),
	.gpu_dout_o_7_in /* BUS */ (ts_local_pe_174_a0_in),
	.gpu_dout_o_8_out /* BUS */ (ts_local_pe_175_a0_out),
	.gpu_dout_o_8_oe /* BUS */ (ts_local_pe_175_a0_oe),
	.gpu_dout_o_8_in /* BUS */ (ts_local_pe_175_a0_in),
	.gpu_dout_o_9_out /* BUS */ (ts_local_pe_176_a0_out),
	.gpu_dout_o_9_oe /* BUS */ (ts_local_pe_176_a0_oe),
	.gpu_dout_o_9_in /* BUS */ (ts_local_pe_176_a0_in),
	.gpu_dout_o_10_out /* BUS */ (ts_local_pe_177_a0_out),
	.gpu_dout_o_10_oe /* BUS */ (ts_local_pe_177_a0_oe),
	.gpu_dout_o_10_in /* BUS */ (ts_local_pe_177_a0_in),
	.gpu_dout_o_11_out /* BUS */ (ts_local_pe_178_a0_out),
	.gpu_dout_o_11_oe /* BUS */ (ts_local_pe_178_a0_oe),
	.gpu_dout_o_11_in /* BUS */ (ts_local_pe_178_a0_in),
	.gpu_dout_o_12_out /* BUS */ (ts_local_pe_179_a0_out),
	.gpu_dout_o_12_oe /* BUS */ (ts_local_pe_179_a0_oe),
	.gpu_dout_o_12_in /* BUS */ (ts_local_pe_179_a0_in),
	.gpu_dout_o_13_out /* BUS */ (ts_local_pe_180_a0_out),
	.gpu_dout_o_13_oe /* BUS */ (ts_local_pe_180_a0_oe),
	.gpu_dout_o_13_in /* BUS */ (ts_local_pe_180_a0_in),
	.gpu_dout_o_14_out /* BUS */ (ts_local_pe_181_a0_out),
	.gpu_dout_o_14_oe /* BUS */ (ts_local_pe_181_a0_oe),
	.gpu_dout_o_14_in /* BUS */ (ts_local_pe_181_a0_in),
	.gpu_dout_o_15_out /* BUS */ (ts_local_pe_182_a0_out),
	.gpu_dout_o_15_oe /* BUS */ (ts_local_pe_182_a0_oe),
	.gpu_dout_o_15_in /* BUS */ (ts_local_pe_182_a0_in),
	.sys_clk(sys_clk) // Generated
);

// JERRY.NET (263) - jiodec : jiodec
j_jiodec jiodec_inst
(
	.a_0 /* IN */ (aout_0),
	.a_1 /* IN */ (aout_1),
	.a_2 /* IN */ (aout_2),
	.a_3 /* IN */ (aout_3),
	.a_4 /* IN */ (aout_4),
	.a_5 /* IN */ (aout_5),
	.a_6 /* IN */ (aout_6),
	.a_7 /* IN */ (aout_7),
	.a_8 /* IN */ (aout_8),
	.a_9 /* IN */ (aout_9),
	.a_10 /* IN */ (aout_10),
	.a_11 /* IN */ (aout_11),
	.a_12 /* IN */ (aout_12),
	.a_13 /* IN */ (aout_13),
	.a_14 /* IN */ (aout_14),
	.a_15 /* IN */ (aout_15),
	.dspcsl /* IN */ (dspcsl),
	.wel0 /* IN */ (wel_0),
	.oel0 /* IN */ (oel_0),
	.dspen /* IN */ (dspen),
	.pit1w /* OUT */ (pit1w),
	.pit2w /* OUT */ (pit2w),
	.pit3w /* OUT */ (pit3w),
	.pit4w /* OUT */ (pit4w),
	.clk1w /* OUT */ (clk1w),
	.clk2w /* OUT */ (clk2w),
	.clk3w /* OUT */ (clk3w),
	.int1w /* OUT */ (int1w),
	.u2dwr /* OUT */ (u2dwr),
	.u2ctwr /* OUT */ (u2ctwr),
	.u2psclw /* OUT */ (u2psclw),
	.test1w /* OUT */ (test1w),
	.joy1rl /* OUT */ (joy1rl),
	.joy2rl /* OUT */ (joy2rl),
	.joy1wl /* OUT */ (joy1wl),
	.gpiol_0 /* OUT */ (gpiol_0),
	.gpiol_1 /* OUT */ (gpiol_1),
	.gpiol_2 /* OUT */ (gpiol_2),
	.gpiol_3 /* OUT */ (gpiol_3),
	.gpiol_4 /* OUT */ (gpiol_4),
	.gpiol_5 /* OUT */ (gpiol_5),
	.int1r /* OUT */ (int1r),
	.u2drd /* OUT */ (u2drd),
	.u2strd /* OUT */ (u2strd),
	.u2psclr /* OUT */ (u2psclr),
	.pit1r /* OUT */ (pit1r),
	.pit2r /* OUT */ (pit2r),
	.pit3r /* OUT */ (pit3r),
	.pit4r /* OUT */ (pit4r),
	.internal /* OUT */ (internal),
	.dr_0_out /* BUS */ (ts_local_pe_183_a1_out),
	.dr_0_oe /* BUS */ (ts_local_pe_183_a1_oe),
	.dr_0_in /* BUS */ (ts_local_pe_183_a1_in),
	.dr_1_out /* BUS */ (ts_local_pe_184_a1_out),
	.dr_1_oe /* BUS */ (ts_local_pe_184_a1_oe),
	.dr_1_in /* BUS */ (ts_local_pe_184_a1_in),
	.dr_2_out /* BUS */ (ts_local_pe_185_a1_out),
	.dr_2_oe /* BUS */ (ts_local_pe_185_a1_oe),
	.dr_2_in /* BUS */ (ts_local_pe_185_a1_in),
	.dr_3_out /* BUS */ (ts_local_pe_186_a1_out),
	.dr_3_oe /* BUS */ (ts_local_pe_186_a1_oe),
	.dr_3_in /* BUS */ (ts_local_pe_186_a1_in),
	.dr_4_out /* BUS */ (ts_local_pe_187_a1_out),
	.dr_4_oe /* BUS */ (ts_local_pe_187_a1_oe),
	.dr_4_in /* BUS */ (ts_local_pe_187_a1_in),
	.dr_5_out /* BUS */ (ts_local_pe_188_a1_out),
	.dr_5_oe /* BUS */ (ts_local_pe_188_a1_oe),
	.dr_5_in /* BUS */ (ts_local_pe_188_a1_in),
	.dr_6_out /* BUS */ (ts_local_pe_189_a1_out),
	.dr_6_oe /* BUS */ (ts_local_pe_189_a1_oe),
	.dr_6_in /* BUS */ (ts_local_pe_189_a1_in),
	.dr_7_out /* BUS */ (ts_local_pe_190_a1_out),
	.dr_7_oe /* BUS */ (ts_local_pe_190_a1_oe),
	.dr_7_in /* BUS */ (ts_local_pe_190_a1_in),
	.dr_8_out /* BUS */ (ts_local_pe_191_a1_out),
	.dr_8_oe /* BUS */ (ts_local_pe_191_a1_oe),
	.dr_8_in /* BUS */ (ts_local_pe_191_a1_in),
	.dr_9_out /* BUS */ (ts_local_pe_192_a1_out),
	.dr_9_oe /* BUS */ (ts_local_pe_192_a1_oe),
	.dr_9_in /* BUS */ (ts_local_pe_192_a1_in),
	.dr_10_out /* BUS */ (ts_local_pe_193_a1_out),
	.dr_10_oe /* BUS */ (ts_local_pe_193_a1_oe),
	.dr_10_in /* BUS */ (ts_local_pe_193_a1_in),
	.dr_11_out /* BUS */ (ts_local_pe_194_a1_out),
	.dr_11_oe /* BUS */ (ts_local_pe_194_a1_oe),
	.dr_11_in /* BUS */ (ts_local_pe_194_a1_in),
	.dr_12_out /* BUS */ (ts_local_pe_195_a1_out),
	.dr_12_oe /* BUS */ (ts_local_pe_195_a1_oe),
	.dr_12_in /* BUS */ (ts_local_pe_195_a1_in),
	.dr_13_out /* BUS */ (ts_local_pe_196_a1_out),
	.dr_13_oe /* BUS */ (ts_local_pe_196_a1_oe),
	.dr_13_in /* BUS */ (ts_local_pe_196_a1_in),
	.dr_14_out /* BUS */ (ts_local_pe_197_a1_out),
	.dr_14_oe /* BUS */ (ts_local_pe_197_a1_oe),
	.dr_14_in /* BUS */ (ts_local_pe_197_a1_in),
	.dr_15_out /* BUS */ (ts_local_pe_198_a1_out),
	.dr_15_oe /* BUS */ (ts_local_pe_198_a1_oe),
	.dr_15_in /* BUS */ (ts_local_pe_198_a1_in)
);

// JERRY.NET (288) - jbus : jbus
j_jbus jbus_inst
(
	.ain_0 /* IN */ (ain_0),
	.ain_1 /* IN */ (ain_1),
	.ain_2 /* IN */ (ain_2),
	.ain_3 /* IN */ (ain_3),
	.ain_4 /* IN */ (ain_4),
	.ain_5 /* IN */ (ain_5),
	.ain_6 /* IN */ (ain_6),
	.ain_7 /* IN */ (ain_7),
	.ain_8 /* IN */ (ain_8),
	.ain_9 /* IN */ (ain_9),
	.ain_10 /* IN */ (ain_10),
	.ain_11 /* IN */ (ain_11),
	.ain_12 /* IN */ (ain_12),
	.ain_13 /* IN */ (ain_13),
	.ain_14 /* IN */ (ain_14),
	.ain_15 /* IN */ (ain_15),
	.ain_16 /* IN */ (ain_16),
	.ain_17 /* IN */ (ain_17),
	.ain_18 /* IN */ (ain_18),
	.ain_19 /* IN */ (ain_19),
	.ain_20 /* IN */ (ain_20),
	.ain_21 /* IN */ (ain_21),
	.ain_22 /* IN */ (ain_22),
	.ain_23 /* IN */ (ain_23),
	.din_0 /* IN */ (din_0),
	.din_1 /* IN */ (din_1),
	.din_2 /* IN */ (din_2),
	.din_3 /* IN */ (din_3),
	.din_4 /* IN */ (din_4),
	.din_5 /* IN */ (din_5),
	.din_6 /* IN */ (din_6),
	.din_7 /* IN */ (din_7),
	.din_8 /* IN */ (din_8),
	.din_9 /* IN */ (din_9),
	.din_10 /* IN */ (din_10),
	.din_11 /* IN */ (din_11),
	.din_12 /* IN */ (din_12),
	.din_13 /* IN */ (din_13),
	.din_14 /* IN */ (din_14),
	.din_15 /* IN */ (din_15),
	.din_16 /* IN */ (din_16),
	.din_17 /* IN */ (din_17),
	.din_18 /* IN */ (din_18),
	.din_19 /* IN */ (din_19),
	.din_20 /* IN */ (din_20),
	.din_21 /* IN */ (din_21),
	.din_22 /* IN */ (din_22),
	.din_23 /* IN */ (din_23),
	.din_24 /* IN */ (din_24),
	.din_25 /* IN */ (din_25),
	.din_26 /* IN */ (din_26),
	.din_27 /* IN */ (din_27),
	.din_28 /* IN */ (din_28),
	.din_29 /* IN */ (din_29),
	.din_30 /* IN */ (din_30),
	.din_31 /* IN */ (din_31),
	.dr_0 /* IN */ (dr_0_in),
	.dr_1 /* IN */ (dr_1_in),
	.dr_2 /* IN */ (dr_2_in),
	.dr_3 /* IN */ (dr_3_in),
	.dr_4 /* IN */ (dr_4_in),
	.dr_5 /* IN */ (dr_5_in),
	.dr_6 /* IN */ (dr_6_in),
	.dr_7 /* IN */ (dr_7_in),
	.dr_8 /* IN */ (dr_8_in),
	.dr_9 /* IN */ (dr_9_in),
	.dr_10 /* IN */ (dr_10_in),
	.dr_11 /* IN */ (dr_11_in),
	.dr_12 /* IN */ (dr_12_in),
	.dr_13 /* IN */ (dr_13_in),
	.dr_14 /* IN */ (dr_14_in),
	.dr_15 /* IN */ (dr_15_in),
	.dinlatch_0 /* IN */ (dinlatch_0),
	.dinlatch_1 /* IN */ (dinlatch_1),
	.dmuxd_0 /* IN */ (dmuxd_0),
	.dmuxd_1 /* IN */ (dmuxd_1),
	.dmuxu_0 /* IN */ (dmuxu_0),
	.dmuxu_1 /* IN */ (dmuxu_1),
	.dren /* IN */ (dren),
	.xdsrc /* IN */ (xdsrc),
	.ack /* IN */ (ack),
	.wd_0 /* IN */ (wd_0),
	.wd_1 /* IN */ (wd_1),
	.wd_2 /* IN */ (wd_2),
	.wd_3 /* IN */ (wd_3),
	.wd_4 /* IN */ (wd_4),
	.wd_5 /* IN */ (wd_5),
	.wd_6 /* IN */ (wd_6),
	.wd_7 /* IN */ (wd_7),
	.wd_8 /* IN */ (wd_8),
	.wd_9 /* IN */ (wd_9),
	.wd_10 /* IN */ (wd_10),
	.wd_11 /* IN */ (wd_11),
	.wd_12 /* IN */ (wd_12),
	.wd_13 /* IN */ (wd_13),
	.wd_14 /* IN */ (wd_14),
	.wd_15 /* IN */ (wd_15),
	.wd_16 /* IN */ (wd_16),
	.wd_17 /* IN */ (wd_17),
	.wd_18 /* IN */ (wd_18),
	.wd_19 /* IN */ (wd_19),
	.wd_20 /* IN */ (wd_20),
	.wd_21 /* IN */ (wd_21),
	.wd_22 /* IN */ (wd_22),
	.wd_23 /* IN */ (wd_23),
	.wd_24 /* IN */ (wd_24),
	.wd_25 /* IN */ (wd_25),
	.wd_26 /* IN */ (wd_26),
	.wd_27 /* IN */ (wd_27),
	.wd_28 /* IN */ (wd_28),
	.wd_29 /* IN */ (wd_29),
	.wd_30 /* IN */ (wd_30),
	.wd_31 /* IN */ (wd_31),
	.clk /* IN */ (clk_2),
	.cfg_0 /* IN */ (cfg_0),
	.cfg_1 /* IN */ (cfg_1),
	.cfgw /* IN */ (cfgw),
	.a_0 /* IN */ (a_0),
	.a_1 /* IN */ (a_1),
	.a_2 /* IN */ (a_2),
	.a_3 /* IN */ (a_3),
	.a_4 /* IN */ (a_4),
	.a_5 /* IN */ (a_5),
	.a_6 /* IN */ (a_6),
	.a_7 /* IN */ (a_7),
	.a_8 /* IN */ (a_8),
	.a_9 /* IN */ (a_9),
	.a_10 /* IN */ (a_10),
	.a_11 /* IN */ (a_11),
	.a_12 /* IN */ (a_12),
	.a_13 /* IN */ (a_13),
	.a_14 /* IN */ (a_14),
	.a_15 /* IN */ (a_15),
	.a_16 /* IN */ (a_16),
	.a_17 /* IN */ (a_17),
	.a_18 /* IN */ (a_18),
	.a_19 /* IN */ (a_19),
	.a_20 /* IN */ (a_20),
	.a_21 /* IN */ (a_21),
	.a_22 /* IN */ (a_22),
	.a_23 /* IN */ (a_23),
	.ainen /* IN */ (ainen_obuf),
	.seta1 /* IN */ (seta1),
	.masterdata /* IN */ (masterdata),
	.dout_0 /* OUT */ (dout_0),
	.dout_1 /* OUT */ (dout_1),
	.dout_2 /* OUT */ (dout_2),
	.dout_3 /* OUT */ (dout_3),
	.dout_4 /* OUT */ (dout_4),
	.dout_5 /* OUT */ (dout_5),
	.dout_6 /* OUT */ (dout_6),
	.dout_7 /* OUT */ (dout_7),
	.dout_8 /* OUT */ (dout_8),
	.dout_9 /* OUT */ (dout_9),
	.dout_10 /* OUT */ (dout_10),
	.dout_11 /* OUT */ (dout_11),
	.dout_12 /* OUT */ (dout_12),
	.dout_13 /* OUT */ (dout_13),
	.dout_14 /* OUT */ (dout_14),
	.dout_15 /* OUT */ (dout_15),
	.dout_16 /* OUT */ (dout_16),
	.dout_17 /* OUT */ (dout_17),
	.dout_18 /* OUT */ (dout_18),
	.dout_19 /* OUT */ (dout_19),
	.dout_20 /* OUT */ (dout_20),
	.dout_21 /* OUT */ (dout_21),
	.dout_22 /* OUT */ (dout_22),
	.dout_23 /* OUT */ (dout_23),
	.dout_24 /* OUT */ (dout_24),
	.dout_25 /* OUT */ (dout_25),
	.dout_26 /* OUT */ (dout_26),
	.dout_27 /* OUT */ (dout_27),
	.dout_28 /* OUT */ (dout_28),
	.dout_29 /* OUT */ (dout_29),
	.dout_30 /* OUT */ (dout_30),
	.dout_31 /* OUT */ (dout_31),
	.aout_0 /* OUT */ (aout_0),
	.aout_1 /* OUT */ (aout_1),
	.aout_2 /* OUT */ (aout_2),
	.aout_3 /* OUT */ (aout_3),
	.aout_4 /* OUT */ (aout_4),
	.aout_5 /* OUT */ (aout_5),
	.aout_6 /* OUT */ (aout_6),
	.aout_7 /* OUT */ (aout_7),
	.aout_8 /* OUT */ (aout_8),
	.aout_9 /* OUT */ (aout_9),
	.aout_10 /* OUT */ (aout_10),
	.aout_11 /* OUT */ (aout_11),
	.aout_12 /* OUT */ (aout_12),
	.aout_13 /* OUT */ (aout_13),
	.aout_14 /* OUT */ (aout_14),
	.aout_15 /* OUT */ (aout_15),
	.aout_16 /* OUT */ (aout_16),
	.aout_17 /* OUT */ (aout_17),
	.aout_18 /* OUT */ (aout_18),
	.aout_19 /* OUT */ (aout_19),
	.aout_20 /* OUT */ (aout_20),
	.aout_21 /* OUT */ (aout_21),
	.aout_22 /* OUT */ (aout_22),
	.aout_23 /* OUT */ (aout_23),
	.dsp16 /* OUT */ (dsp16),
	.bigend /* OUT */ (bigend),
	.sys_clk(sys_clk) // Generated
);

// JERRY.NET (295) - jmem : jmem
j_jmem jmem_inst
(
	.resetl /* IN */ (resetl_2),
	.clk /* IN */ (clk_2),
	.dbgl /* IN */ (dbgl),
	.bigend /* IN */ (bigend),
	.dsp16 /* IN */ (dsp16),
	.w_0 /* IN */ (w_0),
	.w_1 /* IN */ (w_1),
	.w_2 /* IN */ (w_2),
	.rw /* IN */ (rw),
	.mreq /* IN */ (mreq),
	.dtackl /* IN */ (dtackl),
	.dspcsl /* IN */ (dspcsl),
	.wel_0 /* IN */ (wel_0),
	.oel_0 /* IN */ (oel_0),
	.testen /* IN */ (testen),
	.at_15 /* IN */ (aout_15),
	.internal /* IN */ (internal),
	.dbrl_0 /* IN */ (dbrl_0),
	.dbrl_1 /* IN */ (dbrl_1),
	.aout_0 /* IN */ (aout_0),
	.aout_1 /* IN */ (aout_1),
	.ndtest /* IN */ (ndtest),
	.ack /* OUT */ (ack),
	.den /* OUT */ (den_obuf),
	.aen /* OUT */ (aen_obuf),
	.siz_0 /* OUT */ (siz_0),
	.siz_1 /* OUT */ (siz_1),
	.dreql /* OUT */ (dreql),
	.dmuxu_0 /* OUT */ (dmuxu_0),
	.dmuxu_1 /* OUT */ (dmuxu_1),
	.dmuxd_0 /* OUT */ (dmuxd_0),
	.dmuxd_1 /* OUT */ (dmuxd_1),
	.dren /* OUT */ (dren),
	.xdsrc /* OUT */ (xdsrc),
	.iordl /* OUT */ (iordl),
	.iowrl /* OUT */ (iowrl),
	.dspread /* OUT */ (dspread),
	.dspwrite /* OUT */ (dspwrite),
	.dinlatch_0 /* OUT */ (dinlatch_0),
	.dinlatch_1 /* OUT */ (dinlatch_1),
	.ainen /* OUT */ (ainen_obuf),
	.seta1 /* OUT */ (seta1),
	.reads /* OUT */ (rws),
	.dbrls_0 /* OUT */ (dbrls_0),
	.dbrls_1 /* OUT */ (dbrls_1),
	.dspen /* OUT */ (dspen),
	.masterdata /* OUT */ (masterdata),
	.sys_clk(sys_clk) // Generated
);

// JERRY.NET (303) - jclk : jclk
j_jclk jclk_inst
(
	.resetli /* IN */ (resetli),
	.pclkosc /* IN */ (pclkosc),
	.pclkin /* IN */ (pclkin),
	.vclkin /* IN */ (vclkin),
	.chrin /* IN */ (chrclk),
	.clk1w /* IN */ (clk1w),
	.clk2w /* IN */ (clk2w),
	.clk3w /* IN */ (clk3w),
	.test /* IN */ (test),
	.cfg_2 /* IN */ (cfg_2),
	.cfg_3 /* IN */ (cfg_3),
	.din_0 /* IN */ (dout_0),
	.din_1 /* IN */ (dout_1),
	.din_2 /* IN */ (dout_2),
	.din_3 /* IN */ (dout_3),
	.din_4 /* IN */ (dout_4),
	.din_5 /* IN */ (dout_5),
	.din_6 /* IN */ (dout_6),
	.din_7 /* IN */ (dout_7),
	.din_8 /* IN */ (dout_8),
	.din_9 /* IN */ (dout_9),
	.din_15 /* IN */ (dout_15),
	.ndtest /* IN */ (ndtest),
	.cfgw /* OUT */ (cfgw),
	.cfgen /* OUT */ (cfgen),
	.clk /* OUT */ (clk),
	.pclkout /* OUT */ (pclkout),
	.pclkdiv /* OUT */ (pclkdiv),
	.vclkdiv /* OUT */ (vclkdiv),
	.cpuclk /* OUT */ (cpuclk),
	.chrdiv /* OUT */ (chrdiv),
	.vclken /* OUT */ (vclken),
	.resetl /* OUT */ (resetl),
	.tlw /* OUT */ (tlw_unused),
	.sys_clk(sys_clk) // Generated
);

// JERRY.NET (310) - resetl[0-5] : nivu
assign resetl_0 = resetl;
assign resetl_1 = resetl;
assign resetl_2 = resetl;
assign resetl_3 = resetl;
assign resetl_4 = resetl;
assign resetl_5 = resetl;

// JERRY.NET (313) - clk[0] : bu36b531
assign clk_0 = clk;

// JERRY.NET (314) - clk[1] : bu33ip7c
assign clk_1 = clk;

// JERRY.NET (315) - clk[2] : bu36b52e
assign clk_2 = clk;

// JERRY.NET (316) - clk[3] : bu36b52e
assign clk_3 = clk;

// JERRY.NET (318) - jmisc : jmisc
j_jmisc jmisc_inst
(
	.din_0 /* IN */ (dout_0),
	.din_1 /* IN */ (dout_1),
	.din_2 /* IN */ (dout_2),
	.din_3 /* IN */ (dout_3),
	.din_4 /* IN */ (dout_4),
	.din_5 /* IN */ (dout_5),
	.din_6 /* IN */ (dout_6),
	.din_7 /* IN */ (dout_7),
	.din_8 /* IN */ (dout_8),
	.din_9 /* IN */ (dout_9),
	.din_10 /* IN */ (dout_10),
	.din_11 /* IN */ (dout_11),
	.din_12 /* IN */ (dout_12),
	.din_13 /* IN */ (dout_13),
	.din_14 /* IN */ (dout_14),
	.din_15 /* IN */ (dout_15),
	.clk /* IN */ (clk_3),
	.resetl /* IN */ (resetl_1),
	.pit1w /* IN */ (pit1w),
	.pit2w /* IN */ (pit2w),
	.pit3w /* IN */ (pit3w),
	.pit4w /* IN */ (pit4w),
	.int1w /* IN */ (int1w),
	.pit1r /* IN */ (pit1r),
	.pit2r /* IN */ (pit2r),
	.pit3r /* IN */ (pit3r),
	.pit4r /* IN */ (pit4r),
	.int1r /* IN */ (int1r),
	.dint /* IN */ (dint),
	.eint /* IN */ (eint_0),
	.test1w /* IN */ (test1w),
	.joy1wl /* IN */ (joy1wl),
	.uint /* IN */ (uint),
	.i2int /* IN */ (i2int),
	.tint_0 /* OUT */ (tint_0),
	.tint_1 /* OUT */ (tint_1),
	.ts /* OUT */ (ts),
	._int /* OUT */ (_int),
	.ndtest /* OUT */ (ndtest),
	.joyenl /* OUT */ (joyenl),
	.dr_0_out /* BUS */ (ts_local_pe_183_a2_out),
	.dr_0_oe /* BUS */ (ts_local_pe_183_a2_oe),
	.dr_0_in /* BUS */ (ts_local_pe_183_a2_in),
	.dr_1_out /* BUS */ (ts_local_pe_184_a2_out),
	.dr_1_oe /* BUS */ (ts_local_pe_184_a2_oe),
	.dr_1_in /* BUS */ (ts_local_pe_184_a2_in),
	.dr_2_out /* BUS */ (ts_local_pe_185_a2_out),
	.dr_2_oe /* BUS */ (ts_local_pe_185_a2_oe),
	.dr_2_in /* BUS */ (ts_local_pe_185_a2_in),
	.dr_3_out /* BUS */ (ts_local_pe_186_a2_out),
	.dr_3_oe /* BUS */ (ts_local_pe_186_a2_oe),
	.dr_3_in /* BUS */ (ts_local_pe_186_a2_in),
	.dr_4_out /* BUS */ (ts_local_pe_187_a2_out),
	.dr_4_oe /* BUS */ (ts_local_pe_187_a2_oe),
	.dr_4_in /* BUS */ (ts_local_pe_187_a2_in),
	.dr_5_out /* BUS */ (ts_local_pe_188_a2_out),
	.dr_5_oe /* BUS */ (ts_local_pe_188_a2_oe),
	.dr_5_in /* BUS */ (ts_local_pe_188_a2_in),
	.dr_6_out /* BUS */ (ts_local_pe_189_a2_out),
	.dr_6_oe /* BUS */ (ts_local_pe_189_a2_oe),
	.dr_6_in /* BUS */ (ts_local_pe_189_a2_in),
	.dr_7_out /* BUS */ (ts_local_pe_190_a2_out),
	.dr_7_oe /* BUS */ (ts_local_pe_190_a2_oe),
	.dr_7_in /* BUS */ (ts_local_pe_190_a2_in),
	.dr_8_out /* BUS */ (ts_local_pe_191_a2_out),
	.dr_8_oe /* BUS */ (ts_local_pe_191_a2_oe),
	.dr_8_in /* BUS */ (ts_local_pe_191_a2_in),
	.dr_9_out /* BUS */ (ts_local_pe_192_a2_out),
	.dr_9_oe /* BUS */ (ts_local_pe_192_a2_oe),
	.dr_9_in /* BUS */ (ts_local_pe_192_a2_in),
	.dr_10_out /* BUS */ (ts_local_pe_193_a2_out),
	.dr_10_oe /* BUS */ (ts_local_pe_193_a2_oe),
	.dr_10_in /* BUS */ (ts_local_pe_193_a2_in),
	.dr_11_out /* BUS */ (ts_local_pe_194_a2_out),
	.dr_11_oe /* BUS */ (ts_local_pe_194_a2_oe),
	.dr_11_in /* BUS */ (ts_local_pe_194_a2_in),
	.dr_12_out /* BUS */ (ts_local_pe_195_a2_out),
	.dr_12_oe /* BUS */ (ts_local_pe_195_a2_oe),
	.dr_12_in /* BUS */ (ts_local_pe_195_a2_in),
	.dr_13_out /* BUS */ (ts_local_pe_196_a2_out),
	.dr_13_oe /* BUS */ (ts_local_pe_196_a2_oe),
	.dr_13_in /* BUS */ (ts_local_pe_196_a2_in),
	.dr_14_out /* BUS */ (ts_local_pe_197_a2_out),
	.dr_14_oe /* BUS */ (ts_local_pe_197_a2_oe),
	.dr_14_in /* BUS */ (ts_local_pe_197_a2_in),
	.dr_15_out /* BUS */ (ts_local_pe_198_a2_out),
	.dr_15_oe /* BUS */ (ts_local_pe_198_a2_oe),
	.dr_15_in /* BUS */ (ts_local_pe_198_a2_in),
	.sys_clk(sys_clk) // Generated
);

// JERRY.NET (341) - uart2 : uart2
j_uart2 uart2_inst
(
	.resetl /* IN */ (resetl_3),
	.clk /* IN */ (clk_0),
	.din_0 /* IN */ (din_0),
	.din_1 /* IN */ (din_1),
	.din_2 /* IN */ (din_2),
	.din_3 /* IN */ (din_3),
	.din_4 /* IN */ (din_4),
	.din_5 /* IN */ (din_5),
	.din_6 /* IN */ (din_6),
	.din_7 /* IN */ (din_7),
	.din_8 /* IN */ (din_8),
	.din_9 /* IN */ (din_9),
	.din_10 /* IN */ (din_10),
	.din_11 /* IN */ (din_11),
	.din_12 /* IN */ (din_12),
	.din_13 /* IN */ (din_13),
	.din_14 /* IN */ (din_14),
	.din_15 /* IN */ (din_15),
	.u2psclw /* IN */ (u2psclw),
	.u2psclr /* IN */ (u2psclr),
	.u2drd /* IN */ (u2drd),
	.u2dwr /* IN */ (u2dwr),
	.u2strd /* IN */ (u2strd),
	.u2ctwr /* IN */ (u2ctwr),
	.serin /* IN */ (serin),
	.serout /* OUT */ (serout),
	.uint /* OUT */ (uint),
	.dr_0_out /* BUS */ (ts_local_pe_183_a3_out),
	.dr_0_oe /* BUS */ (ts_local_pe_183_a3_oe),
	.dr_0_in /* BUS */ (ts_local_pe_183_a3_in),
	.dr_1_out /* BUS */ (ts_local_pe_184_a3_out),
	.dr_1_oe /* BUS */ (ts_local_pe_184_a3_oe),
	.dr_1_in /* BUS */ (ts_local_pe_184_a3_in),
	.dr_2_out /* BUS */ (ts_local_pe_185_a3_out),
	.dr_2_oe /* BUS */ (ts_local_pe_185_a3_oe),
	.dr_2_in /* BUS */ (ts_local_pe_185_a3_in),
	.dr_3_out /* BUS */ (ts_local_pe_186_a3_out),
	.dr_3_oe /* BUS */ (ts_local_pe_186_a3_oe),
	.dr_3_in /* BUS */ (ts_local_pe_186_a3_in),
	.dr_4_out /* BUS */ (ts_local_pe_187_a3_out),
	.dr_4_oe /* BUS */ (ts_local_pe_187_a3_oe),
	.dr_4_in /* BUS */ (ts_local_pe_187_a3_in),
	.dr_5_out /* BUS */ (ts_local_pe_188_a3_out),
	.dr_5_oe /* BUS */ (ts_local_pe_188_a3_oe),
	.dr_5_in /* BUS */ (ts_local_pe_188_a3_in),
	.dr_6_out /* BUS */ (ts_local_pe_189_a3_out),
	.dr_6_oe /* BUS */ (ts_local_pe_189_a3_oe),
	.dr_6_in /* BUS */ (ts_local_pe_189_a3_in),
	.dr_7_out /* BUS */ (ts_local_pe_190_a3_out),
	.dr_7_oe /* BUS */ (ts_local_pe_190_a3_oe),
	.dr_7_in /* BUS */ (ts_local_pe_190_a3_in),
	.dr_8_out /* BUS */ (ts_local_pe_191_a3_out),
	.dr_8_oe /* BUS */ (ts_local_pe_191_a3_oe),
	.dr_8_in /* BUS */ (ts_local_pe_191_a3_in),
	.dr_9_out /* BUS */ (ts_local_pe_192_a3_out),
	.dr_9_oe /* BUS */ (ts_local_pe_192_a3_oe),
	.dr_9_in /* BUS */ (ts_local_pe_192_a3_in),
	.dr_10_out /* BUS */ (ts_local_pe_193_a3_out),
	.dr_10_oe /* BUS */ (ts_local_pe_193_a3_oe),
	.dr_10_in /* BUS */ (ts_local_pe_193_a3_in),
	.dr_11_out /* BUS */ (ts_local_pe_194_a3_out),
	.dr_11_oe /* BUS */ (ts_local_pe_194_a3_oe),
	.dr_11_in /* BUS */ (ts_local_pe_194_a3_in),
	.dr_12_out /* BUS */ (ts_local_pe_195_a3_out),
	.dr_12_oe /* BUS */ (ts_local_pe_195_a3_oe),
	.dr_12_in /* BUS */ (ts_local_pe_195_a3_in),
	.dr_13_out /* BUS */ (ts_local_pe_196_a3_out),
	.dr_13_oe /* BUS */ (ts_local_pe_196_a3_oe),
	.dr_13_in /* BUS */ (ts_local_pe_196_a3_in),
	.dr_14_out /* BUS */ (ts_local_pe_197_a3_out),
	.dr_14_oe /* BUS */ (ts_local_pe_197_a3_oe),
	.dr_14_in /* BUS */ (ts_local_pe_197_a3_in),
	.dr_15_out /* BUS */ (ts_local_pe_198_a3_out),
	.dr_15_oe /* BUS */ (ts_local_pe_198_a3_oe),
	.dr_15_in /* BUS */ (ts_local_pe_198_a3_in),
	.sys_clk(sys_clk) // Generated
);

// JERRY.NET (347) - i2s : i2s
j_i2s i2s_inst
(
	.resetl /* IN */ (resetl_4),
	.clk /* IN */ (clk_1),
	.din_0 /* IN */ (dspwd_0),
	.din_1 /* IN */ (dspwd_1),
	.din_2 /* IN */ (dspwd_2),
	.din_3 /* IN */ (dspwd_3),
	.din_4 /* IN */ (dspwd_4),
	.din_5 /* IN */ (dspwd_5),
	.din_6 /* IN */ (dspwd_6),
	.din_7 /* IN */ (dspwd_7),
	.din_8 /* IN */ (dspwd_8),
	.din_9 /* IN */ (dspwd_9),
	.din_10 /* IN */ (dspwd_10),
	.din_11 /* IN */ (dspwd_11),
	.din_12 /* IN */ (dspwd_12),
	.din_13 /* IN */ (dspwd_13),
	.din_14 /* IN */ (dspwd_14),
	.din_15 /* IN */ (dspwd_15),
	.i2s1w /* IN */ (i2s1w),
	.i2s2w /* IN */ (i2s2w),
	.i2s3w /* IN */ (i2s3w),
	.i2s4w /* IN */ (i2s4w),
	.i2s1r /* IN */ (i2s1r),
	.i2s2r /* IN */ (i2s2r),
	.i2s3r /* IN */ (i2s3r),
	.i2rxd /* IN */ (i2srxd),
	.sckin /* IN */ (sck),
	.wsin /* IN */ (ws),
	.i2txd /* OUT */ (i2stxd),
	.sckout /* OUT */ (sckout),
	.wsout /* OUT */ (wsout),
	.i2int /* OUT */ (i2int),
	.i2sen /* OUT */ (i2sen),
	.dr_0_out /* BUS */ (ts_local_pe_167_a1_out),
	.dr_0_oe /* BUS */ (ts_local_pe_167_a1_oe),
	.dr_0_in /* BUS */ (ts_local_pe_167_a1_in),
	.dr_1_out /* BUS */ (ts_local_pe_168_a1_out),
	.dr_1_oe /* BUS */ (ts_local_pe_168_a1_oe),
	.dr_1_in /* BUS */ (ts_local_pe_168_a1_in),
	.dr_2_out /* BUS */ (ts_local_pe_169_a1_out),
	.dr_2_oe /* BUS */ (ts_local_pe_169_a1_oe),
	.dr_2_in /* BUS */ (ts_local_pe_169_a1_in),
	.dr_3_out /* BUS */ (ts_local_pe_170_a1_out),
	.dr_3_oe /* BUS */ (ts_local_pe_170_a1_oe),
	.dr_3_in /* BUS */ (ts_local_pe_170_a1_in),
	.dr_4_out /* BUS */ (ts_local_pe_171_a1_out),
	.dr_4_oe /* BUS */ (ts_local_pe_171_a1_oe),
	.dr_4_in /* BUS */ (ts_local_pe_171_a1_in),
	.dr_5_out /* BUS */ (ts_local_pe_172_a1_out),
	.dr_5_oe /* BUS */ (ts_local_pe_172_a1_oe),
	.dr_5_in /* BUS */ (ts_local_pe_172_a1_in),
	.dr_6_out /* BUS */ (ts_local_pe_173_a1_out),
	.dr_6_oe /* BUS */ (ts_local_pe_173_a1_oe),
	.dr_6_in /* BUS */ (ts_local_pe_173_a1_in),
	.dr_7_out /* BUS */ (ts_local_pe_174_a1_out),
	.dr_7_oe /* BUS */ (ts_local_pe_174_a1_oe),
	.dr_7_in /* BUS */ (ts_local_pe_174_a1_in),
	.dr_8_out /* BUS */ (ts_local_pe_175_a1_out),
	.dr_8_oe /* BUS */ (ts_local_pe_175_a1_oe),
	.dr_8_in /* BUS */ (ts_local_pe_175_a1_in),
	.dr_9_out /* BUS */ (ts_local_pe_176_a1_out),
	.dr_9_oe /* BUS */ (ts_local_pe_176_a1_oe),
	.dr_9_in /* BUS */ (ts_local_pe_176_a1_in),
	.dr_10_out /* BUS */ (ts_local_pe_177_a1_out),
	.dr_10_oe /* BUS */ (ts_local_pe_177_a1_oe),
	.dr_10_in /* BUS */ (ts_local_pe_177_a1_in),
	.dr_11_out /* BUS */ (ts_local_pe_178_a1_out),
	.dr_11_oe /* BUS */ (ts_local_pe_178_a1_oe),
	.dr_11_in /* BUS */ (ts_local_pe_178_a1_in),
	.dr_12_out /* BUS */ (ts_local_pe_179_a1_out),
	.dr_12_oe /* BUS */ (ts_local_pe_179_a1_oe),
	.dr_12_in /* BUS */ (ts_local_pe_179_a1_in),
	.dr_13_out /* BUS */ (ts_local_pe_180_a1_out),
	.dr_13_oe /* BUS */ (ts_local_pe_180_a1_oe),
	.dr_13_in /* BUS */ (ts_local_pe_180_a1_in),
	.dr_14_out /* BUS */ (ts_local_pe_181_a1_out),
	.dr_14_oe /* BUS */ (ts_local_pe_181_a1_oe),
	.dr_14_in /* BUS */ (ts_local_pe_181_a1_in),
	.dr_15_out /* BUS */ (ts_local_pe_182_a1_out),
	.dr_15_oe /* BUS */ (ts_local_pe_182_a1_oe),
	.dr_15_in /* BUS */ (ts_local_pe_182_a1_in),
	.snd_l /* OUT */ ({snd_l[0],snd_l[1],snd_l[2],snd_l[3],snd_l[4],snd_l[5],snd_l[6],snd_l[7],snd_l[8],snd_l[9],snd_l[10],snd_l[11],snd_l[12],snd_l[13],snd_l[14],snd_l[15]}),
	.snd_r /* OUT */ ({snd_r[0],snd_r[1],snd_r[2],snd_r[3],snd_r[4],snd_r[5],snd_r[6],snd_r[7],snd_r[8],snd_r[9],snd_r[10],snd_r[11],snd_r[12],snd_r[13],snd_r[14],snd_r[15]}),
	.snd_l_en /* OUT */ (snd_l_en),
	.snd_r_en /* OUT */ (snd_r_en),
	.sys_clk(sys_clk) // Generated
);

// JERRY.NET (354) - dac : dac
j_dac dac_inst
(
	.resetl /* IN */ (resetl_5),
	.clk /* IN */ (clk_1),
	.dac1w /* IN */ (dac1w),
	.dac2w /* IN */ (dac2w),
	.tint_0 /* IN */ (tint_0),
	.ts /* IN */ (ts),
	.dspd_0 /* IN */ (dspwd_0),
	.dspd_1 /* IN */ (dspwd_1),
	.dspd_2 /* IN */ (dspwd_2),
	.dspd_3 /* IN */ (dspwd_3),
	.dspd_4 /* IN */ (dspwd_4),
	.dspd_5 /* IN */ (dspwd_5),
	.dspd_6 /* IN */ (dspwd_6),
	.dspd_7 /* IN */ (dspwd_7),
	.dspd_8 /* IN */ (dspwd_8),
	.dspd_9 /* IN */ (dspwd_9),
	.dspd_10 /* IN */ (dspwd_10),
	.dspd_11 /* IN */ (dspwd_11),
	.dspd_12 /* IN */ (dspwd_12),
	.dspd_13 /* IN */ (dspwd_13),
	.dspd_14 /* IN */ (dspwd_14),
	.dspd_15 /* IN */ (dspwd_15),
	.rdac_0 /* OUT */ (rdac_0),
	.rdac_1 /* OUT */ (rdac_1),
	.ldac_0 /* OUT */ (ldac_0),
	.ldac_1 /* OUT */ (ldac_1),
	.sys_clk(sys_clk) // Generated
);

// JERRY.NET (359) - ge : dummy

// --- Compiler-generated local PE for BUS dsprd[0]
assign dsprd_0_out = (ts_local_pe_167_a0_oe & ts_local_pe_167_a0_out ) | (ts_local_pe_167_a1_oe & ts_local_pe_167_a1_out ) | 1'b0;
assign dsprd_0_oe = ts_local_pe_167_a0_oe | ts_local_pe_167_a1_oe;
assign ts_local_pe_167_a0_in = dsprd_0_in;
assign ts_local_pe_167_a1_in = dsprd_0_in;

// --- Compiler-generated local PE for BUS dsprd[1]
assign dsprd_1_out = (ts_local_pe_168_a0_oe & ts_local_pe_168_a0_out ) | (ts_local_pe_168_a1_oe & ts_local_pe_168_a1_out ) | 1'b0;
assign dsprd_1_oe = ts_local_pe_168_a0_oe | ts_local_pe_168_a1_oe;
assign ts_local_pe_168_a0_in = dsprd_1_in;
assign ts_local_pe_168_a1_in = dsprd_1_in;

// --- Compiler-generated local PE for BUS dsprd[2]
assign dsprd_2_out = (ts_local_pe_169_a0_oe & ts_local_pe_169_a0_out ) | (ts_local_pe_169_a1_oe & ts_local_pe_169_a1_out ) | 1'b0;
assign dsprd_2_oe = ts_local_pe_169_a0_oe | ts_local_pe_169_a1_oe;
assign ts_local_pe_169_a0_in = dsprd_2_in;
assign ts_local_pe_169_a1_in = dsprd_2_in;

// --- Compiler-generated local PE for BUS dsprd[3]
assign dsprd_3_out = (ts_local_pe_170_a0_oe & ts_local_pe_170_a0_out ) | (ts_local_pe_170_a1_oe & ts_local_pe_170_a1_out ) | 1'b0;
assign dsprd_3_oe = ts_local_pe_170_a0_oe | ts_local_pe_170_a1_oe;
assign ts_local_pe_170_a0_in = dsprd_3_in;
assign ts_local_pe_170_a1_in = dsprd_3_in;

// --- Compiler-generated local PE for BUS dsprd[4]
assign dsprd_4_out = (ts_local_pe_171_a0_oe & ts_local_pe_171_a0_out ) | (ts_local_pe_171_a1_oe & ts_local_pe_171_a1_out ) | 1'b0;
assign dsprd_4_oe = ts_local_pe_171_a0_oe | ts_local_pe_171_a1_oe;
assign ts_local_pe_171_a0_in = dsprd_4_in;
assign ts_local_pe_171_a1_in = dsprd_4_in;

// --- Compiler-generated local PE for BUS dsprd[5]
assign dsprd_5_out = (ts_local_pe_172_a0_oe & ts_local_pe_172_a0_out ) | (ts_local_pe_172_a1_oe & ts_local_pe_172_a1_out ) | 1'b0;
assign dsprd_5_oe = ts_local_pe_172_a0_oe | ts_local_pe_172_a1_oe;
assign ts_local_pe_172_a0_in = dsprd_5_in;
assign ts_local_pe_172_a1_in = dsprd_5_in;

// --- Compiler-generated local PE for BUS dsprd[6]
assign dsprd_6_out = (ts_local_pe_173_a0_oe & ts_local_pe_173_a0_out ) | (ts_local_pe_173_a1_oe & ts_local_pe_173_a1_out ) | 1'b0;
assign dsprd_6_oe = ts_local_pe_173_a0_oe | ts_local_pe_173_a1_oe;
assign ts_local_pe_173_a0_in = dsprd_6_in;
assign ts_local_pe_173_a1_in = dsprd_6_in;

// --- Compiler-generated local PE for BUS dsprd[7]
assign dsprd_7_out = (ts_local_pe_174_a0_oe & ts_local_pe_174_a0_out ) | (ts_local_pe_174_a1_oe & ts_local_pe_174_a1_out ) | 1'b0;
assign dsprd_7_oe = ts_local_pe_174_a0_oe | ts_local_pe_174_a1_oe;
assign ts_local_pe_174_a0_in = dsprd_7_in;
assign ts_local_pe_174_a1_in = dsprd_7_in;

// --- Compiler-generated local PE for BUS dsprd[8]
assign dsprd_8_out = (ts_local_pe_175_a0_oe & ts_local_pe_175_a0_out ) | (ts_local_pe_175_a1_oe & ts_local_pe_175_a1_out ) | 1'b0;
assign dsprd_8_oe = ts_local_pe_175_a0_oe | ts_local_pe_175_a1_oe;
assign ts_local_pe_175_a0_in = dsprd_8_in;
assign ts_local_pe_175_a1_in = dsprd_8_in;

// --- Compiler-generated local PE for BUS dsprd[9]
assign dsprd_9_out = (ts_local_pe_176_a0_oe & ts_local_pe_176_a0_out ) | (ts_local_pe_176_a1_oe & ts_local_pe_176_a1_out ) | 1'b0;
assign dsprd_9_oe = ts_local_pe_176_a0_oe | ts_local_pe_176_a1_oe;
assign ts_local_pe_176_a0_in = dsprd_9_in;
assign ts_local_pe_176_a1_in = dsprd_9_in;

// --- Compiler-generated local PE for BUS dsprd[10]
assign dsprd_10_out = (ts_local_pe_177_a0_oe & ts_local_pe_177_a0_out ) | (ts_local_pe_177_a1_oe & ts_local_pe_177_a1_out ) | 1'b0;
assign dsprd_10_oe = ts_local_pe_177_a0_oe | ts_local_pe_177_a1_oe;
assign ts_local_pe_177_a0_in = dsprd_10_in;
assign ts_local_pe_177_a1_in = dsprd_10_in;

// --- Compiler-generated local PE for BUS dsprd[11]
assign dsprd_11_out = (ts_local_pe_178_a0_oe & ts_local_pe_178_a0_out ) | (ts_local_pe_178_a1_oe & ts_local_pe_178_a1_out ) | 1'b0;
assign dsprd_11_oe = ts_local_pe_178_a0_oe | ts_local_pe_178_a1_oe;
assign ts_local_pe_178_a0_in = dsprd_11_in;
assign ts_local_pe_178_a1_in = dsprd_11_in;

// --- Compiler-generated local PE for BUS dsprd[12]
assign dsprd_12_out = (ts_local_pe_179_a0_oe & ts_local_pe_179_a0_out ) | (ts_local_pe_179_a1_oe & ts_local_pe_179_a1_out ) | 1'b0;
assign dsprd_12_oe = ts_local_pe_179_a0_oe | ts_local_pe_179_a1_oe;
assign ts_local_pe_179_a0_in = dsprd_12_in;
assign ts_local_pe_179_a1_in = dsprd_12_in;

// --- Compiler-generated local PE for BUS dsprd[13]
assign dsprd_13_out = (ts_local_pe_180_a0_oe & ts_local_pe_180_a0_out ) | (ts_local_pe_180_a1_oe & ts_local_pe_180_a1_out ) | 1'b0;
assign dsprd_13_oe = ts_local_pe_180_a0_oe | ts_local_pe_180_a1_oe;
assign ts_local_pe_180_a0_in = dsprd_13_in;
assign ts_local_pe_180_a1_in = dsprd_13_in;

// --- Compiler-generated local PE for BUS dsprd[14]
assign dsprd_14_out = (ts_local_pe_181_a0_oe & ts_local_pe_181_a0_out ) | (ts_local_pe_181_a1_oe & ts_local_pe_181_a1_out ) | 1'b0;
assign dsprd_14_oe = ts_local_pe_181_a0_oe | ts_local_pe_181_a1_oe;
assign ts_local_pe_181_a0_in = dsprd_14_in;
assign ts_local_pe_181_a1_in = dsprd_14_in;

// --- Compiler-generated local PE for BUS dsprd[15]
assign dsprd_15_out = (ts_local_pe_182_a0_oe & ts_local_pe_182_a0_out ) | (ts_local_pe_182_a1_oe & ts_local_pe_182_a1_out ) | 1'b0;
assign dsprd_15_oe = ts_local_pe_182_a0_oe | ts_local_pe_182_a1_oe;
assign ts_local_pe_182_a0_in = dsprd_15_in;
assign ts_local_pe_182_a1_in = dsprd_15_in;

// --- Compiler-generated local PE for BUS dr[0]
assign dr_0_out = (ts_local_pe_183_a0_oe & ts_local_pe_183_a0_out ) | (ts_local_pe_183_a1_oe & ts_local_pe_183_a1_out ) | (ts_local_pe_183_a2_oe & ts_local_pe_183_a2_out ) | (ts_local_pe_183_a3_oe & ts_local_pe_183_a3_out ) | 1'b0;
assign dr_0_oe = ts_local_pe_183_a0_oe | ts_local_pe_183_a1_oe | ts_local_pe_183_a2_oe | ts_local_pe_183_a3_oe;
assign ts_local_pe_183_a0_in = dr_0_in;
assign ts_local_pe_183_a1_in = dr_0_in;
assign ts_local_pe_183_a2_in = dr_0_in;
assign ts_local_pe_183_a3_in = dr_0_in;

// --- Compiler-generated local PE for BUS dr[1]
assign dr_1_out = (ts_local_pe_184_a0_oe & ts_local_pe_184_a0_out ) | (ts_local_pe_184_a1_oe & ts_local_pe_184_a1_out ) | (ts_local_pe_184_a2_oe & ts_local_pe_184_a2_out ) | (ts_local_pe_184_a3_oe & ts_local_pe_184_a3_out ) | 1'b0;
assign dr_1_oe = ts_local_pe_184_a0_oe | ts_local_pe_184_a1_oe | ts_local_pe_184_a2_oe | ts_local_pe_184_a3_oe;
assign ts_local_pe_184_a0_in = dr_1_in;
assign ts_local_pe_184_a1_in = dr_1_in;
assign ts_local_pe_184_a2_in = dr_1_in;
assign ts_local_pe_184_a3_in = dr_1_in;

// --- Compiler-generated local PE for BUS dr[2]
assign dr_2_out = (ts_local_pe_185_a0_oe & ts_local_pe_185_a0_out ) | (ts_local_pe_185_a1_oe & ts_local_pe_185_a1_out ) | (ts_local_pe_185_a2_oe & ts_local_pe_185_a2_out ) | (ts_local_pe_185_a3_oe & ts_local_pe_185_a3_out ) | 1'b0;
assign dr_2_oe = ts_local_pe_185_a0_oe | ts_local_pe_185_a1_oe | ts_local_pe_185_a2_oe | ts_local_pe_185_a3_oe;
assign ts_local_pe_185_a0_in = dr_2_in;
assign ts_local_pe_185_a1_in = dr_2_in;
assign ts_local_pe_185_a2_in = dr_2_in;
assign ts_local_pe_185_a3_in = dr_2_in;

// --- Compiler-generated local PE for BUS dr[3]
assign dr_3_out = (ts_local_pe_186_a0_oe & ts_local_pe_186_a0_out ) | (ts_local_pe_186_a1_oe & ts_local_pe_186_a1_out ) | (ts_local_pe_186_a2_oe & ts_local_pe_186_a2_out ) | (ts_local_pe_186_a3_oe & ts_local_pe_186_a3_out ) | 1'b0;
assign dr_3_oe = ts_local_pe_186_a0_oe | ts_local_pe_186_a1_oe | ts_local_pe_186_a2_oe | ts_local_pe_186_a3_oe;
assign ts_local_pe_186_a0_in = dr_3_in;
assign ts_local_pe_186_a1_in = dr_3_in;
assign ts_local_pe_186_a2_in = dr_3_in;
assign ts_local_pe_186_a3_in = dr_3_in;

// --- Compiler-generated local PE for BUS dr[4]
assign dr_4_out = (ts_local_pe_187_a0_oe & ts_local_pe_187_a0_out ) | (ts_local_pe_187_a1_oe & ts_local_pe_187_a1_out ) | (ts_local_pe_187_a2_oe & ts_local_pe_187_a2_out ) | (ts_local_pe_187_a3_oe & ts_local_pe_187_a3_out ) | 1'b0;
assign dr_4_oe = ts_local_pe_187_a0_oe | ts_local_pe_187_a1_oe | ts_local_pe_187_a2_oe | ts_local_pe_187_a3_oe;
assign ts_local_pe_187_a0_in = dr_4_in;
assign ts_local_pe_187_a1_in = dr_4_in;
assign ts_local_pe_187_a2_in = dr_4_in;
assign ts_local_pe_187_a3_in = dr_4_in;

// --- Compiler-generated local PE for BUS dr[5]
assign dr_5_out = (ts_local_pe_188_a0_oe & ts_local_pe_188_a0_out ) | (ts_local_pe_188_a1_oe & ts_local_pe_188_a1_out ) | (ts_local_pe_188_a2_oe & ts_local_pe_188_a2_out ) | (ts_local_pe_188_a3_oe & ts_local_pe_188_a3_out ) | 1'b0;
assign dr_5_oe = ts_local_pe_188_a0_oe | ts_local_pe_188_a1_oe | ts_local_pe_188_a2_oe | ts_local_pe_188_a3_oe;
assign ts_local_pe_188_a0_in = dr_5_in;
assign ts_local_pe_188_a1_in = dr_5_in;
assign ts_local_pe_188_a2_in = dr_5_in;
assign ts_local_pe_188_a3_in = dr_5_in;

// --- Compiler-generated local PE for BUS dr[6]
assign dr_6_out = (ts_local_pe_189_a0_oe & ts_local_pe_189_a0_out ) | (ts_local_pe_189_a1_oe & ts_local_pe_189_a1_out ) | (ts_local_pe_189_a2_oe & ts_local_pe_189_a2_out ) | (ts_local_pe_189_a3_oe & ts_local_pe_189_a3_out ) | 1'b0;
assign dr_6_oe = ts_local_pe_189_a0_oe | ts_local_pe_189_a1_oe | ts_local_pe_189_a2_oe | ts_local_pe_189_a3_oe;
assign ts_local_pe_189_a0_in = dr_6_in;
assign ts_local_pe_189_a1_in = dr_6_in;
assign ts_local_pe_189_a2_in = dr_6_in;
assign ts_local_pe_189_a3_in = dr_6_in;

// --- Compiler-generated local PE for BUS dr[7]
assign dr_7_out = (ts_local_pe_190_a0_oe & ts_local_pe_190_a0_out ) | (ts_local_pe_190_a1_oe & ts_local_pe_190_a1_out ) | (ts_local_pe_190_a2_oe & ts_local_pe_190_a2_out ) | (ts_local_pe_190_a3_oe & ts_local_pe_190_a3_out ) | 1'b0;
assign dr_7_oe = ts_local_pe_190_a0_oe | ts_local_pe_190_a1_oe | ts_local_pe_190_a2_oe | ts_local_pe_190_a3_oe;
assign ts_local_pe_190_a0_in = dr_7_in;
assign ts_local_pe_190_a1_in = dr_7_in;
assign ts_local_pe_190_a2_in = dr_7_in;
assign ts_local_pe_190_a3_in = dr_7_in;

// --- Compiler-generated local PE for BUS dr[8]
assign dr_8_out = (ts_local_pe_191_a0_oe & ts_local_pe_191_a0_out ) | (ts_local_pe_191_a1_oe & ts_local_pe_191_a1_out ) | (ts_local_pe_191_a2_oe & ts_local_pe_191_a2_out ) | (ts_local_pe_191_a3_oe & ts_local_pe_191_a3_out ) | 1'b0;
assign dr_8_oe = ts_local_pe_191_a0_oe | ts_local_pe_191_a1_oe | ts_local_pe_191_a2_oe | ts_local_pe_191_a3_oe;
assign ts_local_pe_191_a0_in = dr_8_in;
assign ts_local_pe_191_a1_in = dr_8_in;
assign ts_local_pe_191_a2_in = dr_8_in;
assign ts_local_pe_191_a3_in = dr_8_in;

// --- Compiler-generated local PE for BUS dr[9]
assign dr_9_out = (ts_local_pe_192_a0_oe & ts_local_pe_192_a0_out ) | (ts_local_pe_192_a1_oe & ts_local_pe_192_a1_out ) | (ts_local_pe_192_a2_oe & ts_local_pe_192_a2_out ) | (ts_local_pe_192_a3_oe & ts_local_pe_192_a3_out ) | 1'b0;
assign dr_9_oe = ts_local_pe_192_a0_oe | ts_local_pe_192_a1_oe | ts_local_pe_192_a2_oe | ts_local_pe_192_a3_oe;
assign ts_local_pe_192_a0_in = dr_9_in;
assign ts_local_pe_192_a1_in = dr_9_in;
assign ts_local_pe_192_a2_in = dr_9_in;
assign ts_local_pe_192_a3_in = dr_9_in;

// --- Compiler-generated local PE for BUS dr[10]
assign dr_10_out = (ts_local_pe_193_a0_oe & ts_local_pe_193_a0_out ) | (ts_local_pe_193_a1_oe & ts_local_pe_193_a1_out ) | (ts_local_pe_193_a2_oe & ts_local_pe_193_a2_out ) | (ts_local_pe_193_a3_oe & ts_local_pe_193_a3_out ) | 1'b0;
assign dr_10_oe = ts_local_pe_193_a0_oe | ts_local_pe_193_a1_oe | ts_local_pe_193_a2_oe | ts_local_pe_193_a3_oe;
assign ts_local_pe_193_a0_in = dr_10_in;
assign ts_local_pe_193_a1_in = dr_10_in;
assign ts_local_pe_193_a2_in = dr_10_in;
assign ts_local_pe_193_a3_in = dr_10_in;

// --- Compiler-generated local PE for BUS dr[11]
assign dr_11_out = (ts_local_pe_194_a0_oe & ts_local_pe_194_a0_out ) | (ts_local_pe_194_a1_oe & ts_local_pe_194_a1_out ) | (ts_local_pe_194_a2_oe & ts_local_pe_194_a2_out ) | (ts_local_pe_194_a3_oe & ts_local_pe_194_a3_out ) | 1'b0;
assign dr_11_oe = ts_local_pe_194_a0_oe | ts_local_pe_194_a1_oe | ts_local_pe_194_a2_oe | ts_local_pe_194_a3_oe;
assign ts_local_pe_194_a0_in = dr_11_in;
assign ts_local_pe_194_a1_in = dr_11_in;
assign ts_local_pe_194_a2_in = dr_11_in;
assign ts_local_pe_194_a3_in = dr_11_in;

// --- Compiler-generated local PE for BUS dr[12]
assign dr_12_out = (ts_local_pe_195_a0_oe & ts_local_pe_195_a0_out ) | (ts_local_pe_195_a1_oe & ts_local_pe_195_a1_out ) | (ts_local_pe_195_a2_oe & ts_local_pe_195_a2_out ) | (ts_local_pe_195_a3_oe & ts_local_pe_195_a3_out ) | 1'b0;
assign dr_12_oe = ts_local_pe_195_a0_oe | ts_local_pe_195_a1_oe | ts_local_pe_195_a2_oe | ts_local_pe_195_a3_oe;
assign ts_local_pe_195_a0_in = dr_12_in;
assign ts_local_pe_195_a1_in = dr_12_in;
assign ts_local_pe_195_a2_in = dr_12_in;
assign ts_local_pe_195_a3_in = dr_12_in;

// --- Compiler-generated local PE for BUS dr[13]
assign dr_13_out = (ts_local_pe_196_a0_oe & ts_local_pe_196_a0_out ) | (ts_local_pe_196_a1_oe & ts_local_pe_196_a1_out ) | (ts_local_pe_196_a2_oe & ts_local_pe_196_a2_out ) | (ts_local_pe_196_a3_oe & ts_local_pe_196_a3_out ) | 1'b0;
assign dr_13_oe = ts_local_pe_196_a0_oe | ts_local_pe_196_a1_oe | ts_local_pe_196_a2_oe | ts_local_pe_196_a3_oe;
assign ts_local_pe_196_a0_in = dr_13_in;
assign ts_local_pe_196_a1_in = dr_13_in;
assign ts_local_pe_196_a2_in = dr_13_in;
assign ts_local_pe_196_a3_in = dr_13_in;

// --- Compiler-generated local PE for BUS dr[14]
assign dr_14_out = (ts_local_pe_197_a0_oe & ts_local_pe_197_a0_out ) | (ts_local_pe_197_a1_oe & ts_local_pe_197_a1_out ) | (ts_local_pe_197_a2_oe & ts_local_pe_197_a2_out ) | (ts_local_pe_197_a3_oe & ts_local_pe_197_a3_out ) | 1'b0;
assign dr_14_oe = ts_local_pe_197_a0_oe | ts_local_pe_197_a1_oe | ts_local_pe_197_a2_oe | ts_local_pe_197_a3_oe;
assign ts_local_pe_197_a0_in = dr_14_in;
assign ts_local_pe_197_a1_in = dr_14_in;
assign ts_local_pe_197_a2_in = dr_14_in;
assign ts_local_pe_197_a3_in = dr_14_in;

// --- Compiler-generated local PE for BUS dr[15]
assign dr_15_out = (ts_local_pe_198_a0_oe & ts_local_pe_198_a0_out ) | (ts_local_pe_198_a1_oe & ts_local_pe_198_a1_out ) | (ts_local_pe_198_a2_oe & ts_local_pe_198_a2_out ) | (ts_local_pe_198_a3_oe & ts_local_pe_198_a3_out ) | 1'b0;
assign dr_15_oe = ts_local_pe_198_a0_oe | ts_local_pe_198_a1_oe | ts_local_pe_198_a2_oe | ts_local_pe_198_a3_oe;
assign ts_local_pe_198_a0_in = dr_15_in;
assign ts_local_pe_198_a1_in = dr_15_in;
assign ts_local_pe_198_a2_in = dr_15_in;
assign ts_local_pe_198_a3_in = dr_15_in;

// --- Compiler-generated local LB for BUS dsprd[0]
assign dsprd_0_in = dsprd_0_out;

// --- Compiler-generated local LB for BUS dsprd[1]
assign dsprd_1_in = dsprd_1_out;

// --- Compiler-generated local LB for BUS dsprd[2]
assign dsprd_2_in = dsprd_2_out;

// --- Compiler-generated local LB for BUS dsprd[3]
assign dsprd_3_in = dsprd_3_out;

// --- Compiler-generated local LB for BUS dsprd[4]
assign dsprd_4_in = dsprd_4_out;

// --- Compiler-generated local LB for BUS dsprd[5]
assign dsprd_5_in = dsprd_5_out;

// --- Compiler-generated local LB for BUS dsprd[6]
assign dsprd_6_in = dsprd_6_out;

// --- Compiler-generated local LB for BUS dsprd[7]
assign dsprd_7_in = dsprd_7_out;

// --- Compiler-generated local LB for BUS dsprd[8]
assign dsprd_8_in = dsprd_8_out;

// --- Compiler-generated local LB for BUS dsprd[9]
assign dsprd_9_in = dsprd_9_out;

// --- Compiler-generated local LB for BUS dsprd[10]
assign dsprd_10_in = dsprd_10_out;

// --- Compiler-generated local LB for BUS dsprd[11]
assign dsprd_11_in = dsprd_11_out;

// --- Compiler-generated local LB for BUS dsprd[12]
assign dsprd_12_in = dsprd_12_out;

// --- Compiler-generated local LB for BUS dsprd[13]
assign dsprd_13_in = dsprd_13_out;

// --- Compiler-generated local LB for BUS dsprd[14]
assign dsprd_14_in = dsprd_14_out;

// --- Compiler-generated local LB for BUS dsprd[15]
assign dsprd_15_in = dsprd_15_out;

// --- Compiler-generated local LB for BUS dr[0]
assign dr_0_in = dr_0_out;

// --- Compiler-generated local LB for BUS dr[1]
assign dr_1_in = dr_1_out;

// --- Compiler-generated local LB for BUS dr[2]
assign dr_2_in = dr_2_out;

// --- Compiler-generated local LB for BUS dr[3]
assign dr_3_in = dr_3_out;

// --- Compiler-generated local LB for BUS dr[4]
assign dr_4_in = dr_4_out;

// --- Compiler-generated local LB for BUS dr[5]
assign dr_5_in = dr_5_out;

// --- Compiler-generated local LB for BUS dr[6]
assign dr_6_in = dr_6_out;

// --- Compiler-generated local LB for BUS dr[7]
assign dr_7_in = dr_7_out;

// --- Compiler-generated local LB for BUS dr[8]
assign dr_8_in = dr_8_out;

// --- Compiler-generated local LB for BUS dr[9]
assign dr_9_in = dr_9_out;

// --- Compiler-generated local LB for BUS dr[10]
assign dr_10_in = dr_10_out;

// --- Compiler-generated local LB for BUS dr[11]
assign dr_11_in = dr_11_out;

// --- Compiler-generated local LB for BUS dr[12]
assign dr_12_in = dr_12_out;

// --- Compiler-generated local LB for BUS dr[13]
assign dr_13_in = dr_13_out;

// --- Compiler-generated local LB for BUS dr[14]
assign dr_14_in = dr_14_out;

// --- Compiler-generated local LB for BUS dr[15]
assign dr_15_in = dr_15_out;
endmodule
/* verilator lint_on LITENDIAN */
