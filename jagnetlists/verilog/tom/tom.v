/* verilator lint_off LITENDIAN */
`include "defs.v"

module tom
(
	input xbgl,
	input xdbrl_0,
	input xdbrl_1,
	input xlp,
	input xdint,
	input xtest,
	input xpclk,
	input xvclk,
	input xwaitl,
	input xresetl,
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
	output xd_32_out,
	output xd_32_oe,
	input xd_32_in,
	output xd_33_out,
	output xd_33_oe,
	input xd_33_in,
	output xd_34_out,
	output xd_34_oe,
	input xd_34_in,
	output xd_35_out,
	output xd_35_oe,
	input xd_35_in,
	output xd_36_out,
	output xd_36_oe,
	input xd_36_in,
	output xd_37_out,
	output xd_37_oe,
	input xd_37_in,
	output xd_38_out,
	output xd_38_oe,
	input xd_38_in,
	output xd_39_out,
	output xd_39_oe,
	input xd_39_in,
	output xd_40_out,
	output xd_40_oe,
	input xd_40_in,
	output xd_41_out,
	output xd_41_oe,
	input xd_41_in,
	output xd_42_out,
	output xd_42_oe,
	input xd_42_in,
	output xd_43_out,
	output xd_43_oe,
	input xd_43_in,
	output xd_44_out,
	output xd_44_oe,
	input xd_44_in,
	output xd_45_out,
	output xd_45_oe,
	input xd_45_in,
	output xd_46_out,
	output xd_46_oe,
	input xd_46_in,
	output xd_47_out,
	output xd_47_oe,
	input xd_47_in,
	output xd_48_out,
	output xd_48_oe,
	input xd_48_in,
	output xd_49_out,
	output xd_49_oe,
	input xd_49_in,
	output xd_50_out,
	output xd_50_oe,
	input xd_50_in,
	output xd_51_out,
	output xd_51_oe,
	input xd_51_in,
	output xd_52_out,
	output xd_52_oe,
	input xd_52_in,
	output xd_53_out,
	output xd_53_oe,
	input xd_53_in,
	output xd_54_out,
	output xd_54_oe,
	input xd_54_in,
	output xd_55_out,
	output xd_55_oe,
	input xd_55_in,
	output xd_56_out,
	output xd_56_oe,
	input xd_56_in,
	output xd_57_out,
	output xd_57_oe,
	input xd_57_in,
	output xd_58_out,
	output xd_58_oe,
	input xd_58_in,
	output xd_59_out,
	output xd_59_oe,
	input xd_59_in,
	output xd_60_out,
	output xd_60_oe,
	input xd_60_in,
	output xd_61_out,
	output xd_61_oe,
	input xd_61_in,
	output xd_62_out,
	output xd_62_oe,
	input xd_62_in,
	output xd_63_out,
	output xd_63_oe,
	input xd_63_in,
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
	output xma_0_out,
	output xma_0_oe,
	input xma_0_in,
	output xma_1_out,
	output xma_1_oe,
	input xma_1_in,
	output xma_2_out,
	output xma_2_oe,
	input xma_2_in,
	output xma_3_out,
	output xma_3_oe,
	input xma_3_in,
	output xma_4_out,
	output xma_4_oe,
	input xma_4_in,
	output xma_5_out,
	output xma_5_oe,
	input xma_5_in,
	output xma_6_out,
	output xma_6_oe,
	input xma_6_in,
	output xma_7_out,
	output xma_7_oe,
	input xma_7_in,
	output xma_8_out,
	output xma_8_oe,
	input xma_8_in,
	output xma_9_out,
	output xma_9_oe,
	input xma_9_in,
	output xma_10_out,
	output xma_10_oe,
	input xma_10_in,
	output xhs_out,
	output xhs_oe,
	input xhs_in,
	output xvs_out,
	output xvs_oe,
	input xvs_in,
	output xsiz_0_out,
	output xsiz_0_oe,
	input xsiz_0_in,
	output xsiz_1_out,
	output xsiz_1_oe,
	input xsiz_1_in,
	output xfc_0_out,
	output xfc_0_oe,
	input xfc_0_in,
	output xfc_1_out,
	output xfc_1_oe,
	input xfc_1_in,
	output xfc_2_out,
	output xfc_2_oe,
	input xfc_2_in,
	output xrw_out,
	output xrw_oe,
	input xrw_in,
	output xdreql_out,
	output xdreql_oe,
	input xdreql_in,
	output xba_out,
	output xba_oe,
	input xba_in,
	output xbrl_out,
	output xbrl_oe,
	input xbrl_in,
	output xr_0,
	output xr_1,
	output xr_2,
	output xr_3,
	output xr_4,
	output xr_5,
	output xr_6,
	output xr_7,
	output xg_0,
	output xg_1,
	output xg_2,
	output xg_3,
	output xg_4,
	output xg_5,
	output xg_6,
	output xg_7,
	output xb_0,
	output xb_1,
	output xb_2,
	output xb_3,
	output xb_4,
	output xb_5,
	output xb_6,
	output xb_7,
	output xinc,
	output xoel_0,
	output xoel_1,
	output xoel_2,
	output xmaska_0,
	output xmaska_1,
	output xmaska_2,
	output xromcsl_0,
	output xromcsl_1,
	output xcasl_0,
	output xcasl_1,
	output xdbgl,
	output xexpl,
	output xdspcsl,
	output xwel_0,
	output xwel_1,
	output xwel_2,
	output xwel_3,
	output xwel_4,
	output xwel_5,
	output xwel_6,
	output xwel_7,
	output xrasl_0,
	output xrasl_1,
	output xdtackl,
	output xintl,
	output hs_o,
	output hhs_o,
	output vs_o,
	output refreq,
	output obbreq,
	output bbreq_0,
	output bbreq_1,
	output gbreq_0,
	output gbreq_1,
	output dram,
	output blank,
	input tlw,
	input ram_rdy,
	output aen,
	output den_0,
	output den_1,
	output den_2,
	input sys_clk // Generated
);
wire wd_0_out;
wire wd_0_oe;
wire wd_0_in;
wire wd_1_out;
wire wd_1_oe;
wire wd_1_in;
wire wd_2_out;
wire wd_2_oe;
wire wd_2_in;
wire wd_3_out;
wire wd_3_oe;
wire wd_3_in;
wire wd_4_out;
wire wd_4_oe;
wire wd_4_in;
wire wd_5_out;
wire wd_5_oe;
wire wd_5_in;
wire wd_6_out;
wire wd_6_oe;
wire wd_6_in;
wire wd_7_out;
wire wd_7_oe;
wire wd_7_in;
wire wd_8_out;
wire wd_8_oe;
wire wd_8_in;
wire wd_9_out;
wire wd_9_oe;
wire wd_9_in;
wire wd_10_out;
wire wd_10_oe;
wire wd_10_in;
wire wd_11_out;
wire wd_11_oe;
wire wd_11_in;
wire wd_12_out;
wire wd_12_oe;
wire wd_12_in;
wire wd_13_out;
wire wd_13_oe;
wire wd_13_in;
wire wd_14_out;
wire wd_14_oe;
wire wd_14_in;
wire wd_15_out;
wire wd_15_oe;
wire wd_15_in;
wire wd_16_out;
wire wd_16_oe;
wire wd_16_in;
wire wd_17_out;
wire wd_17_oe;
wire wd_17_in;
wire wd_18_out;
wire wd_18_oe;
wire wd_18_in;
wire wd_19_out;
wire wd_19_oe;
wire wd_19_in;
wire wd_20_out;
wire wd_20_oe;
wire wd_20_in;
wire wd_21_out;
wire wd_21_oe;
wire wd_21_in;
wire wd_22_out;
wire wd_22_oe;
wire wd_22_in;
wire wd_23_out;
wire wd_23_oe;
wire wd_23_in;
wire wd_24_out;
wire wd_24_oe;
wire wd_24_in;
wire wd_25_out;
wire wd_25_oe;
wire wd_25_in;
wire wd_26_out;
wire wd_26_oe;
wire wd_26_in;
wire wd_27_out;
wire wd_27_oe;
wire wd_27_in;
wire wd_28_out;
wire wd_28_oe;
wire wd_28_in;
wire wd_29_out;
wire wd_29_oe;
wire wd_29_in;
wire wd_30_out;
wire wd_30_oe;
wire wd_30_in;
wire wd_31_out;
wire wd_31_oe;
wire wd_31_in;
wire wd_32_out;
wire wd_32_oe;
wire wd_32_in;
wire wd_33_out;
wire wd_33_oe;
wire wd_33_in;
wire wd_34_out;
wire wd_34_oe;
wire wd_34_in;
wire wd_35_out;
wire wd_35_oe;
wire wd_35_in;
wire wd_36_out;
wire wd_36_oe;
wire wd_36_in;
wire wd_37_out;
wire wd_37_oe;
wire wd_37_in;
wire wd_38_out;
wire wd_38_oe;
wire wd_38_in;
wire wd_39_out;
wire wd_39_oe;
wire wd_39_in;
wire wd_40_out;
wire wd_40_oe;
wire wd_40_in;
wire wd_41_out;
wire wd_41_oe;
wire wd_41_in;
wire wd_42_out;
wire wd_42_oe;
wire wd_42_in;
wire wd_43_out;
wire wd_43_oe;
wire wd_43_in;
wire wd_44_out;
wire wd_44_oe;
wire wd_44_in;
wire wd_45_out;
wire wd_45_oe;
wire wd_45_in;
wire wd_46_out;
wire wd_46_oe;
wire wd_46_in;
wire wd_47_out;
wire wd_47_oe;
wire wd_47_in;
wire wd_48_out;
wire wd_48_oe;
wire wd_48_in;
wire wd_49_out;
wire wd_49_oe;
wire wd_49_in;
wire wd_50_out;
wire wd_50_oe;
wire wd_50_in;
wire wd_51_out;
wire wd_51_oe;
wire wd_51_in;
wire wd_52_out;
wire wd_52_oe;
wire wd_52_in;
wire wd_53_out;
wire wd_53_oe;
wire wd_53_in;
wire wd_54_out;
wire wd_54_oe;
wire wd_54_in;
wire wd_55_out;
wire wd_55_oe;
wire wd_55_in;
wire wd_56_out;
wire wd_56_oe;
wire wd_56_in;
wire wd_57_out;
wire wd_57_oe;
wire wd_57_in;
wire wd_58_out;
wire wd_58_oe;
wire wd_58_in;
wire wd_59_out;
wire wd_59_oe;
wire wd_59_in;
wire wd_60_out;
wire wd_60_oe;
wire wd_60_in;
wire wd_61_out;
wire wd_61_oe;
wire wd_61_in;
wire wd_62_out;
wire wd_62_oe;
wire wd_62_in;
wire wd_63_out;
wire wd_63_oe;
wire wd_63_in;
wire a_0_out;
wire a_0_oe;
wire a_0_in;
wire a_1_out;
wire a_1_oe;
wire a_1_in;
wire a_2_out;
wire a_2_oe;
wire a_2_in;
wire a_3_out;
wire a_3_oe;
wire a_3_in;
wire a_4_out;
wire a_4_oe;
wire a_4_in;
wire a_5_out;
wire a_5_oe;
wire a_5_in;
wire a_6_out;
wire a_6_oe;
wire a_6_in;
wire a_7_out;
wire a_7_oe;
wire a_7_in;
wire a_8_out;
wire a_8_oe;
wire a_8_in;
wire a_9_out;
wire a_9_oe;
wire a_9_in;
wire a_10_out;
wire a_10_oe;
wire a_10_in;
wire a_11_out;
wire a_11_oe;
wire a_11_in;
wire a_12_out;
wire a_12_oe;
wire a_12_in;
wire a_13_out;
wire a_13_oe;
wire a_13_in;
wire a_14_out;
wire a_14_oe;
wire a_14_in;
wire a_15_out;
wire a_15_oe;
wire a_15_in;
wire a_16_out;
wire a_16_oe;
wire a_16_in;
wire a_17_out;
wire a_17_oe;
wire a_17_in;
wire a_18_out;
wire a_18_oe;
wire a_18_in;
wire a_19_out;
wire a_19_oe;
wire a_19_in;
wire a_20_out;
wire a_20_oe;
wire a_20_in;
wire a_21_out;
wire a_21_oe;
wire a_21_in;
wire a_22_out;
wire a_22_oe;
wire a_22_in;
wire a_23_out;
wire a_23_oe;
wire a_23_in;
wire w_0_out;
wire w_0_oe;
wire w_0_in;
wire w_1_out;
wire w_1_oe;
wire w_1_in;
wire w_2_out;
wire w_2_oe;
wire w_2_in;
wire w_3_out;
wire w_3_oe;
wire w_3_in;
wire rw_out;
wire rw_oe;
wire rw_in;
wire mreq_out;
wire mreq_oe;
wire mreq_in;
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
wire justify_out;
wire justify_oe;
wire justify_in;
wire din_0;
wire nt_78;
wire dp_0;
wire gnd;
wire nt_77;
wire din_1;
wire nt_74;
wire dp_1;
wire nt_73;
wire din_2;
wire nt_70;
wire dp_2;
wire nt_69;
wire din_3;
wire nt_66;
wire dp_3;
wire nt_65;
wire din_4;
wire nt_62;
wire dp_4;
wire nt_61;
wire din_5;
wire nt_58;
wire dp_5;
wire nt_57;
wire din_6;
wire nt_54;
wire dp_6;
wire nt_53;
wire din_7;
wire nt_50;
wire dp_7;
wire nt_49;
wire din_8;
wire dp_8;
wire nt_48;
wire din_9;
wire dp_9;
wire nt_52;
wire din_10;
wire dp_10;
wire nt_56;
wire din_11;
wire dp_11;
wire nt_60;
wire din_12;
wire dp_12;
wire nt_64;
wire din_13;
wire dp_13;
wire nt_68;
wire din_14;
wire dp_14;
wire nt_72;
wire din_15;
wire dp_15;
wire nt_76;
wire din_16;
wire dout_16;
wire nt_75;
wire din_17;
wire dout_17;
wire nt_71;
wire din_18;
wire dout_18;
wire nt_67;
wire din_19;
wire dout_19;
wire nt_63;
wire din_20;
wire dout_20;
wire nt_59;
wire din_21;
wire dout_21;
wire nt_55;
wire din_22;
wire dout_22;
wire nt_51;
wire din_23;
wire dout_23;
wire nt_47;
wire din_24;
wire dout_24;
wire nt_46;
wire din_25;
wire dout_25;
wire din_26;
wire dout_26;
wire din_27;
wire dout_27;
wire din_28;
wire dout_28;
wire din_29;
wire dout_29;
wire din_30;
wire dout_30;
wire din_31;
wire dout_31;
wire din_32;
wire nt_119;
wire dout_32;
wire nt_118;
wire din_33;
wire nt_115;
wire dout_33;
wire nt_114;
wire din_34;
wire nt_111;
wire dout_34;
wire nt_110;
wire din_35;
wire nt_107;
wire dout_35;
wire nt_106;
wire din_36;
wire nt_103;
wire dout_36;
wire nt_102;
wire din_37;
wire nt_99;
wire dout_37;
wire nt_98;
wire din_38;
wire nt_95;
wire dout_38;
wire nt_94;
wire din_39;
wire nt_91;
wire dout_39;
wire nt_90;
wire din_40;
wire dout_40;
wire nt_89;
wire din_41;
wire dout_41;
wire nt_93;
wire din_42;
wire dout_42;
wire nt_97;
wire din_43;
wire dout_43;
wire nt_101;
wire din_44;
wire dout_44;
wire nt_105;
wire din_45;
wire dout_45;
wire nt_109;
wire din_46;
wire dout_46;
wire nt_113;
wire din_47;
wire dout_47;
wire nt_117;
wire din_48;
wire nt_121;
wire dout_48;
wire nt_120;
wire din_49;
wire dout_49;
wire nt_116;
wire din_50;
wire dout_50;
wire nt_112;
wire din_51;
wire dout_51;
wire nt_108;
wire din_52;
wire dout_52;
wire nt_104;
wire din_53;
wire dout_53;
wire nt_100;
wire din_54;
wire dout_54;
wire nt_96;
wire din_55;
wire dout_55;
wire nt_92;
wire din_56;
wire dout_56;
wire din_57;
wire dout_57;
wire din_58;
wire dout_58;
wire din_59;
wire dout_59;
wire din_60;
wire dout_60;
wire din_61;
wire dout_61;
wire din_62;
wire dout_62;
wire din_63;
wire dout_63;
wire ain_0;
wire nt_23;
wire maska_0;
wire nt_22;
wire ain_1;
wire nt_24;
wire maska_1;
wire ain_2;
wire nt_25;
wire maska_2;
wire ain_3;
wire ain_4;
wire ain_5;
wire ain_6;
wire ain_7;
wire ain_8;
wire ain_9;
wire ain_10;
wire ain_11;
wire ain_12;
wire ain_13;
wire ain_14;
wire ain_15;
wire ain_16;
wire ain_17;
wire ain_18;
wire ain_19;
wire ain_20;
wire ain_21;
wire ain_22;
wire ain_23;
wire nt_26;
wire nt_27;
wire nt_28;
wire nt_29;
wire nt_30;
wire nt_31;
wire nt_32;
wire nt_33;
wire nt_34;
wire nt_35;
wire nt_36;
wire nt_37;
wire nt_38;
wire nt_39;
wire nt_40;
wire nt_41;
wire nt_42;
wire nt_43;
wire nt_44;
wire nt_45;
wire aout_3;
wire aout_4;
wire aout_5;
wire aout_6;
wire aout_7;
wire aout_8;
wire aout_9;
wire aout_10;
wire aout_11;
wire aout_12;
wire aout_13;
wire aout_14;
wire aout_15;
wire aout_16;
wire aout_17;
wire aout_18;
wire aout_19;
wire aout_20;
wire aout_21;
wire aout_22;
wire aout_23;
wire cfg_0;
wire ma_0;
wire cfgen;
wire nt_88;
wire cfg_1;
wire ma_1;
wire nt_87;
wire cfg_2;
wire ma_2;
wire nt_86;
wire cfg_3;
wire ma_3;
wire nt_85;
wire cfg_4;
wire ma_4;
wire nt_84;
wire cfg_5;
wire ma_5;
wire nt_83;
wire cfg_6;
wire ma_6;
wire nt_82;
wire cfg_7;
wire ma_7;
wire nt_81;
wire cfg_8;
wire ma_8;
wire nt_80;
wire cfg_9;
wire ma_9;
wire nt_79;
wire cfg_10;
wire ma_10;
wire romcsl_0;
wire romcsl_1;
wire rasl_0;
wire rasl_1;
wire notndtest;
wire ndtest;
wire casl_0;
wire casl_1;
wire oel_0;
wire oel_1;
wire oel_2;
wire wel_0;
wire wel_1;
wire wel_2;
wire wel_3;
wire wel_4;
wire wel_5;
wire wel_6;
wire wel_7;
wire pclk;
wire nt_21;
wire nt_20;
wire vxclk;
wire resetli;
wire nt_16;
wire nt_15;
wire resetl;
wire waitl;
wire nt_18;
wire nt_17;
wire notdreqin;
wire nt_7;
wire dreqlout;
wire nt_6;
wire dtackl;
wire rwin;
wire nt_9;
wire reads;
wire sizin_0;
wire nt_10;
wire sizout_0;
wire sizin_1;
wire nt_11;
wire sizout_1;
wire dreqin;
wire dbrl_0;
wire nt_19;
wire dbrl_1;
wire dbgl;
wire expl;
wire dspcsl;
wire intlt;
wire intl;
wire hlock;
wire nt_1;
wire hsl;
wire snden;
wire vcc;
wire vlock;
wire nt_2;
wire vsl;
wire syncen;
wire lp;
wire nt_3;
wire r_0;
wire r_1;
wire r_2;
wire r_3;
wire r_4;
wire r_5;
wire r_6;
wire r_7;
wire g_0;
wire g_1;
wire g_2;
wire g_3;
wire g_4;
wire g_5;
wire g_6;
wire g_7;
wire b_0;
wire b_1;
wire b_2;
wire b_3;
wire b_4;
wire b_5;
wire b_6;
wire b_7;
wire inc;
wire dint;
wire nt_12;
wire fc_0;
wire nt_4;
wire fcen;
wire fc_1;
wire nt_5;
wire fc_2;
wire m68k;
wire brlin;
wire nt_13;
wire brlout;
wire testen;
wire bglin;
wire nt_14;
wire bgain;
wire ba;
wire test;
wire nottest;
wire dout_0;
wire dout_1;
wire dout_2;
wire dout_3;
wire dout_4;
wire dout_5;
wire dout_6;
wire dout_7;
wire dout_8;
wire dout_9;
wire dout_10;
wire dout_11;
wire dout_12;
wire dout_13;
wire dout_14;
wire dout_15;
wire ack;
wire bback;
wire gback;
wire clk;
wire grpintreq;
wire tint;
wire gpuread;
wire gpuwrite;
wire nocpu;
wire d_0;
wire d_1;
wire d_2;
wire d_3;
wire d_4;
wire d_5;
wire d_6;
wire d_7;
wire d_8;
wire d_9;
wire d_10;
wire d_11;
wire d_12;
wire d_13;
wire d_14;
wire d_15;
wire d_16;
wire d_17;
wire d_18;
wire d_19;
wire d_20;
wire d_21;
wire d_22;
wire d_23;
wire d_24;
wire d_25;
wire d_26;
wire d_27;
wire d_28;
wire d_29;
wire d_30;
wire d_31;
wire d_32;
wire d_33;
wire d_34;
wire d_35;
wire d_36;
wire d_37;
wire d_38;
wire d_39;
wire d_40;
wire d_41;
wire d_42;
wire d_43;
wire d_44;
wire d_45;
wire d_46;
wire d_47;
wire d_48;
wire d_49;
wire d_50;
wire d_51;
wire d_52;
wire d_53;
wire d_54;
wire d_55;
wire d_56;
wire d_57;
wire d_58;
wire d_59;
wire d_60;
wire d_61;
wire d_62;
wire d_63;
wire at_1;
wire gpuint;
wire lock;
wire intdev;
wire wet;
wire oet;
wire intswe;
wire intwe;
wire lba;
wire lbb;
wire clut;
wire ourack;
wire memc1r;
wire memc2r;
wire hcr;
wire vcr;
wire lphr;
wire lpvr;
wire ob0r;
wire ob1r;
wire ob2r;
wire ob3r;
wire lbrar;
wire test2r;
wire test3r;
wire intr;
wire pit0r;
wire pit1r;
wire memc1w;
wire memc2w;
wire olp1w;
wire olp2w;
wire obfw;
wire vmodew;
wire bord1w;
wire bord2w;
wire hcw;
wire hpw;
wire hbbw;
wire hbew;
wire hsw;
wire hvsw;
wire hdb1w;
wire hdb2w;
wire hdew;
wire vcw;
wire vpw;
wire vbbw;
wire vbew;
wire vsw;
wire vdbw;
wire vdew;
wire vebw;
wire veew;
wire viw;
wire pit0w;
wire pit1w;
wire heqw;
wire test1w;
wire lbraw;
wire int1w;
wire int2w;
wire bgwr;
wire vclk;
wire vgy;
wire vey;
wire vly;
wire start;
wire dd;
wire lbufa;
wire lbufb;
wire vint;
wire vactive;
wire nextpixa;
wire nextpixd;
wire cry16;
wire rgb24;
wire rg16;
wire rgb16;
wire mptest;
wire varmod;
wire vc_0;
wire vc_1;
wire vc_2;
wire vc_3;
wire vc_4;
wire vc_5;
wire vc_6;
wire vc_7;
wire vc_8;
wire vc_9;
wire vc_10;
wire tcount;
wire incen;
wire binc;
wire bgw;
wire word2;
wire pp;
wire lbaactive;
wire lbbactive;
wire hcb_10;
wire lbrd_0;
wire lbrd_1;
wire lbrd_2;
wire lbrd_3;
wire lbrd_4;
wire lbrd_5;
wire lbrd_6;
wire lbrd_7;
wire lbrd_8;
wire lbrd_9;
wire lbrd_10;
wire lbrd_11;
wire lbrd_12;
wire lbrd_13;
wire lbrd_14;
wire lbrd_15;
wire lbrd_16;
wire lbrd_17;
wire lbrd_18;
wire lbrd_19;
wire lbrd_20;
wire lbrd_21;
wire lbrd_22;
wire lbrd_23;
wire lbrd_24;
wire lbrd_25;
wire lbrd_26;
wire lbrd_27;
wire lbrd_28;
wire lbrd_29;
wire lbrd_30;
wire lbrd_31;
wire lbra_0;
wire lbra_1;
wire lbra_2;
wire lbra_3;
wire lbra_4;
wire lbra_5;
wire lbra_6;
wire lbra_7;
wire lbra_8;
wire dinlatch_0;
wire dinlatch_1;
wire dinlatch_2;
wire dinlatch_3;
wire dinlatch_4;
wire dinlatch_5;
wire dinlatch_6;
wire dinlatch_7;
wire dmuxd_0;
wire dmuxd_1;
wire dmuxd_2;
wire dmuxu_0;
wire dmuxu_1;
wire dmuxu_2;
wire dren;
wire xdsrc;
wire clk_1;
wire ainen;
wire at_0;
wire at_2;
wire newrow;
wire resrow;
wire mux;
wire cfgw;
wire clk_2;
wire d7a;
wire readt;
wire match;
wire fintdev;
wire fextdev;
wire fdram;
wire from;
wire dspd_0;
wire dspd_1;
wire romspd_0;
wire romspd_1;
wire iospd_0;
wire iospd_1;
wire mw_0;
wire mw_1;
wire bs_0;
wire bs_1;
wire bs_2;
wire bs_3;
wire cpu32;
wire refrate_0;
wire refrate_1;
wire refrate_2;
wire refrate_3;
wire bigend;
wire abs_2;
wire abs_3;
wire hilo;
wire lbt;
wire clutt;
wire fastrom;
wire at_3;
wire at_4;
wire at_5;
wire at_6;
wire at_7;
wire at_8;
wire at_9;
wire at_10;
wire clk_3;
wire ihandler;
wire obback;
wire sizout_2;
wire refack;
wire newdata_0;
wire newdata_1;
wire newdata_2;
wire newdata_3;
wire newdata_4;
wire newdata_5;
wire newdata_6;
wire newdata_7;
wire newdata_8;
wire newdata_9;
wire newdata_10;
wire newdata_11;
wire newdata_12;
wire newdata_13;
wire newdata_14;
wire newdata_15;
wire newdata_16;
wire newdata_17;
wire newdata_18;
wire newdata_19;
wire newdata_20;
wire newheight_0;
wire newheight_1;
wire newheight_2;
wire newheight_3;
wire newheight_4;
wire newheight_5;
wire newheight_6;
wire newheight_7;
wire newheight_8;
wire newheight_9;
wire newrem_0;
wire newrem_1;
wire newrem_2;
wire newrem_3;
wire newrem_4;
wire newrem_5;
wire newrem_6;
wire newrem_7;
wire obdready;
wire offscreen;
wire clk_4;
wire wbkdone;
wire obdone;
wire heightnz;
wire scaled;
wire obdlatch;
wire mode1;
wire mode2;
wire mode4;
wire mode8;
wire mode16;
wire mode24;
wire rmw;
wire index_1;
wire index_2;
wire index_3;
wire index_4;
wire index_5;
wire index_6;
wire index_7;
wire xld;
wire reflected;
wire transen;
wire hscale_0;
wire hscale_1;
wire hscale_2;
wire hscale_3;
wire hscale_4;
wire hscale_5;
wire hscale_6;
wire hscale_7;
wire dwidth_0;
wire dwidth_1;
wire dwidth_2;
wire dwidth_3;
wire dwidth_4;
wire dwidth_5;
wire dwidth_6;
wire dwidth_7;
wire dwidth_8;
wire dwidth_9;
wire vscale_0;
wire vscale_1;
wire vscale_2;
wire vscale_3;
wire vscale_4;
wire vscale_5;
wire vscale_6;
wire vscale_7;
wire wbkstart;
wire obint;
wire obld_0;
wire obld_1;
wire obld_2;
wire startref;
wire clk_12;
wire clk_13;
wire lbwa_1;
wire lbwa_2;
wire lbwa_3;
wire lbwa_4;
wire lbwa_5;
wire lbwa_6;
wire lbwa_7;
wire lbwa_8;
wire lbwa_9;
wire lbwe_0;
wire lbwe_1;
wire lbwd_0;
wire lbwd_1;
wire lbwd_2;
wire lbwd_3;
wire lbwd_4;
wire lbwd_5;
wire lbwd_6;
wire lbwd_7;
wire lbwd_8;
wire lbwd_9;
wire lbwd_10;
wire lbwd_11;
wire lbwd_12;
wire lbwd_13;
wire lbwd_14;
wire lbwd_15;
wire lbwd_16;
wire lbwd_17;
wire lbwd_18;
wire lbwd_19;
wire lbwd_20;
wire lbwd_21;
wire lbwd_22;
wire lbwd_23;
wire lbwd_24;
wire lbwd_25;
wire lbwd_26;
wire lbwd_27;
wire lbwd_28;
wire lbwd_29;
wire lbwd_30;
wire lbwd_31;
wire rmw1;
wire lben;
wire clk_14;
wire tlw_unused;
wire clk_0;
wire ts_local_pe_576_a0_out;
wire ts_local_pe_576_a0_oe;
wire ts_local_pe_576_a0_in;
wire ts_local_pe_576_a1_out;
wire ts_local_pe_576_a1_oe;
wire ts_local_pe_576_a1_in;
wire ts_local_pe_577_a0_out;
wire ts_local_pe_577_a0_oe;
wire ts_local_pe_577_a0_in;
wire ts_local_pe_577_a1_out;
wire ts_local_pe_577_a1_oe;
wire ts_local_pe_577_a1_in;
wire ts_local_pe_578_a0_out;
wire ts_local_pe_578_a0_oe;
wire ts_local_pe_578_a0_in;
wire ts_local_pe_578_a1_out;
wire ts_local_pe_578_a1_oe;
wire ts_local_pe_578_a1_in;
wire ts_local_pe_579_a0_out;
wire ts_local_pe_579_a0_oe;
wire ts_local_pe_579_a0_in;
wire ts_local_pe_579_a1_out;
wire ts_local_pe_579_a1_oe;
wire ts_local_pe_579_a1_in;
wire ts_local_pe_580_a0_out;
wire ts_local_pe_580_a0_oe;
wire ts_local_pe_580_a0_in;
wire ts_local_pe_580_a1_out;
wire ts_local_pe_580_a1_oe;
wire ts_local_pe_580_a1_in;
wire ts_local_pe_581_a0_out;
wire ts_local_pe_581_a0_oe;
wire ts_local_pe_581_a0_in;
wire ts_local_pe_581_a1_out;
wire ts_local_pe_581_a1_oe;
wire ts_local_pe_581_a1_in;
wire ts_local_pe_582_a0_out;
wire ts_local_pe_582_a0_oe;
wire ts_local_pe_582_a0_in;
wire ts_local_pe_582_a1_out;
wire ts_local_pe_582_a1_oe;
wire ts_local_pe_582_a1_in;
wire ts_local_pe_583_a0_out;
wire ts_local_pe_583_a0_oe;
wire ts_local_pe_583_a0_in;
wire ts_local_pe_583_a1_out;
wire ts_local_pe_583_a1_oe;
wire ts_local_pe_583_a1_in;
wire ts_local_pe_584_a0_out;
wire ts_local_pe_584_a0_oe;
wire ts_local_pe_584_a0_in;
wire ts_local_pe_584_a1_out;
wire ts_local_pe_584_a1_oe;
wire ts_local_pe_584_a1_in;
wire ts_local_pe_585_a0_out;
wire ts_local_pe_585_a0_oe;
wire ts_local_pe_585_a0_in;
wire ts_local_pe_585_a1_out;
wire ts_local_pe_585_a1_oe;
wire ts_local_pe_585_a1_in;
wire ts_local_pe_586_a0_out;
wire ts_local_pe_586_a0_oe;
wire ts_local_pe_586_a0_in;
wire ts_local_pe_586_a1_out;
wire ts_local_pe_586_a1_oe;
wire ts_local_pe_586_a1_in;
wire ts_local_pe_587_a0_out;
wire ts_local_pe_587_a0_oe;
wire ts_local_pe_587_a0_in;
wire ts_local_pe_587_a1_out;
wire ts_local_pe_587_a1_oe;
wire ts_local_pe_587_a1_in;
wire ts_local_pe_588_a0_out;
wire ts_local_pe_588_a0_oe;
wire ts_local_pe_588_a0_in;
wire ts_local_pe_588_a1_out;
wire ts_local_pe_588_a1_oe;
wire ts_local_pe_588_a1_in;
wire ts_local_pe_589_a0_out;
wire ts_local_pe_589_a0_oe;
wire ts_local_pe_589_a0_in;
wire ts_local_pe_589_a1_out;
wire ts_local_pe_589_a1_oe;
wire ts_local_pe_589_a1_in;
wire ts_local_pe_590_a0_out;
wire ts_local_pe_590_a0_oe;
wire ts_local_pe_590_a0_in;
wire ts_local_pe_590_a1_out;
wire ts_local_pe_590_a1_oe;
wire ts_local_pe_590_a1_in;
wire ts_local_pe_591_a0_out;
wire ts_local_pe_591_a0_oe;
wire ts_local_pe_591_a0_in;
wire ts_local_pe_591_a1_out;
wire ts_local_pe_591_a1_oe;
wire ts_local_pe_591_a1_in;
wire ts_local_pe_592_a0_out;
wire ts_local_pe_592_a0_oe;
wire ts_local_pe_592_a0_in;
wire ts_local_pe_592_a1_out;
wire ts_local_pe_592_a1_oe;
wire ts_local_pe_592_a1_in;
wire ts_local_pe_593_a0_out;
wire ts_local_pe_593_a0_oe;
wire ts_local_pe_593_a0_in;
wire ts_local_pe_593_a1_out;
wire ts_local_pe_593_a1_oe;
wire ts_local_pe_593_a1_in;
wire ts_local_pe_594_a0_out;
wire ts_local_pe_594_a0_oe;
wire ts_local_pe_594_a0_in;
wire ts_local_pe_594_a1_out;
wire ts_local_pe_594_a1_oe;
wire ts_local_pe_594_a1_in;
wire ts_local_pe_595_a0_out;
wire ts_local_pe_595_a0_oe;
wire ts_local_pe_595_a0_in;
wire ts_local_pe_595_a1_out;
wire ts_local_pe_595_a1_oe;
wire ts_local_pe_595_a1_in;
wire ts_local_pe_596_a0_out;
wire ts_local_pe_596_a0_oe;
wire ts_local_pe_596_a0_in;
wire ts_local_pe_596_a1_out;
wire ts_local_pe_596_a1_oe;
wire ts_local_pe_596_a1_in;
wire ts_local_pe_597_a0_out;
wire ts_local_pe_597_a0_oe;
wire ts_local_pe_597_a0_in;
wire ts_local_pe_597_a1_out;
wire ts_local_pe_597_a1_oe;
wire ts_local_pe_597_a1_in;
wire ts_local_pe_598_a0_out;
wire ts_local_pe_598_a0_oe;
wire ts_local_pe_598_a0_in;
wire ts_local_pe_598_a1_out;
wire ts_local_pe_598_a1_oe;
wire ts_local_pe_598_a1_in;
wire ts_local_pe_599_a0_out;
wire ts_local_pe_599_a0_oe;
wire ts_local_pe_599_a0_in;
wire ts_local_pe_599_a1_out;
wire ts_local_pe_599_a1_oe;
wire ts_local_pe_599_a1_in;
wire ts_local_pe_600_a0_out;
wire ts_local_pe_600_a0_oe;
wire ts_local_pe_600_a0_in;
wire ts_local_pe_600_a1_out;
wire ts_local_pe_600_a1_oe;
wire ts_local_pe_600_a1_in;
wire ts_local_pe_601_a0_out;
wire ts_local_pe_601_a0_oe;
wire ts_local_pe_601_a0_in;
wire ts_local_pe_601_a1_out;
wire ts_local_pe_601_a1_oe;
wire ts_local_pe_601_a1_in;
wire ts_local_pe_602_a0_out;
wire ts_local_pe_602_a0_oe;
wire ts_local_pe_602_a0_in;
wire ts_local_pe_602_a1_out;
wire ts_local_pe_602_a1_oe;
wire ts_local_pe_602_a1_in;
wire ts_local_pe_603_a0_out;
wire ts_local_pe_603_a0_oe;
wire ts_local_pe_603_a0_in;
wire ts_local_pe_603_a1_out;
wire ts_local_pe_603_a1_oe;
wire ts_local_pe_603_a1_in;
wire ts_local_pe_604_a0_out;
wire ts_local_pe_604_a0_oe;
wire ts_local_pe_604_a0_in;
wire ts_local_pe_604_a1_out;
wire ts_local_pe_604_a1_oe;
wire ts_local_pe_604_a1_in;
wire ts_local_pe_605_a0_out;
wire ts_local_pe_605_a0_oe;
wire ts_local_pe_605_a0_in;
wire ts_local_pe_605_a1_out;
wire ts_local_pe_605_a1_oe;
wire ts_local_pe_605_a1_in;
wire ts_local_pe_606_a0_out;
wire ts_local_pe_606_a0_oe;
wire ts_local_pe_606_a0_in;
wire ts_local_pe_606_a1_out;
wire ts_local_pe_606_a1_oe;
wire ts_local_pe_606_a1_in;
wire ts_local_pe_607_a0_out;
wire ts_local_pe_607_a0_oe;
wire ts_local_pe_607_a0_in;
wire ts_local_pe_607_a1_out;
wire ts_local_pe_607_a1_oe;
wire ts_local_pe_607_a1_in;
wire ts_local_pe_608_a0_out;
wire ts_local_pe_608_a0_oe;
wire ts_local_pe_608_a0_in;
wire ts_local_pe_608_a1_out;
wire ts_local_pe_608_a1_oe;
wire ts_local_pe_608_a1_in;
wire ts_local_pe_609_a0_out;
wire ts_local_pe_609_a0_oe;
wire ts_local_pe_609_a0_in;
wire ts_local_pe_609_a1_out;
wire ts_local_pe_609_a1_oe;
wire ts_local_pe_609_a1_in;
wire ts_local_pe_610_a0_out;
wire ts_local_pe_610_a0_oe;
wire ts_local_pe_610_a0_in;
wire ts_local_pe_610_a1_out;
wire ts_local_pe_610_a1_oe;
wire ts_local_pe_610_a1_in;
wire ts_local_pe_611_a0_out;
wire ts_local_pe_611_a0_oe;
wire ts_local_pe_611_a0_in;
wire ts_local_pe_611_a1_out;
wire ts_local_pe_611_a1_oe;
wire ts_local_pe_611_a1_in;
wire ts_local_pe_612_a0_out;
wire ts_local_pe_612_a0_oe;
wire ts_local_pe_612_a0_in;
wire ts_local_pe_612_a1_out;
wire ts_local_pe_612_a1_oe;
wire ts_local_pe_612_a1_in;
wire ts_local_pe_613_a0_out;
wire ts_local_pe_613_a0_oe;
wire ts_local_pe_613_a0_in;
wire ts_local_pe_613_a1_out;
wire ts_local_pe_613_a1_oe;
wire ts_local_pe_613_a1_in;
wire ts_local_pe_614_a0_out;
wire ts_local_pe_614_a0_oe;
wire ts_local_pe_614_a0_in;
wire ts_local_pe_614_a1_out;
wire ts_local_pe_614_a1_oe;
wire ts_local_pe_614_a1_in;
wire ts_local_pe_615_a0_out;
wire ts_local_pe_615_a0_oe;
wire ts_local_pe_615_a0_in;
wire ts_local_pe_615_a1_out;
wire ts_local_pe_615_a1_oe;
wire ts_local_pe_615_a1_in;
wire ts_local_pe_616_a0_out;
wire ts_local_pe_616_a0_oe;
wire ts_local_pe_616_a0_in;
wire ts_local_pe_616_a1_out;
wire ts_local_pe_616_a1_oe;
wire ts_local_pe_616_a1_in;
wire ts_local_pe_617_a0_out;
wire ts_local_pe_617_a0_oe;
wire ts_local_pe_617_a0_in;
wire ts_local_pe_617_a1_out;
wire ts_local_pe_617_a1_oe;
wire ts_local_pe_617_a1_in;
wire ts_local_pe_618_a0_out;
wire ts_local_pe_618_a0_oe;
wire ts_local_pe_618_a0_in;
wire ts_local_pe_618_a1_out;
wire ts_local_pe_618_a1_oe;
wire ts_local_pe_618_a1_in;
wire ts_local_pe_619_a0_out;
wire ts_local_pe_619_a0_oe;
wire ts_local_pe_619_a0_in;
wire ts_local_pe_619_a1_out;
wire ts_local_pe_619_a1_oe;
wire ts_local_pe_619_a1_in;
wire ts_local_pe_620_a0_out;
wire ts_local_pe_620_a0_oe;
wire ts_local_pe_620_a0_in;
wire ts_local_pe_620_a1_out;
wire ts_local_pe_620_a1_oe;
wire ts_local_pe_620_a1_in;
wire ts_local_pe_621_a0_out;
wire ts_local_pe_621_a0_oe;
wire ts_local_pe_621_a0_in;
wire ts_local_pe_621_a1_out;
wire ts_local_pe_621_a1_oe;
wire ts_local_pe_621_a1_in;
wire ts_local_pe_622_a0_out;
wire ts_local_pe_622_a0_oe;
wire ts_local_pe_622_a0_in;
wire ts_local_pe_622_a1_out;
wire ts_local_pe_622_a1_oe;
wire ts_local_pe_622_a1_in;
wire ts_local_pe_623_a0_out;
wire ts_local_pe_623_a0_oe;
wire ts_local_pe_623_a0_in;
wire ts_local_pe_623_a1_out;
wire ts_local_pe_623_a1_oe;
wire ts_local_pe_623_a1_in;
wire ts_local_pe_624_a0_out;
wire ts_local_pe_624_a0_oe;
wire ts_local_pe_624_a0_in;
wire ts_local_pe_624_a1_out;
wire ts_local_pe_624_a1_oe;
wire ts_local_pe_624_a1_in;
wire ts_local_pe_625_a0_out;
wire ts_local_pe_625_a0_oe;
wire ts_local_pe_625_a0_in;
wire ts_local_pe_625_a1_out;
wire ts_local_pe_625_a1_oe;
wire ts_local_pe_625_a1_in;
wire ts_local_pe_626_a0_out;
wire ts_local_pe_626_a0_oe;
wire ts_local_pe_626_a0_in;
wire ts_local_pe_626_a1_out;
wire ts_local_pe_626_a1_oe;
wire ts_local_pe_626_a1_in;
wire ts_local_pe_627_a0_out;
wire ts_local_pe_627_a0_oe;
wire ts_local_pe_627_a0_in;
wire ts_local_pe_627_a1_out;
wire ts_local_pe_627_a1_oe;
wire ts_local_pe_627_a1_in;
wire ts_local_pe_628_a0_out;
wire ts_local_pe_628_a0_oe;
wire ts_local_pe_628_a0_in;
wire ts_local_pe_628_a1_out;
wire ts_local_pe_628_a1_oe;
wire ts_local_pe_628_a1_in;
wire ts_local_pe_629_a0_out;
wire ts_local_pe_629_a0_oe;
wire ts_local_pe_629_a0_in;
wire ts_local_pe_629_a1_out;
wire ts_local_pe_629_a1_oe;
wire ts_local_pe_629_a1_in;
wire ts_local_pe_630_a0_out;
wire ts_local_pe_630_a0_oe;
wire ts_local_pe_630_a0_in;
wire ts_local_pe_630_a1_out;
wire ts_local_pe_630_a1_oe;
wire ts_local_pe_630_a1_in;
wire ts_local_pe_631_a0_out;
wire ts_local_pe_631_a0_oe;
wire ts_local_pe_631_a0_in;
wire ts_local_pe_631_a1_out;
wire ts_local_pe_631_a1_oe;
wire ts_local_pe_631_a1_in;
wire ts_local_pe_632_a0_out;
wire ts_local_pe_632_a0_oe;
wire ts_local_pe_632_a0_in;
wire ts_local_pe_632_a1_out;
wire ts_local_pe_632_a1_oe;
wire ts_local_pe_632_a1_in;
wire ts_local_pe_633_a0_out;
wire ts_local_pe_633_a0_oe;
wire ts_local_pe_633_a0_in;
wire ts_local_pe_633_a1_out;
wire ts_local_pe_633_a1_oe;
wire ts_local_pe_633_a1_in;
wire ts_local_pe_634_a0_out;
wire ts_local_pe_634_a0_oe;
wire ts_local_pe_634_a0_in;
wire ts_local_pe_634_a1_out;
wire ts_local_pe_634_a1_oe;
wire ts_local_pe_634_a1_in;
wire ts_local_pe_635_a0_out;
wire ts_local_pe_635_a0_oe;
wire ts_local_pe_635_a0_in;
wire ts_local_pe_635_a1_out;
wire ts_local_pe_635_a1_oe;
wire ts_local_pe_635_a1_in;
wire ts_local_pe_636_a0_out;
wire ts_local_pe_636_a0_oe;
wire ts_local_pe_636_a0_in;
wire ts_local_pe_636_a1_out;
wire ts_local_pe_636_a1_oe;
wire ts_local_pe_636_a1_in;
wire ts_local_pe_637_a0_out;
wire ts_local_pe_637_a0_oe;
wire ts_local_pe_637_a0_in;
wire ts_local_pe_637_a1_out;
wire ts_local_pe_637_a1_oe;
wire ts_local_pe_637_a1_in;
wire ts_local_pe_638_a0_out;
wire ts_local_pe_638_a0_oe;
wire ts_local_pe_638_a0_in;
wire ts_local_pe_638_a1_out;
wire ts_local_pe_638_a1_oe;
wire ts_local_pe_638_a1_in;
wire ts_local_pe_639_a0_out;
wire ts_local_pe_639_a0_oe;
wire ts_local_pe_639_a0_in;
wire ts_local_pe_639_a1_out;
wire ts_local_pe_639_a1_oe;
wire ts_local_pe_639_a1_in;
wire ts_local_pe_640_a0_out;
wire ts_local_pe_640_a0_oe;
wire ts_local_pe_640_a0_in;
wire ts_local_pe_640_a1_out;
wire ts_local_pe_640_a1_oe;
wire ts_local_pe_640_a1_in;
wire ts_local_pe_640_a2_out;
wire ts_local_pe_640_a2_oe;
wire ts_local_pe_640_a2_in;
wire ts_local_pe_641_a0_out;
wire ts_local_pe_641_a0_oe;
wire ts_local_pe_641_a0_in;
wire ts_local_pe_641_a1_out;
wire ts_local_pe_641_a1_oe;
wire ts_local_pe_641_a1_in;
wire ts_local_pe_641_a2_out;
wire ts_local_pe_641_a2_oe;
wire ts_local_pe_641_a2_in;
wire ts_local_pe_642_a0_out;
wire ts_local_pe_642_a0_oe;
wire ts_local_pe_642_a0_in;
wire ts_local_pe_642_a1_out;
wire ts_local_pe_642_a1_oe;
wire ts_local_pe_642_a1_in;
wire ts_local_pe_642_a2_out;
wire ts_local_pe_642_a2_oe;
wire ts_local_pe_642_a2_in;
wire ts_local_pe_643_a0_out;
wire ts_local_pe_643_a0_oe;
wire ts_local_pe_643_a0_in;
wire ts_local_pe_643_a1_out;
wire ts_local_pe_643_a1_oe;
wire ts_local_pe_643_a1_in;
wire ts_local_pe_643_a2_out;
wire ts_local_pe_643_a2_oe;
wire ts_local_pe_643_a2_in;
wire ts_local_pe_644_a0_out;
wire ts_local_pe_644_a0_oe;
wire ts_local_pe_644_a0_in;
wire ts_local_pe_644_a1_out;
wire ts_local_pe_644_a1_oe;
wire ts_local_pe_644_a1_in;
wire ts_local_pe_644_a2_out;
wire ts_local_pe_644_a2_oe;
wire ts_local_pe_644_a2_in;
wire ts_local_pe_645_a0_out;
wire ts_local_pe_645_a0_oe;
wire ts_local_pe_645_a0_in;
wire ts_local_pe_645_a1_out;
wire ts_local_pe_645_a1_oe;
wire ts_local_pe_645_a1_in;
wire ts_local_pe_645_a2_out;
wire ts_local_pe_645_a2_oe;
wire ts_local_pe_645_a2_in;
wire ts_local_pe_646_a0_out;
wire ts_local_pe_646_a0_oe;
wire ts_local_pe_646_a0_in;
wire ts_local_pe_646_a1_out;
wire ts_local_pe_646_a1_oe;
wire ts_local_pe_646_a1_in;
wire ts_local_pe_646_a2_out;
wire ts_local_pe_646_a2_oe;
wire ts_local_pe_646_a2_in;
wire ts_local_pe_647_a0_out;
wire ts_local_pe_647_a0_oe;
wire ts_local_pe_647_a0_in;
wire ts_local_pe_647_a1_out;
wire ts_local_pe_647_a1_oe;
wire ts_local_pe_647_a1_in;
wire ts_local_pe_647_a2_out;
wire ts_local_pe_647_a2_oe;
wire ts_local_pe_647_a2_in;
wire ts_local_pe_648_a0_out;
wire ts_local_pe_648_a0_oe;
wire ts_local_pe_648_a0_in;
wire ts_local_pe_648_a1_out;
wire ts_local_pe_648_a1_oe;
wire ts_local_pe_648_a1_in;
wire ts_local_pe_648_a2_out;
wire ts_local_pe_648_a2_oe;
wire ts_local_pe_648_a2_in;
wire ts_local_pe_649_a0_out;
wire ts_local_pe_649_a0_oe;
wire ts_local_pe_649_a0_in;
wire ts_local_pe_649_a1_out;
wire ts_local_pe_649_a1_oe;
wire ts_local_pe_649_a1_in;
wire ts_local_pe_649_a2_out;
wire ts_local_pe_649_a2_oe;
wire ts_local_pe_649_a2_in;
wire ts_local_pe_650_a0_out;
wire ts_local_pe_650_a0_oe;
wire ts_local_pe_650_a0_in;
wire ts_local_pe_650_a1_out;
wire ts_local_pe_650_a1_oe;
wire ts_local_pe_650_a1_in;
wire ts_local_pe_650_a2_out;
wire ts_local_pe_650_a2_oe;
wire ts_local_pe_650_a2_in;
wire ts_local_pe_651_a0_out;
wire ts_local_pe_651_a0_oe;
wire ts_local_pe_651_a0_in;
wire ts_local_pe_651_a1_out;
wire ts_local_pe_651_a1_oe;
wire ts_local_pe_651_a1_in;
wire ts_local_pe_651_a2_out;
wire ts_local_pe_651_a2_oe;
wire ts_local_pe_651_a2_in;
wire ts_local_pe_652_a0_out;
wire ts_local_pe_652_a0_oe;
wire ts_local_pe_652_a0_in;
wire ts_local_pe_652_a1_out;
wire ts_local_pe_652_a1_oe;
wire ts_local_pe_652_a1_in;
wire ts_local_pe_652_a2_out;
wire ts_local_pe_652_a2_oe;
wire ts_local_pe_652_a2_in;
wire ts_local_pe_653_a0_out;
wire ts_local_pe_653_a0_oe;
wire ts_local_pe_653_a0_in;
wire ts_local_pe_653_a1_out;
wire ts_local_pe_653_a1_oe;
wire ts_local_pe_653_a1_in;
wire ts_local_pe_653_a2_out;
wire ts_local_pe_653_a2_oe;
wire ts_local_pe_653_a2_in;
wire ts_local_pe_654_a0_out;
wire ts_local_pe_654_a0_oe;
wire ts_local_pe_654_a0_in;
wire ts_local_pe_654_a1_out;
wire ts_local_pe_654_a1_oe;
wire ts_local_pe_654_a1_in;
wire ts_local_pe_654_a2_out;
wire ts_local_pe_654_a2_oe;
wire ts_local_pe_654_a2_in;
wire ts_local_pe_655_a0_out;
wire ts_local_pe_655_a0_oe;
wire ts_local_pe_655_a0_in;
wire ts_local_pe_655_a1_out;
wire ts_local_pe_655_a1_oe;
wire ts_local_pe_655_a1_in;
wire ts_local_pe_655_a2_out;
wire ts_local_pe_655_a2_oe;
wire ts_local_pe_655_a2_in;
wire ts_local_pe_656_a0_out;
wire ts_local_pe_656_a0_oe;
wire ts_local_pe_656_a0_in;
wire ts_local_pe_656_a1_out;
wire ts_local_pe_656_a1_oe;
wire ts_local_pe_656_a1_in;
wire ts_local_pe_656_a2_out;
wire ts_local_pe_656_a2_oe;
wire ts_local_pe_656_a2_in;
wire ts_local_pe_657_a0_out;
wire ts_local_pe_657_a0_oe;
wire ts_local_pe_657_a0_in;
wire ts_local_pe_657_a1_out;
wire ts_local_pe_657_a1_oe;
wire ts_local_pe_657_a1_in;
wire ts_local_pe_657_a2_out;
wire ts_local_pe_657_a2_oe;
wire ts_local_pe_657_a2_in;
wire ts_local_pe_658_a0_out;
wire ts_local_pe_658_a0_oe;
wire ts_local_pe_658_a0_in;
wire ts_local_pe_658_a1_out;
wire ts_local_pe_658_a1_oe;
wire ts_local_pe_658_a1_in;
wire ts_local_pe_658_a2_out;
wire ts_local_pe_658_a2_oe;
wire ts_local_pe_658_a2_in;
wire ts_local_pe_659_a0_out;
wire ts_local_pe_659_a0_oe;
wire ts_local_pe_659_a0_in;
wire ts_local_pe_659_a1_out;
wire ts_local_pe_659_a1_oe;
wire ts_local_pe_659_a1_in;
wire ts_local_pe_659_a2_out;
wire ts_local_pe_659_a2_oe;
wire ts_local_pe_659_a2_in;
wire ts_local_pe_660_a0_out;
wire ts_local_pe_660_a0_oe;
wire ts_local_pe_660_a0_in;
wire ts_local_pe_660_a1_out;
wire ts_local_pe_660_a1_oe;
wire ts_local_pe_660_a1_in;
wire ts_local_pe_660_a2_out;
wire ts_local_pe_660_a2_oe;
wire ts_local_pe_660_a2_in;
wire ts_local_pe_661_a0_out;
wire ts_local_pe_661_a0_oe;
wire ts_local_pe_661_a0_in;
wire ts_local_pe_661_a1_out;
wire ts_local_pe_661_a1_oe;
wire ts_local_pe_661_a1_in;
wire ts_local_pe_661_a2_out;
wire ts_local_pe_661_a2_oe;
wire ts_local_pe_661_a2_in;
wire ts_local_pe_662_a0_out;
wire ts_local_pe_662_a0_oe;
wire ts_local_pe_662_a0_in;
wire ts_local_pe_662_a1_out;
wire ts_local_pe_662_a1_oe;
wire ts_local_pe_662_a1_in;
wire ts_local_pe_662_a2_out;
wire ts_local_pe_662_a2_oe;
wire ts_local_pe_662_a2_in;
wire ts_local_pe_663_a0_out;
wire ts_local_pe_663_a0_oe;
wire ts_local_pe_663_a0_in;
wire ts_local_pe_663_a1_out;
wire ts_local_pe_663_a1_oe;
wire ts_local_pe_663_a1_in;
wire ts_local_pe_663_a2_out;
wire ts_local_pe_663_a2_oe;
wire ts_local_pe_663_a2_in;
wire ts_local_pe_664_a0_out;
wire ts_local_pe_664_a0_oe;
wire ts_local_pe_664_a0_in;
wire ts_local_pe_664_a1_out;
wire ts_local_pe_664_a1_oe;
wire ts_local_pe_664_a1_in;
wire ts_local_pe_664_a2_out;
wire ts_local_pe_664_a2_oe;
wire ts_local_pe_664_a2_in;
wire ts_local_pe_665_a0_out;
wire ts_local_pe_665_a0_oe;
wire ts_local_pe_665_a0_in;
wire ts_local_pe_665_a1_out;
wire ts_local_pe_665_a1_oe;
wire ts_local_pe_665_a1_in;
wire ts_local_pe_665_a2_out;
wire ts_local_pe_665_a2_oe;
wire ts_local_pe_665_a2_in;
wire ts_local_pe_666_a0_out;
wire ts_local_pe_666_a0_oe;
wire ts_local_pe_666_a0_in;
wire ts_local_pe_666_a1_out;
wire ts_local_pe_666_a1_oe;
wire ts_local_pe_666_a1_in;
wire ts_local_pe_666_a2_out;
wire ts_local_pe_666_a2_oe;
wire ts_local_pe_666_a2_in;
wire ts_local_pe_667_a0_out;
wire ts_local_pe_667_a0_oe;
wire ts_local_pe_667_a0_in;
wire ts_local_pe_667_a1_out;
wire ts_local_pe_667_a1_oe;
wire ts_local_pe_667_a1_in;
wire ts_local_pe_667_a2_out;
wire ts_local_pe_667_a2_oe;
wire ts_local_pe_667_a2_in;
wire ts_local_pe_668_a0_out;
wire ts_local_pe_668_a0_oe;
wire ts_local_pe_668_a0_in;
wire ts_local_pe_668_a1_out;
wire ts_local_pe_668_a1_oe;
wire ts_local_pe_668_a1_in;
wire ts_local_pe_668_a2_out;
wire ts_local_pe_668_a2_oe;
wire ts_local_pe_668_a2_in;
wire ts_local_pe_669_a0_out;
wire ts_local_pe_669_a0_oe;
wire ts_local_pe_669_a0_in;
wire ts_local_pe_669_a1_out;
wire ts_local_pe_669_a1_oe;
wire ts_local_pe_669_a1_in;
wire ts_local_pe_669_a2_out;
wire ts_local_pe_669_a2_oe;
wire ts_local_pe_669_a2_in;
wire ts_local_pe_669_a3_out;
wire ts_local_pe_669_a3_oe;
wire ts_local_pe_669_a3_in;
wire ts_local_pe_670_a0_out;
wire ts_local_pe_670_a0_oe;
wire ts_local_pe_670_a0_in;
wire ts_local_pe_670_a1_out;
wire ts_local_pe_670_a1_oe;
wire ts_local_pe_670_a1_in;
wire ts_local_pe_670_a2_out;
wire ts_local_pe_670_a2_oe;
wire ts_local_pe_670_a2_in;
wire ts_local_pe_670_a3_out;
wire ts_local_pe_670_a3_oe;
wire ts_local_pe_670_a3_in;
wire ts_local_pe_670_a4_out;
wire ts_local_pe_670_a4_oe;
wire ts_local_pe_670_a4_in;
wire ts_local_pe_670_a5_out;
wire ts_local_pe_670_a5_oe;
wire ts_local_pe_670_a5_in;
wire ts_local_pe_670_a6_out;
wire ts_local_pe_670_a6_oe;
wire ts_local_pe_670_a6_in;
wire ts_local_pe_670_a7_out;
wire ts_local_pe_670_a7_oe;
wire ts_local_pe_670_a7_in;
wire ts_local_pe_671_a0_out;
wire ts_local_pe_671_a0_oe;
wire ts_local_pe_671_a0_in;
wire ts_local_pe_671_a1_out;
wire ts_local_pe_671_a1_oe;
wire ts_local_pe_671_a1_in;
wire ts_local_pe_671_a2_out;
wire ts_local_pe_671_a2_oe;
wire ts_local_pe_671_a2_in;
wire ts_local_pe_671_a3_out;
wire ts_local_pe_671_a3_oe;
wire ts_local_pe_671_a3_in;
wire ts_local_pe_671_a4_out;
wire ts_local_pe_671_a4_oe;
wire ts_local_pe_671_a4_in;
wire ts_local_pe_671_a5_out;
wire ts_local_pe_671_a5_oe;
wire ts_local_pe_671_a5_in;
wire ts_local_pe_671_a6_out;
wire ts_local_pe_671_a6_oe;
wire ts_local_pe_671_a6_in;
wire ts_local_pe_671_a7_out;
wire ts_local_pe_671_a7_oe;
wire ts_local_pe_671_a7_in;
wire ts_local_pe_672_a0_out;
wire ts_local_pe_672_a0_oe;
wire ts_local_pe_672_a0_in;
wire ts_local_pe_672_a1_out;
wire ts_local_pe_672_a1_oe;
wire ts_local_pe_672_a1_in;
wire ts_local_pe_672_a2_out;
wire ts_local_pe_672_a2_oe;
wire ts_local_pe_672_a2_in;
wire ts_local_pe_672_a3_out;
wire ts_local_pe_672_a3_oe;
wire ts_local_pe_672_a3_in;
wire ts_local_pe_672_a4_out;
wire ts_local_pe_672_a4_oe;
wire ts_local_pe_672_a4_in;
wire ts_local_pe_672_a5_out;
wire ts_local_pe_672_a5_oe;
wire ts_local_pe_672_a5_in;
wire ts_local_pe_672_a6_out;
wire ts_local_pe_672_a6_oe;
wire ts_local_pe_672_a6_in;
wire ts_local_pe_672_a7_out;
wire ts_local_pe_672_a7_oe;
wire ts_local_pe_672_a7_in;
wire ts_local_pe_673_a0_out;
wire ts_local_pe_673_a0_oe;
wire ts_local_pe_673_a0_in;
wire ts_local_pe_673_a1_out;
wire ts_local_pe_673_a1_oe;
wire ts_local_pe_673_a1_in;
wire ts_local_pe_673_a2_out;
wire ts_local_pe_673_a2_oe;
wire ts_local_pe_673_a2_in;
wire ts_local_pe_673_a3_out;
wire ts_local_pe_673_a3_oe;
wire ts_local_pe_673_a3_in;
wire ts_local_pe_673_a4_out;
wire ts_local_pe_673_a4_oe;
wire ts_local_pe_673_a4_in;
wire ts_local_pe_673_a5_out;
wire ts_local_pe_673_a5_oe;
wire ts_local_pe_673_a5_in;
wire ts_local_pe_673_a6_out;
wire ts_local_pe_673_a6_oe;
wire ts_local_pe_673_a6_in;
wire ts_local_pe_673_a7_out;
wire ts_local_pe_673_a7_oe;
wire ts_local_pe_673_a7_in;
wire ts_local_pe_674_a0_out;
wire ts_local_pe_674_a0_oe;
wire ts_local_pe_674_a0_in;
wire ts_local_pe_674_a1_out;
wire ts_local_pe_674_a1_oe;
wire ts_local_pe_674_a1_in;
wire ts_local_pe_674_a2_out;
wire ts_local_pe_674_a2_oe;
wire ts_local_pe_674_a2_in;
wire ts_local_pe_674_a3_out;
wire ts_local_pe_674_a3_oe;
wire ts_local_pe_674_a3_in;
wire ts_local_pe_674_a4_out;
wire ts_local_pe_674_a4_oe;
wire ts_local_pe_674_a4_in;
wire ts_local_pe_674_a5_out;
wire ts_local_pe_674_a5_oe;
wire ts_local_pe_674_a5_in;
wire ts_local_pe_674_a6_out;
wire ts_local_pe_674_a6_oe;
wire ts_local_pe_674_a6_in;
wire ts_local_pe_674_a7_out;
wire ts_local_pe_674_a7_oe;
wire ts_local_pe_674_a7_in;
wire ts_local_pe_675_a0_out;
wire ts_local_pe_675_a0_oe;
wire ts_local_pe_675_a0_in;
wire ts_local_pe_675_a1_out;
wire ts_local_pe_675_a1_oe;
wire ts_local_pe_675_a1_in;
wire ts_local_pe_675_a2_out;
wire ts_local_pe_675_a2_oe;
wire ts_local_pe_675_a2_in;
wire ts_local_pe_675_a3_out;
wire ts_local_pe_675_a3_oe;
wire ts_local_pe_675_a3_in;
wire ts_local_pe_675_a4_out;
wire ts_local_pe_675_a4_oe;
wire ts_local_pe_675_a4_in;
wire ts_local_pe_675_a5_out;
wire ts_local_pe_675_a5_oe;
wire ts_local_pe_675_a5_in;
wire ts_local_pe_675_a6_out;
wire ts_local_pe_675_a6_oe;
wire ts_local_pe_675_a6_in;
wire ts_local_pe_675_a7_out;
wire ts_local_pe_675_a7_oe;
wire ts_local_pe_675_a7_in;
wire ts_local_pe_676_a0_out;
wire ts_local_pe_676_a0_oe;
wire ts_local_pe_676_a0_in;
wire ts_local_pe_676_a1_out;
wire ts_local_pe_676_a1_oe;
wire ts_local_pe_676_a1_in;
wire ts_local_pe_676_a2_out;
wire ts_local_pe_676_a2_oe;
wire ts_local_pe_676_a2_in;
wire ts_local_pe_676_a3_out;
wire ts_local_pe_676_a3_oe;
wire ts_local_pe_676_a3_in;
wire ts_local_pe_676_a4_out;
wire ts_local_pe_676_a4_oe;
wire ts_local_pe_676_a4_in;
wire ts_local_pe_676_a5_out;
wire ts_local_pe_676_a5_oe;
wire ts_local_pe_676_a5_in;
wire ts_local_pe_676_a6_out;
wire ts_local_pe_676_a6_oe;
wire ts_local_pe_676_a6_in;
wire ts_local_pe_676_a7_out;
wire ts_local_pe_676_a7_oe;
wire ts_local_pe_676_a7_in;
wire ts_local_pe_677_a0_out;
wire ts_local_pe_677_a0_oe;
wire ts_local_pe_677_a0_in;
wire ts_local_pe_677_a1_out;
wire ts_local_pe_677_a1_oe;
wire ts_local_pe_677_a1_in;
wire ts_local_pe_677_a2_out;
wire ts_local_pe_677_a2_oe;
wire ts_local_pe_677_a2_in;
wire ts_local_pe_677_a3_out;
wire ts_local_pe_677_a3_oe;
wire ts_local_pe_677_a3_in;
wire ts_local_pe_677_a4_out;
wire ts_local_pe_677_a4_oe;
wire ts_local_pe_677_a4_in;
wire ts_local_pe_677_a5_out;
wire ts_local_pe_677_a5_oe;
wire ts_local_pe_677_a5_in;
wire ts_local_pe_677_a6_out;
wire ts_local_pe_677_a6_oe;
wire ts_local_pe_677_a6_in;
wire ts_local_pe_677_a7_out;
wire ts_local_pe_677_a7_oe;
wire ts_local_pe_677_a7_in;
wire ts_local_pe_678_a0_out;
wire ts_local_pe_678_a0_oe;
wire ts_local_pe_678_a0_in;
wire ts_local_pe_678_a1_out;
wire ts_local_pe_678_a1_oe;
wire ts_local_pe_678_a1_in;
wire ts_local_pe_678_a2_out;
wire ts_local_pe_678_a2_oe;
wire ts_local_pe_678_a2_in;
wire ts_local_pe_678_a3_out;
wire ts_local_pe_678_a3_oe;
wire ts_local_pe_678_a3_in;
wire ts_local_pe_678_a4_out;
wire ts_local_pe_678_a4_oe;
wire ts_local_pe_678_a4_in;
wire ts_local_pe_678_a5_out;
wire ts_local_pe_678_a5_oe;
wire ts_local_pe_678_a5_in;
wire ts_local_pe_678_a6_out;
wire ts_local_pe_678_a6_oe;
wire ts_local_pe_678_a6_in;
wire ts_local_pe_678_a7_out;
wire ts_local_pe_678_a7_oe;
wire ts_local_pe_678_a7_in;
wire ts_local_pe_679_a0_out;
wire ts_local_pe_679_a0_oe;
wire ts_local_pe_679_a0_in;
wire ts_local_pe_679_a1_out;
wire ts_local_pe_679_a1_oe;
wire ts_local_pe_679_a1_in;
wire ts_local_pe_679_a2_out;
wire ts_local_pe_679_a2_oe;
wire ts_local_pe_679_a2_in;
wire ts_local_pe_679_a3_out;
wire ts_local_pe_679_a3_oe;
wire ts_local_pe_679_a3_in;
wire ts_local_pe_679_a4_out;
wire ts_local_pe_679_a4_oe;
wire ts_local_pe_679_a4_in;
wire ts_local_pe_679_a5_out;
wire ts_local_pe_679_a5_oe;
wire ts_local_pe_679_a5_in;
wire ts_local_pe_679_a6_out;
wire ts_local_pe_679_a6_oe;
wire ts_local_pe_679_a6_in;
wire ts_local_pe_680_a0_out;
wire ts_local_pe_680_a0_oe;
wire ts_local_pe_680_a0_in;
wire ts_local_pe_680_a1_out;
wire ts_local_pe_680_a1_oe;
wire ts_local_pe_680_a1_in;
wire ts_local_pe_680_a2_out;
wire ts_local_pe_680_a2_oe;
wire ts_local_pe_680_a2_in;
wire ts_local_pe_680_a3_out;
wire ts_local_pe_680_a3_oe;
wire ts_local_pe_680_a3_in;
wire ts_local_pe_680_a4_out;
wire ts_local_pe_680_a4_oe;
wire ts_local_pe_680_a4_in;
wire ts_local_pe_680_a5_out;
wire ts_local_pe_680_a5_oe;
wire ts_local_pe_680_a5_in;
wire ts_local_pe_680_a6_out;
wire ts_local_pe_680_a6_oe;
wire ts_local_pe_680_a6_in;
wire ts_local_pe_681_a0_out;
wire ts_local_pe_681_a0_oe;
wire ts_local_pe_681_a0_in;
wire ts_local_pe_681_a1_out;
wire ts_local_pe_681_a1_oe;
wire ts_local_pe_681_a1_in;
wire ts_local_pe_681_a2_out;
wire ts_local_pe_681_a2_oe;
wire ts_local_pe_681_a2_in;
wire ts_local_pe_681_a3_out;
wire ts_local_pe_681_a3_oe;
wire ts_local_pe_681_a3_in;
wire ts_local_pe_681_a4_out;
wire ts_local_pe_681_a4_oe;
wire ts_local_pe_681_a4_in;
wire ts_local_pe_681_a5_out;
wire ts_local_pe_681_a5_oe;
wire ts_local_pe_681_a5_in;
wire ts_local_pe_681_a6_out;
wire ts_local_pe_681_a6_oe;
wire ts_local_pe_681_a6_in;
wire ts_local_pe_682_a0_out;
wire ts_local_pe_682_a0_oe;
wire ts_local_pe_682_a0_in;
wire ts_local_pe_682_a1_out;
wire ts_local_pe_682_a1_oe;
wire ts_local_pe_682_a1_in;
wire ts_local_pe_682_a2_out;
wire ts_local_pe_682_a2_oe;
wire ts_local_pe_682_a2_in;
wire ts_local_pe_682_a3_out;
wire ts_local_pe_682_a3_oe;
wire ts_local_pe_682_a3_in;
wire ts_local_pe_682_a4_out;
wire ts_local_pe_682_a4_oe;
wire ts_local_pe_682_a4_in;
wire ts_local_pe_682_a5_out;
wire ts_local_pe_682_a5_oe;
wire ts_local_pe_682_a5_in;
wire ts_local_pe_682_a6_out;
wire ts_local_pe_682_a6_oe;
wire ts_local_pe_682_a6_in;
wire ts_local_pe_683_a0_out;
wire ts_local_pe_683_a0_oe;
wire ts_local_pe_683_a0_in;
wire ts_local_pe_683_a1_out;
wire ts_local_pe_683_a1_oe;
wire ts_local_pe_683_a1_in;
wire ts_local_pe_683_a2_out;
wire ts_local_pe_683_a2_oe;
wire ts_local_pe_683_a2_in;
wire ts_local_pe_683_a3_out;
wire ts_local_pe_683_a3_oe;
wire ts_local_pe_683_a3_in;
wire ts_local_pe_683_a4_out;
wire ts_local_pe_683_a4_oe;
wire ts_local_pe_683_a4_in;
wire ts_local_pe_683_a5_out;
wire ts_local_pe_683_a5_oe;
wire ts_local_pe_683_a5_in;
wire ts_local_pe_683_a6_out;
wire ts_local_pe_683_a6_oe;
wire ts_local_pe_683_a6_in;
wire ts_local_pe_684_a0_out;
wire ts_local_pe_684_a0_oe;
wire ts_local_pe_684_a0_in;
wire ts_local_pe_684_a1_out;
wire ts_local_pe_684_a1_oe;
wire ts_local_pe_684_a1_in;
wire ts_local_pe_684_a2_out;
wire ts_local_pe_684_a2_oe;
wire ts_local_pe_684_a2_in;
wire ts_local_pe_684_a3_out;
wire ts_local_pe_684_a3_oe;
wire ts_local_pe_684_a3_in;
wire ts_local_pe_684_a4_out;
wire ts_local_pe_684_a4_oe;
wire ts_local_pe_684_a4_in;
wire ts_local_pe_684_a5_out;
wire ts_local_pe_684_a5_oe;
wire ts_local_pe_684_a5_in;
wire ts_local_pe_684_a6_out;
wire ts_local_pe_684_a6_oe;
wire ts_local_pe_684_a6_in;
wire ts_local_pe_685_a0_out;
wire ts_local_pe_685_a0_oe;
wire ts_local_pe_685_a0_in;
wire ts_local_pe_685_a1_out;
wire ts_local_pe_685_a1_oe;
wire ts_local_pe_685_a1_in;
wire ts_local_pe_685_a2_out;
wire ts_local_pe_685_a2_oe;
wire ts_local_pe_685_a2_in;
wire ts_local_pe_685_a3_out;
wire ts_local_pe_685_a3_oe;
wire ts_local_pe_685_a3_in;
wire ts_local_pe_685_a4_out;
wire ts_local_pe_685_a4_oe;
wire ts_local_pe_685_a4_in;
wire ts_local_pe_685_a5_out;
wire ts_local_pe_685_a5_oe;
wire ts_local_pe_685_a5_in;
wire ts_local_pe_685_a6_out;
wire ts_local_pe_685_a6_oe;
wire ts_local_pe_685_a6_in;
wire ts_local_pe_686_a0_out;
wire ts_local_pe_686_a0_oe;
wire ts_local_pe_686_a0_in;
wire ts_local_pe_686_a1_out;
wire ts_local_pe_686_a1_oe;
wire ts_local_pe_686_a1_in;
wire ts_local_pe_686_a2_out;
wire ts_local_pe_686_a2_oe;
wire ts_local_pe_686_a2_in;

// Output buffers
wire refreq_obuf;
wire obbreq_obuf;
wire bbreq_0_obuf;
wire bbreq_1_obuf;
wire gbreq_0_obuf;
wire gbreq_1_obuf;
wire dram_obuf;
wire blank_obuf;
wire aen_obuf;
wire den_0_obuf;
wire den_1_obuf;
wire den_2_obuf;


// Output buffers
assign refreq = refreq_obuf;
assign obbreq = obbreq_obuf;
assign bbreq_0 = bbreq_0_obuf;
assign bbreq_1 = bbreq_1_obuf;
assign gbreq_0 = gbreq_0_obuf;
assign gbreq_1 = gbreq_1_obuf;
assign dram = dram_obuf;
assign blank = blank_obuf;
assign aen = aen_obuf;
assign den_0 = den_0_obuf;
assign den_1 = den_1_obuf;
assign den_2 = den_2_obuf;


// TOM.NET (140) - dpad[0] : bd8t
bd dpad_index_0_inst
(
	.io_out /* BUS */ (xd_0_out),
	.io_oe /* BUS */ (xd_0_oe),
	.io_in /* BUS */ (xd_0_in),
	.zi /* OUT */ (din_0),
	.po /* OUT */ (nt_78),
	.a /* IN */ (dp_0),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_0_obuf),
	.pi /* IN */ (nt_77)
);

// TOM.NET (141) - dpad[1] : bd8t
bd dpad_index_1_inst
(
	.io_out /* BUS */ (xd_1_out),
	.io_oe /* BUS */ (xd_1_oe),
	.io_in /* BUS */ (xd_1_in),
	.zi /* OUT */ (din_1),
	.po /* OUT */ (nt_74),
	.a /* IN */ (dp_1),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_0_obuf),
	.pi /* IN */ (nt_73)
);

// TOM.NET (142) - dpad[2] : bd8t
bd dpad_index_2_inst
(
	.io_out /* BUS */ (xd_2_out),
	.io_oe /* BUS */ (xd_2_oe),
	.io_in /* BUS */ (xd_2_in),
	.zi /* OUT */ (din_2),
	.po /* OUT */ (nt_70),
	.a /* IN */ (dp_2),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_0_obuf),
	.pi /* IN */ (nt_69)
);

// TOM.NET (143) - dpad[3] : bd8t
bd dpad_index_3_inst
(
	.io_out /* BUS */ (xd_3_out),
	.io_oe /* BUS */ (xd_3_oe),
	.io_in /* BUS */ (xd_3_in),
	.zi /* OUT */ (din_3),
	.po /* OUT */ (nt_66),
	.a /* IN */ (dp_3),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_0_obuf),
	.pi /* IN */ (nt_65)
);

// TOM.NET (144) - dpad[4] : bd8t
bd dpad_index_4_inst
(
	.io_out /* BUS */ (xd_4_out),
	.io_oe /* BUS */ (xd_4_oe),
	.io_in /* BUS */ (xd_4_in),
	.zi /* OUT */ (din_4),
	.po /* OUT */ (nt_62),
	.a /* IN */ (dp_4),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_0_obuf),
	.pi /* IN */ (nt_61)
);

// TOM.NET (145) - dpad[5] : bd8t
bd dpad_index_5_inst
(
	.io_out /* BUS */ (xd_5_out),
	.io_oe /* BUS */ (xd_5_oe),
	.io_in /* BUS */ (xd_5_in),
	.zi /* OUT */ (din_5),
	.po /* OUT */ (nt_58),
	.a /* IN */ (dp_5),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_0_obuf),
	.pi /* IN */ (nt_57)
);

// TOM.NET (146) - dpad[6] : bd8t
bd dpad_index_6_inst
(
	.io_out /* BUS */ (xd_6_out),
	.io_oe /* BUS */ (xd_6_oe),
	.io_in /* BUS */ (xd_6_in),
	.zi /* OUT */ (din_6),
	.po /* OUT */ (nt_54),
	.a /* IN */ (dp_6),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_0_obuf),
	.pi /* IN */ (nt_53)
);

// TOM.NET (147) - dpad[7] : bd8t
bd dpad_index_7_inst
(
	.io_out /* BUS */ (xd_7_out),
	.io_oe /* BUS */ (xd_7_oe),
	.io_in /* BUS */ (xd_7_in),
	.zi /* OUT */ (din_7),
	.po /* OUT */ (nt_50),
	.a /* IN */ (dp_7),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_0_obuf),
	.pi /* IN */ (nt_49)
);

// TOM.NET (149) - dpad[8] : bd8t
bd dpad_index_8_inst
(
	.io_out /* BUS */ (xd_8_out),
	.io_oe /* BUS */ (xd_8_oe),
	.io_in /* BUS */ (xd_8_in),
	.zi /* OUT */ (din_8),
	.po /* OUT */ (nt_49),
	.a /* IN */ (dp_8),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_0_obuf),
	.pi /* IN */ (nt_48)
);

// TOM.NET (150) - dpad[9] : bd8t
bd dpad_index_9_inst
(
	.io_out /* BUS */ (xd_9_out),
	.io_oe /* BUS */ (xd_9_oe),
	.io_in /* BUS */ (xd_9_in),
	.zi /* OUT */ (din_9),
	.po /* OUT */ (nt_53),
	.a /* IN */ (dp_9),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_0_obuf),
	.pi /* IN */ (nt_52)
);

// TOM.NET (151) - dpad[10] : bd8t
bd dpad_index_10_inst
(
	.io_out /* BUS */ (xd_10_out),
	.io_oe /* BUS */ (xd_10_oe),
	.io_in /* BUS */ (xd_10_in),
	.zi /* OUT */ (din_10),
	.po /* OUT */ (nt_57),
	.a /* IN */ (dp_10),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_0_obuf),
	.pi /* IN */ (nt_56)
);

// TOM.NET (152) - dpad[11] : bd8t
bd dpad_index_11_inst
(
	.io_out /* BUS */ (xd_11_out),
	.io_oe /* BUS */ (xd_11_oe),
	.io_in /* BUS */ (xd_11_in),
	.zi /* OUT */ (din_11),
	.po /* OUT */ (nt_61),
	.a /* IN */ (dp_11),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_0_obuf),
	.pi /* IN */ (nt_60)
);

// TOM.NET (153) - dpad[12] : bd8t
bd dpad_index_12_inst
(
	.io_out /* BUS */ (xd_12_out),
	.io_oe /* BUS */ (xd_12_oe),
	.io_in /* BUS */ (xd_12_in),
	.zi /* OUT */ (din_12),
	.po /* OUT */ (nt_65),
	.a /* IN */ (dp_12),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_0_obuf),
	.pi /* IN */ (nt_64)
);

// TOM.NET (154) - dpad[13] : bd8t
bd dpad_index_13_inst
(
	.io_out /* BUS */ (xd_13_out),
	.io_oe /* BUS */ (xd_13_oe),
	.io_in /* BUS */ (xd_13_in),
	.zi /* OUT */ (din_13),
	.po /* OUT */ (nt_69),
	.a /* IN */ (dp_13),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_0_obuf),
	.pi /* IN */ (nt_68)
);

// TOM.NET (155) - dpad[14] : bd8t
bd dpad_index_14_inst
(
	.io_out /* BUS */ (xd_14_out),
	.io_oe /* BUS */ (xd_14_oe),
	.io_in /* BUS */ (xd_14_in),
	.zi /* OUT */ (din_14),
	.po /* OUT */ (nt_73),
	.a /* IN */ (dp_14),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_0_obuf),
	.pi /* IN */ (nt_72)
);

// TOM.NET (156) - dpad[15] : bd8t
bd dpad_index_15_inst
(
	.io_out /* BUS */ (xd_15_out),
	.io_oe /* BUS */ (xd_15_oe),
	.io_in /* BUS */ (xd_15_in),
	.zi /* OUT */ (din_15),
	.po /* OUT */ (nt_77),
	.a /* IN */ (dp_15),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_0_obuf),
	.pi /* IN */ (nt_76)
);

// TOM.NET (158) - dpad[16] : bd4t
bd dpad_index_16_inst
(
	.io_out /* BUS */ (xd_16_out),
	.io_oe /* BUS */ (xd_16_oe),
	.io_in /* BUS */ (xd_16_in),
	.zi /* OUT */ (din_16),
	.po /* OUT */ (nt_76),
	.a /* IN */ (dout_16),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_1_obuf),
	.pi /* IN */ (nt_75)
);

// TOM.NET (159) - dpad[17] : bd4t
bd dpad_index_17_inst
(
	.io_out /* BUS */ (xd_17_out),
	.io_oe /* BUS */ (xd_17_oe),
	.io_in /* BUS */ (xd_17_in),
	.zi /* OUT */ (din_17),
	.po /* OUT */ (nt_72),
	.a /* IN */ (dout_17),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_1_obuf),
	.pi /* IN */ (nt_71)
);

// TOM.NET (160) - dpad[18] : bd4t
bd dpad_index_18_inst
(
	.io_out /* BUS */ (xd_18_out),
	.io_oe /* BUS */ (xd_18_oe),
	.io_in /* BUS */ (xd_18_in),
	.zi /* OUT */ (din_18),
	.po /* OUT */ (nt_68),
	.a /* IN */ (dout_18),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_1_obuf),
	.pi /* IN */ (nt_67)
);

// TOM.NET (161) - dpad[19] : bd4t
bd dpad_index_19_inst
(
	.io_out /* BUS */ (xd_19_out),
	.io_oe /* BUS */ (xd_19_oe),
	.io_in /* BUS */ (xd_19_in),
	.zi /* OUT */ (din_19),
	.po /* OUT */ (nt_64),
	.a /* IN */ (dout_19),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_1_obuf),
	.pi /* IN */ (nt_63)
);

// TOM.NET (162) - dpad[20] : bd4t
bd dpad_index_20_inst
(
	.io_out /* BUS */ (xd_20_out),
	.io_oe /* BUS */ (xd_20_oe),
	.io_in /* BUS */ (xd_20_in),
	.zi /* OUT */ (din_20),
	.po /* OUT */ (nt_60),
	.a /* IN */ (dout_20),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_1_obuf),
	.pi /* IN */ (nt_59)
);

// TOM.NET (163) - dpad[21] : bd4t
bd dpad_index_21_inst
(
	.io_out /* BUS */ (xd_21_out),
	.io_oe /* BUS */ (xd_21_oe),
	.io_in /* BUS */ (xd_21_in),
	.zi /* OUT */ (din_21),
	.po /* OUT */ (nt_56),
	.a /* IN */ (dout_21),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_1_obuf),
	.pi /* IN */ (nt_55)
);

// TOM.NET (164) - dpad[22] : bd4t
bd dpad_index_22_inst
(
	.io_out /* BUS */ (xd_22_out),
	.io_oe /* BUS */ (xd_22_oe),
	.io_in /* BUS */ (xd_22_in),
	.zi /* OUT */ (din_22),
	.po /* OUT */ (nt_52),
	.a /* IN */ (dout_22),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_1_obuf),
	.pi /* IN */ (nt_51)
);

// TOM.NET (165) - dpad[23] : bd4t
bd dpad_index_23_inst
(
	.io_out /* BUS */ (xd_23_out),
	.io_oe /* BUS */ (xd_23_oe),
	.io_in /* BUS */ (xd_23_in),
	.zi /* OUT */ (din_23),
	.po /* OUT */ (nt_48),
	.a /* IN */ (dout_23),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_1_obuf),
	.pi /* IN */ (nt_47)
);

// TOM.NET (167) - dpad[24] : bd4t
bd dpad_index_24_inst
(
	.io_out /* BUS */ (xd_24_out),
	.io_oe /* BUS */ (xd_24_oe),
	.io_in /* BUS */ (xd_24_in),
	.zi /* OUT */ (din_24),
	.po /* OUT */ (nt_47),
	.a /* IN */ (dout_24),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_1_obuf),
	.pi /* IN */ (nt_46)
);

// TOM.NET (168) - dpad[25] : bd4t
bd dpad_index_25_inst
(
	.io_out /* BUS */ (xd_25_out),
	.io_oe /* BUS */ (xd_25_oe),
	.io_in /* BUS */ (xd_25_in),
	.zi /* OUT */ (din_25),
	.po /* OUT */ (nt_51),
	.a /* IN */ (dout_25),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_1_obuf),
	.pi /* IN */ (nt_50)
);

// TOM.NET (169) - dpad[26] : bd4t
bd dpad_index_26_inst
(
	.io_out /* BUS */ (xd_26_out),
	.io_oe /* BUS */ (xd_26_oe),
	.io_in /* BUS */ (xd_26_in),
	.zi /* OUT */ (din_26),
	.po /* OUT */ (nt_55),
	.a /* IN */ (dout_26),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_1_obuf),
	.pi /* IN */ (nt_54)
);

// TOM.NET (170) - dpad[27] : bd4t
bd dpad_index_27_inst
(
	.io_out /* BUS */ (xd_27_out),
	.io_oe /* BUS */ (xd_27_oe),
	.io_in /* BUS */ (xd_27_in),
	.zi /* OUT */ (din_27),
	.po /* OUT */ (nt_59),
	.a /* IN */ (dout_27),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_1_obuf),
	.pi /* IN */ (nt_58)
);

// TOM.NET (171) - dpad[28] : bd4t
bd dpad_index_28_inst
(
	.io_out /* BUS */ (xd_28_out),
	.io_oe /* BUS */ (xd_28_oe),
	.io_in /* BUS */ (xd_28_in),
	.zi /* OUT */ (din_28),
	.po /* OUT */ (nt_63),
	.a /* IN */ (dout_28),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_1_obuf),
	.pi /* IN */ (nt_62)
);

// TOM.NET (172) - dpad[29] : bd4t
bd dpad_index_29_inst
(
	.io_out /* BUS */ (xd_29_out),
	.io_oe /* BUS */ (xd_29_oe),
	.io_in /* BUS */ (xd_29_in),
	.zi /* OUT */ (din_29),
	.po /* OUT */ (nt_67),
	.a /* IN */ (dout_29),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_1_obuf),
	.pi /* IN */ (nt_66)
);

// TOM.NET (173) - dpad[30] : bd4t
bd dpad_index_30_inst
(
	.io_out /* BUS */ (xd_30_out),
	.io_oe /* BUS */ (xd_30_oe),
	.io_in /* BUS */ (xd_30_in),
	.zi /* OUT */ (din_30),
	.po /* OUT */ (nt_71),
	.a /* IN */ (dout_30),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_1_obuf),
	.pi /* IN */ (nt_70)
);

// TOM.NET (174) - dpad[31] : bd4t
bd dpad_index_31_inst
(
	.io_out /* BUS */ (xd_31_out),
	.io_oe /* BUS */ (xd_31_oe),
	.io_in /* BUS */ (xd_31_in),
	.zi /* OUT */ (din_31),
	.po /* OUT */ (nt_75),
	.a /* IN */ (dout_31),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_1_obuf),
	.pi /* IN */ (nt_74)
);

// TOM.NET (176) - dpad[32] : bd4t
bd dpad_index_32_inst
(
	.io_out /* BUS */ (xd_32_out),
	.io_oe /* BUS */ (xd_32_oe),
	.io_in /* BUS */ (xd_32_in),
	.zi /* OUT */ (din_32),
	.po /* OUT */ (nt_119),
	.a /* IN */ (dout_32),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_2_obuf),
	.pi /* IN */ (nt_118)
);

// TOM.NET (177) - dpad[33] : bd4t
bd dpad_index_33_inst
(
	.io_out /* BUS */ (xd_33_out),
	.io_oe /* BUS */ (xd_33_oe),
	.io_in /* BUS */ (xd_33_in),
	.zi /* OUT */ (din_33),
	.po /* OUT */ (nt_115),
	.a /* IN */ (dout_33),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_2_obuf),
	.pi /* IN */ (nt_114)
);

// TOM.NET (178) - dpad[34] : bd4t
bd dpad_index_34_inst
(
	.io_out /* BUS */ (xd_34_out),
	.io_oe /* BUS */ (xd_34_oe),
	.io_in /* BUS */ (xd_34_in),
	.zi /* OUT */ (din_34),
	.po /* OUT */ (nt_111),
	.a /* IN */ (dout_34),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_2_obuf),
	.pi /* IN */ (nt_110)
);

// TOM.NET (179) - dpad[35] : bd4t
bd dpad_index_35_inst
(
	.io_out /* BUS */ (xd_35_out),
	.io_oe /* BUS */ (xd_35_oe),
	.io_in /* BUS */ (xd_35_in),
	.zi /* OUT */ (din_35),
	.po /* OUT */ (nt_107),
	.a /* IN */ (dout_35),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_2_obuf),
	.pi /* IN */ (nt_106)
);

// TOM.NET (180) - dpad[36] : bd4t
bd dpad_index_36_inst
(
	.io_out /* BUS */ (xd_36_out),
	.io_oe /* BUS */ (xd_36_oe),
	.io_in /* BUS */ (xd_36_in),
	.zi /* OUT */ (din_36),
	.po /* OUT */ (nt_103),
	.a /* IN */ (dout_36),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_2_obuf),
	.pi /* IN */ (nt_102)
);

// TOM.NET (181) - dpad[37] : bd4t
bd dpad_index_37_inst
(
	.io_out /* BUS */ (xd_37_out),
	.io_oe /* BUS */ (xd_37_oe),
	.io_in /* BUS */ (xd_37_in),
	.zi /* OUT */ (din_37),
	.po /* OUT */ (nt_99),
	.a /* IN */ (dout_37),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_2_obuf),
	.pi /* IN */ (nt_98)
);

// TOM.NET (182) - dpad[38] : bd4t
bd dpad_index_38_inst
(
	.io_out /* BUS */ (xd_38_out),
	.io_oe /* BUS */ (xd_38_oe),
	.io_in /* BUS */ (xd_38_in),
	.zi /* OUT */ (din_38),
	.po /* OUT */ (nt_95),
	.a /* IN */ (dout_38),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_2_obuf),
	.pi /* IN */ (nt_94)
);

// TOM.NET (183) - dpad[39] : bd4t
bd dpad_index_39_inst
(
	.io_out /* BUS */ (xd_39_out),
	.io_oe /* BUS */ (xd_39_oe),
	.io_in /* BUS */ (xd_39_in),
	.zi /* OUT */ (din_39),
	.po /* OUT */ (nt_91),
	.a /* IN */ (dout_39),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_2_obuf),
	.pi /* IN */ (nt_90)
);

// TOM.NET (185) - dpad[40] : bd4t
bd dpad_index_40_inst
(
	.io_out /* BUS */ (xd_40_out),
	.io_oe /* BUS */ (xd_40_oe),
	.io_in /* BUS */ (xd_40_in),
	.zi /* OUT */ (din_40),
	.po /* OUT */ (nt_90),
	.a /* IN */ (dout_40),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_2_obuf),
	.pi /* IN */ (nt_89)
);

// TOM.NET (186) - dpad[41] : bd4t
bd dpad_index_41_inst
(
	.io_out /* BUS */ (xd_41_out),
	.io_oe /* BUS */ (xd_41_oe),
	.io_in /* BUS */ (xd_41_in),
	.zi /* OUT */ (din_41),
	.po /* OUT */ (nt_94),
	.a /* IN */ (dout_41),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_2_obuf),
	.pi /* IN */ (nt_93)
);

// TOM.NET (187) - dpad[42] : bd4t
bd dpad_index_42_inst
(
	.io_out /* BUS */ (xd_42_out),
	.io_oe /* BUS */ (xd_42_oe),
	.io_in /* BUS */ (xd_42_in),
	.zi /* OUT */ (din_42),
	.po /* OUT */ (nt_98),
	.a /* IN */ (dout_42),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_2_obuf),
	.pi /* IN */ (nt_97)
);

// TOM.NET (188) - dpad[43] : bd4t
bd dpad_index_43_inst
(
	.io_out /* BUS */ (xd_43_out),
	.io_oe /* BUS */ (xd_43_oe),
	.io_in /* BUS */ (xd_43_in),
	.zi /* OUT */ (din_43),
	.po /* OUT */ (nt_102),
	.a /* IN */ (dout_43),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_2_obuf),
	.pi /* IN */ (nt_101)
);

// TOM.NET (189) - dpad[44] : bd4t
bd dpad_index_44_inst
(
	.io_out /* BUS */ (xd_44_out),
	.io_oe /* BUS */ (xd_44_oe),
	.io_in /* BUS */ (xd_44_in),
	.zi /* OUT */ (din_44),
	.po /* OUT */ (nt_106),
	.a /* IN */ (dout_44),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_2_obuf),
	.pi /* IN */ (nt_105)
);

// TOM.NET (190) - dpad[45] : bd4t
bd dpad_index_45_inst
(
	.io_out /* BUS */ (xd_45_out),
	.io_oe /* BUS */ (xd_45_oe),
	.io_in /* BUS */ (xd_45_in),
	.zi /* OUT */ (din_45),
	.po /* OUT */ (nt_110),
	.a /* IN */ (dout_45),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_2_obuf),
	.pi /* IN */ (nt_109)
);

// TOM.NET (191) - dpad[46] : bd4t
bd dpad_index_46_inst
(
	.io_out /* BUS */ (xd_46_out),
	.io_oe /* BUS */ (xd_46_oe),
	.io_in /* BUS */ (xd_46_in),
	.zi /* OUT */ (din_46),
	.po /* OUT */ (nt_114),
	.a /* IN */ (dout_46),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_2_obuf),
	.pi /* IN */ (nt_113)
);

// TOM.NET (192) - dpad[47] : bd4t
bd dpad_index_47_inst
(
	.io_out /* BUS */ (xd_47_out),
	.io_oe /* BUS */ (xd_47_oe),
	.io_in /* BUS */ (xd_47_in),
	.zi /* OUT */ (din_47),
	.po /* OUT */ (nt_118),
	.a /* IN */ (dout_47),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_2_obuf),
	.pi /* IN */ (nt_117)
);

// TOM.NET (194) - dpad[48] : bd4t
bd dpad_index_48_inst
(
	.io_out /* BUS */ (xd_48_out),
	.io_oe /* BUS */ (xd_48_oe),
	.io_in /* BUS */ (xd_48_in),
	.zi /* OUT */ (din_48),
	.po /* OUT */ (nt_121),
	.a /* IN */ (dout_48),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_2_obuf),
	.pi /* IN */ (nt_120)
);

// TOM.NET (195) - dpad[49] : bd4t
bd dpad_index_49_inst
(
	.io_out /* BUS */ (xd_49_out),
	.io_oe /* BUS */ (xd_49_oe),
	.io_in /* BUS */ (xd_49_in),
	.zi /* OUT */ (din_49),
	.po /* OUT */ (nt_117),
	.a /* IN */ (dout_49),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_2_obuf),
	.pi /* IN */ (nt_116)
);

// TOM.NET (196) - dpad[50] : bd4t
bd dpad_index_50_inst
(
	.io_out /* BUS */ (xd_50_out),
	.io_oe /* BUS */ (xd_50_oe),
	.io_in /* BUS */ (xd_50_in),
	.zi /* OUT */ (din_50),
	.po /* OUT */ (nt_113),
	.a /* IN */ (dout_50),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_2_obuf),
	.pi /* IN */ (nt_112)
);

// TOM.NET (197) - dpad[51] : bd4t
bd dpad_index_51_inst
(
	.io_out /* BUS */ (xd_51_out),
	.io_oe /* BUS */ (xd_51_oe),
	.io_in /* BUS */ (xd_51_in),
	.zi /* OUT */ (din_51),
	.po /* OUT */ (nt_109),
	.a /* IN */ (dout_51),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_2_obuf),
	.pi /* IN */ (nt_108)
);

// TOM.NET (198) - dpad[52] : bd4t
bd dpad_index_52_inst
(
	.io_out /* BUS */ (xd_52_out),
	.io_oe /* BUS */ (xd_52_oe),
	.io_in /* BUS */ (xd_52_in),
	.zi /* OUT */ (din_52),
	.po /* OUT */ (nt_105),
	.a /* IN */ (dout_52),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_2_obuf),
	.pi /* IN */ (nt_104)
);

// TOM.NET (199) - dpad[53] : bd4t
bd dpad_index_53_inst
(
	.io_out /* BUS */ (xd_53_out),
	.io_oe /* BUS */ (xd_53_oe),
	.io_in /* BUS */ (xd_53_in),
	.zi /* OUT */ (din_53),
	.po /* OUT */ (nt_101),
	.a /* IN */ (dout_53),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_2_obuf),
	.pi /* IN */ (nt_100)
);

// TOM.NET (200) - dpad[54] : bd4t
bd dpad_index_54_inst
(
	.io_out /* BUS */ (xd_54_out),
	.io_oe /* BUS */ (xd_54_oe),
	.io_in /* BUS */ (xd_54_in),
	.zi /* OUT */ (din_54),
	.po /* OUT */ (nt_97),
	.a /* IN */ (dout_54),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_2_obuf),
	.pi /* IN */ (nt_96)
);

// TOM.NET (201) - dpad[55] : bd4t
bd dpad_index_55_inst
(
	.io_out /* BUS */ (xd_55_out),
	.io_oe /* BUS */ (xd_55_oe),
	.io_in /* BUS */ (xd_55_in),
	.zi /* OUT */ (din_55),
	.po /* OUT */ (nt_93),
	.a /* IN */ (dout_55),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_2_obuf),
	.pi /* IN */ (nt_92)
);

// TOM.NET (203) - dpad[56] : bd4t
bd dpad_index_56_inst
(
	.io_out /* BUS */ (xd_56_out),
	.io_oe /* BUS */ (xd_56_oe),
	.io_in /* BUS */ (xd_56_in),
	.zi /* OUT */ (din_56),
	.po /* OUT */ (nt_92),
	.a /* IN */ (dout_56),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_2_obuf),
	.pi /* IN */ (nt_91)
);

// TOM.NET (204) - dpad[57] : bd4t
bd dpad_index_57_inst
(
	.io_out /* BUS */ (xd_57_out),
	.io_oe /* BUS */ (xd_57_oe),
	.io_in /* BUS */ (xd_57_in),
	.zi /* OUT */ (din_57),
	.po /* OUT */ (nt_96),
	.a /* IN */ (dout_57),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_2_obuf),
	.pi /* IN */ (nt_95)
);

// TOM.NET (205) - dpad[58] : bd4t
bd dpad_index_58_inst
(
	.io_out /* BUS */ (xd_58_out),
	.io_oe /* BUS */ (xd_58_oe),
	.io_in /* BUS */ (xd_58_in),
	.zi /* OUT */ (din_58),
	.po /* OUT */ (nt_100),
	.a /* IN */ (dout_58),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_2_obuf),
	.pi /* IN */ (nt_99)
);

// TOM.NET (206) - dpad[59] : bd4t
bd dpad_index_59_inst
(
	.io_out /* BUS */ (xd_59_out),
	.io_oe /* BUS */ (xd_59_oe),
	.io_in /* BUS */ (xd_59_in),
	.zi /* OUT */ (din_59),
	.po /* OUT */ (nt_104),
	.a /* IN */ (dout_59),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_2_obuf),
	.pi /* IN */ (nt_103)
);

// TOM.NET (207) - dpad[60] : bd4t
bd dpad_index_60_inst
(
	.io_out /* BUS */ (xd_60_out),
	.io_oe /* BUS */ (xd_60_oe),
	.io_in /* BUS */ (xd_60_in),
	.zi /* OUT */ (din_60),
	.po /* OUT */ (nt_108),
	.a /* IN */ (dout_60),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_2_obuf),
	.pi /* IN */ (nt_107)
);

// TOM.NET (208) - dpad[61] : bd4t
bd dpad_index_61_inst
(
	.io_out /* BUS */ (xd_61_out),
	.io_oe /* BUS */ (xd_61_oe),
	.io_in /* BUS */ (xd_61_in),
	.zi /* OUT */ (din_61),
	.po /* OUT */ (nt_112),
	.a /* IN */ (dout_61),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_2_obuf),
	.pi /* IN */ (nt_111)
);

// TOM.NET (209) - dpad[62] : bd4t
bd dpad_index_62_inst
(
	.io_out /* BUS */ (xd_62_out),
	.io_oe /* BUS */ (xd_62_oe),
	.io_in /* BUS */ (xd_62_in),
	.zi /* OUT */ (din_62),
	.po /* OUT */ (nt_116),
	.a /* IN */ (dout_62),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_2_obuf),
	.pi /* IN */ (nt_115)
);

// TOM.NET (210) - dpad[63] : bd4t
bd dpad_index_63_inst
(
	.io_out /* BUS */ (xd_63_out),
	.io_oe /* BUS */ (xd_63_oe),
	.io_in /* BUS */ (xd_63_in),
	.zi /* OUT */ (din_63),
	.po /* OUT */ (nt_120),
	.a /* IN */ (dout_63),
	.en /* IN */ (gnd),
	.tn /* IN */ (den_2_obuf),
	.pi /* IN */ (nt_119)
);

// TOM.NET (212) - apad[0] : bd4t
bd apad_index_0_inst
(
	.io_out /* BUS */ (xa_0_out),
	.io_oe /* BUS */ (xa_0_oe),
	.io_in /* BUS */ (xa_0_in),
	.zi /* OUT */ (ain_0),
	.po /* OUT */ (nt_23),
	.a /* IN */ (maska_0),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_22)
);

// TOM.NET (213) - apad[1] : bd4t
bd apad_index_1_inst
(
	.io_out /* BUS */ (xa_1_out),
	.io_oe /* BUS */ (xa_1_oe),
	.io_in /* BUS */ (xa_1_in),
	.zi /* OUT */ (ain_1),
	.po /* OUT */ (nt_24),
	.a /* IN */ (maska_1),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_23)
);

// TOM.NET (214) - apad[2] : bd4t
bd apad_index_2_inst
(
	.io_out /* BUS */ (xa_2_out),
	.io_oe /* BUS */ (xa_2_oe),
	.io_in /* BUS */ (xa_2_in),
	.zi /* OUT */ (ain_2),
	.po /* OUT */ (nt_25),
	.a /* IN */ (maska_2),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_24)
);

// TOM.NET (215) - apad[3-23] : bd4t
bd apad_from_3_to_23_inst_0
(
	.io_out /* BUS */ (xa_3_out),
	.io_oe /* BUS */ (xa_3_oe),
	.io_in /* BUS */ (xa_3_in),
	.zi /* OUT */ (ain_3),
	.po /* OUT */ (nt_26),
	.a /* IN */ (aout_3),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_25)
);
bd apad_from_3_to_23_inst_1
(
	.io_out /* BUS */ (xa_4_out),
	.io_oe /* BUS */ (xa_4_oe),
	.io_in /* BUS */ (xa_4_in),
	.zi /* OUT */ (ain_4),
	.po /* OUT */ (nt_27),
	.a /* IN */ (aout_4),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_26)
);
bd apad_from_3_to_23_inst_2
(
	.io_out /* BUS */ (xa_5_out),
	.io_oe /* BUS */ (xa_5_oe),
	.io_in /* BUS */ (xa_5_in),
	.zi /* OUT */ (ain_5),
	.po /* OUT */ (nt_28),
	.a /* IN */ (aout_5),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_27)
);
bd apad_from_3_to_23_inst_3
(
	.io_out /* BUS */ (xa_6_out),
	.io_oe /* BUS */ (xa_6_oe),
	.io_in /* BUS */ (xa_6_in),
	.zi /* OUT */ (ain_6),
	.po /* OUT */ (nt_29),
	.a /* IN */ (aout_6),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_28)
);
bd apad_from_3_to_23_inst_4
(
	.io_out /* BUS */ (xa_7_out),
	.io_oe /* BUS */ (xa_7_oe),
	.io_in /* BUS */ (xa_7_in),
	.zi /* OUT */ (ain_7),
	.po /* OUT */ (nt_30),
	.a /* IN */ (aout_7),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_29)
);
bd apad_from_3_to_23_inst_5
(
	.io_out /* BUS */ (xa_8_out),
	.io_oe /* BUS */ (xa_8_oe),
	.io_in /* BUS */ (xa_8_in),
	.zi /* OUT */ (ain_8),
	.po /* OUT */ (nt_31),
	.a /* IN */ (aout_8),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_30)
);
bd apad_from_3_to_23_inst_6
(
	.io_out /* BUS */ (xa_9_out),
	.io_oe /* BUS */ (xa_9_oe),
	.io_in /* BUS */ (xa_9_in),
	.zi /* OUT */ (ain_9),
	.po /* OUT */ (nt_32),
	.a /* IN */ (aout_9),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_31)
);
bd apad_from_3_to_23_inst_7
(
	.io_out /* BUS */ (xa_10_out),
	.io_oe /* BUS */ (xa_10_oe),
	.io_in /* BUS */ (xa_10_in),
	.zi /* OUT */ (ain_10),
	.po /* OUT */ (nt_33),
	.a /* IN */ (aout_10),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_32)
);
bd apad_from_3_to_23_inst_8
(
	.io_out /* BUS */ (xa_11_out),
	.io_oe /* BUS */ (xa_11_oe),
	.io_in /* BUS */ (xa_11_in),
	.zi /* OUT */ (ain_11),
	.po /* OUT */ (nt_34),
	.a /* IN */ (aout_11),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_33)
);
bd apad_from_3_to_23_inst_9
(
	.io_out /* BUS */ (xa_12_out),
	.io_oe /* BUS */ (xa_12_oe),
	.io_in /* BUS */ (xa_12_in),
	.zi /* OUT */ (ain_12),
	.po /* OUT */ (nt_35),
	.a /* IN */ (aout_12),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_34)
);
bd apad_from_3_to_23_inst_10
(
	.io_out /* BUS */ (xa_13_out),
	.io_oe /* BUS */ (xa_13_oe),
	.io_in /* BUS */ (xa_13_in),
	.zi /* OUT */ (ain_13),
	.po /* OUT */ (nt_36),
	.a /* IN */ (aout_13),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_35)
);
bd apad_from_3_to_23_inst_11
(
	.io_out /* BUS */ (xa_14_out),
	.io_oe /* BUS */ (xa_14_oe),
	.io_in /* BUS */ (xa_14_in),
	.zi /* OUT */ (ain_14),
	.po /* OUT */ (nt_37),
	.a /* IN */ (aout_14),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_36)
);
bd apad_from_3_to_23_inst_12
(
	.io_out /* BUS */ (xa_15_out),
	.io_oe /* BUS */ (xa_15_oe),
	.io_in /* BUS */ (xa_15_in),
	.zi /* OUT */ (ain_15),
	.po /* OUT */ (nt_38),
	.a /* IN */ (aout_15),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_37)
);
bd apad_from_3_to_23_inst_13
(
	.io_out /* BUS */ (xa_16_out),
	.io_oe /* BUS */ (xa_16_oe),
	.io_in /* BUS */ (xa_16_in),
	.zi /* OUT */ (ain_16),
	.po /* OUT */ (nt_39),
	.a /* IN */ (aout_16),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_38)
);
bd apad_from_3_to_23_inst_14
(
	.io_out /* BUS */ (xa_17_out),
	.io_oe /* BUS */ (xa_17_oe),
	.io_in /* BUS */ (xa_17_in),
	.zi /* OUT */ (ain_17),
	.po /* OUT */ (nt_40),
	.a /* IN */ (aout_17),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_39)
);
bd apad_from_3_to_23_inst_15
(
	.io_out /* BUS */ (xa_18_out),
	.io_oe /* BUS */ (xa_18_oe),
	.io_in /* BUS */ (xa_18_in),
	.zi /* OUT */ (ain_18),
	.po /* OUT */ (nt_41),
	.a /* IN */ (aout_18),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_40)
);
bd apad_from_3_to_23_inst_16
(
	.io_out /* BUS */ (xa_19_out),
	.io_oe /* BUS */ (xa_19_oe),
	.io_in /* BUS */ (xa_19_in),
	.zi /* OUT */ (ain_19),
	.po /* OUT */ (nt_42),
	.a /* IN */ (aout_19),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_41)
);
bd apad_from_3_to_23_inst_17
(
	.io_out /* BUS */ (xa_20_out),
	.io_oe /* BUS */ (xa_20_oe),
	.io_in /* BUS */ (xa_20_in),
	.zi /* OUT */ (ain_20),
	.po /* OUT */ (nt_43),
	.a /* IN */ (aout_20),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_42)
);
bd apad_from_3_to_23_inst_18
(
	.io_out /* BUS */ (xa_21_out),
	.io_oe /* BUS */ (xa_21_oe),
	.io_in /* BUS */ (xa_21_in),
	.zi /* OUT */ (ain_21),
	.po /* OUT */ (nt_44),
	.a /* IN */ (aout_21),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_43)
);
bd apad_from_3_to_23_inst_19
(
	.io_out /* BUS */ (xa_22_out),
	.io_oe /* BUS */ (xa_22_oe),
	.io_in /* BUS */ (xa_22_in),
	.zi /* OUT */ (ain_22),
	.po /* OUT */ (nt_45),
	.a /* IN */ (aout_22),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_44)
);
bd apad_from_3_to_23_inst_20
(
	.io_out /* BUS */ (xa_23_out),
	.io_oe /* BUS */ (xa_23_oe),
	.io_in /* BUS */ (xa_23_in),
	.zi /* OUT */ (ain_23),
	.po /* OUT */ (nt_46),
	.a /* IN */ (aout_23),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_45)
);

// TOM.NET (217) - mapad[0] : bd16t
bd mapad_index_0_inst
(
	.io_out /* BUS */ (xma_0_out),
	.io_oe /* BUS */ (xma_0_oe),
	.io_in /* BUS */ (xma_0_in),
	.zi /* OUT */ (cfg_0),
	.po /* OUT */ (nt_89),
	.a /* IN */ (ma_0),
	.en /* IN */ (gnd),
	.tn /* IN */ (cfgen),
	.pi /* IN */ (nt_88)
);

// TOM.NET (218) - mapad[1] : bd16t
bd mapad_index_1_inst
(
	.io_out /* BUS */ (xma_1_out),
	.io_oe /* BUS */ (xma_1_oe),
	.io_in /* BUS */ (xma_1_in),
	.zi /* OUT */ (cfg_1),
	.po /* OUT */ (nt_88),
	.a /* IN */ (ma_1),
	.en /* IN */ (gnd),
	.tn /* IN */ (cfgen),
	.pi /* IN */ (nt_87)
);

// TOM.NET (219) - mapad[2] : bd16t
bd mapad_index_2_inst
(
	.io_out /* BUS */ (xma_2_out),
	.io_oe /* BUS */ (xma_2_oe),
	.io_in /* BUS */ (xma_2_in),
	.zi /* OUT */ (cfg_2),
	.po /* OUT */ (nt_87),
	.a /* IN */ (ma_2),
	.en /* IN */ (gnd),
	.tn /* IN */ (cfgen),
	.pi /* IN */ (nt_86)
);

// TOM.NET (220) - mapad[3] : bd16t
bd mapad_index_3_inst
(
	.io_out /* BUS */ (xma_3_out),
	.io_oe /* BUS */ (xma_3_oe),
	.io_in /* BUS */ (xma_3_in),
	.zi /* OUT */ (cfg_3),
	.po /* OUT */ (nt_86),
	.a /* IN */ (ma_3),
	.en /* IN */ (gnd),
	.tn /* IN */ (cfgen),
	.pi /* IN */ (nt_85)
);

// TOM.NET (221) - mapad[4] : bd16t
bd mapad_index_4_inst
(
	.io_out /* BUS */ (xma_4_out),
	.io_oe /* BUS */ (xma_4_oe),
	.io_in /* BUS */ (xma_4_in),
	.zi /* OUT */ (cfg_4),
	.po /* OUT */ (nt_85),
	.a /* IN */ (ma_4),
	.en /* IN */ (gnd),
	.tn /* IN */ (cfgen),
	.pi /* IN */ (nt_84)
);

// TOM.NET (222) - mapad[5] : bd16t
bd mapad_index_5_inst
(
	.io_out /* BUS */ (xma_5_out),
	.io_oe /* BUS */ (xma_5_oe),
	.io_in /* BUS */ (xma_5_in),
	.zi /* OUT */ (cfg_5),
	.po /* OUT */ (nt_84),
	.a /* IN */ (ma_5),
	.en /* IN */ (gnd),
	.tn /* IN */ (cfgen),
	.pi /* IN */ (nt_83)
);

// TOM.NET (223) - mapad[6] : bd16t
bd mapad_index_6_inst
(
	.io_out /* BUS */ (xma_6_out),
	.io_oe /* BUS */ (xma_6_oe),
	.io_in /* BUS */ (xma_6_in),
	.zi /* OUT */ (cfg_6),
	.po /* OUT */ (nt_83),
	.a /* IN */ (ma_6),
	.en /* IN */ (gnd),
	.tn /* IN */ (cfgen),
	.pi /* IN */ (nt_82)
);

// TOM.NET (224) - mapad[7] : bd16t
bd mapad_index_7_inst
(
	.io_out /* BUS */ (xma_7_out),
	.io_oe /* BUS */ (xma_7_oe),
	.io_in /* BUS */ (xma_7_in),
	.zi /* OUT */ (cfg_7),
	.po /* OUT */ (nt_82),
	.a /* IN */ (ma_7),
	.en /* IN */ (gnd),
	.tn /* IN */ (cfgen),
	.pi /* IN */ (nt_81)
);

// TOM.NET (225) - mapad[8] : bd16t
bd mapad_index_8_inst
(
	.io_out /* BUS */ (xma_8_out),
	.io_oe /* BUS */ (xma_8_oe),
	.io_in /* BUS */ (xma_8_in),
	.zi /* OUT */ (cfg_8),
	.po /* OUT */ (nt_81),
	.a /* IN */ (ma_8),
	.en /* IN */ (gnd),
	.tn /* IN */ (cfgen),
	.pi /* IN */ (nt_80)
);

// TOM.NET (226) - mapad[9] : bd16t
bd mapad_index_9_inst
(
	.io_out /* BUS */ (xma_9_out),
	.io_oe /* BUS */ (xma_9_oe),
	.io_in /* BUS */ (xma_9_in),
	.zi /* OUT */ (cfg_9),
	.po /* OUT */ (nt_80),
	.a /* IN */ (ma_9),
	.en /* IN */ (gnd),
	.tn /* IN */ (cfgen),
	.pi /* IN */ (nt_79)
);

// TOM.NET (227) - cfgu[9-10] : dummy

// TOM.NET (229) - mapad[10] : bd16t
bd mapad_index_10_inst
(
	.io_out /* BUS */ (xma_10_out),
	.io_oe /* BUS */ (xma_10_oe),
	.io_in /* BUS */ (xma_10_in),
	.zi /* OUT */ (cfg_10),
	.po /* OUT */ (nt_79),
	.a /* IN */ (ma_10),
	.en /* IN */ (gnd),
	.tn /* IN */ (cfgen),
	.pi /* IN */ (nt_78)
);

// TOM.NET (231) - maska[0-2] : b2
assign xmaska_0 = maska_0;
assign xmaska_1 = maska_1;
assign xmaska_2 = maska_2;

// TOM.NET (234) - romcs[0-1] : b2
assign xromcsl_0 = romcsl_0;
assign xromcsl_1 = romcsl_1;

// TOM.NET (236) - ras[0-1] : b16
assign xrasl_0 = rasl_0;
assign xrasl_1 = rasl_1;

// TOM.NET (237) - notndtest : iv
assign notndtest = ~ndtest;

// TOM.NET (239) - cas[0-1] : b16
assign xcasl_0 = casl_0;
assign xcasl_1 = casl_1;

// TOM.NET (241) - oe[0] : b16
assign xoel_0 = oel_0;

// TOM.NET (242) - oe[1] : b8
assign xoel_1 = oel_1;

// TOM.NET (243) - oe[2] : b8
assign xoel_2 = oel_2;

// TOM.NET (245) - we[0-1] : b16
assign xwel_0 = wel_0;
assign xwel_1 = wel_1;

// TOM.NET (246) - we[2-7] : b4
assign xwel_2 = wel_2;
assign xwel_3 = wel_3;
assign xwel_4 = wel_4;
assign xwel_5 = wel_5;
assign xwel_6 = wel_6;
assign xwel_7 = wel_7;

// TOM.NET (248) - pclk : ibuf
assign pclk = xpclk;
assign nt_21 = ~(xpclk & nt_20);

// TOM.NET (249) - vclk : ibuf
assign vxclk = xvclk;
assign nt_22 = ~(xvclk & nt_21);

// TOM.NET (250) - reseti : ibuf
assign resetli = xresetl;
assign nt_16 = ~(xresetl & nt_15);

// TOM.NET (251) - reset : bniv34
assign resetl = resetli;

// TOM.NET (253) - wait : ibuf
assign waitl = xwaitl;
assign nt_18 = ~(xwaitl & nt_17);

// TOM.NET (256) - dreq : bd2t
bd dreq_inst
(
	.io_out /* BUS */ (xdreql_out),
	.io_oe /* BUS */ (xdreql_oe),
	.io_in /* BUS */ (xdreql_in),
	.zi /* OUT */ (notdreqin),
	.po /* OUT */ (nt_7),
	.a /* IN */ (dreqlout),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_6)
);

// TOM.NET (257) - dtack : b2
assign xdtackl = dtackl;

// TOM.NET (258) - rw : bd2t
bd rw_inst
(
	.io_out /* BUS */ (xrw_out),
	.io_oe /* BUS */ (xrw_oe),
	.io_in /* BUS */ (xrw_in),
	.zi /* OUT */ (rwin),
	.po /* OUT */ (nt_9),
	.a /* IN */ (reads),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_7)
);

// TOM.NET (259) - siz[0] : bd2t
bd siz_index_0_inst
(
	.io_out /* BUS */ (xsiz_0_out),
	.io_oe /* BUS */ (xsiz_0_oe),
	.io_in /* BUS */ (xsiz_0_in),
	.zi /* OUT */ (sizin_0),
	.po /* OUT */ (nt_10),
	.a /* IN */ (sizout_0),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_9)
);

// TOM.NET (260) - siz[1] : bd2t
bd siz_index_1_inst
(
	.io_out /* BUS */ (xsiz_1_out),
	.io_oe /* BUS */ (xsiz_1_oe),
	.io_in /* BUS */ (xsiz_1_in),
	.zi /* OUT */ (sizin_1),
	.po /* OUT */ (nt_11),
	.a /* IN */ (sizout_1),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_10)
);

// TOM.NET (261) - dreqin : ivu
assign dreqin = ~notdreqin;

// TOM.NET (263) - dbrli[0] : ibuf
assign dbrl_0 = xdbrl_0;
assign nt_20 = ~(xdbrl_0 & nt_19);

// TOM.NET (264) - dbrli[1] : ibuf
assign dbrl_1 = xdbrl_1;
assign nt_19 = ~(xdbrl_1 & nt_18);

// TOM.NET (265) - dbgl : b2
assign xdbgl = dbgl;

// TOM.NET (266) - expl : b4
assign xexpl = expl;

// TOM.NET (267) - dspcsl : b2
assign xdspcsl = dspcsl;

// TOM.NET (271) - intlt : mx2p
assign intlt = (ndtest) ? nt_121 : intl;

// TOM.NET (272) - xintl : b2
assign xintl = intlt;

// TOM.NET (274) - hs : bd2t
bd hs_inst
(
	.io_out /* BUS */ (xhs_out),
	.io_oe /* BUS */ (xhs_oe),
	.io_in /* BUS */ (xhs_in),
	.zi /* OUT */ (hlock),
	.po /* OUT */ (nt_1),
	.a /* IN */ (hsl),
	.en /* IN */ (gnd),
	.tn /* IN */ (snden),
	.pi /* IN */ (vcc)
);

// TOM.NET (275) - vs : bd2t
bd vs_inst
(
	.io_out /* BUS */ (xvs_out),
	.io_oe /* BUS */ (xvs_oe),
	.io_in /* BUS */ (xvs_in),
	.zi /* OUT */ (vlock),
	.po /* OUT */ (nt_2),
	.a /* IN */ (vsl),
	.en /* IN */ (gnd),
	.tn /* IN */ (snden),
	.pi /* IN */ (nt_1)
);

// TOM.NET (277) - snden : an2
assign snden = syncen & notndtest;

// TOM.NET (279) - lp : ibuf
assign lp = xlp;
assign nt_3 = ~(xlp & nt_2);

// TOM.NET (281) - r[0-7] : b2
assign xr_0 = r_0;
assign xr_1 = r_1;
assign xr_2 = r_2;
assign xr_3 = r_3;
assign xr_4 = r_4;
assign xr_5 = r_5;
assign xr_6 = r_6;
assign xr_7 = r_7;

// TOM.NET (282) - g[0-7] : b2
assign xg_0 = g_0;
assign xg_1 = g_1;
assign xg_2 = g_2;
assign xg_3 = g_3;
assign xg_4 = g_4;
assign xg_5 = g_5;
assign xg_6 = g_6;
assign xg_7 = g_7;

// TOM.NET (283) - b[0-7] : b2
assign xb_0 = b_0;
assign xb_1 = b_1;
assign xb_2 = b_2;
assign xb_3 = b_3;
assign xb_4 = b_4;
assign xb_5 = b_5;
assign xb_6 = b_6;
assign xb_7 = b_7;

// TOM.NET (285) - inc : b2
assign xinc = inc;

// TOM.NET (287) - dint : ibuf
assign dint = xdint;
assign nt_12 = ~(xdint & nt_11);

// TOM.NET (289) - fc[0] : bd2t
bd fc_index_0_inst
(
	.io_out /* BUS */ (xfc_0_out),
	.io_oe /* BUS */ (xfc_0_oe),
	.io_in /* BUS */ (xfc_0_in),
	.zi /* OUT */ (fc_0),
	.po /* OUT */ (nt_4),
	.a /* IN */ (vcc),
	.en /* IN */ (gnd),
	.tn /* IN */ (fcen),
	.pi /* IN */ (nt_3)
);

// TOM.NET (290) - fc[1] : bd2t
bd fc_index_1_inst
(
	.io_out /* BUS */ (xfc_1_out),
	.io_oe /* BUS */ (xfc_1_oe),
	.io_in /* BUS */ (xfc_1_in),
	.zi /* OUT */ (fc_1),
	.po /* OUT */ (nt_5),
	.a /* IN */ (gnd),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_4)
);

// TOM.NET (291) - fc[2] : bd2t
bd fc_index_2_inst
(
	.io_out /* BUS */ (xfc_2_out),
	.io_oe /* BUS */ (xfc_2_oe),
	.io_in /* BUS */ (xfc_2_in),
	.zi /* OUT */ (fc_2),
	.po /* OUT */ (nt_6),
	.a /* IN */ (vcc),
	.en /* IN */ (gnd),
	.tn /* IN */ (aen_obuf),
	.pi /* IN */ (nt_5)
);

// TOM.NET (292) - fcen : an2
assign fcen = aen_obuf & m68k;

// TOM.NET (294) - brl : bd2t
bd brl_inst
(
	.io_out /* BUS */ (xbrl_out),
	.io_oe /* BUS */ (xbrl_oe),
	.io_in /* BUS */ (xbrl_in),
	.zi /* OUT */ (brlin),
	.po /* OUT */ (nt_13),
	.a /* IN */ (gnd),
	.en /* IN */ (brlout),
	.tn /* IN */ (testen),
	.pi /* IN */ (nt_12)
);

// TOM.NET (295) - bgl : ibuf
assign bglin = xbgl;
assign nt_14 = ~(xbgl & nt_13);

// TOM.NET (296) - ba : bd2t
bd ba_inst
(
	.io_out /* BUS */ (xba_out),
	.io_oe /* BUS */ (xba_oe),
	.io_in /* BUS */ (xba_in),
	.zi /* OUT */ (bgain),
	.po /* OUT */ (nt_15),
	.a /* IN */ (gnd),
	.en /* IN */ (gnd),
	.tn /* IN */ (ba),
	.pi /* IN */ (nt_14)
);

// TOM.NET (298) - test : ibuf
assign test = xtest;
assign nt_17 = ~(xtest & nt_16);

// TOM.NET (300) - gnd : tie0
assign gnd = 1'b0;

// TOM.NET (301) - vcc : tie1
assign vcc = 1'b1;

// TOM.NET (309) - nottest : iv
assign nottest = ~test;

// TOM.NET (310) - testen : or2
assign testen = nottest | dint;

// TOM.NET (313) - gpu : graphics
graphics gpu_inst
(
	.ima_0 /* IN */ (maska_0),
	.ima_1 /* IN */ (maska_1),
	.ima_2 /* IN */ (maska_2),
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
	.dwrite_0 /* IN */ (dout_0),
	.dwrite_1 /* IN */ (dout_1),
	.dwrite_2 /* IN */ (dout_2),
	.dwrite_3 /* IN */ (dout_3),
	.dwrite_4 /* IN */ (dout_4),
	.dwrite_5 /* IN */ (dout_5),
	.dwrite_6 /* IN */ (dout_6),
	.dwrite_7 /* IN */ (dout_7),
	.dwrite_8 /* IN */ (dout_8),
	.dwrite_9 /* IN */ (dout_9),
	.dwrite_10 /* IN */ (dout_10),
	.dwrite_11 /* IN */ (dout_11),
	.dwrite_12 /* IN */ (dout_12),
	.dwrite_13 /* IN */ (dout_13),
	.dwrite_14 /* IN */ (dout_14),
	.dwrite_15 /* IN */ (dout_15),
	.dwrite_16 /* IN */ (dout_16),
	.dwrite_17 /* IN */ (dout_17),
	.dwrite_18 /* IN */ (dout_18),
	.dwrite_19 /* IN */ (dout_19),
	.dwrite_20 /* IN */ (dout_20),
	.dwrite_21 /* IN */ (dout_21),
	.dwrite_22 /* IN */ (dout_22),
	.dwrite_23 /* IN */ (dout_23),
	.dwrite_24 /* IN */ (dout_24),
	.dwrite_25 /* IN */ (dout_25),
	.dwrite_26 /* IN */ (dout_26),
	.dwrite_27 /* IN */ (dout_27),
	.dwrite_28 /* IN */ (dout_28),
	.dwrite_29 /* IN */ (dout_29),
	.dwrite_30 /* IN */ (dout_30),
	.dwrite_31 /* IN */ (dout_31),
	.ack /* IN */ (ack),
	.blit_back /* IN */ (bback),
	.gpu_back /* IN */ (gback),
	.reset_n /* IN */ (resetl),
	.clk /* IN */ (clk),
	.tlw /* IN */ (tlw),
	.dint /* IN */ (dint),
	.gpu_irq_3 /* IN */ (grpintreq),
	.gpu_irq_2 /* IN */ (tint),
	.iord /* IN */ (gpuread),
	.iowr /* IN */ (gpuwrite),
	.reset_lock /* IN */ (nocpu),
	.data_0 /* IN */ (d_0),
	.data_1 /* IN */ (d_1),
	.data_2 /* IN */ (d_2),
	.data_3 /* IN */ (d_3),
	.data_4 /* IN */ (d_4),
	.data_5 /* IN */ (d_5),
	.data_6 /* IN */ (d_6),
	.data_7 /* IN */ (d_7),
	.data_8 /* IN */ (d_8),
	.data_9 /* IN */ (d_9),
	.data_10 /* IN */ (d_10),
	.data_11 /* IN */ (d_11),
	.data_12 /* IN */ (d_12),
	.data_13 /* IN */ (d_13),
	.data_14 /* IN */ (d_14),
	.data_15 /* IN */ (d_15),
	.data_16 /* IN */ (d_16),
	.data_17 /* IN */ (d_17),
	.data_18 /* IN */ (d_18),
	.data_19 /* IN */ (d_19),
	.data_20 /* IN */ (d_20),
	.data_21 /* IN */ (d_21),
	.data_22 /* IN */ (d_22),
	.data_23 /* IN */ (d_23),
	.data_24 /* IN */ (d_24),
	.data_25 /* IN */ (d_25),
	.data_26 /* IN */ (d_26),
	.data_27 /* IN */ (d_27),
	.data_28 /* IN */ (d_28),
	.data_29 /* IN */ (d_29),
	.data_30 /* IN */ (d_30),
	.data_31 /* IN */ (d_31),
	.data_32 /* IN */ (d_32),
	.data_33 /* IN */ (d_33),
	.data_34 /* IN */ (d_34),
	.data_35 /* IN */ (d_35),
	.data_36 /* IN */ (d_36),
	.data_37 /* IN */ (d_37),
	.data_38 /* IN */ (d_38),
	.data_39 /* IN */ (d_39),
	.data_40 /* IN */ (d_40),
	.data_41 /* IN */ (d_41),
	.data_42 /* IN */ (d_42),
	.data_43 /* IN */ (d_43),
	.data_44 /* IN */ (d_44),
	.data_45 /* IN */ (d_45),
	.data_46 /* IN */ (d_46),
	.data_47 /* IN */ (d_47),
	.data_48 /* IN */ (d_48),
	.data_49 /* IN */ (d_49),
	.data_50 /* IN */ (d_50),
	.data_51 /* IN */ (d_51),
	.data_52 /* IN */ (d_52),
	.data_53 /* IN */ (d_53),
	.data_54 /* IN */ (d_54),
	.data_55 /* IN */ (d_55),
	.data_56 /* IN */ (d_56),
	.data_57 /* IN */ (d_57),
	.data_58 /* IN */ (d_58),
	.data_59 /* IN */ (d_59),
	.data_60 /* IN */ (d_60),
	.data_61 /* IN */ (d_61),
	.data_62 /* IN */ (d_62),
	.data_63 /* IN */ (d_63),
	.at_1 /* IN */ (at_1),
	.blit_breq_0 /* OUT */ (bbreq_0_obuf),
	.blit_breq_1 /* OUT */ (bbreq_1_obuf),
	.gpu_breq /* OUT */ (gbreq_0_obuf),
	.dma_breq /* OUT */ (gbreq_1_obuf),
	.cpu_int /* OUT */ (gpuint),
	.lock /* OUT */ (lock),
	.wdata_0_out /* BUS */ (ts_local_pe_576_a0_out),
	.wdata_0_oe /* BUS */ (ts_local_pe_576_a0_oe),
	.wdata_0_in /* BUS */ (ts_local_pe_576_a0_in),
	.wdata_1_out /* BUS */ (ts_local_pe_577_a0_out),
	.wdata_1_oe /* BUS */ (ts_local_pe_577_a0_oe),
	.wdata_1_in /* BUS */ (ts_local_pe_577_a0_in),
	.wdata_2_out /* BUS */ (ts_local_pe_578_a0_out),
	.wdata_2_oe /* BUS */ (ts_local_pe_578_a0_oe),
	.wdata_2_in /* BUS */ (ts_local_pe_578_a0_in),
	.wdata_3_out /* BUS */ (ts_local_pe_579_a0_out),
	.wdata_3_oe /* BUS */ (ts_local_pe_579_a0_oe),
	.wdata_3_in /* BUS */ (ts_local_pe_579_a0_in),
	.wdata_4_out /* BUS */ (ts_local_pe_580_a0_out),
	.wdata_4_oe /* BUS */ (ts_local_pe_580_a0_oe),
	.wdata_4_in /* BUS */ (ts_local_pe_580_a0_in),
	.wdata_5_out /* BUS */ (ts_local_pe_581_a0_out),
	.wdata_5_oe /* BUS */ (ts_local_pe_581_a0_oe),
	.wdata_5_in /* BUS */ (ts_local_pe_581_a0_in),
	.wdata_6_out /* BUS */ (ts_local_pe_582_a0_out),
	.wdata_6_oe /* BUS */ (ts_local_pe_582_a0_oe),
	.wdata_6_in /* BUS */ (ts_local_pe_582_a0_in),
	.wdata_7_out /* BUS */ (ts_local_pe_583_a0_out),
	.wdata_7_oe /* BUS */ (ts_local_pe_583_a0_oe),
	.wdata_7_in /* BUS */ (ts_local_pe_583_a0_in),
	.wdata_8_out /* BUS */ (ts_local_pe_584_a0_out),
	.wdata_8_oe /* BUS */ (ts_local_pe_584_a0_oe),
	.wdata_8_in /* BUS */ (ts_local_pe_584_a0_in),
	.wdata_9_out /* BUS */ (ts_local_pe_585_a0_out),
	.wdata_9_oe /* BUS */ (ts_local_pe_585_a0_oe),
	.wdata_9_in /* BUS */ (ts_local_pe_585_a0_in),
	.wdata_10_out /* BUS */ (ts_local_pe_586_a0_out),
	.wdata_10_oe /* BUS */ (ts_local_pe_586_a0_oe),
	.wdata_10_in /* BUS */ (ts_local_pe_586_a0_in),
	.wdata_11_out /* BUS */ (ts_local_pe_587_a0_out),
	.wdata_11_oe /* BUS */ (ts_local_pe_587_a0_oe),
	.wdata_11_in /* BUS */ (ts_local_pe_587_a0_in),
	.wdata_12_out /* BUS */ (ts_local_pe_588_a0_out),
	.wdata_12_oe /* BUS */ (ts_local_pe_588_a0_oe),
	.wdata_12_in /* BUS */ (ts_local_pe_588_a0_in),
	.wdata_13_out /* BUS */ (ts_local_pe_589_a0_out),
	.wdata_13_oe /* BUS */ (ts_local_pe_589_a0_oe),
	.wdata_13_in /* BUS */ (ts_local_pe_589_a0_in),
	.wdata_14_out /* BUS */ (ts_local_pe_590_a0_out),
	.wdata_14_oe /* BUS */ (ts_local_pe_590_a0_oe),
	.wdata_14_in /* BUS */ (ts_local_pe_590_a0_in),
	.wdata_15_out /* BUS */ (ts_local_pe_591_a0_out),
	.wdata_15_oe /* BUS */ (ts_local_pe_591_a0_oe),
	.wdata_15_in /* BUS */ (ts_local_pe_591_a0_in),
	.wdata_16_out /* BUS */ (ts_local_pe_592_a0_out),
	.wdata_16_oe /* BUS */ (ts_local_pe_592_a0_oe),
	.wdata_16_in /* BUS */ (ts_local_pe_592_a0_in),
	.wdata_17_out /* BUS */ (ts_local_pe_593_a0_out),
	.wdata_17_oe /* BUS */ (ts_local_pe_593_a0_oe),
	.wdata_17_in /* BUS */ (ts_local_pe_593_a0_in),
	.wdata_18_out /* BUS */ (ts_local_pe_594_a0_out),
	.wdata_18_oe /* BUS */ (ts_local_pe_594_a0_oe),
	.wdata_18_in /* BUS */ (ts_local_pe_594_a0_in),
	.wdata_19_out /* BUS */ (ts_local_pe_595_a0_out),
	.wdata_19_oe /* BUS */ (ts_local_pe_595_a0_oe),
	.wdata_19_in /* BUS */ (ts_local_pe_595_a0_in),
	.wdata_20_out /* BUS */ (ts_local_pe_596_a0_out),
	.wdata_20_oe /* BUS */ (ts_local_pe_596_a0_oe),
	.wdata_20_in /* BUS */ (ts_local_pe_596_a0_in),
	.wdata_21_out /* BUS */ (ts_local_pe_597_a0_out),
	.wdata_21_oe /* BUS */ (ts_local_pe_597_a0_oe),
	.wdata_21_in /* BUS */ (ts_local_pe_597_a0_in),
	.wdata_22_out /* BUS */ (ts_local_pe_598_a0_out),
	.wdata_22_oe /* BUS */ (ts_local_pe_598_a0_oe),
	.wdata_22_in /* BUS */ (ts_local_pe_598_a0_in),
	.wdata_23_out /* BUS */ (ts_local_pe_599_a0_out),
	.wdata_23_oe /* BUS */ (ts_local_pe_599_a0_oe),
	.wdata_23_in /* BUS */ (ts_local_pe_599_a0_in),
	.wdata_24_out /* BUS */ (ts_local_pe_600_a0_out),
	.wdata_24_oe /* BUS */ (ts_local_pe_600_a0_oe),
	.wdata_24_in /* BUS */ (ts_local_pe_600_a0_in),
	.wdata_25_out /* BUS */ (ts_local_pe_601_a0_out),
	.wdata_25_oe /* BUS */ (ts_local_pe_601_a0_oe),
	.wdata_25_in /* BUS */ (ts_local_pe_601_a0_in),
	.wdata_26_out /* BUS */ (ts_local_pe_602_a0_out),
	.wdata_26_oe /* BUS */ (ts_local_pe_602_a0_oe),
	.wdata_26_in /* BUS */ (ts_local_pe_602_a0_in),
	.wdata_27_out /* BUS */ (ts_local_pe_603_a0_out),
	.wdata_27_oe /* BUS */ (ts_local_pe_603_a0_oe),
	.wdata_27_in /* BUS */ (ts_local_pe_603_a0_in),
	.wdata_28_out /* BUS */ (ts_local_pe_604_a0_out),
	.wdata_28_oe /* BUS */ (ts_local_pe_604_a0_oe),
	.wdata_28_in /* BUS */ (ts_local_pe_604_a0_in),
	.wdata_29_out /* BUS */ (ts_local_pe_605_a0_out),
	.wdata_29_oe /* BUS */ (ts_local_pe_605_a0_oe),
	.wdata_29_in /* BUS */ (ts_local_pe_605_a0_in),
	.wdata_30_out /* BUS */ (ts_local_pe_606_a0_out),
	.wdata_30_oe /* BUS */ (ts_local_pe_606_a0_oe),
	.wdata_30_in /* BUS */ (ts_local_pe_606_a0_in),
	.wdata_31_out /* BUS */ (ts_local_pe_607_a0_out),
	.wdata_31_oe /* BUS */ (ts_local_pe_607_a0_oe),
	.wdata_31_in /* BUS */ (ts_local_pe_607_a0_in),
	.wdata_32_out /* BUS */ (ts_local_pe_608_a0_out),
	.wdata_32_oe /* BUS */ (ts_local_pe_608_a0_oe),
	.wdata_32_in /* BUS */ (ts_local_pe_608_a0_in),
	.wdata_33_out /* BUS */ (ts_local_pe_609_a0_out),
	.wdata_33_oe /* BUS */ (ts_local_pe_609_a0_oe),
	.wdata_33_in /* BUS */ (ts_local_pe_609_a0_in),
	.wdata_34_out /* BUS */ (ts_local_pe_610_a0_out),
	.wdata_34_oe /* BUS */ (ts_local_pe_610_a0_oe),
	.wdata_34_in /* BUS */ (ts_local_pe_610_a0_in),
	.wdata_35_out /* BUS */ (ts_local_pe_611_a0_out),
	.wdata_35_oe /* BUS */ (ts_local_pe_611_a0_oe),
	.wdata_35_in /* BUS */ (ts_local_pe_611_a0_in),
	.wdata_36_out /* BUS */ (ts_local_pe_612_a0_out),
	.wdata_36_oe /* BUS */ (ts_local_pe_612_a0_oe),
	.wdata_36_in /* BUS */ (ts_local_pe_612_a0_in),
	.wdata_37_out /* BUS */ (ts_local_pe_613_a0_out),
	.wdata_37_oe /* BUS */ (ts_local_pe_613_a0_oe),
	.wdata_37_in /* BUS */ (ts_local_pe_613_a0_in),
	.wdata_38_out /* BUS */ (ts_local_pe_614_a0_out),
	.wdata_38_oe /* BUS */ (ts_local_pe_614_a0_oe),
	.wdata_38_in /* BUS */ (ts_local_pe_614_a0_in),
	.wdata_39_out /* BUS */ (ts_local_pe_615_a0_out),
	.wdata_39_oe /* BUS */ (ts_local_pe_615_a0_oe),
	.wdata_39_in /* BUS */ (ts_local_pe_615_a0_in),
	.wdata_40_out /* BUS */ (ts_local_pe_616_a0_out),
	.wdata_40_oe /* BUS */ (ts_local_pe_616_a0_oe),
	.wdata_40_in /* BUS */ (ts_local_pe_616_a0_in),
	.wdata_41_out /* BUS */ (ts_local_pe_617_a0_out),
	.wdata_41_oe /* BUS */ (ts_local_pe_617_a0_oe),
	.wdata_41_in /* BUS */ (ts_local_pe_617_a0_in),
	.wdata_42_out /* BUS */ (ts_local_pe_618_a0_out),
	.wdata_42_oe /* BUS */ (ts_local_pe_618_a0_oe),
	.wdata_42_in /* BUS */ (ts_local_pe_618_a0_in),
	.wdata_43_out /* BUS */ (ts_local_pe_619_a0_out),
	.wdata_43_oe /* BUS */ (ts_local_pe_619_a0_oe),
	.wdata_43_in /* BUS */ (ts_local_pe_619_a0_in),
	.wdata_44_out /* BUS */ (ts_local_pe_620_a0_out),
	.wdata_44_oe /* BUS */ (ts_local_pe_620_a0_oe),
	.wdata_44_in /* BUS */ (ts_local_pe_620_a0_in),
	.wdata_45_out /* BUS */ (ts_local_pe_621_a0_out),
	.wdata_45_oe /* BUS */ (ts_local_pe_621_a0_oe),
	.wdata_45_in /* BUS */ (ts_local_pe_621_a0_in),
	.wdata_46_out /* BUS */ (ts_local_pe_622_a0_out),
	.wdata_46_oe /* BUS */ (ts_local_pe_622_a0_oe),
	.wdata_46_in /* BUS */ (ts_local_pe_622_a0_in),
	.wdata_47_out /* BUS */ (ts_local_pe_623_a0_out),
	.wdata_47_oe /* BUS */ (ts_local_pe_623_a0_oe),
	.wdata_47_in /* BUS */ (ts_local_pe_623_a0_in),
	.wdata_48_out /* BUS */ (ts_local_pe_624_a0_out),
	.wdata_48_oe /* BUS */ (ts_local_pe_624_a0_oe),
	.wdata_48_in /* BUS */ (ts_local_pe_624_a0_in),
	.wdata_49_out /* BUS */ (ts_local_pe_625_a0_out),
	.wdata_49_oe /* BUS */ (ts_local_pe_625_a0_oe),
	.wdata_49_in /* BUS */ (ts_local_pe_625_a0_in),
	.wdata_50_out /* BUS */ (ts_local_pe_626_a0_out),
	.wdata_50_oe /* BUS */ (ts_local_pe_626_a0_oe),
	.wdata_50_in /* BUS */ (ts_local_pe_626_a0_in),
	.wdata_51_out /* BUS */ (ts_local_pe_627_a0_out),
	.wdata_51_oe /* BUS */ (ts_local_pe_627_a0_oe),
	.wdata_51_in /* BUS */ (ts_local_pe_627_a0_in),
	.wdata_52_out /* BUS */ (ts_local_pe_628_a0_out),
	.wdata_52_oe /* BUS */ (ts_local_pe_628_a0_oe),
	.wdata_52_in /* BUS */ (ts_local_pe_628_a0_in),
	.wdata_53_out /* BUS */ (ts_local_pe_629_a0_out),
	.wdata_53_oe /* BUS */ (ts_local_pe_629_a0_oe),
	.wdata_53_in /* BUS */ (ts_local_pe_629_a0_in),
	.wdata_54_out /* BUS */ (ts_local_pe_630_a0_out),
	.wdata_54_oe /* BUS */ (ts_local_pe_630_a0_oe),
	.wdata_54_in /* BUS */ (ts_local_pe_630_a0_in),
	.wdata_55_out /* BUS */ (ts_local_pe_631_a0_out),
	.wdata_55_oe /* BUS */ (ts_local_pe_631_a0_oe),
	.wdata_55_in /* BUS */ (ts_local_pe_631_a0_in),
	.wdata_56_out /* BUS */ (ts_local_pe_632_a0_out),
	.wdata_56_oe /* BUS */ (ts_local_pe_632_a0_oe),
	.wdata_56_in /* BUS */ (ts_local_pe_632_a0_in),
	.wdata_57_out /* BUS */ (ts_local_pe_633_a0_out),
	.wdata_57_oe /* BUS */ (ts_local_pe_633_a0_oe),
	.wdata_57_in /* BUS */ (ts_local_pe_633_a0_in),
	.wdata_58_out /* BUS */ (ts_local_pe_634_a0_out),
	.wdata_58_oe /* BUS */ (ts_local_pe_634_a0_oe),
	.wdata_58_in /* BUS */ (ts_local_pe_634_a0_in),
	.wdata_59_out /* BUS */ (ts_local_pe_635_a0_out),
	.wdata_59_oe /* BUS */ (ts_local_pe_635_a0_oe),
	.wdata_59_in /* BUS */ (ts_local_pe_635_a0_in),
	.wdata_60_out /* BUS */ (ts_local_pe_636_a0_out),
	.wdata_60_oe /* BUS */ (ts_local_pe_636_a0_oe),
	.wdata_60_in /* BUS */ (ts_local_pe_636_a0_in),
	.wdata_61_out /* BUS */ (ts_local_pe_637_a0_out),
	.wdata_61_oe /* BUS */ (ts_local_pe_637_a0_oe),
	.wdata_61_in /* BUS */ (ts_local_pe_637_a0_in),
	.wdata_62_out /* BUS */ (ts_local_pe_638_a0_out),
	.wdata_62_oe /* BUS */ (ts_local_pe_638_a0_oe),
	.wdata_62_in /* BUS */ (ts_local_pe_638_a0_in),
	.wdata_63_out /* BUS */ (ts_local_pe_639_a0_out),
	.wdata_63_oe /* BUS */ (ts_local_pe_639_a0_oe),
	.wdata_63_in /* BUS */ (ts_local_pe_639_a0_in),
	.a_0_out /* BUS */ (ts_local_pe_640_a0_out),
	.a_0_oe /* BUS */ (ts_local_pe_640_a0_oe),
	.a_0_in /* BUS */ (ts_local_pe_640_a0_in),
	.a_1_out /* BUS */ (ts_local_pe_641_a0_out),
	.a_1_oe /* BUS */ (ts_local_pe_641_a0_oe),
	.a_1_in /* BUS */ (ts_local_pe_641_a0_in),
	.a_2_out /* BUS */ (ts_local_pe_642_a0_out),
	.a_2_oe /* BUS */ (ts_local_pe_642_a0_oe),
	.a_2_in /* BUS */ (ts_local_pe_642_a0_in),
	.a_3_out /* BUS */ (ts_local_pe_643_a0_out),
	.a_3_oe /* BUS */ (ts_local_pe_643_a0_oe),
	.a_3_in /* BUS */ (ts_local_pe_643_a0_in),
	.a_4_out /* BUS */ (ts_local_pe_644_a0_out),
	.a_4_oe /* BUS */ (ts_local_pe_644_a0_oe),
	.a_4_in /* BUS */ (ts_local_pe_644_a0_in),
	.a_5_out /* BUS */ (ts_local_pe_645_a0_out),
	.a_5_oe /* BUS */ (ts_local_pe_645_a0_oe),
	.a_5_in /* BUS */ (ts_local_pe_645_a0_in),
	.a_6_out /* BUS */ (ts_local_pe_646_a0_out),
	.a_6_oe /* BUS */ (ts_local_pe_646_a0_oe),
	.a_6_in /* BUS */ (ts_local_pe_646_a0_in),
	.a_7_out /* BUS */ (ts_local_pe_647_a0_out),
	.a_7_oe /* BUS */ (ts_local_pe_647_a0_oe),
	.a_7_in /* BUS */ (ts_local_pe_647_a0_in),
	.a_8_out /* BUS */ (ts_local_pe_648_a0_out),
	.a_8_oe /* BUS */ (ts_local_pe_648_a0_oe),
	.a_8_in /* BUS */ (ts_local_pe_648_a0_in),
	.a_9_out /* BUS */ (ts_local_pe_649_a0_out),
	.a_9_oe /* BUS */ (ts_local_pe_649_a0_oe),
	.a_9_in /* BUS */ (ts_local_pe_649_a0_in),
	.a_10_out /* BUS */ (ts_local_pe_650_a0_out),
	.a_10_oe /* BUS */ (ts_local_pe_650_a0_oe),
	.a_10_in /* BUS */ (ts_local_pe_650_a0_in),
	.a_11_out /* BUS */ (ts_local_pe_651_a0_out),
	.a_11_oe /* BUS */ (ts_local_pe_651_a0_oe),
	.a_11_in /* BUS */ (ts_local_pe_651_a0_in),
	.a_12_out /* BUS */ (ts_local_pe_652_a0_out),
	.a_12_oe /* BUS */ (ts_local_pe_652_a0_oe),
	.a_12_in /* BUS */ (ts_local_pe_652_a0_in),
	.a_13_out /* BUS */ (ts_local_pe_653_a0_out),
	.a_13_oe /* BUS */ (ts_local_pe_653_a0_oe),
	.a_13_in /* BUS */ (ts_local_pe_653_a0_in),
	.a_14_out /* BUS */ (ts_local_pe_654_a0_out),
	.a_14_oe /* BUS */ (ts_local_pe_654_a0_oe),
	.a_14_in /* BUS */ (ts_local_pe_654_a0_in),
	.a_15_out /* BUS */ (ts_local_pe_655_a0_out),
	.a_15_oe /* BUS */ (ts_local_pe_655_a0_oe),
	.a_15_in /* BUS */ (ts_local_pe_655_a0_in),
	.a_16_out /* BUS */ (ts_local_pe_656_a0_out),
	.a_16_oe /* BUS */ (ts_local_pe_656_a0_oe),
	.a_16_in /* BUS */ (ts_local_pe_656_a0_in),
	.a_17_out /* BUS */ (ts_local_pe_657_a0_out),
	.a_17_oe /* BUS */ (ts_local_pe_657_a0_oe),
	.a_17_in /* BUS */ (ts_local_pe_657_a0_in),
	.a_18_out /* BUS */ (ts_local_pe_658_a0_out),
	.a_18_oe /* BUS */ (ts_local_pe_658_a0_oe),
	.a_18_in /* BUS */ (ts_local_pe_658_a0_in),
	.a_19_out /* BUS */ (ts_local_pe_659_a0_out),
	.a_19_oe /* BUS */ (ts_local_pe_659_a0_oe),
	.a_19_in /* BUS */ (ts_local_pe_659_a0_in),
	.a_20_out /* BUS */ (ts_local_pe_660_a0_out),
	.a_20_oe /* BUS */ (ts_local_pe_660_a0_oe),
	.a_20_in /* BUS */ (ts_local_pe_660_a0_in),
	.a_21_out /* BUS */ (ts_local_pe_661_a0_out),
	.a_21_oe /* BUS */ (ts_local_pe_661_a0_oe),
	.a_21_in /* BUS */ (ts_local_pe_661_a0_in),
	.a_22_out /* BUS */ (ts_local_pe_662_a0_out),
	.a_22_oe /* BUS */ (ts_local_pe_662_a0_oe),
	.a_22_in /* BUS */ (ts_local_pe_662_a0_in),
	.a_23_out /* BUS */ (ts_local_pe_663_a0_out),
	.a_23_oe /* BUS */ (ts_local_pe_663_a0_oe),
	.a_23_in /* BUS */ (ts_local_pe_663_a0_in),
	.width_0_out /* BUS */ (ts_local_pe_664_a0_out),
	.width_0_oe /* BUS */ (ts_local_pe_664_a0_oe),
	.width_0_in /* BUS */ (ts_local_pe_664_a0_in),
	.width_1_out /* BUS */ (ts_local_pe_665_a0_out),
	.width_1_oe /* BUS */ (ts_local_pe_665_a0_oe),
	.width_1_in /* BUS */ (ts_local_pe_665_a0_in),
	.width_2_out /* BUS */ (ts_local_pe_666_a0_out),
	.width_2_oe /* BUS */ (ts_local_pe_666_a0_oe),
	.width_2_in /* BUS */ (ts_local_pe_666_a0_in),
	.width_3_out /* BUS */ (ts_local_pe_667_a0_out),
	.width_3_oe /* BUS */ (ts_local_pe_667_a0_oe),
	.width_3_in /* BUS */ (ts_local_pe_667_a0_in),
	.read_out /* BUS */ (ts_local_pe_668_a0_out),
	.read_oe /* BUS */ (ts_local_pe_668_a0_oe),
	.read_in /* BUS */ (ts_local_pe_668_a0_in),
	.mreq_out /* BUS */ (ts_local_pe_669_a0_out),
	.mreq_oe /* BUS */ (ts_local_pe_669_a0_oe),
	.mreq_in /* BUS */ (ts_local_pe_669_a0_in),
	.dr_0_out /* BUS */ (ts_local_pe_670_a0_out),
	.dr_0_oe /* BUS */ (ts_local_pe_670_a0_oe),
	.dr_0_in /* BUS */ (ts_local_pe_670_a0_in),
	.dr_1_out /* BUS */ (ts_local_pe_671_a0_out),
	.dr_1_oe /* BUS */ (ts_local_pe_671_a0_oe),
	.dr_1_in /* BUS */ (ts_local_pe_671_a0_in),
	.dr_2_out /* BUS */ (ts_local_pe_672_a0_out),
	.dr_2_oe /* BUS */ (ts_local_pe_672_a0_oe),
	.dr_2_in /* BUS */ (ts_local_pe_672_a0_in),
	.dr_3_out /* BUS */ (ts_local_pe_673_a0_out),
	.dr_3_oe /* BUS */ (ts_local_pe_673_a0_oe),
	.dr_3_in /* BUS */ (ts_local_pe_673_a0_in),
	.dr_4_out /* BUS */ (ts_local_pe_674_a0_out),
	.dr_4_oe /* BUS */ (ts_local_pe_674_a0_oe),
	.dr_4_in /* BUS */ (ts_local_pe_674_a0_in),
	.dr_5_out /* BUS */ (ts_local_pe_675_a0_out),
	.dr_5_oe /* BUS */ (ts_local_pe_675_a0_oe),
	.dr_5_in /* BUS */ (ts_local_pe_675_a0_in),
	.dr_6_out /* BUS */ (ts_local_pe_676_a0_out),
	.dr_6_oe /* BUS */ (ts_local_pe_676_a0_oe),
	.dr_6_in /* BUS */ (ts_local_pe_676_a0_in),
	.dr_7_out /* BUS */ (ts_local_pe_677_a0_out),
	.dr_7_oe /* BUS */ (ts_local_pe_677_a0_oe),
	.dr_7_in /* BUS */ (ts_local_pe_677_a0_in),
	.dr_8_out /* BUS */ (ts_local_pe_678_a0_out),
	.dr_8_oe /* BUS */ (ts_local_pe_678_a0_oe),
	.dr_8_in /* BUS */ (ts_local_pe_678_a0_in),
	.dr_9_out /* BUS */ (ts_local_pe_679_a0_out),
	.dr_9_oe /* BUS */ (ts_local_pe_679_a0_oe),
	.dr_9_in /* BUS */ (ts_local_pe_679_a0_in),
	.dr_10_out /* BUS */ (ts_local_pe_680_a0_out),
	.dr_10_oe /* BUS */ (ts_local_pe_680_a0_oe),
	.dr_10_in /* BUS */ (ts_local_pe_680_a0_in),
	.dr_11_out /* BUS */ (ts_local_pe_681_a0_out),
	.dr_11_oe /* BUS */ (ts_local_pe_681_a0_oe),
	.dr_11_in /* BUS */ (ts_local_pe_681_a0_in),
	.dr_12_out /* BUS */ (ts_local_pe_682_a0_out),
	.dr_12_oe /* BUS */ (ts_local_pe_682_a0_oe),
	.dr_12_in /* BUS */ (ts_local_pe_682_a0_in),
	.dr_13_out /* BUS */ (ts_local_pe_683_a0_out),
	.dr_13_oe /* BUS */ (ts_local_pe_683_a0_oe),
	.dr_13_in /* BUS */ (ts_local_pe_683_a0_in),
	.dr_14_out /* BUS */ (ts_local_pe_684_a0_out),
	.dr_14_oe /* BUS */ (ts_local_pe_684_a0_oe),
	.dr_14_in /* BUS */ (ts_local_pe_684_a0_in),
	.dr_15_out /* BUS */ (ts_local_pe_685_a0_out),
	.dr_15_oe /* BUS */ (ts_local_pe_685_a0_oe),
	.dr_15_in /* BUS */ (ts_local_pe_685_a0_in),
	.justify_out /* BUS */ (ts_local_pe_686_a0_out),
	.justify_oe /* BUS */ (ts_local_pe_686_a0_oe),
	.justify_in /* BUS */ (ts_local_pe_686_a0_in),
	.sys_clk(sys_clk) // Generated
);

// TOM.NET (321) - iodec : iodec
iodec iodec_inst
(
	.a_0 /* IN */ (maska_0),
	.a_1 /* IN */ (maska_1),
	.a_2 /* IN */ (maska_2),
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
	.intdev /* IN */ (intdev),
	.wet /* IN */ (wet),
	.oet /* IN */ (oet),
	.intswe /* IN */ (intswe),
	.reads /* IN */ (reads),
	.intwe /* IN */ (intwe),
	.lba /* IN */ (lba),
	.lbb /* IN */ (lbb),
	.clut /* IN */ (clut),
	.ourack /* IN */ (ourack),
	.romcsl_0 /* IN */ (romcsl_0),
	.romcsl_1 /* IN */ (romcsl_1),
	.dspcsl /* IN */ (dspcsl),
	.memc1r /* OUT */ (memc1r),
	.memc2r /* OUT */ (memc2r),
	.hcr /* OUT */ (hcr),
	.vcr /* OUT */ (vcr),
	.lphr /* OUT */ (lphr),
	.lpvr /* OUT */ (lpvr),
	.ob0r /* OUT */ (ob0r),
	.ob1r /* OUT */ (ob1r),
	.ob2r /* OUT */ (ob2r),
	.ob3r /* OUT */ (ob3r),
	.lbrar /* OUT */ (lbrar),
	.test2r /* OUT */ (test2r),
	.test3r /* OUT */ (test3r),
	.intr /* OUT */ (intr),
	.pit0r /* OUT */ (pit0r),
	.pit1r /* OUT */ (pit1r),
	.memc1w /* OUT */ (memc1w),
	.memc2w /* OUT */ (memc2w),
	.olp1w /* OUT */ (olp1w),
	.olp2w /* OUT */ (olp2w),
	.obfw /* OUT */ (obfw),
	.vmodew /* OUT */ (vmodew),
	.bord1w /* OUT */ (bord1w),
	.bord2w /* OUT */ (bord2w),
	.hcw /* OUT */ (hcw),
	.hpw /* OUT */ (hpw),
	.hbbw /* OUT */ (hbbw),
	.hbew /* OUT */ (hbew),
	.hsw /* OUT */ (hsw),
	.hvsw /* OUT */ (hvsw),
	.hdb1w /* OUT */ (hdb1w),
	.hdb2w /* OUT */ (hdb2w),
	.hdew /* OUT */ (hdew),
	.vcw /* OUT */ (vcw),
	.vpw /* OUT */ (vpw),
	.vbbw /* OUT */ (vbbw),
	.vbew /* OUT */ (vbew),
	.vsw /* OUT */ (vsw),
	.vdbw /* OUT */ (vdbw),
	.vdew /* OUT */ (vdew),
	.vebw /* OUT */ (vebw),
	.veew /* OUT */ (veew),
	.viw /* OUT */ (viw),
	.pit0w /* OUT */ (pit0w),
	.pit1w /* OUT */ (pit1w),
	.heqw /* OUT */ (heqw),
	.test1w /* OUT */ (test1w),
	.lbraw /* OUT */ (lbraw),
	.int1w /* OUT */ (int1w),
	.int2w /* OUT */ (int2w),
	.bgwr /* OUT */ (bgwr),
	.expl /* OUT */ (expl)
);

// TOM.NET (335) - vid : vid
vid vid_inst
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
	.vmwr /* IN */ (vmodew),
	.hcwr /* IN */ (hcw),
	.hcrd /* IN */ (hcr),
	.hpwr /* IN */ (hpw),
	.hbbwr /* IN */ (hbbw),
	.hbewr /* IN */ (hbew),
	.hdb1wr /* IN */ (hdb1w),
	.hdb2wr /* IN */ (hdb2w),
	.hdewr /* IN */ (hdew),
	.hswr /* IN */ (hsw),
	.hvswr /* IN */ (hvsw),
	.vcwr /* IN */ (vcw),
	.vcrd /* IN */ (vcr),
	.vpwr /* IN */ (vpw),
	.vbbwr /* IN */ (vbbw),
	.vbewr /* IN */ (vbew),
	.vdbwr /* IN */ (vdbw),
	.vdewr /* IN */ (vdew),
	.vebwr /* IN */ (vebw),
	.veewr /* IN */ (veew),
	.vswr /* IN */ (vsw),
	.viwr /* IN */ (viw),
	.lphrd /* IN */ (lphr),
	.lpvrd /* IN */ (lpvr),
	.hlock /* IN */ (hlock),
	.vlock /* IN */ (vlock),
	.resetl /* IN */ (resetl),
	.vclk /* IN */ (vclk),
	.lp /* IN */ (lp),
	.heqw /* IN */ (heqw),
	.test1w /* IN */ (test1w),
	.test2r /* IN */ (test2r),
	.test3r /* IN */ (test3r),
	.wet /* IN */ (wet),
	.vgy /* IN */ (vgy),
	.vey /* IN */ (vey),
	.vly /* IN */ (vly),
	.lock /* IN */ (lock),
	.start /* OUT */ (start),
	.dd /* OUT */ (dd),
	.lbufa /* OUT */ (lbufa),
	.lbufb /* OUT */ (lbufb),
	.noths /* OUT */ (hsl),
	.notvs /* OUT */ (vsl),
	.syncen /* OUT */ (syncen),
	.vint /* OUT */ (vint),
	.vactive /* OUT */ (vactive),
	.blank /* OUT */ (blank_obuf),
	.nextpixa /* OUT */ (nextpixa),
	.nextpixd /* OUT */ (nextpixd),
	.cry16 /* OUT */ (cry16),
	.rgb24 /* OUT */ (rgb24),
	.rg16 /* OUT */ (rg16),
	.rgb16 /* OUT */ (rgb16),
	.mptest /* OUT */ (mptest),
	.ndtest /* OUT */ (ndtest),
	.varmod /* OUT */ (varmod),
	.vcl_0 /* OUT */ (vc_0),
	.vcl_1 /* OUT */ (vc_1),
	.vcl_2 /* OUT */ (vc_2),
	.vcl_3 /* OUT */ (vc_3),
	.vcl_4 /* OUT */ (vc_4),
	.vcl_5 /* OUT */ (vc_5),
	.vcl_6 /* OUT */ (vc_6),
	.vcl_7 /* OUT */ (vc_7),
	.vcl_8 /* OUT */ (vc_8),
	.vcl_9 /* OUT */ (vc_9),
	.vcl_10 /* OUT */ (vc_10),
	.tcount /* OUT */ (tcount),
	.incen /* OUT */ (incen),
	.binc /* OUT */ (binc),
	.bgw /* OUT */ (bgw),
	.word2 /* OUT */ (word2),
	.pp /* OUT */ (pp),
	.lbaactive /* OUT */ (lbaactive),
	.lbbactive /* OUT */ (lbbactive),
	.hcb_10 /* OUT */ (hcb_10),
	.hs_o /* OUT */ (hs_o),
	.hhs_o /* OUT */ (hhs_o),
	.vs_o /* OUT */ (vs_o),
	.dr_0_out /* BUS */ (ts_local_pe_670_a1_out),
	.dr_0_oe /* BUS */ (ts_local_pe_670_a1_oe),
	.dr_0_in /* BUS */ (ts_local_pe_670_a1_in),
	.dr_1_out /* BUS */ (ts_local_pe_671_a1_out),
	.dr_1_oe /* BUS */ (ts_local_pe_671_a1_oe),
	.dr_1_in /* BUS */ (ts_local_pe_671_a1_in),
	.dr_2_out /* BUS */ (ts_local_pe_672_a1_out),
	.dr_2_oe /* BUS */ (ts_local_pe_672_a1_oe),
	.dr_2_in /* BUS */ (ts_local_pe_672_a1_in),
	.dr_3_out /* BUS */ (ts_local_pe_673_a1_out),
	.dr_3_oe /* BUS */ (ts_local_pe_673_a1_oe),
	.dr_3_in /* BUS */ (ts_local_pe_673_a1_in),
	.dr_4_out /* BUS */ (ts_local_pe_674_a1_out),
	.dr_4_oe /* BUS */ (ts_local_pe_674_a1_oe),
	.dr_4_in /* BUS */ (ts_local_pe_674_a1_in),
	.dr_5_out /* BUS */ (ts_local_pe_675_a1_out),
	.dr_5_oe /* BUS */ (ts_local_pe_675_a1_oe),
	.dr_5_in /* BUS */ (ts_local_pe_675_a1_in),
	.dr_6_out /* BUS */ (ts_local_pe_676_a1_out),
	.dr_6_oe /* BUS */ (ts_local_pe_676_a1_oe),
	.dr_6_in /* BUS */ (ts_local_pe_676_a1_in),
	.dr_7_out /* BUS */ (ts_local_pe_677_a1_out),
	.dr_7_oe /* BUS */ (ts_local_pe_677_a1_oe),
	.dr_7_in /* BUS */ (ts_local_pe_677_a1_in),
	.dr_8_out /* BUS */ (ts_local_pe_678_a1_out),
	.dr_8_oe /* BUS */ (ts_local_pe_678_a1_oe),
	.dr_8_in /* BUS */ (ts_local_pe_678_a1_in),
	.dr_9_out /* BUS */ (ts_local_pe_679_a1_out),
	.dr_9_oe /* BUS */ (ts_local_pe_679_a1_oe),
	.dr_9_in /* BUS */ (ts_local_pe_679_a1_in),
	.dr_10_out /* BUS */ (ts_local_pe_680_a1_out),
	.dr_10_oe /* BUS */ (ts_local_pe_680_a1_oe),
	.dr_10_in /* BUS */ (ts_local_pe_680_a1_in),
	.dr_11_out /* BUS */ (ts_local_pe_681_a1_out),
	.dr_11_oe /* BUS */ (ts_local_pe_681_a1_oe),
	.dr_11_in /* BUS */ (ts_local_pe_681_a1_in),
	.dr_12_out /* BUS */ (ts_local_pe_682_a1_out),
	.dr_12_oe /* BUS */ (ts_local_pe_682_a1_oe),
	.dr_12_in /* BUS */ (ts_local_pe_682_a1_in),
	.dr_13_out /* BUS */ (ts_local_pe_683_a1_out),
	.dr_13_oe /* BUS */ (ts_local_pe_683_a1_oe),
	.dr_13_in /* BUS */ (ts_local_pe_683_a1_in),
	.dr_14_out /* BUS */ (ts_local_pe_684_a1_out),
	.dr_14_oe /* BUS */ (ts_local_pe_684_a1_oe),
	.dr_14_in /* BUS */ (ts_local_pe_684_a1_in),
	.dr_15_out /* BUS */ (ts_local_pe_685_a1_out),
	.dr_15_oe /* BUS */ (ts_local_pe_685_a1_oe),
	.dr_15_in /* BUS */ (ts_local_pe_685_a1_in),
	.sys_clk(sys_clk) // Generated
);

// TOM.NET (352) - pix : pix
pix pix_inst
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
	.dd /* IN */ (dd),
	.vactive /* IN */ (vactive),
	.blank /* IN */ (blank_obuf),
	.nextpixa /* IN */ (nextpixa),
	.nextpixd /* IN */ (nextpixd),
	.cry16 /* IN */ (cry16),
	.rgb24 /* IN */ (rgb24),
	.rg16 /* IN */ (rg16),
	.lbrd_0 /* IN */ (lbrd_0),
	.lbrd_1 /* IN */ (lbrd_1),
	.lbrd_2 /* IN */ (lbrd_2),
	.lbrd_3 /* IN */ (lbrd_3),
	.lbrd_4 /* IN */ (lbrd_4),
	.lbrd_5 /* IN */ (lbrd_5),
	.lbrd_6 /* IN */ (lbrd_6),
	.lbrd_7 /* IN */ (lbrd_7),
	.lbrd_8 /* IN */ (lbrd_8),
	.lbrd_9 /* IN */ (lbrd_9),
	.lbrd_10 /* IN */ (lbrd_10),
	.lbrd_11 /* IN */ (lbrd_11),
	.lbrd_12 /* IN */ (lbrd_12),
	.lbrd_13 /* IN */ (lbrd_13),
	.lbrd_14 /* IN */ (lbrd_14),
	.lbrd_15 /* IN */ (lbrd_15),
	.lbrd_16 /* IN */ (lbrd_16),
	.lbrd_17 /* IN */ (lbrd_17),
	.lbrd_18 /* IN */ (lbrd_18),
	.lbrd_19 /* IN */ (lbrd_19),
	.lbrd_20 /* IN */ (lbrd_20),
	.lbrd_21 /* IN */ (lbrd_21),
	.lbrd_22 /* IN */ (lbrd_22),
	.lbrd_23 /* IN */ (lbrd_23),
	.lbrd_24 /* IN */ (lbrd_24),
	.lbrd_25 /* IN */ (lbrd_25),
	.lbrd_26 /* IN */ (lbrd_26),
	.lbrd_27 /* IN */ (lbrd_27),
	.lbrd_28 /* IN */ (lbrd_28),
	.lbrd_29 /* IN */ (lbrd_29),
	.lbrd_30 /* IN */ (lbrd_30),
	.lbrd_31 /* IN */ (lbrd_31),
	.lbraw /* IN */ (lbraw),
	.lbrar /* IN */ (lbrar),
	.bcrgwr /* IN */ (bord1w),
	.bcbwr /* IN */ (bord2w),
	.resetl /* IN */ (resetl),
	.vclk /* IN */ (vclk),
	.gnd /* IN */ (gnd),
	.mptest /* IN */ (mptest),
	.incen /* IN */ (incen),
	.binc /* IN */ (binc),
	.lp /* IN */ (lp),
	.rgb16 /* IN */ (rgb16),
	.varmod /* IN */ (varmod),
	.word2 /* IN */ (word2),
	.pp /* IN */ (pp),
	.lbra_0 /* OUT */ (lbra_0),
	.lbra_1 /* OUT */ (lbra_1),
	.lbra_2 /* OUT */ (lbra_2),
	.lbra_3 /* OUT */ (lbra_3),
	.lbra_4 /* OUT */ (lbra_4),
	.lbra_5 /* OUT */ (lbra_5),
	.lbra_6 /* OUT */ (lbra_6),
	.lbra_7 /* OUT */ (lbra_7),
	.lbra_8 /* OUT */ (lbra_8),
	.r_0 /* OUT */ (r_0),
	.r_1 /* OUT */ (r_1),
	.r_2 /* OUT */ (r_2),
	.r_3 /* OUT */ (r_3),
	.r_4 /* OUT */ (r_4),
	.r_5 /* OUT */ (r_5),
	.r_6 /* OUT */ (r_6),
	.r_7 /* OUT */ (r_7),
	.g_0 /* OUT */ (g_0),
	.g_1 /* OUT */ (g_1),
	.g_2 /* OUT */ (g_2),
	.g_3 /* OUT */ (g_3),
	.g_4 /* OUT */ (g_4),
	.g_5 /* OUT */ (g_5),
	.g_6 /* OUT */ (g_6),
	.g_7 /* OUT */ (g_7),
	.b_0 /* OUT */ (b_0),
	.b_1 /* OUT */ (b_1),
	.b_2 /* OUT */ (b_2),
	.b_3 /* OUT */ (b_3),
	.b_4 /* OUT */ (b_4),
	.b_5 /* OUT */ (b_5),
	.b_6 /* OUT */ (b_6),
	.b_7 /* OUT */ (b_7),
	.inc /* OUT */ (inc),
	.dr_0_out /* BUS */ (ts_local_pe_670_a2_out),
	.dr_0_oe /* BUS */ (ts_local_pe_670_a2_oe),
	.dr_0_in /* BUS */ (ts_local_pe_670_a2_in),
	.dr_1_out /* BUS */ (ts_local_pe_671_a2_out),
	.dr_1_oe /* BUS */ (ts_local_pe_671_a2_oe),
	.dr_1_in /* BUS */ (ts_local_pe_671_a2_in),
	.dr_2_out /* BUS */ (ts_local_pe_672_a2_out),
	.dr_2_oe /* BUS */ (ts_local_pe_672_a2_oe),
	.dr_2_in /* BUS */ (ts_local_pe_672_a2_in),
	.dr_3_out /* BUS */ (ts_local_pe_673_a2_out),
	.dr_3_oe /* BUS */ (ts_local_pe_673_a2_oe),
	.dr_3_in /* BUS */ (ts_local_pe_673_a2_in),
	.dr_4_out /* BUS */ (ts_local_pe_674_a2_out),
	.dr_4_oe /* BUS */ (ts_local_pe_674_a2_oe),
	.dr_4_in /* BUS */ (ts_local_pe_674_a2_in),
	.dr_5_out /* BUS */ (ts_local_pe_675_a2_out),
	.dr_5_oe /* BUS */ (ts_local_pe_675_a2_oe),
	.dr_5_in /* BUS */ (ts_local_pe_675_a2_in),
	.dr_6_out /* BUS */ (ts_local_pe_676_a2_out),
	.dr_6_oe /* BUS */ (ts_local_pe_676_a2_oe),
	.dr_6_in /* BUS */ (ts_local_pe_676_a2_in),
	.dr_7_out /* BUS */ (ts_local_pe_677_a2_out),
	.dr_7_oe /* BUS */ (ts_local_pe_677_a2_oe),
	.dr_7_in /* BUS */ (ts_local_pe_677_a2_in),
	.dr_8_out /* BUS */ (ts_local_pe_678_a2_out),
	.dr_8_oe /* BUS */ (ts_local_pe_678_a2_oe),
	.dr_8_in /* BUS */ (ts_local_pe_678_a2_in),
	.sys_clk(sys_clk) // Generated
);

// TOM.NET (363) - dbus : dbus
dbus dbus_inst
(
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
	.din_32 /* IN */ (din_32),
	.din_33 /* IN */ (din_33),
	.din_34 /* IN */ (din_34),
	.din_35 /* IN */ (din_35),
	.din_36 /* IN */ (din_36),
	.din_37 /* IN */ (din_37),
	.din_38 /* IN */ (din_38),
	.din_39 /* IN */ (din_39),
	.din_40 /* IN */ (din_40),
	.din_41 /* IN */ (din_41),
	.din_42 /* IN */ (din_42),
	.din_43 /* IN */ (din_43),
	.din_44 /* IN */ (din_44),
	.din_45 /* IN */ (din_45),
	.din_46 /* IN */ (din_46),
	.din_47 /* IN */ (din_47),
	.din_48 /* IN */ (din_48),
	.din_49 /* IN */ (din_49),
	.din_50 /* IN */ (din_50),
	.din_51 /* IN */ (din_51),
	.din_52 /* IN */ (din_52),
	.din_53 /* IN */ (din_53),
	.din_54 /* IN */ (din_54),
	.din_55 /* IN */ (din_55),
	.din_56 /* IN */ (din_56),
	.din_57 /* IN */ (din_57),
	.din_58 /* IN */ (din_58),
	.din_59 /* IN */ (din_59),
	.din_60 /* IN */ (din_60),
	.din_61 /* IN */ (din_61),
	.din_62 /* IN */ (din_62),
	.din_63 /* IN */ (din_63),
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
	.dinlatch_2 /* IN */ (dinlatch_2),
	.dinlatch_3 /* IN */ (dinlatch_3),
	.dinlatch_4 /* IN */ (dinlatch_4),
	.dinlatch_5 /* IN */ (dinlatch_5),
	.dinlatch_6 /* IN */ (dinlatch_6),
	.dinlatch_7 /* IN */ (dinlatch_7),
	.dmuxd_0 /* IN */ (dmuxd_0),
	.dmuxd_1 /* IN */ (dmuxd_1),
	.dmuxd_2 /* IN */ (dmuxd_2),
	.dmuxu_0 /* IN */ (dmuxu_0),
	.dmuxu_1 /* IN */ (dmuxu_1),
	.dmuxu_2 /* IN */ (dmuxu_2),
	.dren /* IN */ (dren),
	.xdsrc /* IN */ (xdsrc),
	.ourack /* IN */ (ourack),
	.wd_0 /* IN */ (wd_0_in),
	.wd_1 /* IN */ (wd_1_in),
	.wd_2 /* IN */ (wd_2_in),
	.wd_3 /* IN */ (wd_3_in),
	.wd_4 /* IN */ (wd_4_in),
	.wd_5 /* IN */ (wd_5_in),
	.wd_6 /* IN */ (wd_6_in),
	.wd_7 /* IN */ (wd_7_in),
	.wd_8 /* IN */ (wd_8_in),
	.wd_9 /* IN */ (wd_9_in),
	.wd_10 /* IN */ (wd_10_in),
	.wd_11 /* IN */ (wd_11_in),
	.wd_12 /* IN */ (wd_12_in),
	.wd_13 /* IN */ (wd_13_in),
	.wd_14 /* IN */ (wd_14_in),
	.wd_15 /* IN */ (wd_15_in),
	.wd_16 /* IN */ (wd_16_in),
	.wd_17 /* IN */ (wd_17_in),
	.wd_18 /* IN */ (wd_18_in),
	.wd_19 /* IN */ (wd_19_in),
	.wd_20 /* IN */ (wd_20_in),
	.wd_21 /* IN */ (wd_21_in),
	.wd_22 /* IN */ (wd_22_in),
	.wd_23 /* IN */ (wd_23_in),
	.wd_24 /* IN */ (wd_24_in),
	.wd_25 /* IN */ (wd_25_in),
	.wd_26 /* IN */ (wd_26_in),
	.wd_27 /* IN */ (wd_27_in),
	.wd_28 /* IN */ (wd_28_in),
	.wd_29 /* IN */ (wd_29_in),
	.wd_30 /* IN */ (wd_30_in),
	.wd_31 /* IN */ (wd_31_in),
	.wd_32 /* IN */ (wd_32_in),
	.wd_33 /* IN */ (wd_33_in),
	.wd_34 /* IN */ (wd_34_in),
	.wd_35 /* IN */ (wd_35_in),
	.wd_36 /* IN */ (wd_36_in),
	.wd_37 /* IN */ (wd_37_in),
	.wd_38 /* IN */ (wd_38_in),
	.wd_39 /* IN */ (wd_39_in),
	.wd_40 /* IN */ (wd_40_in),
	.wd_41 /* IN */ (wd_41_in),
	.wd_42 /* IN */ (wd_42_in),
	.wd_43 /* IN */ (wd_43_in),
	.wd_44 /* IN */ (wd_44_in),
	.wd_45 /* IN */ (wd_45_in),
	.wd_46 /* IN */ (wd_46_in),
	.wd_47 /* IN */ (wd_47_in),
	.wd_48 /* IN */ (wd_48_in),
	.wd_49 /* IN */ (wd_49_in),
	.wd_50 /* IN */ (wd_50_in),
	.wd_51 /* IN */ (wd_51_in),
	.wd_52 /* IN */ (wd_52_in),
	.wd_53 /* IN */ (wd_53_in),
	.wd_54 /* IN */ (wd_54_in),
	.wd_55 /* IN */ (wd_55_in),
	.wd_56 /* IN */ (wd_56_in),
	.wd_57 /* IN */ (wd_57_in),
	.wd_58 /* IN */ (wd_58_in),
	.wd_59 /* IN */ (wd_59_in),
	.wd_60 /* IN */ (wd_60_in),
	.wd_61 /* IN */ (wd_61_in),
	.wd_62 /* IN */ (wd_62_in),
	.wd_63 /* IN */ (wd_63_in),
	.clk /* IN */ (clk_1),
	.dp_0 /* OUT */ (dp_0),
	.dp_1 /* OUT */ (dp_1),
	.dp_2 /* OUT */ (dp_2),
	.dp_3 /* OUT */ (dp_3),
	.dp_4 /* OUT */ (dp_4),
	.dp_5 /* OUT */ (dp_5),
	.dp_6 /* OUT */ (dp_6),
	.dp_7 /* OUT */ (dp_7),
	.dp_8 /* OUT */ (dp_8),
	.dp_9 /* OUT */ (dp_9),
	.dp_10 /* OUT */ (dp_10),
	.dp_11 /* OUT */ (dp_11),
	.dp_12 /* OUT */ (dp_12),
	.dp_13 /* OUT */ (dp_13),
	.dp_14 /* OUT */ (dp_14),
	.dp_15 /* OUT */ (dp_15),
	.dob_0 /* OUT */ (dout_0),
	.dob_1 /* OUT */ (dout_1),
	.dob_2 /* OUT */ (dout_2),
	.dob_3 /* OUT */ (dout_3),
	.dob_4 /* OUT */ (dout_4),
	.dob_5 /* OUT */ (dout_5),
	.dob_6 /* OUT */ (dout_6),
	.dob_7 /* OUT */ (dout_7),
	.dob_8 /* OUT */ (dout_8),
	.dob_9 /* OUT */ (dout_9),
	.dob_10 /* OUT */ (dout_10),
	.dob_11 /* OUT */ (dout_11),
	.dob_12 /* OUT */ (dout_12),
	.dob_13 /* OUT */ (dout_13),
	.dob_14 /* OUT */ (dout_14),
	.dob_15 /* OUT */ (dout_15),
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
	.d5_32 /* OUT */ (dout_32),
	.d5_33 /* OUT */ (dout_33),
	.d5_34 /* OUT */ (dout_34),
	.d5_35 /* OUT */ (dout_35),
	.d5_36 /* OUT */ (dout_36),
	.d5_37 /* OUT */ (dout_37),
	.d5_38 /* OUT */ (dout_38),
	.d5_39 /* OUT */ (dout_39),
	.d5_40 /* OUT */ (dout_40),
	.d5_41 /* OUT */ (dout_41),
	.d5_42 /* OUT */ (dout_42),
	.d5_43 /* OUT */ (dout_43),
	.d5_44 /* OUT */ (dout_44),
	.d5_45 /* OUT */ (dout_45),
	.d5_46 /* OUT */ (dout_46),
	.d5_47 /* OUT */ (dout_47),
	.d5_48 /* OUT */ (dout_48),
	.d5_49 /* OUT */ (dout_49),
	.d5_50 /* OUT */ (dout_50),
	.d5_51 /* OUT */ (dout_51),
	.d5_52 /* OUT */ (dout_52),
	.d5_53 /* OUT */ (dout_53),
	.d5_54 /* OUT */ (dout_54),
	.d5_55 /* OUT */ (dout_55),
	.d5_56 /* OUT */ (dout_56),
	.d5_57 /* OUT */ (dout_57),
	.d5_58 /* OUT */ (dout_58),
	.d5_59 /* OUT */ (dout_59),
	.d5_60 /* OUT */ (dout_60),
	.d5_61 /* OUT */ (dout_61),
	.d5_62 /* OUT */ (dout_62),
	.d5_63 /* OUT */ (dout_63),
	.d_0 /* OUT */ (d_0),
	.d_1 /* OUT */ (d_1),
	.d_2 /* OUT */ (d_2),
	.d_3 /* OUT */ (d_3),
	.d_4 /* OUT */ (d_4),
	.d_5 /* OUT */ (d_5),
	.d_6 /* OUT */ (d_6),
	.d_7 /* OUT */ (d_7),
	.d_8 /* OUT */ (d_8),
	.d_9 /* OUT */ (d_9),
	.d_10 /* OUT */ (d_10),
	.d_11 /* OUT */ (d_11),
	.d_12 /* OUT */ (d_12),
	.d_13 /* OUT */ (d_13),
	.d_14 /* OUT */ (d_14),
	.d_15 /* OUT */ (d_15),
	.d_16 /* OUT */ (d_16),
	.d_17 /* OUT */ (d_17),
	.d_18 /* OUT */ (d_18),
	.d_19 /* OUT */ (d_19),
	.d_20 /* OUT */ (d_20),
	.d_21 /* OUT */ (d_21),
	.d_22 /* OUT */ (d_22),
	.d_23 /* OUT */ (d_23),
	.d_24 /* OUT */ (d_24),
	.d_25 /* OUT */ (d_25),
	.d_26 /* OUT */ (d_26),
	.d_27 /* OUT */ (d_27),
	.d_28 /* OUT */ (d_28),
	.d_29 /* OUT */ (d_29),
	.d_30 /* OUT */ (d_30),
	.d_31 /* OUT */ (d_31),
	.d_32 /* OUT */ (d_32),
	.d_33 /* OUT */ (d_33),
	.d_34 /* OUT */ (d_34),
	.d_35 /* OUT */ (d_35),
	.d_36 /* OUT */ (d_36),
	.d_37 /* OUT */ (d_37),
	.d_38 /* OUT */ (d_38),
	.d_39 /* OUT */ (d_39),
	.d_40 /* OUT */ (d_40),
	.d_41 /* OUT */ (d_41),
	.d_42 /* OUT */ (d_42),
	.d_43 /* OUT */ (d_43),
	.d_44 /* OUT */ (d_44),
	.d_45 /* OUT */ (d_45),
	.d_46 /* OUT */ (d_46),
	.d_47 /* OUT */ (d_47),
	.d_48 /* OUT */ (d_48),
	.d_49 /* OUT */ (d_49),
	.d_50 /* OUT */ (d_50),
	.d_51 /* OUT */ (d_51),
	.d_52 /* OUT */ (d_52),
	.d_53 /* OUT */ (d_53),
	.d_54 /* OUT */ (d_54),
	.d_55 /* OUT */ (d_55),
	.d_56 /* OUT */ (d_56),
	.d_57 /* OUT */ (d_57),
	.d_58 /* OUT */ (d_58),
	.d_59 /* OUT */ (d_59),
	.d_60 /* OUT */ (d_60),
	.d_61 /* OUT */ (d_61),
	.d_62 /* OUT */ (d_62),
	.d_63 /* OUT */ (d_63),
	.sys_clk(sys_clk) // Generated
);

// TOM.NET (369) - abus : abus
abus abus_inst
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
	.ainen /* IN */ (ainen),
	.at_0 /* IN */ (at_0),
	.at_1 /* IN */ (at_1),
	.at_2 /* IN */ (at_2),
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
	.newrow /* IN */ (newrow),
	.resrow /* IN */ (resrow),
	.mux /* IN */ (mux),
	.resetl /* IN */ (resetl),
	.vcc /* IN */ (vcc),
	.memc1r /* IN */ (memc1r),
	.memc2r /* IN */ (memc2r),
	.memc1w /* IN */ (memc1w),
	.memc2w /* IN */ (memc2w),
	.cfg_0 /* IN */ (cfg_0),
	.cfg_1 /* IN */ (cfg_1),
	.cfg_2 /* IN */ (cfg_2),
	.cfg_4 /* IN */ (cfg_4),
	.cfg_5 /* IN */ (cfg_5),
	.cfg_6 /* IN */ (cfg_6),
	.cfg_8 /* IN */ (cfg_8),
	.cfgw /* IN */ (cfgw),
	.cfgen /* IN */ (cfgen),
	.ack /* IN */ (ack),
	.clk /* IN */ (clk_2),
	.ba /* IN */ (ba),
	.fc_0 /* IN */ (fc_0),
	.fc_1 /* IN */ (fc_1),
	.fc_2 /* IN */ (fc_2),
	.siz_1 /* IN */ (sizin_1),
	.mreq /* IN */ (mreq_in),
	.dreqin /* IN */ (dreqin),
	.lbufa /* IN */ (lbufa),
	.d7a /* IN */ (d7a),
	.readt /* IN */ (readt),
	.wet /* IN */ (wet),
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
	.ma_0 /* OUT */ (ma_0),
	.ma_1 /* OUT */ (ma_1),
	.ma_2 /* OUT */ (ma_2),
	.ma_3 /* OUT */ (ma_3),
	.ma_4 /* OUT */ (ma_4),
	.ma_5 /* OUT */ (ma_5),
	.ma_6 /* OUT */ (ma_6),
	.ma_7 /* OUT */ (ma_7),
	.ma_8 /* OUT */ (ma_8),
	.ma_9 /* OUT */ (ma_9),
	.ma_10 /* OUT */ (ma_10),
	.match /* OUT */ (match),
	.intdev /* OUT */ (intdev),
	.fintdev /* OUT */ (fintdev),
	.fextdev /* OUT */ (fextdev),
	.fdram /* OUT */ (fdram),
	.from /* OUT */ (from),
	.dspd_0 /* OUT */ (dspd_0),
	.dspd_1 /* OUT */ (dspd_1),
	.romspd_0 /* OUT */ (romspd_0),
	.romspd_1 /* OUT */ (romspd_1),
	.iospd_0 /* OUT */ (iospd_0),
	.iospd_1 /* OUT */ (iospd_1),
	.dram /* OUT */ (dram_obuf),
	.mw_0 /* OUT */ (mw_0),
	.mw_1 /* OUT */ (mw_1),
	.bs_0 /* OUT */ (bs_0),
	.bs_1 /* OUT */ (bs_1),
	.bs_2 /* OUT */ (bs_2),
	.bs_3 /* OUT */ (bs_3),
	.cpu32 /* OUT */ (cpu32),
	.refrate_0 /* OUT */ (refrate_0),
	.refrate_1 /* OUT */ (refrate_1),
	.refrate_2 /* OUT */ (refrate_2),
	.refrate_3 /* OUT */ (refrate_3),
	.bigend /* OUT */ (bigend),
	.ourack /* OUT */ (ourack),
	.nocpu /* OUT */ (nocpu),
	.gpuread /* OUT */ (gpuread),
	.gpuwrite /* OUT */ (gpuwrite),
	.abs_2 /* OUT */ (abs_2),
	.abs_3 /* OUT */ (abs_3),
	.hilo /* OUT */ (hilo),
	.lba /* OUT */ (lba),
	.lbb /* OUT */ (lbb),
	.lbt /* OUT */ (lbt),
	.clut /* OUT */ (clut),
	.clutt /* OUT */ (clutt),
	.fastrom /* OUT */ (fastrom),
	.m68k /* OUT */ (m68k),
	.at_3 /* OUT */ (at_3),
	.at_4 /* OUT */ (at_4),
	.at_5 /* OUT */ (at_5),
	.at_6 /* OUT */ (at_6),
	.at_7 /* OUT */ (at_7),
	.at_8 /* OUT */ (at_8),
	.at_9 /* OUT */ (at_9),
	.at_10 /* OUT */ (at_10),
	.a_0_out /* BUS */ (ts_local_pe_640_a1_out),
	.a_0_oe /* BUS */ (ts_local_pe_640_a1_oe),
	.a_0_in /* BUS */ (ts_local_pe_640_a1_in),
	.a_1_out /* BUS */ (ts_local_pe_641_a1_out),
	.a_1_oe /* BUS */ (ts_local_pe_641_a1_oe),
	.a_1_in /* BUS */ (ts_local_pe_641_a1_in),
	.a_2_out /* BUS */ (ts_local_pe_642_a1_out),
	.a_2_oe /* BUS */ (ts_local_pe_642_a1_oe),
	.a_2_in /* BUS */ (ts_local_pe_642_a1_in),
	.a_3_out /* BUS */ (ts_local_pe_643_a1_out),
	.a_3_oe /* BUS */ (ts_local_pe_643_a1_oe),
	.a_3_in /* BUS */ (ts_local_pe_643_a1_in),
	.a_4_out /* BUS */ (ts_local_pe_644_a1_out),
	.a_4_oe /* BUS */ (ts_local_pe_644_a1_oe),
	.a_4_in /* BUS */ (ts_local_pe_644_a1_in),
	.a_5_out /* BUS */ (ts_local_pe_645_a1_out),
	.a_5_oe /* BUS */ (ts_local_pe_645_a1_oe),
	.a_5_in /* BUS */ (ts_local_pe_645_a1_in),
	.a_6_out /* BUS */ (ts_local_pe_646_a1_out),
	.a_6_oe /* BUS */ (ts_local_pe_646_a1_oe),
	.a_6_in /* BUS */ (ts_local_pe_646_a1_in),
	.a_7_out /* BUS */ (ts_local_pe_647_a1_out),
	.a_7_oe /* BUS */ (ts_local_pe_647_a1_oe),
	.a_7_in /* BUS */ (ts_local_pe_647_a1_in),
	.a_8_out /* BUS */ (ts_local_pe_648_a1_out),
	.a_8_oe /* BUS */ (ts_local_pe_648_a1_oe),
	.a_8_in /* BUS */ (ts_local_pe_648_a1_in),
	.a_9_out /* BUS */ (ts_local_pe_649_a1_out),
	.a_9_oe /* BUS */ (ts_local_pe_649_a1_oe),
	.a_9_in /* BUS */ (ts_local_pe_649_a1_in),
	.a_10_out /* BUS */ (ts_local_pe_650_a1_out),
	.a_10_oe /* BUS */ (ts_local_pe_650_a1_oe),
	.a_10_in /* BUS */ (ts_local_pe_650_a1_in),
	.a_11_out /* BUS */ (ts_local_pe_651_a1_out),
	.a_11_oe /* BUS */ (ts_local_pe_651_a1_oe),
	.a_11_in /* BUS */ (ts_local_pe_651_a1_in),
	.a_12_out /* BUS */ (ts_local_pe_652_a1_out),
	.a_12_oe /* BUS */ (ts_local_pe_652_a1_oe),
	.a_12_in /* BUS */ (ts_local_pe_652_a1_in),
	.a_13_out /* BUS */ (ts_local_pe_653_a1_out),
	.a_13_oe /* BUS */ (ts_local_pe_653_a1_oe),
	.a_13_in /* BUS */ (ts_local_pe_653_a1_in),
	.a_14_out /* BUS */ (ts_local_pe_654_a1_out),
	.a_14_oe /* BUS */ (ts_local_pe_654_a1_oe),
	.a_14_in /* BUS */ (ts_local_pe_654_a1_in),
	.a_15_out /* BUS */ (ts_local_pe_655_a1_out),
	.a_15_oe /* BUS */ (ts_local_pe_655_a1_oe),
	.a_15_in /* BUS */ (ts_local_pe_655_a1_in),
	.a_16_out /* BUS */ (ts_local_pe_656_a1_out),
	.a_16_oe /* BUS */ (ts_local_pe_656_a1_oe),
	.a_16_in /* BUS */ (ts_local_pe_656_a1_in),
	.a_17_out /* BUS */ (ts_local_pe_657_a1_out),
	.a_17_oe /* BUS */ (ts_local_pe_657_a1_oe),
	.a_17_in /* BUS */ (ts_local_pe_657_a1_in),
	.a_18_out /* BUS */ (ts_local_pe_658_a1_out),
	.a_18_oe /* BUS */ (ts_local_pe_658_a1_oe),
	.a_18_in /* BUS */ (ts_local_pe_658_a1_in),
	.a_19_out /* BUS */ (ts_local_pe_659_a1_out),
	.a_19_oe /* BUS */ (ts_local_pe_659_a1_oe),
	.a_19_in /* BUS */ (ts_local_pe_659_a1_in),
	.a_20_out /* BUS */ (ts_local_pe_660_a1_out),
	.a_20_oe /* BUS */ (ts_local_pe_660_a1_oe),
	.a_20_in /* BUS */ (ts_local_pe_660_a1_in),
	.a_21_out /* BUS */ (ts_local_pe_661_a1_out),
	.a_21_oe /* BUS */ (ts_local_pe_661_a1_oe),
	.a_21_in /* BUS */ (ts_local_pe_661_a1_in),
	.a_22_out /* BUS */ (ts_local_pe_662_a1_out),
	.a_22_oe /* BUS */ (ts_local_pe_662_a1_oe),
	.a_22_in /* BUS */ (ts_local_pe_662_a1_in),
	.a_23_out /* BUS */ (ts_local_pe_663_a1_out),
	.a_23_oe /* BUS */ (ts_local_pe_663_a1_oe),
	.a_23_in /* BUS */ (ts_local_pe_663_a1_in),
	.dr_0_out /* BUS */ (ts_local_pe_670_a3_out),
	.dr_0_oe /* BUS */ (ts_local_pe_670_a3_oe),
	.dr_0_in /* BUS */ (ts_local_pe_670_a3_in),
	.dr_1_out /* BUS */ (ts_local_pe_671_a3_out),
	.dr_1_oe /* BUS */ (ts_local_pe_671_a3_oe),
	.dr_1_in /* BUS */ (ts_local_pe_671_a3_in),
	.dr_2_out /* BUS */ (ts_local_pe_672_a3_out),
	.dr_2_oe /* BUS */ (ts_local_pe_672_a3_oe),
	.dr_2_in /* BUS */ (ts_local_pe_672_a3_in),
	.dr_3_out /* BUS */ (ts_local_pe_673_a3_out),
	.dr_3_oe /* BUS */ (ts_local_pe_673_a3_oe),
	.dr_3_in /* BUS */ (ts_local_pe_673_a3_in),
	.dr_4_out /* BUS */ (ts_local_pe_674_a3_out),
	.dr_4_oe /* BUS */ (ts_local_pe_674_a3_oe),
	.dr_4_in /* BUS */ (ts_local_pe_674_a3_in),
	.dr_5_out /* BUS */ (ts_local_pe_675_a3_out),
	.dr_5_oe /* BUS */ (ts_local_pe_675_a3_oe),
	.dr_5_in /* BUS */ (ts_local_pe_675_a3_in),
	.dr_6_out /* BUS */ (ts_local_pe_676_a3_out),
	.dr_6_oe /* BUS */ (ts_local_pe_676_a3_oe),
	.dr_6_in /* BUS */ (ts_local_pe_676_a3_in),
	.dr_7_out /* BUS */ (ts_local_pe_677_a3_out),
	.dr_7_oe /* BUS */ (ts_local_pe_677_a3_oe),
	.dr_7_in /* BUS */ (ts_local_pe_677_a3_in),
	.dr_8_out /* BUS */ (ts_local_pe_678_a3_out),
	.dr_8_oe /* BUS */ (ts_local_pe_678_a3_oe),
	.dr_8_in /* BUS */ (ts_local_pe_678_a3_in),
	.dr_9_out /* BUS */ (ts_local_pe_679_a2_out),
	.dr_9_oe /* BUS */ (ts_local_pe_679_a2_oe),
	.dr_9_in /* BUS */ (ts_local_pe_679_a2_in),
	.dr_10_out /* BUS */ (ts_local_pe_680_a2_out),
	.dr_10_oe /* BUS */ (ts_local_pe_680_a2_oe),
	.dr_10_in /* BUS */ (ts_local_pe_680_a2_in),
	.dr_11_out /* BUS */ (ts_local_pe_681_a2_out),
	.dr_11_oe /* BUS */ (ts_local_pe_681_a2_oe),
	.dr_11_in /* BUS */ (ts_local_pe_681_a2_in),
	.dr_12_out /* BUS */ (ts_local_pe_682_a2_out),
	.dr_12_oe /* BUS */ (ts_local_pe_682_a2_oe),
	.dr_12_in /* BUS */ (ts_local_pe_682_a2_in),
	.dr_13_out /* BUS */ (ts_local_pe_683_a2_out),
	.dr_13_oe /* BUS */ (ts_local_pe_683_a2_oe),
	.dr_13_in /* BUS */ (ts_local_pe_683_a2_in),
	.dr_14_out /* BUS */ (ts_local_pe_684_a2_out),
	.dr_14_oe /* BUS */ (ts_local_pe_684_a2_oe),
	.dr_14_in /* BUS */ (ts_local_pe_684_a2_in),
	.dr_15_out /* BUS */ (ts_local_pe_685_a2_out),
	.dr_15_oe /* BUS */ (ts_local_pe_685_a2_oe),
	.dr_15_in /* BUS */ (ts_local_pe_685_a2_in),
	.sys_clk(sys_clk) // Generated
);

// TOM.NET (386) - mem : mem
mem mem_inst
(
	.bbreq_0 /* IN */ (bbreq_0_obuf),
	.bbreq_1 /* IN */ (bbreq_1_obuf),
	.gbreq_0 /* IN */ (gbreq_0_obuf),
	.gbreq_1 /* IN */ (gbreq_1_obuf),
	.obbreq /* IN */ (obbreq_obuf),
	.sizin_0 /* IN */ (sizin_0),
	.sizin_1 /* IN */ (sizin_1),
	.dbrl_0 /* IN */ (dbrl_0),
	.dbrl_1 /* IN */ (dbrl_1),
	.dreqin /* IN */ (dreqin),
	.rwin /* IN */ (rwin),
	.bs_0 /* IN */ (bs_0),
	.bs_1 /* IN */ (bs_1),
	.bs_2 /* IN */ (bs_2),
	.bs_3 /* IN */ (bs_3),
	.match /* IN */ (match),
	.intdev /* IN */ (intdev),
	.dram /* IN */ (dram_obuf),
	.fextdev /* IN */ (fextdev),
	.fintdev /* IN */ (fintdev),
	.fdram /* IN */ (fdram),
	.from /* IN */ (from),
	.cpu32 /* IN */ (cpu32),
	.refreq /* IN */ (refreq_obuf),
	.dspd_0 /* IN */ (dspd_0),
	.dspd_1 /* IN */ (dspd_1),
	.romspd_0 /* IN */ (romspd_0),
	.romspd_1 /* IN */ (romspd_1),
	.iospd_0 /* IN */ (iospd_0),
	.iospd_1 /* IN */ (iospd_1),
	.a_0 /* IN */ (a_0_in),
	.a_1 /* IN */ (a_1_in),
	.a_2 /* IN */ (a_2_in),
	.mw_0 /* IN */ (mw_0),
	.mw_1 /* IN */ (mw_1),
	.ourack /* IN */ (ourack),
	.resetl /* IN */ (resetl),
	.clk /* IN */ (clk_3),
	.vcc /* IN */ (vcc),
	.gnd /* IN */ (gnd),
	.bglin /* IN */ (bglin),
	.brlin /* IN */ (brlin),
	.ihandler /* IN */ (ihandler),
	.bigend /* IN */ (bigend),
	.bgain /* IN */ (bgain),
	.abs_2 /* IN */ (abs_2),
	.abs_3 /* IN */ (abs_3),
	.testen /* IN */ (testen),
	.waitl /* IN */ (waitl),
	.fastrom /* IN */ (fastrom),
	.m68k /* IN */ (m68k),
	.pclk /* IN */ (pclk),
	.ack /* OUT */ (ack),
	.bback /* OUT */ (bback),
	.gback /* OUT */ (gback),
	.obback /* OUT */ (obback),
	.romcsl_0 /* OUT */ (romcsl_0),
	.romcsl_1 /* OUT */ (romcsl_1),
	.rasl_0 /* OUT */ (rasl_0),
	.rasl_1 /* OUT */ (rasl_1),
	.casl_0 /* OUT */ (casl_0),
	.casl_1 /* OUT */ (casl_1),
	.oel_0 /* OUT */ (oel_0),
	.oel_1 /* OUT */ (oel_1),
	.oel_2 /* OUT */ (oel_2),
	.wel_0 /* OUT */ (wel_0),
	.wel_1 /* OUT */ (wel_1),
	.wel_2 /* OUT */ (wel_2),
	.wel_3 /* OUT */ (wel_3),
	.wel_4 /* OUT */ (wel_4),
	.wel_5 /* OUT */ (wel_5),
	.wel_6 /* OUT */ (wel_6),
	.wel_7 /* OUT */ (wel_7),
	.sizout_0 /* OUT */ (sizout_0),
	.sizout_1 /* OUT */ (sizout_1),
	.sizout_2 /* OUT */ (sizout_2),
	.den_0 /* OUT */ (den_0_obuf),
	.den_1 /* OUT */ (den_1_obuf),
	.den_2 /* OUT */ (den_2_obuf),
	.aen /* OUT */ (aen_obuf),
	.dtackl /* OUT */ (dtackl),
	.brlout /* OUT */ (brlout),
	.dbgl /* OUT */ (dbgl),
	.dreqlout /* OUT */ (dreqlout),
	.d7a /* OUT */ (d7a),
	.readt /* OUT */ (readt),
	.dinlatch_0 /* OUT */ (dinlatch_0),
	.dinlatch_1 /* OUT */ (dinlatch_1),
	.dinlatch_2 /* OUT */ (dinlatch_2),
	.dinlatch_3 /* OUT */ (dinlatch_3),
	.dinlatch_4 /* OUT */ (dinlatch_4),
	.dinlatch_5 /* OUT */ (dinlatch_5),
	.dinlatch_6 /* OUT */ (dinlatch_6),
	.dinlatch_7 /* OUT */ (dinlatch_7),
	.dmuxu_0 /* OUT */ (dmuxu_0),
	.dmuxu_1 /* OUT */ (dmuxu_1),
	.dmuxu_2 /* OUT */ (dmuxu_2),
	.dmuxd_0 /* OUT */ (dmuxd_0),
	.dmuxd_1 /* OUT */ (dmuxd_1),
	.dmuxd_2 /* OUT */ (dmuxd_2),
	.dren /* OUT */ (dren),
	.xdsrc /* OUT */ (xdsrc),
	.maska_0 /* OUT */ (maska_0),
	.maska_1 /* OUT */ (maska_1),
	.maska_2 /* OUT */ (maska_2),
	.at_0 /* OUT */ (at_0),
	.at_1 /* OUT */ (at_1),
	.at_2 /* OUT */ (at_2),
	.ainen /* OUT */ (ainen),
	.newrow /* OUT */ (newrow),
	.resrow /* OUT */ (resrow),
	.mux /* OUT */ (mux),
	.refack /* OUT */ (refack),
	.reads /* OUT */ (reads),
	.wet /* OUT */ (wet),
	.oet /* OUT */ (oet),
	.ba /* OUT */ (ba),
	.intswe /* OUT */ (intswe),
	.intwe /* OUT */ (intwe),
	.dspcsl /* OUT */ (dspcsl),
	.w_0_out /* BUS */ (ts_local_pe_664_a1_out),
	.w_0_oe /* BUS */ (ts_local_pe_664_a1_oe),
	.w_0_in /* BUS */ (ts_local_pe_664_a1_in),
	.w_1_out /* BUS */ (ts_local_pe_665_a1_out),
	.w_1_oe /* BUS */ (ts_local_pe_665_a1_oe),
	.w_1_in /* BUS */ (ts_local_pe_665_a1_in),
	.w_2_out /* BUS */ (ts_local_pe_666_a1_out),
	.w_2_oe /* BUS */ (ts_local_pe_666_a1_oe),
	.w_2_in /* BUS */ (ts_local_pe_666_a1_in),
	.w_3_out /* BUS */ (ts_local_pe_667_a1_out),
	.w_3_oe /* BUS */ (ts_local_pe_667_a1_oe),
	.w_3_in /* BUS */ (ts_local_pe_667_a1_in),
	.rw_out /* BUS */ (ts_local_pe_668_a1_out),
	.rw_oe /* BUS */ (ts_local_pe_668_a1_oe),
	.rw_in /* BUS */ (ts_local_pe_668_a1_in),
	.mreq_out /* BUS */ (ts_local_pe_669_a1_out),
	.mreq_oe /* BUS */ (ts_local_pe_669_a1_oe),
	.mreq_in /* BUS */ (ts_local_pe_669_a1_in),
	.justify_out /* BUS */ (ts_local_pe_686_a1_out),
	.justify_oe /* BUS */ (ts_local_pe_686_a1_oe),
	.justify_in /* BUS */ (ts_local_pe_686_a1_in),
	.tlw /* IN */ (tlw),
	.ram_rdy /* IN */ (ram_rdy),
	.sys_clk(sys_clk) // Generated
);

// TOM.NET (412) - ob : ob
ob ob_inst
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
	.olp1w /* IN */ (olp1w),
	.olp2w /* IN */ (olp2w),
	.obfw /* IN */ (obfw),
	.ob0r /* IN */ (ob0r),
	.ob1r /* IN */ (ob1r),
	.ob2r /* IN */ (ob2r),
	.ob3r /* IN */ (ob3r),
	.start /* IN */ (start),
	.newdata_0 /* IN */ (newdata_0),
	.newdata_1 /* IN */ (newdata_1),
	.newdata_2 /* IN */ (newdata_2),
	.newdata_3 /* IN */ (newdata_3),
	.newdata_4 /* IN */ (newdata_4),
	.newdata_5 /* IN */ (newdata_5),
	.newdata_6 /* IN */ (newdata_6),
	.newdata_7 /* IN */ (newdata_7),
	.newdata_8 /* IN */ (newdata_8),
	.newdata_9 /* IN */ (newdata_9),
	.newdata_10 /* IN */ (newdata_10),
	.newdata_11 /* IN */ (newdata_11),
	.newdata_12 /* IN */ (newdata_12),
	.newdata_13 /* IN */ (newdata_13),
	.newdata_14 /* IN */ (newdata_14),
	.newdata_15 /* IN */ (newdata_15),
	.newdata_16 /* IN */ (newdata_16),
	.newdata_17 /* IN */ (newdata_17),
	.newdata_18 /* IN */ (newdata_18),
	.newdata_19 /* IN */ (newdata_19),
	.newdata_20 /* IN */ (newdata_20),
	.newheight_0 /* IN */ (newheight_0),
	.newheight_1 /* IN */ (newheight_1),
	.newheight_2 /* IN */ (newheight_2),
	.newheight_3 /* IN */ (newheight_3),
	.newheight_4 /* IN */ (newheight_4),
	.newheight_5 /* IN */ (newheight_5),
	.newheight_6 /* IN */ (newheight_6),
	.newheight_7 /* IN */ (newheight_7),
	.newheight_8 /* IN */ (newheight_8),
	.newheight_9 /* IN */ (newheight_9),
	.newrem_0 /* IN */ (newrem_0),
	.newrem_1 /* IN */ (newrem_1),
	.newrem_2 /* IN */ (newrem_2),
	.newrem_3 /* IN */ (newrem_3),
	.newrem_4 /* IN */ (newrem_4),
	.newrem_5 /* IN */ (newrem_5),
	.newrem_6 /* IN */ (newrem_6),
	.newrem_7 /* IN */ (newrem_7),
	.obdready /* IN */ (obdready),
	.offscreen /* IN */ (offscreen),
	.refack /* IN */ (refack),
	.obback /* IN */ (obback),
	.mack /* IN */ (ack),
	.clk /* IN */ (clk_4),
	.resetl /* IN */ (resetl),
	.vcc /* IN */ (vcc),
	.gnd /* IN */ (gnd),
	.vc_0 /* IN */ (vc_0),
	.vc_1 /* IN */ (vc_1),
	.vc_2 /* IN */ (vc_2),
	.vc_3 /* IN */ (vc_3),
	.vc_4 /* IN */ (vc_4),
	.vc_5 /* IN */ (vc_5),
	.vc_6 /* IN */ (vc_6),
	.vc_7 /* IN */ (vc_7),
	.vc_8 /* IN */ (vc_8),
	.vc_9 /* IN */ (vc_9),
	.vc_10 /* IN */ (vc_10),
	.wbkdone /* IN */ (wbkdone),
	.obdone /* IN */ (obdone),
	.heightnz /* IN */ (heightnz),
	.d_0 /* IN */ (d_0),
	.d_1 /* IN */ (d_1),
	.d_2 /* IN */ (d_2),
	.d_3 /* IN */ (d_3),
	.d_4 /* IN */ (d_4),
	.d_5 /* IN */ (d_5),
	.d_6 /* IN */ (d_6),
	.d_7 /* IN */ (d_7),
	.d_8 /* IN */ (d_8),
	.d_9 /* IN */ (d_9),
	.d_10 /* IN */ (d_10),
	.d_11 /* IN */ (d_11),
	.d_12 /* IN */ (d_12),
	.d_13 /* IN */ (d_13),
	.d_14 /* IN */ (d_14),
	.d_15 /* IN */ (d_15),
	.d_16 /* IN */ (d_16),
	.d_17 /* IN */ (d_17),
	.d_18 /* IN */ (d_18),
	.d_19 /* IN */ (d_19),
	.d_20 /* IN */ (d_20),
	.d_21 /* IN */ (d_21),
	.d_22 /* IN */ (d_22),
	.d_23 /* IN */ (d_23),
	.d_24 /* IN */ (d_24),
	.d_25 /* IN */ (d_25),
	.d_26 /* IN */ (d_26),
	.d_27 /* IN */ (d_27),
	.d_28 /* IN */ (d_28),
	.d_29 /* IN */ (d_29),
	.d_30 /* IN */ (d_30),
	.d_31 /* IN */ (d_31),
	.d_32 /* IN */ (d_32),
	.d_33 /* IN */ (d_33),
	.d_34 /* IN */ (d_34),
	.d_35 /* IN */ (d_35),
	.d_36 /* IN */ (d_36),
	.d_37 /* IN */ (d_37),
	.d_38 /* IN */ (d_38),
	.d_39 /* IN */ (d_39),
	.d_40 /* IN */ (d_40),
	.d_41 /* IN */ (d_41),
	.d_42 /* IN */ (d_42),
	.d_43 /* IN */ (d_43),
	.d_44 /* IN */ (d_44),
	.d_45 /* IN */ (d_45),
	.d_46 /* IN */ (d_46),
	.d_47 /* IN */ (d_47),
	.d_48 /* IN */ (d_48),
	.d_49 /* IN */ (d_49),
	.d_50 /* IN */ (d_50),
	.d_51 /* IN */ (d_51),
	.d_52 /* IN */ (d_52),
	.d_53 /* IN */ (d_53),
	.d_54 /* IN */ (d_54),
	.d_55 /* IN */ (d_55),
	.d_56 /* IN */ (d_56),
	.d_57 /* IN */ (d_57),
	.d_58 /* IN */ (d_58),
	.d_59 /* IN */ (d_59),
	.d_60 /* IN */ (d_60),
	.d_61 /* IN */ (d_61),
	.d_62 /* IN */ (d_62),
	.d_63 /* IN */ (d_63),
	.blback /* IN */ (bback),
	.grpback /* IN */ (gback),
	.wet /* IN */ (wet),
	.hcb_10 /* IN */ (hcb_10),
	.scaled /* OUT */ (scaled),
	.obdlatch /* OUT */ (obdlatch),
	.mode1 /* OUT */ (mode1),
	.mode2 /* OUT */ (mode2),
	.mode4 /* OUT */ (mode4),
	.mode8 /* OUT */ (mode8),
	.mode16 /* OUT */ (mode16),
	.mode24 /* OUT */ (mode24),
	.rmw /* OUT */ (rmw),
	.index_1 /* OUT */ (index_1),
	.index_2 /* OUT */ (index_2),
	.index_3 /* OUT */ (index_3),
	.index_4 /* OUT */ (index_4),
	.index_5 /* OUT */ (index_5),
	.index_6 /* OUT */ (index_6),
	.index_7 /* OUT */ (index_7),
	.xld /* OUT */ (xld),
	.reflected /* OUT */ (reflected),
	.transen /* OUT */ (transen),
	.hscale_0 /* OUT */ (hscale_0),
	.hscale_1 /* OUT */ (hscale_1),
	.hscale_2 /* OUT */ (hscale_2),
	.hscale_3 /* OUT */ (hscale_3),
	.hscale_4 /* OUT */ (hscale_4),
	.hscale_5 /* OUT */ (hscale_5),
	.hscale_6 /* OUT */ (hscale_6),
	.hscale_7 /* OUT */ (hscale_7),
	.dwidth_0 /* OUT */ (dwidth_0),
	.dwidth_1 /* OUT */ (dwidth_1),
	.dwidth_2 /* OUT */ (dwidth_2),
	.dwidth_3 /* OUT */ (dwidth_3),
	.dwidth_4 /* OUT */ (dwidth_4),
	.dwidth_5 /* OUT */ (dwidth_5),
	.dwidth_6 /* OUT */ (dwidth_6),
	.dwidth_7 /* OUT */ (dwidth_7),
	.dwidth_8 /* OUT */ (dwidth_8),
	.dwidth_9 /* OUT */ (dwidth_9),
	.obbreq /* OUT */ (obbreq_obuf),
	.vscale_0 /* OUT */ (vscale_0),
	.vscale_1 /* OUT */ (vscale_1),
	.vscale_2 /* OUT */ (vscale_2),
	.vscale_3 /* OUT */ (vscale_3),
	.vscale_4 /* OUT */ (vscale_4),
	.vscale_5 /* OUT */ (vscale_5),
	.vscale_6 /* OUT */ (vscale_6),
	.vscale_7 /* OUT */ (vscale_7),
	.wbkstart /* OUT */ (wbkstart),
	.grpintreq /* OUT */ (grpintreq),
	.obint /* OUT */ (obint),
	.obld_0 /* OUT */ (obld_0),
	.obld_1 /* OUT */ (obld_1),
	.obld_2 /* OUT */ (obld_2),
	.startref /* OUT */ (startref),
	.vgy /* OUT */ (vgy),
	.vey /* OUT */ (vey),
	.vly /* OUT */ (vly),
	.wd_0_out /* BUS */ (ts_local_pe_576_a1_out),
	.wd_0_oe /* BUS */ (ts_local_pe_576_a1_oe),
	.wd_0_in /* BUS */ (ts_local_pe_576_a1_in),
	.wd_1_out /* BUS */ (ts_local_pe_577_a1_out),
	.wd_1_oe /* BUS */ (ts_local_pe_577_a1_oe),
	.wd_1_in /* BUS */ (ts_local_pe_577_a1_in),
	.wd_2_out /* BUS */ (ts_local_pe_578_a1_out),
	.wd_2_oe /* BUS */ (ts_local_pe_578_a1_oe),
	.wd_2_in /* BUS */ (ts_local_pe_578_a1_in),
	.wd_3_out /* BUS */ (ts_local_pe_579_a1_out),
	.wd_3_oe /* BUS */ (ts_local_pe_579_a1_oe),
	.wd_3_in /* BUS */ (ts_local_pe_579_a1_in),
	.wd_4_out /* BUS */ (ts_local_pe_580_a1_out),
	.wd_4_oe /* BUS */ (ts_local_pe_580_a1_oe),
	.wd_4_in /* BUS */ (ts_local_pe_580_a1_in),
	.wd_5_out /* BUS */ (ts_local_pe_581_a1_out),
	.wd_5_oe /* BUS */ (ts_local_pe_581_a1_oe),
	.wd_5_in /* BUS */ (ts_local_pe_581_a1_in),
	.wd_6_out /* BUS */ (ts_local_pe_582_a1_out),
	.wd_6_oe /* BUS */ (ts_local_pe_582_a1_oe),
	.wd_6_in /* BUS */ (ts_local_pe_582_a1_in),
	.wd_7_out /* BUS */ (ts_local_pe_583_a1_out),
	.wd_7_oe /* BUS */ (ts_local_pe_583_a1_oe),
	.wd_7_in /* BUS */ (ts_local_pe_583_a1_in),
	.wd_8_out /* BUS */ (ts_local_pe_584_a1_out),
	.wd_8_oe /* BUS */ (ts_local_pe_584_a1_oe),
	.wd_8_in /* BUS */ (ts_local_pe_584_a1_in),
	.wd_9_out /* BUS */ (ts_local_pe_585_a1_out),
	.wd_9_oe /* BUS */ (ts_local_pe_585_a1_oe),
	.wd_9_in /* BUS */ (ts_local_pe_585_a1_in),
	.wd_10_out /* BUS */ (ts_local_pe_586_a1_out),
	.wd_10_oe /* BUS */ (ts_local_pe_586_a1_oe),
	.wd_10_in /* BUS */ (ts_local_pe_586_a1_in),
	.wd_11_out /* BUS */ (ts_local_pe_587_a1_out),
	.wd_11_oe /* BUS */ (ts_local_pe_587_a1_oe),
	.wd_11_in /* BUS */ (ts_local_pe_587_a1_in),
	.wd_12_out /* BUS */ (ts_local_pe_588_a1_out),
	.wd_12_oe /* BUS */ (ts_local_pe_588_a1_oe),
	.wd_12_in /* BUS */ (ts_local_pe_588_a1_in),
	.wd_13_out /* BUS */ (ts_local_pe_589_a1_out),
	.wd_13_oe /* BUS */ (ts_local_pe_589_a1_oe),
	.wd_13_in /* BUS */ (ts_local_pe_589_a1_in),
	.wd_14_out /* BUS */ (ts_local_pe_590_a1_out),
	.wd_14_oe /* BUS */ (ts_local_pe_590_a1_oe),
	.wd_14_in /* BUS */ (ts_local_pe_590_a1_in),
	.wd_15_out /* BUS */ (ts_local_pe_591_a1_out),
	.wd_15_oe /* BUS */ (ts_local_pe_591_a1_oe),
	.wd_15_in /* BUS */ (ts_local_pe_591_a1_in),
	.wd_16_out /* BUS */ (ts_local_pe_592_a1_out),
	.wd_16_oe /* BUS */ (ts_local_pe_592_a1_oe),
	.wd_16_in /* BUS */ (ts_local_pe_592_a1_in),
	.wd_17_out /* BUS */ (ts_local_pe_593_a1_out),
	.wd_17_oe /* BUS */ (ts_local_pe_593_a1_oe),
	.wd_17_in /* BUS */ (ts_local_pe_593_a1_in),
	.wd_18_out /* BUS */ (ts_local_pe_594_a1_out),
	.wd_18_oe /* BUS */ (ts_local_pe_594_a1_oe),
	.wd_18_in /* BUS */ (ts_local_pe_594_a1_in),
	.wd_19_out /* BUS */ (ts_local_pe_595_a1_out),
	.wd_19_oe /* BUS */ (ts_local_pe_595_a1_oe),
	.wd_19_in /* BUS */ (ts_local_pe_595_a1_in),
	.wd_20_out /* BUS */ (ts_local_pe_596_a1_out),
	.wd_20_oe /* BUS */ (ts_local_pe_596_a1_oe),
	.wd_20_in /* BUS */ (ts_local_pe_596_a1_in),
	.wd_21_out /* BUS */ (ts_local_pe_597_a1_out),
	.wd_21_oe /* BUS */ (ts_local_pe_597_a1_oe),
	.wd_21_in /* BUS */ (ts_local_pe_597_a1_in),
	.wd_22_out /* BUS */ (ts_local_pe_598_a1_out),
	.wd_22_oe /* BUS */ (ts_local_pe_598_a1_oe),
	.wd_22_in /* BUS */ (ts_local_pe_598_a1_in),
	.wd_23_out /* BUS */ (ts_local_pe_599_a1_out),
	.wd_23_oe /* BUS */ (ts_local_pe_599_a1_oe),
	.wd_23_in /* BUS */ (ts_local_pe_599_a1_in),
	.wd_24_out /* BUS */ (ts_local_pe_600_a1_out),
	.wd_24_oe /* BUS */ (ts_local_pe_600_a1_oe),
	.wd_24_in /* BUS */ (ts_local_pe_600_a1_in),
	.wd_25_out /* BUS */ (ts_local_pe_601_a1_out),
	.wd_25_oe /* BUS */ (ts_local_pe_601_a1_oe),
	.wd_25_in /* BUS */ (ts_local_pe_601_a1_in),
	.wd_26_out /* BUS */ (ts_local_pe_602_a1_out),
	.wd_26_oe /* BUS */ (ts_local_pe_602_a1_oe),
	.wd_26_in /* BUS */ (ts_local_pe_602_a1_in),
	.wd_27_out /* BUS */ (ts_local_pe_603_a1_out),
	.wd_27_oe /* BUS */ (ts_local_pe_603_a1_oe),
	.wd_27_in /* BUS */ (ts_local_pe_603_a1_in),
	.wd_28_out /* BUS */ (ts_local_pe_604_a1_out),
	.wd_28_oe /* BUS */ (ts_local_pe_604_a1_oe),
	.wd_28_in /* BUS */ (ts_local_pe_604_a1_in),
	.wd_29_out /* BUS */ (ts_local_pe_605_a1_out),
	.wd_29_oe /* BUS */ (ts_local_pe_605_a1_oe),
	.wd_29_in /* BUS */ (ts_local_pe_605_a1_in),
	.wd_30_out /* BUS */ (ts_local_pe_606_a1_out),
	.wd_30_oe /* BUS */ (ts_local_pe_606_a1_oe),
	.wd_30_in /* BUS */ (ts_local_pe_606_a1_in),
	.wd_31_out /* BUS */ (ts_local_pe_607_a1_out),
	.wd_31_oe /* BUS */ (ts_local_pe_607_a1_oe),
	.wd_31_in /* BUS */ (ts_local_pe_607_a1_in),
	.wd_32_out /* BUS */ (ts_local_pe_608_a1_out),
	.wd_32_oe /* BUS */ (ts_local_pe_608_a1_oe),
	.wd_32_in /* BUS */ (ts_local_pe_608_a1_in),
	.wd_33_out /* BUS */ (ts_local_pe_609_a1_out),
	.wd_33_oe /* BUS */ (ts_local_pe_609_a1_oe),
	.wd_33_in /* BUS */ (ts_local_pe_609_a1_in),
	.wd_34_out /* BUS */ (ts_local_pe_610_a1_out),
	.wd_34_oe /* BUS */ (ts_local_pe_610_a1_oe),
	.wd_34_in /* BUS */ (ts_local_pe_610_a1_in),
	.wd_35_out /* BUS */ (ts_local_pe_611_a1_out),
	.wd_35_oe /* BUS */ (ts_local_pe_611_a1_oe),
	.wd_35_in /* BUS */ (ts_local_pe_611_a1_in),
	.wd_36_out /* BUS */ (ts_local_pe_612_a1_out),
	.wd_36_oe /* BUS */ (ts_local_pe_612_a1_oe),
	.wd_36_in /* BUS */ (ts_local_pe_612_a1_in),
	.wd_37_out /* BUS */ (ts_local_pe_613_a1_out),
	.wd_37_oe /* BUS */ (ts_local_pe_613_a1_oe),
	.wd_37_in /* BUS */ (ts_local_pe_613_a1_in),
	.wd_38_out /* BUS */ (ts_local_pe_614_a1_out),
	.wd_38_oe /* BUS */ (ts_local_pe_614_a1_oe),
	.wd_38_in /* BUS */ (ts_local_pe_614_a1_in),
	.wd_39_out /* BUS */ (ts_local_pe_615_a1_out),
	.wd_39_oe /* BUS */ (ts_local_pe_615_a1_oe),
	.wd_39_in /* BUS */ (ts_local_pe_615_a1_in),
	.wd_40_out /* BUS */ (ts_local_pe_616_a1_out),
	.wd_40_oe /* BUS */ (ts_local_pe_616_a1_oe),
	.wd_40_in /* BUS */ (ts_local_pe_616_a1_in),
	.wd_41_out /* BUS */ (ts_local_pe_617_a1_out),
	.wd_41_oe /* BUS */ (ts_local_pe_617_a1_oe),
	.wd_41_in /* BUS */ (ts_local_pe_617_a1_in),
	.wd_42_out /* BUS */ (ts_local_pe_618_a1_out),
	.wd_42_oe /* BUS */ (ts_local_pe_618_a1_oe),
	.wd_42_in /* BUS */ (ts_local_pe_618_a1_in),
	.wd_43_out /* BUS */ (ts_local_pe_619_a1_out),
	.wd_43_oe /* BUS */ (ts_local_pe_619_a1_oe),
	.wd_43_in /* BUS */ (ts_local_pe_619_a1_in),
	.wd_44_out /* BUS */ (ts_local_pe_620_a1_out),
	.wd_44_oe /* BUS */ (ts_local_pe_620_a1_oe),
	.wd_44_in /* BUS */ (ts_local_pe_620_a1_in),
	.wd_45_out /* BUS */ (ts_local_pe_621_a1_out),
	.wd_45_oe /* BUS */ (ts_local_pe_621_a1_oe),
	.wd_45_in /* BUS */ (ts_local_pe_621_a1_in),
	.wd_46_out /* BUS */ (ts_local_pe_622_a1_out),
	.wd_46_oe /* BUS */ (ts_local_pe_622_a1_oe),
	.wd_46_in /* BUS */ (ts_local_pe_622_a1_in),
	.wd_47_out /* BUS */ (ts_local_pe_623_a1_out),
	.wd_47_oe /* BUS */ (ts_local_pe_623_a1_oe),
	.wd_47_in /* BUS */ (ts_local_pe_623_a1_in),
	.wd_48_out /* BUS */ (ts_local_pe_624_a1_out),
	.wd_48_oe /* BUS */ (ts_local_pe_624_a1_oe),
	.wd_48_in /* BUS */ (ts_local_pe_624_a1_in),
	.wd_49_out /* BUS */ (ts_local_pe_625_a1_out),
	.wd_49_oe /* BUS */ (ts_local_pe_625_a1_oe),
	.wd_49_in /* BUS */ (ts_local_pe_625_a1_in),
	.wd_50_out /* BUS */ (ts_local_pe_626_a1_out),
	.wd_50_oe /* BUS */ (ts_local_pe_626_a1_oe),
	.wd_50_in /* BUS */ (ts_local_pe_626_a1_in),
	.wd_51_out /* BUS */ (ts_local_pe_627_a1_out),
	.wd_51_oe /* BUS */ (ts_local_pe_627_a1_oe),
	.wd_51_in /* BUS */ (ts_local_pe_627_a1_in),
	.wd_52_out /* BUS */ (ts_local_pe_628_a1_out),
	.wd_52_oe /* BUS */ (ts_local_pe_628_a1_oe),
	.wd_52_in /* BUS */ (ts_local_pe_628_a1_in),
	.wd_53_out /* BUS */ (ts_local_pe_629_a1_out),
	.wd_53_oe /* BUS */ (ts_local_pe_629_a1_oe),
	.wd_53_in /* BUS */ (ts_local_pe_629_a1_in),
	.wd_54_out /* BUS */ (ts_local_pe_630_a1_out),
	.wd_54_oe /* BUS */ (ts_local_pe_630_a1_oe),
	.wd_54_in /* BUS */ (ts_local_pe_630_a1_in),
	.wd_55_out /* BUS */ (ts_local_pe_631_a1_out),
	.wd_55_oe /* BUS */ (ts_local_pe_631_a1_oe),
	.wd_55_in /* BUS */ (ts_local_pe_631_a1_in),
	.wd_56_out /* BUS */ (ts_local_pe_632_a1_out),
	.wd_56_oe /* BUS */ (ts_local_pe_632_a1_oe),
	.wd_56_in /* BUS */ (ts_local_pe_632_a1_in),
	.wd_57_out /* BUS */ (ts_local_pe_633_a1_out),
	.wd_57_oe /* BUS */ (ts_local_pe_633_a1_oe),
	.wd_57_in /* BUS */ (ts_local_pe_633_a1_in),
	.wd_58_out /* BUS */ (ts_local_pe_634_a1_out),
	.wd_58_oe /* BUS */ (ts_local_pe_634_a1_oe),
	.wd_58_in /* BUS */ (ts_local_pe_634_a1_in),
	.wd_59_out /* BUS */ (ts_local_pe_635_a1_out),
	.wd_59_oe /* BUS */ (ts_local_pe_635_a1_oe),
	.wd_59_in /* BUS */ (ts_local_pe_635_a1_in),
	.wd_60_out /* BUS */ (ts_local_pe_636_a1_out),
	.wd_60_oe /* BUS */ (ts_local_pe_636_a1_oe),
	.wd_60_in /* BUS */ (ts_local_pe_636_a1_in),
	.wd_61_out /* BUS */ (ts_local_pe_637_a1_out),
	.wd_61_oe /* BUS */ (ts_local_pe_637_a1_oe),
	.wd_61_in /* BUS */ (ts_local_pe_637_a1_in),
	.wd_62_out /* BUS */ (ts_local_pe_638_a1_out),
	.wd_62_oe /* BUS */ (ts_local_pe_638_a1_oe),
	.wd_62_in /* BUS */ (ts_local_pe_638_a1_in),
	.wd_63_out /* BUS */ (ts_local_pe_639_a1_out),
	.wd_63_oe /* BUS */ (ts_local_pe_639_a1_oe),
	.wd_63_in /* BUS */ (ts_local_pe_639_a1_in),
	.a_0_out /* BUS */ (ts_local_pe_640_a2_out),
	.a_0_oe /* BUS */ (ts_local_pe_640_a2_oe),
	.a_0_in /* BUS */ (ts_local_pe_640_a2_in),
	.a_1_out /* BUS */ (ts_local_pe_641_a2_out),
	.a_1_oe /* BUS */ (ts_local_pe_641_a2_oe),
	.a_1_in /* BUS */ (ts_local_pe_641_a2_in),
	.a_2_out /* BUS */ (ts_local_pe_642_a2_out),
	.a_2_oe /* BUS */ (ts_local_pe_642_a2_oe),
	.a_2_in /* BUS */ (ts_local_pe_642_a2_in),
	.a_3_out /* BUS */ (ts_local_pe_643_a2_out),
	.a_3_oe /* BUS */ (ts_local_pe_643_a2_oe),
	.a_3_in /* BUS */ (ts_local_pe_643_a2_in),
	.a_4_out /* BUS */ (ts_local_pe_644_a2_out),
	.a_4_oe /* BUS */ (ts_local_pe_644_a2_oe),
	.a_4_in /* BUS */ (ts_local_pe_644_a2_in),
	.a_5_out /* BUS */ (ts_local_pe_645_a2_out),
	.a_5_oe /* BUS */ (ts_local_pe_645_a2_oe),
	.a_5_in /* BUS */ (ts_local_pe_645_a2_in),
	.a_6_out /* BUS */ (ts_local_pe_646_a2_out),
	.a_6_oe /* BUS */ (ts_local_pe_646_a2_oe),
	.a_6_in /* BUS */ (ts_local_pe_646_a2_in),
	.a_7_out /* BUS */ (ts_local_pe_647_a2_out),
	.a_7_oe /* BUS */ (ts_local_pe_647_a2_oe),
	.a_7_in /* BUS */ (ts_local_pe_647_a2_in),
	.a_8_out /* BUS */ (ts_local_pe_648_a2_out),
	.a_8_oe /* BUS */ (ts_local_pe_648_a2_oe),
	.a_8_in /* BUS */ (ts_local_pe_648_a2_in),
	.a_9_out /* BUS */ (ts_local_pe_649_a2_out),
	.a_9_oe /* BUS */ (ts_local_pe_649_a2_oe),
	.a_9_in /* BUS */ (ts_local_pe_649_a2_in),
	.a_10_out /* BUS */ (ts_local_pe_650_a2_out),
	.a_10_oe /* BUS */ (ts_local_pe_650_a2_oe),
	.a_10_in /* BUS */ (ts_local_pe_650_a2_in),
	.a_11_out /* BUS */ (ts_local_pe_651_a2_out),
	.a_11_oe /* BUS */ (ts_local_pe_651_a2_oe),
	.a_11_in /* BUS */ (ts_local_pe_651_a2_in),
	.a_12_out /* BUS */ (ts_local_pe_652_a2_out),
	.a_12_oe /* BUS */ (ts_local_pe_652_a2_oe),
	.a_12_in /* BUS */ (ts_local_pe_652_a2_in),
	.a_13_out /* BUS */ (ts_local_pe_653_a2_out),
	.a_13_oe /* BUS */ (ts_local_pe_653_a2_oe),
	.a_13_in /* BUS */ (ts_local_pe_653_a2_in),
	.a_14_out /* BUS */ (ts_local_pe_654_a2_out),
	.a_14_oe /* BUS */ (ts_local_pe_654_a2_oe),
	.a_14_in /* BUS */ (ts_local_pe_654_a2_in),
	.a_15_out /* BUS */ (ts_local_pe_655_a2_out),
	.a_15_oe /* BUS */ (ts_local_pe_655_a2_oe),
	.a_15_in /* BUS */ (ts_local_pe_655_a2_in),
	.a_16_out /* BUS */ (ts_local_pe_656_a2_out),
	.a_16_oe /* BUS */ (ts_local_pe_656_a2_oe),
	.a_16_in /* BUS */ (ts_local_pe_656_a2_in),
	.a_17_out /* BUS */ (ts_local_pe_657_a2_out),
	.a_17_oe /* BUS */ (ts_local_pe_657_a2_oe),
	.a_17_in /* BUS */ (ts_local_pe_657_a2_in),
	.a_18_out /* BUS */ (ts_local_pe_658_a2_out),
	.a_18_oe /* BUS */ (ts_local_pe_658_a2_oe),
	.a_18_in /* BUS */ (ts_local_pe_658_a2_in),
	.a_19_out /* BUS */ (ts_local_pe_659_a2_out),
	.a_19_oe /* BUS */ (ts_local_pe_659_a2_oe),
	.a_19_in /* BUS */ (ts_local_pe_659_a2_in),
	.a_20_out /* BUS */ (ts_local_pe_660_a2_out),
	.a_20_oe /* BUS */ (ts_local_pe_660_a2_oe),
	.a_20_in /* BUS */ (ts_local_pe_660_a2_in),
	.a_21_out /* BUS */ (ts_local_pe_661_a2_out),
	.a_21_oe /* BUS */ (ts_local_pe_661_a2_oe),
	.a_21_in /* BUS */ (ts_local_pe_661_a2_in),
	.a_22_out /* BUS */ (ts_local_pe_662_a2_out),
	.a_22_oe /* BUS */ (ts_local_pe_662_a2_oe),
	.a_22_in /* BUS */ (ts_local_pe_662_a2_in),
	.a_23_out /* BUS */ (ts_local_pe_663_a2_out),
	.a_23_oe /* BUS */ (ts_local_pe_663_a2_oe),
	.a_23_in /* BUS */ (ts_local_pe_663_a2_in),
	.w_0_out /* BUS */ (ts_local_pe_664_a2_out),
	.w_0_oe /* BUS */ (ts_local_pe_664_a2_oe),
	.w_0_in /* BUS */ (ts_local_pe_664_a2_in),
	.w_1_out /* BUS */ (ts_local_pe_665_a2_out),
	.w_1_oe /* BUS */ (ts_local_pe_665_a2_oe),
	.w_1_in /* BUS */ (ts_local_pe_665_a2_in),
	.w_2_out /* BUS */ (ts_local_pe_666_a2_out),
	.w_2_oe /* BUS */ (ts_local_pe_666_a2_oe),
	.w_2_in /* BUS */ (ts_local_pe_666_a2_in),
	.w_3_out /* BUS */ (ts_local_pe_667_a2_out),
	.w_3_oe /* BUS */ (ts_local_pe_667_a2_oe),
	.w_3_in /* BUS */ (ts_local_pe_667_a2_in),
	.rw_out /* BUS */ (ts_local_pe_668_a2_out),
	.rw_oe /* BUS */ (ts_local_pe_668_a2_oe),
	.rw_in /* BUS */ (ts_local_pe_668_a2_in),
	.mreq_out /* BUS */ (ts_local_pe_669_a2_out),
	.mreq_oe /* BUS */ (ts_local_pe_669_a2_oe),
	.mreq_in /* BUS */ (ts_local_pe_669_a2_in),
	.justify_out /* BUS */ (ts_local_pe_686_a2_out),
	.justify_oe /* BUS */ (ts_local_pe_686_a2_oe),
	.justify_in /* BUS */ (ts_local_pe_686_a2_in),
	.dr_0_out /* BUS */ (ts_local_pe_670_a4_out),
	.dr_0_oe /* BUS */ (ts_local_pe_670_a4_oe),
	.dr_0_in /* BUS */ (ts_local_pe_670_a4_in),
	.dr_1_out /* BUS */ (ts_local_pe_671_a4_out),
	.dr_1_oe /* BUS */ (ts_local_pe_671_a4_oe),
	.dr_1_in /* BUS */ (ts_local_pe_671_a4_in),
	.dr_2_out /* BUS */ (ts_local_pe_672_a4_out),
	.dr_2_oe /* BUS */ (ts_local_pe_672_a4_oe),
	.dr_2_in /* BUS */ (ts_local_pe_672_a4_in),
	.dr_3_out /* BUS */ (ts_local_pe_673_a4_out),
	.dr_3_oe /* BUS */ (ts_local_pe_673_a4_oe),
	.dr_3_in /* BUS */ (ts_local_pe_673_a4_in),
	.dr_4_out /* BUS */ (ts_local_pe_674_a4_out),
	.dr_4_oe /* BUS */ (ts_local_pe_674_a4_oe),
	.dr_4_in /* BUS */ (ts_local_pe_674_a4_in),
	.dr_5_out /* BUS */ (ts_local_pe_675_a4_out),
	.dr_5_oe /* BUS */ (ts_local_pe_675_a4_oe),
	.dr_5_in /* BUS */ (ts_local_pe_675_a4_in),
	.dr_6_out /* BUS */ (ts_local_pe_676_a4_out),
	.dr_6_oe /* BUS */ (ts_local_pe_676_a4_oe),
	.dr_6_in /* BUS */ (ts_local_pe_676_a4_in),
	.dr_7_out /* BUS */ (ts_local_pe_677_a4_out),
	.dr_7_oe /* BUS */ (ts_local_pe_677_a4_oe),
	.dr_7_in /* BUS */ (ts_local_pe_677_a4_in),
	.dr_8_out /* BUS */ (ts_local_pe_678_a4_out),
	.dr_8_oe /* BUS */ (ts_local_pe_678_a4_oe),
	.dr_8_in /* BUS */ (ts_local_pe_678_a4_in),
	.dr_9_out /* BUS */ (ts_local_pe_679_a3_out),
	.dr_9_oe /* BUS */ (ts_local_pe_679_a3_oe),
	.dr_9_in /* BUS */ (ts_local_pe_679_a3_in),
	.dr_10_out /* BUS */ (ts_local_pe_680_a3_out),
	.dr_10_oe /* BUS */ (ts_local_pe_680_a3_oe),
	.dr_10_in /* BUS */ (ts_local_pe_680_a3_in),
	.dr_11_out /* BUS */ (ts_local_pe_681_a3_out),
	.dr_11_oe /* BUS */ (ts_local_pe_681_a3_oe),
	.dr_11_in /* BUS */ (ts_local_pe_681_a3_in),
	.dr_12_out /* BUS */ (ts_local_pe_682_a3_out),
	.dr_12_oe /* BUS */ (ts_local_pe_682_a3_oe),
	.dr_12_in /* BUS */ (ts_local_pe_682_a3_in),
	.dr_13_out /* BUS */ (ts_local_pe_683_a3_out),
	.dr_13_oe /* BUS */ (ts_local_pe_683_a3_oe),
	.dr_13_in /* BUS */ (ts_local_pe_683_a3_in),
	.dr_14_out /* BUS */ (ts_local_pe_684_a3_out),
	.dr_14_oe /* BUS */ (ts_local_pe_684_a3_oe),
	.dr_14_in /* BUS */ (ts_local_pe_684_a3_in),
	.dr_15_out /* BUS */ (ts_local_pe_685_a3_out),
	.dr_15_oe /* BUS */ (ts_local_pe_685_a3_oe),
	.dr_15_in /* BUS */ (ts_local_pe_685_a3_in),
	.sys_clk(sys_clk) // Generated
);

// TOM.NET (427) - wbk : wbk
wbk wbk_inst
(
	.d_14 /* IN */ (d_14),
	.d_15 /* IN */ (d_15),
	.d_16 /* IN */ (d_16),
	.d_17 /* IN */ (d_17),
	.d_18 /* IN */ (d_18),
	.d_19 /* IN */ (d_19),
	.d_20 /* IN */ (d_20),
	.d_21 /* IN */ (d_21),
	.d_22 /* IN */ (d_22),
	.d_23 /* IN */ (d_23),
	.d_43 /* IN */ (d_43),
	.d_44 /* IN */ (d_44),
	.d_45 /* IN */ (d_45),
	.d_46 /* IN */ (d_46),
	.d_47 /* IN */ (d_47),
	.d_48 /* IN */ (d_48),
	.d_49 /* IN */ (d_49),
	.d_50 /* IN */ (d_50),
	.d_51 /* IN */ (d_51),
	.d_52 /* IN */ (d_52),
	.d_53 /* IN */ (d_53),
	.d_54 /* IN */ (d_54),
	.d_55 /* IN */ (d_55),
	.d_56 /* IN */ (d_56),
	.d_57 /* IN */ (d_57),
	.d_58 /* IN */ (d_58),
	.d_59 /* IN */ (d_59),
	.d_60 /* IN */ (d_60),
	.d_61 /* IN */ (d_61),
	.d_62 /* IN */ (d_62),
	.d_63 /* IN */ (d_63),
	.obld_0 /* IN */ (obld_0),
	.obld_2 /* IN */ (obld_2),
	.dwidth_0 /* IN */ (dwidth_0),
	.dwidth_1 /* IN */ (dwidth_1),
	.dwidth_2 /* IN */ (dwidth_2),
	.dwidth_3 /* IN */ (dwidth_3),
	.dwidth_4 /* IN */ (dwidth_4),
	.dwidth_5 /* IN */ (dwidth_5),
	.dwidth_6 /* IN */ (dwidth_6),
	.dwidth_7 /* IN */ (dwidth_7),
	.dwidth_8 /* IN */ (dwidth_8),
	.dwidth_9 /* IN */ (dwidth_9),
	.vscale_0 /* IN */ (vscale_0),
	.vscale_1 /* IN */ (vscale_1),
	.vscale_2 /* IN */ (vscale_2),
	.vscale_3 /* IN */ (vscale_3),
	.vscale_4 /* IN */ (vscale_4),
	.vscale_5 /* IN */ (vscale_5),
	.vscale_6 /* IN */ (vscale_6),
	.vscale_7 /* IN */ (vscale_7),
	.clk /* IN */ (clk_12),
	.resetl /* IN */ (resetl),
	.scaled /* IN */ (scaled),
	.wbkstart /* IN */ (wbkstart),
	.newdata_0 /* OUT */ (newdata_0),
	.newdata_1 /* OUT */ (newdata_1),
	.newdata_2 /* OUT */ (newdata_2),
	.newdata_3 /* OUT */ (newdata_3),
	.newdata_4 /* OUT */ (newdata_4),
	.newdata_5 /* OUT */ (newdata_5),
	.newdata_6 /* OUT */ (newdata_6),
	.newdata_7 /* OUT */ (newdata_7),
	.newdata_8 /* OUT */ (newdata_8),
	.newdata_9 /* OUT */ (newdata_9),
	.newdata_10 /* OUT */ (newdata_10),
	.newdata_11 /* OUT */ (newdata_11),
	.newdata_12 /* OUT */ (newdata_12),
	.newdata_13 /* OUT */ (newdata_13),
	.newdata_14 /* OUT */ (newdata_14),
	.newdata_15 /* OUT */ (newdata_15),
	.newdata_16 /* OUT */ (newdata_16),
	.newdata_17 /* OUT */ (newdata_17),
	.newdata_18 /* OUT */ (newdata_18),
	.newdata_19 /* OUT */ (newdata_19),
	.newdata_20 /* OUT */ (newdata_20),
	.newheight_0 /* OUT */ (newheight_0),
	.newheight_1 /* OUT */ (newheight_1),
	.newheight_2 /* OUT */ (newheight_2),
	.newheight_3 /* OUT */ (newheight_3),
	.newheight_4 /* OUT */ (newheight_4),
	.newheight_5 /* OUT */ (newheight_5),
	.newheight_6 /* OUT */ (newheight_6),
	.newheight_7 /* OUT */ (newheight_7),
	.newheight_8 /* OUT */ (newheight_8),
	.newheight_9 /* OUT */ (newheight_9),
	.newrem_0 /* OUT */ (newrem_0),
	.newrem_1 /* OUT */ (newrem_1),
	.newrem_2 /* OUT */ (newrem_2),
	.newrem_3 /* OUT */ (newrem_3),
	.newrem_4 /* OUT */ (newrem_4),
	.newrem_5 /* OUT */ (newrem_5),
	.newrem_6 /* OUT */ (newrem_6),
	.newrem_7 /* OUT */ (newrem_7),
	.heightnz /* OUT */ (heightnz),
	.wbkdone /* OUT */ (wbkdone),
	.sys_clk(sys_clk) // Generated
);

// TOM.NET (435) - obd : obdata
obdata obd_inst
(
	.aout_9 /* IN */ (aout_9),
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
	.reads /* IN */ (reads),
	.palen /* IN */ (clut),
	.clutt /* IN */ (clutt),
	.d_0 /* IN */ (d_0),
	.d_1 /* IN */ (d_1),
	.d_2 /* IN */ (d_2),
	.d_3 /* IN */ (d_3),
	.d_4 /* IN */ (d_4),
	.d_5 /* IN */ (d_5),
	.d_6 /* IN */ (d_6),
	.d_7 /* IN */ (d_7),
	.d_8 /* IN */ (d_8),
	.d_9 /* IN */ (d_9),
	.d_10 /* IN */ (d_10),
	.d_11 /* IN */ (d_11),
	.d_12 /* IN */ (d_12),
	.d_13 /* IN */ (d_13),
	.d_14 /* IN */ (d_14),
	.d_15 /* IN */ (d_15),
	.d_16 /* IN */ (d_16),
	.d_17 /* IN */ (d_17),
	.d_18 /* IN */ (d_18),
	.d_19 /* IN */ (d_19),
	.d_20 /* IN */ (d_20),
	.d_21 /* IN */ (d_21),
	.d_22 /* IN */ (d_22),
	.d_23 /* IN */ (d_23),
	.d_24 /* IN */ (d_24),
	.d_25 /* IN */ (d_25),
	.d_26 /* IN */ (d_26),
	.d_27 /* IN */ (d_27),
	.d_28 /* IN */ (d_28),
	.d_29 /* IN */ (d_29),
	.d_30 /* IN */ (d_30),
	.d_31 /* IN */ (d_31),
	.d_32 /* IN */ (d_32),
	.d_33 /* IN */ (d_33),
	.d_34 /* IN */ (d_34),
	.d_35 /* IN */ (d_35),
	.d_36 /* IN */ (d_36),
	.d_37 /* IN */ (d_37),
	.d_38 /* IN */ (d_38),
	.d_39 /* IN */ (d_39),
	.d_40 /* IN */ (d_40),
	.d_41 /* IN */ (d_41),
	.d_42 /* IN */ (d_42),
	.d_43 /* IN */ (d_43),
	.d_44 /* IN */ (d_44),
	.d_45 /* IN */ (d_45),
	.d_46 /* IN */ (d_46),
	.d_47 /* IN */ (d_47),
	.d_48 /* IN */ (d_48),
	.d_49 /* IN */ (d_49),
	.d_50 /* IN */ (d_50),
	.d_51 /* IN */ (d_51),
	.d_52 /* IN */ (d_52),
	.d_53 /* IN */ (d_53),
	.d_54 /* IN */ (d_54),
	.d_55 /* IN */ (d_55),
	.d_56 /* IN */ (d_56),
	.d_57 /* IN */ (d_57),
	.d_58 /* IN */ (d_58),
	.d_59 /* IN */ (d_59),
	.d_60 /* IN */ (d_60),
	.d_61 /* IN */ (d_61),
	.d_62 /* IN */ (d_62),
	.d_63 /* IN */ (d_63),
	.obdlatch /* IN */ (obdlatch),
	.mode1 /* IN */ (mode1),
	.mode2 /* IN */ (mode2),
	.mode4 /* IN */ (mode4),
	.mode8 /* IN */ (mode8),
	.mode16 /* IN */ (mode16),
	.mode24 /* IN */ (mode24),
	.scaledtype /* IN */ (scaled),
	.rmw /* IN */ (rmw),
	.index_1 /* IN */ (index_1),
	.index_2 /* IN */ (index_2),
	.index_3 /* IN */ (index_3),
	.index_4 /* IN */ (index_4),
	.index_5 /* IN */ (index_5),
	.index_6 /* IN */ (index_6),
	.index_7 /* IN */ (index_7),
	.xld /* IN */ (xld),
	.reflected /* IN */ (reflected),
	.transen /* IN */ (transen),
	.xscale_0 /* IN */ (hscale_0),
	.xscale_1 /* IN */ (hscale_1),
	.xscale_2 /* IN */ (hscale_2),
	.xscale_3 /* IN */ (hscale_3),
	.xscale_4 /* IN */ (hscale_4),
	.xscale_5 /* IN */ (hscale_5),
	.xscale_6 /* IN */ (hscale_6),
	.xscale_7 /* IN */ (hscale_7),
	.resetl /* IN */ (resetl),
	.clk /* IN */ (clk_13),
	.obld_1 /* IN */ (obld_1),
	.obld_2 /* IN */ (obld_2),
	.hilo /* IN */ (hilo),
	.lbt /* IN */ (lbt),
	.at_1 /* IN */ (at_1),
	.at_2 /* IN */ (at_2),
	.at_3 /* IN */ (at_3),
	.at_4 /* IN */ (at_4),
	.at_5 /* IN */ (at_5),
	.at_6 /* IN */ (at_6),
	.at_7 /* IN */ (at_7),
	.at_8 /* IN */ (at_8),
	.at_9 /* IN */ (at_9),
	.at_10 /* IN */ (at_10),
	.obdone /* OUT */ (obdone),
	.obdready /* OUT */ (obdready),
	.lbwa_1 /* OUT */ (lbwa_1),
	.lbwa_2 /* OUT */ (lbwa_2),
	.lbwa_3 /* OUT */ (lbwa_3),
	.lbwa_4 /* OUT */ (lbwa_4),
	.lbwa_5 /* OUT */ (lbwa_5),
	.lbwa_6 /* OUT */ (lbwa_6),
	.lbwa_7 /* OUT */ (lbwa_7),
	.lbwa_8 /* OUT */ (lbwa_8),
	.lbwa_9 /* OUT */ (lbwa_9),
	.lbwe_0 /* OUT */ (lbwe_0),
	.lbwe_1 /* OUT */ (lbwe_1),
	.lbwd_0 /* OUT */ (lbwd_0),
	.lbwd_1 /* OUT */ (lbwd_1),
	.lbwd_2 /* OUT */ (lbwd_2),
	.lbwd_3 /* OUT */ (lbwd_3),
	.lbwd_4 /* OUT */ (lbwd_4),
	.lbwd_5 /* OUT */ (lbwd_5),
	.lbwd_6 /* OUT */ (lbwd_6),
	.lbwd_7 /* OUT */ (lbwd_7),
	.lbwd_8 /* OUT */ (lbwd_8),
	.lbwd_9 /* OUT */ (lbwd_9),
	.lbwd_10 /* OUT */ (lbwd_10),
	.lbwd_11 /* OUT */ (lbwd_11),
	.lbwd_12 /* OUT */ (lbwd_12),
	.lbwd_13 /* OUT */ (lbwd_13),
	.lbwd_14 /* OUT */ (lbwd_14),
	.lbwd_15 /* OUT */ (lbwd_15),
	.lbwd_16 /* OUT */ (lbwd_16),
	.lbwd_17 /* OUT */ (lbwd_17),
	.lbwd_18 /* OUT */ (lbwd_18),
	.lbwd_19 /* OUT */ (lbwd_19),
	.lbwd_20 /* OUT */ (lbwd_20),
	.lbwd_21 /* OUT */ (lbwd_21),
	.lbwd_22 /* OUT */ (lbwd_22),
	.lbwd_23 /* OUT */ (lbwd_23),
	.lbwd_24 /* OUT */ (lbwd_24),
	.lbwd_25 /* OUT */ (lbwd_25),
	.lbwd_26 /* OUT */ (lbwd_26),
	.lbwd_27 /* OUT */ (lbwd_27),
	.lbwd_28 /* OUT */ (lbwd_28),
	.lbwd_29 /* OUT */ (lbwd_29),
	.lbwd_30 /* OUT */ (lbwd_30),
	.lbwd_31 /* OUT */ (lbwd_31),
	.offscreen /* OUT */ (offscreen),
	.rmw1 /* OUT */ (rmw1),
	.lben /* OUT */ (lben),
	.dr_0_out /* BUS */ (ts_local_pe_670_a5_out),
	.dr_0_oe /* BUS */ (ts_local_pe_670_a5_oe),
	.dr_0_in /* BUS */ (ts_local_pe_670_a5_in),
	.dr_1_out /* BUS */ (ts_local_pe_671_a5_out),
	.dr_1_oe /* BUS */ (ts_local_pe_671_a5_oe),
	.dr_1_in /* BUS */ (ts_local_pe_671_a5_in),
	.dr_2_out /* BUS */ (ts_local_pe_672_a5_out),
	.dr_2_oe /* BUS */ (ts_local_pe_672_a5_oe),
	.dr_2_in /* BUS */ (ts_local_pe_672_a5_in),
	.dr_3_out /* BUS */ (ts_local_pe_673_a5_out),
	.dr_3_oe /* BUS */ (ts_local_pe_673_a5_oe),
	.dr_3_in /* BUS */ (ts_local_pe_673_a5_in),
	.dr_4_out /* BUS */ (ts_local_pe_674_a5_out),
	.dr_4_oe /* BUS */ (ts_local_pe_674_a5_oe),
	.dr_4_in /* BUS */ (ts_local_pe_674_a5_in),
	.dr_5_out /* BUS */ (ts_local_pe_675_a5_out),
	.dr_5_oe /* BUS */ (ts_local_pe_675_a5_oe),
	.dr_5_in /* BUS */ (ts_local_pe_675_a5_in),
	.dr_6_out /* BUS */ (ts_local_pe_676_a5_out),
	.dr_6_oe /* BUS */ (ts_local_pe_676_a5_oe),
	.dr_6_in /* BUS */ (ts_local_pe_676_a5_in),
	.dr_7_out /* BUS */ (ts_local_pe_677_a5_out),
	.dr_7_oe /* BUS */ (ts_local_pe_677_a5_oe),
	.dr_7_in /* BUS */ (ts_local_pe_677_a5_in),
	.dr_8_out /* BUS */ (ts_local_pe_678_a5_out),
	.dr_8_oe /* BUS */ (ts_local_pe_678_a5_oe),
	.dr_8_in /* BUS */ (ts_local_pe_678_a5_in),
	.dr_9_out /* BUS */ (ts_local_pe_679_a4_out),
	.dr_9_oe /* BUS */ (ts_local_pe_679_a4_oe),
	.dr_9_in /* BUS */ (ts_local_pe_679_a4_in),
	.dr_10_out /* BUS */ (ts_local_pe_680_a4_out),
	.dr_10_oe /* BUS */ (ts_local_pe_680_a4_oe),
	.dr_10_in /* BUS */ (ts_local_pe_680_a4_in),
	.dr_11_out /* BUS */ (ts_local_pe_681_a4_out),
	.dr_11_oe /* BUS */ (ts_local_pe_681_a4_oe),
	.dr_11_in /* BUS */ (ts_local_pe_681_a4_in),
	.dr_12_out /* BUS */ (ts_local_pe_682_a4_out),
	.dr_12_oe /* BUS */ (ts_local_pe_682_a4_oe),
	.dr_12_in /* BUS */ (ts_local_pe_682_a4_in),
	.dr_13_out /* BUS */ (ts_local_pe_683_a4_out),
	.dr_13_oe /* BUS */ (ts_local_pe_683_a4_oe),
	.dr_13_in /* BUS */ (ts_local_pe_683_a4_in),
	.dr_14_out /* BUS */ (ts_local_pe_684_a4_out),
	.dr_14_oe /* BUS */ (ts_local_pe_684_a4_oe),
	.dr_14_in /* BUS */ (ts_local_pe_684_a4_in),
	.dr_15_out /* BUS */ (ts_local_pe_685_a4_out),
	.dr_15_oe /* BUS */ (ts_local_pe_685_a4_oe),
	.dr_15_in /* BUS */ (ts_local_pe_685_a4_in),
	.sys_clk(sys_clk) // Generated
);

// TOM.NET (444) - lbuf : lbuf
lbuf lbuf_inst
(
	.aout_1 /* IN */ (maska_1),
	.aout_15 /* IN */ (aout_15),
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
	.siz_2 /* IN */ (sizout_2),
	.lbwa_0 /* IN */ (lbwa_1),
	.lbwa_1 /* IN */ (lbwa_2),
	.lbwa_2 /* IN */ (lbwa_3),
	.lbwa_3 /* IN */ (lbwa_4),
	.lbwa_4 /* IN */ (lbwa_5),
	.lbwa_5 /* IN */ (lbwa_6),
	.lbwa_6 /* IN */ (lbwa_7),
	.lbwa_7 /* IN */ (lbwa_8),
	.lbwa_8 /* IN */ (lbwa_9),
	.lbra_0 /* IN */ (lbra_0),
	.lbra_1 /* IN */ (lbra_1),
	.lbra_2 /* IN */ (lbra_2),
	.lbra_3 /* IN */ (lbra_3),
	.lbra_4 /* IN */ (lbra_4),
	.lbra_5 /* IN */ (lbra_5),
	.lbra_6 /* IN */ (lbra_6),
	.lbra_7 /* IN */ (lbra_7),
	.lbra_8 /* IN */ (lbra_8),
	.lbwe_0 /* IN */ (lbwe_0),
	.lbwe_1 /* IN */ (lbwe_1),
	.lbwd_0 /* IN */ (lbwd_0),
	.lbwd_1 /* IN */ (lbwd_1),
	.lbwd_2 /* IN */ (lbwd_2),
	.lbwd_3 /* IN */ (lbwd_3),
	.lbwd_4 /* IN */ (lbwd_4),
	.lbwd_5 /* IN */ (lbwd_5),
	.lbwd_6 /* IN */ (lbwd_6),
	.lbwd_7 /* IN */ (lbwd_7),
	.lbwd_8 /* IN */ (lbwd_8),
	.lbwd_9 /* IN */ (lbwd_9),
	.lbwd_10 /* IN */ (lbwd_10),
	.lbwd_11 /* IN */ (lbwd_11),
	.lbwd_12 /* IN */ (lbwd_12),
	.lbwd_13 /* IN */ (lbwd_13),
	.lbwd_14 /* IN */ (lbwd_14),
	.lbwd_15 /* IN */ (lbwd_15),
	.lbwd_16 /* IN */ (lbwd_16),
	.lbwd_17 /* IN */ (lbwd_17),
	.lbwd_18 /* IN */ (lbwd_18),
	.lbwd_19 /* IN */ (lbwd_19),
	.lbwd_20 /* IN */ (lbwd_20),
	.lbwd_21 /* IN */ (lbwd_21),
	.lbwd_22 /* IN */ (lbwd_22),
	.lbwd_23 /* IN */ (lbwd_23),
	.lbwd_24 /* IN */ (lbwd_24),
	.lbwd_25 /* IN */ (lbwd_25),
	.lbwd_26 /* IN */ (lbwd_26),
	.lbwd_27 /* IN */ (lbwd_27),
	.lbwd_28 /* IN */ (lbwd_28),
	.lbwd_29 /* IN */ (lbwd_29),
	.lbwd_30 /* IN */ (lbwd_30),
	.lbwd_31 /* IN */ (lbwd_31),
	.lbufa /* IN */ (lbufa),
	.lbufb /* IN */ (lbufb),
	.lbaw /* IN */ (lba),
	.lbbw /* IN */ (lbb),
	.rmw /* IN */ (rmw1),
	.reads /* IN */ (reads),
	.vclk /* IN */ (vclk),
	.clk_0 /* IN */ (clk_14),
	.lben /* IN */ (lben),
	.bgw /* IN */ (bgw),
	.bgwr /* IN */ (bgwr),
	.vactive /* IN */ (vactive),
	.lbaactive /* IN */ (lbaactive),
	.lbbactive /* IN */ (lbbactive),
	.bigend /* IN */ (bigend),
	.lbrd_0 /* OUT */ (lbrd_0),
	.lbrd_1 /* OUT */ (lbrd_1),
	.lbrd_2 /* OUT */ (lbrd_2),
	.lbrd_3 /* OUT */ (lbrd_3),
	.lbrd_4 /* OUT */ (lbrd_4),
	.lbrd_5 /* OUT */ (lbrd_5),
	.lbrd_6 /* OUT */ (lbrd_6),
	.lbrd_7 /* OUT */ (lbrd_7),
	.lbrd_8 /* OUT */ (lbrd_8),
	.lbrd_9 /* OUT */ (lbrd_9),
	.lbrd_10 /* OUT */ (lbrd_10),
	.lbrd_11 /* OUT */ (lbrd_11),
	.lbrd_12 /* OUT */ (lbrd_12),
	.lbrd_13 /* OUT */ (lbrd_13),
	.lbrd_14 /* OUT */ (lbrd_14),
	.lbrd_15 /* OUT */ (lbrd_15),
	.lbrd_16 /* OUT */ (lbrd_16),
	.lbrd_17 /* OUT */ (lbrd_17),
	.lbrd_18 /* OUT */ (lbrd_18),
	.lbrd_19 /* OUT */ (lbrd_19),
	.lbrd_20 /* OUT */ (lbrd_20),
	.lbrd_21 /* OUT */ (lbrd_21),
	.lbrd_22 /* OUT */ (lbrd_22),
	.lbrd_23 /* OUT */ (lbrd_23),
	.lbrd_24 /* OUT */ (lbrd_24),
	.lbrd_25 /* OUT */ (lbrd_25),
	.lbrd_26 /* OUT */ (lbrd_26),
	.lbrd_27 /* OUT */ (lbrd_27),
	.lbrd_28 /* OUT */ (lbrd_28),
	.lbrd_29 /* OUT */ (lbrd_29),
	.lbrd_30 /* OUT */ (lbrd_30),
	.lbrd_31 /* OUT */ (lbrd_31),
	.dr_0_out /* BUS */ (ts_local_pe_670_a6_out),
	.dr_0_oe /* BUS */ (ts_local_pe_670_a6_oe),
	.dr_0_in /* BUS */ (ts_local_pe_670_a6_in),
	.dr_1_out /* BUS */ (ts_local_pe_671_a6_out),
	.dr_1_oe /* BUS */ (ts_local_pe_671_a6_oe),
	.dr_1_in /* BUS */ (ts_local_pe_671_a6_in),
	.dr_2_out /* BUS */ (ts_local_pe_672_a6_out),
	.dr_2_oe /* BUS */ (ts_local_pe_672_a6_oe),
	.dr_2_in /* BUS */ (ts_local_pe_672_a6_in),
	.dr_3_out /* BUS */ (ts_local_pe_673_a6_out),
	.dr_3_oe /* BUS */ (ts_local_pe_673_a6_oe),
	.dr_3_in /* BUS */ (ts_local_pe_673_a6_in),
	.dr_4_out /* BUS */ (ts_local_pe_674_a6_out),
	.dr_4_oe /* BUS */ (ts_local_pe_674_a6_oe),
	.dr_4_in /* BUS */ (ts_local_pe_674_a6_in),
	.dr_5_out /* BUS */ (ts_local_pe_675_a6_out),
	.dr_5_oe /* BUS */ (ts_local_pe_675_a6_oe),
	.dr_5_in /* BUS */ (ts_local_pe_675_a6_in),
	.dr_6_out /* BUS */ (ts_local_pe_676_a6_out),
	.dr_6_oe /* BUS */ (ts_local_pe_676_a6_oe),
	.dr_6_in /* BUS */ (ts_local_pe_676_a6_in),
	.dr_7_out /* BUS */ (ts_local_pe_677_a6_out),
	.dr_7_oe /* BUS */ (ts_local_pe_677_a6_oe),
	.dr_7_in /* BUS */ (ts_local_pe_677_a6_in),
	.dr_8_out /* BUS */ (ts_local_pe_678_a6_out),
	.dr_8_oe /* BUS */ (ts_local_pe_678_a6_oe),
	.dr_8_in /* BUS */ (ts_local_pe_678_a6_in),
	.dr_9_out /* BUS */ (ts_local_pe_679_a5_out),
	.dr_9_oe /* BUS */ (ts_local_pe_679_a5_oe),
	.dr_9_in /* BUS */ (ts_local_pe_679_a5_in),
	.dr_10_out /* BUS */ (ts_local_pe_680_a5_out),
	.dr_10_oe /* BUS */ (ts_local_pe_680_a5_oe),
	.dr_10_in /* BUS */ (ts_local_pe_680_a5_in),
	.dr_11_out /* BUS */ (ts_local_pe_681_a5_out),
	.dr_11_oe /* BUS */ (ts_local_pe_681_a5_oe),
	.dr_11_in /* BUS */ (ts_local_pe_681_a5_in),
	.dr_12_out /* BUS */ (ts_local_pe_682_a5_out),
	.dr_12_oe /* BUS */ (ts_local_pe_682_a5_oe),
	.dr_12_in /* BUS */ (ts_local_pe_682_a5_in),
	.dr_13_out /* BUS */ (ts_local_pe_683_a5_out),
	.dr_13_oe /* BUS */ (ts_local_pe_683_a5_oe),
	.dr_13_in /* BUS */ (ts_local_pe_683_a5_in),
	.dr_14_out /* BUS */ (ts_local_pe_684_a5_out),
	.dr_14_oe /* BUS */ (ts_local_pe_684_a5_oe),
	.dr_14_in /* BUS */ (ts_local_pe_684_a5_in),
	.dr_15_out /* BUS */ (ts_local_pe_685_a5_out),
	.dr_15_oe /* BUS */ (ts_local_pe_685_a5_oe),
	.dr_15_in /* BUS */ (ts_local_pe_685_a5_in),
	.sys_clk(sys_clk) // Generated
);

// TOM.NET (453) - clk : clk
clk clk_inst
(
	.resetl /* IN */ (resetl),
	.pclk /* IN */ (pclk),
	.vxclk /* IN */ (vxclk),
	.ndtest /* IN */ (ndtest),
	.cfg_7 /* IN */ (cfg_7),
	.cfgw /* OUT */ (cfgw),
	.cfgen /* OUT */ (cfgen),
	.clk /* OUT */ (clk),
	.vclk /* OUT */ (vclk),
	.tlw /* OUT */ (tlw_unused),
	.sys_clk(sys_clk) // Generated
);

// TOM.NET (456) - clk[0] : buf24
assign clk_0 = clk;

// TOM.NET (457) - clk[1] : buf24
assign clk_1 = clk;

// TOM.NET (458) - clk[2] : buf16
assign clk_2 = clk;

// TOM.NET (459) - clk[3] : buf24
assign clk_3 = clk;

// TOM.NET (460) - clk[4] : buf48
assign clk_4 = clk;

// TOM.NET (461) - clk[12] : buf16
assign clk_12 = clk;

// TOM.NET (462) - clk[13] : buf96
assign clk_13 = clk;

// TOM.NET (463) - clk[14] : buf16
assign clk_14 = clk;

// TOM.NET (465) - misc_ : misc
misc misc__inst
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
	.clk /* IN */ (clk_0),
	.resetl /* IN */ (resetl),
	.pit0w /* IN */ (pit0w),
	.pit1w /* IN */ (pit1w),
	.int1w /* IN */ (int1w),
	.int2w /* IN */ (int2w),
	.intr /* IN */ (intr),
	.obint /* IN */ (obint),
	.gpuint /* IN */ (gpuint),
	.vint /* IN */ (vint),
	.dint /* IN */ (dint),
	.refrate_0 /* IN */ (refrate_0),
	.refrate_1 /* IN */ (refrate_1),
	.refrate_2 /* IN */ (refrate_2),
	.refrate_3 /* IN */ (refrate_3),
	.refback /* IN */ (refack),
	.ack /* IN */ (ack),
	.startref /* IN */ (startref),
	.wet /* IN */ (wet),
	.pit0r /* IN */ (pit0r),
	.pit1r /* IN */ (pit1r),
	.tcount /* IN */ (tcount),
	.test3r /* IN */ (test3r),
	.ihandler /* OUT */ (ihandler),
	.tint /* OUT */ (tint),
	.refreq /* OUT */ (refreq_obuf),
	.intl /* OUT */ (intl),
	.dr_0_out /* BUS */ (ts_local_pe_670_a7_out),
	.dr_0_oe /* BUS */ (ts_local_pe_670_a7_oe),
	.dr_0_in /* BUS */ (ts_local_pe_670_a7_in),
	.dr_1_out /* BUS */ (ts_local_pe_671_a7_out),
	.dr_1_oe /* BUS */ (ts_local_pe_671_a7_oe),
	.dr_1_in /* BUS */ (ts_local_pe_671_a7_in),
	.dr_2_out /* BUS */ (ts_local_pe_672_a7_out),
	.dr_2_oe /* BUS */ (ts_local_pe_672_a7_oe),
	.dr_2_in /* BUS */ (ts_local_pe_672_a7_in),
	.dr_3_out /* BUS */ (ts_local_pe_673_a7_out),
	.dr_3_oe /* BUS */ (ts_local_pe_673_a7_oe),
	.dr_3_in /* BUS */ (ts_local_pe_673_a7_in),
	.dr_4_out /* BUS */ (ts_local_pe_674_a7_out),
	.dr_4_oe /* BUS */ (ts_local_pe_674_a7_oe),
	.dr_4_in /* BUS */ (ts_local_pe_674_a7_in),
	.dr_5_out /* BUS */ (ts_local_pe_675_a7_out),
	.dr_5_oe /* BUS */ (ts_local_pe_675_a7_oe),
	.dr_5_in /* BUS */ (ts_local_pe_675_a7_in),
	.dr_6_out /* BUS */ (ts_local_pe_676_a7_out),
	.dr_6_oe /* BUS */ (ts_local_pe_676_a7_oe),
	.dr_6_in /* BUS */ (ts_local_pe_676_a7_in),
	.dr_7_out /* BUS */ (ts_local_pe_677_a7_out),
	.dr_7_oe /* BUS */ (ts_local_pe_677_a7_oe),
	.dr_7_in /* BUS */ (ts_local_pe_677_a7_in),
	.dr_8_out /* BUS */ (ts_local_pe_678_a7_out),
	.dr_8_oe /* BUS */ (ts_local_pe_678_a7_oe),
	.dr_8_in /* BUS */ (ts_local_pe_678_a7_in),
	.dr_9_out /* BUS */ (ts_local_pe_679_a6_out),
	.dr_9_oe /* BUS */ (ts_local_pe_679_a6_oe),
	.dr_9_in /* BUS */ (ts_local_pe_679_a6_in),
	.dr_10_out /* BUS */ (ts_local_pe_680_a6_out),
	.dr_10_oe /* BUS */ (ts_local_pe_680_a6_oe),
	.dr_10_in /* BUS */ (ts_local_pe_680_a6_in),
	.dr_11_out /* BUS */ (ts_local_pe_681_a6_out),
	.dr_11_oe /* BUS */ (ts_local_pe_681_a6_oe),
	.dr_11_in /* BUS */ (ts_local_pe_681_a6_in),
	.dr_12_out /* BUS */ (ts_local_pe_682_a6_out),
	.dr_12_oe /* BUS */ (ts_local_pe_682_a6_oe),
	.dr_12_in /* BUS */ (ts_local_pe_682_a6_in),
	.dr_13_out /* BUS */ (ts_local_pe_683_a6_out),
	.dr_13_oe /* BUS */ (ts_local_pe_683_a6_oe),
	.dr_13_in /* BUS */ (ts_local_pe_683_a6_in),
	.dr_14_out /* BUS */ (ts_local_pe_684_a6_out),
	.dr_14_oe /* BUS */ (ts_local_pe_684_a6_oe),
	.dr_14_in /* BUS */ (ts_local_pe_684_a6_in),
	.dr_15_out /* BUS */ (ts_local_pe_685_a6_out),
	.dr_15_oe /* BUS */ (ts_local_pe_685_a6_oe),
	.dr_15_in /* BUS */ (ts_local_pe_685_a6_in),
	.mreq_out /* BUS */ (ts_local_pe_669_a3_out),
	.mreq_oe /* BUS */ (ts_local_pe_669_a3_oe),
	.mreq_in /* BUS */ (ts_local_pe_669_a3_in),
	.sys_clk(sys_clk) // Generated
);

// TOM.NET (474) - ge : dummy

// --- Compiler-generated local PE for BUS wd[0]
assign wd_0_out = (ts_local_pe_576_a0_oe & ts_local_pe_576_a0_out ) | (ts_local_pe_576_a1_oe & ts_local_pe_576_a1_out ) | 1'b0;
assign wd_0_oe = ts_local_pe_576_a0_oe | ts_local_pe_576_a1_oe;
assign ts_local_pe_576_a0_in = wd_0_in;
assign ts_local_pe_576_a1_in = wd_0_in;

// --- Compiler-generated local PE for BUS wd[1]
assign wd_1_out = (ts_local_pe_577_a0_oe & ts_local_pe_577_a0_out ) | (ts_local_pe_577_a1_oe & ts_local_pe_577_a1_out ) | 1'b0;
assign wd_1_oe = ts_local_pe_577_a0_oe | ts_local_pe_577_a1_oe;
assign ts_local_pe_577_a0_in = wd_1_in;
assign ts_local_pe_577_a1_in = wd_1_in;

// --- Compiler-generated local PE for BUS wd[2]
assign wd_2_out = (ts_local_pe_578_a0_oe & ts_local_pe_578_a0_out ) | (ts_local_pe_578_a1_oe & ts_local_pe_578_a1_out ) | 1'b0;
assign wd_2_oe = ts_local_pe_578_a0_oe | ts_local_pe_578_a1_oe;
assign ts_local_pe_578_a0_in = wd_2_in;
assign ts_local_pe_578_a1_in = wd_2_in;

// --- Compiler-generated local PE for BUS wd[3]
assign wd_3_out = (ts_local_pe_579_a0_oe & ts_local_pe_579_a0_out ) | (ts_local_pe_579_a1_oe & ts_local_pe_579_a1_out ) | 1'b0;
assign wd_3_oe = ts_local_pe_579_a0_oe | ts_local_pe_579_a1_oe;
assign ts_local_pe_579_a0_in = wd_3_in;
assign ts_local_pe_579_a1_in = wd_3_in;

// --- Compiler-generated local PE for BUS wd[4]
assign wd_4_out = (ts_local_pe_580_a0_oe & ts_local_pe_580_a0_out ) | (ts_local_pe_580_a1_oe & ts_local_pe_580_a1_out ) | 1'b0;
assign wd_4_oe = ts_local_pe_580_a0_oe | ts_local_pe_580_a1_oe;
assign ts_local_pe_580_a0_in = wd_4_in;
assign ts_local_pe_580_a1_in = wd_4_in;

// --- Compiler-generated local PE for BUS wd[5]
assign wd_5_out = (ts_local_pe_581_a0_oe & ts_local_pe_581_a0_out ) | (ts_local_pe_581_a1_oe & ts_local_pe_581_a1_out ) | 1'b0;
assign wd_5_oe = ts_local_pe_581_a0_oe | ts_local_pe_581_a1_oe;
assign ts_local_pe_581_a0_in = wd_5_in;
assign ts_local_pe_581_a1_in = wd_5_in;

// --- Compiler-generated local PE for BUS wd[6]
assign wd_6_out = (ts_local_pe_582_a0_oe & ts_local_pe_582_a0_out ) | (ts_local_pe_582_a1_oe & ts_local_pe_582_a1_out ) | 1'b0;
assign wd_6_oe = ts_local_pe_582_a0_oe | ts_local_pe_582_a1_oe;
assign ts_local_pe_582_a0_in = wd_6_in;
assign ts_local_pe_582_a1_in = wd_6_in;

// --- Compiler-generated local PE for BUS wd[7]
assign wd_7_out = (ts_local_pe_583_a0_oe & ts_local_pe_583_a0_out ) | (ts_local_pe_583_a1_oe & ts_local_pe_583_a1_out ) | 1'b0;
assign wd_7_oe = ts_local_pe_583_a0_oe | ts_local_pe_583_a1_oe;
assign ts_local_pe_583_a0_in = wd_7_in;
assign ts_local_pe_583_a1_in = wd_7_in;

// --- Compiler-generated local PE for BUS wd[8]
assign wd_8_out = (ts_local_pe_584_a0_oe & ts_local_pe_584_a0_out ) | (ts_local_pe_584_a1_oe & ts_local_pe_584_a1_out ) | 1'b0;
assign wd_8_oe = ts_local_pe_584_a0_oe | ts_local_pe_584_a1_oe;
assign ts_local_pe_584_a0_in = wd_8_in;
assign ts_local_pe_584_a1_in = wd_8_in;

// --- Compiler-generated local PE for BUS wd[9]
assign wd_9_out = (ts_local_pe_585_a0_oe & ts_local_pe_585_a0_out ) | (ts_local_pe_585_a1_oe & ts_local_pe_585_a1_out ) | 1'b0;
assign wd_9_oe = ts_local_pe_585_a0_oe | ts_local_pe_585_a1_oe;
assign ts_local_pe_585_a0_in = wd_9_in;
assign ts_local_pe_585_a1_in = wd_9_in;

// --- Compiler-generated local PE for BUS wd[10]
assign wd_10_out = (ts_local_pe_586_a0_oe & ts_local_pe_586_a0_out ) | (ts_local_pe_586_a1_oe & ts_local_pe_586_a1_out ) | 1'b0;
assign wd_10_oe = ts_local_pe_586_a0_oe | ts_local_pe_586_a1_oe;
assign ts_local_pe_586_a0_in = wd_10_in;
assign ts_local_pe_586_a1_in = wd_10_in;

// --- Compiler-generated local PE for BUS wd[11]
assign wd_11_out = (ts_local_pe_587_a0_oe & ts_local_pe_587_a0_out ) | (ts_local_pe_587_a1_oe & ts_local_pe_587_a1_out ) | 1'b0;
assign wd_11_oe = ts_local_pe_587_a0_oe | ts_local_pe_587_a1_oe;
assign ts_local_pe_587_a0_in = wd_11_in;
assign ts_local_pe_587_a1_in = wd_11_in;

// --- Compiler-generated local PE for BUS wd[12]
assign wd_12_out = (ts_local_pe_588_a0_oe & ts_local_pe_588_a0_out ) | (ts_local_pe_588_a1_oe & ts_local_pe_588_a1_out ) | 1'b0;
assign wd_12_oe = ts_local_pe_588_a0_oe | ts_local_pe_588_a1_oe;
assign ts_local_pe_588_a0_in = wd_12_in;
assign ts_local_pe_588_a1_in = wd_12_in;

// --- Compiler-generated local PE for BUS wd[13]
assign wd_13_out = (ts_local_pe_589_a0_oe & ts_local_pe_589_a0_out ) | (ts_local_pe_589_a1_oe & ts_local_pe_589_a1_out ) | 1'b0;
assign wd_13_oe = ts_local_pe_589_a0_oe | ts_local_pe_589_a1_oe;
assign ts_local_pe_589_a0_in = wd_13_in;
assign ts_local_pe_589_a1_in = wd_13_in;

// --- Compiler-generated local PE for BUS wd[14]
assign wd_14_out = (ts_local_pe_590_a0_oe & ts_local_pe_590_a0_out ) | (ts_local_pe_590_a1_oe & ts_local_pe_590_a1_out ) | 1'b0;
assign wd_14_oe = ts_local_pe_590_a0_oe | ts_local_pe_590_a1_oe;
assign ts_local_pe_590_a0_in = wd_14_in;
assign ts_local_pe_590_a1_in = wd_14_in;

// --- Compiler-generated local PE for BUS wd[15]
assign wd_15_out = (ts_local_pe_591_a0_oe & ts_local_pe_591_a0_out ) | (ts_local_pe_591_a1_oe & ts_local_pe_591_a1_out ) | 1'b0;
assign wd_15_oe = ts_local_pe_591_a0_oe | ts_local_pe_591_a1_oe;
assign ts_local_pe_591_a0_in = wd_15_in;
assign ts_local_pe_591_a1_in = wd_15_in;

// --- Compiler-generated local PE for BUS wd[16]
assign wd_16_out = (ts_local_pe_592_a0_oe & ts_local_pe_592_a0_out ) | (ts_local_pe_592_a1_oe & ts_local_pe_592_a1_out ) | 1'b0;
assign wd_16_oe = ts_local_pe_592_a0_oe | ts_local_pe_592_a1_oe;
assign ts_local_pe_592_a0_in = wd_16_in;
assign ts_local_pe_592_a1_in = wd_16_in;

// --- Compiler-generated local PE for BUS wd[17]
assign wd_17_out = (ts_local_pe_593_a0_oe & ts_local_pe_593_a0_out ) | (ts_local_pe_593_a1_oe & ts_local_pe_593_a1_out ) | 1'b0;
assign wd_17_oe = ts_local_pe_593_a0_oe | ts_local_pe_593_a1_oe;
assign ts_local_pe_593_a0_in = wd_17_in;
assign ts_local_pe_593_a1_in = wd_17_in;

// --- Compiler-generated local PE for BUS wd[18]
assign wd_18_out = (ts_local_pe_594_a0_oe & ts_local_pe_594_a0_out ) | (ts_local_pe_594_a1_oe & ts_local_pe_594_a1_out ) | 1'b0;
assign wd_18_oe = ts_local_pe_594_a0_oe | ts_local_pe_594_a1_oe;
assign ts_local_pe_594_a0_in = wd_18_in;
assign ts_local_pe_594_a1_in = wd_18_in;

// --- Compiler-generated local PE for BUS wd[19]
assign wd_19_out = (ts_local_pe_595_a0_oe & ts_local_pe_595_a0_out ) | (ts_local_pe_595_a1_oe & ts_local_pe_595_a1_out ) | 1'b0;
assign wd_19_oe = ts_local_pe_595_a0_oe | ts_local_pe_595_a1_oe;
assign ts_local_pe_595_a0_in = wd_19_in;
assign ts_local_pe_595_a1_in = wd_19_in;

// --- Compiler-generated local PE for BUS wd[20]
assign wd_20_out = (ts_local_pe_596_a0_oe & ts_local_pe_596_a0_out ) | (ts_local_pe_596_a1_oe & ts_local_pe_596_a1_out ) | 1'b0;
assign wd_20_oe = ts_local_pe_596_a0_oe | ts_local_pe_596_a1_oe;
assign ts_local_pe_596_a0_in = wd_20_in;
assign ts_local_pe_596_a1_in = wd_20_in;

// --- Compiler-generated local PE for BUS wd[21]
assign wd_21_out = (ts_local_pe_597_a0_oe & ts_local_pe_597_a0_out ) | (ts_local_pe_597_a1_oe & ts_local_pe_597_a1_out ) | 1'b0;
assign wd_21_oe = ts_local_pe_597_a0_oe | ts_local_pe_597_a1_oe;
assign ts_local_pe_597_a0_in = wd_21_in;
assign ts_local_pe_597_a1_in = wd_21_in;

// --- Compiler-generated local PE for BUS wd[22]
assign wd_22_out = (ts_local_pe_598_a0_oe & ts_local_pe_598_a0_out ) | (ts_local_pe_598_a1_oe & ts_local_pe_598_a1_out ) | 1'b0;
assign wd_22_oe = ts_local_pe_598_a0_oe | ts_local_pe_598_a1_oe;
assign ts_local_pe_598_a0_in = wd_22_in;
assign ts_local_pe_598_a1_in = wd_22_in;

// --- Compiler-generated local PE for BUS wd[23]
assign wd_23_out = (ts_local_pe_599_a0_oe & ts_local_pe_599_a0_out ) | (ts_local_pe_599_a1_oe & ts_local_pe_599_a1_out ) | 1'b0;
assign wd_23_oe = ts_local_pe_599_a0_oe | ts_local_pe_599_a1_oe;
assign ts_local_pe_599_a0_in = wd_23_in;
assign ts_local_pe_599_a1_in = wd_23_in;

// --- Compiler-generated local PE for BUS wd[24]
assign wd_24_out = (ts_local_pe_600_a0_oe & ts_local_pe_600_a0_out ) | (ts_local_pe_600_a1_oe & ts_local_pe_600_a1_out ) | 1'b0;
assign wd_24_oe = ts_local_pe_600_a0_oe | ts_local_pe_600_a1_oe;
assign ts_local_pe_600_a0_in = wd_24_in;
assign ts_local_pe_600_a1_in = wd_24_in;

// --- Compiler-generated local PE for BUS wd[25]
assign wd_25_out = (ts_local_pe_601_a0_oe & ts_local_pe_601_a0_out ) | (ts_local_pe_601_a1_oe & ts_local_pe_601_a1_out ) | 1'b0;
assign wd_25_oe = ts_local_pe_601_a0_oe | ts_local_pe_601_a1_oe;
assign ts_local_pe_601_a0_in = wd_25_in;
assign ts_local_pe_601_a1_in = wd_25_in;

// --- Compiler-generated local PE for BUS wd[26]
assign wd_26_out = (ts_local_pe_602_a0_oe & ts_local_pe_602_a0_out ) | (ts_local_pe_602_a1_oe & ts_local_pe_602_a1_out ) | 1'b0;
assign wd_26_oe = ts_local_pe_602_a0_oe | ts_local_pe_602_a1_oe;
assign ts_local_pe_602_a0_in = wd_26_in;
assign ts_local_pe_602_a1_in = wd_26_in;

// --- Compiler-generated local PE for BUS wd[27]
assign wd_27_out = (ts_local_pe_603_a0_oe & ts_local_pe_603_a0_out ) | (ts_local_pe_603_a1_oe & ts_local_pe_603_a1_out ) | 1'b0;
assign wd_27_oe = ts_local_pe_603_a0_oe | ts_local_pe_603_a1_oe;
assign ts_local_pe_603_a0_in = wd_27_in;
assign ts_local_pe_603_a1_in = wd_27_in;

// --- Compiler-generated local PE for BUS wd[28]
assign wd_28_out = (ts_local_pe_604_a0_oe & ts_local_pe_604_a0_out ) | (ts_local_pe_604_a1_oe & ts_local_pe_604_a1_out ) | 1'b0;
assign wd_28_oe = ts_local_pe_604_a0_oe | ts_local_pe_604_a1_oe;
assign ts_local_pe_604_a0_in = wd_28_in;
assign ts_local_pe_604_a1_in = wd_28_in;

// --- Compiler-generated local PE for BUS wd[29]
assign wd_29_out = (ts_local_pe_605_a0_oe & ts_local_pe_605_a0_out ) | (ts_local_pe_605_a1_oe & ts_local_pe_605_a1_out ) | 1'b0;
assign wd_29_oe = ts_local_pe_605_a0_oe | ts_local_pe_605_a1_oe;
assign ts_local_pe_605_a0_in = wd_29_in;
assign ts_local_pe_605_a1_in = wd_29_in;

// --- Compiler-generated local PE for BUS wd[30]
assign wd_30_out = (ts_local_pe_606_a0_oe & ts_local_pe_606_a0_out ) | (ts_local_pe_606_a1_oe & ts_local_pe_606_a1_out ) | 1'b0;
assign wd_30_oe = ts_local_pe_606_a0_oe | ts_local_pe_606_a1_oe;
assign ts_local_pe_606_a0_in = wd_30_in;
assign ts_local_pe_606_a1_in = wd_30_in;

// --- Compiler-generated local PE for BUS wd[31]
assign wd_31_out = (ts_local_pe_607_a0_oe & ts_local_pe_607_a0_out ) | (ts_local_pe_607_a1_oe & ts_local_pe_607_a1_out ) | 1'b0;
assign wd_31_oe = ts_local_pe_607_a0_oe | ts_local_pe_607_a1_oe;
assign ts_local_pe_607_a0_in = wd_31_in;
assign ts_local_pe_607_a1_in = wd_31_in;

// --- Compiler-generated local PE for BUS wd[32]
assign wd_32_out = (ts_local_pe_608_a0_oe & ts_local_pe_608_a0_out ) | (ts_local_pe_608_a1_oe & ts_local_pe_608_a1_out ) | 1'b0;
assign wd_32_oe = ts_local_pe_608_a0_oe | ts_local_pe_608_a1_oe;
assign ts_local_pe_608_a0_in = wd_32_in;
assign ts_local_pe_608_a1_in = wd_32_in;

// --- Compiler-generated local PE for BUS wd[33]
assign wd_33_out = (ts_local_pe_609_a0_oe & ts_local_pe_609_a0_out ) | (ts_local_pe_609_a1_oe & ts_local_pe_609_a1_out ) | 1'b0;
assign wd_33_oe = ts_local_pe_609_a0_oe | ts_local_pe_609_a1_oe;
assign ts_local_pe_609_a0_in = wd_33_in;
assign ts_local_pe_609_a1_in = wd_33_in;

// --- Compiler-generated local PE for BUS wd[34]
assign wd_34_out = (ts_local_pe_610_a0_oe & ts_local_pe_610_a0_out ) | (ts_local_pe_610_a1_oe & ts_local_pe_610_a1_out ) | 1'b0;
assign wd_34_oe = ts_local_pe_610_a0_oe | ts_local_pe_610_a1_oe;
assign ts_local_pe_610_a0_in = wd_34_in;
assign ts_local_pe_610_a1_in = wd_34_in;

// --- Compiler-generated local PE for BUS wd[35]
assign wd_35_out = (ts_local_pe_611_a0_oe & ts_local_pe_611_a0_out ) | (ts_local_pe_611_a1_oe & ts_local_pe_611_a1_out ) | 1'b0;
assign wd_35_oe = ts_local_pe_611_a0_oe | ts_local_pe_611_a1_oe;
assign ts_local_pe_611_a0_in = wd_35_in;
assign ts_local_pe_611_a1_in = wd_35_in;

// --- Compiler-generated local PE for BUS wd[36]
assign wd_36_out = (ts_local_pe_612_a0_oe & ts_local_pe_612_a0_out ) | (ts_local_pe_612_a1_oe & ts_local_pe_612_a1_out ) | 1'b0;
assign wd_36_oe = ts_local_pe_612_a0_oe | ts_local_pe_612_a1_oe;
assign ts_local_pe_612_a0_in = wd_36_in;
assign ts_local_pe_612_a1_in = wd_36_in;

// --- Compiler-generated local PE for BUS wd[37]
assign wd_37_out = (ts_local_pe_613_a0_oe & ts_local_pe_613_a0_out ) | (ts_local_pe_613_a1_oe & ts_local_pe_613_a1_out ) | 1'b0;
assign wd_37_oe = ts_local_pe_613_a0_oe | ts_local_pe_613_a1_oe;
assign ts_local_pe_613_a0_in = wd_37_in;
assign ts_local_pe_613_a1_in = wd_37_in;

// --- Compiler-generated local PE for BUS wd[38]
assign wd_38_out = (ts_local_pe_614_a0_oe & ts_local_pe_614_a0_out ) | (ts_local_pe_614_a1_oe & ts_local_pe_614_a1_out ) | 1'b0;
assign wd_38_oe = ts_local_pe_614_a0_oe | ts_local_pe_614_a1_oe;
assign ts_local_pe_614_a0_in = wd_38_in;
assign ts_local_pe_614_a1_in = wd_38_in;

// --- Compiler-generated local PE for BUS wd[39]
assign wd_39_out = (ts_local_pe_615_a0_oe & ts_local_pe_615_a0_out ) | (ts_local_pe_615_a1_oe & ts_local_pe_615_a1_out ) | 1'b0;
assign wd_39_oe = ts_local_pe_615_a0_oe | ts_local_pe_615_a1_oe;
assign ts_local_pe_615_a0_in = wd_39_in;
assign ts_local_pe_615_a1_in = wd_39_in;

// --- Compiler-generated local PE for BUS wd[40]
assign wd_40_out = (ts_local_pe_616_a0_oe & ts_local_pe_616_a0_out ) | (ts_local_pe_616_a1_oe & ts_local_pe_616_a1_out ) | 1'b0;
assign wd_40_oe = ts_local_pe_616_a0_oe | ts_local_pe_616_a1_oe;
assign ts_local_pe_616_a0_in = wd_40_in;
assign ts_local_pe_616_a1_in = wd_40_in;

// --- Compiler-generated local PE for BUS wd[41]
assign wd_41_out = (ts_local_pe_617_a0_oe & ts_local_pe_617_a0_out ) | (ts_local_pe_617_a1_oe & ts_local_pe_617_a1_out ) | 1'b0;
assign wd_41_oe = ts_local_pe_617_a0_oe | ts_local_pe_617_a1_oe;
assign ts_local_pe_617_a0_in = wd_41_in;
assign ts_local_pe_617_a1_in = wd_41_in;

// --- Compiler-generated local PE for BUS wd[42]
assign wd_42_out = (ts_local_pe_618_a0_oe & ts_local_pe_618_a0_out ) | (ts_local_pe_618_a1_oe & ts_local_pe_618_a1_out ) | 1'b0;
assign wd_42_oe = ts_local_pe_618_a0_oe | ts_local_pe_618_a1_oe;
assign ts_local_pe_618_a0_in = wd_42_in;
assign ts_local_pe_618_a1_in = wd_42_in;

// --- Compiler-generated local PE for BUS wd[43]
assign wd_43_out = (ts_local_pe_619_a0_oe & ts_local_pe_619_a0_out ) | (ts_local_pe_619_a1_oe & ts_local_pe_619_a1_out ) | 1'b0;
assign wd_43_oe = ts_local_pe_619_a0_oe | ts_local_pe_619_a1_oe;
assign ts_local_pe_619_a0_in = wd_43_in;
assign ts_local_pe_619_a1_in = wd_43_in;

// --- Compiler-generated local PE for BUS wd[44]
assign wd_44_out = (ts_local_pe_620_a0_oe & ts_local_pe_620_a0_out ) | (ts_local_pe_620_a1_oe & ts_local_pe_620_a1_out ) | 1'b0;
assign wd_44_oe = ts_local_pe_620_a0_oe | ts_local_pe_620_a1_oe;
assign ts_local_pe_620_a0_in = wd_44_in;
assign ts_local_pe_620_a1_in = wd_44_in;

// --- Compiler-generated local PE for BUS wd[45]
assign wd_45_out = (ts_local_pe_621_a0_oe & ts_local_pe_621_a0_out ) | (ts_local_pe_621_a1_oe & ts_local_pe_621_a1_out ) | 1'b0;
assign wd_45_oe = ts_local_pe_621_a0_oe | ts_local_pe_621_a1_oe;
assign ts_local_pe_621_a0_in = wd_45_in;
assign ts_local_pe_621_a1_in = wd_45_in;

// --- Compiler-generated local PE for BUS wd[46]
assign wd_46_out = (ts_local_pe_622_a0_oe & ts_local_pe_622_a0_out ) | (ts_local_pe_622_a1_oe & ts_local_pe_622_a1_out ) | 1'b0;
assign wd_46_oe = ts_local_pe_622_a0_oe | ts_local_pe_622_a1_oe;
assign ts_local_pe_622_a0_in = wd_46_in;
assign ts_local_pe_622_a1_in = wd_46_in;

// --- Compiler-generated local PE for BUS wd[47]
assign wd_47_out = (ts_local_pe_623_a0_oe & ts_local_pe_623_a0_out ) | (ts_local_pe_623_a1_oe & ts_local_pe_623_a1_out ) | 1'b0;
assign wd_47_oe = ts_local_pe_623_a0_oe | ts_local_pe_623_a1_oe;
assign ts_local_pe_623_a0_in = wd_47_in;
assign ts_local_pe_623_a1_in = wd_47_in;

// --- Compiler-generated local PE for BUS wd[48]
assign wd_48_out = (ts_local_pe_624_a0_oe & ts_local_pe_624_a0_out ) | (ts_local_pe_624_a1_oe & ts_local_pe_624_a1_out ) | 1'b0;
assign wd_48_oe = ts_local_pe_624_a0_oe | ts_local_pe_624_a1_oe;
assign ts_local_pe_624_a0_in = wd_48_in;
assign ts_local_pe_624_a1_in = wd_48_in;

// --- Compiler-generated local PE for BUS wd[49]
assign wd_49_out = (ts_local_pe_625_a0_oe & ts_local_pe_625_a0_out ) | (ts_local_pe_625_a1_oe & ts_local_pe_625_a1_out ) | 1'b0;
assign wd_49_oe = ts_local_pe_625_a0_oe | ts_local_pe_625_a1_oe;
assign ts_local_pe_625_a0_in = wd_49_in;
assign ts_local_pe_625_a1_in = wd_49_in;

// --- Compiler-generated local PE for BUS wd[50]
assign wd_50_out = (ts_local_pe_626_a0_oe & ts_local_pe_626_a0_out ) | (ts_local_pe_626_a1_oe & ts_local_pe_626_a1_out ) | 1'b0;
assign wd_50_oe = ts_local_pe_626_a0_oe | ts_local_pe_626_a1_oe;
assign ts_local_pe_626_a0_in = wd_50_in;
assign ts_local_pe_626_a1_in = wd_50_in;

// --- Compiler-generated local PE for BUS wd[51]
assign wd_51_out = (ts_local_pe_627_a0_oe & ts_local_pe_627_a0_out ) | (ts_local_pe_627_a1_oe & ts_local_pe_627_a1_out ) | 1'b0;
assign wd_51_oe = ts_local_pe_627_a0_oe | ts_local_pe_627_a1_oe;
assign ts_local_pe_627_a0_in = wd_51_in;
assign ts_local_pe_627_a1_in = wd_51_in;

// --- Compiler-generated local PE for BUS wd[52]
assign wd_52_out = (ts_local_pe_628_a0_oe & ts_local_pe_628_a0_out ) | (ts_local_pe_628_a1_oe & ts_local_pe_628_a1_out ) | 1'b0;
assign wd_52_oe = ts_local_pe_628_a0_oe | ts_local_pe_628_a1_oe;
assign ts_local_pe_628_a0_in = wd_52_in;
assign ts_local_pe_628_a1_in = wd_52_in;

// --- Compiler-generated local PE for BUS wd[53]
assign wd_53_out = (ts_local_pe_629_a0_oe & ts_local_pe_629_a0_out ) | (ts_local_pe_629_a1_oe & ts_local_pe_629_a1_out ) | 1'b0;
assign wd_53_oe = ts_local_pe_629_a0_oe | ts_local_pe_629_a1_oe;
assign ts_local_pe_629_a0_in = wd_53_in;
assign ts_local_pe_629_a1_in = wd_53_in;

// --- Compiler-generated local PE for BUS wd[54]
assign wd_54_out = (ts_local_pe_630_a0_oe & ts_local_pe_630_a0_out ) | (ts_local_pe_630_a1_oe & ts_local_pe_630_a1_out ) | 1'b0;
assign wd_54_oe = ts_local_pe_630_a0_oe | ts_local_pe_630_a1_oe;
assign ts_local_pe_630_a0_in = wd_54_in;
assign ts_local_pe_630_a1_in = wd_54_in;

// --- Compiler-generated local PE for BUS wd[55]
assign wd_55_out = (ts_local_pe_631_a0_oe & ts_local_pe_631_a0_out ) | (ts_local_pe_631_a1_oe & ts_local_pe_631_a1_out ) | 1'b0;
assign wd_55_oe = ts_local_pe_631_a0_oe | ts_local_pe_631_a1_oe;
assign ts_local_pe_631_a0_in = wd_55_in;
assign ts_local_pe_631_a1_in = wd_55_in;

// --- Compiler-generated local PE for BUS wd[56]
assign wd_56_out = (ts_local_pe_632_a0_oe & ts_local_pe_632_a0_out ) | (ts_local_pe_632_a1_oe & ts_local_pe_632_a1_out ) | 1'b0;
assign wd_56_oe = ts_local_pe_632_a0_oe | ts_local_pe_632_a1_oe;
assign ts_local_pe_632_a0_in = wd_56_in;
assign ts_local_pe_632_a1_in = wd_56_in;

// --- Compiler-generated local PE for BUS wd[57]
assign wd_57_out = (ts_local_pe_633_a0_oe & ts_local_pe_633_a0_out ) | (ts_local_pe_633_a1_oe & ts_local_pe_633_a1_out ) | 1'b0;
assign wd_57_oe = ts_local_pe_633_a0_oe | ts_local_pe_633_a1_oe;
assign ts_local_pe_633_a0_in = wd_57_in;
assign ts_local_pe_633_a1_in = wd_57_in;

// --- Compiler-generated local PE for BUS wd[58]
assign wd_58_out = (ts_local_pe_634_a0_oe & ts_local_pe_634_a0_out ) | (ts_local_pe_634_a1_oe & ts_local_pe_634_a1_out ) | 1'b0;
assign wd_58_oe = ts_local_pe_634_a0_oe | ts_local_pe_634_a1_oe;
assign ts_local_pe_634_a0_in = wd_58_in;
assign ts_local_pe_634_a1_in = wd_58_in;

// --- Compiler-generated local PE for BUS wd[59]
assign wd_59_out = (ts_local_pe_635_a0_oe & ts_local_pe_635_a0_out ) | (ts_local_pe_635_a1_oe & ts_local_pe_635_a1_out ) | 1'b0;
assign wd_59_oe = ts_local_pe_635_a0_oe | ts_local_pe_635_a1_oe;
assign ts_local_pe_635_a0_in = wd_59_in;
assign ts_local_pe_635_a1_in = wd_59_in;

// --- Compiler-generated local PE for BUS wd[60]
assign wd_60_out = (ts_local_pe_636_a0_oe & ts_local_pe_636_a0_out ) | (ts_local_pe_636_a1_oe & ts_local_pe_636_a1_out ) | 1'b0;
assign wd_60_oe = ts_local_pe_636_a0_oe | ts_local_pe_636_a1_oe;
assign ts_local_pe_636_a0_in = wd_60_in;
assign ts_local_pe_636_a1_in = wd_60_in;

// --- Compiler-generated local PE for BUS wd[61]
assign wd_61_out = (ts_local_pe_637_a0_oe & ts_local_pe_637_a0_out ) | (ts_local_pe_637_a1_oe & ts_local_pe_637_a1_out ) | 1'b0;
assign wd_61_oe = ts_local_pe_637_a0_oe | ts_local_pe_637_a1_oe;
assign ts_local_pe_637_a0_in = wd_61_in;
assign ts_local_pe_637_a1_in = wd_61_in;

// --- Compiler-generated local PE for BUS wd[62]
assign wd_62_out = (ts_local_pe_638_a0_oe & ts_local_pe_638_a0_out ) | (ts_local_pe_638_a1_oe & ts_local_pe_638_a1_out ) | 1'b0;
assign wd_62_oe = ts_local_pe_638_a0_oe | ts_local_pe_638_a1_oe;
assign ts_local_pe_638_a0_in = wd_62_in;
assign ts_local_pe_638_a1_in = wd_62_in;

// --- Compiler-generated local PE for BUS wd[63]
assign wd_63_out = (ts_local_pe_639_a0_oe & ts_local_pe_639_a0_out ) | (ts_local_pe_639_a1_oe & ts_local_pe_639_a1_out ) | 1'b0;
assign wd_63_oe = ts_local_pe_639_a0_oe | ts_local_pe_639_a1_oe;
assign ts_local_pe_639_a0_in = wd_63_in;
assign ts_local_pe_639_a1_in = wd_63_in;

// --- Compiler-generated local PE for BUS a[0]
assign a_0_out = (ts_local_pe_640_a0_oe & ts_local_pe_640_a0_out ) | (ts_local_pe_640_a1_oe & ts_local_pe_640_a1_out ) | (ts_local_pe_640_a2_oe & ts_local_pe_640_a2_out ) | 1'b0;
assign a_0_oe = ts_local_pe_640_a0_oe | ts_local_pe_640_a1_oe | ts_local_pe_640_a2_oe;
assign ts_local_pe_640_a0_in = a_0_in;
assign ts_local_pe_640_a1_in = a_0_in;
assign ts_local_pe_640_a2_in = a_0_in;

// --- Compiler-generated local PE for BUS a[1]
assign a_1_out = (ts_local_pe_641_a0_oe & ts_local_pe_641_a0_out ) | (ts_local_pe_641_a1_oe & ts_local_pe_641_a1_out ) | (ts_local_pe_641_a2_oe & ts_local_pe_641_a2_out ) | 1'b0;
assign a_1_oe = ts_local_pe_641_a0_oe | ts_local_pe_641_a1_oe | ts_local_pe_641_a2_oe;
assign ts_local_pe_641_a0_in = a_1_in;
assign ts_local_pe_641_a1_in = a_1_in;
assign ts_local_pe_641_a2_in = a_1_in;

// --- Compiler-generated local PE for BUS a[2]
assign a_2_out = (ts_local_pe_642_a0_oe & ts_local_pe_642_a0_out ) | (ts_local_pe_642_a1_oe & ts_local_pe_642_a1_out ) | (ts_local_pe_642_a2_oe & ts_local_pe_642_a2_out ) | 1'b0;
assign a_2_oe = ts_local_pe_642_a0_oe | ts_local_pe_642_a1_oe | ts_local_pe_642_a2_oe;
assign ts_local_pe_642_a0_in = a_2_in;
assign ts_local_pe_642_a1_in = a_2_in;
assign ts_local_pe_642_a2_in = a_2_in;

// --- Compiler-generated local PE for BUS a[3]
assign a_3_out = (ts_local_pe_643_a0_oe & ts_local_pe_643_a0_out ) | (ts_local_pe_643_a1_oe & ts_local_pe_643_a1_out ) | (ts_local_pe_643_a2_oe & ts_local_pe_643_a2_out ) | 1'b0;
assign a_3_oe = ts_local_pe_643_a0_oe | ts_local_pe_643_a1_oe | ts_local_pe_643_a2_oe;
assign ts_local_pe_643_a0_in = a_3_in;
assign ts_local_pe_643_a1_in = a_3_in;
assign ts_local_pe_643_a2_in = a_3_in;

// --- Compiler-generated local PE for BUS a[4]
assign a_4_out = (ts_local_pe_644_a0_oe & ts_local_pe_644_a0_out ) | (ts_local_pe_644_a1_oe & ts_local_pe_644_a1_out ) | (ts_local_pe_644_a2_oe & ts_local_pe_644_a2_out ) | 1'b0;
assign a_4_oe = ts_local_pe_644_a0_oe | ts_local_pe_644_a1_oe | ts_local_pe_644_a2_oe;
assign ts_local_pe_644_a0_in = a_4_in;
assign ts_local_pe_644_a1_in = a_4_in;
assign ts_local_pe_644_a2_in = a_4_in;

// --- Compiler-generated local PE for BUS a[5]
assign a_5_out = (ts_local_pe_645_a0_oe & ts_local_pe_645_a0_out ) | (ts_local_pe_645_a1_oe & ts_local_pe_645_a1_out ) | (ts_local_pe_645_a2_oe & ts_local_pe_645_a2_out ) | 1'b0;
assign a_5_oe = ts_local_pe_645_a0_oe | ts_local_pe_645_a1_oe | ts_local_pe_645_a2_oe;
assign ts_local_pe_645_a0_in = a_5_in;
assign ts_local_pe_645_a1_in = a_5_in;
assign ts_local_pe_645_a2_in = a_5_in;

// --- Compiler-generated local PE for BUS a[6]
assign a_6_out = (ts_local_pe_646_a0_oe & ts_local_pe_646_a0_out ) | (ts_local_pe_646_a1_oe & ts_local_pe_646_a1_out ) | (ts_local_pe_646_a2_oe & ts_local_pe_646_a2_out ) | 1'b0;
assign a_6_oe = ts_local_pe_646_a0_oe | ts_local_pe_646_a1_oe | ts_local_pe_646_a2_oe;
assign ts_local_pe_646_a0_in = a_6_in;
assign ts_local_pe_646_a1_in = a_6_in;
assign ts_local_pe_646_a2_in = a_6_in;

// --- Compiler-generated local PE for BUS a[7]
assign a_7_out = (ts_local_pe_647_a0_oe & ts_local_pe_647_a0_out ) | (ts_local_pe_647_a1_oe & ts_local_pe_647_a1_out ) | (ts_local_pe_647_a2_oe & ts_local_pe_647_a2_out ) | 1'b0;
assign a_7_oe = ts_local_pe_647_a0_oe | ts_local_pe_647_a1_oe | ts_local_pe_647_a2_oe;
assign ts_local_pe_647_a0_in = a_7_in;
assign ts_local_pe_647_a1_in = a_7_in;
assign ts_local_pe_647_a2_in = a_7_in;

// --- Compiler-generated local PE for BUS a[8]
assign a_8_out = (ts_local_pe_648_a0_oe & ts_local_pe_648_a0_out ) | (ts_local_pe_648_a1_oe & ts_local_pe_648_a1_out ) | (ts_local_pe_648_a2_oe & ts_local_pe_648_a2_out ) | 1'b0;
assign a_8_oe = ts_local_pe_648_a0_oe | ts_local_pe_648_a1_oe | ts_local_pe_648_a2_oe;
assign ts_local_pe_648_a0_in = a_8_in;
assign ts_local_pe_648_a1_in = a_8_in;
assign ts_local_pe_648_a2_in = a_8_in;

// --- Compiler-generated local PE for BUS a[9]
assign a_9_out = (ts_local_pe_649_a0_oe & ts_local_pe_649_a0_out ) | (ts_local_pe_649_a1_oe & ts_local_pe_649_a1_out ) | (ts_local_pe_649_a2_oe & ts_local_pe_649_a2_out ) | 1'b0;
assign a_9_oe = ts_local_pe_649_a0_oe | ts_local_pe_649_a1_oe | ts_local_pe_649_a2_oe;
assign ts_local_pe_649_a0_in = a_9_in;
assign ts_local_pe_649_a1_in = a_9_in;
assign ts_local_pe_649_a2_in = a_9_in;

// --- Compiler-generated local PE for BUS a[10]
assign a_10_out = (ts_local_pe_650_a0_oe & ts_local_pe_650_a0_out ) | (ts_local_pe_650_a1_oe & ts_local_pe_650_a1_out ) | (ts_local_pe_650_a2_oe & ts_local_pe_650_a2_out ) | 1'b0;
assign a_10_oe = ts_local_pe_650_a0_oe | ts_local_pe_650_a1_oe | ts_local_pe_650_a2_oe;
assign ts_local_pe_650_a0_in = a_10_in;
assign ts_local_pe_650_a1_in = a_10_in;
assign ts_local_pe_650_a2_in = a_10_in;

// --- Compiler-generated local PE for BUS a[11]
assign a_11_out = (ts_local_pe_651_a0_oe & ts_local_pe_651_a0_out ) | (ts_local_pe_651_a1_oe & ts_local_pe_651_a1_out ) | (ts_local_pe_651_a2_oe & ts_local_pe_651_a2_out ) | 1'b0;
assign a_11_oe = ts_local_pe_651_a0_oe | ts_local_pe_651_a1_oe | ts_local_pe_651_a2_oe;
assign ts_local_pe_651_a0_in = a_11_in;
assign ts_local_pe_651_a1_in = a_11_in;
assign ts_local_pe_651_a2_in = a_11_in;

// --- Compiler-generated local PE for BUS a[12]
assign a_12_out = (ts_local_pe_652_a0_oe & ts_local_pe_652_a0_out ) | (ts_local_pe_652_a1_oe & ts_local_pe_652_a1_out ) | (ts_local_pe_652_a2_oe & ts_local_pe_652_a2_out ) | 1'b0;
assign a_12_oe = ts_local_pe_652_a0_oe | ts_local_pe_652_a1_oe | ts_local_pe_652_a2_oe;
assign ts_local_pe_652_a0_in = a_12_in;
assign ts_local_pe_652_a1_in = a_12_in;
assign ts_local_pe_652_a2_in = a_12_in;

// --- Compiler-generated local PE for BUS a[13]
assign a_13_out = (ts_local_pe_653_a0_oe & ts_local_pe_653_a0_out ) | (ts_local_pe_653_a1_oe & ts_local_pe_653_a1_out ) | (ts_local_pe_653_a2_oe & ts_local_pe_653_a2_out ) | 1'b0;
assign a_13_oe = ts_local_pe_653_a0_oe | ts_local_pe_653_a1_oe | ts_local_pe_653_a2_oe;
assign ts_local_pe_653_a0_in = a_13_in;
assign ts_local_pe_653_a1_in = a_13_in;
assign ts_local_pe_653_a2_in = a_13_in;

// --- Compiler-generated local PE for BUS a[14]
assign a_14_out = (ts_local_pe_654_a0_oe & ts_local_pe_654_a0_out ) | (ts_local_pe_654_a1_oe & ts_local_pe_654_a1_out ) | (ts_local_pe_654_a2_oe & ts_local_pe_654_a2_out ) | 1'b0;
assign a_14_oe = ts_local_pe_654_a0_oe | ts_local_pe_654_a1_oe | ts_local_pe_654_a2_oe;
assign ts_local_pe_654_a0_in = a_14_in;
assign ts_local_pe_654_a1_in = a_14_in;
assign ts_local_pe_654_a2_in = a_14_in;

// --- Compiler-generated local PE for BUS a[15]
assign a_15_out = (ts_local_pe_655_a0_oe & ts_local_pe_655_a0_out ) | (ts_local_pe_655_a1_oe & ts_local_pe_655_a1_out ) | (ts_local_pe_655_a2_oe & ts_local_pe_655_a2_out ) | 1'b0;
assign a_15_oe = ts_local_pe_655_a0_oe | ts_local_pe_655_a1_oe | ts_local_pe_655_a2_oe;
assign ts_local_pe_655_a0_in = a_15_in;
assign ts_local_pe_655_a1_in = a_15_in;
assign ts_local_pe_655_a2_in = a_15_in;

// --- Compiler-generated local PE for BUS a[16]
assign a_16_out = (ts_local_pe_656_a0_oe & ts_local_pe_656_a0_out ) | (ts_local_pe_656_a1_oe & ts_local_pe_656_a1_out ) | (ts_local_pe_656_a2_oe & ts_local_pe_656_a2_out ) | 1'b0;
assign a_16_oe = ts_local_pe_656_a0_oe | ts_local_pe_656_a1_oe | ts_local_pe_656_a2_oe;
assign ts_local_pe_656_a0_in = a_16_in;
assign ts_local_pe_656_a1_in = a_16_in;
assign ts_local_pe_656_a2_in = a_16_in;

// --- Compiler-generated local PE for BUS a[17]
assign a_17_out = (ts_local_pe_657_a0_oe & ts_local_pe_657_a0_out ) | (ts_local_pe_657_a1_oe & ts_local_pe_657_a1_out ) | (ts_local_pe_657_a2_oe & ts_local_pe_657_a2_out ) | 1'b0;
assign a_17_oe = ts_local_pe_657_a0_oe | ts_local_pe_657_a1_oe | ts_local_pe_657_a2_oe;
assign ts_local_pe_657_a0_in = a_17_in;
assign ts_local_pe_657_a1_in = a_17_in;
assign ts_local_pe_657_a2_in = a_17_in;

// --- Compiler-generated local PE for BUS a[18]
assign a_18_out = (ts_local_pe_658_a0_oe & ts_local_pe_658_a0_out ) | (ts_local_pe_658_a1_oe & ts_local_pe_658_a1_out ) | (ts_local_pe_658_a2_oe & ts_local_pe_658_a2_out ) | 1'b0;
assign a_18_oe = ts_local_pe_658_a0_oe | ts_local_pe_658_a1_oe | ts_local_pe_658_a2_oe;
assign ts_local_pe_658_a0_in = a_18_in;
assign ts_local_pe_658_a1_in = a_18_in;
assign ts_local_pe_658_a2_in = a_18_in;

// --- Compiler-generated local PE for BUS a[19]
assign a_19_out = (ts_local_pe_659_a0_oe & ts_local_pe_659_a0_out ) | (ts_local_pe_659_a1_oe & ts_local_pe_659_a1_out ) | (ts_local_pe_659_a2_oe & ts_local_pe_659_a2_out ) | 1'b0;
assign a_19_oe = ts_local_pe_659_a0_oe | ts_local_pe_659_a1_oe | ts_local_pe_659_a2_oe;
assign ts_local_pe_659_a0_in = a_19_in;
assign ts_local_pe_659_a1_in = a_19_in;
assign ts_local_pe_659_a2_in = a_19_in;

// --- Compiler-generated local PE for BUS a[20]
assign a_20_out = (ts_local_pe_660_a0_oe & ts_local_pe_660_a0_out ) | (ts_local_pe_660_a1_oe & ts_local_pe_660_a1_out ) | (ts_local_pe_660_a2_oe & ts_local_pe_660_a2_out ) | 1'b0;
assign a_20_oe = ts_local_pe_660_a0_oe | ts_local_pe_660_a1_oe | ts_local_pe_660_a2_oe;
assign ts_local_pe_660_a0_in = a_20_in;
assign ts_local_pe_660_a1_in = a_20_in;
assign ts_local_pe_660_a2_in = a_20_in;

// --- Compiler-generated local PE for BUS a[21]
assign a_21_out = (ts_local_pe_661_a0_oe & ts_local_pe_661_a0_out ) | (ts_local_pe_661_a1_oe & ts_local_pe_661_a1_out ) | (ts_local_pe_661_a2_oe & ts_local_pe_661_a2_out ) | 1'b0;
assign a_21_oe = ts_local_pe_661_a0_oe | ts_local_pe_661_a1_oe | ts_local_pe_661_a2_oe;
assign ts_local_pe_661_a0_in = a_21_in;
assign ts_local_pe_661_a1_in = a_21_in;
assign ts_local_pe_661_a2_in = a_21_in;

// --- Compiler-generated local PE for BUS a[22]
assign a_22_out = (ts_local_pe_662_a0_oe & ts_local_pe_662_a0_out ) | (ts_local_pe_662_a1_oe & ts_local_pe_662_a1_out ) | (ts_local_pe_662_a2_oe & ts_local_pe_662_a2_out ) | 1'b0;
assign a_22_oe = ts_local_pe_662_a0_oe | ts_local_pe_662_a1_oe | ts_local_pe_662_a2_oe;
assign ts_local_pe_662_a0_in = a_22_in;
assign ts_local_pe_662_a1_in = a_22_in;
assign ts_local_pe_662_a2_in = a_22_in;

// --- Compiler-generated local PE for BUS a[23]
assign a_23_out = (ts_local_pe_663_a0_oe & ts_local_pe_663_a0_out ) | (ts_local_pe_663_a1_oe & ts_local_pe_663_a1_out ) | (ts_local_pe_663_a2_oe & ts_local_pe_663_a2_out ) | 1'b0;
assign a_23_oe = ts_local_pe_663_a0_oe | ts_local_pe_663_a1_oe | ts_local_pe_663_a2_oe;
assign ts_local_pe_663_a0_in = a_23_in;
assign ts_local_pe_663_a1_in = a_23_in;
assign ts_local_pe_663_a2_in = a_23_in;

// --- Compiler-generated local PE for BUS w[0]
assign w_0_out = (ts_local_pe_664_a0_oe & ts_local_pe_664_a0_out ) | (ts_local_pe_664_a1_oe & ts_local_pe_664_a1_out ) | (ts_local_pe_664_a2_oe & ts_local_pe_664_a2_out ) | 1'b0;
assign w_0_oe = ts_local_pe_664_a0_oe | ts_local_pe_664_a1_oe | ts_local_pe_664_a2_oe;
assign ts_local_pe_664_a0_in = w_0_in;
assign ts_local_pe_664_a1_in = w_0_in;
assign ts_local_pe_664_a2_in = w_0_in;

// --- Compiler-generated local PE for BUS w[1]
assign w_1_out = (ts_local_pe_665_a0_oe & ts_local_pe_665_a0_out ) | (ts_local_pe_665_a1_oe & ts_local_pe_665_a1_out ) | (ts_local_pe_665_a2_oe & ts_local_pe_665_a2_out ) | 1'b0;
assign w_1_oe = ts_local_pe_665_a0_oe | ts_local_pe_665_a1_oe | ts_local_pe_665_a2_oe;
assign ts_local_pe_665_a0_in = w_1_in;
assign ts_local_pe_665_a1_in = w_1_in;
assign ts_local_pe_665_a2_in = w_1_in;

// --- Compiler-generated local PE for BUS w[2]
assign w_2_out = (ts_local_pe_666_a0_oe & ts_local_pe_666_a0_out ) | (ts_local_pe_666_a1_oe & ts_local_pe_666_a1_out ) | (ts_local_pe_666_a2_oe & ts_local_pe_666_a2_out ) | 1'b0;
assign w_2_oe = ts_local_pe_666_a0_oe | ts_local_pe_666_a1_oe | ts_local_pe_666_a2_oe;
assign ts_local_pe_666_a0_in = w_2_in;
assign ts_local_pe_666_a1_in = w_2_in;
assign ts_local_pe_666_a2_in = w_2_in;

// --- Compiler-generated local PE for BUS w[3]
assign w_3_out = (ts_local_pe_667_a0_oe & ts_local_pe_667_a0_out ) | (ts_local_pe_667_a1_oe & ts_local_pe_667_a1_out ) | (ts_local_pe_667_a2_oe & ts_local_pe_667_a2_out ) | 1'b0;
assign w_3_oe = ts_local_pe_667_a0_oe | ts_local_pe_667_a1_oe | ts_local_pe_667_a2_oe;
assign ts_local_pe_667_a0_in = w_3_in;
assign ts_local_pe_667_a1_in = w_3_in;
assign ts_local_pe_667_a2_in = w_3_in;

// --- Compiler-generated local PE for BUS rw
assign rw_out = (ts_local_pe_668_a0_oe & ts_local_pe_668_a0_out ) | (ts_local_pe_668_a1_oe & ts_local_pe_668_a1_out ) | (ts_local_pe_668_a2_oe & ts_local_pe_668_a2_out ) | 1'b0;
assign rw_oe = ts_local_pe_668_a0_oe | ts_local_pe_668_a1_oe | ts_local_pe_668_a2_oe;
assign ts_local_pe_668_a0_in = rw_in;
assign ts_local_pe_668_a1_in = rw_in;
assign ts_local_pe_668_a2_in = rw_in;

// --- Compiler-generated local PE for BUS mreq
assign mreq_out = (ts_local_pe_669_a0_oe & ts_local_pe_669_a0_out ) | (ts_local_pe_669_a1_oe & ts_local_pe_669_a1_out ) | (ts_local_pe_669_a2_oe & ts_local_pe_669_a2_out ) | (ts_local_pe_669_a3_oe & ts_local_pe_669_a3_out ) | 1'b0;
assign mreq_oe = ts_local_pe_669_a0_oe | ts_local_pe_669_a1_oe | ts_local_pe_669_a2_oe | ts_local_pe_669_a3_oe;
assign ts_local_pe_669_a0_in = mreq_in;
assign ts_local_pe_669_a1_in = mreq_in;
assign ts_local_pe_669_a2_in = mreq_in;
assign ts_local_pe_669_a3_in = mreq_in;

// --- Compiler-generated local PE for BUS dr[0]
assign dr_0_out = (ts_local_pe_670_a0_oe & ts_local_pe_670_a0_out ) | (ts_local_pe_670_a1_oe & ts_local_pe_670_a1_out ) | (ts_local_pe_670_a2_oe & ts_local_pe_670_a2_out ) | (ts_local_pe_670_a3_oe & ts_local_pe_670_a3_out ) | (ts_local_pe_670_a4_oe & ts_local_pe_670_a4_out ) | (ts_local_pe_670_a5_oe & ts_local_pe_670_a5_out ) | (ts_local_pe_670_a6_oe & ts_local_pe_670_a6_out ) | (ts_local_pe_670_a7_oe & ts_local_pe_670_a7_out ) | 1'b0;
assign dr_0_oe = ts_local_pe_670_a0_oe | ts_local_pe_670_a1_oe | ts_local_pe_670_a2_oe | ts_local_pe_670_a3_oe | ts_local_pe_670_a4_oe | ts_local_pe_670_a5_oe | ts_local_pe_670_a6_oe | ts_local_pe_670_a7_oe;
assign ts_local_pe_670_a0_in = dr_0_in;
assign ts_local_pe_670_a1_in = dr_0_in;
assign ts_local_pe_670_a2_in = dr_0_in;
assign ts_local_pe_670_a3_in = dr_0_in;
assign ts_local_pe_670_a4_in = dr_0_in;
assign ts_local_pe_670_a5_in = dr_0_in;
assign ts_local_pe_670_a6_in = dr_0_in;
assign ts_local_pe_670_a7_in = dr_0_in;

// --- Compiler-generated local PE for BUS dr[1]
assign dr_1_out = (ts_local_pe_671_a0_oe & ts_local_pe_671_a0_out ) | (ts_local_pe_671_a1_oe & ts_local_pe_671_a1_out ) | (ts_local_pe_671_a2_oe & ts_local_pe_671_a2_out ) | (ts_local_pe_671_a3_oe & ts_local_pe_671_a3_out ) | (ts_local_pe_671_a4_oe & ts_local_pe_671_a4_out ) | (ts_local_pe_671_a5_oe & ts_local_pe_671_a5_out ) | (ts_local_pe_671_a6_oe & ts_local_pe_671_a6_out ) | (ts_local_pe_671_a7_oe & ts_local_pe_671_a7_out ) | 1'b0;
assign dr_1_oe = ts_local_pe_671_a0_oe | ts_local_pe_671_a1_oe | ts_local_pe_671_a2_oe | ts_local_pe_671_a3_oe | ts_local_pe_671_a4_oe | ts_local_pe_671_a5_oe | ts_local_pe_671_a6_oe | ts_local_pe_671_a7_oe;
assign ts_local_pe_671_a0_in = dr_1_in;
assign ts_local_pe_671_a1_in = dr_1_in;
assign ts_local_pe_671_a2_in = dr_1_in;
assign ts_local_pe_671_a3_in = dr_1_in;
assign ts_local_pe_671_a4_in = dr_1_in;
assign ts_local_pe_671_a5_in = dr_1_in;
assign ts_local_pe_671_a6_in = dr_1_in;
assign ts_local_pe_671_a7_in = dr_1_in;

// --- Compiler-generated local PE for BUS dr[2]
assign dr_2_out = (ts_local_pe_672_a0_oe & ts_local_pe_672_a0_out ) | (ts_local_pe_672_a1_oe & ts_local_pe_672_a1_out ) | (ts_local_pe_672_a2_oe & ts_local_pe_672_a2_out ) | (ts_local_pe_672_a3_oe & ts_local_pe_672_a3_out ) | (ts_local_pe_672_a4_oe & ts_local_pe_672_a4_out ) | (ts_local_pe_672_a5_oe & ts_local_pe_672_a5_out ) | (ts_local_pe_672_a6_oe & ts_local_pe_672_a6_out ) | (ts_local_pe_672_a7_oe & ts_local_pe_672_a7_out ) | 1'b0;
assign dr_2_oe = ts_local_pe_672_a0_oe | ts_local_pe_672_a1_oe | ts_local_pe_672_a2_oe | ts_local_pe_672_a3_oe | ts_local_pe_672_a4_oe | ts_local_pe_672_a5_oe | ts_local_pe_672_a6_oe | ts_local_pe_672_a7_oe;
assign ts_local_pe_672_a0_in = dr_2_in;
assign ts_local_pe_672_a1_in = dr_2_in;
assign ts_local_pe_672_a2_in = dr_2_in;
assign ts_local_pe_672_a3_in = dr_2_in;
assign ts_local_pe_672_a4_in = dr_2_in;
assign ts_local_pe_672_a5_in = dr_2_in;
assign ts_local_pe_672_a6_in = dr_2_in;
assign ts_local_pe_672_a7_in = dr_2_in;

// --- Compiler-generated local PE for BUS dr[3]
assign dr_3_out = (ts_local_pe_673_a0_oe & ts_local_pe_673_a0_out ) | (ts_local_pe_673_a1_oe & ts_local_pe_673_a1_out ) | (ts_local_pe_673_a2_oe & ts_local_pe_673_a2_out ) | (ts_local_pe_673_a3_oe & ts_local_pe_673_a3_out ) | (ts_local_pe_673_a4_oe & ts_local_pe_673_a4_out ) | (ts_local_pe_673_a5_oe & ts_local_pe_673_a5_out ) | (ts_local_pe_673_a6_oe & ts_local_pe_673_a6_out ) | (ts_local_pe_673_a7_oe & ts_local_pe_673_a7_out ) | 1'b0;
assign dr_3_oe = ts_local_pe_673_a0_oe | ts_local_pe_673_a1_oe | ts_local_pe_673_a2_oe | ts_local_pe_673_a3_oe | ts_local_pe_673_a4_oe | ts_local_pe_673_a5_oe | ts_local_pe_673_a6_oe | ts_local_pe_673_a7_oe;
assign ts_local_pe_673_a0_in = dr_3_in;
assign ts_local_pe_673_a1_in = dr_3_in;
assign ts_local_pe_673_a2_in = dr_3_in;
assign ts_local_pe_673_a3_in = dr_3_in;
assign ts_local_pe_673_a4_in = dr_3_in;
assign ts_local_pe_673_a5_in = dr_3_in;
assign ts_local_pe_673_a6_in = dr_3_in;
assign ts_local_pe_673_a7_in = dr_3_in;

// --- Compiler-generated local PE for BUS dr[4]
assign dr_4_out = (ts_local_pe_674_a0_oe & ts_local_pe_674_a0_out ) | (ts_local_pe_674_a1_oe & ts_local_pe_674_a1_out ) | (ts_local_pe_674_a2_oe & ts_local_pe_674_a2_out ) | (ts_local_pe_674_a3_oe & ts_local_pe_674_a3_out ) | (ts_local_pe_674_a4_oe & ts_local_pe_674_a4_out ) | (ts_local_pe_674_a5_oe & ts_local_pe_674_a5_out ) | (ts_local_pe_674_a6_oe & ts_local_pe_674_a6_out ) | (ts_local_pe_674_a7_oe & ts_local_pe_674_a7_out ) | 1'b0;
assign dr_4_oe = ts_local_pe_674_a0_oe | ts_local_pe_674_a1_oe | ts_local_pe_674_a2_oe | ts_local_pe_674_a3_oe | ts_local_pe_674_a4_oe | ts_local_pe_674_a5_oe | ts_local_pe_674_a6_oe | ts_local_pe_674_a7_oe;
assign ts_local_pe_674_a0_in = dr_4_in;
assign ts_local_pe_674_a1_in = dr_4_in;
assign ts_local_pe_674_a2_in = dr_4_in;
assign ts_local_pe_674_a3_in = dr_4_in;
assign ts_local_pe_674_a4_in = dr_4_in;
assign ts_local_pe_674_a5_in = dr_4_in;
assign ts_local_pe_674_a6_in = dr_4_in;
assign ts_local_pe_674_a7_in = dr_4_in;

// --- Compiler-generated local PE for BUS dr[5]
assign dr_5_out = (ts_local_pe_675_a0_oe & ts_local_pe_675_a0_out ) | (ts_local_pe_675_a1_oe & ts_local_pe_675_a1_out ) | (ts_local_pe_675_a2_oe & ts_local_pe_675_a2_out ) | (ts_local_pe_675_a3_oe & ts_local_pe_675_a3_out ) | (ts_local_pe_675_a4_oe & ts_local_pe_675_a4_out ) | (ts_local_pe_675_a5_oe & ts_local_pe_675_a5_out ) | (ts_local_pe_675_a6_oe & ts_local_pe_675_a6_out ) | (ts_local_pe_675_a7_oe & ts_local_pe_675_a7_out ) | 1'b0;
assign dr_5_oe = ts_local_pe_675_a0_oe | ts_local_pe_675_a1_oe | ts_local_pe_675_a2_oe | ts_local_pe_675_a3_oe | ts_local_pe_675_a4_oe | ts_local_pe_675_a5_oe | ts_local_pe_675_a6_oe | ts_local_pe_675_a7_oe;
assign ts_local_pe_675_a0_in = dr_5_in;
assign ts_local_pe_675_a1_in = dr_5_in;
assign ts_local_pe_675_a2_in = dr_5_in;
assign ts_local_pe_675_a3_in = dr_5_in;
assign ts_local_pe_675_a4_in = dr_5_in;
assign ts_local_pe_675_a5_in = dr_5_in;
assign ts_local_pe_675_a6_in = dr_5_in;
assign ts_local_pe_675_a7_in = dr_5_in;

// --- Compiler-generated local PE for BUS dr[6]
assign dr_6_out = (ts_local_pe_676_a0_oe & ts_local_pe_676_a0_out ) | (ts_local_pe_676_a1_oe & ts_local_pe_676_a1_out ) | (ts_local_pe_676_a2_oe & ts_local_pe_676_a2_out ) | (ts_local_pe_676_a3_oe & ts_local_pe_676_a3_out ) | (ts_local_pe_676_a4_oe & ts_local_pe_676_a4_out ) | (ts_local_pe_676_a5_oe & ts_local_pe_676_a5_out ) | (ts_local_pe_676_a6_oe & ts_local_pe_676_a6_out ) | (ts_local_pe_676_a7_oe & ts_local_pe_676_a7_out ) | 1'b0;
assign dr_6_oe = ts_local_pe_676_a0_oe | ts_local_pe_676_a1_oe | ts_local_pe_676_a2_oe | ts_local_pe_676_a3_oe | ts_local_pe_676_a4_oe | ts_local_pe_676_a5_oe | ts_local_pe_676_a6_oe | ts_local_pe_676_a7_oe;
assign ts_local_pe_676_a0_in = dr_6_in;
assign ts_local_pe_676_a1_in = dr_6_in;
assign ts_local_pe_676_a2_in = dr_6_in;
assign ts_local_pe_676_a3_in = dr_6_in;
assign ts_local_pe_676_a4_in = dr_6_in;
assign ts_local_pe_676_a5_in = dr_6_in;
assign ts_local_pe_676_a6_in = dr_6_in;
assign ts_local_pe_676_a7_in = dr_6_in;

// --- Compiler-generated local PE for BUS dr[7]
assign dr_7_out = (ts_local_pe_677_a0_oe & ts_local_pe_677_a0_out ) | (ts_local_pe_677_a1_oe & ts_local_pe_677_a1_out ) | (ts_local_pe_677_a2_oe & ts_local_pe_677_a2_out ) | (ts_local_pe_677_a3_oe & ts_local_pe_677_a3_out ) | (ts_local_pe_677_a4_oe & ts_local_pe_677_a4_out ) | (ts_local_pe_677_a5_oe & ts_local_pe_677_a5_out ) | (ts_local_pe_677_a6_oe & ts_local_pe_677_a6_out ) | (ts_local_pe_677_a7_oe & ts_local_pe_677_a7_out ) | 1'b0;
assign dr_7_oe = ts_local_pe_677_a0_oe | ts_local_pe_677_a1_oe | ts_local_pe_677_a2_oe | ts_local_pe_677_a3_oe | ts_local_pe_677_a4_oe | ts_local_pe_677_a5_oe | ts_local_pe_677_a6_oe | ts_local_pe_677_a7_oe;
assign ts_local_pe_677_a0_in = dr_7_in;
assign ts_local_pe_677_a1_in = dr_7_in;
assign ts_local_pe_677_a2_in = dr_7_in;
assign ts_local_pe_677_a3_in = dr_7_in;
assign ts_local_pe_677_a4_in = dr_7_in;
assign ts_local_pe_677_a5_in = dr_7_in;
assign ts_local_pe_677_a6_in = dr_7_in;
assign ts_local_pe_677_a7_in = dr_7_in;

// --- Compiler-generated local PE for BUS dr[8]
assign dr_8_out = (ts_local_pe_678_a0_oe & ts_local_pe_678_a0_out ) | (ts_local_pe_678_a1_oe & ts_local_pe_678_a1_out ) | (ts_local_pe_678_a2_oe & ts_local_pe_678_a2_out ) | (ts_local_pe_678_a3_oe & ts_local_pe_678_a3_out ) | (ts_local_pe_678_a4_oe & ts_local_pe_678_a4_out ) | (ts_local_pe_678_a5_oe & ts_local_pe_678_a5_out ) | (ts_local_pe_678_a6_oe & ts_local_pe_678_a6_out ) | (ts_local_pe_678_a7_oe & ts_local_pe_678_a7_out ) | 1'b0;
assign dr_8_oe = ts_local_pe_678_a0_oe | ts_local_pe_678_a1_oe | ts_local_pe_678_a2_oe | ts_local_pe_678_a3_oe | ts_local_pe_678_a4_oe | ts_local_pe_678_a5_oe | ts_local_pe_678_a6_oe | ts_local_pe_678_a7_oe;
assign ts_local_pe_678_a0_in = dr_8_in;
assign ts_local_pe_678_a1_in = dr_8_in;
assign ts_local_pe_678_a2_in = dr_8_in;
assign ts_local_pe_678_a3_in = dr_8_in;
assign ts_local_pe_678_a4_in = dr_8_in;
assign ts_local_pe_678_a5_in = dr_8_in;
assign ts_local_pe_678_a6_in = dr_8_in;
assign ts_local_pe_678_a7_in = dr_8_in;

// --- Compiler-generated local PE for BUS dr[9]
assign dr_9_out = (ts_local_pe_679_a0_oe & ts_local_pe_679_a0_out ) | (ts_local_pe_679_a1_oe & ts_local_pe_679_a1_out ) | (ts_local_pe_679_a2_oe & ts_local_pe_679_a2_out ) | (ts_local_pe_679_a3_oe & ts_local_pe_679_a3_out ) | (ts_local_pe_679_a4_oe & ts_local_pe_679_a4_out ) | (ts_local_pe_679_a5_oe & ts_local_pe_679_a5_out ) | (ts_local_pe_679_a6_oe & ts_local_pe_679_a6_out ) | 1'b0;
assign dr_9_oe = ts_local_pe_679_a0_oe | ts_local_pe_679_a1_oe | ts_local_pe_679_a2_oe | ts_local_pe_679_a3_oe | ts_local_pe_679_a4_oe | ts_local_pe_679_a5_oe | ts_local_pe_679_a6_oe;
assign ts_local_pe_679_a0_in = dr_9_in;
assign ts_local_pe_679_a1_in = dr_9_in;
assign ts_local_pe_679_a2_in = dr_9_in;
assign ts_local_pe_679_a3_in = dr_9_in;
assign ts_local_pe_679_a4_in = dr_9_in;
assign ts_local_pe_679_a5_in = dr_9_in;
assign ts_local_pe_679_a6_in = dr_9_in;

// --- Compiler-generated local PE for BUS dr[10]
assign dr_10_out = (ts_local_pe_680_a0_oe & ts_local_pe_680_a0_out ) | (ts_local_pe_680_a1_oe & ts_local_pe_680_a1_out ) | (ts_local_pe_680_a2_oe & ts_local_pe_680_a2_out ) | (ts_local_pe_680_a3_oe & ts_local_pe_680_a3_out ) | (ts_local_pe_680_a4_oe & ts_local_pe_680_a4_out ) | (ts_local_pe_680_a5_oe & ts_local_pe_680_a5_out ) | (ts_local_pe_680_a6_oe & ts_local_pe_680_a6_out ) | 1'b0;
assign dr_10_oe = ts_local_pe_680_a0_oe | ts_local_pe_680_a1_oe | ts_local_pe_680_a2_oe | ts_local_pe_680_a3_oe | ts_local_pe_680_a4_oe | ts_local_pe_680_a5_oe | ts_local_pe_680_a6_oe;
assign ts_local_pe_680_a0_in = dr_10_in;
assign ts_local_pe_680_a1_in = dr_10_in;
assign ts_local_pe_680_a2_in = dr_10_in;
assign ts_local_pe_680_a3_in = dr_10_in;
assign ts_local_pe_680_a4_in = dr_10_in;
assign ts_local_pe_680_a5_in = dr_10_in;
assign ts_local_pe_680_a6_in = dr_10_in;

// --- Compiler-generated local PE for BUS dr[11]
assign dr_11_out = (ts_local_pe_681_a0_oe & ts_local_pe_681_a0_out ) | (ts_local_pe_681_a1_oe & ts_local_pe_681_a1_out ) | (ts_local_pe_681_a2_oe & ts_local_pe_681_a2_out ) | (ts_local_pe_681_a3_oe & ts_local_pe_681_a3_out ) | (ts_local_pe_681_a4_oe & ts_local_pe_681_a4_out ) | (ts_local_pe_681_a5_oe & ts_local_pe_681_a5_out ) | (ts_local_pe_681_a6_oe & ts_local_pe_681_a6_out ) | 1'b0;
assign dr_11_oe = ts_local_pe_681_a0_oe | ts_local_pe_681_a1_oe | ts_local_pe_681_a2_oe | ts_local_pe_681_a3_oe | ts_local_pe_681_a4_oe | ts_local_pe_681_a5_oe | ts_local_pe_681_a6_oe;
assign ts_local_pe_681_a0_in = dr_11_in;
assign ts_local_pe_681_a1_in = dr_11_in;
assign ts_local_pe_681_a2_in = dr_11_in;
assign ts_local_pe_681_a3_in = dr_11_in;
assign ts_local_pe_681_a4_in = dr_11_in;
assign ts_local_pe_681_a5_in = dr_11_in;
assign ts_local_pe_681_a6_in = dr_11_in;

// --- Compiler-generated local PE for BUS dr[12]
assign dr_12_out = (ts_local_pe_682_a0_oe & ts_local_pe_682_a0_out ) | (ts_local_pe_682_a1_oe & ts_local_pe_682_a1_out ) | (ts_local_pe_682_a2_oe & ts_local_pe_682_a2_out ) | (ts_local_pe_682_a3_oe & ts_local_pe_682_a3_out ) | (ts_local_pe_682_a4_oe & ts_local_pe_682_a4_out ) | (ts_local_pe_682_a5_oe & ts_local_pe_682_a5_out ) | (ts_local_pe_682_a6_oe & ts_local_pe_682_a6_out ) | 1'b0;
assign dr_12_oe = ts_local_pe_682_a0_oe | ts_local_pe_682_a1_oe | ts_local_pe_682_a2_oe | ts_local_pe_682_a3_oe | ts_local_pe_682_a4_oe | ts_local_pe_682_a5_oe | ts_local_pe_682_a6_oe;
assign ts_local_pe_682_a0_in = dr_12_in;
assign ts_local_pe_682_a1_in = dr_12_in;
assign ts_local_pe_682_a2_in = dr_12_in;
assign ts_local_pe_682_a3_in = dr_12_in;
assign ts_local_pe_682_a4_in = dr_12_in;
assign ts_local_pe_682_a5_in = dr_12_in;
assign ts_local_pe_682_a6_in = dr_12_in;

// --- Compiler-generated local PE for BUS dr[13]
assign dr_13_out = (ts_local_pe_683_a0_oe & ts_local_pe_683_a0_out ) | (ts_local_pe_683_a1_oe & ts_local_pe_683_a1_out ) | (ts_local_pe_683_a2_oe & ts_local_pe_683_a2_out ) | (ts_local_pe_683_a3_oe & ts_local_pe_683_a3_out ) | (ts_local_pe_683_a4_oe & ts_local_pe_683_a4_out ) | (ts_local_pe_683_a5_oe & ts_local_pe_683_a5_out ) | (ts_local_pe_683_a6_oe & ts_local_pe_683_a6_out ) | 1'b0;
assign dr_13_oe = ts_local_pe_683_a0_oe | ts_local_pe_683_a1_oe | ts_local_pe_683_a2_oe | ts_local_pe_683_a3_oe | ts_local_pe_683_a4_oe | ts_local_pe_683_a5_oe | ts_local_pe_683_a6_oe;
assign ts_local_pe_683_a0_in = dr_13_in;
assign ts_local_pe_683_a1_in = dr_13_in;
assign ts_local_pe_683_a2_in = dr_13_in;
assign ts_local_pe_683_a3_in = dr_13_in;
assign ts_local_pe_683_a4_in = dr_13_in;
assign ts_local_pe_683_a5_in = dr_13_in;
assign ts_local_pe_683_a6_in = dr_13_in;

// --- Compiler-generated local PE for BUS dr[14]
assign dr_14_out = (ts_local_pe_684_a0_oe & ts_local_pe_684_a0_out ) | (ts_local_pe_684_a1_oe & ts_local_pe_684_a1_out ) | (ts_local_pe_684_a2_oe & ts_local_pe_684_a2_out ) | (ts_local_pe_684_a3_oe & ts_local_pe_684_a3_out ) | (ts_local_pe_684_a4_oe & ts_local_pe_684_a4_out ) | (ts_local_pe_684_a5_oe & ts_local_pe_684_a5_out ) | (ts_local_pe_684_a6_oe & ts_local_pe_684_a6_out ) | 1'b0;
assign dr_14_oe = ts_local_pe_684_a0_oe | ts_local_pe_684_a1_oe | ts_local_pe_684_a2_oe | ts_local_pe_684_a3_oe | ts_local_pe_684_a4_oe | ts_local_pe_684_a5_oe | ts_local_pe_684_a6_oe;
assign ts_local_pe_684_a0_in = dr_14_in;
assign ts_local_pe_684_a1_in = dr_14_in;
assign ts_local_pe_684_a2_in = dr_14_in;
assign ts_local_pe_684_a3_in = dr_14_in;
assign ts_local_pe_684_a4_in = dr_14_in;
assign ts_local_pe_684_a5_in = dr_14_in;
assign ts_local_pe_684_a6_in = dr_14_in;

// --- Compiler-generated local PE for BUS dr[15]
assign dr_15_out = (ts_local_pe_685_a0_oe & ts_local_pe_685_a0_out ) | (ts_local_pe_685_a1_oe & ts_local_pe_685_a1_out ) | (ts_local_pe_685_a2_oe & ts_local_pe_685_a2_out ) | (ts_local_pe_685_a3_oe & ts_local_pe_685_a3_out ) | (ts_local_pe_685_a4_oe & ts_local_pe_685_a4_out ) | (ts_local_pe_685_a5_oe & ts_local_pe_685_a5_out ) | (ts_local_pe_685_a6_oe & ts_local_pe_685_a6_out ) | 1'b0;
assign dr_15_oe = ts_local_pe_685_a0_oe | ts_local_pe_685_a1_oe | ts_local_pe_685_a2_oe | ts_local_pe_685_a3_oe | ts_local_pe_685_a4_oe | ts_local_pe_685_a5_oe | ts_local_pe_685_a6_oe;
assign ts_local_pe_685_a0_in = dr_15_in;
assign ts_local_pe_685_a1_in = dr_15_in;
assign ts_local_pe_685_a2_in = dr_15_in;
assign ts_local_pe_685_a3_in = dr_15_in;
assign ts_local_pe_685_a4_in = dr_15_in;
assign ts_local_pe_685_a5_in = dr_15_in;
assign ts_local_pe_685_a6_in = dr_15_in;

// --- Compiler-generated local PE for BUS justify
assign justify_out = (ts_local_pe_686_a0_oe & ts_local_pe_686_a0_out ) | (ts_local_pe_686_a1_oe & ts_local_pe_686_a1_out ) | (ts_local_pe_686_a2_oe & ts_local_pe_686_a2_out ) | 1'b0;
assign justify_oe = ts_local_pe_686_a0_oe | ts_local_pe_686_a1_oe | ts_local_pe_686_a2_oe;
assign ts_local_pe_686_a0_in = justify_in;
assign ts_local_pe_686_a1_in = justify_in;
assign ts_local_pe_686_a2_in = justify_in;

// --- Compiler-generated local LB for BUS wd[0]
assign wd_0_in = wd_0_out;

// --- Compiler-generated local LB for BUS wd[1]
assign wd_1_in = wd_1_out;

// --- Compiler-generated local LB for BUS wd[2]
assign wd_2_in = wd_2_out;

// --- Compiler-generated local LB for BUS wd[3]
assign wd_3_in = wd_3_out;

// --- Compiler-generated local LB for BUS wd[4]
assign wd_4_in = wd_4_out;

// --- Compiler-generated local LB for BUS wd[5]
assign wd_5_in = wd_5_out;

// --- Compiler-generated local LB for BUS wd[6]
assign wd_6_in = wd_6_out;

// --- Compiler-generated local LB for BUS wd[7]
assign wd_7_in = wd_7_out;

// --- Compiler-generated local LB for BUS wd[8]
assign wd_8_in = wd_8_out;

// --- Compiler-generated local LB for BUS wd[9]
assign wd_9_in = wd_9_out;

// --- Compiler-generated local LB for BUS wd[10]
assign wd_10_in = wd_10_out;

// --- Compiler-generated local LB for BUS wd[11]
assign wd_11_in = wd_11_out;

// --- Compiler-generated local LB for BUS wd[12]
assign wd_12_in = wd_12_out;

// --- Compiler-generated local LB for BUS wd[13]
assign wd_13_in = wd_13_out;

// --- Compiler-generated local LB for BUS wd[14]
assign wd_14_in = wd_14_out;

// --- Compiler-generated local LB for BUS wd[15]
assign wd_15_in = wd_15_out;

// --- Compiler-generated local LB for BUS wd[16]
assign wd_16_in = wd_16_out;

// --- Compiler-generated local LB for BUS wd[17]
assign wd_17_in = wd_17_out;

// --- Compiler-generated local LB for BUS wd[18]
assign wd_18_in = wd_18_out;

// --- Compiler-generated local LB for BUS wd[19]
assign wd_19_in = wd_19_out;

// --- Compiler-generated local LB for BUS wd[20]
assign wd_20_in = wd_20_out;

// --- Compiler-generated local LB for BUS wd[21]
assign wd_21_in = wd_21_out;

// --- Compiler-generated local LB for BUS wd[22]
assign wd_22_in = wd_22_out;

// --- Compiler-generated local LB for BUS wd[23]
assign wd_23_in = wd_23_out;

// --- Compiler-generated local LB for BUS wd[24]
assign wd_24_in = wd_24_out;

// --- Compiler-generated local LB for BUS wd[25]
assign wd_25_in = wd_25_out;

// --- Compiler-generated local LB for BUS wd[26]
assign wd_26_in = wd_26_out;

// --- Compiler-generated local LB for BUS wd[27]
assign wd_27_in = wd_27_out;

// --- Compiler-generated local LB for BUS wd[28]
assign wd_28_in = wd_28_out;

// --- Compiler-generated local LB for BUS wd[29]
assign wd_29_in = wd_29_out;

// --- Compiler-generated local LB for BUS wd[30]
assign wd_30_in = wd_30_out;

// --- Compiler-generated local LB for BUS wd[31]
assign wd_31_in = wd_31_out;

// --- Compiler-generated local LB for BUS wd[32]
assign wd_32_in = wd_32_out;

// --- Compiler-generated local LB for BUS wd[33]
assign wd_33_in = wd_33_out;

// --- Compiler-generated local LB for BUS wd[34]
assign wd_34_in = wd_34_out;

// --- Compiler-generated local LB for BUS wd[35]
assign wd_35_in = wd_35_out;

// --- Compiler-generated local LB for BUS wd[36]
assign wd_36_in = wd_36_out;

// --- Compiler-generated local LB for BUS wd[37]
assign wd_37_in = wd_37_out;

// --- Compiler-generated local LB for BUS wd[38]
assign wd_38_in = wd_38_out;

// --- Compiler-generated local LB for BUS wd[39]
assign wd_39_in = wd_39_out;

// --- Compiler-generated local LB for BUS wd[40]
assign wd_40_in = wd_40_out;

// --- Compiler-generated local LB for BUS wd[41]
assign wd_41_in = wd_41_out;

// --- Compiler-generated local LB for BUS wd[42]
assign wd_42_in = wd_42_out;

// --- Compiler-generated local LB for BUS wd[43]
assign wd_43_in = wd_43_out;

// --- Compiler-generated local LB for BUS wd[44]
assign wd_44_in = wd_44_out;

// --- Compiler-generated local LB for BUS wd[45]
assign wd_45_in = wd_45_out;

// --- Compiler-generated local LB for BUS wd[46]
assign wd_46_in = wd_46_out;

// --- Compiler-generated local LB for BUS wd[47]
assign wd_47_in = wd_47_out;

// --- Compiler-generated local LB for BUS wd[48]
assign wd_48_in = wd_48_out;

// --- Compiler-generated local LB for BUS wd[49]
assign wd_49_in = wd_49_out;

// --- Compiler-generated local LB for BUS wd[50]
assign wd_50_in = wd_50_out;

// --- Compiler-generated local LB for BUS wd[51]
assign wd_51_in = wd_51_out;

// --- Compiler-generated local LB for BUS wd[52]
assign wd_52_in = wd_52_out;

// --- Compiler-generated local LB for BUS wd[53]
assign wd_53_in = wd_53_out;

// --- Compiler-generated local LB for BUS wd[54]
assign wd_54_in = wd_54_out;

// --- Compiler-generated local LB for BUS wd[55]
assign wd_55_in = wd_55_out;

// --- Compiler-generated local LB for BUS wd[56]
assign wd_56_in = wd_56_out;

// --- Compiler-generated local LB for BUS wd[57]
assign wd_57_in = wd_57_out;

// --- Compiler-generated local LB for BUS wd[58]
assign wd_58_in = wd_58_out;

// --- Compiler-generated local LB for BUS wd[59]
assign wd_59_in = wd_59_out;

// --- Compiler-generated local LB for BUS wd[60]
assign wd_60_in = wd_60_out;

// --- Compiler-generated local LB for BUS wd[61]
assign wd_61_in = wd_61_out;

// --- Compiler-generated local LB for BUS wd[62]
assign wd_62_in = wd_62_out;

// --- Compiler-generated local LB for BUS wd[63]
assign wd_63_in = wd_63_out;

// --- Compiler-generated local LB for BUS a[0]
assign a_0_in = a_0_out;

// --- Compiler-generated local LB for BUS a[1]
assign a_1_in = a_1_out;

// --- Compiler-generated local LB for BUS a[2]
assign a_2_in = a_2_out;

// --- Compiler-generated local LB for BUS a[3]
assign a_3_in = a_3_out;

// --- Compiler-generated local LB for BUS a[4]
assign a_4_in = a_4_out;

// --- Compiler-generated local LB for BUS a[5]
assign a_5_in = a_5_out;

// --- Compiler-generated local LB for BUS a[6]
assign a_6_in = a_6_out;

// --- Compiler-generated local LB for BUS a[7]
assign a_7_in = a_7_out;

// --- Compiler-generated local LB for BUS a[8]
assign a_8_in = a_8_out;

// --- Compiler-generated local LB for BUS a[9]
assign a_9_in = a_9_out;

// --- Compiler-generated local LB for BUS a[10]
assign a_10_in = a_10_out;

// --- Compiler-generated local LB for BUS a[11]
assign a_11_in = a_11_out;

// --- Compiler-generated local LB for BUS a[12]
assign a_12_in = a_12_out;

// --- Compiler-generated local LB for BUS a[13]
assign a_13_in = a_13_out;

// --- Compiler-generated local LB for BUS a[14]
assign a_14_in = a_14_out;

// --- Compiler-generated local LB for BUS a[15]
assign a_15_in = a_15_out;

// --- Compiler-generated local LB for BUS a[16]
assign a_16_in = a_16_out;

// --- Compiler-generated local LB for BUS a[17]
assign a_17_in = a_17_out;

// --- Compiler-generated local LB for BUS a[18]
assign a_18_in = a_18_out;

// --- Compiler-generated local LB for BUS a[19]
assign a_19_in = a_19_out;

// --- Compiler-generated local LB for BUS a[20]
assign a_20_in = a_20_out;

// --- Compiler-generated local LB for BUS a[21]
assign a_21_in = a_21_out;

// --- Compiler-generated local LB for BUS a[22]
assign a_22_in = a_22_out;

// --- Compiler-generated local LB for BUS a[23]
assign a_23_in = a_23_out;

// --- Compiler-generated local LB for BUS w[0]
assign w_0_in = w_0_out;

// --- Compiler-generated local LB for BUS w[1]
assign w_1_in = w_1_out;

// --- Compiler-generated local LB for BUS w[2]
assign w_2_in = w_2_out;

// --- Compiler-generated local LB for BUS w[3]
assign w_3_in = w_3_out;

// --- Compiler-generated local LB for BUS rw
assign rw_in = rw_out;

// --- Compiler-generated local LB for BUS mreq
assign mreq_in = mreq_out;

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

// --- Compiler-generated local LB for BUS justify
assign justify_in = justify_out;
endmodule
/* verilator lint_on LITENDIAN */
