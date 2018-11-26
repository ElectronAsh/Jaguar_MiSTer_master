/* verilator lint_off LITENDIAN */
`include "defs.v"

module ob
(
	input din_0,
	input din_1,
	input din_2,
	input din_3,
	input din_4,
	input din_5,
	input din_6,
	input din_7,
	input din_8,
	input din_9,
	input din_10,
	input din_11,
	input din_12,
	input din_13,
	input din_14,
	input din_15,
	input olp1w,
	input olp2w,
	input obfw,
	input ob0r,
	input ob1r,
	input ob2r,
	input ob3r,
	input start,
	input newdata_0,
	input newdata_1,
	input newdata_2,
	input newdata_3,
	input newdata_4,
	input newdata_5,
	input newdata_6,
	input newdata_7,
	input newdata_8,
	input newdata_9,
	input newdata_10,
	input newdata_11,
	input newdata_12,
	input newdata_13,
	input newdata_14,
	input newdata_15,
	input newdata_16,
	input newdata_17,
	input newdata_18,
	input newdata_19,
	input newdata_20,
	input newheight_0,
	input newheight_1,
	input newheight_2,
	input newheight_3,
	input newheight_4,
	input newheight_5,
	input newheight_6,
	input newheight_7,
	input newheight_8,
	input newheight_9,
	input newrem_0,
	input newrem_1,
	input newrem_2,
	input newrem_3,
	input newrem_4,
	input newrem_5,
	input newrem_6,
	input newrem_7,
	input obdready,
	input offscreen,
	input refack,
	input obback,
	input mack,
	input clk,
	input resetl,
	input vcc,
	input gnd,
	input vc_0,
	input vc_1,
	input vc_2,
	input vc_3,
	input vc_4,
	input vc_5,
	input vc_6,
	input vc_7,
	input vc_8,
	input vc_9,
	input vc_10,
	input wbkdone,
	input obdone,
	input heightnz,
	input d_0,
	input d_1,
	input d_2,
	input d_3,
	input d_4,
	input d_5,
	input d_6,
	input d_7,
	input d_8,
	input d_9,
	input d_10,
	input d_11,
	input d_12,
	input d_13,
	input d_14,
	input d_15,
	input d_16,
	input d_17,
	input d_18,
	input d_19,
	input d_20,
	input d_21,
	input d_22,
	input d_23,
	input d_24,
	input d_25,
	input d_26,
	input d_27,
	input d_28,
	input d_29,
	input d_30,
	input d_31,
	input d_32,
	input d_33,
	input d_34,
	input d_35,
	input d_36,
	input d_37,
	input d_38,
	input d_39,
	input d_40,
	input d_41,
	input d_42,
	input d_43,
	input d_44,
	input d_45,
	input d_46,
	input d_47,
	input d_48,
	input d_49,
	input d_50,
	input d_51,
	input d_52,
	input d_53,
	input d_54,
	input d_55,
	input d_56,
	input d_57,
	input d_58,
	input d_59,
	input d_60,
	input d_61,
	input d_62,
	input d_63,
	input blback,
	input grpback,
	input wet,
	input hcb_10,
	output scaled,
	output obdlatch,
	output mode1,
	output mode2,
	output mode4,
	output mode8,
	output mode16,
	output mode24,
	output rmw,
	output index_1,
	output index_2,
	output index_3,
	output index_4,
	output index_5,
	output index_6,
	output index_7,
	output xld,
	output reflected,
	output transen,
	output hscale_0,
	output hscale_1,
	output hscale_2,
	output hscale_3,
	output hscale_4,
	output hscale_5,
	output hscale_6,
	output hscale_7,
	output dwidth_0,
	output dwidth_1,
	output dwidth_2,
	output dwidth_3,
	output dwidth_4,
	output dwidth_5,
	output dwidth_6,
	output dwidth_7,
	output dwidth_8,
	output dwidth_9,
	output obbreq,
	output vscale_0,
	output vscale_1,
	output vscale_2,
	output vscale_3,
	output vscale_4,
	output vscale_5,
	output vscale_6,
	output vscale_7,
	output wbkstart,
	output grpintreq,
	output obint,
	output obld_0,
	output obld_1,
	output obld_2,
	output startref,
	output vgy,
	output vey,
	output vly,
	output wd_0_out,
	output wd_0_oe,
	input wd_0_in,
	output wd_1_out,
	output wd_1_oe,
	input wd_1_in,
	output wd_2_out,
	output wd_2_oe,
	input wd_2_in,
	output wd_3_out,
	output wd_3_oe,
	input wd_3_in,
	output wd_4_out,
	output wd_4_oe,
	input wd_4_in,
	output wd_5_out,
	output wd_5_oe,
	input wd_5_in,
	output wd_6_out,
	output wd_6_oe,
	input wd_6_in,
	output wd_7_out,
	output wd_7_oe,
	input wd_7_in,
	output wd_8_out,
	output wd_8_oe,
	input wd_8_in,
	output wd_9_out,
	output wd_9_oe,
	input wd_9_in,
	output wd_10_out,
	output wd_10_oe,
	input wd_10_in,
	output wd_11_out,
	output wd_11_oe,
	input wd_11_in,
	output wd_12_out,
	output wd_12_oe,
	input wd_12_in,
	output wd_13_out,
	output wd_13_oe,
	input wd_13_in,
	output wd_14_out,
	output wd_14_oe,
	input wd_14_in,
	output wd_15_out,
	output wd_15_oe,
	input wd_15_in,
	output wd_16_out,
	output wd_16_oe,
	input wd_16_in,
	output wd_17_out,
	output wd_17_oe,
	input wd_17_in,
	output wd_18_out,
	output wd_18_oe,
	input wd_18_in,
	output wd_19_out,
	output wd_19_oe,
	input wd_19_in,
	output wd_20_out,
	output wd_20_oe,
	input wd_20_in,
	output wd_21_out,
	output wd_21_oe,
	input wd_21_in,
	output wd_22_out,
	output wd_22_oe,
	input wd_22_in,
	output wd_23_out,
	output wd_23_oe,
	input wd_23_in,
	output wd_24_out,
	output wd_24_oe,
	input wd_24_in,
	output wd_25_out,
	output wd_25_oe,
	input wd_25_in,
	output wd_26_out,
	output wd_26_oe,
	input wd_26_in,
	output wd_27_out,
	output wd_27_oe,
	input wd_27_in,
	output wd_28_out,
	output wd_28_oe,
	input wd_28_in,
	output wd_29_out,
	output wd_29_oe,
	input wd_29_in,
	output wd_30_out,
	output wd_30_oe,
	input wd_30_in,
	output wd_31_out,
	output wd_31_oe,
	input wd_31_in,
	output wd_32_out,
	output wd_32_oe,
	input wd_32_in,
	output wd_33_out,
	output wd_33_oe,
	input wd_33_in,
	output wd_34_out,
	output wd_34_oe,
	input wd_34_in,
	output wd_35_out,
	output wd_35_oe,
	input wd_35_in,
	output wd_36_out,
	output wd_36_oe,
	input wd_36_in,
	output wd_37_out,
	output wd_37_oe,
	input wd_37_in,
	output wd_38_out,
	output wd_38_oe,
	input wd_38_in,
	output wd_39_out,
	output wd_39_oe,
	input wd_39_in,
	output wd_40_out,
	output wd_40_oe,
	input wd_40_in,
	output wd_41_out,
	output wd_41_oe,
	input wd_41_in,
	output wd_42_out,
	output wd_42_oe,
	input wd_42_in,
	output wd_43_out,
	output wd_43_oe,
	input wd_43_in,
	output wd_44_out,
	output wd_44_oe,
	input wd_44_in,
	output wd_45_out,
	output wd_45_oe,
	input wd_45_in,
	output wd_46_out,
	output wd_46_oe,
	input wd_46_in,
	output wd_47_out,
	output wd_47_oe,
	input wd_47_in,
	output wd_48_out,
	output wd_48_oe,
	input wd_48_in,
	output wd_49_out,
	output wd_49_oe,
	input wd_49_in,
	output wd_50_out,
	output wd_50_oe,
	input wd_50_in,
	output wd_51_out,
	output wd_51_oe,
	input wd_51_in,
	output wd_52_out,
	output wd_52_oe,
	input wd_52_in,
	output wd_53_out,
	output wd_53_oe,
	input wd_53_in,
	output wd_54_out,
	output wd_54_oe,
	input wd_54_in,
	output wd_55_out,
	output wd_55_oe,
	input wd_55_in,
	output wd_56_out,
	output wd_56_oe,
	input wd_56_in,
	output wd_57_out,
	output wd_57_oe,
	input wd_57_in,
	output wd_58_out,
	output wd_58_oe,
	input wd_58_in,
	output wd_59_out,
	output wd_59_oe,
	input wd_59_in,
	output wd_60_out,
	output wd_60_oe,
	input wd_60_in,
	output wd_61_out,
	output wd_61_oe,
	input wd_61_in,
	output wd_62_out,
	output wd_62_oe,
	input wd_62_in,
	output wd_63_out,
	output wd_63_oe,
	input wd_63_in,
	output a_0_out,
	output a_0_oe,
	input a_0_in,
	output a_1_out,
	output a_1_oe,
	input a_1_in,
	output a_2_out,
	output a_2_oe,
	input a_2_in,
	output a_3_out,
	output a_3_oe,
	input a_3_in,
	output a_4_out,
	output a_4_oe,
	input a_4_in,
	output a_5_out,
	output a_5_oe,
	input a_5_in,
	output a_6_out,
	output a_6_oe,
	input a_6_in,
	output a_7_out,
	output a_7_oe,
	input a_7_in,
	output a_8_out,
	output a_8_oe,
	input a_8_in,
	output a_9_out,
	output a_9_oe,
	input a_9_in,
	output a_10_out,
	output a_10_oe,
	input a_10_in,
	output a_11_out,
	output a_11_oe,
	input a_11_in,
	output a_12_out,
	output a_12_oe,
	input a_12_in,
	output a_13_out,
	output a_13_oe,
	input a_13_in,
	output a_14_out,
	output a_14_oe,
	input a_14_in,
	output a_15_out,
	output a_15_oe,
	input a_15_in,
	output a_16_out,
	output a_16_oe,
	input a_16_in,
	output a_17_out,
	output a_17_oe,
	input a_17_in,
	output a_18_out,
	output a_18_oe,
	input a_18_in,
	output a_19_out,
	output a_19_oe,
	input a_19_in,
	output a_20_out,
	output a_20_oe,
	input a_20_in,
	output a_21_out,
	output a_21_oe,
	input a_21_in,
	output a_22_out,
	output a_22_oe,
	input a_22_in,
	output a_23_out,
	output a_23_oe,
	input a_23_in,
	output w_0_out,
	output w_0_oe,
	input w_0_in,
	output w_1_out,
	output w_1_oe,
	input w_1_in,
	output w_2_out,
	output w_2_oe,
	input w_2_in,
	output w_3_out,
	output w_3_oe,
	input w_3_in,
	output rw_out,
	output rw_oe,
	input rw_in,
	output mreq_out,
	output mreq_oe,
	input mreq_in,
	output justify_out,
	output justify_oe,
	input justify_in,
	output dr_0_out,
	output dr_0_oe,
	input dr_0_in,
	output dr_1_out,
	output dr_1_oe,
	input dr_1_in,
	output dr_2_out,
	output dr_2_oe,
	input dr_2_in,
	output dr_3_out,
	output dr_3_oe,
	input dr_3_in,
	output dr_4_out,
	output dr_4_oe,
	input dr_4_in,
	output dr_5_out,
	output dr_5_oe,
	input dr_5_in,
	output dr_6_out,
	output dr_6_oe,
	input dr_6_in,
	output dr_7_out,
	output dr_7_oe,
	input dr_7_in,
	output dr_8_out,
	output dr_8_oe,
	input dr_8_in,
	output dr_9_out,
	output dr_9_oe,
	input dr_9_in,
	output dr_10_out,
	output dr_10_oe,
	input dr_10_in,
	output dr_11_out,
	output dr_11_oe,
	input dr_11_in,
	output dr_12_out,
	output dr_12_oe,
	input dr_12_in,
	output dr_13_out,
	output dr_13_oe,
	input dr_13_in,
	output dr_14_out,
	output dr_14_oe,
	input dr_14_in,
	output dr_15_out,
	output dr_15_oe,
	input dr_15_in,
	input sys_clk // Generated
);
wire [0:23] oba;
wire type_0;
wire type_1;
wire type_2;
wire oblatch_0;
wire ypos_0;
wire ypos_1;
wire ypos_2;
wire ypos_3;
wire ypos_4;
wire ypos_5;
wire ypos_6;
wire ypos_7;
wire ypos_8;
wire ypos_9;
wire ypos_10;
wire link_0;
wire link_1;
wire link_2;
wire link_3;
wire link_4;
wire link_5;
wire link_6;
wire link_7;
wire link_8;
wire link_9;
wire link_10;
wire link_11;
wire link_12;
wire link_13;
wire link_14;
wire link_15;
wire link_16;
wire link_17;
wire link_18;
wire data_0;
wire data_1;
wire data_2;
wire data_3;
wire data_4;
wire data_5;
wire data_6;
wire data_7;
wire data_8;
wire data_9;
wire data_10;
wire data_11;
wire data_12;
wire data_13;
wire data_14;
wire data_15;
wire data_16;
wire data_17;
wire data_18;
wire data_19;
wire data_20;
wire wbken_0;
wire depth_0;
wire depth_1;
wire depth_2;
wire oblatch_1;
wire skip_0;
wire skip_1;
wire skip_2;
wire _release;
wire oblatch_2;
wire rem_5;
wire rem_6;
wire rem_7;
wire wbken_2;
wire olpd_3;
wire olpd_4;
wire olpd_5;
wire olpd_6;
wire olpd_7;
wire olpd_8;
wire olpd_9;
wire olpd_10;
wire olpd_11;
wire olpd_12;
wire olpd_13;
wire olpd_14;
wire olpd_15;
wire olpd_16;
wire olpd_17;
wire olpd_18;
wire olpd_19;
wire olpd_20;
wire olpd_21;
wire olpd_22;
wire olpd_23;
wire olpd1_3;
wire olpd1_4;
wire olpd1_5;
wire olpd1_6;
wire olpd1_7;
wire olpd1_8;
wire olpd1_9;
wire olpd1_10;
wire olpd1_11;
wire olpd1_12;
wire olpd1_13;
wire olpd1_14;
wire olpd1_15;
wire olpd1_16;
wire olpd1_17;
wire olpd1_18;
wire olpd1_19;
wire olpd1_20;
wire olpd1_21;
wire pclink;
wire olp_3;
wire olpco_3;
wire pcinc;
wire olpld;
wire olp_4;
wire olp_5;
wire olp_6;
wire olp_7;
wire olp_8;
wire olp_9;
wire olpco_4;
wire olpco_5;
wire olpco_6;
wire olpco_7;
wire olpco_8;
wire olpco_9;
wire olp_10;
wire olpco_10;
wire plac9;
wire olp_11;
wire olp_12;
wire olp_13;
wire olp_14;
wire olp_15;
wire olp_16;
wire olpco_11;
wire olpco_12;
wire olpco_13;
wire olpco_14;
wire olpco_15;
wire olpco_16;
wire olp_17;
wire olpco_17;
wire plac16;
wire olp_18;
wire olp_19;
wire olp_20;
wire olp_21;
wire olpco_18;
wire olpco_19;
wire olpco_20;
wire olpco_21;
wire olpldi;
wire pcld;
wire sum_0;
wire dco_0;
wire sum_1;
wire sum_2;
wire dco_1;
wire dco_2;
wire dmainc;
wire dmaen;
wire ldinc;
wire d1_0;
wire d1_1;
wire d1_2;
wire dci;
wire dco_3;
wire dco_4;
wire dco_5;
wire dco_6;
wire dco_7;
wire dco_8;
wire dco_9;
wire dco_10;
wire dlac9;
wire dco_11;
wire dco_12;
wire dco_13;
wire dco_14;
wire dco_15;
wire dco_16;
wire dco_17;
wire dlac16;
wire dco_18;
wire dco_19;
wire dco_20;
wire obfws;
wire obf;
wire iwidth_0;
wire wco_0;
wire iwidth_1;
wire iwidth_2;
wire iwidth_3;
wire iwidth_4;
wire iwidth_5;
wire iwidth_6;
wire iwidth_7;
wire iwidth_8;
wire iwidth_9;
wire wco_1;
wire wco_2;
wire wco_3;
wire wco_4;
wire wco_5;
wire wco_6;
wire wco_7;
wire wco_8;
wire wco_9;
wire bit0;
wire iwidthz0;
wire iwidthz1;
wire iwidthnz;
wire iwidthz;
wire q0;
wire d0;
wire q1;
wire d1;
wire q2;
wire d2;
wire q3i;
wire d3;
wire q3;
wire q4i;
wire d4;
wire q4;
wire q5;
wire d5;
wire q7;
wire d7;
wire q8;
wire d8;
wire q9;
wire d9;
wire d00;
wire notstartover;
wire d01;
wire notbitob;
wire notscaled;
wire notgrpob;
wire notbranchob;
wire d10;
wire startover;
wire d11;
wire notobmack;
wire d12;
wire bitob;
wire bitnotinrange;
wire d13;
wire branchob;
wire cctrue;
wire d14;
wire d15;
wire scalednotinrange;
wire d16;
wire obmack;
wire d17;
wire d18;
wire d19;
wire ccfalse;
wire d1a;
wire d1b;
wire d20;
wire d21;
wire d23;
wire notobdone;
wire d30;
wire d31;
wire geq;
wire d32;
wire d40;
wire d41;
wire onscreen;
wire d42;
wire d43;
wire notwbkdone;
wire d44;
wire scaledinrange;
wire d45;
wire d46;
wire d51;
wire d52;
wire d53;
wire d70;
wire grpob;
wire d71;
wire notobfw;
wire d80;
wire d81;
wire d90;
wire d91;
wire obr0;
wire obr1;
wire obr2;
wire obr3;
wire obr4;
wire obbr0;
wire obr5;
wire obbr1;
wire obr6;
wire obr7;
wire hold;
wire omrq0;
wire omrq1;
wire omrq2;
wire omrq3;
wire omrq4;
wire omrq5;
wire omrq6;
wire obmreq;
wire obldd_0;
wire obldd_1;
wire obldd_2;
wire pc1en;
wire pc2en0;
wire pc2en;
wire dmaen0;
wire obdlatchd;
wire dsel0;
wire dsel1;
wire dsel2;
wire dataseli;
wire datasel;
wire pclinki;
wire stopob;
wire obrw1;
wire obrw;
wire wbken2d;
wire wr;
wire eback;
wire ewr;
wire wbken0d;
wire xldi;
wire typel_0;
wire typel_1;
wire typel_2;
wire notstopob;
wire heightl_0;
wire heightl_1;
wire heightl_2;
wire cctrue0;
wire cctrue1;
wire y7ff;
wire cctrue2;
wire cctrue3;
wire cctrue4;
wire cctrue5;
wire depthl_0;
wire depthl_1;
wire depthl_2;
wire mode8i;
wire start1;
wire start2;
wire start2l;
wire sstart;
wire ov1;
wire q0l;
wire ov2;
wire overrun;
wire overrund;
wire obeni;
wire oben;
wire obldi_0;
wire obldi_1;
wire obldi_2;
wire wbkeni_0;
wire wbkeni_2;
wire equ;
wire ve_0;
wire ve_1;
wire ve_2;
wire ve_3;
wire ve_4;
wire ve_5;
wire ve_6;
wire ve_7;
wire ve_8;
wire ve_9;
wire ve_10;
wire veyl;
wire y7ff0;
wire y7ff1;
wire remnz;
wire remheightnz;
wire unused;
wire olp1_3;
wire olp1_4;
wire oa_3;
wire oa_4;
wire oa_5;
wire oa_6;
wire oa_7;
wire oa_8;
wire oa_9;
wire oa_10;
wire oa_11;
wire oa_12;
wire oa_13;
wire oa_14;
wire oa_15;
wire oa_16;
wire oa_17;
wire oa_18;
wire oa_19;
wire oa_20;
wire oa_21;
wire oa_22;
wire oa_23;
wire ts_pe_288_a0_out;
wire ts_pe_288_a0_oe;
wire ts_pe_288_a0_in;
wire ts_pe_288_a1_out;
wire ts_pe_288_a1_oe;
wire ts_pe_288_a1_in;
wire ts_pe_289_a0_out;
wire ts_pe_289_a0_oe;
wire ts_pe_289_a0_in;
wire ts_pe_289_a1_out;
wire ts_pe_289_a1_oe;
wire ts_pe_289_a1_in;
wire ts_pe_290_a0_out;
wire ts_pe_290_a0_oe;
wire ts_pe_290_a0_in;
wire ts_pe_290_a1_out;
wire ts_pe_290_a1_oe;
wire ts_pe_290_a1_in;
wire ts_pe_291_a0_out;
wire ts_pe_291_a0_oe;
wire ts_pe_291_a0_in;
wire ts_pe_291_a1_out;
wire ts_pe_291_a1_oe;
wire ts_pe_291_a1_in;
wire ts_pe_292_a0_out;
wire ts_pe_292_a0_oe;
wire ts_pe_292_a0_in;
wire ts_pe_292_a1_out;
wire ts_pe_292_a1_oe;
wire ts_pe_292_a1_in;
wire ts_pe_293_a0_out;
wire ts_pe_293_a0_oe;
wire ts_pe_293_a0_in;
wire ts_pe_293_a1_out;
wire ts_pe_293_a1_oe;
wire ts_pe_293_a1_in;
wire ts_pe_294_a0_out;
wire ts_pe_294_a0_oe;
wire ts_pe_294_a0_in;
wire ts_pe_294_a1_out;
wire ts_pe_294_a1_oe;
wire ts_pe_294_a1_in;
wire ts_pe_295_a0_out;
wire ts_pe_295_a0_oe;
wire ts_pe_295_a0_in;
wire ts_pe_295_a1_out;
wire ts_pe_295_a1_oe;
wire ts_pe_295_a1_in;
wire ts_pe_296_a0_out;
wire ts_pe_296_a0_oe;
wire ts_pe_296_a0_in;
wire ts_pe_296_a1_out;
wire ts_pe_296_a1_oe;
wire ts_pe_296_a1_in;
wire ts_pe_297_a0_out;
wire ts_pe_297_a0_oe;
wire ts_pe_297_a0_in;
wire ts_pe_297_a1_out;
wire ts_pe_297_a1_oe;
wire ts_pe_297_a1_in;
wire ts_pe_298_a0_out;
wire ts_pe_298_a0_oe;
wire ts_pe_298_a0_in;
wire ts_pe_298_a1_out;
wire ts_pe_298_a1_oe;
wire ts_pe_298_a1_in;
wire ts_pe_299_a0_out;
wire ts_pe_299_a0_oe;
wire ts_pe_299_a0_in;
wire ts_pe_299_a1_out;
wire ts_pe_299_a1_oe;
wire ts_pe_299_a1_in;
wire ts_pe_300_a0_out;
wire ts_pe_300_a0_oe;
wire ts_pe_300_a0_in;
wire ts_pe_300_a1_out;
wire ts_pe_300_a1_oe;
wire ts_pe_300_a1_in;
wire ts_pe_301_a0_out;
wire ts_pe_301_a0_oe;
wire ts_pe_301_a0_in;
wire ts_pe_301_a1_out;
wire ts_pe_301_a1_oe;
wire ts_pe_301_a1_in;
wire ts_pe_302_a0_out;
wire ts_pe_302_a0_oe;
wire ts_pe_302_a0_in;
wire ts_pe_302_a1_out;
wire ts_pe_302_a1_oe;
wire ts_pe_302_a1_in;
wire ts_pe_303_a0_out;
wire ts_pe_303_a0_oe;
wire ts_pe_303_a0_in;
wire ts_pe_303_a1_out;
wire ts_pe_303_a1_oe;
wire ts_pe_303_a1_in;
wire ts_pe_304_a0_out;
wire ts_pe_304_a0_oe;
wire ts_pe_304_a0_in;
wire ts_pe_304_a1_out;
wire ts_pe_304_a1_oe;
wire ts_pe_304_a1_in;
wire ts_pe_305_a0_out;
wire ts_pe_305_a0_oe;
wire ts_pe_305_a0_in;
wire ts_pe_305_a1_out;
wire ts_pe_305_a1_oe;
wire ts_pe_305_a1_in;
wire ts_pe_306_a0_out;
wire ts_pe_306_a0_oe;
wire ts_pe_306_a0_in;
wire ts_pe_306_a1_out;
wire ts_pe_306_a1_oe;
wire ts_pe_306_a1_in;
wire ts_pe_307_a0_out;
wire ts_pe_307_a0_oe;
wire ts_pe_307_a0_in;
wire ts_pe_307_a1_out;
wire ts_pe_307_a1_oe;
wire ts_pe_307_a1_in;
wire ts_pe_308_a0_out;
wire ts_pe_308_a0_oe;
wire ts_pe_308_a0_in;
wire ts_pe_308_a1_out;
wire ts_pe_308_a1_oe;
wire ts_pe_308_a1_in;
wire ts_pe_309_a0_out;
wire ts_pe_309_a0_oe;
wire ts_pe_309_a0_in;
wire ts_pe_309_a1_out;
wire ts_pe_309_a1_oe;
wire ts_pe_309_a1_in;
wire ts_pe_310_a0_out;
wire ts_pe_310_a0_oe;
wire ts_pe_310_a0_in;
wire ts_pe_310_a1_out;
wire ts_pe_310_a1_oe;
wire ts_pe_310_a1_in;
wire ts_pe_311_a0_out;
wire ts_pe_311_a0_oe;
wire ts_pe_311_a0_in;
wire ts_pe_311_a1_out;
wire ts_pe_311_a1_oe;
wire ts_pe_311_a1_in;
wire ts_pe_312_a0_out;
wire ts_pe_312_a0_oe;
wire ts_pe_312_a0_in;
wire ts_pe_312_a1_out;
wire ts_pe_312_a1_oe;
wire ts_pe_312_a1_in;
wire ts_pe_313_a0_out;
wire ts_pe_313_a0_oe;
wire ts_pe_313_a0_in;
wire ts_pe_313_a1_out;
wire ts_pe_313_a1_oe;
wire ts_pe_313_a1_in;
wire ts_pe_314_a0_out;
wire ts_pe_314_a0_oe;
wire ts_pe_314_a0_in;
wire ts_pe_314_a1_out;
wire ts_pe_314_a1_oe;
wire ts_pe_314_a1_in;
wire ts_pe_315_a0_out;
wire ts_pe_315_a0_oe;
wire ts_pe_315_a0_in;
wire ts_pe_315_a1_out;
wire ts_pe_315_a1_oe;
wire ts_pe_315_a1_in;
wire ts_pe_316_a0_out;
wire ts_pe_316_a0_oe;
wire ts_pe_316_a0_in;
wire ts_pe_316_a1_out;
wire ts_pe_316_a1_oe;
wire ts_pe_316_a1_in;
wire ts_pe_317_a0_out;
wire ts_pe_317_a0_oe;
wire ts_pe_317_a0_in;
wire ts_pe_317_a1_out;
wire ts_pe_317_a1_oe;
wire ts_pe_317_a1_in;
wire ts_pe_318_a0_out;
wire ts_pe_318_a0_oe;
wire ts_pe_318_a0_in;
wire ts_pe_318_a1_out;
wire ts_pe_318_a1_oe;
wire ts_pe_318_a1_in;
wire ts_pe_319_a0_out;
wire ts_pe_319_a0_oe;
wire ts_pe_319_a0_in;
wire ts_pe_319_a1_out;
wire ts_pe_319_a1_oe;
wire ts_pe_319_a1_in;
wire ts_pe_320_a0_out;
wire ts_pe_320_a0_oe;
wire ts_pe_320_a0_in;
wire ts_pe_320_a1_out;
wire ts_pe_320_a1_oe;
wire ts_pe_320_a1_in;
wire ts_pe_321_a0_out;
wire ts_pe_321_a0_oe;
wire ts_pe_321_a0_in;
wire ts_pe_321_a1_out;
wire ts_pe_321_a1_oe;
wire ts_pe_321_a1_in;
wire ts_pe_322_a0_out;
wire ts_pe_322_a0_oe;
wire ts_pe_322_a0_in;
wire ts_pe_322_a1_out;
wire ts_pe_322_a1_oe;
wire ts_pe_322_a1_in;
wire ts_pe_323_a0_out;
wire ts_pe_323_a0_oe;
wire ts_pe_323_a0_in;
wire ts_pe_323_a1_out;
wire ts_pe_323_a1_oe;
wire ts_pe_323_a1_in;
wire ts_pe_324_a0_out;
wire ts_pe_324_a0_oe;
wire ts_pe_324_a0_in;
wire ts_pe_324_a1_out;
wire ts_pe_324_a1_oe;
wire ts_pe_324_a1_in;
wire ts_pe_325_a0_out;
wire ts_pe_325_a0_oe;
wire ts_pe_325_a0_in;
wire ts_pe_325_a1_out;
wire ts_pe_325_a1_oe;
wire ts_pe_325_a1_in;
wire ts_pe_326_a0_out;
wire ts_pe_326_a0_oe;
wire ts_pe_326_a0_in;
wire ts_pe_326_a1_out;
wire ts_pe_326_a1_oe;
wire ts_pe_326_a1_in;
wire ts_pe_327_a0_out;
wire ts_pe_327_a0_oe;
wire ts_pe_327_a0_in;
wire ts_pe_327_a1_out;
wire ts_pe_327_a1_oe;
wire ts_pe_327_a1_in;
wire ts_pe_328_a0_out;
wire ts_pe_328_a0_oe;
wire ts_pe_328_a0_in;
wire ts_pe_328_a1_out;
wire ts_pe_328_a1_oe;
wire ts_pe_328_a1_in;
wire ts_pe_329_a0_out;
wire ts_pe_329_a0_oe;
wire ts_pe_329_a0_in;
wire ts_pe_329_a1_out;
wire ts_pe_329_a1_oe;
wire ts_pe_329_a1_in;
wire ts_pe_330_a0_out;
wire ts_pe_330_a0_oe;
wire ts_pe_330_a0_in;
wire ts_pe_330_a1_out;
wire ts_pe_330_a1_oe;
wire ts_pe_330_a1_in;
wire ts_pe_331_a0_out;
wire ts_pe_331_a0_oe;
wire ts_pe_331_a0_in;
wire ts_pe_331_a1_out;
wire ts_pe_331_a1_oe;
wire ts_pe_331_a1_in;
wire ts_pe_332_a0_out;
wire ts_pe_332_a0_oe;
wire ts_pe_332_a0_in;
wire ts_pe_332_a1_out;
wire ts_pe_332_a1_oe;
wire ts_pe_332_a1_in;
wire ts_pe_333_a0_out;
wire ts_pe_333_a0_oe;
wire ts_pe_333_a0_in;
wire ts_pe_333_a1_out;
wire ts_pe_333_a1_oe;
wire ts_pe_333_a1_in;
wire ts_pe_334_a0_out;
wire ts_pe_334_a0_oe;
wire ts_pe_334_a0_in;
wire ts_pe_334_a1_out;
wire ts_pe_334_a1_oe;
wire ts_pe_334_a1_in;
wire ts_pe_335_a0_out;
wire ts_pe_335_a0_oe;
wire ts_pe_335_a0_in;
wire ts_pe_335_a1_out;
wire ts_pe_335_a1_oe;
wire ts_pe_335_a1_in;
wire ts_pe_336_a0_out;
wire ts_pe_336_a0_oe;
wire ts_pe_336_a0_in;
wire ts_pe_336_a1_out;
wire ts_pe_336_a1_oe;
wire ts_pe_336_a1_in;
wire ts_pe_337_a0_out;
wire ts_pe_337_a0_oe;
wire ts_pe_337_a0_in;
wire ts_pe_337_a1_out;
wire ts_pe_337_a1_oe;
wire ts_pe_337_a1_in;
wire ts_pe_338_a0_out;
wire ts_pe_338_a0_oe;
wire ts_pe_338_a0_in;
wire ts_pe_338_a1_out;
wire ts_pe_338_a1_oe;
wire ts_pe_338_a1_in;
wire ts_pe_339_a0_out;
wire ts_pe_339_a0_oe;
wire ts_pe_339_a0_in;
wire ts_pe_339_a1_out;
wire ts_pe_339_a1_oe;
wire ts_pe_339_a1_in;
wire ts_pe_340_a0_out;
wire ts_pe_340_a0_oe;
wire ts_pe_340_a0_in;
wire ts_pe_340_a1_out;
wire ts_pe_340_a1_oe;
wire ts_pe_340_a1_in;
wire ts_pe_341_a0_out;
wire ts_pe_341_a0_oe;
wire ts_pe_341_a0_in;
wire ts_pe_341_a1_out;
wire ts_pe_341_a1_oe;
wire ts_pe_341_a1_in;
wire ts_pe_342_a0_out;
wire ts_pe_342_a0_oe;
wire ts_pe_342_a0_in;
wire ts_pe_342_a1_out;
wire ts_pe_342_a1_oe;
wire ts_pe_342_a1_in;
wire ts_pe_343_a0_out;
wire ts_pe_343_a0_oe;
wire ts_pe_343_a0_in;
wire ts_pe_343_a1_out;
wire ts_pe_343_a1_oe;
wire ts_pe_343_a1_in;
wire ts_pe_344_a0_out;
wire ts_pe_344_a0_oe;
wire ts_pe_344_a0_in;
wire ts_pe_344_a1_out;
wire ts_pe_344_a1_oe;
wire ts_pe_344_a1_in;
wire ts_pe_345_a0_out;
wire ts_pe_345_a0_oe;
wire ts_pe_345_a0_in;
wire ts_pe_345_a1_out;
wire ts_pe_345_a1_oe;
wire ts_pe_345_a1_in;
wire ts_pe_346_a0_out;
wire ts_pe_346_a0_oe;
wire ts_pe_346_a0_in;
wire ts_pe_346_a1_out;
wire ts_pe_346_a1_oe;
wire ts_pe_346_a1_in;
wire ts_pe_347_a0_out;
wire ts_pe_347_a0_oe;
wire ts_pe_347_a0_in;
wire ts_pe_347_a1_out;
wire ts_pe_347_a1_oe;
wire ts_pe_347_a1_in;
wire ts_pe_348_a0_out;
wire ts_pe_348_a0_oe;
wire ts_pe_348_a0_in;
wire ts_pe_348_a1_out;
wire ts_pe_348_a1_oe;
wire ts_pe_348_a1_in;
wire ts_pe_349_a0_out;
wire ts_pe_349_a0_oe;
wire ts_pe_349_a0_in;
wire ts_pe_349_a1_out;
wire ts_pe_349_a1_oe;
wire ts_pe_349_a1_in;
wire ts_pe_350_a0_out;
wire ts_pe_350_a0_oe;
wire ts_pe_350_a0_in;
wire ts_pe_350_a1_out;
wire ts_pe_350_a1_oe;
wire ts_pe_350_a1_in;
wire ts_pe_351_a0_out;
wire ts_pe_351_a0_oe;
wire ts_pe_351_a0_in;
wire ts_pe_351_a1_out;
wire ts_pe_351_a1_oe;
wire ts_pe_351_a1_in;
wire ts_pe_352_a0_out;
wire ts_pe_352_a0_oe;
wire ts_pe_352_a0_in;
wire ts_pe_352_a1_out;
wire ts_pe_352_a1_oe;
wire ts_pe_352_a1_in;
wire ts_pe_352_a2_out;
wire ts_pe_352_a2_oe;
wire ts_pe_352_a2_in;
wire ts_pe_352_a3_out;
wire ts_pe_352_a3_oe;
wire ts_pe_352_a3_in;
wire ts_pe_353_a0_out;
wire ts_pe_353_a0_oe;
wire ts_pe_353_a0_in;
wire ts_pe_353_a1_out;
wire ts_pe_353_a1_oe;
wire ts_pe_353_a1_in;
wire ts_pe_353_a2_out;
wire ts_pe_353_a2_oe;
wire ts_pe_353_a2_in;
wire ts_pe_353_a3_out;
wire ts_pe_353_a3_oe;
wire ts_pe_353_a3_in;
wire ts_pe_354_a0_out;
wire ts_pe_354_a0_oe;
wire ts_pe_354_a0_in;
wire ts_pe_354_a1_out;
wire ts_pe_354_a1_oe;
wire ts_pe_354_a1_in;
wire ts_pe_354_a2_out;
wire ts_pe_354_a2_oe;
wire ts_pe_354_a2_in;
wire ts_pe_354_a3_out;
wire ts_pe_354_a3_oe;
wire ts_pe_354_a3_in;
wire ts_pe_355_a0_out;
wire ts_pe_355_a0_oe;
wire ts_pe_355_a0_in;
wire ts_pe_355_a1_out;
wire ts_pe_355_a1_oe;
wire ts_pe_355_a1_in;
wire ts_pe_355_a2_out;
wire ts_pe_355_a2_oe;
wire ts_pe_355_a2_in;
wire ts_pe_355_a3_out;
wire ts_pe_355_a3_oe;
wire ts_pe_355_a3_in;
wire ts_pe_356_a0_out;
wire ts_pe_356_a0_oe;
wire ts_pe_356_a0_in;
wire ts_pe_356_a1_out;
wire ts_pe_356_a1_oe;
wire ts_pe_356_a1_in;
wire ts_pe_356_a2_out;
wire ts_pe_356_a2_oe;
wire ts_pe_356_a2_in;
wire ts_pe_356_a3_out;
wire ts_pe_356_a3_oe;
wire ts_pe_356_a3_in;
wire ts_pe_357_a0_out;
wire ts_pe_357_a0_oe;
wire ts_pe_357_a0_in;
wire ts_pe_357_a1_out;
wire ts_pe_357_a1_oe;
wire ts_pe_357_a1_in;
wire ts_pe_357_a2_out;
wire ts_pe_357_a2_oe;
wire ts_pe_357_a2_in;
wire ts_pe_357_a3_out;
wire ts_pe_357_a3_oe;
wire ts_pe_357_a3_in;
wire ts_pe_358_a0_out;
wire ts_pe_358_a0_oe;
wire ts_pe_358_a0_in;
wire ts_pe_358_a1_out;
wire ts_pe_358_a1_oe;
wire ts_pe_358_a1_in;
wire ts_pe_358_a2_out;
wire ts_pe_358_a2_oe;
wire ts_pe_358_a2_in;
wire ts_pe_358_a3_out;
wire ts_pe_358_a3_oe;
wire ts_pe_358_a3_in;
wire ts_pe_359_a0_out;
wire ts_pe_359_a0_oe;
wire ts_pe_359_a0_in;
wire ts_pe_359_a1_out;
wire ts_pe_359_a1_oe;
wire ts_pe_359_a1_in;
wire ts_pe_359_a2_out;
wire ts_pe_359_a2_oe;
wire ts_pe_359_a2_in;
wire ts_pe_359_a3_out;
wire ts_pe_359_a3_oe;
wire ts_pe_359_a3_in;
wire ts_pe_360_a0_out;
wire ts_pe_360_a0_oe;
wire ts_pe_360_a0_in;
wire ts_pe_360_a1_out;
wire ts_pe_360_a1_oe;
wire ts_pe_360_a1_in;
wire ts_pe_360_a2_out;
wire ts_pe_360_a2_oe;
wire ts_pe_360_a2_in;
wire ts_pe_360_a3_out;
wire ts_pe_360_a3_oe;
wire ts_pe_360_a3_in;
wire ts_pe_361_a0_out;
wire ts_pe_361_a0_oe;
wire ts_pe_361_a0_in;
wire ts_pe_361_a1_out;
wire ts_pe_361_a1_oe;
wire ts_pe_361_a1_in;
wire ts_pe_361_a2_out;
wire ts_pe_361_a2_oe;
wire ts_pe_361_a2_in;
wire ts_pe_361_a3_out;
wire ts_pe_361_a3_oe;
wire ts_pe_361_a3_in;
wire ts_pe_362_a0_out;
wire ts_pe_362_a0_oe;
wire ts_pe_362_a0_in;
wire ts_pe_362_a1_out;
wire ts_pe_362_a1_oe;
wire ts_pe_362_a1_in;
wire ts_pe_362_a2_out;
wire ts_pe_362_a2_oe;
wire ts_pe_362_a2_in;
wire ts_pe_362_a3_out;
wire ts_pe_362_a3_oe;
wire ts_pe_362_a3_in;
wire ts_pe_363_a0_out;
wire ts_pe_363_a0_oe;
wire ts_pe_363_a0_in;
wire ts_pe_363_a1_out;
wire ts_pe_363_a1_oe;
wire ts_pe_363_a1_in;
wire ts_pe_363_a2_out;
wire ts_pe_363_a2_oe;
wire ts_pe_363_a2_in;
wire ts_pe_363_a3_out;
wire ts_pe_363_a3_oe;
wire ts_pe_363_a3_in;
wire ts_pe_364_a0_out;
wire ts_pe_364_a0_oe;
wire ts_pe_364_a0_in;
wire ts_pe_364_a1_out;
wire ts_pe_364_a1_oe;
wire ts_pe_364_a1_in;
wire ts_pe_364_a2_out;
wire ts_pe_364_a2_oe;
wire ts_pe_364_a2_in;
wire ts_pe_364_a3_out;
wire ts_pe_364_a3_oe;
wire ts_pe_364_a3_in;
wire ts_pe_365_a0_out;
wire ts_pe_365_a0_oe;
wire ts_pe_365_a0_in;
wire ts_pe_365_a1_out;
wire ts_pe_365_a1_oe;
wire ts_pe_365_a1_in;
wire ts_pe_365_a2_out;
wire ts_pe_365_a2_oe;
wire ts_pe_365_a2_in;
wire ts_pe_365_a3_out;
wire ts_pe_365_a3_oe;
wire ts_pe_365_a3_in;
wire ts_pe_366_a0_out;
wire ts_pe_366_a0_oe;
wire ts_pe_366_a0_in;
wire ts_pe_366_a1_out;
wire ts_pe_366_a1_oe;
wire ts_pe_366_a1_in;
wire ts_pe_366_a2_out;
wire ts_pe_366_a2_oe;
wire ts_pe_366_a2_in;
wire ts_pe_366_a3_out;
wire ts_pe_366_a3_oe;
wire ts_pe_366_a3_in;
wire ts_pe_367_a0_out;
wire ts_pe_367_a0_oe;
wire ts_pe_367_a0_in;
wire ts_pe_367_a1_out;
wire ts_pe_367_a1_oe;
wire ts_pe_367_a1_in;
wire ts_pe_367_a2_out;
wire ts_pe_367_a2_oe;
wire ts_pe_367_a2_in;
wire ts_pe_367_a3_out;
wire ts_pe_367_a3_oe;
wire ts_pe_367_a3_in;

// Output buffers
wire scaled_obuf;
wire hscale_0_obuf;
wire hscale_1_obuf;
wire hscale_2_obuf;
wire hscale_3_obuf;
wire hscale_4_obuf;
wire hscale_5_obuf;
wire hscale_6_obuf;
wire hscale_7_obuf;
wire vscale_0_obuf;
wire vscale_1_obuf;
wire vscale_2_obuf;
wire vscale_3_obuf;
wire vscale_4_obuf;
wire vscale_5_obuf;
wire vscale_6_obuf;
wire vscale_7_obuf;
wire obld_0_obuf;
wire obld_1_obuf;
wire obld_2_obuf;
wire vgy_obuf;
wire vey_obuf;
wire vly_obuf;


// Output buffers
assign scaled = scaled_obuf;
assign hscale_0 = hscale_0_obuf;
assign hscale_1 = hscale_1_obuf;
assign hscale_2 = hscale_2_obuf;
assign hscale_3 = hscale_3_obuf;
assign hscale_4 = hscale_4_obuf;
assign hscale_5 = hscale_5_obuf;
assign hscale_6 = hscale_6_obuf;
assign hscale_7 = hscale_7_obuf;
assign vscale_0 = vscale_0_obuf;
assign vscale_1 = vscale_1_obuf;
assign vscale_2 = vscale_2_obuf;
assign vscale_3 = vscale_3_obuf;
assign vscale_4 = vscale_4_obuf;
assign vscale_5 = vscale_5_obuf;
assign vscale_6 = vscale_6_obuf;
assign vscale_7 = vscale_7_obuf;
assign obld_0 = obld_0_obuf;
assign obld_1 = obld_1_obuf;
assign obld_2 = obld_2_obuf;
assign vgy = vgy_obuf;
assign vey = vey_obuf;
assign vly = vly_obuf;


// OB.NET (49) - type[0-2] : slatch
slatch type_from_0_to_2_inst_0
(
	.q /* OUT */ (type_0),
	.d /* IN */ (d_0),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_0),
	.sys_clk(sys_clk) // Generated
);
slatch type_from_0_to_2_inst_1
(
	.q /* OUT */ (type_1),
	.d /* IN */ (d_1),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_0),
	.sys_clk(sys_clk) // Generated
);
slatch type_from_0_to_2_inst_2
(
	.q /* OUT */ (type_2),
	.d /* IN */ (d_2),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_0),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (50) - ypos[0-10] : slatch
slatch ypos_from_0_to_10_inst_0
(
	.q /* OUT */ (ypos_0),
	.d /* IN */ (d_3),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_0),
	.sys_clk(sys_clk) // Generated
);
slatch ypos_from_0_to_10_inst_1
(
	.q /* OUT */ (ypos_1),
	.d /* IN */ (d_4),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_0),
	.sys_clk(sys_clk) // Generated
);
slatch ypos_from_0_to_10_inst_2
(
	.q /* OUT */ (ypos_2),
	.d /* IN */ (d_5),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_0),
	.sys_clk(sys_clk) // Generated
);
slatch ypos_from_0_to_10_inst_3
(
	.q /* OUT */ (ypos_3),
	.d /* IN */ (d_6),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_0),
	.sys_clk(sys_clk) // Generated
);
slatch ypos_from_0_to_10_inst_4
(
	.q /* OUT */ (ypos_4),
	.d /* IN */ (d_7),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_0),
	.sys_clk(sys_clk) // Generated
);
slatch ypos_from_0_to_10_inst_5
(
	.q /* OUT */ (ypos_5),
	.d /* IN */ (d_8),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_0),
	.sys_clk(sys_clk) // Generated
);
slatch ypos_from_0_to_10_inst_6
(
	.q /* OUT */ (ypos_6),
	.d /* IN */ (d_9),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_0),
	.sys_clk(sys_clk) // Generated
);
slatch ypos_from_0_to_10_inst_7
(
	.q /* OUT */ (ypos_7),
	.d /* IN */ (d_10),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_0),
	.sys_clk(sys_clk) // Generated
);
slatch ypos_from_0_to_10_inst_8
(
	.q /* OUT */ (ypos_8),
	.d /* IN */ (d_11),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_0),
	.sys_clk(sys_clk) // Generated
);
slatch ypos_from_0_to_10_inst_9
(
	.q /* OUT */ (ypos_9),
	.d /* IN */ (d_12),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_0),
	.sys_clk(sys_clk) // Generated
);
slatch ypos_from_0_to_10_inst_10
(
	.q /* OUT */ (ypos_10),
	.d /* IN */ (d_13),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_0),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (52) - link[0-18] : slatch
slatch link_from_0_to_18_inst_0
(
	.q /* OUT */ (link_0),
	.d /* IN */ (d_24),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_0),
	.sys_clk(sys_clk) // Generated
);
slatch link_from_0_to_18_inst_1
(
	.q /* OUT */ (link_1),
	.d /* IN */ (d_25),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_0),
	.sys_clk(sys_clk) // Generated
);
slatch link_from_0_to_18_inst_2
(
	.q /* OUT */ (link_2),
	.d /* IN */ (d_26),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_0),
	.sys_clk(sys_clk) // Generated
);
slatch link_from_0_to_18_inst_3
(
	.q /* OUT */ (link_3),
	.d /* IN */ (d_27),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_0),
	.sys_clk(sys_clk) // Generated
);
slatch link_from_0_to_18_inst_4
(
	.q /* OUT */ (link_4),
	.d /* IN */ (d_28),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_0),
	.sys_clk(sys_clk) // Generated
);
slatch link_from_0_to_18_inst_5
(
	.q /* OUT */ (link_5),
	.d /* IN */ (d_29),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_0),
	.sys_clk(sys_clk) // Generated
);
slatch link_from_0_to_18_inst_6
(
	.q /* OUT */ (link_6),
	.d /* IN */ (d_30),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_0),
	.sys_clk(sys_clk) // Generated
);
slatch link_from_0_to_18_inst_7
(
	.q /* OUT */ (link_7),
	.d /* IN */ (d_31),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_0),
	.sys_clk(sys_clk) // Generated
);
slatch link_from_0_to_18_inst_8
(
	.q /* OUT */ (link_8),
	.d /* IN */ (d_32),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_0),
	.sys_clk(sys_clk) // Generated
);
slatch link_from_0_to_18_inst_9
(
	.q /* OUT */ (link_9),
	.d /* IN */ (d_33),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_0),
	.sys_clk(sys_clk) // Generated
);
slatch link_from_0_to_18_inst_10
(
	.q /* OUT */ (link_10),
	.d /* IN */ (d_34),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_0),
	.sys_clk(sys_clk) // Generated
);
slatch link_from_0_to_18_inst_11
(
	.q /* OUT */ (link_11),
	.d /* IN */ (d_35),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_0),
	.sys_clk(sys_clk) // Generated
);
slatch link_from_0_to_18_inst_12
(
	.q /* OUT */ (link_12),
	.d /* IN */ (d_36),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_0),
	.sys_clk(sys_clk) // Generated
);
slatch link_from_0_to_18_inst_13
(
	.q /* OUT */ (link_13),
	.d /* IN */ (d_37),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_0),
	.sys_clk(sys_clk) // Generated
);
slatch link_from_0_to_18_inst_14
(
	.q /* OUT */ (link_14),
	.d /* IN */ (d_38),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_0),
	.sys_clk(sys_clk) // Generated
);
slatch link_from_0_to_18_inst_15
(
	.q /* OUT */ (link_15),
	.d /* IN */ (d_39),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_0),
	.sys_clk(sys_clk) // Generated
);
slatch link_from_0_to_18_inst_16
(
	.q /* OUT */ (link_16),
	.d /* IN */ (d_40),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_0),
	.sys_clk(sys_clk) // Generated
);
slatch link_from_0_to_18_inst_17
(
	.q /* OUT */ (link_17),
	.d /* IN */ (d_41),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_0),
	.sys_clk(sys_clk) // Generated
);
slatch link_from_0_to_18_inst_18
(
	.q /* OUT */ (link_18),
	.d /* IN */ (d_42),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_0),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (57) - ob0rd[0-2] : ts
assign ts_pe_352_a0_out = type_0;
assign ts_pe_352_a0_oe = ob0r;
assign ts_pe_353_a0_out = type_1;
assign ts_pe_353_a0_oe = ob0r;
assign ts_pe_354_a0_out = type_2;
assign ts_pe_354_a0_oe = ob0r;

// OB.NET (58) - ob0rd[3-13] : ts
assign ts_pe_355_a0_out = ypos_0;
assign ts_pe_355_a0_oe = ob0r;
assign ts_pe_356_a0_out = ypos_1;
assign ts_pe_356_a0_oe = ob0r;
assign ts_pe_357_a0_out = ypos_2;
assign ts_pe_357_a0_oe = ob0r;
assign ts_pe_358_a0_out = ypos_3;
assign ts_pe_358_a0_oe = ob0r;
assign ts_pe_359_a0_out = ypos_4;
assign ts_pe_359_a0_oe = ob0r;
assign ts_pe_360_a0_out = ypos_5;
assign ts_pe_360_a0_oe = ob0r;
assign ts_pe_361_a0_out = ypos_6;
assign ts_pe_361_a0_oe = ob0r;
assign ts_pe_362_a0_out = ypos_7;
assign ts_pe_362_a0_oe = ob0r;
assign ts_pe_363_a0_out = ypos_8;
assign ts_pe_363_a0_oe = ob0r;
assign ts_pe_364_a0_out = ypos_9;
assign ts_pe_364_a0_oe = ob0r;
assign ts_pe_365_a0_out = ypos_10;
assign ts_pe_365_a0_oe = ob0r;

// OB.NET (59) - ob0rd[14-15] : ts
assign ts_pe_366_a0_out = newheight_0;
assign ts_pe_366_a0_oe = ob0r;
assign ts_pe_367_a0_out = newheight_1;
assign ts_pe_367_a0_oe = ob0r;

// OB.NET (61) - ob1rd[0-7] : ts
assign ts_pe_352_a1_out = newheight_2;
assign ts_pe_352_a1_oe = ob1r;
assign ts_pe_353_a1_out = newheight_3;
assign ts_pe_353_a1_oe = ob1r;
assign ts_pe_354_a1_out = newheight_4;
assign ts_pe_354_a1_oe = ob1r;
assign ts_pe_355_a1_out = newheight_5;
assign ts_pe_355_a1_oe = ob1r;
assign ts_pe_356_a1_out = newheight_6;
assign ts_pe_356_a1_oe = ob1r;
assign ts_pe_357_a1_out = newheight_7;
assign ts_pe_357_a1_oe = ob1r;
assign ts_pe_358_a1_out = newheight_8;
assign ts_pe_358_a1_oe = ob1r;
assign ts_pe_359_a1_out = newheight_9;
assign ts_pe_359_a1_oe = ob1r;

// OB.NET (62) - ob1rd[8-15] : ts
assign ts_pe_360_a1_out = link_0;
assign ts_pe_360_a1_oe = ob1r;
assign ts_pe_361_a1_out = link_1;
assign ts_pe_361_a1_oe = ob1r;
assign ts_pe_362_a1_out = link_2;
assign ts_pe_362_a1_oe = ob1r;
assign ts_pe_363_a1_out = link_3;
assign ts_pe_363_a1_oe = ob1r;
assign ts_pe_364_a1_out = link_4;
assign ts_pe_364_a1_oe = ob1r;
assign ts_pe_365_a1_out = link_5;
assign ts_pe_365_a1_oe = ob1r;
assign ts_pe_366_a1_out = link_6;
assign ts_pe_366_a1_oe = ob1r;
assign ts_pe_367_a1_out = link_7;
assign ts_pe_367_a1_oe = ob1r;

// OB.NET (64) - ob2rd[0-10] : ts
assign ts_pe_352_a2_out = link_8;
assign ts_pe_352_a2_oe = ob2r;
assign ts_pe_353_a2_out = link_9;
assign ts_pe_353_a2_oe = ob2r;
assign ts_pe_354_a2_out = link_10;
assign ts_pe_354_a2_oe = ob2r;
assign ts_pe_355_a2_out = link_11;
assign ts_pe_355_a2_oe = ob2r;
assign ts_pe_356_a2_out = link_12;
assign ts_pe_356_a2_oe = ob2r;
assign ts_pe_357_a2_out = link_13;
assign ts_pe_357_a2_oe = ob2r;
assign ts_pe_358_a2_out = link_14;
assign ts_pe_358_a2_oe = ob2r;
assign ts_pe_359_a2_out = link_15;
assign ts_pe_359_a2_oe = ob2r;
assign ts_pe_360_a2_out = link_16;
assign ts_pe_360_a2_oe = ob2r;
assign ts_pe_361_a2_out = link_17;
assign ts_pe_361_a2_oe = ob2r;
assign ts_pe_362_a2_out = link_18;
assign ts_pe_362_a2_oe = ob2r;

// OB.NET (65) - ob2rd[11-15] : ts
assign ts_pe_363_a2_out = data_0;
assign ts_pe_363_a2_oe = ob2r;
assign ts_pe_364_a2_out = data_1;
assign ts_pe_364_a2_oe = ob2r;
assign ts_pe_365_a2_out = data_2;
assign ts_pe_365_a2_oe = ob2r;
assign ts_pe_366_a2_out = data_3;
assign ts_pe_366_a2_oe = ob2r;
assign ts_pe_367_a2_out = data_4;
assign ts_pe_367_a2_oe = ob2r;

// OB.NET (67) - ob3rd[0-15] : ts
assign ts_pe_352_a3_out = data_5;
assign ts_pe_352_a3_oe = ob3r;
assign ts_pe_353_a3_out = data_6;
assign ts_pe_353_a3_oe = ob3r;
assign ts_pe_354_a3_out = data_7;
assign ts_pe_354_a3_oe = ob3r;
assign ts_pe_355_a3_out = data_8;
assign ts_pe_355_a3_oe = ob3r;
assign ts_pe_356_a3_out = data_9;
assign ts_pe_356_a3_oe = ob3r;
assign ts_pe_357_a3_out = data_10;
assign ts_pe_357_a3_oe = ob3r;
assign ts_pe_358_a3_out = data_11;
assign ts_pe_358_a3_oe = ob3r;
assign ts_pe_359_a3_out = data_12;
assign ts_pe_359_a3_oe = ob3r;
assign ts_pe_360_a3_out = data_13;
assign ts_pe_360_a3_oe = ob3r;
assign ts_pe_361_a3_out = data_14;
assign ts_pe_361_a3_oe = ob3r;
assign ts_pe_362_a3_out = data_15;
assign ts_pe_362_a3_oe = ob3r;
assign ts_pe_363_a3_out = data_16;
assign ts_pe_363_a3_oe = ob3r;
assign ts_pe_364_a3_out = data_17;
assign ts_pe_364_a3_oe = ob3r;
assign ts_pe_365_a3_out = data_18;
assign ts_pe_365_a3_oe = ob3r;
assign ts_pe_366_a3_out = data_19;
assign ts_pe_366_a3_oe = ob3r;
assign ts_pe_367_a3_out = data_20;
assign ts_pe_367_a3_oe = ob3r;

// OB.NET (71) - obwbk0[0-2] : ts
assign ts_pe_288_a0_out = type_0;
assign ts_pe_288_a0_oe = wbken_0;
assign ts_pe_289_a0_out = type_1;
assign ts_pe_289_a0_oe = wbken_0;
assign ts_pe_290_a0_out = type_2;
assign ts_pe_290_a0_oe = wbken_0;

// OB.NET (72) - obwbk0[3-13] : ts
assign ts_pe_291_a0_out = ypos_0;
assign ts_pe_291_a0_oe = wbken_0;
assign ts_pe_292_a0_out = ypos_1;
assign ts_pe_292_a0_oe = wbken_0;
assign ts_pe_293_a0_out = ypos_2;
assign ts_pe_293_a0_oe = wbken_0;
assign ts_pe_294_a0_out = ypos_3;
assign ts_pe_294_a0_oe = wbken_0;
assign ts_pe_295_a0_out = ypos_4;
assign ts_pe_295_a0_oe = wbken_0;
assign ts_pe_296_a0_out = ypos_5;
assign ts_pe_296_a0_oe = wbken_0;
assign ts_pe_297_a0_out = ypos_6;
assign ts_pe_297_a0_oe = wbken_0;
assign ts_pe_298_a0_out = ypos_7;
assign ts_pe_298_a0_oe = wbken_0;
assign ts_pe_299_a0_out = ypos_8;
assign ts_pe_299_a0_oe = wbken_0;
assign ts_pe_300_a0_out = ypos_9;
assign ts_pe_300_a0_oe = wbken_0;
assign ts_pe_301_a0_out = ypos_10;
assign ts_pe_301_a0_oe = wbken_0;

// OB.NET (73) - obwbk0[14-23] : ts
assign ts_pe_302_a0_out = newheight_0;
assign ts_pe_302_a0_oe = wbken_0;
assign ts_pe_303_a0_out = newheight_1;
assign ts_pe_303_a0_oe = wbken_0;
assign ts_pe_304_a0_out = newheight_2;
assign ts_pe_304_a0_oe = wbken_0;
assign ts_pe_305_a0_out = newheight_3;
assign ts_pe_305_a0_oe = wbken_0;
assign ts_pe_306_a0_out = newheight_4;
assign ts_pe_306_a0_oe = wbken_0;
assign ts_pe_307_a0_out = newheight_5;
assign ts_pe_307_a0_oe = wbken_0;
assign ts_pe_308_a0_out = newheight_6;
assign ts_pe_308_a0_oe = wbken_0;
assign ts_pe_309_a0_out = newheight_7;
assign ts_pe_309_a0_oe = wbken_0;
assign ts_pe_310_a0_out = newheight_8;
assign ts_pe_310_a0_oe = wbken_0;
assign ts_pe_311_a0_out = newheight_9;
assign ts_pe_311_a0_oe = wbken_0;

// OB.NET (74) - obwbk0[24-42] : ts
assign ts_pe_312_a0_out = link_0;
assign ts_pe_312_a0_oe = wbken_0;
assign ts_pe_313_a0_out = link_1;
assign ts_pe_313_a0_oe = wbken_0;
assign ts_pe_314_a0_out = link_2;
assign ts_pe_314_a0_oe = wbken_0;
assign ts_pe_315_a0_out = link_3;
assign ts_pe_315_a0_oe = wbken_0;
assign ts_pe_316_a0_out = link_4;
assign ts_pe_316_a0_oe = wbken_0;
assign ts_pe_317_a0_out = link_5;
assign ts_pe_317_a0_oe = wbken_0;
assign ts_pe_318_a0_out = link_6;
assign ts_pe_318_a0_oe = wbken_0;
assign ts_pe_319_a0_out = link_7;
assign ts_pe_319_a0_oe = wbken_0;
assign ts_pe_320_a0_out = link_8;
assign ts_pe_320_a0_oe = wbken_0;
assign ts_pe_321_a0_out = link_9;
assign ts_pe_321_a0_oe = wbken_0;
assign ts_pe_322_a0_out = link_10;
assign ts_pe_322_a0_oe = wbken_0;
assign ts_pe_323_a0_out = link_11;
assign ts_pe_323_a0_oe = wbken_0;
assign ts_pe_324_a0_out = link_12;
assign ts_pe_324_a0_oe = wbken_0;
assign ts_pe_325_a0_out = link_13;
assign ts_pe_325_a0_oe = wbken_0;
assign ts_pe_326_a0_out = link_14;
assign ts_pe_326_a0_oe = wbken_0;
assign ts_pe_327_a0_out = link_15;
assign ts_pe_327_a0_oe = wbken_0;
assign ts_pe_328_a0_out = link_16;
assign ts_pe_328_a0_oe = wbken_0;
assign ts_pe_329_a0_out = link_17;
assign ts_pe_329_a0_oe = wbken_0;
assign ts_pe_330_a0_out = link_18;
assign ts_pe_330_a0_oe = wbken_0;

// OB.NET (75) - obwbk0[43-63] : ts
assign ts_pe_331_a0_out = newdata_0;
assign ts_pe_331_a0_oe = wbken_0;
assign ts_pe_332_a0_out = newdata_1;
assign ts_pe_332_a0_oe = wbken_0;
assign ts_pe_333_a0_out = newdata_2;
assign ts_pe_333_a0_oe = wbken_0;
assign ts_pe_334_a0_out = newdata_3;
assign ts_pe_334_a0_oe = wbken_0;
assign ts_pe_335_a0_out = newdata_4;
assign ts_pe_335_a0_oe = wbken_0;
assign ts_pe_336_a0_out = newdata_5;
assign ts_pe_336_a0_oe = wbken_0;
assign ts_pe_337_a0_out = newdata_6;
assign ts_pe_337_a0_oe = wbken_0;
assign ts_pe_338_a0_out = newdata_7;
assign ts_pe_338_a0_oe = wbken_0;
assign ts_pe_339_a0_out = newdata_8;
assign ts_pe_339_a0_oe = wbken_0;
assign ts_pe_340_a0_out = newdata_9;
assign ts_pe_340_a0_oe = wbken_0;
assign ts_pe_341_a0_out = newdata_10;
assign ts_pe_341_a0_oe = wbken_0;
assign ts_pe_342_a0_out = newdata_11;
assign ts_pe_342_a0_oe = wbken_0;
assign ts_pe_343_a0_out = newdata_12;
assign ts_pe_343_a0_oe = wbken_0;
assign ts_pe_344_a0_out = newdata_13;
assign ts_pe_344_a0_oe = wbken_0;
assign ts_pe_345_a0_out = newdata_14;
assign ts_pe_345_a0_oe = wbken_0;
assign ts_pe_346_a0_out = newdata_15;
assign ts_pe_346_a0_oe = wbken_0;
assign ts_pe_347_a0_out = newdata_16;
assign ts_pe_347_a0_oe = wbken_0;
assign ts_pe_348_a0_out = newdata_17;
assign ts_pe_348_a0_oe = wbken_0;
assign ts_pe_349_a0_out = newdata_18;
assign ts_pe_349_a0_oe = wbken_0;
assign ts_pe_350_a0_out = newdata_19;
assign ts_pe_350_a0_oe = wbken_0;
assign ts_pe_351_a0_out = newdata_20;
assign ts_pe_351_a0_oe = wbken_0;

// OB.NET (78) - depth[0-2] : slatch
slatch depth_from_0_to_2_inst_0
(
	.q /* OUT */ (depth_0),
	.d /* IN */ (d_12),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_1),
	.sys_clk(sys_clk) // Generated
);
slatch depth_from_0_to_2_inst_1
(
	.q /* OUT */ (depth_1),
	.d /* IN */ (d_13),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_1),
	.sys_clk(sys_clk) // Generated
);
slatch depth_from_0_to_2_inst_2
(
	.q /* OUT */ (depth_2),
	.d /* IN */ (d_14),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_1),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (79) - skip[0-2] : slatch
slatch skip_from_0_to_2_inst_0
(
	.q /* OUT */ (skip_0),
	.d /* IN */ (d_15),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_1),
	.sys_clk(sys_clk) // Generated
);
slatch skip_from_0_to_2_inst_1
(
	.q /* OUT */ (skip_1),
	.d /* IN */ (d_16),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_1),
	.sys_clk(sys_clk) // Generated
);
slatch skip_from_0_to_2_inst_2
(
	.q /* OUT */ (skip_2),
	.d /* IN */ (d_17),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_1),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (80) - dwidth[0-9] : slatch
slatch dwidth_from_0_to_9_inst_0
(
	.q /* OUT */ (dwidth_0),
	.d /* IN */ (d_18),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_1),
	.sys_clk(sys_clk) // Generated
);
slatch dwidth_from_0_to_9_inst_1
(
	.q /* OUT */ (dwidth_1),
	.d /* IN */ (d_19),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_1),
	.sys_clk(sys_clk) // Generated
);
slatch dwidth_from_0_to_9_inst_2
(
	.q /* OUT */ (dwidth_2),
	.d /* IN */ (d_20),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_1),
	.sys_clk(sys_clk) // Generated
);
slatch dwidth_from_0_to_9_inst_3
(
	.q /* OUT */ (dwidth_3),
	.d /* IN */ (d_21),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_1),
	.sys_clk(sys_clk) // Generated
);
slatch dwidth_from_0_to_9_inst_4
(
	.q /* OUT */ (dwidth_4),
	.d /* IN */ (d_22),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_1),
	.sys_clk(sys_clk) // Generated
);
slatch dwidth_from_0_to_9_inst_5
(
	.q /* OUT */ (dwidth_5),
	.d /* IN */ (d_23),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_1),
	.sys_clk(sys_clk) // Generated
);
slatch dwidth_from_0_to_9_inst_6
(
	.q /* OUT */ (dwidth_6),
	.d /* IN */ (d_24),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_1),
	.sys_clk(sys_clk) // Generated
);
slatch dwidth_from_0_to_9_inst_7
(
	.q /* OUT */ (dwidth_7),
	.d /* IN */ (d_25),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_1),
	.sys_clk(sys_clk) // Generated
);
slatch dwidth_from_0_to_9_inst_8
(
	.q /* OUT */ (dwidth_8),
	.d /* IN */ (d_26),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_1),
	.sys_clk(sys_clk) // Generated
);
slatch dwidth_from_0_to_9_inst_9
(
	.q /* OUT */ (dwidth_9),
	.d /* IN */ (d_27),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_1),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (82) - index[1-7] : slatch
slatch index_from_1_to_7_inst_0
(
	.q /* OUT */ (index_1),
	.d /* IN */ (d_38),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_1),
	.sys_clk(sys_clk) // Generated
);
slatch index_from_1_to_7_inst_1
(
	.q /* OUT */ (index_2),
	.d /* IN */ (d_39),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_1),
	.sys_clk(sys_clk) // Generated
);
slatch index_from_1_to_7_inst_2
(
	.q /* OUT */ (index_3),
	.d /* IN */ (d_40),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_1),
	.sys_clk(sys_clk) // Generated
);
slatch index_from_1_to_7_inst_3
(
	.q /* OUT */ (index_4),
	.d /* IN */ (d_41),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_1),
	.sys_clk(sys_clk) // Generated
);
slatch index_from_1_to_7_inst_4
(
	.q /* OUT */ (index_5),
	.d /* IN */ (d_42),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_1),
	.sys_clk(sys_clk) // Generated
);
slatch index_from_1_to_7_inst_5
(
	.q /* OUT */ (index_6),
	.d /* IN */ (d_43),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_1),
	.sys_clk(sys_clk) // Generated
);
slatch index_from_1_to_7_inst_6
(
	.q /* OUT */ (index_7),
	.d /* IN */ (d_44),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_1),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (83) - reflected : slatch
slatch reflected_inst
(
	.q /* OUT */ (reflected),
	.d /* IN */ (d_45),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_1),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (84) - rmw : slatch
slatch rmw_inst
(
	.q /* OUT */ (rmw),
	.d /* IN */ (d_46),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_1),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (85) - transen : slatch
slatch transen_inst
(
	.q /* OUT */ (transen),
	.d /* IN */ (d_47),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_1),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (86) - release : slatch
slatch release_inst
(
	.q /* OUT */ (_release),
	.d /* IN */ (d_48),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_1),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (88) - hscale[0-7] : slatch
slatch hscale_from_0_to_7_inst_0
(
	.q /* OUT */ (hscale_0_obuf),
	.d /* IN */ (d_0),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_2),
	.sys_clk(sys_clk) // Generated
);
slatch hscale_from_0_to_7_inst_1
(
	.q /* OUT */ (hscale_1_obuf),
	.d /* IN */ (d_1),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_2),
	.sys_clk(sys_clk) // Generated
);
slatch hscale_from_0_to_7_inst_2
(
	.q /* OUT */ (hscale_2_obuf),
	.d /* IN */ (d_2),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_2),
	.sys_clk(sys_clk) // Generated
);
slatch hscale_from_0_to_7_inst_3
(
	.q /* OUT */ (hscale_3_obuf),
	.d /* IN */ (d_3),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_2),
	.sys_clk(sys_clk) // Generated
);
slatch hscale_from_0_to_7_inst_4
(
	.q /* OUT */ (hscale_4_obuf),
	.d /* IN */ (d_4),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_2),
	.sys_clk(sys_clk) // Generated
);
slatch hscale_from_0_to_7_inst_5
(
	.q /* OUT */ (hscale_5_obuf),
	.d /* IN */ (d_5),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_2),
	.sys_clk(sys_clk) // Generated
);
slatch hscale_from_0_to_7_inst_6
(
	.q /* OUT */ (hscale_6_obuf),
	.d /* IN */ (d_6),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_2),
	.sys_clk(sys_clk) // Generated
);
slatch hscale_from_0_to_7_inst_7
(
	.q /* OUT */ (hscale_7_obuf),
	.d /* IN */ (d_7),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_2),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (89) - vscale[0-7] : slatch
slatch vscale_from_0_to_7_inst_0
(
	.q /* OUT */ (vscale_0_obuf),
	.d /* IN */ (d_8),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_2),
	.sys_clk(sys_clk) // Generated
);
slatch vscale_from_0_to_7_inst_1
(
	.q /* OUT */ (vscale_1_obuf),
	.d /* IN */ (d_9),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_2),
	.sys_clk(sys_clk) // Generated
);
slatch vscale_from_0_to_7_inst_2
(
	.q /* OUT */ (vscale_2_obuf),
	.d /* IN */ (d_10),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_2),
	.sys_clk(sys_clk) // Generated
);
slatch vscale_from_0_to_7_inst_3
(
	.q /* OUT */ (vscale_3_obuf),
	.d /* IN */ (d_11),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_2),
	.sys_clk(sys_clk) // Generated
);
slatch vscale_from_0_to_7_inst_4
(
	.q /* OUT */ (vscale_4_obuf),
	.d /* IN */ (d_12),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_2),
	.sys_clk(sys_clk) // Generated
);
slatch vscale_from_0_to_7_inst_5
(
	.q /* OUT */ (vscale_5_obuf),
	.d /* IN */ (d_13),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_2),
	.sys_clk(sys_clk) // Generated
);
slatch vscale_from_0_to_7_inst_6
(
	.q /* OUT */ (vscale_6_obuf),
	.d /* IN */ (d_14),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_2),
	.sys_clk(sys_clk) // Generated
);
slatch vscale_from_0_to_7_inst_7
(
	.q /* OUT */ (vscale_7_obuf),
	.d /* IN */ (d_15),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_2),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (90) - rem[5-7] : slatch
slatch rem_from_5_to_7_inst_0
(
	.q /* OUT */ (rem_5),
	.d /* IN */ (d_21),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_2),
	.sys_clk(sys_clk) // Generated
);
slatch rem_from_5_to_7_inst_1
(
	.q /* OUT */ (rem_6),
	.d /* IN */ (d_22),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_2),
	.sys_clk(sys_clk) // Generated
);
slatch rem_from_5_to_7_inst_2
(
	.q /* OUT */ (rem_7),
	.d /* IN */ (d_23),
	.clk /* IN */ (clk),
	.en /* IN */ (oblatch_2),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (94) - obwbk2[0-7] : ts
assign ts_pe_288_a1_out = hscale_0_obuf;
assign ts_pe_288_a1_oe = wbken_2;
assign ts_pe_289_a1_out = hscale_1_obuf;
assign ts_pe_289_a1_oe = wbken_2;
assign ts_pe_290_a1_out = hscale_2_obuf;
assign ts_pe_290_a1_oe = wbken_2;
assign ts_pe_291_a1_out = hscale_3_obuf;
assign ts_pe_291_a1_oe = wbken_2;
assign ts_pe_292_a1_out = hscale_4_obuf;
assign ts_pe_292_a1_oe = wbken_2;
assign ts_pe_293_a1_out = hscale_5_obuf;
assign ts_pe_293_a1_oe = wbken_2;
assign ts_pe_294_a1_out = hscale_6_obuf;
assign ts_pe_294_a1_oe = wbken_2;
assign ts_pe_295_a1_out = hscale_7_obuf;
assign ts_pe_295_a1_oe = wbken_2;

// OB.NET (95) - obwbk2[8-15] : ts
assign ts_pe_296_a1_out = vscale_0_obuf;
assign ts_pe_296_a1_oe = wbken_2;
assign ts_pe_297_a1_out = vscale_1_obuf;
assign ts_pe_297_a1_oe = wbken_2;
assign ts_pe_298_a1_out = vscale_2_obuf;
assign ts_pe_298_a1_oe = wbken_2;
assign ts_pe_299_a1_out = vscale_3_obuf;
assign ts_pe_299_a1_oe = wbken_2;
assign ts_pe_300_a1_out = vscale_4_obuf;
assign ts_pe_300_a1_oe = wbken_2;
assign ts_pe_301_a1_out = vscale_5_obuf;
assign ts_pe_301_a1_oe = wbken_2;
assign ts_pe_302_a1_out = vscale_6_obuf;
assign ts_pe_302_a1_oe = wbken_2;
assign ts_pe_303_a1_out = vscale_7_obuf;
assign ts_pe_303_a1_oe = wbken_2;

// OB.NET (96) - obwbk2[16-23] : ts
assign ts_pe_304_a1_out = newrem_0;
assign ts_pe_304_a1_oe = wbken_2;
assign ts_pe_305_a1_out = newrem_1;
assign ts_pe_305_a1_oe = wbken_2;
assign ts_pe_306_a1_out = newrem_2;
assign ts_pe_306_a1_oe = wbken_2;
assign ts_pe_307_a1_out = newrem_3;
assign ts_pe_307_a1_oe = wbken_2;
assign ts_pe_308_a1_out = newrem_4;
assign ts_pe_308_a1_oe = wbken_2;
assign ts_pe_309_a1_out = newrem_5;
assign ts_pe_309_a1_oe = wbken_2;
assign ts_pe_310_a1_out = newrem_6;
assign ts_pe_310_a1_oe = wbken_2;
assign ts_pe_311_a1_out = newrem_7;
assign ts_pe_311_a1_oe = wbken_2;

// OB.NET (97) - obwbk2[24-63] : ts
assign ts_pe_312_a1_out = gnd;
assign ts_pe_312_a1_oe = wbken_2;
assign ts_pe_313_a1_out = gnd;
assign ts_pe_313_a1_oe = wbken_2;
assign ts_pe_314_a1_out = gnd;
assign ts_pe_314_a1_oe = wbken_2;
assign ts_pe_315_a1_out = gnd;
assign ts_pe_315_a1_oe = wbken_2;
assign ts_pe_316_a1_out = gnd;
assign ts_pe_316_a1_oe = wbken_2;
assign ts_pe_317_a1_out = gnd;
assign ts_pe_317_a1_oe = wbken_2;
assign ts_pe_318_a1_out = gnd;
assign ts_pe_318_a1_oe = wbken_2;
assign ts_pe_319_a1_out = gnd;
assign ts_pe_319_a1_oe = wbken_2;
assign ts_pe_320_a1_out = gnd;
assign ts_pe_320_a1_oe = wbken_2;
assign ts_pe_321_a1_out = gnd;
assign ts_pe_321_a1_oe = wbken_2;
assign ts_pe_322_a1_out = gnd;
assign ts_pe_322_a1_oe = wbken_2;
assign ts_pe_323_a1_out = gnd;
assign ts_pe_323_a1_oe = wbken_2;
assign ts_pe_324_a1_out = gnd;
assign ts_pe_324_a1_oe = wbken_2;
assign ts_pe_325_a1_out = gnd;
assign ts_pe_325_a1_oe = wbken_2;
assign ts_pe_326_a1_out = gnd;
assign ts_pe_326_a1_oe = wbken_2;
assign ts_pe_327_a1_out = gnd;
assign ts_pe_327_a1_oe = wbken_2;
assign ts_pe_328_a1_out = gnd;
assign ts_pe_328_a1_oe = wbken_2;
assign ts_pe_329_a1_out = gnd;
assign ts_pe_329_a1_oe = wbken_2;
assign ts_pe_330_a1_out = gnd;
assign ts_pe_330_a1_oe = wbken_2;
assign ts_pe_331_a1_out = gnd;
assign ts_pe_331_a1_oe = wbken_2;
assign ts_pe_332_a1_out = gnd;
assign ts_pe_332_a1_oe = wbken_2;
assign ts_pe_333_a1_out = gnd;
assign ts_pe_333_a1_oe = wbken_2;
assign ts_pe_334_a1_out = gnd;
assign ts_pe_334_a1_oe = wbken_2;
assign ts_pe_335_a1_out = gnd;
assign ts_pe_335_a1_oe = wbken_2;
assign ts_pe_336_a1_out = gnd;
assign ts_pe_336_a1_oe = wbken_2;
assign ts_pe_337_a1_out = gnd;
assign ts_pe_337_a1_oe = wbken_2;
assign ts_pe_338_a1_out = gnd;
assign ts_pe_338_a1_oe = wbken_2;
assign ts_pe_339_a1_out = gnd;
assign ts_pe_339_a1_oe = wbken_2;
assign ts_pe_340_a1_out = gnd;
assign ts_pe_340_a1_oe = wbken_2;
assign ts_pe_341_a1_out = gnd;
assign ts_pe_341_a1_oe = wbken_2;
assign ts_pe_342_a1_out = gnd;
assign ts_pe_342_a1_oe = wbken_2;
assign ts_pe_343_a1_out = gnd;
assign ts_pe_343_a1_oe = wbken_2;
assign ts_pe_344_a1_out = gnd;
assign ts_pe_344_a1_oe = wbken_2;
assign ts_pe_345_a1_out = gnd;
assign ts_pe_345_a1_oe = wbken_2;
assign ts_pe_346_a1_out = gnd;
assign ts_pe_346_a1_oe = wbken_2;
assign ts_pe_347_a1_out = gnd;
assign ts_pe_347_a1_oe = wbken_2;
assign ts_pe_348_a1_out = gnd;
assign ts_pe_348_a1_oe = wbken_2;
assign ts_pe_349_a1_out = gnd;
assign ts_pe_349_a1_oe = wbken_2;
assign ts_pe_350_a1_out = gnd;
assign ts_pe_350_a1_oe = wbken_2;
assign ts_pe_351_a1_out = gnd;
assign ts_pe_351_a1_oe = wbken_2;

// OB.NET (101) - olpd[3-15] : ldp1q
ldp1q olpd_from_3_to_15_inst_0
(
	.q /* OUT */ (olpd_3),
	.d /* IN */ (din_3),
	.g /* IN */ (olp1w),
	.sys_clk(sys_clk) // Generated
);
ldp1q olpd_from_3_to_15_inst_1
(
	.q /* OUT */ (olpd_4),
	.d /* IN */ (din_4),
	.g /* IN */ (olp1w),
	.sys_clk(sys_clk) // Generated
);
ldp1q olpd_from_3_to_15_inst_2
(
	.q /* OUT */ (olpd_5),
	.d /* IN */ (din_5),
	.g /* IN */ (olp1w),
	.sys_clk(sys_clk) // Generated
);
ldp1q olpd_from_3_to_15_inst_3
(
	.q /* OUT */ (olpd_6),
	.d /* IN */ (din_6),
	.g /* IN */ (olp1w),
	.sys_clk(sys_clk) // Generated
);
ldp1q olpd_from_3_to_15_inst_4
(
	.q /* OUT */ (olpd_7),
	.d /* IN */ (din_7),
	.g /* IN */ (olp1w),
	.sys_clk(sys_clk) // Generated
);
ldp1q olpd_from_3_to_15_inst_5
(
	.q /* OUT */ (olpd_8),
	.d /* IN */ (din_8),
	.g /* IN */ (olp1w),
	.sys_clk(sys_clk) // Generated
);
ldp1q olpd_from_3_to_15_inst_6
(
	.q /* OUT */ (olpd_9),
	.d /* IN */ (din_9),
	.g /* IN */ (olp1w),
	.sys_clk(sys_clk) // Generated
);
ldp1q olpd_from_3_to_15_inst_7
(
	.q /* OUT */ (olpd_10),
	.d /* IN */ (din_10),
	.g /* IN */ (olp1w),
	.sys_clk(sys_clk) // Generated
);
ldp1q olpd_from_3_to_15_inst_8
(
	.q /* OUT */ (olpd_11),
	.d /* IN */ (din_11),
	.g /* IN */ (olp1w),
	.sys_clk(sys_clk) // Generated
);
ldp1q olpd_from_3_to_15_inst_9
(
	.q /* OUT */ (olpd_12),
	.d /* IN */ (din_12),
	.g /* IN */ (olp1w),
	.sys_clk(sys_clk) // Generated
);
ldp1q olpd_from_3_to_15_inst_10
(
	.q /* OUT */ (olpd_13),
	.d /* IN */ (din_13),
	.g /* IN */ (olp1w),
	.sys_clk(sys_clk) // Generated
);
ldp1q olpd_from_3_to_15_inst_11
(
	.q /* OUT */ (olpd_14),
	.d /* IN */ (din_14),
	.g /* IN */ (olp1w),
	.sys_clk(sys_clk) // Generated
);
ldp1q olpd_from_3_to_15_inst_12
(
	.q /* OUT */ (olpd_15),
	.d /* IN */ (din_15),
	.g /* IN */ (olp1w),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (102) - olpd[16-23] : ldp1q
ldp1q olpd_from_16_to_23_inst_0
(
	.q /* OUT */ (olpd_16),
	.d /* IN */ (din_0),
	.g /* IN */ (olp2w),
	.sys_clk(sys_clk) // Generated
);
ldp1q olpd_from_16_to_23_inst_1
(
	.q /* OUT */ (olpd_17),
	.d /* IN */ (din_1),
	.g /* IN */ (olp2w),
	.sys_clk(sys_clk) // Generated
);
ldp1q olpd_from_16_to_23_inst_2
(
	.q /* OUT */ (olpd_18),
	.d /* IN */ (din_2),
	.g /* IN */ (olp2w),
	.sys_clk(sys_clk) // Generated
);
ldp1q olpd_from_16_to_23_inst_3
(
	.q /* OUT */ (olpd_19),
	.d /* IN */ (din_3),
	.g /* IN */ (olp2w),
	.sys_clk(sys_clk) // Generated
);
ldp1q olpd_from_16_to_23_inst_4
(
	.q /* OUT */ (olpd_20),
	.d /* IN */ (din_4),
	.g /* IN */ (olp2w),
	.sys_clk(sys_clk) // Generated
);
ldp1q olpd_from_16_to_23_inst_5
(
	.q /* OUT */ (olpd_21),
	.d /* IN */ (din_5),
	.g /* IN */ (olp2w),
	.sys_clk(sys_clk) // Generated
);
ldp1q olpd_from_16_to_23_inst_6
(
	.q /* OUT */ (olpd_22),
	.d /* IN */ (din_6),
	.g /* IN */ (olp2w),
	.sys_clk(sys_clk) // Generated
);
ldp1q olpd_from_16_to_23_inst_7
(
	.q /* OUT */ (olpd_23),
	.d /* IN */ (din_7),
	.g /* IN */ (olp2w),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (106) - olpd1[3-21] : mx2
assign olpd1_3 = (pclink) ? link_0 : olpd_3;
assign olpd1_4 = (pclink) ? link_1 : olpd_4;
assign olpd1_5 = (pclink) ? link_2 : olpd_5;
assign olpd1_6 = (pclink) ? link_3 : olpd_6;
assign olpd1_7 = (pclink) ? link_4 : olpd_7;
assign olpd1_8 = (pclink) ? link_5 : olpd_8;
assign olpd1_9 = (pclink) ? link_6 : olpd_9;
assign olpd1_10 = (pclink) ? link_7 : olpd_10;
assign olpd1_11 = (pclink) ? link_8 : olpd_11;
assign olpd1_12 = (pclink) ? link_9 : olpd_12;
assign olpd1_13 = (pclink) ? link_10 : olpd_13;
assign olpd1_14 = (pclink) ? link_11 : olpd_14;
assign olpd1_15 = (pclink) ? link_12 : olpd_15;
assign olpd1_16 = (pclink) ? link_13 : olpd_16;
assign olpd1_17 = (pclink) ? link_14 : olpd_17;
assign olpd1_18 = (pclink) ? link_15 : olpd_18;
assign olpd1_19 = (pclink) ? link_16 : olpd_19;
assign olpd1_20 = (pclink) ? link_17 : olpd_20;
assign olpd1_21 = (pclink) ? link_18 : olpd_21;

// OB.NET (110) - olp[3] : upcnt
upcnt olp_index_3_inst
(
	.q /* OUT */ (olp_3),
	.co /* OUT */ (olpco_3),
	.d /* IN */ (olpd1_3),
	.clk /* IN */ (clk),
	.ci /* IN */ (pcinc),
	.ld /* IN */ (olpld),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (111) - olp[4-9] : upcnt
upcnt olp_from_4_to_9_inst_0
(
	.q /* OUT */ (olp_4),
	.co /* OUT */ (olpco_4),
	.d /* IN */ (olpd1_4),
	.clk /* IN */ (clk),
	.ci /* IN */ (olpco_3),
	.ld /* IN */ (olpld),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
upcnt olp_from_4_to_9_inst_1
(
	.q /* OUT */ (olp_5),
	.co /* OUT */ (olpco_5),
	.d /* IN */ (olpd1_5),
	.clk /* IN */ (clk),
	.ci /* IN */ (olpco_4),
	.ld /* IN */ (olpld),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
upcnt olp_from_4_to_9_inst_2
(
	.q /* OUT */ (olp_6),
	.co /* OUT */ (olpco_6),
	.d /* IN */ (olpd1_6),
	.clk /* IN */ (clk),
	.ci /* IN */ (olpco_5),
	.ld /* IN */ (olpld),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
upcnt olp_from_4_to_9_inst_3
(
	.q /* OUT */ (olp_7),
	.co /* OUT */ (olpco_7),
	.d /* IN */ (olpd1_7),
	.clk /* IN */ (clk),
	.ci /* IN */ (olpco_6),
	.ld /* IN */ (olpld),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
upcnt olp_from_4_to_9_inst_4
(
	.q /* OUT */ (olp_8),
	.co /* OUT */ (olpco_8),
	.d /* IN */ (olpd1_8),
	.clk /* IN */ (clk),
	.ci /* IN */ (olpco_7),
	.ld /* IN */ (olpld),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
upcnt olp_from_4_to_9_inst_5
(
	.q /* OUT */ (olp_9),
	.co /* OUT */ (olpco_9),
	.d /* IN */ (olpd1_9),
	.clk /* IN */ (clk),
	.ci /* IN */ (olpco_8),
	.ld /* IN */ (olpld),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (112) - olp[10] : upcnt
upcnt olp_index_10_inst
(
	.q /* OUT */ (olp_10),
	.co /* OUT */ (olpco_10),
	.d /* IN */ (olpd1_10),
	.clk /* IN */ (clk),
	.ci /* IN */ (plac9),
	.ld /* IN */ (olpld),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (113) - olp[11-16] : upcnt
upcnt olp_from_11_to_16_inst_0
(
	.q /* OUT */ (olp_11),
	.co /* OUT */ (olpco_11),
	.d /* IN */ (olpd1_11),
	.clk /* IN */ (clk),
	.ci /* IN */ (olpco_10),
	.ld /* IN */ (olpld),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
upcnt olp_from_11_to_16_inst_1
(
	.q /* OUT */ (olp_12),
	.co /* OUT */ (olpco_12),
	.d /* IN */ (olpd1_12),
	.clk /* IN */ (clk),
	.ci /* IN */ (olpco_11),
	.ld /* IN */ (olpld),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
upcnt olp_from_11_to_16_inst_2
(
	.q /* OUT */ (olp_13),
	.co /* OUT */ (olpco_13),
	.d /* IN */ (olpd1_13),
	.clk /* IN */ (clk),
	.ci /* IN */ (olpco_12),
	.ld /* IN */ (olpld),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
upcnt olp_from_11_to_16_inst_3
(
	.q /* OUT */ (olp_14),
	.co /* OUT */ (olpco_14),
	.d /* IN */ (olpd1_14),
	.clk /* IN */ (clk),
	.ci /* IN */ (olpco_13),
	.ld /* IN */ (olpld),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
upcnt olp_from_11_to_16_inst_4
(
	.q /* OUT */ (olp_15),
	.co /* OUT */ (olpco_15),
	.d /* IN */ (olpd1_15),
	.clk /* IN */ (clk),
	.ci /* IN */ (olpco_14),
	.ld /* IN */ (olpld),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
upcnt olp_from_11_to_16_inst_5
(
	.q /* OUT */ (olp_16),
	.co /* OUT */ (olpco_16),
	.d /* IN */ (olpd1_16),
	.clk /* IN */ (clk),
	.ci /* IN */ (olpco_15),
	.ld /* IN */ (olpld),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (114) - olp[17] : upcnt
upcnt olp_index_17_inst
(
	.q /* OUT */ (olp_17),
	.co /* OUT */ (olpco_17),
	.d /* IN */ (olpd1_17),
	.clk /* IN */ (clk),
	.ci /* IN */ (plac16),
	.ld /* IN */ (olpld),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (115) - olp[18-21] : upcnt
upcnt olp_from_18_to_21_inst_0
(
	.q /* OUT */ (olp_18),
	.co /* OUT */ (olpco_18),
	.d /* IN */ (olpd1_18),
	.clk /* IN */ (clk),
	.ci /* IN */ (olpco_17),
	.ld /* IN */ (olpld),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
upcnt olp_from_18_to_21_inst_1
(
	.q /* OUT */ (olp_19),
	.co /* OUT */ (olpco_19),
	.d /* IN */ (olpd1_19),
	.clk /* IN */ (clk),
	.ci /* IN */ (olpco_18),
	.ld /* IN */ (olpld),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
upcnt olp_from_18_to_21_inst_2
(
	.q /* OUT */ (olp_20),
	.co /* OUT */ (olpco_20),
	.d /* IN */ (olpd1_20),
	.clk /* IN */ (clk),
	.ci /* IN */ (olpco_19),
	.ld /* IN */ (olpld),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
upcnt olp_from_18_to_21_inst_3
(
	.q /* OUT */ (olp_21),
	.co /* OUT */ (olpco_21),
	.d /* IN */ (olpd1_21),
	.clk /* IN */ (clk),
	.ci /* IN */ (olpco_20),
	.ld /* IN */ (olpld),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (117) - plac9 : an8
assign plac9 = pcinc & olp_3 & olp_4 & olp_5 & olp_6 & olp_7 & olp_8 & olp_9;

// OB.NET (118) - plac16 : an8
assign plac16 = plac9 & olp_10 & olp_11 & olp_12 & olp_13 & olp_14 & olp_15 & olp_16;

// OB.NET (119) - olpcu[9] : dummy

// OB.NET (120) - olpcu[16] : dummy

// OB.NET (122) - olpldi : nr2
assign olpldi = ~(pcld | pclink);

// OB.NET (123) - olpld : ivh
assign olpld = ~olpldi;

// OB.NET (130) - sum[0] : ha1
ha1 sum_index_0_inst
(
	.s /* OUT */ (sum_0),
	.co /* OUT */ (dco_0),
	.a /* IN */ (skip_0),
	.b /* IN */ (data_0)
);

// OB.NET (131) - sum[1-2] : fa1
fa1 sum_from_1_to_2_inst_0
(
	.s /* OUT */ (sum_1),
	.co /* OUT */ (dco_1),
	.ci /* IN */ (skip_1),
	.a /* IN */ (data_1),
	.b /* IN */ (dco_0)
);
fa1 sum_from_1_to_2_inst_1
(
	.s /* OUT */ (sum_2),
	.co /* OUT */ (dco_2),
	.ci /* IN */ (skip_2),
	.a /* IN */ (data_2),
	.b /* IN */ (dco_1)
);

// OB.NET (135) - dmainc : fd1q
fd1q dmainc_inst
(
	.q /* OUT */ (dmainc),
	.d /* IN */ (dmaen),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (136) - ldinc : or2
assign ldinc = obld_0_obuf | dmainc;

// OB.NET (138) - d1[0-2] : mx2
assign d1_0 = (obld_0_obuf) ? d_43 : sum_0;
assign d1_1 = (obld_0_obuf) ? d_44 : sum_1;
assign d1_2 = (obld_0_obuf) ? d_45 : sum_2;

// OB.NET (139) - data[0-2] : slatch
slatch data_from_0_to_2_inst_0
(
	.q /* OUT */ (data_0),
	.d /* IN */ (d1_0),
	.clk /* IN */ (clk),
	.en /* IN */ (ldinc),
	.sys_clk(sys_clk) // Generated
);
slatch data_from_0_to_2_inst_1
(
	.q /* OUT */ (data_1),
	.d /* IN */ (d1_1),
	.clk /* IN */ (clk),
	.en /* IN */ (ldinc),
	.sys_clk(sys_clk) // Generated
);
slatch data_from_0_to_2_inst_2
(
	.q /* OUT */ (data_2),
	.d /* IN */ (d1_2),
	.clk /* IN */ (clk),
	.en /* IN */ (ldinc),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (143) - dci : an2
assign dci = dco_2 & dmainc;

// OB.NET (144) - data[3] : upcnt
upcnt data_index_3_inst
(
	.q /* OUT */ (data_3),
	.co /* OUT */ (dco_3),
	.d /* IN */ (d_46),
	.clk /* IN */ (clk),
	.ci /* IN */ (dci),
	.ld /* IN */ (obld_0_obuf),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (145) - data[4-9] : upcnt
upcnt data_from_4_to_9_inst_0
(
	.q /* OUT */ (data_4),
	.co /* OUT */ (dco_4),
	.d /* IN */ (d_47),
	.clk /* IN */ (clk),
	.ci /* IN */ (dco_3),
	.ld /* IN */ (obld_0_obuf),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
upcnt data_from_4_to_9_inst_1
(
	.q /* OUT */ (data_5),
	.co /* OUT */ (dco_5),
	.d /* IN */ (d_48),
	.clk /* IN */ (clk),
	.ci /* IN */ (dco_4),
	.ld /* IN */ (obld_0_obuf),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
upcnt data_from_4_to_9_inst_2
(
	.q /* OUT */ (data_6),
	.co /* OUT */ (dco_6),
	.d /* IN */ (d_49),
	.clk /* IN */ (clk),
	.ci /* IN */ (dco_5),
	.ld /* IN */ (obld_0_obuf),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
upcnt data_from_4_to_9_inst_3
(
	.q /* OUT */ (data_7),
	.co /* OUT */ (dco_7),
	.d /* IN */ (d_50),
	.clk /* IN */ (clk),
	.ci /* IN */ (dco_6),
	.ld /* IN */ (obld_0_obuf),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
upcnt data_from_4_to_9_inst_4
(
	.q /* OUT */ (data_8),
	.co /* OUT */ (dco_8),
	.d /* IN */ (d_51),
	.clk /* IN */ (clk),
	.ci /* IN */ (dco_7),
	.ld /* IN */ (obld_0_obuf),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
upcnt data_from_4_to_9_inst_5
(
	.q /* OUT */ (data_9),
	.co /* OUT */ (dco_9),
	.d /* IN */ (d_52),
	.clk /* IN */ (clk),
	.ci /* IN */ (dco_8),
	.ld /* IN */ (obld_0_obuf),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (146) - data[10] : upcnt
upcnt data_index_10_inst
(
	.q /* OUT */ (data_10),
	.co /* OUT */ (dco_10),
	.d /* IN */ (d_53),
	.clk /* IN */ (clk),
	.ci /* IN */ (dlac9),
	.ld /* IN */ (obld_0_obuf),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (147) - data[11-16] : upcnt
upcnt data_from_11_to_16_inst_0
(
	.q /* OUT */ (data_11),
	.co /* OUT */ (dco_11),
	.d /* IN */ (d_54),
	.clk /* IN */ (clk),
	.ci /* IN */ (dco_10),
	.ld /* IN */ (obld_0_obuf),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
upcnt data_from_11_to_16_inst_1
(
	.q /* OUT */ (data_12),
	.co /* OUT */ (dco_12),
	.d /* IN */ (d_55),
	.clk /* IN */ (clk),
	.ci /* IN */ (dco_11),
	.ld /* IN */ (obld_0_obuf),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
upcnt data_from_11_to_16_inst_2
(
	.q /* OUT */ (data_13),
	.co /* OUT */ (dco_13),
	.d /* IN */ (d_56),
	.clk /* IN */ (clk),
	.ci /* IN */ (dco_12),
	.ld /* IN */ (obld_0_obuf),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
upcnt data_from_11_to_16_inst_3
(
	.q /* OUT */ (data_14),
	.co /* OUT */ (dco_14),
	.d /* IN */ (d_57),
	.clk /* IN */ (clk),
	.ci /* IN */ (dco_13),
	.ld /* IN */ (obld_0_obuf),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
upcnt data_from_11_to_16_inst_4
(
	.q /* OUT */ (data_15),
	.co /* OUT */ (dco_15),
	.d /* IN */ (d_58),
	.clk /* IN */ (clk),
	.ci /* IN */ (dco_14),
	.ld /* IN */ (obld_0_obuf),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
upcnt data_from_11_to_16_inst_5
(
	.q /* OUT */ (data_16),
	.co /* OUT */ (dco_16),
	.d /* IN */ (d_59),
	.clk /* IN */ (clk),
	.ci /* IN */ (dco_15),
	.ld /* IN */ (obld_0_obuf),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (148) - data[17] : upcnt
upcnt data_index_17_inst
(
	.q /* OUT */ (data_17),
	.co /* OUT */ (dco_17),
	.d /* IN */ (d_60),
	.clk /* IN */ (clk),
	.ci /* IN */ (dlac16),
	.ld /* IN */ (obld_0_obuf),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (149) - data[18-20] : upcnt
upcnt data_from_18_to_20_inst_0
(
	.q /* OUT */ (data_18),
	.co /* OUT */ (dco_18),
	.d /* IN */ (d_61),
	.clk /* IN */ (clk),
	.ci /* IN */ (dco_17),
	.ld /* IN */ (obld_0_obuf),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
upcnt data_from_18_to_20_inst_1
(
	.q /* OUT */ (data_19),
	.co /* OUT */ (dco_19),
	.d /* IN */ (d_62),
	.clk /* IN */ (clk),
	.ci /* IN */ (dco_18),
	.ld /* IN */ (obld_0_obuf),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
upcnt data_from_18_to_20_inst_2
(
	.q /* OUT */ (data_20),
	.co /* OUT */ (dco_20),
	.d /* IN */ (d_63),
	.clk /* IN */ (clk),
	.ci /* IN */ (dco_19),
	.ld /* IN */ (obld_0_obuf),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (150) - dlac9 : an8
assign dlac9 = dci & data_3 & data_4 & data_5 & data_6 & data_7 & data_8 & data_9;

// OB.NET (151) - dlac16 : an8
assign dlac16 = dlac9 & data_10 & data_11 & data_12 & data_13 & data_14 & data_15 & data_16;

// OB.NET (152) - dcou[9] : dummy

// OB.NET (153) - dcou[16] : dummy

// OB.NET (157) - obfws : an2
assign obfws = obfw & wet;

// OB.NET (158) - obf : ldp1q
ldp1q obf_inst
(
	.q /* OUT */ (obf),
	.d /* IN */ (din_0),
	.g /* IN */ (obfws),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (162) - iwidth[0] : dncnt
dncnt iwidth_index_0_inst
(
	.q /* OUT */ (iwidth_0),
	.co /* OUT */ (wco_0),
	.d /* IN */ (d_28),
	.clk /* IN */ (clk),
	.ci /* IN */ (dmaen),
	.ld /* IN */ (obld_1_obuf),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (163) - iwidth[1-9] : dncnt
dncnt iwidth_from_1_to_9_inst_0
(
	.q /* OUT */ (iwidth_1),
	.co /* OUT */ (wco_1),
	.d /* IN */ (d_29),
	.clk /* IN */ (clk),
	.ci /* IN */ (wco_0),
	.ld /* IN */ (obld_1_obuf),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
dncnt iwidth_from_1_to_9_inst_1
(
	.q /* OUT */ (iwidth_2),
	.co /* OUT */ (wco_2),
	.d /* IN */ (d_30),
	.clk /* IN */ (clk),
	.ci /* IN */ (wco_1),
	.ld /* IN */ (obld_1_obuf),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
dncnt iwidth_from_1_to_9_inst_2
(
	.q /* OUT */ (iwidth_3),
	.co /* OUT */ (wco_3),
	.d /* IN */ (d_31),
	.clk /* IN */ (clk),
	.ci /* IN */ (wco_2),
	.ld /* IN */ (obld_1_obuf),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
dncnt iwidth_from_1_to_9_inst_3
(
	.q /* OUT */ (iwidth_4),
	.co /* OUT */ (wco_4),
	.d /* IN */ (d_32),
	.clk /* IN */ (clk),
	.ci /* IN */ (wco_3),
	.ld /* IN */ (obld_1_obuf),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
dncnt iwidth_from_1_to_9_inst_4
(
	.q /* OUT */ (iwidth_5),
	.co /* OUT */ (wco_5),
	.d /* IN */ (d_33),
	.clk /* IN */ (clk),
	.ci /* IN */ (wco_4),
	.ld /* IN */ (obld_1_obuf),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
dncnt iwidth_from_1_to_9_inst_5
(
	.q /* OUT */ (iwidth_6),
	.co /* OUT */ (wco_6),
	.d /* IN */ (d_34),
	.clk /* IN */ (clk),
	.ci /* IN */ (wco_5),
	.ld /* IN */ (obld_1_obuf),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
dncnt iwidth_from_1_to_9_inst_6
(
	.q /* OUT */ (iwidth_7),
	.co /* OUT */ (wco_7),
	.d /* IN */ (d_35),
	.clk /* IN */ (clk),
	.ci /* IN */ (wco_6),
	.ld /* IN */ (obld_1_obuf),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
dncnt iwidth_from_1_to_9_inst_7
(
	.q /* OUT */ (iwidth_8),
	.co /* OUT */ (wco_8),
	.d /* IN */ (d_36),
	.clk /* IN */ (clk),
	.ci /* IN */ (wco_7),
	.ld /* IN */ (obld_1_obuf),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
dncnt iwidth_from_1_to_9_inst_8
(
	.q /* OUT */ (iwidth_9),
	.co /* OUT */ (wco_9),
	.d /* IN */ (d_37),
	.clk /* IN */ (clk),
	.ci /* IN */ (wco_8),
	.ld /* IN */ (obld_1_obuf),
	.resl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (171) - bit0 : an2
assign bit0 = iwidth_0 & scaled_obuf;

// OB.NET (172) - iwidthz0 : nr6
assign iwidthz0 = ~(bit0 | iwidth_1 | iwidth_2 | iwidth_3 | iwidth_4 | iwidth_5);

// OB.NET (173) - iwidthz1 : nr4
assign iwidthz1 = ~(iwidth_6 | iwidth_7 | iwidth_8 | iwidth_9);

// OB.NET (174) - iwidthnz : nd2
assign iwidthnz = ~(iwidthz0 & iwidthz1);

// OB.NET (175) - iwidthz : iv
assign iwidthz = ~iwidthnz;

// OB.NET (377) - q0 : fd4q
fd4q q0_inst
(
	.q /* OUT */ (q0),
	.d /* IN */ (d0),
	.cp /* IN */ (clk),
	.sd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (378) - q1 : fd2q
fd2q q1_inst
(
	.q /* OUT */ (q1),
	.d /* IN */ (d1),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (379) - q2 : fd2q
fd2q q2_inst
(
	.q /* OUT */ (q2),
	.d /* IN */ (d2),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (380) - q3i : fd2q
fd2q q3i_inst
(
	.q /* OUT */ (q3i),
	.d /* IN */ (d3),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (381) - q3 : nivm
assign q3 = q3i;

// OB.NET (382) - q4i : fd2q
fd2q q4i_inst
(
	.q /* OUT */ (q4i),
	.d /* IN */ (d4),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (383) - q4 : nivh
assign q4 = q4i;

// OB.NET (384) - q5 : fd2q
fd2q q5_inst
(
	.q /* OUT */ (q5),
	.d /* IN */ (d5),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (385) - q7 : fd2q
fd2q q7_inst
(
	.q /* OUT */ (q7),
	.d /* IN */ (d7),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (386) - q8 : fd2q
fd2q q8_inst
(
	.q /* OUT */ (q8),
	.d /* IN */ (d8),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (387) - q9 : fd2q
fd2q q9_inst
(
	.q /* OUT */ (q9),
	.d /* IN */ (d9),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (389) - d00 : nd2
assign d00 = ~(q0 & notstartover);

// OB.NET (390) - d01 : nd6
assign d01 = ~(q3 & notbitob & notscaled & notgrpob & notbranchob & vcc);

// OB.NET (391) - d0 : nd2
assign d0 = ~(d00 & d01);

// OB.NET (393) - d10 : nd2
assign d10 = ~(q0 & startover);

// OB.NET (394) - d11 : nd2
assign d11 = ~(q1 & notobmack);

// OB.NET (395) - d12 : nd3
assign d12 = ~(q3 & bitob & bitnotinrange);

// OB.NET (396) - d13 : nd3
assign d13 = ~(q3 & branchob & cctrue);

// OB.NET (397) - d14 : nd2
assign d14 = ~(q7 & obfw);

// OB.NET (398) - d15 : nd2
assign d15 = ~(q9 & scalednotinrange);

// OB.NET (399) - d16 : nd6
assign d16 = ~(q4 & iwidthz & wbkdone & obmack & bitob & vcc);

// OB.NET (400) - d17 : nd6
assign d17 = ~(q4 & offscreen & wbkdone & obmack & bitob & vcc);

// OB.NET (401) - d18 : nd2
assign d18 = ~(q5 & obmack);

// OB.NET (402) - d19 : nd3
assign d19 = ~(q3 & branchob & ccfalse);

// OB.NET (403) - d1a : nd6
assign d1a = ~(d10 & d11 & d12 & d13 & d14 & d15);

// OB.NET (404) - d1b : nd4
assign d1b = ~(d16 & d17 & d18 & d19);

// OB.NET (405) - d1 : or2
assign d1 = d1a | d1b;

// OB.NET (407) - d20 : nd2
assign d20 = ~(q1 & obmack);

// OB.NET (408) - d21 : nd2
assign d21 = ~(q2 & notobmack);

// OB.NET (409) - d23 : nd2
assign d23 = ~(q2 & notobdone);

// OB.NET (410) - d2 : nd3
assign d2 = ~(d20 & d21 & d23);

// OB.NET (412) - d30 : nd3
assign d30 = ~(q2 & obdone & obmack);

// OB.NET (413) - d31 : nd6
assign d31 = ~(q3 & bitob & geq & heightnz & notobmack & vcc);

// OB.NET (414) - d32 : nd3
assign d32 = ~(q3 & scaled_obuf & notobmack);

// OB.NET (415) - d3 : nd3
assign d3 = ~(d30 & d31 & d32);

// OB.NET (417) - d40 : nd6
assign d40 = ~(q3 & bitob & geq & heightnz & obmack & vcc);

// OB.NET (418) - d41 : nd3
assign d41 = ~(q4 & onscreen & iwidthnz);

// OB.NET (419) - d42 : nd4
assign d42 = ~(q4 & iwidthz & wbkdone & notobmack);

// OB.NET (420) - d43 : nd3
assign d43 = ~(q4 & iwidthz & notwbkdone);

// OB.NET (421) - d44 : nd3
assign d44 = ~(q9 & scaledinrange & obmack);

// OB.NET (422) - d45 : nd4
assign d45 = ~(q4 & offscreen & wbkdone & notobmack);

// OB.NET (423) - d46 : nd3
assign d46 = ~(q4 & offscreen & notwbkdone);

// OB.NET (424) - d4 : nd8
assign d4 = ~(d40 & d41 & d42 & d43 & d44 & d45 & d46 & vcc);

// OB.NET (426) - d51 : nd6
assign d51 = ~(q4 & iwidthz & wbkdone & obmack & scaled_obuf & vcc);

// OB.NET (427) - d52 : nd2
assign d52 = ~(q5 & notobmack);

// OB.NET (428) - d53 : nd6
assign d53 = ~(q4 & offscreen & wbkdone & obmack & scaled_obuf & vcc);

// OB.NET (429) - d5 : nd3
assign d5 = ~(d51 & d52 & d53);

// OB.NET (431) - d70 : nd2
assign d70 = ~(q3 & grpob);

// OB.NET (432) - d71 : nd2
assign d71 = ~(q7 & notobfw);

// OB.NET (433) - d7 : nd2
assign d7 = ~(d70 & d71);

// OB.NET (435) - d80 : nd3
assign d80 = ~(q3 & scaled_obuf & obmack);

// OB.NET (436) - d81 : nd2
assign d81 = ~(q8 & notobmack);

// OB.NET (437) - d8 : nd2
assign d8 = ~(d80 & d81);

// OB.NET (439) - d90 : nd2
assign d90 = ~(q8 & obmack);

// OB.NET (440) - d91 : nd3
assign d91 = ~(q9 & scaledinrange & notobmack);

// OB.NET (441) - d9 : nd2
assign d9 = ~(d90 & d91);

// OB.NET (443) - pcld : iv
assign pcld = ~d10;

// OB.NET (448) - obr0 : nr4
assign obr0 = ~(q1 | q5 | q8 | q9);

// OB.NET (449) - obr1 : nd2
assign obr1 = ~(q3 & bitob);

// OB.NET (450) - obr2 : nd2
assign obr2 = ~(q3 & branchob);

// OB.NET (451) - obr3 : nd2
assign obr3 = ~(q3 & scaled_obuf);

// OB.NET (452) - obr4 : nd2
assign obr4 = ~(q2 & obbr0);

// OB.NET (453) - obr5 : nd4
assign obr5 = ~(q4 & onscreen & iwidthnz & obbr1);

// OB.NET (454) - obr6 : nd2
assign obr6 = ~(q4 & offscreen);

// OB.NET (455) - obr7 : nd2
assign obr7 = ~(q4 & iwidthz);

// OB.NET (456) - obbreq : nd8
assign obbreq = ~(obr0 & obr1 & obr2 & obr3 & obr4 & obr5 & obr6 & obr7);

// OB.NET (457) - obbr0 : or2
assign obbr0 = obdone | hold;

// OB.NET (458) - obbr1 : or2
assign obbr1 = obdready | hold;

// OB.NET (460) - omrq0 : nr2
assign omrq0 = ~(q1 | q5);

// OB.NET (461) - omrq1 : nd4
assign omrq1 = ~(q3 & bitob & geq & heightnz);

// OB.NET (462) - omrq2 : nd4
assign omrq2 = ~(q4 & onscreen & iwidthnz & obdready);

// OB.NET (463) - omrq3 : nd3
assign omrq3 = ~(q4 & iwidthz & wbkdone);

// OB.NET (464) - omrq4 : nd2
assign omrq4 = ~(q9 & scaledinrange);

// OB.NET (465) - omrq5 : nd2
assign omrq5 = ~(q2 & obdone);

// OB.NET (466) - omrq6 : nd3
assign omrq6 = ~(q4 & offscreen & wbkdone);

// OB.NET (467) - obmreq : nd8
assign obmreq = ~(omrq0 & omrq1 & omrq2 & omrq3 & omrq4 & omrq5 & omrq6 & obr3);

// OB.NET (469) - obldd[0] : iv
assign obldd_0 = ~d20;

// OB.NET (470) - obldd[1] : iv
assign obldd_1 = ~d30;

// OB.NET (471) - obldd[2] : iv
assign obldd_2 = ~d80;

// OB.NET (477) - pc1en : iv
assign pc1en = ~d30;

// OB.NET (478) - pc2en0 : nd2
assign pc2en0 = ~(q5 & obmack);

// OB.NET (479) - pc2en : nd2
assign pc2en = ~(d80 & pc2en0);

// OB.NET (481) - dmaen0 : nd6
assign dmaen0 = ~(q4 & onscreen & iwidthnz & obdready & obmack & vcc);

// OB.NET (482) - dmaen : nd3
assign dmaen = ~(d40 & dmaen0 & d44);

// OB.NET (483) - obdlatchd : niv
assign obdlatchd = dmaen;

// OB.NET (485) - dsel0 : nd2
assign dsel0 = ~(q3 & bitob);

// OB.NET (486) - dsel1 : iv
assign dsel1 = ~q9;

// OB.NET (487) - dsel2 : nd3
assign dsel2 = ~(q4 & onscreen & iwidthnz);

// OB.NET (488) - dataseli : nd3
assign dataseli = ~(dsel0 & dsel1 & dsel2);

// OB.NET (489) - datasel : nivu
assign datasel = dataseli;

// OB.NET (491) - pclinki : nd6
assign pclinki = ~(d12 & d13 & d15 & d16 & d17 & d18);

// OB.NET (492) - pclink : nivh
assign pclink = pclinki;

// OB.NET (493) - pcinc : nd2
assign pcinc = ~(d70 & d19);

// OB.NET (495) - grpintreq : iv
assign grpintreq = ~d70;

// OB.NET (496) - obint : an3
assign obint = q3 & stopob & ypos_0;

// OB.NET (497) - startref : an2
assign startref = q3 & stopob;

// OB.NET (499) - obrw1 : iv
assign obrw1 = ~q5;

// OB.NET (500) - obrw : an3
assign obrw = obrw1 & omrq3 & omrq6;

// OB.NET (505) - wbkstart : nd2
assign wbkstart = ~(d40 & omrq4);

// OB.NET (507) - wbken2d : iv
assign wbken2d = ~pc2en0;

// OB.NET (515) - wr : iv
assign wr = ~rw_in;

// OB.NET (516) - eback : or2
assign eback = blback | grpback;

// OB.NET (517) - ewr : an4
assign ewr = eback & wr & mack & mreq_in;

// OB.NET (518) - wbken0d : nr2
assign wbken0d = ~(wbken2d | ewr);

// OB.NET (520) - xldi : nd2
assign xldi = ~(d40 & d80);

// OB.NET (521) - xld : nivm
assign xld = xldi;

// OB.NET (527) - typel[0-2] : iv
assign typel_0 = ~type_0;
assign typel_1 = ~type_1;
assign typel_2 = ~type_2;

// OB.NET (529) - notbitob : nd3
assign notbitob = ~(typel_2 & typel_1 & typel_0);

// OB.NET (530) - notscaled : nd3
assign notscaled = ~(typel_2 & typel_1 & type_0);

// OB.NET (531) - notgrpob : nd3
assign notgrpob = ~(typel_2 & type_1 & typel_0);

// OB.NET (532) - notbranchob : nd3
assign notbranchob = ~(typel_2 & type_1 & type_0);

// OB.NET (533) - notstopob : nd3
assign notstopob = ~(type_2 & typel_1 & typel_0);

// OB.NET (535) - bitob : ivm
assign bitob = ~notbitob;

// OB.NET (536) - scaled : ivm
assign scaled_obuf = ~notscaled;

// OB.NET (537) - grpob : iv
assign grpob = ~notgrpob;

// OB.NET (538) - branchob : iv
assign branchob = ~notbranchob;

// OB.NET (539) - stopob : iv
assign stopob = ~notstopob;

// OB.NET (544) - heightl[0-2] : iv
assign heightl_0 = ~newheight_0;
assign heightl_1 = ~newheight_1;
assign heightl_2 = ~newheight_2;

// OB.NET (546) - cctrue0 : nd4
assign cctrue0 = ~(heightl_2 & heightl_1 & heightl_0 & vey_obuf);

// OB.NET (547) - cctrue1 : nd4
assign cctrue1 = ~(heightl_2 & heightl_1 & heightl_0 & y7ff);

// OB.NET (548) - cctrue2 : nd4
assign cctrue2 = ~(heightl_2 & heightl_1 & newheight_0 & vly_obuf);

// OB.NET (549) - cctrue3 : nd4
assign cctrue3 = ~(heightl_2 & newheight_1 & heightl_0 & vgy_obuf);

// OB.NET (550) - cctrue4 : nd4
assign cctrue4 = ~(heightl_2 & newheight_1 & newheight_0 & obf);

// OB.NET (551) - cctrue5 : nd4
assign cctrue5 = ~(newheight_2 & heightl_1 & heightl_0 & hcb_10);

// OB.NET (552) - cctrue : nd6
assign cctrue = ~(cctrue0 & cctrue1 & cctrue2 & cctrue3 & cctrue4 & cctrue5);

// OB.NET (553) - ccfalse : iv
assign ccfalse = ~cctrue;

// OB.NET (555) - depthl[0-2] : iv
assign depthl_0 = ~depth_0;
assign depthl_1 = ~depth_1;
assign depthl_2 = ~depth_2;

// OB.NET (557) - mode1 : an3h
assign mode1 = depthl_2 & depthl_1 & depthl_0;

// OB.NET (558) - mode2 : an3h
assign mode2 = depthl_2 & depthl_1 & depth_0;

// OB.NET (559) - mode4 : an3h
assign mode4 = depthl_2 & depth_1 & depthl_0;

// OB.NET (560) - mode8i : nd3
assign mode8i = ~(depthl_2 & depth_1 & depth_0);

// OB.NET (561) - mode8 : ivh
assign mode8 = ~mode8i;

// OB.NET (562) - mode16 : an3
assign mode16 = depth_2 & depthl_1 & depthl_0;

// OB.NET (563) - mode24 : an3
assign mode24 = depth_2 & depthl_1 & depth_0;

// OB.NET (567) - start1 : fd2q
fd2q start1_inst
(
	.q /* OUT */ (start1),
	.d /* IN */ (start),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (568) - start2 : fd2q
fd2q start2_inst
(
	.q /* OUT */ (start2),
	.d /* IN */ (start1),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (569) - start2l : iv
assign start2l = ~start2;

// OB.NET (570) - sstart : an2
assign sstart = start1 & start2l;

// OB.NET (576) - ov1 : nd2
assign ov1 = ~(sstart & q0l);

// OB.NET (577) - ov2 : nd2
assign ov2 = ~(overrun & q0l);

// OB.NET (578) - overrund : nd2
assign overrund = ~(ov1 & ov2);

// OB.NET (579) - overrun : fd1q
fd1q overrun_inst
(
	.q /* OUT */ (overrun),
	.d /* IN */ (overrund),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (580) - notstartover : nr2
assign notstartover = ~(overrun | sstart);

// OB.NET (581) - startover : iv
assign startover = ~notstartover;

// OB.NET (582) - q0l : iv
assign q0l = ~q0;

// OB.NET (584) - notobmack : nd2x3
assign notobmack = ~(obback & mack);

// OB.NET (585) - obmack : ivh
assign obmack = ~notobmack;

// OB.NET (589) - obeni : or2
assign obeni = obback | refack;

// OB.NET (590) - oben : nivu2
assign oben = obeni;

// OB.NET (591) - rw : ts
assign rw_out = obrw;
assign rw_oe = oben;

// OB.NET (592) - mreq : tsm
assign mreq_out = obmreq;
assign mreq_oe = obback;

// OB.NET (593) - justify : ts
assign justify_out = gnd;
assign justify_oe = oben;

// OB.NET (594) - w[0-2] : ts
assign w_0_out = gnd;
assign w_0_oe = oben;
assign w_1_out = gnd;
assign w_1_oe = oben;
assign w_2_out = gnd;
assign w_2_oe = oben;

// OB.NET (595) - w[3] : ts
assign w_3_out = vcc;
assign w_3_oe = oben;

// OB.NET (610) - obdlatch : ack_pipe
ack_pipe obdlatch_inst
(
	.latch /* OUT */ (obdlatch),
	.latchd /* IN */ (obdlatchd),
	.ack /* IN */ (mack),
	.clk /* IN */ (clk),
	.resetl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (611) - obldi[0] : ack_pipe
ack_pipe obldi_index_0_inst
(
	.latch /* OUT */ (obldi_0),
	.latchd /* IN */ (obldd_0),
	.ack /* IN */ (mack),
	.clk /* IN */ (clk),
	.resetl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (612) - obldi[1] : ack_pipe
ack_pipe obldi_index_1_inst
(
	.latch /* OUT */ (obldi_1),
	.latchd /* IN */ (obldd_1),
	.ack /* IN */ (mack),
	.clk /* IN */ (clk),
	.resetl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (613) - obldi[2] : ack_pipe
ack_pipe obldi_index_2_inst
(
	.latch /* OUT */ (obldi_2),
	.latchd /* IN */ (obldd_2),
	.ack /* IN */ (mack),
	.clk /* IN */ (clk),
	.resetl /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (614) - obld[0] : nivu2
assign obld_0_obuf = obldi_0;

// OB.NET (615) - obld[1] : nivh
assign obld_1_obuf = obldi_1;

// OB.NET (616) - obld[2] : nivh
assign obld_2_obuf = obldi_2;

// OB.NET (618) - oblatch[0-2] : nivu
assign oblatch_0 = obld_0_obuf;
assign oblatch_1 = obld_1_obuf;
assign oblatch_2 = obld_2_obuf;

// OB.NET (620) - wbkeni[0] : fd4q
fd4q wbkeni_index_0_inst
(
	.q /* OUT */ (wbkeni_0),
	.d /* IN */ (wbken0d),
	.cp /* IN */ (clk),
	.sd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (621) - wbken[0] : nivu2
assign wbken_0 = wbkeni_0;

// OB.NET (622) - wbkeni[2] : fd2q
fd2q wbkeni_index_2_inst
(
	.q /* OUT */ (wbkeni_2),
	.d /* IN */ (wbken2d),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// OB.NET (623) - wbken[2] : nivu2
assign wbken_2 = wbkeni_2;

// OB.NET (627) - comp : mag11
mag11 comp_inst
(
	.agb /* OUT */ (vgy_obuf),
	.aeb /* OUT */ (equ),
	.alb /* OUT */ (vly_obuf),
	.a_0 /* IN */ (vc_0),
	.a_1 /* IN */ (vc_1),
	.a_2 /* IN */ (vc_2),
	.a_3 /* IN */ (vc_3),
	.a_4 /* IN */ (vc_4),
	.a_5 /* IN */ (vc_5),
	.a_6 /* IN */ (vc_6),
	.a_7 /* IN */ (vc_7),
	.a_8 /* IN */ (vc_8),
	.a_9 /* IN */ (vc_9),
	.a_10 /* IN */ (vc_10),
	.b_0 /* IN */ (ypos_0),
	.b_1 /* IN */ (ypos_1),
	.b_2 /* IN */ (ypos_2),
	.b_3 /* IN */ (ypos_3),
	.b_4 /* IN */ (ypos_4),
	.b_5 /* IN */ (ypos_5),
	.b_6 /* IN */ (ypos_6),
	.b_7 /* IN */ (ypos_7),
	.b_8 /* IN */ (ypos_8),
	.b_9 /* IN */ (ypos_9),
	.b_10 /* IN */ (ypos_10)
);

// OB.NET (628) - geq : iv
assign geq = ~vly_obuf;

// OB.NET (629) - equ : dummy

// OB.NET (633) - ve[0-10] : en
assign ve_0 = ~(vc_0 ^ ypos_0);
assign ve_1 = ~(vc_1 ^ ypos_1);
assign ve_2 = ~(vc_2 ^ ypos_2);
assign ve_3 = ~(vc_3 ^ ypos_3);
assign ve_4 = ~(vc_4 ^ ypos_4);
assign ve_5 = ~(vc_5 ^ ypos_5);
assign ve_6 = ~(vc_6 ^ ypos_6);
assign ve_7 = ~(vc_7 ^ ypos_7);
assign ve_8 = ~(vc_8 ^ ypos_8);
assign ve_9 = ~(vc_9 ^ ypos_9);
assign ve_10 = ~(vc_10 ^ ypos_10);

// OB.NET (634) - veyl : nd11
assign veyl = ~(ve_0 & ve_1 & ve_2 & ve_3 & ve_4 & ve_5 & ve_6 & ve_7 & ve_8 & ve_9 & ve_10);

// OB.NET (635) - vey : iv
assign vey_obuf = ~veyl;

// OB.NET (637) - y7ff0 : nd6
assign y7ff0 = ~(ypos_0 & ypos_1 & ypos_2 & ypos_3 & ypos_4 & ypos_5);

// OB.NET (638) - y7ff1 : nd6
assign y7ff1 = ~(ypos_6 & ypos_7 & ypos_8 & ypos_9 & ypos_10 & vcc);

// OB.NET (639) - y7ff : nr2
assign y7ff = ~(y7ff0 | y7ff1);

// OB.NET (644) - remnz : or3
assign remnz = rem_5 | rem_6 | rem_7;

// OB.NET (646) - bitnotinrange : nd2
assign bitnotinrange = ~(geq & heightnz);

// OB.NET (648) - remheightnz : or2
assign remheightnz = heightnz | remnz;

// OB.NET (649) - scalednotinrange : nd2
assign scalednotinrange = ~(geq & remheightnz);

// OB.NET (650) - scaledinrange : iv
assign scaledinrange = ~scalednotinrange;

// OB.NET (652) - onscreen : iv
assign onscreen = ~offscreen;

// OB.NET (653) - notwbkdone : iv
assign notwbkdone = ~wbkdone;

// OB.NET (654) - notobfw : iv
assign notobfw = ~obfw;

// OB.NET (655) - notobdone : iv
assign notobdone = ~obdone;

// OB.NET (656) - hold : iv
assign hold = ~_release;

// OB.NET (661) - unused : nd6
assign unused = ~(gnd & gnd & olpco_21 & wco_9 & dco_20 & gnd);

// OB.NET (662) - unused2 : dummy

// OB.NET (666) - olp1[3] : or2
assign olp1_3 = olp_3 | pc1en;

// OB.NET (667) - olp1[4] : or2
assign olp1_4 = olp_4 | pc2en;

// OB.NET (669) - oa[3-4] : mx2
assign oa_3 = (datasel) ? data_0 : olp1_3;
assign oa_4 = (datasel) ? data_1 : olp1_4;

// OB.NET (670) - oa[5-21] : mx2
assign oa_5 = (datasel) ? data_2 : olp_5;
assign oa_6 = (datasel) ? data_3 : olp_6;
assign oa_7 = (datasel) ? data_4 : olp_7;
assign oa_8 = (datasel) ? data_5 : olp_8;
assign oa_9 = (datasel) ? data_6 : olp_9;
assign oa_10 = (datasel) ? data_7 : olp_10;
assign oa_11 = (datasel) ? data_8 : olp_11;
assign oa_12 = (datasel) ? data_9 : olp_12;
assign oa_13 = (datasel) ? data_10 : olp_13;
assign oa_14 = (datasel) ? data_11 : olp_14;
assign oa_15 = (datasel) ? data_12 : olp_15;
assign oa_16 = (datasel) ? data_13 : olp_16;
assign oa_17 = (datasel) ? data_14 : olp_17;
assign oa_18 = (datasel) ? data_15 : olp_18;
assign oa_19 = (datasel) ? data_16 : olp_19;
assign oa_20 = (datasel) ? data_17 : olp_20;
assign oa_21 = (datasel) ? data_18 : olp_21;

// OB.NET (671) - oa[22] : mx2
assign oa_22 = (datasel) ? data_19 : olpd_22;

// OB.NET (672) - oa[23] : mx2
assign oa_23 = (datasel) ? data_20 : olpd_23;

// OB.NET (676) - oa1[0-2] : tsm
assign a_0_out = gnd;
assign a_0_oe = oben;
assign a_1_out = gnd;
assign a_1_oe = oben;
assign a_2_out = gnd;
assign a_2_oe = oben;

// OB.NET (677) - oa1[3-23] : tsm
assign a_3_out = oa_3;
assign a_3_oe = oben;
assign a_4_out = oa_4;
assign a_4_oe = oben;
assign a_5_out = oa_5;
assign a_5_oe = oben;
assign a_6_out = oa_6;
assign a_6_oe = oben;
assign a_7_out = oa_7;
assign a_7_oe = oben;
assign a_8_out = oa_8;
assign a_8_oe = oben;
assign a_9_out = oa_9;
assign a_9_oe = oben;
assign a_10_out = oa_10;
assign a_10_oe = oben;
assign a_11_out = oa_11;
assign a_11_oe = oben;
assign a_12_out = oa_12;
assign a_12_oe = oben;
assign a_13_out = oa_13;
assign a_13_oe = oben;
assign a_14_out = oa_14;
assign a_14_oe = oben;
assign a_15_out = oa_15;
assign a_15_oe = oben;
assign a_16_out = oa_16;
assign a_16_oe = oben;
assign a_17_out = oa_17;
assign a_17_oe = oben;
assign a_18_out = oa_18;
assign a_18_oe = oben;
assign a_19_out = oa_19;
assign a_19_oe = oben;
assign a_20_out = oa_20;
assign a_20_oe = oben;
assign a_21_out = oa_21;
assign a_21_oe = oben;
assign a_22_out = oa_22;
assign a_22_oe = oben;
assign a_23_out = oa_23;
assign a_23_oe = oben;

// OB.NET (680) - ge1 : join
assign oba[0] = a_0_in;
assign oba[1] = a_1_in;
assign oba[2] = a_2_in;
assign oba[3] = a_3_in;
assign oba[4] = a_4_in;
assign oba[5] = a_5_in;
assign oba[6] = a_6_in;
assign oba[7] = a_7_in;
assign oba[8] = a_8_in;
assign oba[9] = a_9_in;
assign oba[10] = a_10_in;
assign oba[11] = a_11_in;
assign oba[12] = a_12_in;
assign oba[13] = a_13_in;
assign oba[14] = a_14_in;
assign oba[15] = a_15_in;
assign oba[16] = a_16_in;
assign oba[17] = a_17_in;
assign oba[18] = a_18_in;
assign oba[19] = a_19_in;
assign oba[20] = a_20_in;
assign oba[21] = a_21_in;
assign oba[22] = a_22_in;
assign oba[23] = a_23_in;

// OB.NET (681) - ge2 : dummy

// --- Compiler-generated PE for BUS wd[0]
assign wd_0_out = (ts_pe_288_a0_oe & ts_pe_288_a0_out ) | (ts_pe_288_a1_oe & ts_pe_288_a1_out ) | 1'b0;
assign wd_0_oe = ts_pe_288_a0_oe | ts_pe_288_a1_oe;
assign ts_pe_288_a0_in = wd_0_in;
assign ts_pe_288_a1_in = wd_0_in;

// --- Compiler-generated PE for BUS wd[1]
assign wd_1_out = (ts_pe_289_a0_oe & ts_pe_289_a0_out ) | (ts_pe_289_a1_oe & ts_pe_289_a1_out ) | 1'b0;
assign wd_1_oe = ts_pe_289_a0_oe | ts_pe_289_a1_oe;
assign ts_pe_289_a0_in = wd_1_in;
assign ts_pe_289_a1_in = wd_1_in;

// --- Compiler-generated PE for BUS wd[2]
assign wd_2_out = (ts_pe_290_a0_oe & ts_pe_290_a0_out ) | (ts_pe_290_a1_oe & ts_pe_290_a1_out ) | 1'b0;
assign wd_2_oe = ts_pe_290_a0_oe | ts_pe_290_a1_oe;
assign ts_pe_290_a0_in = wd_2_in;
assign ts_pe_290_a1_in = wd_2_in;

// --- Compiler-generated PE for BUS wd[3]
assign wd_3_out = (ts_pe_291_a0_oe & ts_pe_291_a0_out ) | (ts_pe_291_a1_oe & ts_pe_291_a1_out ) | 1'b0;
assign wd_3_oe = ts_pe_291_a0_oe | ts_pe_291_a1_oe;
assign ts_pe_291_a0_in = wd_3_in;
assign ts_pe_291_a1_in = wd_3_in;

// --- Compiler-generated PE for BUS wd[4]
assign wd_4_out = (ts_pe_292_a0_oe & ts_pe_292_a0_out ) | (ts_pe_292_a1_oe & ts_pe_292_a1_out ) | 1'b0;
assign wd_4_oe = ts_pe_292_a0_oe | ts_pe_292_a1_oe;
assign ts_pe_292_a0_in = wd_4_in;
assign ts_pe_292_a1_in = wd_4_in;

// --- Compiler-generated PE for BUS wd[5]
assign wd_5_out = (ts_pe_293_a0_oe & ts_pe_293_a0_out ) | (ts_pe_293_a1_oe & ts_pe_293_a1_out ) | 1'b0;
assign wd_5_oe = ts_pe_293_a0_oe | ts_pe_293_a1_oe;
assign ts_pe_293_a0_in = wd_5_in;
assign ts_pe_293_a1_in = wd_5_in;

// --- Compiler-generated PE for BUS wd[6]
assign wd_6_out = (ts_pe_294_a0_oe & ts_pe_294_a0_out ) | (ts_pe_294_a1_oe & ts_pe_294_a1_out ) | 1'b0;
assign wd_6_oe = ts_pe_294_a0_oe | ts_pe_294_a1_oe;
assign ts_pe_294_a0_in = wd_6_in;
assign ts_pe_294_a1_in = wd_6_in;

// --- Compiler-generated PE for BUS wd[7]
assign wd_7_out = (ts_pe_295_a0_oe & ts_pe_295_a0_out ) | (ts_pe_295_a1_oe & ts_pe_295_a1_out ) | 1'b0;
assign wd_7_oe = ts_pe_295_a0_oe | ts_pe_295_a1_oe;
assign ts_pe_295_a0_in = wd_7_in;
assign ts_pe_295_a1_in = wd_7_in;

// --- Compiler-generated PE for BUS wd[8]
assign wd_8_out = (ts_pe_296_a0_oe & ts_pe_296_a0_out ) | (ts_pe_296_a1_oe & ts_pe_296_a1_out ) | 1'b0;
assign wd_8_oe = ts_pe_296_a0_oe | ts_pe_296_a1_oe;
assign ts_pe_296_a0_in = wd_8_in;
assign ts_pe_296_a1_in = wd_8_in;

// --- Compiler-generated PE for BUS wd[9]
assign wd_9_out = (ts_pe_297_a0_oe & ts_pe_297_a0_out ) | (ts_pe_297_a1_oe & ts_pe_297_a1_out ) | 1'b0;
assign wd_9_oe = ts_pe_297_a0_oe | ts_pe_297_a1_oe;
assign ts_pe_297_a0_in = wd_9_in;
assign ts_pe_297_a1_in = wd_9_in;

// --- Compiler-generated PE for BUS wd[10]
assign wd_10_out = (ts_pe_298_a0_oe & ts_pe_298_a0_out ) | (ts_pe_298_a1_oe & ts_pe_298_a1_out ) | 1'b0;
assign wd_10_oe = ts_pe_298_a0_oe | ts_pe_298_a1_oe;
assign ts_pe_298_a0_in = wd_10_in;
assign ts_pe_298_a1_in = wd_10_in;

// --- Compiler-generated PE for BUS wd[11]
assign wd_11_out = (ts_pe_299_a0_oe & ts_pe_299_a0_out ) | (ts_pe_299_a1_oe & ts_pe_299_a1_out ) | 1'b0;
assign wd_11_oe = ts_pe_299_a0_oe | ts_pe_299_a1_oe;
assign ts_pe_299_a0_in = wd_11_in;
assign ts_pe_299_a1_in = wd_11_in;

// --- Compiler-generated PE for BUS wd[12]
assign wd_12_out = (ts_pe_300_a0_oe & ts_pe_300_a0_out ) | (ts_pe_300_a1_oe & ts_pe_300_a1_out ) | 1'b0;
assign wd_12_oe = ts_pe_300_a0_oe | ts_pe_300_a1_oe;
assign ts_pe_300_a0_in = wd_12_in;
assign ts_pe_300_a1_in = wd_12_in;

// --- Compiler-generated PE for BUS wd[13]
assign wd_13_out = (ts_pe_301_a0_oe & ts_pe_301_a0_out ) | (ts_pe_301_a1_oe & ts_pe_301_a1_out ) | 1'b0;
assign wd_13_oe = ts_pe_301_a0_oe | ts_pe_301_a1_oe;
assign ts_pe_301_a0_in = wd_13_in;
assign ts_pe_301_a1_in = wd_13_in;

// --- Compiler-generated PE for BUS wd[14]
assign wd_14_out = (ts_pe_302_a0_oe & ts_pe_302_a0_out ) | (ts_pe_302_a1_oe & ts_pe_302_a1_out ) | 1'b0;
assign wd_14_oe = ts_pe_302_a0_oe | ts_pe_302_a1_oe;
assign ts_pe_302_a0_in = wd_14_in;
assign ts_pe_302_a1_in = wd_14_in;

// --- Compiler-generated PE for BUS wd[15]
assign wd_15_out = (ts_pe_303_a0_oe & ts_pe_303_a0_out ) | (ts_pe_303_a1_oe & ts_pe_303_a1_out ) | 1'b0;
assign wd_15_oe = ts_pe_303_a0_oe | ts_pe_303_a1_oe;
assign ts_pe_303_a0_in = wd_15_in;
assign ts_pe_303_a1_in = wd_15_in;

// --- Compiler-generated PE for BUS wd[16]
assign wd_16_out = (ts_pe_304_a0_oe & ts_pe_304_a0_out ) | (ts_pe_304_a1_oe & ts_pe_304_a1_out ) | 1'b0;
assign wd_16_oe = ts_pe_304_a0_oe | ts_pe_304_a1_oe;
assign ts_pe_304_a0_in = wd_16_in;
assign ts_pe_304_a1_in = wd_16_in;

// --- Compiler-generated PE for BUS wd[17]
assign wd_17_out = (ts_pe_305_a0_oe & ts_pe_305_a0_out ) | (ts_pe_305_a1_oe & ts_pe_305_a1_out ) | 1'b0;
assign wd_17_oe = ts_pe_305_a0_oe | ts_pe_305_a1_oe;
assign ts_pe_305_a0_in = wd_17_in;
assign ts_pe_305_a1_in = wd_17_in;

// --- Compiler-generated PE for BUS wd[18]
assign wd_18_out = (ts_pe_306_a0_oe & ts_pe_306_a0_out ) | (ts_pe_306_a1_oe & ts_pe_306_a1_out ) | 1'b0;
assign wd_18_oe = ts_pe_306_a0_oe | ts_pe_306_a1_oe;
assign ts_pe_306_a0_in = wd_18_in;
assign ts_pe_306_a1_in = wd_18_in;

// --- Compiler-generated PE for BUS wd[19]
assign wd_19_out = (ts_pe_307_a0_oe & ts_pe_307_a0_out ) | (ts_pe_307_a1_oe & ts_pe_307_a1_out ) | 1'b0;
assign wd_19_oe = ts_pe_307_a0_oe | ts_pe_307_a1_oe;
assign ts_pe_307_a0_in = wd_19_in;
assign ts_pe_307_a1_in = wd_19_in;

// --- Compiler-generated PE for BUS wd[20]
assign wd_20_out = (ts_pe_308_a0_oe & ts_pe_308_a0_out ) | (ts_pe_308_a1_oe & ts_pe_308_a1_out ) | 1'b0;
assign wd_20_oe = ts_pe_308_a0_oe | ts_pe_308_a1_oe;
assign ts_pe_308_a0_in = wd_20_in;
assign ts_pe_308_a1_in = wd_20_in;

// --- Compiler-generated PE for BUS wd[21]
assign wd_21_out = (ts_pe_309_a0_oe & ts_pe_309_a0_out ) | (ts_pe_309_a1_oe & ts_pe_309_a1_out ) | 1'b0;
assign wd_21_oe = ts_pe_309_a0_oe | ts_pe_309_a1_oe;
assign ts_pe_309_a0_in = wd_21_in;
assign ts_pe_309_a1_in = wd_21_in;

// --- Compiler-generated PE for BUS wd[22]
assign wd_22_out = (ts_pe_310_a0_oe & ts_pe_310_a0_out ) | (ts_pe_310_a1_oe & ts_pe_310_a1_out ) | 1'b0;
assign wd_22_oe = ts_pe_310_a0_oe | ts_pe_310_a1_oe;
assign ts_pe_310_a0_in = wd_22_in;
assign ts_pe_310_a1_in = wd_22_in;

// --- Compiler-generated PE for BUS wd[23]
assign wd_23_out = (ts_pe_311_a0_oe & ts_pe_311_a0_out ) | (ts_pe_311_a1_oe & ts_pe_311_a1_out ) | 1'b0;
assign wd_23_oe = ts_pe_311_a0_oe | ts_pe_311_a1_oe;
assign ts_pe_311_a0_in = wd_23_in;
assign ts_pe_311_a1_in = wd_23_in;

// --- Compiler-generated PE for BUS wd[24]
assign wd_24_out = (ts_pe_312_a0_oe & ts_pe_312_a0_out ) | (ts_pe_312_a1_oe & ts_pe_312_a1_out ) | 1'b0;
assign wd_24_oe = ts_pe_312_a0_oe | ts_pe_312_a1_oe;
assign ts_pe_312_a0_in = wd_24_in;
assign ts_pe_312_a1_in = wd_24_in;

// --- Compiler-generated PE for BUS wd[25]
assign wd_25_out = (ts_pe_313_a0_oe & ts_pe_313_a0_out ) | (ts_pe_313_a1_oe & ts_pe_313_a1_out ) | 1'b0;
assign wd_25_oe = ts_pe_313_a0_oe | ts_pe_313_a1_oe;
assign ts_pe_313_a0_in = wd_25_in;
assign ts_pe_313_a1_in = wd_25_in;

// --- Compiler-generated PE for BUS wd[26]
assign wd_26_out = (ts_pe_314_a0_oe & ts_pe_314_a0_out ) | (ts_pe_314_a1_oe & ts_pe_314_a1_out ) | 1'b0;
assign wd_26_oe = ts_pe_314_a0_oe | ts_pe_314_a1_oe;
assign ts_pe_314_a0_in = wd_26_in;
assign ts_pe_314_a1_in = wd_26_in;

// --- Compiler-generated PE for BUS wd[27]
assign wd_27_out = (ts_pe_315_a0_oe & ts_pe_315_a0_out ) | (ts_pe_315_a1_oe & ts_pe_315_a1_out ) | 1'b0;
assign wd_27_oe = ts_pe_315_a0_oe | ts_pe_315_a1_oe;
assign ts_pe_315_a0_in = wd_27_in;
assign ts_pe_315_a1_in = wd_27_in;

// --- Compiler-generated PE for BUS wd[28]
assign wd_28_out = (ts_pe_316_a0_oe & ts_pe_316_a0_out ) | (ts_pe_316_a1_oe & ts_pe_316_a1_out ) | 1'b0;
assign wd_28_oe = ts_pe_316_a0_oe | ts_pe_316_a1_oe;
assign ts_pe_316_a0_in = wd_28_in;
assign ts_pe_316_a1_in = wd_28_in;

// --- Compiler-generated PE for BUS wd[29]
assign wd_29_out = (ts_pe_317_a0_oe & ts_pe_317_a0_out ) | (ts_pe_317_a1_oe & ts_pe_317_a1_out ) | 1'b0;
assign wd_29_oe = ts_pe_317_a0_oe | ts_pe_317_a1_oe;
assign ts_pe_317_a0_in = wd_29_in;
assign ts_pe_317_a1_in = wd_29_in;

// --- Compiler-generated PE for BUS wd[30]
assign wd_30_out = (ts_pe_318_a0_oe & ts_pe_318_a0_out ) | (ts_pe_318_a1_oe & ts_pe_318_a1_out ) | 1'b0;
assign wd_30_oe = ts_pe_318_a0_oe | ts_pe_318_a1_oe;
assign ts_pe_318_a0_in = wd_30_in;
assign ts_pe_318_a1_in = wd_30_in;

// --- Compiler-generated PE for BUS wd[31]
assign wd_31_out = (ts_pe_319_a0_oe & ts_pe_319_a0_out ) | (ts_pe_319_a1_oe & ts_pe_319_a1_out ) | 1'b0;
assign wd_31_oe = ts_pe_319_a0_oe | ts_pe_319_a1_oe;
assign ts_pe_319_a0_in = wd_31_in;
assign ts_pe_319_a1_in = wd_31_in;

// --- Compiler-generated PE for BUS wd[32]
assign wd_32_out = (ts_pe_320_a0_oe & ts_pe_320_a0_out ) | (ts_pe_320_a1_oe & ts_pe_320_a1_out ) | 1'b0;
assign wd_32_oe = ts_pe_320_a0_oe | ts_pe_320_a1_oe;
assign ts_pe_320_a0_in = wd_32_in;
assign ts_pe_320_a1_in = wd_32_in;

// --- Compiler-generated PE for BUS wd[33]
assign wd_33_out = (ts_pe_321_a0_oe & ts_pe_321_a0_out ) | (ts_pe_321_a1_oe & ts_pe_321_a1_out ) | 1'b0;
assign wd_33_oe = ts_pe_321_a0_oe | ts_pe_321_a1_oe;
assign ts_pe_321_a0_in = wd_33_in;
assign ts_pe_321_a1_in = wd_33_in;

// --- Compiler-generated PE for BUS wd[34]
assign wd_34_out = (ts_pe_322_a0_oe & ts_pe_322_a0_out ) | (ts_pe_322_a1_oe & ts_pe_322_a1_out ) | 1'b0;
assign wd_34_oe = ts_pe_322_a0_oe | ts_pe_322_a1_oe;
assign ts_pe_322_a0_in = wd_34_in;
assign ts_pe_322_a1_in = wd_34_in;

// --- Compiler-generated PE for BUS wd[35]
assign wd_35_out = (ts_pe_323_a0_oe & ts_pe_323_a0_out ) | (ts_pe_323_a1_oe & ts_pe_323_a1_out ) | 1'b0;
assign wd_35_oe = ts_pe_323_a0_oe | ts_pe_323_a1_oe;
assign ts_pe_323_a0_in = wd_35_in;
assign ts_pe_323_a1_in = wd_35_in;

// --- Compiler-generated PE for BUS wd[36]
assign wd_36_out = (ts_pe_324_a0_oe & ts_pe_324_a0_out ) | (ts_pe_324_a1_oe & ts_pe_324_a1_out ) | 1'b0;
assign wd_36_oe = ts_pe_324_a0_oe | ts_pe_324_a1_oe;
assign ts_pe_324_a0_in = wd_36_in;
assign ts_pe_324_a1_in = wd_36_in;

// --- Compiler-generated PE for BUS wd[37]
assign wd_37_out = (ts_pe_325_a0_oe & ts_pe_325_a0_out ) | (ts_pe_325_a1_oe & ts_pe_325_a1_out ) | 1'b0;
assign wd_37_oe = ts_pe_325_a0_oe | ts_pe_325_a1_oe;
assign ts_pe_325_a0_in = wd_37_in;
assign ts_pe_325_a1_in = wd_37_in;

// --- Compiler-generated PE for BUS wd[38]
assign wd_38_out = (ts_pe_326_a0_oe & ts_pe_326_a0_out ) | (ts_pe_326_a1_oe & ts_pe_326_a1_out ) | 1'b0;
assign wd_38_oe = ts_pe_326_a0_oe | ts_pe_326_a1_oe;
assign ts_pe_326_a0_in = wd_38_in;
assign ts_pe_326_a1_in = wd_38_in;

// --- Compiler-generated PE for BUS wd[39]
assign wd_39_out = (ts_pe_327_a0_oe & ts_pe_327_a0_out ) | (ts_pe_327_a1_oe & ts_pe_327_a1_out ) | 1'b0;
assign wd_39_oe = ts_pe_327_a0_oe | ts_pe_327_a1_oe;
assign ts_pe_327_a0_in = wd_39_in;
assign ts_pe_327_a1_in = wd_39_in;

// --- Compiler-generated PE for BUS wd[40]
assign wd_40_out = (ts_pe_328_a0_oe & ts_pe_328_a0_out ) | (ts_pe_328_a1_oe & ts_pe_328_a1_out ) | 1'b0;
assign wd_40_oe = ts_pe_328_a0_oe | ts_pe_328_a1_oe;
assign ts_pe_328_a0_in = wd_40_in;
assign ts_pe_328_a1_in = wd_40_in;

// --- Compiler-generated PE for BUS wd[41]
assign wd_41_out = (ts_pe_329_a0_oe & ts_pe_329_a0_out ) | (ts_pe_329_a1_oe & ts_pe_329_a1_out ) | 1'b0;
assign wd_41_oe = ts_pe_329_a0_oe | ts_pe_329_a1_oe;
assign ts_pe_329_a0_in = wd_41_in;
assign ts_pe_329_a1_in = wd_41_in;

// --- Compiler-generated PE for BUS wd[42]
assign wd_42_out = (ts_pe_330_a0_oe & ts_pe_330_a0_out ) | (ts_pe_330_a1_oe & ts_pe_330_a1_out ) | 1'b0;
assign wd_42_oe = ts_pe_330_a0_oe | ts_pe_330_a1_oe;
assign ts_pe_330_a0_in = wd_42_in;
assign ts_pe_330_a1_in = wd_42_in;

// --- Compiler-generated PE for BUS wd[43]
assign wd_43_out = (ts_pe_331_a0_oe & ts_pe_331_a0_out ) | (ts_pe_331_a1_oe & ts_pe_331_a1_out ) | 1'b0;
assign wd_43_oe = ts_pe_331_a0_oe | ts_pe_331_a1_oe;
assign ts_pe_331_a0_in = wd_43_in;
assign ts_pe_331_a1_in = wd_43_in;

// --- Compiler-generated PE for BUS wd[44]
assign wd_44_out = (ts_pe_332_a0_oe & ts_pe_332_a0_out ) | (ts_pe_332_a1_oe & ts_pe_332_a1_out ) | 1'b0;
assign wd_44_oe = ts_pe_332_a0_oe | ts_pe_332_a1_oe;
assign ts_pe_332_a0_in = wd_44_in;
assign ts_pe_332_a1_in = wd_44_in;

// --- Compiler-generated PE for BUS wd[45]
assign wd_45_out = (ts_pe_333_a0_oe & ts_pe_333_a0_out ) | (ts_pe_333_a1_oe & ts_pe_333_a1_out ) | 1'b0;
assign wd_45_oe = ts_pe_333_a0_oe | ts_pe_333_a1_oe;
assign ts_pe_333_a0_in = wd_45_in;
assign ts_pe_333_a1_in = wd_45_in;

// --- Compiler-generated PE for BUS wd[46]
assign wd_46_out = (ts_pe_334_a0_oe & ts_pe_334_a0_out ) | (ts_pe_334_a1_oe & ts_pe_334_a1_out ) | 1'b0;
assign wd_46_oe = ts_pe_334_a0_oe | ts_pe_334_a1_oe;
assign ts_pe_334_a0_in = wd_46_in;
assign ts_pe_334_a1_in = wd_46_in;

// --- Compiler-generated PE for BUS wd[47]
assign wd_47_out = (ts_pe_335_a0_oe & ts_pe_335_a0_out ) | (ts_pe_335_a1_oe & ts_pe_335_a1_out ) | 1'b0;
assign wd_47_oe = ts_pe_335_a0_oe | ts_pe_335_a1_oe;
assign ts_pe_335_a0_in = wd_47_in;
assign ts_pe_335_a1_in = wd_47_in;

// --- Compiler-generated PE for BUS wd[48]
assign wd_48_out = (ts_pe_336_a0_oe & ts_pe_336_a0_out ) | (ts_pe_336_a1_oe & ts_pe_336_a1_out ) | 1'b0;
assign wd_48_oe = ts_pe_336_a0_oe | ts_pe_336_a1_oe;
assign ts_pe_336_a0_in = wd_48_in;
assign ts_pe_336_a1_in = wd_48_in;

// --- Compiler-generated PE for BUS wd[49]
assign wd_49_out = (ts_pe_337_a0_oe & ts_pe_337_a0_out ) | (ts_pe_337_a1_oe & ts_pe_337_a1_out ) | 1'b0;
assign wd_49_oe = ts_pe_337_a0_oe | ts_pe_337_a1_oe;
assign ts_pe_337_a0_in = wd_49_in;
assign ts_pe_337_a1_in = wd_49_in;

// --- Compiler-generated PE for BUS wd[50]
assign wd_50_out = (ts_pe_338_a0_oe & ts_pe_338_a0_out ) | (ts_pe_338_a1_oe & ts_pe_338_a1_out ) | 1'b0;
assign wd_50_oe = ts_pe_338_a0_oe | ts_pe_338_a1_oe;
assign ts_pe_338_a0_in = wd_50_in;
assign ts_pe_338_a1_in = wd_50_in;

// --- Compiler-generated PE for BUS wd[51]
assign wd_51_out = (ts_pe_339_a0_oe & ts_pe_339_a0_out ) | (ts_pe_339_a1_oe & ts_pe_339_a1_out ) | 1'b0;
assign wd_51_oe = ts_pe_339_a0_oe | ts_pe_339_a1_oe;
assign ts_pe_339_a0_in = wd_51_in;
assign ts_pe_339_a1_in = wd_51_in;

// --- Compiler-generated PE for BUS wd[52]
assign wd_52_out = (ts_pe_340_a0_oe & ts_pe_340_a0_out ) | (ts_pe_340_a1_oe & ts_pe_340_a1_out ) | 1'b0;
assign wd_52_oe = ts_pe_340_a0_oe | ts_pe_340_a1_oe;
assign ts_pe_340_a0_in = wd_52_in;
assign ts_pe_340_a1_in = wd_52_in;

// --- Compiler-generated PE for BUS wd[53]
assign wd_53_out = (ts_pe_341_a0_oe & ts_pe_341_a0_out ) | (ts_pe_341_a1_oe & ts_pe_341_a1_out ) | 1'b0;
assign wd_53_oe = ts_pe_341_a0_oe | ts_pe_341_a1_oe;
assign ts_pe_341_a0_in = wd_53_in;
assign ts_pe_341_a1_in = wd_53_in;

// --- Compiler-generated PE for BUS wd[54]
assign wd_54_out = (ts_pe_342_a0_oe & ts_pe_342_a0_out ) | (ts_pe_342_a1_oe & ts_pe_342_a1_out ) | 1'b0;
assign wd_54_oe = ts_pe_342_a0_oe | ts_pe_342_a1_oe;
assign ts_pe_342_a0_in = wd_54_in;
assign ts_pe_342_a1_in = wd_54_in;

// --- Compiler-generated PE for BUS wd[55]
assign wd_55_out = (ts_pe_343_a0_oe & ts_pe_343_a0_out ) | (ts_pe_343_a1_oe & ts_pe_343_a1_out ) | 1'b0;
assign wd_55_oe = ts_pe_343_a0_oe | ts_pe_343_a1_oe;
assign ts_pe_343_a0_in = wd_55_in;
assign ts_pe_343_a1_in = wd_55_in;

// --- Compiler-generated PE for BUS wd[56]
assign wd_56_out = (ts_pe_344_a0_oe & ts_pe_344_a0_out ) | (ts_pe_344_a1_oe & ts_pe_344_a1_out ) | 1'b0;
assign wd_56_oe = ts_pe_344_a0_oe | ts_pe_344_a1_oe;
assign ts_pe_344_a0_in = wd_56_in;
assign ts_pe_344_a1_in = wd_56_in;

// --- Compiler-generated PE for BUS wd[57]
assign wd_57_out = (ts_pe_345_a0_oe & ts_pe_345_a0_out ) | (ts_pe_345_a1_oe & ts_pe_345_a1_out ) | 1'b0;
assign wd_57_oe = ts_pe_345_a0_oe | ts_pe_345_a1_oe;
assign ts_pe_345_a0_in = wd_57_in;
assign ts_pe_345_a1_in = wd_57_in;

// --- Compiler-generated PE for BUS wd[58]
assign wd_58_out = (ts_pe_346_a0_oe & ts_pe_346_a0_out ) | (ts_pe_346_a1_oe & ts_pe_346_a1_out ) | 1'b0;
assign wd_58_oe = ts_pe_346_a0_oe | ts_pe_346_a1_oe;
assign ts_pe_346_a0_in = wd_58_in;
assign ts_pe_346_a1_in = wd_58_in;

// --- Compiler-generated PE for BUS wd[59]
assign wd_59_out = (ts_pe_347_a0_oe & ts_pe_347_a0_out ) | (ts_pe_347_a1_oe & ts_pe_347_a1_out ) | 1'b0;
assign wd_59_oe = ts_pe_347_a0_oe | ts_pe_347_a1_oe;
assign ts_pe_347_a0_in = wd_59_in;
assign ts_pe_347_a1_in = wd_59_in;

// --- Compiler-generated PE for BUS wd[60]
assign wd_60_out = (ts_pe_348_a0_oe & ts_pe_348_a0_out ) | (ts_pe_348_a1_oe & ts_pe_348_a1_out ) | 1'b0;
assign wd_60_oe = ts_pe_348_a0_oe | ts_pe_348_a1_oe;
assign ts_pe_348_a0_in = wd_60_in;
assign ts_pe_348_a1_in = wd_60_in;

// --- Compiler-generated PE for BUS wd[61]
assign wd_61_out = (ts_pe_349_a0_oe & ts_pe_349_a0_out ) | (ts_pe_349_a1_oe & ts_pe_349_a1_out ) | 1'b0;
assign wd_61_oe = ts_pe_349_a0_oe | ts_pe_349_a1_oe;
assign ts_pe_349_a0_in = wd_61_in;
assign ts_pe_349_a1_in = wd_61_in;

// --- Compiler-generated PE for BUS wd[62]
assign wd_62_out = (ts_pe_350_a0_oe & ts_pe_350_a0_out ) | (ts_pe_350_a1_oe & ts_pe_350_a1_out ) | 1'b0;
assign wd_62_oe = ts_pe_350_a0_oe | ts_pe_350_a1_oe;
assign ts_pe_350_a0_in = wd_62_in;
assign ts_pe_350_a1_in = wd_62_in;

// --- Compiler-generated PE for BUS wd[63]
assign wd_63_out = (ts_pe_351_a0_oe & ts_pe_351_a0_out ) | (ts_pe_351_a1_oe & ts_pe_351_a1_out ) | 1'b0;
assign wd_63_oe = ts_pe_351_a0_oe | ts_pe_351_a1_oe;
assign ts_pe_351_a0_in = wd_63_in;
assign ts_pe_351_a1_in = wd_63_in;

// --- Compiler-generated PE for BUS dr[0]
assign dr_0_out = (ts_pe_352_a0_oe & ts_pe_352_a0_out ) | (ts_pe_352_a1_oe & ts_pe_352_a1_out ) | (ts_pe_352_a2_oe & ts_pe_352_a2_out ) | (ts_pe_352_a3_oe & ts_pe_352_a3_out ) | 1'b0;
assign dr_0_oe = ts_pe_352_a0_oe | ts_pe_352_a1_oe | ts_pe_352_a2_oe | ts_pe_352_a3_oe;
assign ts_pe_352_a0_in = dr_0_in;
assign ts_pe_352_a1_in = dr_0_in;
assign ts_pe_352_a2_in = dr_0_in;
assign ts_pe_352_a3_in = dr_0_in;

// --- Compiler-generated PE for BUS dr[1]
assign dr_1_out = (ts_pe_353_a0_oe & ts_pe_353_a0_out ) | (ts_pe_353_a1_oe & ts_pe_353_a1_out ) | (ts_pe_353_a2_oe & ts_pe_353_a2_out ) | (ts_pe_353_a3_oe & ts_pe_353_a3_out ) | 1'b0;
assign dr_1_oe = ts_pe_353_a0_oe | ts_pe_353_a1_oe | ts_pe_353_a2_oe | ts_pe_353_a3_oe;
assign ts_pe_353_a0_in = dr_1_in;
assign ts_pe_353_a1_in = dr_1_in;
assign ts_pe_353_a2_in = dr_1_in;
assign ts_pe_353_a3_in = dr_1_in;

// --- Compiler-generated PE for BUS dr[2]
assign dr_2_out = (ts_pe_354_a0_oe & ts_pe_354_a0_out ) | (ts_pe_354_a1_oe & ts_pe_354_a1_out ) | (ts_pe_354_a2_oe & ts_pe_354_a2_out ) | (ts_pe_354_a3_oe & ts_pe_354_a3_out ) | 1'b0;
assign dr_2_oe = ts_pe_354_a0_oe | ts_pe_354_a1_oe | ts_pe_354_a2_oe | ts_pe_354_a3_oe;
assign ts_pe_354_a0_in = dr_2_in;
assign ts_pe_354_a1_in = dr_2_in;
assign ts_pe_354_a2_in = dr_2_in;
assign ts_pe_354_a3_in = dr_2_in;

// --- Compiler-generated PE for BUS dr[3]
assign dr_3_out = (ts_pe_355_a0_oe & ts_pe_355_a0_out ) | (ts_pe_355_a1_oe & ts_pe_355_a1_out ) | (ts_pe_355_a2_oe & ts_pe_355_a2_out ) | (ts_pe_355_a3_oe & ts_pe_355_a3_out ) | 1'b0;
assign dr_3_oe = ts_pe_355_a0_oe | ts_pe_355_a1_oe | ts_pe_355_a2_oe | ts_pe_355_a3_oe;
assign ts_pe_355_a0_in = dr_3_in;
assign ts_pe_355_a1_in = dr_3_in;
assign ts_pe_355_a2_in = dr_3_in;
assign ts_pe_355_a3_in = dr_3_in;

// --- Compiler-generated PE for BUS dr[4]
assign dr_4_out = (ts_pe_356_a0_oe & ts_pe_356_a0_out ) | (ts_pe_356_a1_oe & ts_pe_356_a1_out ) | (ts_pe_356_a2_oe & ts_pe_356_a2_out ) | (ts_pe_356_a3_oe & ts_pe_356_a3_out ) | 1'b0;
assign dr_4_oe = ts_pe_356_a0_oe | ts_pe_356_a1_oe | ts_pe_356_a2_oe | ts_pe_356_a3_oe;
assign ts_pe_356_a0_in = dr_4_in;
assign ts_pe_356_a1_in = dr_4_in;
assign ts_pe_356_a2_in = dr_4_in;
assign ts_pe_356_a3_in = dr_4_in;

// --- Compiler-generated PE for BUS dr[5]
assign dr_5_out = (ts_pe_357_a0_oe & ts_pe_357_a0_out ) | (ts_pe_357_a1_oe & ts_pe_357_a1_out ) | (ts_pe_357_a2_oe & ts_pe_357_a2_out ) | (ts_pe_357_a3_oe & ts_pe_357_a3_out ) | 1'b0;
assign dr_5_oe = ts_pe_357_a0_oe | ts_pe_357_a1_oe | ts_pe_357_a2_oe | ts_pe_357_a3_oe;
assign ts_pe_357_a0_in = dr_5_in;
assign ts_pe_357_a1_in = dr_5_in;
assign ts_pe_357_a2_in = dr_5_in;
assign ts_pe_357_a3_in = dr_5_in;

// --- Compiler-generated PE for BUS dr[6]
assign dr_6_out = (ts_pe_358_a0_oe & ts_pe_358_a0_out ) | (ts_pe_358_a1_oe & ts_pe_358_a1_out ) | (ts_pe_358_a2_oe & ts_pe_358_a2_out ) | (ts_pe_358_a3_oe & ts_pe_358_a3_out ) | 1'b0;
assign dr_6_oe = ts_pe_358_a0_oe | ts_pe_358_a1_oe | ts_pe_358_a2_oe | ts_pe_358_a3_oe;
assign ts_pe_358_a0_in = dr_6_in;
assign ts_pe_358_a1_in = dr_6_in;
assign ts_pe_358_a2_in = dr_6_in;
assign ts_pe_358_a3_in = dr_6_in;

// --- Compiler-generated PE for BUS dr[7]
assign dr_7_out = (ts_pe_359_a0_oe & ts_pe_359_a0_out ) | (ts_pe_359_a1_oe & ts_pe_359_a1_out ) | (ts_pe_359_a2_oe & ts_pe_359_a2_out ) | (ts_pe_359_a3_oe & ts_pe_359_a3_out ) | 1'b0;
assign dr_7_oe = ts_pe_359_a0_oe | ts_pe_359_a1_oe | ts_pe_359_a2_oe | ts_pe_359_a3_oe;
assign ts_pe_359_a0_in = dr_7_in;
assign ts_pe_359_a1_in = dr_7_in;
assign ts_pe_359_a2_in = dr_7_in;
assign ts_pe_359_a3_in = dr_7_in;

// --- Compiler-generated PE for BUS dr[8]
assign dr_8_out = (ts_pe_360_a0_oe & ts_pe_360_a0_out ) | (ts_pe_360_a1_oe & ts_pe_360_a1_out ) | (ts_pe_360_a2_oe & ts_pe_360_a2_out ) | (ts_pe_360_a3_oe & ts_pe_360_a3_out ) | 1'b0;
assign dr_8_oe = ts_pe_360_a0_oe | ts_pe_360_a1_oe | ts_pe_360_a2_oe | ts_pe_360_a3_oe;
assign ts_pe_360_a0_in = dr_8_in;
assign ts_pe_360_a1_in = dr_8_in;
assign ts_pe_360_a2_in = dr_8_in;
assign ts_pe_360_a3_in = dr_8_in;

// --- Compiler-generated PE for BUS dr[9]
assign dr_9_out = (ts_pe_361_a0_oe & ts_pe_361_a0_out ) | (ts_pe_361_a1_oe & ts_pe_361_a1_out ) | (ts_pe_361_a2_oe & ts_pe_361_a2_out ) | (ts_pe_361_a3_oe & ts_pe_361_a3_out ) | 1'b0;
assign dr_9_oe = ts_pe_361_a0_oe | ts_pe_361_a1_oe | ts_pe_361_a2_oe | ts_pe_361_a3_oe;
assign ts_pe_361_a0_in = dr_9_in;
assign ts_pe_361_a1_in = dr_9_in;
assign ts_pe_361_a2_in = dr_9_in;
assign ts_pe_361_a3_in = dr_9_in;

// --- Compiler-generated PE for BUS dr[10]
assign dr_10_out = (ts_pe_362_a0_oe & ts_pe_362_a0_out ) | (ts_pe_362_a1_oe & ts_pe_362_a1_out ) | (ts_pe_362_a2_oe & ts_pe_362_a2_out ) | (ts_pe_362_a3_oe & ts_pe_362_a3_out ) | 1'b0;
assign dr_10_oe = ts_pe_362_a0_oe | ts_pe_362_a1_oe | ts_pe_362_a2_oe | ts_pe_362_a3_oe;
assign ts_pe_362_a0_in = dr_10_in;
assign ts_pe_362_a1_in = dr_10_in;
assign ts_pe_362_a2_in = dr_10_in;
assign ts_pe_362_a3_in = dr_10_in;

// --- Compiler-generated PE for BUS dr[11]
assign dr_11_out = (ts_pe_363_a0_oe & ts_pe_363_a0_out ) | (ts_pe_363_a1_oe & ts_pe_363_a1_out ) | (ts_pe_363_a2_oe & ts_pe_363_a2_out ) | (ts_pe_363_a3_oe & ts_pe_363_a3_out ) | 1'b0;
assign dr_11_oe = ts_pe_363_a0_oe | ts_pe_363_a1_oe | ts_pe_363_a2_oe | ts_pe_363_a3_oe;
assign ts_pe_363_a0_in = dr_11_in;
assign ts_pe_363_a1_in = dr_11_in;
assign ts_pe_363_a2_in = dr_11_in;
assign ts_pe_363_a3_in = dr_11_in;

// --- Compiler-generated PE for BUS dr[12]
assign dr_12_out = (ts_pe_364_a0_oe & ts_pe_364_a0_out ) | (ts_pe_364_a1_oe & ts_pe_364_a1_out ) | (ts_pe_364_a2_oe & ts_pe_364_a2_out ) | (ts_pe_364_a3_oe & ts_pe_364_a3_out ) | 1'b0;
assign dr_12_oe = ts_pe_364_a0_oe | ts_pe_364_a1_oe | ts_pe_364_a2_oe | ts_pe_364_a3_oe;
assign ts_pe_364_a0_in = dr_12_in;
assign ts_pe_364_a1_in = dr_12_in;
assign ts_pe_364_a2_in = dr_12_in;
assign ts_pe_364_a3_in = dr_12_in;

// --- Compiler-generated PE for BUS dr[13]
assign dr_13_out = (ts_pe_365_a0_oe & ts_pe_365_a0_out ) | (ts_pe_365_a1_oe & ts_pe_365_a1_out ) | (ts_pe_365_a2_oe & ts_pe_365_a2_out ) | (ts_pe_365_a3_oe & ts_pe_365_a3_out ) | 1'b0;
assign dr_13_oe = ts_pe_365_a0_oe | ts_pe_365_a1_oe | ts_pe_365_a2_oe | ts_pe_365_a3_oe;
assign ts_pe_365_a0_in = dr_13_in;
assign ts_pe_365_a1_in = dr_13_in;
assign ts_pe_365_a2_in = dr_13_in;
assign ts_pe_365_a3_in = dr_13_in;

// --- Compiler-generated PE for BUS dr[14]
assign dr_14_out = (ts_pe_366_a0_oe & ts_pe_366_a0_out ) | (ts_pe_366_a1_oe & ts_pe_366_a1_out ) | (ts_pe_366_a2_oe & ts_pe_366_a2_out ) | (ts_pe_366_a3_oe & ts_pe_366_a3_out ) | 1'b0;
assign dr_14_oe = ts_pe_366_a0_oe | ts_pe_366_a1_oe | ts_pe_366_a2_oe | ts_pe_366_a3_oe;
assign ts_pe_366_a0_in = dr_14_in;
assign ts_pe_366_a1_in = dr_14_in;
assign ts_pe_366_a2_in = dr_14_in;
assign ts_pe_366_a3_in = dr_14_in;

// --- Compiler-generated PE for BUS dr[15]
assign dr_15_out = (ts_pe_367_a0_oe & ts_pe_367_a0_out ) | (ts_pe_367_a1_oe & ts_pe_367_a1_out ) | (ts_pe_367_a2_oe & ts_pe_367_a2_out ) | (ts_pe_367_a3_oe & ts_pe_367_a3_out ) | 1'b0;
assign dr_15_oe = ts_pe_367_a0_oe | ts_pe_367_a1_oe | ts_pe_367_a2_oe | ts_pe_367_a3_oe;
assign ts_pe_367_a0_in = dr_15_in;
assign ts_pe_367_a1_in = dr_15_in;
assign ts_pe_367_a2_in = dr_15_in;
assign ts_pe_367_a3_in = dr_15_in;
endmodule
/* verilator lint_on LITENDIAN */
