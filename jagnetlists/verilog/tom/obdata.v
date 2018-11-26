/* verilator lint_off LITENDIAN */
`include "defs.v"

module obdata
(
	input aout_9,
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
	input reads,
	input palen,
	input clutt,
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
	input obdlatch,
	input mode1,
	input mode2,
	input mode4,
	input mode8,
	input mode16,
	input mode24,
	input scaledtype,
	input rmw,
	input index_1,
	input index_2,
	input index_3,
	input index_4,
	input index_5,
	input index_6,
	input index_7,
	input xld,
	input reflected,
	input transen,
	input xscale_0,
	input xscale_1,
	input xscale_2,
	input xscale_3,
	input xscale_4,
	input xscale_5,
	input xscale_6,
	input xscale_7,
	input resetl,
	input clk,
	input obld_1,
	input obld_2,
	input hilo,
	input lbt,
	input at_1,
	input at_2,
	input at_3,
	input at_4,
	input at_5,
	input at_6,
	input at_7,
	input at_8,
	input at_9,
	input at_10,
	output obdone,
	output obdready,
	output lbwa_1,
	output lbwa_2,
	output lbwa_3,
	output lbwa_4,
	output lbwa_5,
	output lbwa_6,
	output lbwa_7,
	output lbwa_8,
	output lbwa_9,
	output lbwe_0,
	output lbwe_1,
	output lbwd_0,
	output lbwd_1,
	output lbwd_2,
	output lbwd_3,
	output lbwd_4,
	output lbwd_5,
	output lbwd_6,
	output lbwd_7,
	output lbwd_8,
	output lbwd_9,
	output lbwd_10,
	output lbwd_11,
	output lbwd_12,
	output lbwd_13,
	output lbwd_14,
	output lbwd_15,
	output lbwd_16,
	output lbwd_17,
	output lbwd_18,
	output lbwd_19,
	output lbwd_20,
	output lbwd_21,
	output lbwd_22,
	output lbwd_23,
	output lbwd_24,
	output lbwd_25,
	output lbwd_26,
	output lbwd_27,
	output lbwd_28,
	output lbwd_29,
	output lbwd_30,
	output lbwd_31,
	output offscreen,
	output rmw1,
	output lben,
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
wire [0:15] di;
wire [0:7] aa;
wire [0:7] ab;
wire [0:8] xrem;
wire [0:15] d9h;
wire [0:15] d9l;
wire [0:15] pda_out;
wire [0:15] pda_oe;
wire [0:15] pda_in;
wire [0:15] pdb_out;
wire [0:15] pdb_oe;
wire [0:15] pdb_in;
wire [0:5] pa;
wire pa_0;
wire pa_1;
wire pa_2;
wire pa_3;
wire pa_4;
wire pa_5;
wire xrem_0;
wire xrem_1;
wire xrem_2;
wire xrem_3;
wire xrem_4;
wire xrem_5;
wire xrem_6;
wire xrem_7;
wire xrem_8;
wire obdclk;
wire d1_0;
wire d1_1;
wire d1_2;
wire d1_3;
wire d1_4;
wire d1_5;
wire d1_6;
wire d1_7;
wire d1_8;
wire d1_9;
wire d1_10;
wire d1_11;
wire d1_12;
wire d1_13;
wire d1_14;
wire d1_15;
wire d1_16;
wire d1_17;
wire d1_18;
wire d1_19;
wire d1_20;
wire d1_21;
wire d1_22;
wire d1_23;
wire d1_24;
wire d1_25;
wire d1_26;
wire d1_27;
wire d1_28;
wire d1_29;
wire d1_30;
wire d1_31;
wire d1_32;
wire d1_33;
wire d1_34;
wire d1_35;
wire d1_36;
wire d1_37;
wire d1_38;
wire d1_39;
wire d1_40;
wire d1_41;
wire d1_42;
wire d1_43;
wire d1_44;
wire d1_45;
wire d1_46;
wire d1_47;
wire d1_48;
wire d1_49;
wire d1_50;
wire d1_51;
wire d1_52;
wire d1_53;
wire d1_54;
wire d1_55;
wire d1_56;
wire d1_57;
wire d1_58;
wire d1_59;
wire d1_60;
wire d1_61;
wire d1_62;
wire d1_63;
wire d2_0;
wire d2_1;
wire d2_2;
wire d2_3;
wire d2_4;
wire d2_5;
wire d2_6;
wire d2_7;
wire d2_8;
wire d2_9;
wire d2_10;
wire d2_11;
wire d2_12;
wire d2_13;
wire d2_14;
wire d2_15;
wire d2_16;
wire d2_17;
wire d2_18;
wire d2_19;
wire d2_20;
wire d2_21;
wire d2_22;
wire d2_23;
wire d2_24;
wire d2_25;
wire d2_26;
wire d2_27;
wire d2_28;
wire d2_29;
wire d2_30;
wire d2_31;
wire d2_32;
wire d2_33;
wire d2_34;
wire d2_35;
wire d2_36;
wire d2_37;
wire d2_38;
wire d2_39;
wire d2_40;
wire d2_41;
wire d2_42;
wire d2_43;
wire d2_44;
wire d2_45;
wire d2_46;
wire d2_47;
wire d2_48;
wire d2_49;
wire d2_50;
wire d2_51;
wire d2_52;
wire d2_53;
wire d2_54;
wire d2_55;
wire d2_56;
wire d2_57;
wire d2_58;
wire d2_59;
wire d2_60;
wire d2_61;
wire d2_62;
wire d2_63;
wire nextphrase;
wire scaledi;
wire scaled;
wire rmw1i;
wire empty;
wire full;
wire notfull;
wire notobdlatch;
wire empty0;
wire empty1;
wire empty2;
wire smq0;
wire d3_0;
wire d3_1;
wire d3_2;
wire d3_3;
wire d3_4;
wire d3_5;
wire d3_6;
wire d3_7;
wire d3_8;
wire d3_9;
wire d3_10;
wire d3_11;
wire d3_12;
wire d3_13;
wire d3_14;
wire d3_15;
wire d3_16;
wire d3_17;
wire d3_18;
wire d3_19;
wire d3_20;
wire d3_21;
wire d3_22;
wire d3_23;
wire d3_24;
wire d3_25;
wire d3_26;
wire d3_27;
wire d3_28;
wire d3_29;
wire d3_30;
wire d3_31;
wire d4_0;
wire d4_1;
wire d4_2;
wire d4_3;
wire d4_4;
wire d4_5;
wire d4_6;
wire d4_7;
wire d4_8;
wire d4_9;
wire d4_10;
wire d4_11;
wire d4_12;
wire d4_13;
wire d4_14;
wire d4_15;
wire d5_0;
wire d5_1;
wire d5_2;
wire d5_3;
wire d5_4;
wire d5_5;
wire d5_6;
wire d5_7;
wire d6_0;
wire d6_1;
wire d6_2;
wire d6_3;
wire d7_0;
wire d7_1;
wire pra00;
wire pra01;
wire pra02;
wire pra03;
wire pra_0;
wire pra10;
wire pra11;
wire pra12;
wire pra13;
wire pra_1;
wire pra20;
wire pra21;
wire pra22;
wire pra23;
wire pra_2;
wire pra30;
wire pra31;
wire pra32;
wire pra33;
wire pra_3;
wire pra_4;
wire pra_5;
wire pra_6;
wire pra_7;
wire prb00;
wire prb01;
wire prb02;
wire prb03;
wire prb_0;
wire prb10;
wire prb11;
wire prb12;
wire prb13;
wire prb_1;
wire prb20;
wire prb21;
wire prb22;
wire prb23;
wire prb_2;
wire prb30;
wire prb31;
wire prb32;
wire prb33;
wire prb_3;
wire prb_4;
wire prb_5;
wire prb_6;
wire prb_7;
wire paad_0;
wire paad_1;
wire paad_2;
wire paad_3;
wire paad_4;
wire paad_5;
wire paad_6;
wire paad_7;
wire pabd_0;
wire pabd_1;
wire pabd_2;
wire pabd_3;
wire pabd_4;
wire pabd_5;
wire pabd_6;
wire pabd_7;
wire paaq_0;
wire paaq_1;
wire paaq_2;
wire paaq_3;
wire paaq_4;
wire paaq_5;
wire paaq_6;
wire paaq_7;
wire pabq_0;
wire pabq_1;
wire pabq_2;
wire pabq_3;
wire pabq_4;
wire pabq_5;
wire pabq_6;
wire pabq_7;
wire paa_0;
wire paa_1;
wire paa_2;
wire paa_3;
wire paa_4;
wire paa_5;
wire paa_6;
wire paa_7;
wire pab_0;
wire pab_1;
wire pab_2;
wire pab_3;
wire pab_4;
wire pab_5;
wire pab_6;
wire pab_7;
wire ncst;
wire busy;
wire busy1;
wire cs;
wire csl;
wire prw;
wire pdi_0;
wire pdi_1;
wire pdi_2;
wire pdi_3;
wire pdi_4;
wire pdi_5;
wire pdi_6;
wire pdi_7;
wire pdi_8;
wire pdi_9;
wire pdi_10;
wire pdi_11;
wire pdi_12;
wire pdi_13;
wire pdi_14;
wire pdi_15;
wire pd_0;
wire pd_1;
wire pd_2;
wire pd_3;
wire pd_4;
wire pd_5;
wire pd_6;
wire pd_7;
wire pd_8;
wire pd_9;
wire pd_10;
wire pd_11;
wire pd_12;
wire pd_13;
wire pd_14;
wire pd_15;
wire pden;
wire pdeni;
wire pwdeni;
wire pwden;
wire writes;
wire physicali;
wire phys;
wire hilob;
wire d8_0;
wire d8_1;
wire d8_2;
wire d8_3;
wire d8_4;
wire d8_5;
wire d8_6;
wire d8_7;
wire d8_8;
wire d8_9;
wire d8_10;
wire d8_11;
wire d8_12;
wire d8_13;
wire d8_14;
wire d8_15;
wire d8_16;
wire d8_17;
wire d8_18;
wire d8_19;
wire d8_20;
wire d8_21;
wire d8_22;
wire d8_23;
wire d8_24;
wire d8_25;
wire d8_26;
wire d8_27;
wire d8_28;
wire d8_29;
wire d8_30;
wire d8_31;
wire d9_0;
wire d9_1;
wire d9_2;
wire d9_3;
wire d9_4;
wire d9_5;
wire d9_6;
wire d9_7;
wire d9_8;
wire d9_9;
wire d9_10;
wire d9_11;
wire d9_12;
wire d9_13;
wire d9_14;
wire d9_15;
wire d9_16;
wire d9_17;
wire d9_18;
wire d9_19;
wire d9_20;
wire d9_21;
wire d9_22;
wire d9_23;
wire d9_24;
wire d9_25;
wire d9_26;
wire d9_27;
wire d9_28;
wire d9_29;
wire d9_30;
wire d9_31;
wire nextbits1;
wire nextbits;
wire nextbits2;
wire delpixi;
wire delpix;
wire da_0;
wire da_1;
wire da_2;
wire da_3;
wire da_4;
wire da_5;
wire da_6;
wire da_7;
wire da_8;
wire da_9;
wire da_10;
wire da_11;
wire da_12;
wire da_13;
wire da_14;
wire da_15;
wire del1;
wire lbwa_0;
wire delayed;
wire notscaled;
wire db_0;
wire db_1;
wire db_2;
wire db_3;
wire db_4;
wire db_5;
wire db_6;
wire db_7;
wire db_8;
wire db_9;
wire db_10;
wire db_11;
wire db_12;
wire db_13;
wire db_14;
wire db_15;
wire pswap;
wire co_0;
wire ip_0;
wire ci_0;
wire reset;
wire pad_1;
wire co_1;
wire ip_1;
wire ci_1;
wire pad_2;
wire co_2;
wire ip_2;
wire ci_2;
wire pad_3;
wire co_3;
wire ip_3;
wire ci_3;
wire pad_4;
wire co_4;
wire ip_4;
wire ci_4;
wire pad_5;
wire co_5;
wire ip_5;
wire ci_5;
wire gnd;
wire pai_1;
wire pai_2;
wire pai_3;
wire pai_4;
wire pai_5;
wire ipd_0;
wire ipd_1;
wire ipd_2;
wire ipd_3;
wire ipd_4;
wire ipd_5;
wire nip;
wire p2done;
wire cil_2;
wire cil_3;
wire cil_4;
wire cil_5;
wire modew;
wire col_1;
wire col_2;
wire col_3;
wire col_4;
wire vcc;
wire phd_1;
wire phd_2;
wire phd_3;
wire phd_4;
wire phd_5;
wire phdone;
wire notphdone;
wire nextx1;
wire nextx;
wire nextxx;
wire lbwad_0;
wire lco_0;
wire lci_0;
wire up;
wire lbwad_1;
wire lco_1;
wire lci_1;
wire lbwad_2;
wire lbwad_3;
wire lbwad_4;
wire lbwad_5;
wire lbwad_6;
wire lbwad_7;
wire lbwad_8;
wire lbwad_9;
wire lbwad_10;
wire lbwad_11;
wire lco_2;
wire lco_3;
wire lco_4;
wire lco_5;
wire lco_6;
wire lco_7;
wire lco_8;
wire lco_9;
wire lco_10;
wire lco_11;
wire lbwadd_0;
wire lbwadd_1;
wire lbwadd_2;
wire lbwadd_3;
wire lbwadd_4;
wire lbwadd_5;
wire lbwadd_6;
wire lbwadd_7;
wire lbwadd_8;
wire lbwadd_9;
wire lcil_1;
wire lcol_0;
wire nota_4;
wire nota_5;
wire nota_8;
wire nota_10;
wire nota_11;
wire c_5;
wire c_7;
wire c_8;
wire c_9;
wire c_11;
wire left;
wire right;
wire onscreen;
wire offscreeni;
wire notoffscreen;
wire zero1a;
wire zero2a;
wire zero4a;
wire zero8a;
wire zero16a0;
wire zero16a1;
wire trans1a;
wire trans2a;
wire trans4a;
wire trans8a;
wire trans16a;
wire transa;
wire nottransa;
wire zero1b;
wire zero2b;
wire zero4b;
wire zero8b;
wire zero16b0;
wire zero16b1;
wire trans1b;
wire trans2b;
wire trans4b;
wire trans8b;
wire trans16b;
wire transb;
wire nottransb;
wire smd0;
wire smq1;
wire smd1;
wire smq2i;
wire smd2;
wire smq2;
wire d00;
wire d01;
wire notremgte2;
wire d02;
wire d10;
wire d11;
wire d12;
wire d13;
wire remgte2;
wire d20;
wire notrmw;
wire d21;
wire d22;
wire d23;
wire d24;
wire np0;
wire np1;
wire np2;
wire nextphrasei;
wire nx0;
wire remgte1;
wire nx1;
wire nb0;
wire nb1;
wire nextbitsi;
wire lbwrite;
wire nntransa;
wire nntransb;
wire lbwea1;
wire lbweb1;
wire lbwea2;
wire lbweb2;
wire lbwea4;
wire lbweb4;
wire lbweb51;
wire lbweb52;
wire lbweb5;
wire lbweb6;
wire lbwea7;
wire pswapd;
wire lbweb7;
wire lbwea80;
wire lbwea81;
wire notlbwad_0;
wire lbwea8;
wire lbweb80;
wire lbweb81;
wire lbweb8;
wire lbw1;
wire lbw2;
wire lbw3;
wire lbend;
wire lbeni;
wire pa1_0;
wire pa2_0;
wire oddeven;
wire pswapi;
wire xrd_0;
wire xrd_1;
wire xrd_2;
wire xrd_3;
wire xrd_4;
wire xrd_5;
wire xrd_6;
wire xrd_7;
wire xrd_8;
wire sum_0;
wire sc_0;
wire sum_1;
wire sum_2;
wire sum_3;
wire sum_4;
wire sum_5;
wire sum_6;
wire sc_1;
wire sc_2;
wire sc_3;
wire sc_4;
wire sc_5;
wire sc_6;
wire sum_7;
wire sum_8;
wire xs_0;
wire xs_1;
wire xs_2;
wire xs_3;
wire xs_4;
wire xs_5;
wire xs_6;
wire xs_7;
wire xs_8;
wire diff_5;
wire dc_5;
wire diff_6;
wire diff_7;
wire diff_8;
wire dc_6;
wire dc_7;
wire dc_8;
wire notremgte2i;
wire ts_local_pe_368_a0_out;
wire ts_local_pe_368_a0_oe;
wire ts_local_pe_368_a0_in;
wire ts_local_pe_368_a1_out;
wire ts_local_pe_368_a1_oe;
wire ts_local_pe_368_a1_in;
wire ts_local_pe_369_a0_out;
wire ts_local_pe_369_a0_oe;
wire ts_local_pe_369_a0_in;
wire ts_local_pe_369_a1_out;
wire ts_local_pe_369_a1_oe;
wire ts_local_pe_369_a1_in;
wire ts_local_pe_370_a0_out;
wire ts_local_pe_370_a0_oe;
wire ts_local_pe_370_a0_in;
wire ts_local_pe_370_a1_out;
wire ts_local_pe_370_a1_oe;
wire ts_local_pe_370_a1_in;
wire ts_local_pe_371_a0_out;
wire ts_local_pe_371_a0_oe;
wire ts_local_pe_371_a0_in;
wire ts_local_pe_371_a1_out;
wire ts_local_pe_371_a1_oe;
wire ts_local_pe_371_a1_in;
wire ts_local_pe_372_a0_out;
wire ts_local_pe_372_a0_oe;
wire ts_local_pe_372_a0_in;
wire ts_local_pe_372_a1_out;
wire ts_local_pe_372_a1_oe;
wire ts_local_pe_372_a1_in;
wire ts_local_pe_373_a0_out;
wire ts_local_pe_373_a0_oe;
wire ts_local_pe_373_a0_in;
wire ts_local_pe_373_a1_out;
wire ts_local_pe_373_a1_oe;
wire ts_local_pe_373_a1_in;
wire ts_local_pe_374_a0_out;
wire ts_local_pe_374_a0_oe;
wire ts_local_pe_374_a0_in;
wire ts_local_pe_374_a1_out;
wire ts_local_pe_374_a1_oe;
wire ts_local_pe_374_a1_in;
wire ts_local_pe_375_a0_out;
wire ts_local_pe_375_a0_oe;
wire ts_local_pe_375_a0_in;
wire ts_local_pe_375_a1_out;
wire ts_local_pe_375_a1_oe;
wire ts_local_pe_375_a1_in;
wire ts_local_pe_376_a0_out;
wire ts_local_pe_376_a0_oe;
wire ts_local_pe_376_a0_in;
wire ts_local_pe_376_a1_out;
wire ts_local_pe_376_a1_oe;
wire ts_local_pe_376_a1_in;
wire ts_local_pe_377_a0_out;
wire ts_local_pe_377_a0_oe;
wire ts_local_pe_377_a0_in;
wire ts_local_pe_377_a1_out;
wire ts_local_pe_377_a1_oe;
wire ts_local_pe_377_a1_in;
wire ts_local_pe_378_a0_out;
wire ts_local_pe_378_a0_oe;
wire ts_local_pe_378_a0_in;
wire ts_local_pe_378_a1_out;
wire ts_local_pe_378_a1_oe;
wire ts_local_pe_378_a1_in;
wire ts_local_pe_379_a0_out;
wire ts_local_pe_379_a0_oe;
wire ts_local_pe_379_a0_in;
wire ts_local_pe_379_a1_out;
wire ts_local_pe_379_a1_oe;
wire ts_local_pe_379_a1_in;
wire ts_local_pe_380_a0_out;
wire ts_local_pe_380_a0_oe;
wire ts_local_pe_380_a0_in;
wire ts_local_pe_380_a1_out;
wire ts_local_pe_380_a1_oe;
wire ts_local_pe_380_a1_in;
wire ts_local_pe_381_a0_out;
wire ts_local_pe_381_a0_oe;
wire ts_local_pe_381_a0_in;
wire ts_local_pe_381_a1_out;
wire ts_local_pe_381_a1_oe;
wire ts_local_pe_381_a1_in;
wire ts_local_pe_382_a0_out;
wire ts_local_pe_382_a0_oe;
wire ts_local_pe_382_a0_in;
wire ts_local_pe_382_a1_out;
wire ts_local_pe_382_a1_oe;
wire ts_local_pe_382_a1_in;
wire ts_local_pe_383_a0_out;
wire ts_local_pe_383_a0_oe;
wire ts_local_pe_383_a0_in;
wire ts_local_pe_383_a1_out;
wire ts_local_pe_383_a1_oe;
wire ts_local_pe_383_a1_in;
wire ts_local_pe_384_a0_out;
wire ts_local_pe_384_a0_oe;
wire ts_local_pe_384_a0_in;
wire ts_local_pe_384_a1_out;
wire ts_local_pe_384_a1_oe;
wire ts_local_pe_384_a1_in;
wire ts_local_pe_385_a0_out;
wire ts_local_pe_385_a0_oe;
wire ts_local_pe_385_a0_in;
wire ts_local_pe_385_a1_out;
wire ts_local_pe_385_a1_oe;
wire ts_local_pe_385_a1_in;
wire ts_local_pe_386_a0_out;
wire ts_local_pe_386_a0_oe;
wire ts_local_pe_386_a0_in;
wire ts_local_pe_386_a1_out;
wire ts_local_pe_386_a1_oe;
wire ts_local_pe_386_a1_in;
wire ts_local_pe_387_a0_out;
wire ts_local_pe_387_a0_oe;
wire ts_local_pe_387_a0_in;
wire ts_local_pe_387_a1_out;
wire ts_local_pe_387_a1_oe;
wire ts_local_pe_387_a1_in;
wire ts_local_pe_388_a0_out;
wire ts_local_pe_388_a0_oe;
wire ts_local_pe_388_a0_in;
wire ts_local_pe_388_a1_out;
wire ts_local_pe_388_a1_oe;
wire ts_local_pe_388_a1_in;
wire ts_local_pe_389_a0_out;
wire ts_local_pe_389_a0_oe;
wire ts_local_pe_389_a0_in;
wire ts_local_pe_389_a1_out;
wire ts_local_pe_389_a1_oe;
wire ts_local_pe_389_a1_in;
wire ts_local_pe_390_a0_out;
wire ts_local_pe_390_a0_oe;
wire ts_local_pe_390_a0_in;
wire ts_local_pe_390_a1_out;
wire ts_local_pe_390_a1_oe;
wire ts_local_pe_390_a1_in;
wire ts_local_pe_391_a0_out;
wire ts_local_pe_391_a0_oe;
wire ts_local_pe_391_a0_in;
wire ts_local_pe_391_a1_out;
wire ts_local_pe_391_a1_oe;
wire ts_local_pe_391_a1_in;
wire ts_local_pe_392_a0_out;
wire ts_local_pe_392_a0_oe;
wire ts_local_pe_392_a0_in;
wire ts_local_pe_392_a1_out;
wire ts_local_pe_392_a1_oe;
wire ts_local_pe_392_a1_in;
wire ts_local_pe_393_a0_out;
wire ts_local_pe_393_a0_oe;
wire ts_local_pe_393_a0_in;
wire ts_local_pe_393_a1_out;
wire ts_local_pe_393_a1_oe;
wire ts_local_pe_393_a1_in;
wire ts_local_pe_394_a0_out;
wire ts_local_pe_394_a0_oe;
wire ts_local_pe_394_a0_in;
wire ts_local_pe_394_a1_out;
wire ts_local_pe_394_a1_oe;
wire ts_local_pe_394_a1_in;
wire ts_local_pe_395_a0_out;
wire ts_local_pe_395_a0_oe;
wire ts_local_pe_395_a0_in;
wire ts_local_pe_395_a1_out;
wire ts_local_pe_395_a1_oe;
wire ts_local_pe_395_a1_in;
wire ts_local_pe_396_a0_out;
wire ts_local_pe_396_a0_oe;
wire ts_local_pe_396_a0_in;
wire ts_local_pe_396_a1_out;
wire ts_local_pe_396_a1_oe;
wire ts_local_pe_396_a1_in;
wire ts_local_pe_397_a0_out;
wire ts_local_pe_397_a0_oe;
wire ts_local_pe_397_a0_in;
wire ts_local_pe_397_a1_out;
wire ts_local_pe_397_a1_oe;
wire ts_local_pe_397_a1_in;
wire ts_local_pe_398_a0_out;
wire ts_local_pe_398_a0_oe;
wire ts_local_pe_398_a0_in;
wire ts_local_pe_398_a1_out;
wire ts_local_pe_398_a1_oe;
wire ts_local_pe_398_a1_in;
wire ts_local_pe_399_a0_out;
wire ts_local_pe_399_a0_oe;
wire ts_local_pe_399_a0_in;
wire ts_local_pe_399_a1_out;
wire ts_local_pe_399_a1_oe;
wire ts_local_pe_399_a1_in;

// Output buffers
wire offscreen_obuf;
wire rmw1_obuf;


// Output buffers
assign offscreen = offscreen_obuf;
assign rmw1 = rmw1_obuf;


// OBDATA.NET (62) - pa : join
assign pa[0] = pa_0;
assign pa[1] = pa_1;
assign pa[2] = pa_2;
assign pa[3] = pa_3;
assign pa[4] = pa_4;
assign pa[5] = pa_5;

// OBDATA.NET (63) - pau : dummy

// OBDATA.NET (64) - xrem : join
assign xrem[0] = xrem_0;
assign xrem[1] = xrem_1;
assign xrem[2] = xrem_2;
assign xrem[3] = xrem_3;
assign xrem[4] = xrem_4;
assign xrem[5] = xrem_5;
assign xrem[6] = xrem_6;
assign xrem[7] = xrem_7;
assign xrem[8] = xrem_8;

// OBDATA.NET (65) - xremu : dummy

// OBDATA.NET (69) - obdclk : nivu2
assign obdclk = obdlatch;

// OBDATA.NET (70) - d1[0-63] : slatch
slatch d1_from_0_to_63_inst_0
(
	.q /* OUT */ (d1_0),
	.d /* IN */ (d_0),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_1
(
	.q /* OUT */ (d1_1),
	.d /* IN */ (d_1),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_2
(
	.q /* OUT */ (d1_2),
	.d /* IN */ (d_2),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_3
(
	.q /* OUT */ (d1_3),
	.d /* IN */ (d_3),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_4
(
	.q /* OUT */ (d1_4),
	.d /* IN */ (d_4),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_5
(
	.q /* OUT */ (d1_5),
	.d /* IN */ (d_5),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_6
(
	.q /* OUT */ (d1_6),
	.d /* IN */ (d_6),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_7
(
	.q /* OUT */ (d1_7),
	.d /* IN */ (d_7),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_8
(
	.q /* OUT */ (d1_8),
	.d /* IN */ (d_8),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_9
(
	.q /* OUT */ (d1_9),
	.d /* IN */ (d_9),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_10
(
	.q /* OUT */ (d1_10),
	.d /* IN */ (d_10),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_11
(
	.q /* OUT */ (d1_11),
	.d /* IN */ (d_11),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_12
(
	.q /* OUT */ (d1_12),
	.d /* IN */ (d_12),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_13
(
	.q /* OUT */ (d1_13),
	.d /* IN */ (d_13),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_14
(
	.q /* OUT */ (d1_14),
	.d /* IN */ (d_14),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_15
(
	.q /* OUT */ (d1_15),
	.d /* IN */ (d_15),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_16
(
	.q /* OUT */ (d1_16),
	.d /* IN */ (d_16),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_17
(
	.q /* OUT */ (d1_17),
	.d /* IN */ (d_17),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_18
(
	.q /* OUT */ (d1_18),
	.d /* IN */ (d_18),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_19
(
	.q /* OUT */ (d1_19),
	.d /* IN */ (d_19),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_20
(
	.q /* OUT */ (d1_20),
	.d /* IN */ (d_20),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_21
(
	.q /* OUT */ (d1_21),
	.d /* IN */ (d_21),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_22
(
	.q /* OUT */ (d1_22),
	.d /* IN */ (d_22),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_23
(
	.q /* OUT */ (d1_23),
	.d /* IN */ (d_23),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_24
(
	.q /* OUT */ (d1_24),
	.d /* IN */ (d_24),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_25
(
	.q /* OUT */ (d1_25),
	.d /* IN */ (d_25),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_26
(
	.q /* OUT */ (d1_26),
	.d /* IN */ (d_26),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_27
(
	.q /* OUT */ (d1_27),
	.d /* IN */ (d_27),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_28
(
	.q /* OUT */ (d1_28),
	.d /* IN */ (d_28),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_29
(
	.q /* OUT */ (d1_29),
	.d /* IN */ (d_29),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_30
(
	.q /* OUT */ (d1_30),
	.d /* IN */ (d_30),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_31
(
	.q /* OUT */ (d1_31),
	.d /* IN */ (d_31),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_32
(
	.q /* OUT */ (d1_32),
	.d /* IN */ (d_32),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_33
(
	.q /* OUT */ (d1_33),
	.d /* IN */ (d_33),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_34
(
	.q /* OUT */ (d1_34),
	.d /* IN */ (d_34),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_35
(
	.q /* OUT */ (d1_35),
	.d /* IN */ (d_35),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_36
(
	.q /* OUT */ (d1_36),
	.d /* IN */ (d_36),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_37
(
	.q /* OUT */ (d1_37),
	.d /* IN */ (d_37),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_38
(
	.q /* OUT */ (d1_38),
	.d /* IN */ (d_38),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_39
(
	.q /* OUT */ (d1_39),
	.d /* IN */ (d_39),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_40
(
	.q /* OUT */ (d1_40),
	.d /* IN */ (d_40),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_41
(
	.q /* OUT */ (d1_41),
	.d /* IN */ (d_41),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_42
(
	.q /* OUT */ (d1_42),
	.d /* IN */ (d_42),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_43
(
	.q /* OUT */ (d1_43),
	.d /* IN */ (d_43),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_44
(
	.q /* OUT */ (d1_44),
	.d /* IN */ (d_44),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_45
(
	.q /* OUT */ (d1_45),
	.d /* IN */ (d_45),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_46
(
	.q /* OUT */ (d1_46),
	.d /* IN */ (d_46),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_47
(
	.q /* OUT */ (d1_47),
	.d /* IN */ (d_47),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_48
(
	.q /* OUT */ (d1_48),
	.d /* IN */ (d_48),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_49
(
	.q /* OUT */ (d1_49),
	.d /* IN */ (d_49),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_50
(
	.q /* OUT */ (d1_50),
	.d /* IN */ (d_50),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_51
(
	.q /* OUT */ (d1_51),
	.d /* IN */ (d_51),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_52
(
	.q /* OUT */ (d1_52),
	.d /* IN */ (d_52),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_53
(
	.q /* OUT */ (d1_53),
	.d /* IN */ (d_53),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_54
(
	.q /* OUT */ (d1_54),
	.d /* IN */ (d_54),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_55
(
	.q /* OUT */ (d1_55),
	.d /* IN */ (d_55),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_56
(
	.q /* OUT */ (d1_56),
	.d /* IN */ (d_56),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_57
(
	.q /* OUT */ (d1_57),
	.d /* IN */ (d_57),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_58
(
	.q /* OUT */ (d1_58),
	.d /* IN */ (d_58),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_59
(
	.q /* OUT */ (d1_59),
	.d /* IN */ (d_59),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_60
(
	.q /* OUT */ (d1_60),
	.d /* IN */ (d_60),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_61
(
	.q /* OUT */ (d1_61),
	.d /* IN */ (d_61),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_62
(
	.q /* OUT */ (d1_62),
	.d /* IN */ (d_62),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);
slatch d1_from_0_to_63_inst_63
(
	.q /* OUT */ (d1_63),
	.d /* IN */ (d_63),
	.clk /* IN */ (clk),
	.en /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);

// OBDATA.NET (71) - d2[0-63] : slatch
slatch d2_from_0_to_63_inst_0
(
	.q /* OUT */ (d2_0),
	.d /* IN */ (d1_0),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_1
(
	.q /* OUT */ (d2_1),
	.d /* IN */ (d1_1),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_2
(
	.q /* OUT */ (d2_2),
	.d /* IN */ (d1_2),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_3
(
	.q /* OUT */ (d2_3),
	.d /* IN */ (d1_3),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_4
(
	.q /* OUT */ (d2_4),
	.d /* IN */ (d1_4),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_5
(
	.q /* OUT */ (d2_5),
	.d /* IN */ (d1_5),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_6
(
	.q /* OUT */ (d2_6),
	.d /* IN */ (d1_6),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_7
(
	.q /* OUT */ (d2_7),
	.d /* IN */ (d1_7),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_8
(
	.q /* OUT */ (d2_8),
	.d /* IN */ (d1_8),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_9
(
	.q /* OUT */ (d2_9),
	.d /* IN */ (d1_9),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_10
(
	.q /* OUT */ (d2_10),
	.d /* IN */ (d1_10),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_11
(
	.q /* OUT */ (d2_11),
	.d /* IN */ (d1_11),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_12
(
	.q /* OUT */ (d2_12),
	.d /* IN */ (d1_12),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_13
(
	.q /* OUT */ (d2_13),
	.d /* IN */ (d1_13),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_14
(
	.q /* OUT */ (d2_14),
	.d /* IN */ (d1_14),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_15
(
	.q /* OUT */ (d2_15),
	.d /* IN */ (d1_15),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_16
(
	.q /* OUT */ (d2_16),
	.d /* IN */ (d1_16),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_17
(
	.q /* OUT */ (d2_17),
	.d /* IN */ (d1_17),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_18
(
	.q /* OUT */ (d2_18),
	.d /* IN */ (d1_18),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_19
(
	.q /* OUT */ (d2_19),
	.d /* IN */ (d1_19),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_20
(
	.q /* OUT */ (d2_20),
	.d /* IN */ (d1_20),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_21
(
	.q /* OUT */ (d2_21),
	.d /* IN */ (d1_21),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_22
(
	.q /* OUT */ (d2_22),
	.d /* IN */ (d1_22),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_23
(
	.q /* OUT */ (d2_23),
	.d /* IN */ (d1_23),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_24
(
	.q /* OUT */ (d2_24),
	.d /* IN */ (d1_24),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_25
(
	.q /* OUT */ (d2_25),
	.d /* IN */ (d1_25),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_26
(
	.q /* OUT */ (d2_26),
	.d /* IN */ (d1_26),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_27
(
	.q /* OUT */ (d2_27),
	.d /* IN */ (d1_27),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_28
(
	.q /* OUT */ (d2_28),
	.d /* IN */ (d1_28),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_29
(
	.q /* OUT */ (d2_29),
	.d /* IN */ (d1_29),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_30
(
	.q /* OUT */ (d2_30),
	.d /* IN */ (d1_30),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_31
(
	.q /* OUT */ (d2_31),
	.d /* IN */ (d1_31),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_32
(
	.q /* OUT */ (d2_32),
	.d /* IN */ (d1_32),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_33
(
	.q /* OUT */ (d2_33),
	.d /* IN */ (d1_33),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_34
(
	.q /* OUT */ (d2_34),
	.d /* IN */ (d1_34),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_35
(
	.q /* OUT */ (d2_35),
	.d /* IN */ (d1_35),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_36
(
	.q /* OUT */ (d2_36),
	.d /* IN */ (d1_36),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_37
(
	.q /* OUT */ (d2_37),
	.d /* IN */ (d1_37),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_38
(
	.q /* OUT */ (d2_38),
	.d /* IN */ (d1_38),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_39
(
	.q /* OUT */ (d2_39),
	.d /* IN */ (d1_39),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_40
(
	.q /* OUT */ (d2_40),
	.d /* IN */ (d1_40),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_41
(
	.q /* OUT */ (d2_41),
	.d /* IN */ (d1_41),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_42
(
	.q /* OUT */ (d2_42),
	.d /* IN */ (d1_42),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_43
(
	.q /* OUT */ (d2_43),
	.d /* IN */ (d1_43),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_44
(
	.q /* OUT */ (d2_44),
	.d /* IN */ (d1_44),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_45
(
	.q /* OUT */ (d2_45),
	.d /* IN */ (d1_45),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_46
(
	.q /* OUT */ (d2_46),
	.d /* IN */ (d1_46),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_47
(
	.q /* OUT */ (d2_47),
	.d /* IN */ (d1_47),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_48
(
	.q /* OUT */ (d2_48),
	.d /* IN */ (d1_48),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_49
(
	.q /* OUT */ (d2_49),
	.d /* IN */ (d1_49),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_50
(
	.q /* OUT */ (d2_50),
	.d /* IN */ (d1_50),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_51
(
	.q /* OUT */ (d2_51),
	.d /* IN */ (d1_51),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_52
(
	.q /* OUT */ (d2_52),
	.d /* IN */ (d1_52),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_53
(
	.q /* OUT */ (d2_53),
	.d /* IN */ (d1_53),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_54
(
	.q /* OUT */ (d2_54),
	.d /* IN */ (d1_54),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_55
(
	.q /* OUT */ (d2_55),
	.d /* IN */ (d1_55),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_56
(
	.q /* OUT */ (d2_56),
	.d /* IN */ (d1_56),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_57
(
	.q /* OUT */ (d2_57),
	.d /* IN */ (d1_57),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_58
(
	.q /* OUT */ (d2_58),
	.d /* IN */ (d1_58),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_59
(
	.q /* OUT */ (d2_59),
	.d /* IN */ (d1_59),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_60
(
	.q /* OUT */ (d2_60),
	.d /* IN */ (d1_60),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_61
(
	.q /* OUT */ (d2_61),
	.d /* IN */ (d1_61),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_62
(
	.q /* OUT */ (d2_62),
	.d /* IN */ (d1_62),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);
slatch d2_from_0_to_63_inst_63
(
	.q /* OUT */ (d2_63),
	.d /* IN */ (d1_63),
	.clk /* IN */ (clk),
	.en /* IN */ (nextphrase),
	.sys_clk(sys_clk) // Generated
);

// OBDATA.NET (75) - scaledi : ldp1q
ldp1q scaledi_inst
(
	.q /* OUT */ (scaledi),
	.d /* IN */ (scaledtype),
	.g /* IN */ (obdclk),
	.sys_clk(sys_clk) // Generated
);

// OBDATA.NET (76) - scaled : nivm
assign scaled = scaledi;

// OBDATA.NET (77) - rmw1i : ldp2q
ldp2q rmw1i_inst
(
	.q /* OUT */ (rmw1i),
	.d /* IN */ (rmw),
	.g /* IN */ (obdclk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// OBDATA.NET (78) - rmw1 : nivu
assign rmw1_obuf = rmw1i;

// OBDATA.NET (80) - empty : or2
assign empty = offscreen_obuf | nextphrase;

// OBDATA.NET (81) - full : fjk2
fjk2 full_inst
(
	.q /* OUT */ (full),
	.qn /* OUT */ (notfull),
	.j /* IN */ (obdlatch),
	.k /* IN */ (empty),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// OBDATA.NET (86) - notobdl : iv
assign notobdlatch = ~obdlatch;

// OBDATA.NET (87) - empty0 : nd2
assign empty0 = ~(notfull & notobdlatch);

// OBDATA.NET (88) - empty1 : iv
assign empty1 = ~nextphrase;

// OBDATA.NET (89) - empty2 : iv
assign empty2 = ~smq0;

// OBDATA.NET (91) - obdready : nd3
assign obdready = ~(empty0 & empty1 & empty2);

// OBDATA.NET (99) - d3[0-31] : mx2
assign d3_0 = (pa_5) ? d2_32 : d2_0;
assign d3_1 = (pa_5) ? d2_33 : d2_1;
assign d3_2 = (pa_5) ? d2_34 : d2_2;
assign d3_3 = (pa_5) ? d2_35 : d2_3;
assign d3_4 = (pa_5) ? d2_36 : d2_4;
assign d3_5 = (pa_5) ? d2_37 : d2_5;
assign d3_6 = (pa_5) ? d2_38 : d2_6;
assign d3_7 = (pa_5) ? d2_39 : d2_7;
assign d3_8 = (pa_5) ? d2_40 : d2_8;
assign d3_9 = (pa_5) ? d2_41 : d2_9;
assign d3_10 = (pa_5) ? d2_42 : d2_10;
assign d3_11 = (pa_5) ? d2_43 : d2_11;
assign d3_12 = (pa_5) ? d2_44 : d2_12;
assign d3_13 = (pa_5) ? d2_45 : d2_13;
assign d3_14 = (pa_5) ? d2_46 : d2_14;
assign d3_15 = (pa_5) ? d2_47 : d2_15;
assign d3_16 = (pa_5) ? d2_48 : d2_16;
assign d3_17 = (pa_5) ? d2_49 : d2_17;
assign d3_18 = (pa_5) ? d2_50 : d2_18;
assign d3_19 = (pa_5) ? d2_51 : d2_19;
assign d3_20 = (pa_5) ? d2_52 : d2_20;
assign d3_21 = (pa_5) ? d2_53 : d2_21;
assign d3_22 = (pa_5) ? d2_54 : d2_22;
assign d3_23 = (pa_5) ? d2_55 : d2_23;
assign d3_24 = (pa_5) ? d2_56 : d2_24;
assign d3_25 = (pa_5) ? d2_57 : d2_25;
assign d3_26 = (pa_5) ? d2_58 : d2_26;
assign d3_27 = (pa_5) ? d2_59 : d2_27;
assign d3_28 = (pa_5) ? d2_60 : d2_28;
assign d3_29 = (pa_5) ? d2_61 : d2_29;
assign d3_30 = (pa_5) ? d2_62 : d2_30;
assign d3_31 = (pa_5) ? d2_63 : d2_31;

// OBDATA.NET (100) - d4[0-15] : mx2
assign d4_0 = (pa_4) ? d3_16 : d3_0;
assign d4_1 = (pa_4) ? d3_17 : d3_1;
assign d4_2 = (pa_4) ? d3_18 : d3_2;
assign d4_3 = (pa_4) ? d3_19 : d3_3;
assign d4_4 = (pa_4) ? d3_20 : d3_4;
assign d4_5 = (pa_4) ? d3_21 : d3_5;
assign d4_6 = (pa_4) ? d3_22 : d3_6;
assign d4_7 = (pa_4) ? d3_23 : d3_7;
assign d4_8 = (pa_4) ? d3_24 : d3_8;
assign d4_9 = (pa_4) ? d3_25 : d3_9;
assign d4_10 = (pa_4) ? d3_26 : d3_10;
assign d4_11 = (pa_4) ? d3_27 : d3_11;
assign d4_12 = (pa_4) ? d3_28 : d3_12;
assign d4_13 = (pa_4) ? d3_29 : d3_13;
assign d4_14 = (pa_4) ? d3_30 : d3_14;
assign d4_15 = (pa_4) ? d3_31 : d3_15;

// OBDATA.NET (101) - d5[0-7] : mx2
assign d5_0 = (pa_3) ? d4_8 : d4_0;
assign d5_1 = (pa_3) ? d4_9 : d4_1;
assign d5_2 = (pa_3) ? d4_10 : d4_2;
assign d5_3 = (pa_3) ? d4_11 : d4_3;
assign d5_4 = (pa_3) ? d4_12 : d4_4;
assign d5_5 = (pa_3) ? d4_13 : d4_5;
assign d5_6 = (pa_3) ? d4_14 : d4_6;
assign d5_7 = (pa_3) ? d4_15 : d4_7;

// OBDATA.NET (102) - d6[0-3] : mx2
assign d6_0 = (pa_2) ? d5_4 : d5_0;
assign d6_1 = (pa_2) ? d5_5 : d5_1;
assign d6_2 = (pa_2) ? d5_6 : d5_2;
assign d6_3 = (pa_2) ? d5_7 : d5_3;

// OBDATA.NET (103) - d7[0-1] : mx2
assign d7_0 = (pa_1) ? d6_2 : d6_0;
assign d7_1 = (pa_1) ? d6_3 : d6_1;

// OBDATA.NET (107) - pra00 : nd2
assign pra00 = ~(d7_0 & mode1);

// OBDATA.NET (108) - pra01 : nd2
assign pra01 = ~(d6_0 & mode2);

// OBDATA.NET (109) - pra02 : nd2
assign pra02 = ~(d5_0 & mode4);

// OBDATA.NET (110) - pra03 : nd2
assign pra03 = ~(d4_0 & mode8);

// OBDATA.NET (111) - pra[0] : nd4
assign pra_0 = ~(pra00 & pra01 & pra02 & pra03);

// OBDATA.NET (113) - pra10 : nd2
assign pra10 = ~(index_1 & mode1);

// OBDATA.NET (114) - pra11 : nd2
assign pra11 = ~(d6_1 & mode2);

// OBDATA.NET (115) - pra12 : nd2
assign pra12 = ~(d5_1 & mode4);

// OBDATA.NET (116) - pra13 : nd2
assign pra13 = ~(d4_1 & mode8);

// OBDATA.NET (117) - pra[1] : nd4
assign pra_1 = ~(pra10 & pra11 & pra12 & pra13);

// OBDATA.NET (119) - pra20 : nd2
assign pra20 = ~(index_2 & mode1);

// OBDATA.NET (120) - pra21 : nd2
assign pra21 = ~(index_2 & mode2);

// OBDATA.NET (121) - pra22 : nd2
assign pra22 = ~(d5_2 & mode4);

// OBDATA.NET (122) - pra23 : nd2
assign pra23 = ~(d4_2 & mode8);

// OBDATA.NET (123) - pra[2] : nd4
assign pra_2 = ~(pra20 & pra21 & pra22 & pra23);

// OBDATA.NET (125) - pra30 : nd2
assign pra30 = ~(index_3 & mode1);

// OBDATA.NET (126) - pra31 : nd2
assign pra31 = ~(index_3 & mode2);

// OBDATA.NET (127) - pra32 : nd2
assign pra32 = ~(d5_3 & mode4);

// OBDATA.NET (128) - pra33 : nd2
assign pra33 = ~(d4_3 & mode8);

// OBDATA.NET (129) - pra[3] : nd4
assign pra_3 = ~(pra30 & pra31 & pra32 & pra33);

// OBDATA.NET (131) - pra[4] : mx2
assign pra_4 = (mode8) ? d4_4 : index_4;

// OBDATA.NET (132) - pra[5] : mx2
assign pra_5 = (mode8) ? d4_5 : index_5;

// OBDATA.NET (133) - pra[6] : mx2
assign pra_6 = (mode8) ? d4_6 : index_6;

// OBDATA.NET (134) - pra[7] : mx2
assign pra_7 = (mode8) ? d4_7 : index_7;

// OBDATA.NET (136) - prb00 : nd2
assign prb00 = ~(d7_1 & mode1);

// OBDATA.NET (137) - prb01 : nd2
assign prb01 = ~(d6_2 & mode2);

// OBDATA.NET (138) - prb02 : nd2
assign prb02 = ~(d5_4 & mode4);

// OBDATA.NET (139) - prb03 : nd2
assign prb03 = ~(d4_8 & mode8);

// OBDATA.NET (140) - prb[0] : nd4
assign prb_0 = ~(prb00 & prb01 & prb02 & prb03);

// OBDATA.NET (142) - prb10 : nd2
assign prb10 = ~(index_1 & mode1);

// OBDATA.NET (143) - prb11 : nd2
assign prb11 = ~(d6_3 & mode2);

// OBDATA.NET (144) - prb12 : nd2
assign prb12 = ~(d5_5 & mode4);

// OBDATA.NET (145) - prb13 : nd2
assign prb13 = ~(d4_9 & mode8);

// OBDATA.NET (146) - prb[1] : nd4
assign prb_1 = ~(prb10 & prb11 & prb12 & prb13);

// OBDATA.NET (148) - prb20 : nd2
assign prb20 = ~(index_2 & mode1);

// OBDATA.NET (149) - prb21 : nd2
assign prb21 = ~(index_2 & mode2);

// OBDATA.NET (150) - prb22 : nd2
assign prb22 = ~(d5_6 & mode4);

// OBDATA.NET (151) - prb23 : nd2
assign prb23 = ~(d4_10 & mode8);

// OBDATA.NET (152) - prb[2] : nd4
assign prb_2 = ~(prb20 & prb21 & prb22 & prb23);

// OBDATA.NET (154) - prb30 : nd2
assign prb30 = ~(index_3 & mode1);

// OBDATA.NET (155) - prb31 : nd2
assign prb31 = ~(index_3 & mode2);

// OBDATA.NET (156) - prb32 : nd2
assign prb32 = ~(d5_7 & mode4);

// OBDATA.NET (157) - prb33 : nd2
assign prb33 = ~(d4_11 & mode8);

// OBDATA.NET (158) - prb[3] : nd4
assign prb_3 = ~(prb30 & prb31 & prb32 & prb33);

// OBDATA.NET (160) - prb[4] : mx2
assign prb_4 = (mode8) ? d4_12 : index_4;

// OBDATA.NET (161) - prb[5] : mx2
assign prb_5 = (mode8) ? d4_13 : index_5;

// OBDATA.NET (162) - prb[6] : mx2
assign prb_6 = (mode8) ? d4_14 : index_6;

// OBDATA.NET (163) - prb[7] : mx2
assign prb_7 = (mode8) ? d4_15 : index_7;

// OBDATA.NET (167) - paad[0-7] : mx2p
assign paad_0 = (clutt) ? at_1 : pra_0;
assign paad_1 = (clutt) ? at_2 : pra_1;
assign paad_2 = (clutt) ? at_3 : pra_2;
assign paad_3 = (clutt) ? at_4 : pra_3;
assign paad_4 = (clutt) ? at_5 : pra_4;
assign paad_5 = (clutt) ? at_6 : pra_5;
assign paad_6 = (clutt) ? at_7 : pra_6;
assign paad_7 = (clutt) ? at_8 : pra_7;

// OBDATA.NET (168) - pabd[0-7] : mx2p
assign pabd_0 = (clutt) ? at_1 : prb_0;
assign pabd_1 = (clutt) ? at_2 : prb_1;
assign pabd_2 = (clutt) ? at_3 : prb_2;
assign pabd_3 = (clutt) ? at_4 : prb_3;
assign pabd_4 = (clutt) ? at_5 : prb_4;
assign pabd_5 = (clutt) ? at_6 : prb_5;
assign pabd_6 = (clutt) ? at_7 : prb_6;
assign pabd_7 = (clutt) ? at_8 : prb_7;

// OBDATA.NET (172) - pral[0-7] : fd1q
fd1q pral_from_0_to_7_inst_0
(
	.q /* OUT */ (paaq_0),
	.d /* IN */ (paad_0),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pral_from_0_to_7_inst_1
(
	.q /* OUT */ (paaq_1),
	.d /* IN */ (paad_1),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pral_from_0_to_7_inst_2
(
	.q /* OUT */ (paaq_2),
	.d /* IN */ (paad_2),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pral_from_0_to_7_inst_3
(
	.q /* OUT */ (paaq_3),
	.d /* IN */ (paad_3),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pral_from_0_to_7_inst_4
(
	.q /* OUT */ (paaq_4),
	.d /* IN */ (paad_4),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pral_from_0_to_7_inst_5
(
	.q /* OUT */ (paaq_5),
	.d /* IN */ (paad_5),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pral_from_0_to_7_inst_6
(
	.q /* OUT */ (paaq_6),
	.d /* IN */ (paad_6),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pral_from_0_to_7_inst_7
(
	.q /* OUT */ (paaq_7),
	.d /* IN */ (paad_7),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// OBDATA.NET (173) - prbl[0-7] : fd1q
fd1q prbl_from_0_to_7_inst_0
(
	.q /* OUT */ (pabq_0),
	.d /* IN */ (pabd_0),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q prbl_from_0_to_7_inst_1
(
	.q /* OUT */ (pabq_1),
	.d /* IN */ (pabd_1),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q prbl_from_0_to_7_inst_2
(
	.q /* OUT */ (pabq_2),
	.d /* IN */ (pabd_2),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q prbl_from_0_to_7_inst_3
(
	.q /* OUT */ (pabq_3),
	.d /* IN */ (pabd_3),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q prbl_from_0_to_7_inst_4
(
	.q /* OUT */ (pabq_4),
	.d /* IN */ (pabd_4),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q prbl_from_0_to_7_inst_5
(
	.q /* OUT */ (pabq_5),
	.d /* IN */ (pabd_5),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q prbl_from_0_to_7_inst_6
(
	.q /* OUT */ (pabq_6),
	.d /* IN */ (pabd_6),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q prbl_from_0_to_7_inst_7
(
	.q /* OUT */ (pabq_7),
	.d /* IN */ (pabd_7),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// OBDATA.NET (175) - paa[0-7] : hdly2b
dly paa_from_0_to_7_inst_0
(
	.z /* OUT */ (paa_0),
	.a /* IN */ (paaq_0),
	.sys_clk(sys_clk) // Generated
);
dly paa_from_0_to_7_inst_1
(
	.z /* OUT */ (paa_1),
	.a /* IN */ (paaq_1),
	.sys_clk(sys_clk) // Generated
);
dly paa_from_0_to_7_inst_2
(
	.z /* OUT */ (paa_2),
	.a /* IN */ (paaq_2),
	.sys_clk(sys_clk) // Generated
);
dly paa_from_0_to_7_inst_3
(
	.z /* OUT */ (paa_3),
	.a /* IN */ (paaq_3),
	.sys_clk(sys_clk) // Generated
);
dly paa_from_0_to_7_inst_4
(
	.z /* OUT */ (paa_4),
	.a /* IN */ (paaq_4),
	.sys_clk(sys_clk) // Generated
);
dly paa_from_0_to_7_inst_5
(
	.z /* OUT */ (paa_5),
	.a /* IN */ (paaq_5),
	.sys_clk(sys_clk) // Generated
);
dly paa_from_0_to_7_inst_6
(
	.z /* OUT */ (paa_6),
	.a /* IN */ (paaq_6),
	.sys_clk(sys_clk) // Generated
);
dly paa_from_0_to_7_inst_7
(
	.z /* OUT */ (paa_7),
	.a /* IN */ (paaq_7),
	.sys_clk(sys_clk) // Generated
);

// OBDATA.NET (176) - pab[0-7] : hdly2b
dly pab_from_0_to_7_inst_0
(
	.z /* OUT */ (pab_0),
	.a /* IN */ (pabq_0),
	.sys_clk(sys_clk) // Generated
);
dly pab_from_0_to_7_inst_1
(
	.z /* OUT */ (pab_1),
	.a /* IN */ (pabq_1),
	.sys_clk(sys_clk) // Generated
);
dly pab_from_0_to_7_inst_2
(
	.z /* OUT */ (pab_2),
	.a /* IN */ (pabq_2),
	.sys_clk(sys_clk) // Generated
);
dly pab_from_0_to_7_inst_3
(
	.z /* OUT */ (pab_3),
	.a /* IN */ (pabq_3),
	.sys_clk(sys_clk) // Generated
);
dly pab_from_0_to_7_inst_4
(
	.z /* OUT */ (pab_4),
	.a /* IN */ (pabq_4),
	.sys_clk(sys_clk) // Generated
);
dly pab_from_0_to_7_inst_5
(
	.z /* OUT */ (pab_5),
	.a /* IN */ (pabq_5),
	.sys_clk(sys_clk) // Generated
);
dly pab_from_0_to_7_inst_6
(
	.z /* OUT */ (pab_6),
	.a /* IN */ (pabq_6),
	.sys_clk(sys_clk) // Generated
);
dly pab_from_0_to_7_inst_7
(
	.z /* OUT */ (pab_7),
	.a /* IN */ (pabq_7),
	.sys_clk(sys_clk) // Generated
);

// OBDATA.NET (178) - aa : join
assign aa[0] = paa_0;
assign aa[1] = paa_1;
assign aa[2] = paa_2;
assign aa[3] = paa_3;
assign aa[4] = paa_4;
assign aa[5] = paa_5;
assign aa[6] = paa_6;
assign aa[7] = paa_7;

// OBDATA.NET (179) - ab : join
assign ab[0] = pab_0;
assign ab[1] = pab_1;
assign ab[2] = pab_2;
assign ab[3] = pab_3;
assign ab[4] = pab_4;
assign ab[5] = pab_5;
assign ab[6] = pab_6;
assign ab[7] = pab_7;

// OBDATA.NET (183) - ncst : ivh
assign ncst = ~clk;

// OBDATA.NET (184) - busy : iv
assign busy = ~smq0;

// OBDATA.NET (185) - busy1 : fd1q
fd1q busy1_inst
(
	.q /* OUT */ (busy1),
	.d /* IN */ (busy),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// OBDATA.NET (186) - cs : or2
assign cs = palen | busy1;

// OBDATA.NET (187) - csl : nd2x3
assign csl = ~(ncst & cs);

// OBDATA.NET (189) - clut1 : ab8016a
ab8016a clut1_inst
(
	.z_out /* BUS */ ({ts_local_pe_368_a0_out,ts_local_pe_369_a0_out,ts_local_pe_370_a0_out,ts_local_pe_371_a0_out,ts_local_pe_372_a0_out,ts_local_pe_373_a0_out,ts_local_pe_374_a0_out,ts_local_pe_375_a0_out,ts_local_pe_376_a0_out,ts_local_pe_377_a0_out,ts_local_pe_378_a0_out,ts_local_pe_379_a0_out,ts_local_pe_380_a0_out,ts_local_pe_381_a0_out,ts_local_pe_382_a0_out,ts_local_pe_383_a0_out}),
	.z_oe /* BUS */ ({ts_local_pe_368_a0_oe,ts_local_pe_369_a0_oe,ts_local_pe_370_a0_oe,ts_local_pe_371_a0_oe,ts_local_pe_372_a0_oe,ts_local_pe_373_a0_oe,ts_local_pe_374_a0_oe,ts_local_pe_375_a0_oe,ts_local_pe_376_a0_oe,ts_local_pe_377_a0_oe,ts_local_pe_378_a0_oe,ts_local_pe_379_a0_oe,ts_local_pe_380_a0_oe,ts_local_pe_381_a0_oe,ts_local_pe_382_a0_oe,ts_local_pe_383_a0_oe}),
	.z_in /* BUS */ ({ts_local_pe_368_a0_in,ts_local_pe_369_a0_in,ts_local_pe_370_a0_in,ts_local_pe_371_a0_in,ts_local_pe_372_a0_in,ts_local_pe_373_a0_in,ts_local_pe_374_a0_in,ts_local_pe_375_a0_in,ts_local_pe_376_a0_in,ts_local_pe_377_a0_in,ts_local_pe_378_a0_in,ts_local_pe_379_a0_in,ts_local_pe_380_a0_in,ts_local_pe_381_a0_in,ts_local_pe_382_a0_in,ts_local_pe_383_a0_in}),
	.cen /* IN */ (csl),
	.rw /* IN */ (prw),
	.a /* IN */ ({aa[0],aa[1],aa[2],aa[3],aa[4],aa[5],aa[6],aa[7]}),
	.sys_clk(sys_clk) // Generated
);

// OBDATA.NET (190) - clut2 : ab8016a
ab8016a clut2_inst
(
	.z_out /* BUS */ ({ts_local_pe_384_a0_out,ts_local_pe_385_a0_out,ts_local_pe_386_a0_out,ts_local_pe_387_a0_out,ts_local_pe_388_a0_out,ts_local_pe_389_a0_out,ts_local_pe_390_a0_out,ts_local_pe_391_a0_out,ts_local_pe_392_a0_out,ts_local_pe_393_a0_out,ts_local_pe_394_a0_out,ts_local_pe_395_a0_out,ts_local_pe_396_a0_out,ts_local_pe_397_a0_out,ts_local_pe_398_a0_out,ts_local_pe_399_a0_out}),
	.z_oe /* BUS */ ({ts_local_pe_384_a0_oe,ts_local_pe_385_a0_oe,ts_local_pe_386_a0_oe,ts_local_pe_387_a0_oe,ts_local_pe_388_a0_oe,ts_local_pe_389_a0_oe,ts_local_pe_390_a0_oe,ts_local_pe_391_a0_oe,ts_local_pe_392_a0_oe,ts_local_pe_393_a0_oe,ts_local_pe_394_a0_oe,ts_local_pe_395_a0_oe,ts_local_pe_396_a0_oe,ts_local_pe_397_a0_oe,ts_local_pe_398_a0_oe,ts_local_pe_399_a0_oe}),
	.z_in /* BUS */ ({ts_local_pe_384_a0_in,ts_local_pe_385_a0_in,ts_local_pe_386_a0_in,ts_local_pe_387_a0_in,ts_local_pe_388_a0_in,ts_local_pe_389_a0_in,ts_local_pe_390_a0_in,ts_local_pe_391_a0_in,ts_local_pe_392_a0_in,ts_local_pe_393_a0_in,ts_local_pe_394_a0_in,ts_local_pe_395_a0_in,ts_local_pe_396_a0_in,ts_local_pe_397_a0_in,ts_local_pe_398_a0_in,ts_local_pe_399_a0_in}),
	.cen /* IN */ (csl),
	.rw /* IN */ (prw),
	.a /* IN */ ({ab[0],ab[1],ab[2],ab[3],ab[4],ab[5],ab[6],ab[7]}),
	.sys_clk(sys_clk) // Generated
);

// OBDATA.NET (194) - pdi[0-15] : mx2
assign pdi_0 = (aout_9) ? pdb_in[0] : pda_in[0];
assign pdi_1 = (aout_9) ? pdb_in[1] : pda_in[1];
assign pdi_2 = (aout_9) ? pdb_in[2] : pda_in[2];
assign pdi_3 = (aout_9) ? pdb_in[3] : pda_in[3];
assign pdi_4 = (aout_9) ? pdb_in[4] : pda_in[4];
assign pdi_5 = (aout_9) ? pdb_in[5] : pda_in[5];
assign pdi_6 = (aout_9) ? pdb_in[6] : pda_in[6];
assign pdi_7 = (aout_9) ? pdb_in[7] : pda_in[7];
assign pdi_8 = (aout_9) ? pdb_in[8] : pda_in[8];
assign pdi_9 = (aout_9) ? pdb_in[9] : pda_in[9];
assign pdi_10 = (aout_9) ? pdb_in[10] : pda_in[10];
assign pdi_11 = (aout_9) ? pdb_in[11] : pda_in[11];
assign pdi_12 = (aout_9) ? pdb_in[12] : pda_in[12];
assign pdi_13 = (aout_9) ? pdb_in[13] : pda_in[13];
assign pdi_14 = (aout_9) ? pdb_in[14] : pda_in[14];
assign pdi_15 = (aout_9) ? pdb_in[15] : pda_in[15];

// OBDATA.NET (195) - pd[0-15] : fd1q
fd1q pd_from_0_to_15_inst_0
(
	.q /* OUT */ (pd_0),
	.d /* IN */ (pdi_0),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pd_from_0_to_15_inst_1
(
	.q /* OUT */ (pd_1),
	.d /* IN */ (pdi_1),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pd_from_0_to_15_inst_2
(
	.q /* OUT */ (pd_2),
	.d /* IN */ (pdi_2),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pd_from_0_to_15_inst_3
(
	.q /* OUT */ (pd_3),
	.d /* IN */ (pdi_3),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pd_from_0_to_15_inst_4
(
	.q /* OUT */ (pd_4),
	.d /* IN */ (pdi_4),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pd_from_0_to_15_inst_5
(
	.q /* OUT */ (pd_5),
	.d /* IN */ (pdi_5),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pd_from_0_to_15_inst_6
(
	.q /* OUT */ (pd_6),
	.d /* IN */ (pdi_6),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pd_from_0_to_15_inst_7
(
	.q /* OUT */ (pd_7),
	.d /* IN */ (pdi_7),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pd_from_0_to_15_inst_8
(
	.q /* OUT */ (pd_8),
	.d /* IN */ (pdi_8),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pd_from_0_to_15_inst_9
(
	.q /* OUT */ (pd_9),
	.d /* IN */ (pdi_9),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pd_from_0_to_15_inst_10
(
	.q /* OUT */ (pd_10),
	.d /* IN */ (pdi_10),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pd_from_0_to_15_inst_11
(
	.q /* OUT */ (pd_11),
	.d /* IN */ (pdi_11),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pd_from_0_to_15_inst_12
(
	.q /* OUT */ (pd_12),
	.d /* IN */ (pdi_12),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pd_from_0_to_15_inst_13
(
	.q /* OUT */ (pd_13),
	.d /* IN */ (pdi_13),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pd_from_0_to_15_inst_14
(
	.q /* OUT */ (pd_14),
	.d /* IN */ (pdi_14),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q pd_from_0_to_15_inst_15
(
	.q /* OUT */ (pd_15),
	.d /* IN */ (pdi_15),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// OBDATA.NET (196) - dr[0-15] : ts
assign dr_0_out = pd_0;
assign dr_0_oe = pden;
assign dr_1_out = pd_1;
assign dr_1_oe = pden;
assign dr_2_out = pd_2;
assign dr_2_oe = pden;
assign dr_3_out = pd_3;
assign dr_3_oe = pden;
assign dr_4_out = pd_4;
assign dr_4_oe = pden;
assign dr_5_out = pd_5;
assign dr_5_oe = pden;
assign dr_6_out = pd_6;
assign dr_6_oe = pden;
assign dr_7_out = pd_7;
assign dr_7_oe = pden;
assign dr_8_out = pd_8;
assign dr_8_oe = pden;
assign dr_9_out = pd_9;
assign dr_9_oe = pden;
assign dr_10_out = pd_10;
assign dr_10_oe = pden;
assign dr_11_out = pd_11;
assign dr_11_oe = pden;
assign dr_12_out = pd_12;
assign dr_12_oe = pden;
assign dr_13_out = pd_13;
assign dr_13_oe = pden;
assign dr_14_out = pd_14;
assign dr_14_oe = pden;
assign dr_15_out = pd_15;
assign dr_15_oe = pden;

// OBDATA.NET (197) - pdeni : nd2
assign pdeni = ~(palen & reads);

// OBDATA.NET (198) - pden : ivh
assign pden = ~pdeni;

// OBDATA.NET (202) - pwdeni : nr2
assign pwdeni = ~(busy1 | pden);

// OBDATA.NET (203) - pwden : nivu
assign pwden = pwdeni;

// OBDATA.NET (204) - di : join
assign di[0] = din_0;
assign di[1] = din_1;
assign di[2] = din_2;
assign di[3] = din_3;
assign di[4] = din_4;
assign di[5] = din_5;
assign di[6] = din_6;
assign di[7] = din_7;
assign di[8] = din_8;
assign di[9] = din_9;
assign di[10] = din_10;
assign di[11] = din_11;
assign di[12] = din_12;
assign di[13] = din_13;
assign di[14] = din_14;
assign di[15] = din_15;

// OBDATA.NET (205) - pwda : ts
assign ts_local_pe_368_a1_out = di[0];
assign ts_local_pe_368_a1_oe = pwden;
assign ts_local_pe_369_a1_out = di[1];
assign ts_local_pe_369_a1_oe = pwden;
assign ts_local_pe_370_a1_out = di[2];
assign ts_local_pe_370_a1_oe = pwden;
assign ts_local_pe_371_a1_out = di[3];
assign ts_local_pe_371_a1_oe = pwden;
assign ts_local_pe_372_a1_out = di[4];
assign ts_local_pe_372_a1_oe = pwden;
assign ts_local_pe_373_a1_out = di[5];
assign ts_local_pe_373_a1_oe = pwden;
assign ts_local_pe_374_a1_out = di[6];
assign ts_local_pe_374_a1_oe = pwden;
assign ts_local_pe_375_a1_out = di[7];
assign ts_local_pe_375_a1_oe = pwden;
assign ts_local_pe_376_a1_out = di[8];
assign ts_local_pe_376_a1_oe = pwden;
assign ts_local_pe_377_a1_out = di[9];
assign ts_local_pe_377_a1_oe = pwden;
assign ts_local_pe_378_a1_out = di[10];
assign ts_local_pe_378_a1_oe = pwden;
assign ts_local_pe_379_a1_out = di[11];
assign ts_local_pe_379_a1_oe = pwden;
assign ts_local_pe_380_a1_out = di[12];
assign ts_local_pe_380_a1_oe = pwden;
assign ts_local_pe_381_a1_out = di[13];
assign ts_local_pe_381_a1_oe = pwden;
assign ts_local_pe_382_a1_out = di[14];
assign ts_local_pe_382_a1_oe = pwden;
assign ts_local_pe_383_a1_out = di[15];
assign ts_local_pe_383_a1_oe = pwden;

// OBDATA.NET (206) - pwdb : ts
assign ts_local_pe_384_a1_out = di[0];
assign ts_local_pe_384_a1_oe = pwden;
assign ts_local_pe_385_a1_out = di[1];
assign ts_local_pe_385_a1_oe = pwden;
assign ts_local_pe_386_a1_out = di[2];
assign ts_local_pe_386_a1_oe = pwden;
assign ts_local_pe_387_a1_out = di[3];
assign ts_local_pe_387_a1_oe = pwden;
assign ts_local_pe_388_a1_out = di[4];
assign ts_local_pe_388_a1_oe = pwden;
assign ts_local_pe_389_a1_out = di[5];
assign ts_local_pe_389_a1_oe = pwden;
assign ts_local_pe_390_a1_out = di[6];
assign ts_local_pe_390_a1_oe = pwden;
assign ts_local_pe_391_a1_out = di[7];
assign ts_local_pe_391_a1_oe = pwden;
assign ts_local_pe_392_a1_out = di[8];
assign ts_local_pe_392_a1_oe = pwden;
assign ts_local_pe_393_a1_out = di[9];
assign ts_local_pe_393_a1_oe = pwden;
assign ts_local_pe_394_a1_out = di[10];
assign ts_local_pe_394_a1_oe = pwden;
assign ts_local_pe_395_a1_out = di[11];
assign ts_local_pe_395_a1_oe = pwden;
assign ts_local_pe_396_a1_out = di[12];
assign ts_local_pe_396_a1_oe = pwden;
assign ts_local_pe_397_a1_out = di[13];
assign ts_local_pe_397_a1_oe = pwden;
assign ts_local_pe_398_a1_out = di[14];
assign ts_local_pe_398_a1_oe = pwden;
assign ts_local_pe_399_a1_out = di[15];
assign ts_local_pe_399_a1_oe = pwden;

// OBDATA.NET (210) - iw : iv
assign writes = ~reads;

// OBDATA.NET (211) - prw : nd2
assign prw = ~(writes & palen);

// OBDATA.NET (215) - physicali : or2
assign physicali = mode16 | mode24;

// OBDATA.NET (216) - physical : nivu2
assign phys = physicali;

// OBDATA.NET (217) - hilob : nivu
assign hilob = hilo;

// OBDATA.NET (221) - d8[0-15] : mx4
mx4 d8_from_0_to_15_inst_0
(
	.z /* OUT */ (d8_0),
	.a0 /* IN */ (pda_in[0]),
	.a1 /* IN */ (d3_0),
	.a2 /* IN */ (pdb_in[0]),
	.a3 /* IN */ (d3_16),
	.s0 /* IN */ (phys),
	.s1 /* IN */ (hilob)
);
mx4 d8_from_0_to_15_inst_1
(
	.z /* OUT */ (d8_1),
	.a0 /* IN */ (pda_in[1]),
	.a1 /* IN */ (d3_1),
	.a2 /* IN */ (pdb_in[1]),
	.a3 /* IN */ (d3_17),
	.s0 /* IN */ (phys),
	.s1 /* IN */ (hilob)
);
mx4 d8_from_0_to_15_inst_2
(
	.z /* OUT */ (d8_2),
	.a0 /* IN */ (pda_in[2]),
	.a1 /* IN */ (d3_2),
	.a2 /* IN */ (pdb_in[2]),
	.a3 /* IN */ (d3_18),
	.s0 /* IN */ (phys),
	.s1 /* IN */ (hilob)
);
mx4 d8_from_0_to_15_inst_3
(
	.z /* OUT */ (d8_3),
	.a0 /* IN */ (pda_in[3]),
	.a1 /* IN */ (d3_3),
	.a2 /* IN */ (pdb_in[3]),
	.a3 /* IN */ (d3_19),
	.s0 /* IN */ (phys),
	.s1 /* IN */ (hilob)
);
mx4 d8_from_0_to_15_inst_4
(
	.z /* OUT */ (d8_4),
	.a0 /* IN */ (pda_in[4]),
	.a1 /* IN */ (d3_4),
	.a2 /* IN */ (pdb_in[4]),
	.a3 /* IN */ (d3_20),
	.s0 /* IN */ (phys),
	.s1 /* IN */ (hilob)
);
mx4 d8_from_0_to_15_inst_5
(
	.z /* OUT */ (d8_5),
	.a0 /* IN */ (pda_in[5]),
	.a1 /* IN */ (d3_5),
	.a2 /* IN */ (pdb_in[5]),
	.a3 /* IN */ (d3_21),
	.s0 /* IN */ (phys),
	.s1 /* IN */ (hilob)
);
mx4 d8_from_0_to_15_inst_6
(
	.z /* OUT */ (d8_6),
	.a0 /* IN */ (pda_in[6]),
	.a1 /* IN */ (d3_6),
	.a2 /* IN */ (pdb_in[6]),
	.a3 /* IN */ (d3_22),
	.s0 /* IN */ (phys),
	.s1 /* IN */ (hilob)
);
mx4 d8_from_0_to_15_inst_7
(
	.z /* OUT */ (d8_7),
	.a0 /* IN */ (pda_in[7]),
	.a1 /* IN */ (d3_7),
	.a2 /* IN */ (pdb_in[7]),
	.a3 /* IN */ (d3_23),
	.s0 /* IN */ (phys),
	.s1 /* IN */ (hilob)
);
mx4 d8_from_0_to_15_inst_8
(
	.z /* OUT */ (d8_8),
	.a0 /* IN */ (pda_in[8]),
	.a1 /* IN */ (d3_8),
	.a2 /* IN */ (pdb_in[8]),
	.a3 /* IN */ (d3_24),
	.s0 /* IN */ (phys),
	.s1 /* IN */ (hilob)
);
mx4 d8_from_0_to_15_inst_9
(
	.z /* OUT */ (d8_9),
	.a0 /* IN */ (pda_in[9]),
	.a1 /* IN */ (d3_9),
	.a2 /* IN */ (pdb_in[9]),
	.a3 /* IN */ (d3_25),
	.s0 /* IN */ (phys),
	.s1 /* IN */ (hilob)
);
mx4 d8_from_0_to_15_inst_10
(
	.z /* OUT */ (d8_10),
	.a0 /* IN */ (pda_in[10]),
	.a1 /* IN */ (d3_10),
	.a2 /* IN */ (pdb_in[10]),
	.a3 /* IN */ (d3_26),
	.s0 /* IN */ (phys),
	.s1 /* IN */ (hilob)
);
mx4 d8_from_0_to_15_inst_11
(
	.z /* OUT */ (d8_11),
	.a0 /* IN */ (pda_in[11]),
	.a1 /* IN */ (d3_11),
	.a2 /* IN */ (pdb_in[11]),
	.a3 /* IN */ (d3_27),
	.s0 /* IN */ (phys),
	.s1 /* IN */ (hilob)
);
mx4 d8_from_0_to_15_inst_12
(
	.z /* OUT */ (d8_12),
	.a0 /* IN */ (pda_in[12]),
	.a1 /* IN */ (d3_12),
	.a2 /* IN */ (pdb_in[12]),
	.a3 /* IN */ (d3_28),
	.s0 /* IN */ (phys),
	.s1 /* IN */ (hilob)
);
mx4 d8_from_0_to_15_inst_13
(
	.z /* OUT */ (d8_13),
	.a0 /* IN */ (pda_in[13]),
	.a1 /* IN */ (d3_13),
	.a2 /* IN */ (pdb_in[13]),
	.a3 /* IN */ (d3_29),
	.s0 /* IN */ (phys),
	.s1 /* IN */ (hilob)
);
mx4 d8_from_0_to_15_inst_14
(
	.z /* OUT */ (d8_14),
	.a0 /* IN */ (pda_in[14]),
	.a1 /* IN */ (d3_14),
	.a2 /* IN */ (pdb_in[14]),
	.a3 /* IN */ (d3_30),
	.s0 /* IN */ (phys),
	.s1 /* IN */ (hilob)
);
mx4 d8_from_0_to_15_inst_15
(
	.z /* OUT */ (d8_15),
	.a0 /* IN */ (pda_in[15]),
	.a1 /* IN */ (d3_15),
	.a2 /* IN */ (pdb_in[15]),
	.a3 /* IN */ (d3_31),
	.s0 /* IN */ (phys),
	.s1 /* IN */ (hilob)
);

// OBDATA.NET (222) - d8[16-31] : mx4
mx4 d8_from_16_to_31_inst_0
(
	.z /* OUT */ (d8_16),
	.a0 /* IN */ (pdb_in[0]),
	.a1 /* IN */ (d3_16),
	.a2 /* IN */ (pda_in[0]),
	.a3 /* IN */ (d3_0),
	.s0 /* IN */ (phys),
	.s1 /* IN */ (hilob)
);
mx4 d8_from_16_to_31_inst_1
(
	.z /* OUT */ (d8_17),
	.a0 /* IN */ (pdb_in[1]),
	.a1 /* IN */ (d3_17),
	.a2 /* IN */ (pda_in[1]),
	.a3 /* IN */ (d3_1),
	.s0 /* IN */ (phys),
	.s1 /* IN */ (hilob)
);
mx4 d8_from_16_to_31_inst_2
(
	.z /* OUT */ (d8_18),
	.a0 /* IN */ (pdb_in[2]),
	.a1 /* IN */ (d3_18),
	.a2 /* IN */ (pda_in[2]),
	.a3 /* IN */ (d3_2),
	.s0 /* IN */ (phys),
	.s1 /* IN */ (hilob)
);
mx4 d8_from_16_to_31_inst_3
(
	.z /* OUT */ (d8_19),
	.a0 /* IN */ (pdb_in[3]),
	.a1 /* IN */ (d3_19),
	.a2 /* IN */ (pda_in[3]),
	.a3 /* IN */ (d3_3),
	.s0 /* IN */ (phys),
	.s1 /* IN */ (hilob)
);
mx4 d8_from_16_to_31_inst_4
(
	.z /* OUT */ (d8_20),
	.a0 /* IN */ (pdb_in[4]),
	.a1 /* IN */ (d3_20),
	.a2 /* IN */ (pda_in[4]),
	.a3 /* IN */ (d3_4),
	.s0 /* IN */ (phys),
	.s1 /* IN */ (hilob)
);
mx4 d8_from_16_to_31_inst_5
(
	.z /* OUT */ (d8_21),
	.a0 /* IN */ (pdb_in[5]),
	.a1 /* IN */ (d3_21),
	.a2 /* IN */ (pda_in[5]),
	.a3 /* IN */ (d3_5),
	.s0 /* IN */ (phys),
	.s1 /* IN */ (hilob)
);
mx4 d8_from_16_to_31_inst_6
(
	.z /* OUT */ (d8_22),
	.a0 /* IN */ (pdb_in[6]),
	.a1 /* IN */ (d3_22),
	.a2 /* IN */ (pda_in[6]),
	.a3 /* IN */ (d3_6),
	.s0 /* IN */ (phys),
	.s1 /* IN */ (hilob)
);
mx4 d8_from_16_to_31_inst_7
(
	.z /* OUT */ (d8_23),
	.a0 /* IN */ (pdb_in[7]),
	.a1 /* IN */ (d3_23),
	.a2 /* IN */ (pda_in[7]),
	.a3 /* IN */ (d3_7),
	.s0 /* IN */ (phys),
	.s1 /* IN */ (hilob)
);
mx4 d8_from_16_to_31_inst_8
(
	.z /* OUT */ (d8_24),
	.a0 /* IN */ (pdb_in[8]),
	.a1 /* IN */ (d3_24),
	.a2 /* IN */ (pda_in[8]),
	.a3 /* IN */ (d3_8),
	.s0 /* IN */ (phys),
	.s1 /* IN */ (hilob)
);
mx4 d8_from_16_to_31_inst_9
(
	.z /* OUT */ (d8_25),
	.a0 /* IN */ (pdb_in[9]),
	.a1 /* IN */ (d3_25),
	.a2 /* IN */ (pda_in[9]),
	.a3 /* IN */ (d3_9),
	.s0 /* IN */ (phys),
	.s1 /* IN */ (hilob)
);
mx4 d8_from_16_to_31_inst_10
(
	.z /* OUT */ (d8_26),
	.a0 /* IN */ (pdb_in[10]),
	.a1 /* IN */ (d3_26),
	.a2 /* IN */ (pda_in[10]),
	.a3 /* IN */ (d3_10),
	.s0 /* IN */ (phys),
	.s1 /* IN */ (hilob)
);
mx4 d8_from_16_to_31_inst_11
(
	.z /* OUT */ (d8_27),
	.a0 /* IN */ (pdb_in[11]),
	.a1 /* IN */ (d3_27),
	.a2 /* IN */ (pda_in[11]),
	.a3 /* IN */ (d3_11),
	.s0 /* IN */ (phys),
	.s1 /* IN */ (hilob)
);
mx4 d8_from_16_to_31_inst_12
(
	.z /* OUT */ (d8_28),
	.a0 /* IN */ (pdb_in[12]),
	.a1 /* IN */ (d3_28),
	.a2 /* IN */ (pda_in[12]),
	.a3 /* IN */ (d3_12),
	.s0 /* IN */ (phys),
	.s1 /* IN */ (hilob)
);
mx4 d8_from_16_to_31_inst_13
(
	.z /* OUT */ (d8_29),
	.a0 /* IN */ (pdb_in[13]),
	.a1 /* IN */ (d3_29),
	.a2 /* IN */ (pda_in[13]),
	.a3 /* IN */ (d3_13),
	.s0 /* IN */ (phys),
	.s1 /* IN */ (hilob)
);
mx4 d8_from_16_to_31_inst_14
(
	.z /* OUT */ (d8_30),
	.a0 /* IN */ (pdb_in[14]),
	.a1 /* IN */ (d3_30),
	.a2 /* IN */ (pda_in[14]),
	.a3 /* IN */ (d3_14),
	.s0 /* IN */ (phys),
	.s1 /* IN */ (hilob)
);
mx4 d8_from_16_to_31_inst_15
(
	.z /* OUT */ (d8_31),
	.a0 /* IN */ (pdb_in[15]),
	.a1 /* IN */ (d3_31),
	.a2 /* IN */ (pda_in[15]),
	.a3 /* IN */ (d3_15),
	.s0 /* IN */ (phys),
	.s1 /* IN */ (hilob)
);

// OBDATA.NET (226) - d9[0-31] : fd1q
fd1q d9_from_0_to_31_inst_0
(
	.q /* OUT */ (d9_0),
	.d /* IN */ (d8_0),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q d9_from_0_to_31_inst_1
(
	.q /* OUT */ (d9_1),
	.d /* IN */ (d8_1),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q d9_from_0_to_31_inst_2
(
	.q /* OUT */ (d9_2),
	.d /* IN */ (d8_2),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q d9_from_0_to_31_inst_3
(
	.q /* OUT */ (d9_3),
	.d /* IN */ (d8_3),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q d9_from_0_to_31_inst_4
(
	.q /* OUT */ (d9_4),
	.d /* IN */ (d8_4),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q d9_from_0_to_31_inst_5
(
	.q /* OUT */ (d9_5),
	.d /* IN */ (d8_5),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q d9_from_0_to_31_inst_6
(
	.q /* OUT */ (d9_6),
	.d /* IN */ (d8_6),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q d9_from_0_to_31_inst_7
(
	.q /* OUT */ (d9_7),
	.d /* IN */ (d8_7),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q d9_from_0_to_31_inst_8
(
	.q /* OUT */ (d9_8),
	.d /* IN */ (d8_8),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q d9_from_0_to_31_inst_9
(
	.q /* OUT */ (d9_9),
	.d /* IN */ (d8_9),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q d9_from_0_to_31_inst_10
(
	.q /* OUT */ (d9_10),
	.d /* IN */ (d8_10),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q d9_from_0_to_31_inst_11
(
	.q /* OUT */ (d9_11),
	.d /* IN */ (d8_11),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q d9_from_0_to_31_inst_12
(
	.q /* OUT */ (d9_12),
	.d /* IN */ (d8_12),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q d9_from_0_to_31_inst_13
(
	.q /* OUT */ (d9_13),
	.d /* IN */ (d8_13),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q d9_from_0_to_31_inst_14
(
	.q /* OUT */ (d9_14),
	.d /* IN */ (d8_14),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q d9_from_0_to_31_inst_15
(
	.q /* OUT */ (d9_15),
	.d /* IN */ (d8_15),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q d9_from_0_to_31_inst_16
(
	.q /* OUT */ (d9_16),
	.d /* IN */ (d8_16),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q d9_from_0_to_31_inst_17
(
	.q /* OUT */ (d9_17),
	.d /* IN */ (d8_17),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q d9_from_0_to_31_inst_18
(
	.q /* OUT */ (d9_18),
	.d /* IN */ (d8_18),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q d9_from_0_to_31_inst_19
(
	.q /* OUT */ (d9_19),
	.d /* IN */ (d8_19),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q d9_from_0_to_31_inst_20
(
	.q /* OUT */ (d9_20),
	.d /* IN */ (d8_20),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q d9_from_0_to_31_inst_21
(
	.q /* OUT */ (d9_21),
	.d /* IN */ (d8_21),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q d9_from_0_to_31_inst_22
(
	.q /* OUT */ (d9_22),
	.d /* IN */ (d8_22),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q d9_from_0_to_31_inst_23
(
	.q /* OUT */ (d9_23),
	.d /* IN */ (d8_23),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q d9_from_0_to_31_inst_24
(
	.q /* OUT */ (d9_24),
	.d /* IN */ (d8_24),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q d9_from_0_to_31_inst_25
(
	.q /* OUT */ (d9_25),
	.d /* IN */ (d8_25),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q d9_from_0_to_31_inst_26
(
	.q /* OUT */ (d9_26),
	.d /* IN */ (d8_26),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q d9_from_0_to_31_inst_27
(
	.q /* OUT */ (d9_27),
	.d /* IN */ (d8_27),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q d9_from_0_to_31_inst_28
(
	.q /* OUT */ (d9_28),
	.d /* IN */ (d8_28),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q d9_from_0_to_31_inst_29
(
	.q /* OUT */ (d9_29),
	.d /* IN */ (d8_29),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q d9_from_0_to_31_inst_30
(
	.q /* OUT */ (d9_30),
	.d /* IN */ (d8_30),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q d9_from_0_to_31_inst_31
(
	.q /* OUT */ (d9_31),
	.d /* IN */ (d8_31),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// OBDATA.NET (227) - d9l : join
assign d9l[0] = d9_0;
assign d9l[1] = d9_1;
assign d9l[2] = d9_2;
assign d9l[3] = d9_3;
assign d9l[4] = d9_4;
assign d9l[5] = d9_5;
assign d9l[6] = d9_6;
assign d9l[7] = d9_7;
assign d9l[8] = d9_8;
assign d9l[9] = d9_9;
assign d9l[10] = d9_10;
assign d9l[11] = d9_11;
assign d9l[12] = d9_12;
assign d9l[13] = d9_13;
assign d9l[14] = d9_14;
assign d9l[15] = d9_15;

// OBDATA.NET (228) - d9lu : dummy

// OBDATA.NET (229) - d9h : join
assign d9h[0] = d9_16;
assign d9h[1] = d9_17;
assign d9h[2] = d9_18;
assign d9h[3] = d9_19;
assign d9h[4] = d9_20;
assign d9h[5] = d9_21;
assign d9h[6] = d9_22;
assign d9h[7] = d9_23;
assign d9h[8] = d9_24;
assign d9h[9] = d9_25;
assign d9h[10] = d9_26;
assign d9h[11] = d9_27;
assign d9h[12] = d9_28;
assign d9h[13] = d9_29;
assign d9h[14] = d9_30;
assign d9h[15] = d9_31;

// OBDATA.NET (230) - d9hu : dummy

// OBDATA.NET (268) - nextbits1 : fd1q
fd1q nextbits1_inst
(
	.q /* OUT */ (nextbits1),
	.d /* IN */ (nextbits),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// OBDATA.NET (269) - nextbits2 : fd1q
fd1q nextbits2_inst
(
	.q /* OUT */ (nextbits2),
	.d /* IN */ (nextbits1),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// OBDATA.NET (270) - delpixi : mx2
assign delpixi = (phys) ? nextbits1 : nextbits2;

// OBDATA.NET (271) - delpix : nivh
assign delpix = delpixi;

// OBDATA.NET (272) - da[0-15] : slatch
slatch da_from_0_to_15_inst_0
(
	.q /* OUT */ (da_0),
	.d /* IN */ (d9_16),
	.clk /* IN */ (clk),
	.en /* IN */ (delpix),
	.sys_clk(sys_clk) // Generated
);
slatch da_from_0_to_15_inst_1
(
	.q /* OUT */ (da_1),
	.d /* IN */ (d9_17),
	.clk /* IN */ (clk),
	.en /* IN */ (delpix),
	.sys_clk(sys_clk) // Generated
);
slatch da_from_0_to_15_inst_2
(
	.q /* OUT */ (da_2),
	.d /* IN */ (d9_18),
	.clk /* IN */ (clk),
	.en /* IN */ (delpix),
	.sys_clk(sys_clk) // Generated
);
slatch da_from_0_to_15_inst_3
(
	.q /* OUT */ (da_3),
	.d /* IN */ (d9_19),
	.clk /* IN */ (clk),
	.en /* IN */ (delpix),
	.sys_clk(sys_clk) // Generated
);
slatch da_from_0_to_15_inst_4
(
	.q /* OUT */ (da_4),
	.d /* IN */ (d9_20),
	.clk /* IN */ (clk),
	.en /* IN */ (delpix),
	.sys_clk(sys_clk) // Generated
);
slatch da_from_0_to_15_inst_5
(
	.q /* OUT */ (da_5),
	.d /* IN */ (d9_21),
	.clk /* IN */ (clk),
	.en /* IN */ (delpix),
	.sys_clk(sys_clk) // Generated
);
slatch da_from_0_to_15_inst_6
(
	.q /* OUT */ (da_6),
	.d /* IN */ (d9_22),
	.clk /* IN */ (clk),
	.en /* IN */ (delpix),
	.sys_clk(sys_clk) // Generated
);
slatch da_from_0_to_15_inst_7
(
	.q /* OUT */ (da_7),
	.d /* IN */ (d9_23),
	.clk /* IN */ (clk),
	.en /* IN */ (delpix),
	.sys_clk(sys_clk) // Generated
);
slatch da_from_0_to_15_inst_8
(
	.q /* OUT */ (da_8),
	.d /* IN */ (d9_24),
	.clk /* IN */ (clk),
	.en /* IN */ (delpix),
	.sys_clk(sys_clk) // Generated
);
slatch da_from_0_to_15_inst_9
(
	.q /* OUT */ (da_9),
	.d /* IN */ (d9_25),
	.clk /* IN */ (clk),
	.en /* IN */ (delpix),
	.sys_clk(sys_clk) // Generated
);
slatch da_from_0_to_15_inst_10
(
	.q /* OUT */ (da_10),
	.d /* IN */ (d9_26),
	.clk /* IN */ (clk),
	.en /* IN */ (delpix),
	.sys_clk(sys_clk) // Generated
);
slatch da_from_0_to_15_inst_11
(
	.q /* OUT */ (da_11),
	.d /* IN */ (d9_27),
	.clk /* IN */ (clk),
	.en /* IN */ (delpix),
	.sys_clk(sys_clk) // Generated
);
slatch da_from_0_to_15_inst_12
(
	.q /* OUT */ (da_12),
	.d /* IN */ (d9_28),
	.clk /* IN */ (clk),
	.en /* IN */ (delpix),
	.sys_clk(sys_clk) // Generated
);
slatch da_from_0_to_15_inst_13
(
	.q /* OUT */ (da_13),
	.d /* IN */ (d9_29),
	.clk /* IN */ (clk),
	.en /* IN */ (delpix),
	.sys_clk(sys_clk) // Generated
);
slatch da_from_0_to_15_inst_14
(
	.q /* OUT */ (da_14),
	.d /* IN */ (d9_30),
	.clk /* IN */ (clk),
	.en /* IN */ (delpix),
	.sys_clk(sys_clk) // Generated
);
slatch da_from_0_to_15_inst_15
(
	.q /* OUT */ (da_15),
	.d /* IN */ (d9_31),
	.clk /* IN */ (clk),
	.en /* IN */ (delpix),
	.sys_clk(sys_clk) // Generated
);

// OBDATA.NET (274) - del1 : eo
assign del1 = lbwa_0 ^ reflected;

// OBDATA.NET (275) - delayed : an2h
assign delayed = del1 & notscaled;

// OBDATA.NET (277) - db[0-15] : mx2
assign db_0 = (delayed) ? da_0 : d9_16;
assign db_1 = (delayed) ? da_1 : d9_17;
assign db_2 = (delayed) ? da_2 : d9_18;
assign db_3 = (delayed) ? da_3 : d9_19;
assign db_4 = (delayed) ? da_4 : d9_20;
assign db_5 = (delayed) ? da_5 : d9_21;
assign db_6 = (delayed) ? da_6 : d9_22;
assign db_7 = (delayed) ? da_7 : d9_23;
assign db_8 = (delayed) ? da_8 : d9_24;
assign db_9 = (delayed) ? da_9 : d9_25;
assign db_10 = (delayed) ? da_10 : d9_26;
assign db_11 = (delayed) ? da_11 : d9_27;
assign db_12 = (delayed) ? da_12 : d9_28;
assign db_13 = (delayed) ? da_13 : d9_29;
assign db_14 = (delayed) ? da_14 : d9_30;
assign db_15 = (delayed) ? da_15 : d9_31;

// OBDATA.NET (279) - lbwd[0-15] : mx2
assign lbwd_0 = (pswap) ? db_0 : d9_0;
assign lbwd_1 = (pswap) ? db_1 : d9_1;
assign lbwd_2 = (pswap) ? db_2 : d9_2;
assign lbwd_3 = (pswap) ? db_3 : d9_3;
assign lbwd_4 = (pswap) ? db_4 : d9_4;
assign lbwd_5 = (pswap) ? db_5 : d9_5;
assign lbwd_6 = (pswap) ? db_6 : d9_6;
assign lbwd_7 = (pswap) ? db_7 : d9_7;
assign lbwd_8 = (pswap) ? db_8 : d9_8;
assign lbwd_9 = (pswap) ? db_9 : d9_9;
assign lbwd_10 = (pswap) ? db_10 : d9_10;
assign lbwd_11 = (pswap) ? db_11 : d9_11;
assign lbwd_12 = (pswap) ? db_12 : d9_12;
assign lbwd_13 = (pswap) ? db_13 : d9_13;
assign lbwd_14 = (pswap) ? db_14 : d9_14;
assign lbwd_15 = (pswap) ? db_15 : d9_15;

// OBDATA.NET (280) - lbwd[16-31] : mx2
assign lbwd_16 = (pswap) ? d9_0 : db_0;
assign lbwd_17 = (pswap) ? d9_1 : db_1;
assign lbwd_18 = (pswap) ? d9_2 : db_2;
assign lbwd_19 = (pswap) ? d9_3 : db_3;
assign lbwd_20 = (pswap) ? d9_4 : db_4;
assign lbwd_21 = (pswap) ? d9_5 : db_5;
assign lbwd_22 = (pswap) ? d9_6 : db_6;
assign lbwd_23 = (pswap) ? d9_7 : db_7;
assign lbwd_24 = (pswap) ? d9_8 : db_8;
assign lbwd_25 = (pswap) ? d9_9 : db_9;
assign lbwd_26 = (pswap) ? d9_10 : db_10;
assign lbwd_27 = (pswap) ? d9_11 : db_11;
assign lbwd_28 = (pswap) ? d9_12 : db_12;
assign lbwd_29 = (pswap) ? d9_13 : db_13;
assign lbwd_30 = (pswap) ? d9_14 : db_14;
assign lbwd_31 = (pswap) ? d9_15 : db_15;

// OBDATA.NET (294) - pa[0] : upcnts
upcnts pa_index_0_inst
(
	.q /* OUT */ (pa_0),
	.co /* OUT */ (co_0),
	.d /* IN */ (ip_0),
	.clk /* IN */ (clk),
	.ci /* IN */ (ci_0),
	.ld /* IN */ (nextphrase),
	.res /* IN */ (reset),
	.sys_clk(sys_clk) // Generated
);

// OBDATA.NET (295) - pad[1] : upcnts
upcnts pad_index_1_inst
(
	.q /* OUT */ (pad_1),
	.co /* OUT */ (co_1),
	.d /* IN */ (ip_1),
	.clk /* IN */ (clk),
	.ci /* IN */ (ci_1),
	.ld /* IN */ (nextphrase),
	.res /* IN */ (reset),
	.sys_clk(sys_clk) // Generated
);

// OBDATA.NET (296) - pad[2] : upcnts
upcnts pad_index_2_inst
(
	.q /* OUT */ (pad_2),
	.co /* OUT */ (co_2),
	.d /* IN */ (ip_2),
	.clk /* IN */ (clk),
	.ci /* IN */ (ci_2),
	.ld /* IN */ (nextphrase),
	.res /* IN */ (reset),
	.sys_clk(sys_clk) // Generated
);

// OBDATA.NET (297) - pad[3] : upcnts
upcnts pad_index_3_inst
(
	.q /* OUT */ (pad_3),
	.co /* OUT */ (co_3),
	.d /* IN */ (ip_3),
	.clk /* IN */ (clk),
	.ci /* IN */ (ci_3),
	.ld /* IN */ (nextphrase),
	.res /* IN */ (reset),
	.sys_clk(sys_clk) // Generated
);

// OBDATA.NET (298) - pad[4] : upcnts
upcnts pad_index_4_inst
(
	.q /* OUT */ (pad_4),
	.co /* OUT */ (co_4),
	.d /* IN */ (ip_4),
	.clk /* IN */ (clk),
	.ci /* IN */ (ci_4),
	.ld /* IN */ (nextphrase),
	.res /* IN */ (reset),
	.sys_clk(sys_clk) // Generated
);

// OBDATA.NET (299) - pad[5] : upcnts
upcnts pad_index_5_inst
(
	.q /* OUT */ (pad_5),
	.co /* OUT */ (co_5),
	.d /* IN */ (ip_5),
	.clk /* IN */ (clk),
	.ci /* IN */ (ci_5),
	.ld /* IN */ (nextphrase),
	.res /* IN */ (reset),
	.sys_clk(sys_clk) // Generated
);

// OBDATA.NET (300) - gnd : tie0
assign gnd = 1'b0;

// OBDATA.NET (301) - pai[1-5] : en
assign pai_1 = ~(pad_1 ^ hilo);
assign pai_2 = ~(pad_2 ^ hilo);
assign pai_3 = ~(pad_3 ^ hilo);
assign pai_4 = ~(pad_4 ^ hilo);
assign pai_5 = ~(pad_5 ^ hilo);

// OBDATA.NET (302) - pa[1-3] : ivm
assign pa_1 = ~pai_1;
assign pa_2 = ~pai_2;
assign pa_3 = ~pai_3;

// OBDATA.NET (303) - pa[4] : ivh
assign pa_4 = ~pai_4;

// OBDATA.NET (304) - pa[5] : ivu
assign pa_5 = ~pai_5;

// OBDATA.NET (306) - reset : iv
assign reset = ~resetl;

// OBDATA.NET (310) - ipd[0-5] : an2
assign ipd_0 = d_49 & obld_1;
assign ipd_1 = d_50 & obld_1;
assign ipd_2 = d_51 & obld_1;
assign ipd_3 = d_52 & obld_1;
assign ipd_4 = d_53 & obld_1;
assign ipd_5 = d_54 & obld_1;

// OBDATA.NET (311) - ip[0-5] : slatch
slatch ip_from_0_to_5_inst_0
(
	.q /* OUT */ (ip_0),
	.d /* IN */ (ipd_0),
	.clk /* IN */ (clk),
	.en /* IN */ (nip),
	.sys_clk(sys_clk) // Generated
);
slatch ip_from_0_to_5_inst_1
(
	.q /* OUT */ (ip_1),
	.d /* IN */ (ipd_1),
	.clk /* IN */ (clk),
	.en /* IN */ (nip),
	.sys_clk(sys_clk) // Generated
);
slatch ip_from_0_to_5_inst_2
(
	.q /* OUT */ (ip_2),
	.d /* IN */ (ipd_2),
	.clk /* IN */ (clk),
	.en /* IN */ (nip),
	.sys_clk(sys_clk) // Generated
);
slatch ip_from_0_to_5_inst_3
(
	.q /* OUT */ (ip_3),
	.d /* IN */ (ipd_3),
	.clk /* IN */ (clk),
	.en /* IN */ (nip),
	.sys_clk(sys_clk) // Generated
);
slatch ip_from_0_to_5_inst_4
(
	.q /* OUT */ (ip_4),
	.d /* IN */ (ipd_4),
	.clk /* IN */ (clk),
	.en /* IN */ (nip),
	.sys_clk(sys_clk) // Generated
);
slatch ip_from_0_to_5_inst_5
(
	.q /* OUT */ (ip_5),
	.d /* IN */ (ipd_5),
	.clk /* IN */ (clk),
	.en /* IN */ (nip),
	.sys_clk(sys_clk) // Generated
);

// OBDATA.NET (312) - nip : or2
assign nip = obld_1 | nextphrase;

// OBDATA.NET (314) - ci[0] : an2
assign ci_0 = scaled & nextbits;

// OBDATA.NET (316) - notscaled : ivm
assign notscaled = ~scaled;

// OBDATA.NET (317) - p2done : or2x3
assign p2done = pa_0 | notscaled;

// OBDATA.NET (319) - ci[1] : an3
assign ci_1 = mode1 & nextbits & p2done;

// OBDATA.NET (320) - cil[2] : nd3
assign cil_2 = ~(mode2 & nextbits & p2done);

// OBDATA.NET (321) - cil[3] : nd3
assign cil_3 = ~(mode4 & nextbits & p2done);

// OBDATA.NET (322) - cil[4] : nd3
assign cil_4 = ~(mode8 & nextbits & p2done);

// OBDATA.NET (323) - cil[5] : nd3
assign cil_5 = ~(modew & nextbits & p2done);

// OBDATA.NET (325) - ci[2-5] : nd2
assign ci_2 = ~(cil_2 & col_1);
assign ci_3 = ~(cil_3 & col_2);
assign ci_4 = ~(cil_4 & col_3);
assign ci_5 = ~(cil_5 & col_4);

// OBDATA.NET (327) - col[1-4] : iv
assign col_1 = ~co_1;
assign col_2 = ~co_2;
assign col_3 = ~co_3;
assign col_4 = ~co_4;

// OBDATA.NET (328) - modew : or2
assign modew = mode16 | mode24;

// OBDATA.NET (332) - vcc : tie1
assign vcc = 1'b1;

// OBDATA.NET (333) - phd[1] : nd8
assign phd_1 = ~(p2done & pad_1 & pad_2 & pad_3 & pad_4 & pad_5 & mode1 & vcc);

// OBDATA.NET (334) - phd[2] : nd6
assign phd_2 = ~(p2done & pad_2 & pad_3 & pad_4 & pad_5 & mode2);

// OBDATA.NET (335) - phd[3] : nd6
assign phd_3 = ~(p2done & pad_3 & pad_4 & pad_5 & mode4 & vcc);

// OBDATA.NET (336) - phd[4] : nd4
assign phd_4 = ~(p2done & pad_4 & pad_5 & mode8);

// OBDATA.NET (337) - phd[5] : nd3
assign phd_5 = ~(p2done & pad_5 & modew);

// OBDATA.NET (338) - phdone : nd6
assign phdone = ~(phd_1 & phd_2 & phd_3 & phd_4 & phd_5 & vcc);

// OBDATA.NET (339) - notphdone : iv
assign notphdone = ~phdone;

// OBDATA.NET (349) - nextx1 : fd1q
fd1q nextx1_inst
(
	.q /* OUT */ (nextx1),
	.d /* IN */ (nextx),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// OBDATA.NET (350) - nextxx : mx2
assign nextxx = (phys) ? nextx : nextx1;

// OBDATA.NET (352) - lbwad[0] : udcnt
udcnt lbwad_index_0_inst
(
	.q /* OUT */ (lbwad_0),
	.co /* OUT */ (lco_0),
	.d /* IN */ (d_0),
	.clk /* IN */ (clk),
	.ci /* IN */ (lci_0),
	.ld /* IN */ (xld),
	.up /* IN */ (up),
	.sys_clk(sys_clk) // Generated
);

// OBDATA.NET (353) - lbwad[1] : udcnt
udcnt lbwad_index_1_inst
(
	.q /* OUT */ (lbwad_1),
	.co /* OUT */ (lco_1),
	.d /* IN */ (d_1),
	.clk /* IN */ (clk),
	.ci /* IN */ (lci_1),
	.ld /* IN */ (xld),
	.up /* IN */ (up),
	.sys_clk(sys_clk) // Generated
);

// OBDATA.NET (354) - lbwad[2-11] : udcnt
udcnt lbwad_from_2_to_11_inst_0
(
	.q /* OUT */ (lbwad_2),
	.co /* OUT */ (lco_2),
	.d /* IN */ (d_2),
	.clk /* IN */ (clk),
	.ci /* IN */ (lco_1),
	.ld /* IN */ (xld),
	.up /* IN */ (up),
	.sys_clk(sys_clk) // Generated
);
udcnt lbwad_from_2_to_11_inst_1
(
	.q /* OUT */ (lbwad_3),
	.co /* OUT */ (lco_3),
	.d /* IN */ (d_3),
	.clk /* IN */ (clk),
	.ci /* IN */ (lco_2),
	.ld /* IN */ (xld),
	.up /* IN */ (up),
	.sys_clk(sys_clk) // Generated
);
udcnt lbwad_from_2_to_11_inst_2
(
	.q /* OUT */ (lbwad_4),
	.co /* OUT */ (lco_4),
	.d /* IN */ (d_4),
	.clk /* IN */ (clk),
	.ci /* IN */ (lco_3),
	.ld /* IN */ (xld),
	.up /* IN */ (up),
	.sys_clk(sys_clk) // Generated
);
udcnt lbwad_from_2_to_11_inst_3
(
	.q /* OUT */ (lbwad_5),
	.co /* OUT */ (lco_5),
	.d /* IN */ (d_5),
	.clk /* IN */ (clk),
	.ci /* IN */ (lco_4),
	.ld /* IN */ (xld),
	.up /* IN */ (up),
	.sys_clk(sys_clk) // Generated
);
udcnt lbwad_from_2_to_11_inst_4
(
	.q /* OUT */ (lbwad_6),
	.co /* OUT */ (lco_6),
	.d /* IN */ (d_6),
	.clk /* IN */ (clk),
	.ci /* IN */ (lco_5),
	.ld /* IN */ (xld),
	.up /* IN */ (up),
	.sys_clk(sys_clk) // Generated
);
udcnt lbwad_from_2_to_11_inst_5
(
	.q /* OUT */ (lbwad_7),
	.co /* OUT */ (lco_7),
	.d /* IN */ (d_7),
	.clk /* IN */ (clk),
	.ci /* IN */ (lco_6),
	.ld /* IN */ (xld),
	.up /* IN */ (up),
	.sys_clk(sys_clk) // Generated
);
udcnt lbwad_from_2_to_11_inst_6
(
	.q /* OUT */ (lbwad_8),
	.co /* OUT */ (lco_8),
	.d /* IN */ (d_8),
	.clk /* IN */ (clk),
	.ci /* IN */ (lco_7),
	.ld /* IN */ (xld),
	.up /* IN */ (up),
	.sys_clk(sys_clk) // Generated
);
udcnt lbwad_from_2_to_11_inst_7
(
	.q /* OUT */ (lbwad_9),
	.co /* OUT */ (lco_9),
	.d /* IN */ (d_9),
	.clk /* IN */ (clk),
	.ci /* IN */ (lco_8),
	.ld /* IN */ (xld),
	.up /* IN */ (up),
	.sys_clk(sys_clk) // Generated
);
udcnt lbwad_from_2_to_11_inst_8
(
	.q /* OUT */ (lbwad_10),
	.co /* OUT */ (lco_10),
	.d /* IN */ (d_10),
	.clk /* IN */ (clk),
	.ci /* IN */ (lco_9),
	.ld /* IN */ (xld),
	.up /* IN */ (up),
	.sys_clk(sys_clk) // Generated
);
udcnt lbwad_from_2_to_11_inst_9
(
	.q /* OUT */ (lbwad_11),
	.co /* OUT */ (lco_11),
	.d /* IN */ (d_11),
	.clk /* IN */ (clk),
	.ci /* IN */ (lco_10),
	.ld /* IN */ (xld),
	.up /* IN */ (up),
	.sys_clk(sys_clk) // Generated
);

// OBDATA.NET (356) - lbwadd[0-9] : mx2
assign lbwadd_0 = (lbt) ? at_1 : lbwad_0;
assign lbwadd_1 = (lbt) ? at_2 : lbwad_1;
assign lbwadd_2 = (lbt) ? at_3 : lbwad_2;
assign lbwadd_3 = (lbt) ? at_4 : lbwad_3;
assign lbwadd_4 = (lbt) ? at_5 : lbwad_4;
assign lbwadd_5 = (lbt) ? at_6 : lbwad_5;
assign lbwadd_6 = (lbt) ? at_7 : lbwad_6;
assign lbwadd_7 = (lbt) ? at_8 : lbwad_7;
assign lbwadd_8 = (lbt) ? at_9 : lbwad_8;
assign lbwadd_9 = (lbt) ? at_10 : lbwad_9;

// OBDATA.NET (357) - lbwa[0-9] : fd1q
fd1q lbwa_from_0_to_9_inst_0
(
	.q /* OUT */ (lbwa_0),
	.d /* IN */ (lbwadd_0),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q lbwa_from_0_to_9_inst_1
(
	.q /* OUT */ (lbwa_1),
	.d /* IN */ (lbwadd_1),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q lbwa_from_0_to_9_inst_2
(
	.q /* OUT */ (lbwa_2),
	.d /* IN */ (lbwadd_2),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q lbwa_from_0_to_9_inst_3
(
	.q /* OUT */ (lbwa_3),
	.d /* IN */ (lbwadd_3),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q lbwa_from_0_to_9_inst_4
(
	.q /* OUT */ (lbwa_4),
	.d /* IN */ (lbwadd_4),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q lbwa_from_0_to_9_inst_5
(
	.q /* OUT */ (lbwa_5),
	.d /* IN */ (lbwadd_5),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q lbwa_from_0_to_9_inst_6
(
	.q /* OUT */ (lbwa_6),
	.d /* IN */ (lbwadd_6),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q lbwa_from_0_to_9_inst_7
(
	.q /* OUT */ (lbwa_7),
	.d /* IN */ (lbwadd_7),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q lbwa_from_0_to_9_inst_8
(
	.q /* OUT */ (lbwa_8),
	.d /* IN */ (lbwadd_8),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q lbwa_from_0_to_9_inst_9
(
	.q /* OUT */ (lbwa_9),
	.d /* IN */ (lbwadd_9),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// OBDATA.NET (359) - up : ivh
assign up = ~reflected;

// OBDATA.NET (360) - lci[0] : an2
assign lci_0 = nextxx & scaled;

// OBDATA.NET (362) - lcil[1] : nd2
assign lcil_1 = ~(nextxx & notscaled);

// OBDATA.NET (363) - lci[1] : nd2
assign lci_1 = ~(lcil_1 & lcol_0);

// OBDATA.NET (364) - lcol[0] : iv
assign lcol_0 = ~lco_0;

// OBDATA.NET (408) - nota[4] : iv
assign nota_4 = ~lbwad_4;

// OBDATA.NET (409) - nota[5] : iv
assign nota_5 = ~lbwad_5;

// OBDATA.NET (410) - nota[8] : iv
assign nota_8 = ~lbwad_8;

// OBDATA.NET (411) - nota[10] : iv
assign nota_10 = ~lbwad_10;

// OBDATA.NET (412) - nota[11] : iv
assign nota_11 = ~lbwad_11;

// OBDATA.NET (414) - c[5] : nd2
assign c_5 = ~(nota_4 & nota_5);

// OBDATA.NET (415) - c[7] : nd3
assign c_7 = ~(c_5 & lbwad_6 & lbwad_7);

// OBDATA.NET (416) - c[8] : nd2
assign c_8 = ~(c_7 & nota_8);

// OBDATA.NET (417) - c[9] : nd2
assign c_9 = ~(c_8 & lbwad_9);

// OBDATA.NET (418) - c[11] : nd3
assign c_11 = ~(c_9 & nota_10 & nota_11);

// OBDATA.NET (420) - left : niv
assign left = lbwad_11;

// OBDATA.NET (421) - right : an2
assign right = c_11 & nota_11;

// OBDATA.NET (423) - onscreen : nr2
assign onscreen = ~(left | right);

// OBDATA.NET (424) - offscreeni : mx2
assign offscreeni = (reflected) ? left : right;

// OBDATA.NET (425) - offscreen : nivm
assign offscreen_obuf = offscreeni;

// OBDATA.NET (426) - notoffscreen : ivm
assign notoffscreen = ~offscreen_obuf;

// OBDATA.NET (435) - zero1a : iv
assign zero1a = ~d7_0;

// OBDATA.NET (436) - zero2a : nr2
assign zero2a = ~(d6_0 | d6_1);

// OBDATA.NET (437) - zero4a : nr4
assign zero4a = ~(d5_0 | d5_1 | d5_2 | d5_3);

// OBDATA.NET (438) - zero8a : nr8
assign zero8a = ~(d4_0 | d4_1 | d4_2 | d4_3 | d4_4 | d4_5 | d4_6 | d4_7);

// OBDATA.NET (439) - zero16a0 : nr8
assign zero16a0 = ~(d3_0 | d3_1 | d3_2 | d3_3 | d3_4 | d3_5 | d3_6 | d3_7);

// OBDATA.NET (440) - zero16a1 : nr8
assign zero16a1 = ~(d3_8 | d3_9 | d3_10 | d3_11 | d3_12 | d3_13 | d3_14 | d3_15);

// OBDATA.NET (442) - trans1a : nd2
assign trans1a = ~(mode1 & zero1a);

// OBDATA.NET (443) - trans2a : nd2
assign trans2a = ~(mode2 & zero2a);

// OBDATA.NET (444) - trans4a : nd2
assign trans4a = ~(mode4 & zero4a);

// OBDATA.NET (445) - trans8a : nd2
assign trans8a = ~(mode8 & zero8a);

// OBDATA.NET (446) - trans16a : nd3
assign trans16a = ~(mode16 & zero16a0 & zero16a1);

// OBDATA.NET (447) - transa : nd6
assign transa = ~(trans1a & trans2a & trans4a & trans8a & trans16a & vcc);

// OBDATA.NET (449) - nottransa : nd2
assign nottransa = ~(transa & transen);

// OBDATA.NET (451) - zero1b : iv
assign zero1b = ~d7_1;

// OBDATA.NET (452) - zero2b : nr2
assign zero2b = ~(d6_2 | d6_3);

// OBDATA.NET (453) - zero4b : nr4
assign zero4b = ~(d5_4 | d5_5 | d5_6 | d5_7);

// OBDATA.NET (454) - zero8b : nr8
assign zero8b = ~(d4_8 | d4_9 | d4_10 | d4_11 | d4_12 | d4_13 | d4_14 | d4_15);

// OBDATA.NET (455) - zero16b0 : nr8
assign zero16b0 = ~(d3_16 | d3_17 | d3_18 | d3_19 | d3_20 | d3_21 | d3_22 | d3_23);

// OBDATA.NET (456) - zero16b1 : nr8
assign zero16b1 = ~(d3_24 | d3_25 | d3_26 | d3_27 | d3_28 | d3_29 | d3_30 | d3_31);

// OBDATA.NET (458) - trans1b : nd2
assign trans1b = ~(mode1 & zero1b);

// OBDATA.NET (459) - trans2b : nd2
assign trans2b = ~(mode2 & zero2b);

// OBDATA.NET (460) - trans4b : nd2
assign trans4b = ~(mode4 & zero4b);

// OBDATA.NET (461) - trans8b : nd2
assign trans8b = ~(mode8 & zero8b);

// OBDATA.NET (462) - trans16b : nd3
assign trans16b = ~(mode16 & zero16b0 & zero16b1);

// OBDATA.NET (463) - transb : nd6
assign transb = ~(trans1b & trans2b & trans4b & trans8b & trans16b & vcc);

// OBDATA.NET (465) - nottransb : nd2
assign nottransb = ~(transb & transen);

// OBDATA.NET (515) - idle : fd4q
fd4q idle_inst
(
	.q /* OUT */ (smq0),
	.d /* IN */ (smd0),
	.cp /* IN */ (clk),
	.sd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// OBDATA.NET (516) - read : fd2q
fd2q read_inst
(
	.q /* OUT */ (smq1),
	.d /* IN */ (smd1),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// OBDATA.NET (517) - write : fd2q
fd2q write_inst
(
	.q /* OUT */ (smq2i),
	.d /* IN */ (smd2),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// OBDATA.NET (518) - smq2 : nivm
assign smq2 = smq2i;

// OBDATA.NET (520) - d00 : nd2
assign d00 = ~(smq0 & notfull);

// OBDATA.NET (521) - d01 : nd6
assign d01 = ~(smq2 & scaled & notremgte2 & phdone & notfull & vcc);

// OBDATA.NET (522) - d02 : nd4
assign d02 = ~(smq2 & notscaled & phdone & notfull);

// OBDATA.NET (523) - d0 : nd4
assign smd0 = ~(d00 & d01 & d02 & notoffscreen);

// OBDATA.NET (525) - d10 : nd4
assign d10 = ~(smq0 & full & rmw & notoffscreen);

// OBDATA.NET (526) - d11 : nd4
assign d11 = ~(smq2 & full & rmw & notoffscreen);

// OBDATA.NET (527) - d12 : nd4
assign d12 = ~(smq2 & notphdone & rmw & notoffscreen);

// OBDATA.NET (528) - d13 : nd6
assign d13 = ~(smq2 & scaled & remgte2 & rmw & notoffscreen & vcc);

// OBDATA.NET (529) - d1 : nd4
assign smd1 = ~(d10 & d11 & d12 & d13);

// OBDATA.NET (531) - d20 : nd4
assign d20 = ~(smq0 & full & notrmw & notoffscreen);

// OBDATA.NET (532) - d21 : nd4
assign d21 = ~(smq2 & full & notrmw & notoffscreen);

// OBDATA.NET (533) - d22 : nd4
assign d22 = ~(smq2 & notphdone & notrmw & notoffscreen);

// OBDATA.NET (534) - d23 : nd2
assign d23 = ~(smq1 & notoffscreen);

// OBDATA.NET (535) - d24 : nd6
assign d24 = ~(smq2 & scaled & remgte2 & notrmw & notoffscreen & vcc);

// OBDATA.NET (536) - d2 : nd6
assign smd2 = ~(d20 & d21 & d22 & d23 & d24 & vcc);

// OBDATA.NET (538) - np0 : nd2
assign np0 = ~(smq0 & full);

// OBDATA.NET (539) - np1 : nd6
assign np1 = ~(smq2 & scaled & notremgte2 & phdone & full & vcc);

// OBDATA.NET (540) - np2 : nd4
assign np2 = ~(smq2 & notscaled & phdone & full);

// OBDATA.NET (541) - nextphrasei : nd3
assign nextphrasei = ~(np0 & np1 & np2);

// OBDATA.NET (542) - nextphrase : nivu2
assign nextphrase = nextphrasei;

// OBDATA.NET (544) - nx0 : nd3
assign nx0 = ~(smq2 & scaled & remgte1);

// OBDATA.NET (545) - nx1 : nd2
assign nx1 = ~(smq2 & notscaled);

// OBDATA.NET (546) - nextx : nd2x2
assign nextx = ~(nx0 & nx1);

// OBDATA.NET (548) - nb0 : nd3
assign nb0 = ~(smq2 & scaled & notremgte2);

// OBDATA.NET (549) - nb1 : nd2
assign nb1 = ~(smq2 & notscaled);

// OBDATA.NET (550) - nextbitsi : nd2
assign nextbitsi = ~(nb0 & nb1);

// OBDATA.NET (551) - nextbits : nivh
assign nextbits = nextbitsi;

// OBDATA.NET (553) - lbwrite : niv
assign lbwrite = smq2;

// OBDATA.NET (554) - obdone : iv
assign obdone = ~d00;

// OBDATA.NET (556) - notrmw : iv
assign notrmw = ~rmw;

// OBDATA.NET (576) - nntransa : mx2
assign nntransa = (hilob) ? nottransb : nottransa;

// OBDATA.NET (577) - nntransb : mx2
assign nntransb = (hilob) ? nottransa : nottransb;

// OBDATA.NET (578) - lbwea1 : an2
assign lbwea1 = lbwrite & nntransa;

// OBDATA.NET (579) - lbweb1 : an2
assign lbweb1 = lbwrite & nntransb;

// OBDATA.NET (581) - lbwea2 : fd1q
fd1q lbwea2_inst
(
	.q /* OUT */ (lbwea2),
	.d /* IN */ (lbwea1),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// OBDATA.NET (582) - lbweb2 : fd1q
fd1q lbweb2_inst
(
	.q /* OUT */ (lbweb2),
	.d /* IN */ (lbweb1),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// OBDATA.NET (584) - lbwea4 : mx2
assign lbwea4 = (phys) ? lbwea1 : lbwea2;

// OBDATA.NET (585) - lbweb4 : mx2
assign lbweb4 = (phys) ? lbweb1 : lbweb2;

// OBDATA.NET (590) - lbweb51 : fd1q
fd1q lbweb51_inst
(
	.q /* OUT */ (lbweb51),
	.d /* IN */ (lbweb4),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// OBDATA.NET (591) - lbweb52 : fd1q
fd1q lbweb52_inst
(
	.q /* OUT */ (lbweb52),
	.d /* IN */ (lbweb51),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// OBDATA.NET (592) - lbweb5 : mx2
assign lbweb5 = (rmw1_obuf) ? lbweb52 : lbweb51;

// OBDATA.NET (594) - lbweb6 : mx2
assign lbweb6 = (delayed) ? lbweb5 : lbweb4;

// OBDATA.NET (596) - lbwea7 : mx2
assign lbwea7 = (pswapd) ? lbweb6 : lbwea4;

// OBDATA.NET (597) - lbweb7 : mx2
assign lbweb7 = (pswapd) ? lbwea4 : lbweb6;

// OBDATA.NET (599) - lbwea80 : nd3
assign lbwea80 = ~(lbwea7 & notscaled & onscreen);

// OBDATA.NET (600) - lbwea81 : nd6
assign lbwea81 = ~(lbwea7 & scaled & onscreen & notlbwad_0 & nextxx & vcc);

// OBDATA.NET (601) - lbwea8 : nd2
assign lbwea8 = ~(lbwea80 & lbwea81);

// OBDATA.NET (603) - lbweb80 : nd3
assign lbweb80 = ~(lbweb7 & notscaled & onscreen);

// OBDATA.NET (604) - lbweb81 : nd6
assign lbweb81 = ~(lbweb7 & scaled & onscreen & lbwad_0 & nextxx & vcc);

// OBDATA.NET (605) - lbweb8 : nd2
assign lbweb8 = ~(lbweb80 & lbweb81);

// OBDATA.NET (607) - lbwe[0] : fd1q
fd1q lbwe_index_0_inst
(
	.q /* OUT */ (lbwe_0),
	.d /* IN */ (lbwea8),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// OBDATA.NET (608) - lbwe[1] : fd1q
fd1q lbwe_index_1_inst
(
	.q /* OUT */ (lbwe_1),
	.d /* IN */ (lbweb8),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// OBDATA.NET (610) - notlbwad[0] : iv
assign notlbwad_0 = ~lbwad_0;

// OBDATA.NET (617) - lbw1 : fd1q
fd1q lbw1_inst
(
	.q /* OUT */ (lbw1),
	.d /* IN */ (lbwrite),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// OBDATA.NET (618) - lbw2 : fd1q
fd1q lbw2_inst
(
	.q /* OUT */ (lbw2),
	.d /* IN */ (lbw1),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// OBDATA.NET (619) - lbw3 : fd1q
fd1q lbw3_inst
(
	.q /* OUT */ (lbw3),
	.d /* IN */ (lbw2),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// OBDATA.NET (620) - lbend : or6
assign lbend = smd2 | lbwrite | lbw1 | lbw2 | lbw3 | gnd;

// OBDATA.NET (621) - lbeni : fd2q
fd2q lbeni_inst
(
	.q /* OUT */ (lbeni),
	.d /* IN */ (lbend),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// OBDATA.NET (622) - lben : nivh
assign lben = lbeni;

// OBDATA.NET (634) - pa1[0] : fd1q
fd1q pa1_index_0_inst
(
	.q /* OUT */ (pa1_0),
	.d /* IN */ (pa_0),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// OBDATA.NET (635) - pa2[0] : mx2
assign pa2_0 = (phys) ? pa_0 : pa1_0;

// OBDATA.NET (636) - oddeven : eo
assign oddeven = lbwad_0 ^ pa2_0;

// OBDATA.NET (637) - pswapd : mx2
assign pswapd = (scaled) ? oddeven : lbwad_0;

// OBDATA.NET (638) - pswapi : fd1q
fd1q pswapi_inst
(
	.q /* OUT */ (pswapi),
	.d /* IN */ (pswapd),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// OBDATA.NET (639) - pswap : nivu
assign pswap = pswapi;

// OBDATA.NET (646) - xrem[0-8] : fd1q
fd1q xrem_from_0_to_8_inst_0
(
	.q /* OUT */ (xrem_0),
	.d /* IN */ (xrd_0),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q xrem_from_0_to_8_inst_1
(
	.q /* OUT */ (xrem_1),
	.d /* IN */ (xrd_1),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q xrem_from_0_to_8_inst_2
(
	.q /* OUT */ (xrem_2),
	.d /* IN */ (xrd_2),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q xrem_from_0_to_8_inst_3
(
	.q /* OUT */ (xrem_3),
	.d /* IN */ (xrd_3),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q xrem_from_0_to_8_inst_4
(
	.q /* OUT */ (xrem_4),
	.d /* IN */ (xrd_4),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q xrem_from_0_to_8_inst_5
(
	.q /* OUT */ (xrem_5),
	.d /* IN */ (xrd_5),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q xrem_from_0_to_8_inst_6
(
	.q /* OUT */ (xrem_6),
	.d /* IN */ (xrd_6),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q xrem_from_0_to_8_inst_7
(
	.q /* OUT */ (xrem_7),
	.d /* IN */ (xrd_7),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
fd1q xrem_from_0_to_8_inst_8
(
	.q /* OUT */ (xrem_8),
	.d /* IN */ (xrd_8),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// OBDATA.NET (648) - sum[0] : ha1
ha1 sum_index_0_inst
(
	.s /* OUT */ (sum_0),
	.co /* OUT */ (sc_0),
	.a /* IN */ (xrem_0),
	.b /* IN */ (xscale_0)
);

// OBDATA.NET (649) - sum[1-6] : fa1
fa1 sum_from_1_to_6_inst_0
(
	.s /* OUT */ (sum_1),
	.co /* OUT */ (sc_1),
	.ci /* IN */ (xrem_1),
	.a /* IN */ (xscale_1),
	.b /* IN */ (sc_0)
);
fa1 sum_from_1_to_6_inst_1
(
	.s /* OUT */ (sum_2),
	.co /* OUT */ (sc_2),
	.ci /* IN */ (xrem_2),
	.a /* IN */ (xscale_2),
	.b /* IN */ (sc_1)
);
fa1 sum_from_1_to_6_inst_2
(
	.s /* OUT */ (sum_3),
	.co /* OUT */ (sc_3),
	.ci /* IN */ (xrem_3),
	.a /* IN */ (xscale_3),
	.b /* IN */ (sc_2)
);
fa1 sum_from_1_to_6_inst_3
(
	.s /* OUT */ (sum_4),
	.co /* OUT */ (sc_4),
	.ci /* IN */ (xrem_4),
	.a /* IN */ (xscale_4),
	.b /* IN */ (sc_3)
);
fa1 sum_from_1_to_6_inst_4
(
	.s /* OUT */ (sum_5),
	.co /* OUT */ (sc_5),
	.ci /* IN */ (xrem_5),
	.a /* IN */ (xscale_5),
	.b /* IN */ (sc_4)
);
fa1 sum_from_1_to_6_inst_5
(
	.s /* OUT */ (sum_6),
	.co /* OUT */ (sc_6),
	.ci /* IN */ (xrem_6),
	.a /* IN */ (xscale_6),
	.b /* IN */ (sc_5)
);

// OBDATA.NET (650) - sum[7] : fa1
fa1 sum_index_7_inst
(
	.s /* OUT */ (sum_7),
	.co /* OUT */ (sum_8),
	.ci /* IN */ (xrem_7),
	.a /* IN */ (xscale_7),
	.b /* IN */ (sc_6)
);

// OBDATA.NET (652) - xs[0-8] : mx2
assign xs_0 = (nextbits) ? sum_0 : xrem_0;
assign xs_1 = (nextbits) ? sum_1 : xrem_1;
assign xs_2 = (nextbits) ? sum_2 : xrem_2;
assign xs_3 = (nextbits) ? sum_3 : xrem_3;
assign xs_4 = (nextbits) ? sum_4 : xrem_4;
assign xs_5 = (nextbits) ? sum_5 : xrem_5;
assign xs_6 = (nextbits) ? sum_6 : xrem_6;
assign xs_7 = (nextbits) ? sum_7 : xrem_7;
assign xs_8 = (nextbits) ? sum_8 : xrem_8;

// OBDATA.NET (654) - diff[5] : ha1
ha1 diff_index_5_inst
(
	.s /* OUT */ (diff_5),
	.co /* OUT */ (dc_5),
	.a /* IN */ (xs_5),
	.b /* IN */ (nextx)
);

// OBDATA.NET (655) - diff[6-8] : fa1
fa1 diff_from_6_to_8_inst_0
(
	.s /* OUT */ (diff_6),
	.co /* OUT */ (dc_6),
	.ci /* IN */ (xs_6),
	.a /* IN */ (nextx),
	.b /* IN */ (dc_5)
);
fa1 diff_from_6_to_8_inst_1
(
	.s /* OUT */ (diff_7),
	.co /* OUT */ (dc_7),
	.ci /* IN */ (xs_7),
	.a /* IN */ (nextx),
	.b /* IN */ (dc_6)
);
fa1 diff_from_6_to_8_inst_2
(
	.s /* OUT */ (diff_8),
	.co /* OUT */ (dc_8),
	.ci /* IN */ (xs_8),
	.a /* IN */ (nextx),
	.b /* IN */ (dc_7)
);

// OBDATA.NET (659) - xrd[0-4] : mx2
assign xrd_0 = (obld_2) ? d_0 : xs_0;
assign xrd_1 = (obld_2) ? d_1 : xs_1;
assign xrd_2 = (obld_2) ? d_2 : xs_2;
assign xrd_3 = (obld_2) ? d_3 : xs_3;
assign xrd_4 = (obld_2) ? d_4 : xs_4;

// OBDATA.NET (660) - xrd[5-7] : mx2
assign xrd_5 = (obld_2) ? d_5 : diff_5;
assign xrd_6 = (obld_2) ? d_6 : diff_6;
assign xrd_7 = (obld_2) ? d_7 : diff_7;

// OBDATA.NET (661) - xrd[8] : mx2
assign xrd_8 = (obld_2) ? gnd : diff_8;

// OBDATA.NET (663) - notremgte2i : nr3
assign notremgte2i = ~(xrem_6 | xrem_7 | xrem_8);

// OBDATA.NET (664) - notremgte2 : niv
assign notremgte2 = notremgte2i;

// OBDATA.NET (665) - remgte2 : iv
assign remgte2 = ~notremgte2;

// OBDATA.NET (666) - remgte1 : or4
assign remgte1 = xrem_5 | xrem_6 | xrem_7 | xrem_8;

// OBDATA.NET (668) - co[0] : dummy

// OBDATA.NET (669) - co[5] : dummy

// OBDATA.NET (670) - lco[11] : dummy

// OBDATA.NET (671) - dc[7] : dummy

// --- Compiler-generated local PE for BUS pda<0>
assign pda_out[0] = (ts_local_pe_368_a0_oe & ts_local_pe_368_a0_out ) | (ts_local_pe_368_a1_oe & ts_local_pe_368_a1_out ) | 1'b0;
assign pda_oe[0] = ts_local_pe_368_a0_oe | ts_local_pe_368_a1_oe;
assign ts_local_pe_368_a0_in = pda_in[0];
assign ts_local_pe_368_a1_in = pda_in[0];

// --- Compiler-generated local PE for BUS pda<1>
assign pda_out[1] = (ts_local_pe_369_a0_oe & ts_local_pe_369_a0_out ) | (ts_local_pe_369_a1_oe & ts_local_pe_369_a1_out ) | 1'b0;
assign pda_oe[1] = ts_local_pe_369_a0_oe | ts_local_pe_369_a1_oe;
assign ts_local_pe_369_a0_in = pda_in[1];
assign ts_local_pe_369_a1_in = pda_in[1];

// --- Compiler-generated local PE for BUS pda<2>
assign pda_out[2] = (ts_local_pe_370_a0_oe & ts_local_pe_370_a0_out ) | (ts_local_pe_370_a1_oe & ts_local_pe_370_a1_out ) | 1'b0;
assign pda_oe[2] = ts_local_pe_370_a0_oe | ts_local_pe_370_a1_oe;
assign ts_local_pe_370_a0_in = pda_in[2];
assign ts_local_pe_370_a1_in = pda_in[2];

// --- Compiler-generated local PE for BUS pda<3>
assign pda_out[3] = (ts_local_pe_371_a0_oe & ts_local_pe_371_a0_out ) | (ts_local_pe_371_a1_oe & ts_local_pe_371_a1_out ) | 1'b0;
assign pda_oe[3] = ts_local_pe_371_a0_oe | ts_local_pe_371_a1_oe;
assign ts_local_pe_371_a0_in = pda_in[3];
assign ts_local_pe_371_a1_in = pda_in[3];

// --- Compiler-generated local PE for BUS pda<4>
assign pda_out[4] = (ts_local_pe_372_a0_oe & ts_local_pe_372_a0_out ) | (ts_local_pe_372_a1_oe & ts_local_pe_372_a1_out ) | 1'b0;
assign pda_oe[4] = ts_local_pe_372_a0_oe | ts_local_pe_372_a1_oe;
assign ts_local_pe_372_a0_in = pda_in[4];
assign ts_local_pe_372_a1_in = pda_in[4];

// --- Compiler-generated local PE for BUS pda<5>
assign pda_out[5] = (ts_local_pe_373_a0_oe & ts_local_pe_373_a0_out ) | (ts_local_pe_373_a1_oe & ts_local_pe_373_a1_out ) | 1'b0;
assign pda_oe[5] = ts_local_pe_373_a0_oe | ts_local_pe_373_a1_oe;
assign ts_local_pe_373_a0_in = pda_in[5];
assign ts_local_pe_373_a1_in = pda_in[5];

// --- Compiler-generated local PE for BUS pda<6>
assign pda_out[6] = (ts_local_pe_374_a0_oe & ts_local_pe_374_a0_out ) | (ts_local_pe_374_a1_oe & ts_local_pe_374_a1_out ) | 1'b0;
assign pda_oe[6] = ts_local_pe_374_a0_oe | ts_local_pe_374_a1_oe;
assign ts_local_pe_374_a0_in = pda_in[6];
assign ts_local_pe_374_a1_in = pda_in[6];

// --- Compiler-generated local PE for BUS pda<7>
assign pda_out[7] = (ts_local_pe_375_a0_oe & ts_local_pe_375_a0_out ) | (ts_local_pe_375_a1_oe & ts_local_pe_375_a1_out ) | 1'b0;
assign pda_oe[7] = ts_local_pe_375_a0_oe | ts_local_pe_375_a1_oe;
assign ts_local_pe_375_a0_in = pda_in[7];
assign ts_local_pe_375_a1_in = pda_in[7];

// --- Compiler-generated local PE for BUS pda<8>
assign pda_out[8] = (ts_local_pe_376_a0_oe & ts_local_pe_376_a0_out ) | (ts_local_pe_376_a1_oe & ts_local_pe_376_a1_out ) | 1'b0;
assign pda_oe[8] = ts_local_pe_376_a0_oe | ts_local_pe_376_a1_oe;
assign ts_local_pe_376_a0_in = pda_in[8];
assign ts_local_pe_376_a1_in = pda_in[8];

// --- Compiler-generated local PE for BUS pda<9>
assign pda_out[9] = (ts_local_pe_377_a0_oe & ts_local_pe_377_a0_out ) | (ts_local_pe_377_a1_oe & ts_local_pe_377_a1_out ) | 1'b0;
assign pda_oe[9] = ts_local_pe_377_a0_oe | ts_local_pe_377_a1_oe;
assign ts_local_pe_377_a0_in = pda_in[9];
assign ts_local_pe_377_a1_in = pda_in[9];

// --- Compiler-generated local PE for BUS pda<10>
assign pda_out[10] = (ts_local_pe_378_a0_oe & ts_local_pe_378_a0_out ) | (ts_local_pe_378_a1_oe & ts_local_pe_378_a1_out ) | 1'b0;
assign pda_oe[10] = ts_local_pe_378_a0_oe | ts_local_pe_378_a1_oe;
assign ts_local_pe_378_a0_in = pda_in[10];
assign ts_local_pe_378_a1_in = pda_in[10];

// --- Compiler-generated local PE for BUS pda<11>
assign pda_out[11] = (ts_local_pe_379_a0_oe & ts_local_pe_379_a0_out ) | (ts_local_pe_379_a1_oe & ts_local_pe_379_a1_out ) | 1'b0;
assign pda_oe[11] = ts_local_pe_379_a0_oe | ts_local_pe_379_a1_oe;
assign ts_local_pe_379_a0_in = pda_in[11];
assign ts_local_pe_379_a1_in = pda_in[11];

// --- Compiler-generated local PE for BUS pda<12>
assign pda_out[12] = (ts_local_pe_380_a0_oe & ts_local_pe_380_a0_out ) | (ts_local_pe_380_a1_oe & ts_local_pe_380_a1_out ) | 1'b0;
assign pda_oe[12] = ts_local_pe_380_a0_oe | ts_local_pe_380_a1_oe;
assign ts_local_pe_380_a0_in = pda_in[12];
assign ts_local_pe_380_a1_in = pda_in[12];

// --- Compiler-generated local PE for BUS pda<13>
assign pda_out[13] = (ts_local_pe_381_a0_oe & ts_local_pe_381_a0_out ) | (ts_local_pe_381_a1_oe & ts_local_pe_381_a1_out ) | 1'b0;
assign pda_oe[13] = ts_local_pe_381_a0_oe | ts_local_pe_381_a1_oe;
assign ts_local_pe_381_a0_in = pda_in[13];
assign ts_local_pe_381_a1_in = pda_in[13];

// --- Compiler-generated local PE for BUS pda<14>
assign pda_out[14] = (ts_local_pe_382_a0_oe & ts_local_pe_382_a0_out ) | (ts_local_pe_382_a1_oe & ts_local_pe_382_a1_out ) | 1'b0;
assign pda_oe[14] = ts_local_pe_382_a0_oe | ts_local_pe_382_a1_oe;
assign ts_local_pe_382_a0_in = pda_in[14];
assign ts_local_pe_382_a1_in = pda_in[14];

// --- Compiler-generated local PE for BUS pda<15>
assign pda_out[15] = (ts_local_pe_383_a0_oe & ts_local_pe_383_a0_out ) | (ts_local_pe_383_a1_oe & ts_local_pe_383_a1_out ) | 1'b0;
assign pda_oe[15] = ts_local_pe_383_a0_oe | ts_local_pe_383_a1_oe;
assign ts_local_pe_383_a0_in = pda_in[15];
assign ts_local_pe_383_a1_in = pda_in[15];

// --- Compiler-generated local PE for BUS pdb<0>
assign pdb_out[0] = (ts_local_pe_384_a0_oe & ts_local_pe_384_a0_out ) | (ts_local_pe_384_a1_oe & ts_local_pe_384_a1_out ) | 1'b0;
assign pdb_oe[0] = ts_local_pe_384_a0_oe | ts_local_pe_384_a1_oe;
assign ts_local_pe_384_a0_in = pdb_in[0];
assign ts_local_pe_384_a1_in = pdb_in[0];

// --- Compiler-generated local PE for BUS pdb<1>
assign pdb_out[1] = (ts_local_pe_385_a0_oe & ts_local_pe_385_a0_out ) | (ts_local_pe_385_a1_oe & ts_local_pe_385_a1_out ) | 1'b0;
assign pdb_oe[1] = ts_local_pe_385_a0_oe | ts_local_pe_385_a1_oe;
assign ts_local_pe_385_a0_in = pdb_in[1];
assign ts_local_pe_385_a1_in = pdb_in[1];

// --- Compiler-generated local PE for BUS pdb<2>
assign pdb_out[2] = (ts_local_pe_386_a0_oe & ts_local_pe_386_a0_out ) | (ts_local_pe_386_a1_oe & ts_local_pe_386_a1_out ) | 1'b0;
assign pdb_oe[2] = ts_local_pe_386_a0_oe | ts_local_pe_386_a1_oe;
assign ts_local_pe_386_a0_in = pdb_in[2];
assign ts_local_pe_386_a1_in = pdb_in[2];

// --- Compiler-generated local PE for BUS pdb<3>
assign pdb_out[3] = (ts_local_pe_387_a0_oe & ts_local_pe_387_a0_out ) | (ts_local_pe_387_a1_oe & ts_local_pe_387_a1_out ) | 1'b0;
assign pdb_oe[3] = ts_local_pe_387_a0_oe | ts_local_pe_387_a1_oe;
assign ts_local_pe_387_a0_in = pdb_in[3];
assign ts_local_pe_387_a1_in = pdb_in[3];

// --- Compiler-generated local PE for BUS pdb<4>
assign pdb_out[4] = (ts_local_pe_388_a0_oe & ts_local_pe_388_a0_out ) | (ts_local_pe_388_a1_oe & ts_local_pe_388_a1_out ) | 1'b0;
assign pdb_oe[4] = ts_local_pe_388_a0_oe | ts_local_pe_388_a1_oe;
assign ts_local_pe_388_a0_in = pdb_in[4];
assign ts_local_pe_388_a1_in = pdb_in[4];

// --- Compiler-generated local PE for BUS pdb<5>
assign pdb_out[5] = (ts_local_pe_389_a0_oe & ts_local_pe_389_a0_out ) | (ts_local_pe_389_a1_oe & ts_local_pe_389_a1_out ) | 1'b0;
assign pdb_oe[5] = ts_local_pe_389_a0_oe | ts_local_pe_389_a1_oe;
assign ts_local_pe_389_a0_in = pdb_in[5];
assign ts_local_pe_389_a1_in = pdb_in[5];

// --- Compiler-generated local PE for BUS pdb<6>
assign pdb_out[6] = (ts_local_pe_390_a0_oe & ts_local_pe_390_a0_out ) | (ts_local_pe_390_a1_oe & ts_local_pe_390_a1_out ) | 1'b0;
assign pdb_oe[6] = ts_local_pe_390_a0_oe | ts_local_pe_390_a1_oe;
assign ts_local_pe_390_a0_in = pdb_in[6];
assign ts_local_pe_390_a1_in = pdb_in[6];

// --- Compiler-generated local PE for BUS pdb<7>
assign pdb_out[7] = (ts_local_pe_391_a0_oe & ts_local_pe_391_a0_out ) | (ts_local_pe_391_a1_oe & ts_local_pe_391_a1_out ) | 1'b0;
assign pdb_oe[7] = ts_local_pe_391_a0_oe | ts_local_pe_391_a1_oe;
assign ts_local_pe_391_a0_in = pdb_in[7];
assign ts_local_pe_391_a1_in = pdb_in[7];

// --- Compiler-generated local PE for BUS pdb<8>
assign pdb_out[8] = (ts_local_pe_392_a0_oe & ts_local_pe_392_a0_out ) | (ts_local_pe_392_a1_oe & ts_local_pe_392_a1_out ) | 1'b0;
assign pdb_oe[8] = ts_local_pe_392_a0_oe | ts_local_pe_392_a1_oe;
assign ts_local_pe_392_a0_in = pdb_in[8];
assign ts_local_pe_392_a1_in = pdb_in[8];

// --- Compiler-generated local PE for BUS pdb<9>
assign pdb_out[9] = (ts_local_pe_393_a0_oe & ts_local_pe_393_a0_out ) | (ts_local_pe_393_a1_oe & ts_local_pe_393_a1_out ) | 1'b0;
assign pdb_oe[9] = ts_local_pe_393_a0_oe | ts_local_pe_393_a1_oe;
assign ts_local_pe_393_a0_in = pdb_in[9];
assign ts_local_pe_393_a1_in = pdb_in[9];

// --- Compiler-generated local PE for BUS pdb<10>
assign pdb_out[10] = (ts_local_pe_394_a0_oe & ts_local_pe_394_a0_out ) | (ts_local_pe_394_a1_oe & ts_local_pe_394_a1_out ) | 1'b0;
assign pdb_oe[10] = ts_local_pe_394_a0_oe | ts_local_pe_394_a1_oe;
assign ts_local_pe_394_a0_in = pdb_in[10];
assign ts_local_pe_394_a1_in = pdb_in[10];

// --- Compiler-generated local PE for BUS pdb<11>
assign pdb_out[11] = (ts_local_pe_395_a0_oe & ts_local_pe_395_a0_out ) | (ts_local_pe_395_a1_oe & ts_local_pe_395_a1_out ) | 1'b0;
assign pdb_oe[11] = ts_local_pe_395_a0_oe | ts_local_pe_395_a1_oe;
assign ts_local_pe_395_a0_in = pdb_in[11];
assign ts_local_pe_395_a1_in = pdb_in[11];

// --- Compiler-generated local PE for BUS pdb<12>
assign pdb_out[12] = (ts_local_pe_396_a0_oe & ts_local_pe_396_a0_out ) | (ts_local_pe_396_a1_oe & ts_local_pe_396_a1_out ) | 1'b0;
assign pdb_oe[12] = ts_local_pe_396_a0_oe | ts_local_pe_396_a1_oe;
assign ts_local_pe_396_a0_in = pdb_in[12];
assign ts_local_pe_396_a1_in = pdb_in[12];

// --- Compiler-generated local PE for BUS pdb<13>
assign pdb_out[13] = (ts_local_pe_397_a0_oe & ts_local_pe_397_a0_out ) | (ts_local_pe_397_a1_oe & ts_local_pe_397_a1_out ) | 1'b0;
assign pdb_oe[13] = ts_local_pe_397_a0_oe | ts_local_pe_397_a1_oe;
assign ts_local_pe_397_a0_in = pdb_in[13];
assign ts_local_pe_397_a1_in = pdb_in[13];

// --- Compiler-generated local PE for BUS pdb<14>
assign pdb_out[14] = (ts_local_pe_398_a0_oe & ts_local_pe_398_a0_out ) | (ts_local_pe_398_a1_oe & ts_local_pe_398_a1_out ) | 1'b0;
assign pdb_oe[14] = ts_local_pe_398_a0_oe | ts_local_pe_398_a1_oe;
assign ts_local_pe_398_a0_in = pdb_in[14];
assign ts_local_pe_398_a1_in = pdb_in[14];

// --- Compiler-generated local PE for BUS pdb<15>
assign pdb_out[15] = (ts_local_pe_399_a0_oe & ts_local_pe_399_a0_out ) | (ts_local_pe_399_a1_oe & ts_local_pe_399_a1_out ) | 1'b0;
assign pdb_oe[15] = ts_local_pe_399_a0_oe | ts_local_pe_399_a1_oe;
assign ts_local_pe_399_a0_in = pdb_in[15];
assign ts_local_pe_399_a1_in = pdb_in[15];

// --- Compiler-generated local LB for BUS pda<0>
assign pda_in[0] = pda_out[0];

// --- Compiler-generated local LB for BUS pda<1>
assign pda_in[1] = pda_out[1];

// --- Compiler-generated local LB for BUS pda<2>
assign pda_in[2] = pda_out[2];

// --- Compiler-generated local LB for BUS pda<3>
assign pda_in[3] = pda_out[3];

// --- Compiler-generated local LB for BUS pda<4>
assign pda_in[4] = pda_out[4];

// --- Compiler-generated local LB for BUS pda<5>
assign pda_in[5] = pda_out[5];

// --- Compiler-generated local LB for BUS pda<6>
assign pda_in[6] = pda_out[6];

// --- Compiler-generated local LB for BUS pda<7>
assign pda_in[7] = pda_out[7];

// --- Compiler-generated local LB for BUS pda<8>
assign pda_in[8] = pda_out[8];

// --- Compiler-generated local LB for BUS pda<9>
assign pda_in[9] = pda_out[9];

// --- Compiler-generated local LB for BUS pda<10>
assign pda_in[10] = pda_out[10];

// --- Compiler-generated local LB for BUS pda<11>
assign pda_in[11] = pda_out[11];

// --- Compiler-generated local LB for BUS pda<12>
assign pda_in[12] = pda_out[12];

// --- Compiler-generated local LB for BUS pda<13>
assign pda_in[13] = pda_out[13];

// --- Compiler-generated local LB for BUS pda<14>
assign pda_in[14] = pda_out[14];

// --- Compiler-generated local LB for BUS pda<15>
assign pda_in[15] = pda_out[15];

// --- Compiler-generated local LB for BUS pdb<0>
assign pdb_in[0] = pdb_out[0];

// --- Compiler-generated local LB for BUS pdb<1>
assign pdb_in[1] = pdb_out[1];

// --- Compiler-generated local LB for BUS pdb<2>
assign pdb_in[2] = pdb_out[2];

// --- Compiler-generated local LB for BUS pdb<3>
assign pdb_in[3] = pdb_out[3];

// --- Compiler-generated local LB for BUS pdb<4>
assign pdb_in[4] = pdb_out[4];

// --- Compiler-generated local LB for BUS pdb<5>
assign pdb_in[5] = pdb_out[5];

// --- Compiler-generated local LB for BUS pdb<6>
assign pdb_in[6] = pdb_out[6];

// --- Compiler-generated local LB for BUS pdb<7>
assign pdb_in[7] = pdb_out[7];

// --- Compiler-generated local LB for BUS pdb<8>
assign pdb_in[8] = pdb_out[8];

// --- Compiler-generated local LB for BUS pdb<9>
assign pdb_in[9] = pdb_out[9];

// --- Compiler-generated local LB for BUS pdb<10>
assign pdb_in[10] = pdb_out[10];

// --- Compiler-generated local LB for BUS pdb<11>
assign pdb_in[11] = pdb_out[11];

// --- Compiler-generated local LB for BUS pdb<12>
assign pdb_in[12] = pdb_out[12];

// --- Compiler-generated local LB for BUS pdb<13>
assign pdb_in[13] = pdb_out[13];

// --- Compiler-generated local LB for BUS pdb<14>
assign pdb_in[14] = pdb_out[14];

// --- Compiler-generated local LB for BUS pdb<15>
assign pdb_in[15] = pdb_out[15];
endmodule
/* verilator lint_on LITENDIAN */
