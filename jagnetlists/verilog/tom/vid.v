/* verilator lint_off LITENDIAN */
`include "defs.v"

module vid
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
	input vmwr,
	input hcwr,
	input hcrd,
	input hpwr,
	input hbbwr,
	input hbewr,
	input hdb1wr,
	input hdb2wr,
	input hdewr,
	input hswr,
	input hvswr,
	input vcwr,
	input vcrd,
	input vpwr,
	input vbbwr,
	input vbewr,
	input vdbwr,
	input vdewr,
	input vebwr,
	input veewr,
	input vswr,
	input viwr,
	input lphrd,
	input lpvrd,
	input hlock,
	input vlock,
	input resetl,
	input vclk,
	input lp,
	input heqw,
	input test1w,
	input test2r,
	input test3r,
	input wet,
	input vgy,
	input vey,
	input vly,
	input lock,
	output start,
	output dd,
	output lbufa,
	output lbufb,
	output noths,
	output notvs,
	output syncen,
	output vint,
	output vactive,
	output blank,
	output nextpixa,
	output nextpixd,
	output cry16,
	output rgb24,
	output rg16,
	output rgb16,
	output mptest,
	output ndtest,
	output varmod,
	output vcl_0,
	output vcl_1,
	output vcl_2,
	output vcl_3,
	output vcl_4,
	output vcl_5,
	output vcl_6,
	output vcl_7,
	output vcl_8,
	output vcl_9,
	output vcl_10,
	output tcount,
	output incen,
	output binc,
	output bgw,
	output word2,
	output pp,
	output lbaactive,
	output lbbactive,
	output hcb_10,
	output hs_o,
	output hhs_o,
	output vs_o,
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
wire [0:10] hc;
wire [0:11] vc;
wire lockl;
wire viden;
wire videnl;
wire vm_1;
wire vml_1;
wire vm_2;
wire vml_2;
wire vm_3;
wire csyncen;
wire bgwen;
wire ppn_0;
wire ppn_1;
wire ppn_2;
wire rg16i;
wire tcountl;
wire startd3;
wire test1ws;
wire mptesti;
wire vcl;
wire ndtesti;
wire ppresl;
wire notstartd;
wire pp_0;
wire ppco_0;
wire vcc;
wire pp_1;
wire ppco_1;
wire pp_2;
wire ppco_2;
wire ppl;
wire word2d0;
wire word2l;
wire word2d1;
wire word2d;
wire hc_0;
wire hc_1;
wire hc_2;
wire hc_3;
wire hc_4;
wire hc_5;
wire hc_6;
wire hc_7;
wire hc_8;
wire hc_9;
wire hc_10;
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
wire vc_11;
wire vres;
wire vresl;
wire hlockl;
wire hcresi;
wire hpeql;
wire hcres;
wire hmres;
wire hcount;
wire hco_0;
wire hco_1;
wire hco_2;
wire hco_3;
wire hco_4;
wire hco_5;
wire hco_6;
wire hco_7;
wire hco_8;
wire hco_9;
wire hco_10;
wire hpeq;
wire hcb_0;
wire hcb_1;
wire hcb_2;
wire hcb_3;
wire hcb_4;
wire hcb_5;
wire hcb_6;
wire hcb_7;
wire hcb_8;
wire hcb_9;
wire hp_0;
wire hp_1;
wire hp_2;
wire hp_3;
wire hp_4;
wire hp_5;
wire hp_6;
wire hp_7;
wire hp_8;
wire hp_9;
wire hpe_0;
wire hpe_1;
wire hpe_2;
wire hpe_3;
wire hpe_4;
wire hpe_5;
wire hpe_6;
wire hpe_7;
wire hpe_8;
wire hpe_9;
wire hpeqt;
wire hpeqi;
wire hbbeq;
wire hbeeq;
wire hdb1eq;
wire hdb2eq;
wire hdeeq;
wire hs_0;
wire hs_1;
wire hs_2;
wire hs_3;
wire hs_4;
wire hs_5;
wire hs_6;
wire hs_7;
wire hs_8;
wire hs_9;
wire hs_10;
wire hse_0;
wire hse_1;
wire hse_2;
wire hse_3;
wire hse_4;
wire hse_5;
wire hse_6;
wire hse_7;
wire hse_8;
wire hse_9;
wire hse_10;
wire hseq;
wire hvsb;
wire hvs_0;
wire hvs_1;
wire hvs_2;
wire hvs_3;
wire hvs_4;
wire hvs_5;
wire hvs_6;
wire hvs_7;
wire hvs_8;
wire hvs_9;
wire hvse_0;
wire hvse_1;
wire hvse_2;
wire hvse_3;
wire hvse_4;
wire hvse_5;
wire hvse_6;
wire hvse_7;
wire hvse_8;
wire hvse_9;
wire hvse;
wire heq_0;
wire heq_1;
wire heq_2;
wire heq_3;
wire heq_4;
wire heq_5;
wire heq_6;
wire heq_7;
wire heq_8;
wire heq_9;
wire heqe_0;
wire heqe_1;
wire heqe_2;
wire heqe_3;
wire heqe_4;
wire heqe_5;
wire heqe_6;
wire heqe_7;
wire heqe_8;
wire heqe_9;
wire heqe;
wire nextfieldl;
wire vpeq;
wire nextfield;
wire vlockl;
wire vcresi;
wire vcres;
wire res;
wire vcount;
wire vco_0;
wire vco_1;
wire vco_2;
wire vco_3;
wire vco_4;
wire vco_5;
wire vco_6;
wire vco_7;
wire vco_8;
wire vco_9;
wire vco_10;
wire vco_11;
wire vcb_0;
wire vcb_1;
wire vcb_2;
wire vcb_3;
wire vcb_4;
wire vcb_5;
wire vcb_6;
wire vcb_7;
wire vcb_8;
wire vcb_9;
wire vcb_10;
wire vp_0;
wire vp_1;
wire vp_2;
wire vp_3;
wire vp_4;
wire vp_5;
wire vp_6;
wire vp_7;
wire vp_8;
wire vp_9;
wire vp_10;
wire vpe_0;
wire vpe_1;
wire vpe_2;
wire vpe_3;
wire vpe_4;
wire vpe_5;
wire vpe_6;
wire vpe_7;
wire vpe_8;
wire vpe_9;
wire vpe_10;
wire vpeqt;
wire vbbeq;
wire vbeeq;
wire vdbeq;
wire vdeeq;
wire vebeq;
wire veeeq;
wire vseq;
wire vieq;
wire vvactive;
wire notvvactive;
wire startd1;
wire startd2;
wire startd;
wire vcli;
wire vclb;
wire startd3p;
wire hdb;
wire vdactive;
wire notvactive;
wire lbufai;
wire lbufbi;
wire lbufad;
wire lbaai;
wire lbbai;
wire vblank;
wire notvblank;
wire hblank;
wire nothblank;
wire hs;
wire vvs;
wire notvvs;
wire hvstart;
wire hvs;
wire nothvs;
wire ves;
wire notves;
wire hestart;
wire hes;
wire nothes;
wire vsl;
wire csync;
wire vintd;
wire vintl;
wire ppnz;
wire longpix;
wire wordpix;
wire sxp;
wire nextpixd0;
wire nextpixd1;
wire nextpixad;
wire nextpixaq;
wire lp1;
wire lp2;
wire lp2l;
wire lpldi;
wire lpld;
wire lph_0;
wire lph_1;
wire lph_2;
wire lph_3;
wire lph_4;
wire lph_5;
wire lph_6;
wire lph_7;
wire lph_8;
wire lph_9;
wire lph_10;
wire lpv_0;
wire lpv_1;
wire lpv_2;
wire lpv_3;
wire lpv_4;
wire lpv_5;
wire lpv_6;
wire lpv_7;
wire lpv_8;
wire lpv_9;
wire lpv_10;
wire lpv_11;
wire lpe;
wire notlpe;
wire gnd;
wire e11;
wire e1215;
wire ts_pe_260_a0_out;
wire ts_pe_260_a0_oe;
wire ts_pe_260_a0_in;
wire ts_pe_260_a1_out;
wire ts_pe_260_a1_oe;
wire ts_pe_260_a1_in;
wire ts_pe_260_a2_out;
wire ts_pe_260_a2_oe;
wire ts_pe_260_a2_in;
wire ts_pe_260_a3_out;
wire ts_pe_260_a3_oe;
wire ts_pe_260_a3_in;
wire ts_pe_260_a4_out;
wire ts_pe_260_a4_oe;
wire ts_pe_260_a4_in;
wire ts_pe_260_a5_out;
wire ts_pe_260_a5_oe;
wire ts_pe_260_a5_in;
wire ts_pe_260_a6_out;
wire ts_pe_260_a6_oe;
wire ts_pe_260_a6_in;
wire ts_pe_260_a7_out;
wire ts_pe_260_a7_oe;
wire ts_pe_260_a7_in;
wire ts_pe_260_a8_out;
wire ts_pe_260_a8_oe;
wire ts_pe_260_a8_in;
wire ts_pe_260_a9_out;
wire ts_pe_260_a9_oe;
wire ts_pe_260_a9_in;
wire ts_pe_260_a10_out;
wire ts_pe_260_a10_oe;
wire ts_pe_260_a10_in;
wire ts_pe_260_a11_out;
wire ts_pe_260_a11_oe;
wire ts_pe_260_a11_in;
wire ts_pe_260_a12_out;
wire ts_pe_260_a12_oe;
wire ts_pe_260_a12_in;
wire ts_pe_260_a13_out;
wire ts_pe_260_a13_oe;
wire ts_pe_260_a13_in;
wire ts_pe_260_a14_out;
wire ts_pe_260_a14_oe;
wire ts_pe_260_a14_in;
wire ts_pe_260_a15_out;
wire ts_pe_260_a15_oe;
wire ts_pe_260_a15_in;
wire ts_pe_260_a16_out;
wire ts_pe_260_a16_oe;
wire ts_pe_260_a16_in;
wire ts_pe_260_a17_out;
wire ts_pe_260_a17_oe;
wire ts_pe_260_a17_in;
wire ts_pe_260_a18_out;
wire ts_pe_260_a18_oe;
wire ts_pe_260_a18_in;
wire ts_pe_261_a0_out;
wire ts_pe_261_a0_oe;
wire ts_pe_261_a0_in;
wire ts_pe_261_a1_out;
wire ts_pe_261_a1_oe;
wire ts_pe_261_a1_in;
wire ts_pe_261_a2_out;
wire ts_pe_261_a2_oe;
wire ts_pe_261_a2_in;
wire ts_pe_261_a3_out;
wire ts_pe_261_a3_oe;
wire ts_pe_261_a3_in;
wire ts_pe_261_a4_out;
wire ts_pe_261_a4_oe;
wire ts_pe_261_a4_in;
wire ts_pe_261_a5_out;
wire ts_pe_261_a5_oe;
wire ts_pe_261_a5_in;
wire ts_pe_261_a6_out;
wire ts_pe_261_a6_oe;
wire ts_pe_261_a6_in;
wire ts_pe_261_a7_out;
wire ts_pe_261_a7_oe;
wire ts_pe_261_a7_in;
wire ts_pe_261_a8_out;
wire ts_pe_261_a8_oe;
wire ts_pe_261_a8_in;
wire ts_pe_261_a9_out;
wire ts_pe_261_a9_oe;
wire ts_pe_261_a9_in;
wire ts_pe_261_a10_out;
wire ts_pe_261_a10_oe;
wire ts_pe_261_a10_in;
wire ts_pe_261_a11_out;
wire ts_pe_261_a11_oe;
wire ts_pe_261_a11_in;
wire ts_pe_261_a12_out;
wire ts_pe_261_a12_oe;
wire ts_pe_261_a12_in;
wire ts_pe_261_a13_out;
wire ts_pe_261_a13_oe;
wire ts_pe_261_a13_in;
wire ts_pe_261_a14_out;
wire ts_pe_261_a14_oe;
wire ts_pe_261_a14_in;
wire ts_pe_261_a15_out;
wire ts_pe_261_a15_oe;
wire ts_pe_261_a15_in;
wire ts_pe_261_a16_out;
wire ts_pe_261_a16_oe;
wire ts_pe_261_a16_in;
wire ts_pe_261_a17_out;
wire ts_pe_261_a17_oe;
wire ts_pe_261_a17_in;
wire ts_pe_261_a18_out;
wire ts_pe_261_a18_oe;
wire ts_pe_261_a18_in;
wire ts_pe_262_a0_out;
wire ts_pe_262_a0_oe;
wire ts_pe_262_a0_in;
wire ts_pe_262_a1_out;
wire ts_pe_262_a1_oe;
wire ts_pe_262_a1_in;
wire ts_pe_262_a2_out;
wire ts_pe_262_a2_oe;
wire ts_pe_262_a2_in;
wire ts_pe_262_a3_out;
wire ts_pe_262_a3_oe;
wire ts_pe_262_a3_in;
wire ts_pe_262_a4_out;
wire ts_pe_262_a4_oe;
wire ts_pe_262_a4_in;
wire ts_pe_262_a5_out;
wire ts_pe_262_a5_oe;
wire ts_pe_262_a5_in;
wire ts_pe_262_a6_out;
wire ts_pe_262_a6_oe;
wire ts_pe_262_a6_in;
wire ts_pe_262_a7_out;
wire ts_pe_262_a7_oe;
wire ts_pe_262_a7_in;
wire ts_pe_262_a8_out;
wire ts_pe_262_a8_oe;
wire ts_pe_262_a8_in;
wire ts_pe_262_a9_out;
wire ts_pe_262_a9_oe;
wire ts_pe_262_a9_in;
wire ts_pe_262_a10_out;
wire ts_pe_262_a10_oe;
wire ts_pe_262_a10_in;
wire ts_pe_262_a11_out;
wire ts_pe_262_a11_oe;
wire ts_pe_262_a11_in;
wire ts_pe_262_a12_out;
wire ts_pe_262_a12_oe;
wire ts_pe_262_a12_in;
wire ts_pe_262_a13_out;
wire ts_pe_262_a13_oe;
wire ts_pe_262_a13_in;
wire ts_pe_262_a14_out;
wire ts_pe_262_a14_oe;
wire ts_pe_262_a14_in;
wire ts_pe_262_a15_out;
wire ts_pe_262_a15_oe;
wire ts_pe_262_a15_in;
wire ts_pe_262_a16_out;
wire ts_pe_262_a16_oe;
wire ts_pe_262_a16_in;
wire ts_pe_262_a17_out;
wire ts_pe_262_a17_oe;
wire ts_pe_262_a17_in;
wire ts_pe_262_a18_out;
wire ts_pe_262_a18_oe;
wire ts_pe_262_a18_in;
wire ts_pe_263_a0_out;
wire ts_pe_263_a0_oe;
wire ts_pe_263_a0_in;
wire ts_pe_263_a1_out;
wire ts_pe_263_a1_oe;
wire ts_pe_263_a1_in;
wire ts_pe_263_a2_out;
wire ts_pe_263_a2_oe;
wire ts_pe_263_a2_in;
wire ts_pe_263_a3_out;
wire ts_pe_263_a3_oe;
wire ts_pe_263_a3_in;
wire ts_pe_263_a4_out;
wire ts_pe_263_a4_oe;
wire ts_pe_263_a4_in;
wire ts_pe_263_a5_out;
wire ts_pe_263_a5_oe;
wire ts_pe_263_a5_in;
wire ts_pe_263_a6_out;
wire ts_pe_263_a6_oe;
wire ts_pe_263_a6_in;
wire ts_pe_263_a7_out;
wire ts_pe_263_a7_oe;
wire ts_pe_263_a7_in;
wire ts_pe_263_a8_out;
wire ts_pe_263_a8_oe;
wire ts_pe_263_a8_in;
wire ts_pe_263_a9_out;
wire ts_pe_263_a9_oe;
wire ts_pe_263_a9_in;
wire ts_pe_263_a10_out;
wire ts_pe_263_a10_oe;
wire ts_pe_263_a10_in;
wire ts_pe_263_a11_out;
wire ts_pe_263_a11_oe;
wire ts_pe_263_a11_in;
wire ts_pe_263_a12_out;
wire ts_pe_263_a12_oe;
wire ts_pe_263_a12_in;
wire ts_pe_263_a13_out;
wire ts_pe_263_a13_oe;
wire ts_pe_263_a13_in;
wire ts_pe_263_a14_out;
wire ts_pe_263_a14_oe;
wire ts_pe_263_a14_in;
wire ts_pe_263_a15_out;
wire ts_pe_263_a15_oe;
wire ts_pe_263_a15_in;
wire ts_pe_263_a16_out;
wire ts_pe_263_a16_oe;
wire ts_pe_263_a16_in;
wire ts_pe_263_a17_out;
wire ts_pe_263_a17_oe;
wire ts_pe_263_a17_in;
wire ts_pe_263_a18_out;
wire ts_pe_263_a18_oe;
wire ts_pe_263_a18_in;
wire ts_pe_264_a0_out;
wire ts_pe_264_a0_oe;
wire ts_pe_264_a0_in;
wire ts_pe_264_a1_out;
wire ts_pe_264_a1_oe;
wire ts_pe_264_a1_in;
wire ts_pe_264_a2_out;
wire ts_pe_264_a2_oe;
wire ts_pe_264_a2_in;
wire ts_pe_264_a3_out;
wire ts_pe_264_a3_oe;
wire ts_pe_264_a3_in;
wire ts_pe_264_a4_out;
wire ts_pe_264_a4_oe;
wire ts_pe_264_a4_in;
wire ts_pe_264_a5_out;
wire ts_pe_264_a5_oe;
wire ts_pe_264_a5_in;
wire ts_pe_264_a6_out;
wire ts_pe_264_a6_oe;
wire ts_pe_264_a6_in;
wire ts_pe_264_a7_out;
wire ts_pe_264_a7_oe;
wire ts_pe_264_a7_in;
wire ts_pe_264_a8_out;
wire ts_pe_264_a8_oe;
wire ts_pe_264_a8_in;
wire ts_pe_264_a9_out;
wire ts_pe_264_a9_oe;
wire ts_pe_264_a9_in;
wire ts_pe_264_a10_out;
wire ts_pe_264_a10_oe;
wire ts_pe_264_a10_in;
wire ts_pe_264_a11_out;
wire ts_pe_264_a11_oe;
wire ts_pe_264_a11_in;
wire ts_pe_264_a12_out;
wire ts_pe_264_a12_oe;
wire ts_pe_264_a12_in;
wire ts_pe_264_a13_out;
wire ts_pe_264_a13_oe;
wire ts_pe_264_a13_in;
wire ts_pe_264_a14_out;
wire ts_pe_264_a14_oe;
wire ts_pe_264_a14_in;
wire ts_pe_264_a15_out;
wire ts_pe_264_a15_oe;
wire ts_pe_264_a15_in;
wire ts_pe_264_a16_out;
wire ts_pe_264_a16_oe;
wire ts_pe_264_a16_in;
wire ts_pe_264_a17_out;
wire ts_pe_264_a17_oe;
wire ts_pe_264_a17_in;
wire ts_pe_264_a18_out;
wire ts_pe_264_a18_oe;
wire ts_pe_264_a18_in;
wire ts_pe_265_a0_out;
wire ts_pe_265_a0_oe;
wire ts_pe_265_a0_in;
wire ts_pe_265_a1_out;
wire ts_pe_265_a1_oe;
wire ts_pe_265_a1_in;
wire ts_pe_265_a2_out;
wire ts_pe_265_a2_oe;
wire ts_pe_265_a2_in;
wire ts_pe_265_a3_out;
wire ts_pe_265_a3_oe;
wire ts_pe_265_a3_in;
wire ts_pe_265_a4_out;
wire ts_pe_265_a4_oe;
wire ts_pe_265_a4_in;
wire ts_pe_265_a5_out;
wire ts_pe_265_a5_oe;
wire ts_pe_265_a5_in;
wire ts_pe_265_a6_out;
wire ts_pe_265_a6_oe;
wire ts_pe_265_a6_in;
wire ts_pe_265_a7_out;
wire ts_pe_265_a7_oe;
wire ts_pe_265_a7_in;
wire ts_pe_265_a8_out;
wire ts_pe_265_a8_oe;
wire ts_pe_265_a8_in;
wire ts_pe_265_a9_out;
wire ts_pe_265_a9_oe;
wire ts_pe_265_a9_in;
wire ts_pe_265_a10_out;
wire ts_pe_265_a10_oe;
wire ts_pe_265_a10_in;
wire ts_pe_265_a11_out;
wire ts_pe_265_a11_oe;
wire ts_pe_265_a11_in;
wire ts_pe_265_a12_out;
wire ts_pe_265_a12_oe;
wire ts_pe_265_a12_in;
wire ts_pe_265_a13_out;
wire ts_pe_265_a13_oe;
wire ts_pe_265_a13_in;
wire ts_pe_265_a14_out;
wire ts_pe_265_a14_oe;
wire ts_pe_265_a14_in;
wire ts_pe_265_a15_out;
wire ts_pe_265_a15_oe;
wire ts_pe_265_a15_in;
wire ts_pe_265_a16_out;
wire ts_pe_265_a16_oe;
wire ts_pe_265_a16_in;
wire ts_pe_265_a17_out;
wire ts_pe_265_a17_oe;
wire ts_pe_265_a17_in;
wire ts_pe_265_a18_out;
wire ts_pe_265_a18_oe;
wire ts_pe_265_a18_in;
wire ts_pe_266_a0_out;
wire ts_pe_266_a0_oe;
wire ts_pe_266_a0_in;
wire ts_pe_266_a1_out;
wire ts_pe_266_a1_oe;
wire ts_pe_266_a1_in;
wire ts_pe_266_a2_out;
wire ts_pe_266_a2_oe;
wire ts_pe_266_a2_in;
wire ts_pe_266_a3_out;
wire ts_pe_266_a3_oe;
wire ts_pe_266_a3_in;
wire ts_pe_266_a4_out;
wire ts_pe_266_a4_oe;
wire ts_pe_266_a4_in;
wire ts_pe_266_a5_out;
wire ts_pe_266_a5_oe;
wire ts_pe_266_a5_in;
wire ts_pe_266_a6_out;
wire ts_pe_266_a6_oe;
wire ts_pe_266_a6_in;
wire ts_pe_266_a7_out;
wire ts_pe_266_a7_oe;
wire ts_pe_266_a7_in;
wire ts_pe_266_a8_out;
wire ts_pe_266_a8_oe;
wire ts_pe_266_a8_in;
wire ts_pe_266_a9_out;
wire ts_pe_266_a9_oe;
wire ts_pe_266_a9_in;
wire ts_pe_266_a10_out;
wire ts_pe_266_a10_oe;
wire ts_pe_266_a10_in;
wire ts_pe_266_a11_out;
wire ts_pe_266_a11_oe;
wire ts_pe_266_a11_in;
wire ts_pe_266_a12_out;
wire ts_pe_266_a12_oe;
wire ts_pe_266_a12_in;
wire ts_pe_266_a13_out;
wire ts_pe_266_a13_oe;
wire ts_pe_266_a13_in;
wire ts_pe_266_a14_out;
wire ts_pe_266_a14_oe;
wire ts_pe_266_a14_in;
wire ts_pe_266_a15_out;
wire ts_pe_266_a15_oe;
wire ts_pe_266_a15_in;
wire ts_pe_266_a16_out;
wire ts_pe_266_a16_oe;
wire ts_pe_266_a16_in;
wire ts_pe_266_a17_out;
wire ts_pe_266_a17_oe;
wire ts_pe_266_a17_in;
wire ts_pe_266_a18_out;
wire ts_pe_266_a18_oe;
wire ts_pe_266_a18_in;
wire ts_pe_267_a0_out;
wire ts_pe_267_a0_oe;
wire ts_pe_267_a0_in;
wire ts_pe_267_a1_out;
wire ts_pe_267_a1_oe;
wire ts_pe_267_a1_in;
wire ts_pe_267_a2_out;
wire ts_pe_267_a2_oe;
wire ts_pe_267_a2_in;
wire ts_pe_267_a3_out;
wire ts_pe_267_a3_oe;
wire ts_pe_267_a3_in;
wire ts_pe_267_a4_out;
wire ts_pe_267_a4_oe;
wire ts_pe_267_a4_in;
wire ts_pe_267_a5_out;
wire ts_pe_267_a5_oe;
wire ts_pe_267_a5_in;
wire ts_pe_267_a6_out;
wire ts_pe_267_a6_oe;
wire ts_pe_267_a6_in;
wire ts_pe_267_a7_out;
wire ts_pe_267_a7_oe;
wire ts_pe_267_a7_in;
wire ts_pe_267_a8_out;
wire ts_pe_267_a8_oe;
wire ts_pe_267_a8_in;
wire ts_pe_267_a9_out;
wire ts_pe_267_a9_oe;
wire ts_pe_267_a9_in;
wire ts_pe_267_a10_out;
wire ts_pe_267_a10_oe;
wire ts_pe_267_a10_in;
wire ts_pe_267_a11_out;
wire ts_pe_267_a11_oe;
wire ts_pe_267_a11_in;
wire ts_pe_267_a12_out;
wire ts_pe_267_a12_oe;
wire ts_pe_267_a12_in;
wire ts_pe_267_a13_out;
wire ts_pe_267_a13_oe;
wire ts_pe_267_a13_in;
wire ts_pe_267_a14_out;
wire ts_pe_267_a14_oe;
wire ts_pe_267_a14_in;
wire ts_pe_267_a15_out;
wire ts_pe_267_a15_oe;
wire ts_pe_267_a15_in;
wire ts_pe_267_a16_out;
wire ts_pe_267_a16_oe;
wire ts_pe_267_a16_in;
wire ts_pe_267_a17_out;
wire ts_pe_267_a17_oe;
wire ts_pe_267_a17_in;
wire ts_pe_267_a18_out;
wire ts_pe_267_a18_oe;
wire ts_pe_267_a18_in;
wire ts_pe_268_a0_out;
wire ts_pe_268_a0_oe;
wire ts_pe_268_a0_in;
wire ts_pe_268_a1_out;
wire ts_pe_268_a1_oe;
wire ts_pe_268_a1_in;
wire ts_pe_268_a2_out;
wire ts_pe_268_a2_oe;
wire ts_pe_268_a2_in;
wire ts_pe_268_a3_out;
wire ts_pe_268_a3_oe;
wire ts_pe_268_a3_in;
wire ts_pe_268_a4_out;
wire ts_pe_268_a4_oe;
wire ts_pe_268_a4_in;
wire ts_pe_268_a5_out;
wire ts_pe_268_a5_oe;
wire ts_pe_268_a5_in;
wire ts_pe_268_a6_out;
wire ts_pe_268_a6_oe;
wire ts_pe_268_a6_in;
wire ts_pe_268_a7_out;
wire ts_pe_268_a7_oe;
wire ts_pe_268_a7_in;
wire ts_pe_268_a8_out;
wire ts_pe_268_a8_oe;
wire ts_pe_268_a8_in;
wire ts_pe_268_a9_out;
wire ts_pe_268_a9_oe;
wire ts_pe_268_a9_in;
wire ts_pe_268_a10_out;
wire ts_pe_268_a10_oe;
wire ts_pe_268_a10_in;
wire ts_pe_268_a11_out;
wire ts_pe_268_a11_oe;
wire ts_pe_268_a11_in;
wire ts_pe_268_a12_out;
wire ts_pe_268_a12_oe;
wire ts_pe_268_a12_in;
wire ts_pe_268_a13_out;
wire ts_pe_268_a13_oe;
wire ts_pe_268_a13_in;
wire ts_pe_268_a14_out;
wire ts_pe_268_a14_oe;
wire ts_pe_268_a14_in;
wire ts_pe_268_a15_out;
wire ts_pe_268_a15_oe;
wire ts_pe_268_a15_in;
wire ts_pe_268_a16_out;
wire ts_pe_268_a16_oe;
wire ts_pe_268_a16_in;
wire ts_pe_268_a17_out;
wire ts_pe_268_a17_oe;
wire ts_pe_268_a17_in;
wire ts_pe_268_a18_out;
wire ts_pe_268_a18_oe;
wire ts_pe_268_a18_in;
wire ts_pe_269_a0_out;
wire ts_pe_269_a0_oe;
wire ts_pe_269_a0_in;
wire ts_pe_269_a1_out;
wire ts_pe_269_a1_oe;
wire ts_pe_269_a1_in;
wire ts_pe_269_a2_out;
wire ts_pe_269_a2_oe;
wire ts_pe_269_a2_in;
wire ts_pe_269_a3_out;
wire ts_pe_269_a3_oe;
wire ts_pe_269_a3_in;
wire ts_pe_269_a4_out;
wire ts_pe_269_a4_oe;
wire ts_pe_269_a4_in;
wire ts_pe_269_a5_out;
wire ts_pe_269_a5_oe;
wire ts_pe_269_a5_in;
wire ts_pe_269_a6_out;
wire ts_pe_269_a6_oe;
wire ts_pe_269_a6_in;
wire ts_pe_269_a7_out;
wire ts_pe_269_a7_oe;
wire ts_pe_269_a7_in;
wire ts_pe_269_a8_out;
wire ts_pe_269_a8_oe;
wire ts_pe_269_a8_in;
wire ts_pe_269_a9_out;
wire ts_pe_269_a9_oe;
wire ts_pe_269_a9_in;
wire ts_pe_269_a10_out;
wire ts_pe_269_a10_oe;
wire ts_pe_269_a10_in;
wire ts_pe_269_a11_out;
wire ts_pe_269_a11_oe;
wire ts_pe_269_a11_in;
wire ts_pe_269_a12_out;
wire ts_pe_269_a12_oe;
wire ts_pe_269_a12_in;
wire ts_pe_269_a13_out;
wire ts_pe_269_a13_oe;
wire ts_pe_269_a13_in;
wire ts_pe_269_a14_out;
wire ts_pe_269_a14_oe;
wire ts_pe_269_a14_in;
wire ts_pe_269_a15_out;
wire ts_pe_269_a15_oe;
wire ts_pe_269_a15_in;
wire ts_pe_269_a16_out;
wire ts_pe_269_a16_oe;
wire ts_pe_269_a16_in;
wire ts_pe_269_a17_out;
wire ts_pe_269_a17_oe;
wire ts_pe_269_a17_in;
wire ts_pe_269_a18_out;
wire ts_pe_269_a18_oe;
wire ts_pe_269_a18_in;
wire ts_pe_270_a0_out;
wire ts_pe_270_a0_oe;
wire ts_pe_270_a0_in;
wire ts_pe_270_a1_out;
wire ts_pe_270_a1_oe;
wire ts_pe_270_a1_in;
wire ts_pe_270_a2_out;
wire ts_pe_270_a2_oe;
wire ts_pe_270_a2_in;
wire ts_pe_270_a3_out;
wire ts_pe_270_a3_oe;
wire ts_pe_270_a3_in;
wire ts_pe_270_a4_out;
wire ts_pe_270_a4_oe;
wire ts_pe_270_a4_in;
wire ts_pe_270_a5_out;
wire ts_pe_270_a5_oe;
wire ts_pe_270_a5_in;
wire ts_pe_270_a6_out;
wire ts_pe_270_a6_oe;
wire ts_pe_270_a6_in;
wire ts_pe_270_a7_out;
wire ts_pe_270_a7_oe;
wire ts_pe_270_a7_in;
wire ts_pe_270_a8_out;
wire ts_pe_270_a8_oe;
wire ts_pe_270_a8_in;
wire ts_pe_270_a9_out;
wire ts_pe_270_a9_oe;
wire ts_pe_270_a9_in;
wire ts_pe_270_a10_out;
wire ts_pe_270_a10_oe;
wire ts_pe_270_a10_in;
wire ts_pe_270_a11_out;
wire ts_pe_270_a11_oe;
wire ts_pe_270_a11_in;
wire ts_pe_270_a12_out;
wire ts_pe_270_a12_oe;
wire ts_pe_270_a12_in;
wire ts_pe_270_a13_out;
wire ts_pe_270_a13_oe;
wire ts_pe_270_a13_in;
wire ts_pe_270_a14_out;
wire ts_pe_270_a14_oe;
wire ts_pe_270_a14_in;
wire ts_pe_270_a15_out;
wire ts_pe_270_a15_oe;
wire ts_pe_270_a15_in;
wire ts_pe_270_a16_out;
wire ts_pe_270_a16_oe;
wire ts_pe_270_a16_in;
wire ts_pe_270_a17_out;
wire ts_pe_270_a17_oe;
wire ts_pe_270_a17_in;
wire ts_pe_270_a18_out;
wire ts_pe_270_a18_oe;
wire ts_pe_270_a18_in;
wire ts_pe_271_a0_out;
wire ts_pe_271_a0_oe;
wire ts_pe_271_a0_in;
wire ts_pe_271_a1_out;
wire ts_pe_271_a1_oe;
wire ts_pe_271_a1_in;
wire ts_pe_271_a2_out;
wire ts_pe_271_a2_oe;
wire ts_pe_271_a2_in;
wire ts_pe_271_a3_out;
wire ts_pe_271_a3_oe;
wire ts_pe_271_a3_in;
wire ts_pe_271_a4_out;
wire ts_pe_271_a4_oe;
wire ts_pe_271_a4_in;

// Output buffers
wire start_obuf;
wire dd_obuf;
wire lbufa_obuf;
wire lbufb_obuf;
wire noths_obuf;
wire vactive_obuf;
wire nextpixa_obuf;
wire nextpixd_obuf;
wire cry16_obuf;
wire rgb16_obuf;
wire tcount_obuf;
wire word2_obuf;
wire pp_obuf;
wire hcb_10_obuf;


// Output buffers
assign start = start_obuf;
assign dd = dd_obuf;
assign lbufa = lbufa_obuf;
assign lbufb = lbufb_obuf;
assign noths = noths_obuf;
assign vactive = vactive_obuf;
assign nextpixa = nextpixa_obuf;
assign nextpixd = nextpixd_obuf;
assign cry16 = cry16_obuf;
assign rgb16 = rgb16_obuf;
assign tcount = tcount_obuf;
assign word2 = word2_obuf;
assign pp = pp_obuf;
assign hcb_10 = hcb_10_obuf;


// VID.NET (34) - lockl : ivm
assign lockl = ~lock;

// VID.NET (54) - vm[0] : ldp2
ldp2 vm_index_0_inst
(
	.q /* OUT */ (viden),
	.qn /* OUT */ (videnl),
	.d /* IN */ (din_0),
	.g /* IN */ (vmwr),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (55) - vm[1] : ldp1
ldp1 vm_index_1_inst
(
	.q /* OUT */ (vm_1),
	.qn /* OUT */ (vml_1),
	.d /* IN */ (din_1),
	.g /* IN */ (vmwr),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (56) - vm[2] : ldp1
ldp1 vm_index_2_inst
(
	.q /* OUT */ (vm_2),
	.qn /* OUT */ (vml_2),
	.d /* IN */ (din_2),
	.g /* IN */ (vmwr),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (57) - vm[3] : ldp2q
ldp2q vm_index_3_inst
(
	.q /* OUT */ (vm_3),
	.d /* IN */ (din_3),
	.g /* IN */ (vmwr),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (58) - vm[4] : ldp2q
ldp2q vm_index_4_inst
(
	.q /* OUT */ (incen),
	.d /* IN */ (din_4),
	.g /* IN */ (vmwr),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (59) - vm[5] : ldp1q
ldp1q vm_index_5_inst
(
	.q /* OUT */ (binc),
	.d /* IN */ (din_5),
	.g /* IN */ (vmwr),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (60) - vm[6] : ldp1q
ldp1q vm_index_6_inst
(
	.q /* OUT */ (csyncen),
	.d /* IN */ (din_6),
	.g /* IN */ (vmwr),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (61) - vm[7] : ldp2q
ldp2q vm_index_7_inst
(
	.q /* OUT */ (bgwen),
	.d /* IN */ (din_7),
	.g /* IN */ (vmwr),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (62) - vm[8] : ldp1q
ldp1q vm_index_8_inst
(
	.q /* OUT */ (varmod),
	.d /* IN */ (din_8),
	.g /* IN */ (vmwr),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (63) - ppn[9-11] : ldp2q
ldp2q ppn_from_9_to_11_inst_0
(
	.q /* OUT */ (ppn_0),
	.d /* IN */ (din_9),
	.g /* IN */ (vmwr),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
ldp2q ppn_from_9_to_11_inst_1
(
	.q /* OUT */ (ppn_1),
	.d /* IN */ (din_10),
	.g /* IN */ (vmwr),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);
ldp2q ppn_from_9_to_11_inst_2
(
	.q /* OUT */ (ppn_2),
	.d /* IN */ (din_11),
	.g /* IN */ (vmwr),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (65) - cry16 : an2
assign cry16_obuf = vml_2 & vml_1;

// VID.NET (66) - rgb24 : an2
assign rgb24 = vml_2 & vm_1;

// VID.NET (67) - rg16i : nd2
assign rg16i = ~(vm_2 & vml_1);

// VID.NET (68) - rg16 : ivu
assign rg16 = ~rg16i;

// VID.NET (69) - rgb16 : an2
assign rgb16_obuf = vm_2 & vm_1;

// VID.NET (70) - syncen : iv
assign syncen = ~vm_3;

// VID.NET (82) - tcountl : nd2
assign tcountl = ~(test1w & din_0);

// VID.NET (83) - tcount : iv
assign tcount_obuf = ~tcountl;

// VID.NET (84) - startd3 : nd2
assign startd3 = ~(test1w & din_1);

// VID.NET (85) - test1ws : an2
assign test1ws = test1w & wet;

// VID.NET (86) - mptesti : ldp2q
ldp2q mptesti_inst
(
	.q /* OUT */ (mptesti),
	.d /* IN */ (din_2),
	.g /* IN */ (test1ws),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (87) - mptest : nivh
assign mptest = mptesti;

// VID.NET (88) - vcl : an2
assign vcl = test1w & din_3;

// VID.NET (89) - ndtesti : ldp2q
ldp2q ndtesti_inst
(
	.q /* OUT */ (ndtesti),
	.d /* IN */ (din_4),
	.g /* IN */ (test1ws),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (90) - ndtest : nivh
assign ndtest = ndtesti;

// VID.NET (97) - ppresl : an2
assign ppresl = notstartd & resetl;

// VID.NET (98) - pp[0] : dncnts
dncnts pp_index_0_inst
(
	.q /* OUT */ (pp_0),
	.co /* OUT */ (ppco_0),
	.d /* IN */ (ppn_0),
	.clk /* IN */ (vclk),
	.ci /* IN */ (vcc),
	.ld /* IN */ (pp_obuf),
	.resl /* IN */ (ppresl),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (99) - pp[1] : dncnts
dncnts pp_index_1_inst
(
	.q /* OUT */ (pp_1),
	.co /* OUT */ (ppco_1),
	.d /* IN */ (ppn_1),
	.clk /* IN */ (vclk),
	.ci /* IN */ (ppco_0),
	.ld /* IN */ (pp_obuf),
	.resl /* IN */ (ppresl),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (100) - pp[2] : dncnts
dncnts pp_index_2_inst
(
	.q /* OUT */ (pp_2),
	.co /* OUT */ (ppco_2),
	.d /* IN */ (ppn_2),
	.clk /* IN */ (vclk),
	.ci /* IN */ (ppco_1),
	.ld /* IN */ (pp_obuf),
	.resl /* IN */ (ppresl),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (101) - pp : nivm
assign pp_obuf = ppco_2;

// VID.NET (102) - ppl : iv
assign ppl = ~pp_obuf;

// VID.NET (103) - vcc : tie1
assign vcc = 1'b1;

// VID.NET (104) - ppu[0-2] : dummy

// VID.NET (111) - word2d0 : nd2
assign word2d0 = ~(word2l & pp_obuf);

// VID.NET (112) - word2d1 : nd2
assign word2d1 = ~(word2_obuf & ppl);

// VID.NET (113) - word2d : nd3
assign word2d = ~(word2d0 & word2d1 & notstartd);

// VID.NET (114) - word2 : fd1
fd1 word2_inst
(
	.q /* OUT */ (word2_obuf),
	.qn /* OUT */ (word2l),
	.d /* IN */ (word2d),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (125) - hc : join
assign hc[0] = hc_0;
assign hc[1] = hc_1;
assign hc[2] = hc_2;
assign hc[3] = hc_3;
assign hc[4] = hc_4;
assign hc[5] = hc_5;
assign hc[6] = hc_6;
assign hc[7] = hc_7;
assign hc[8] = hc_8;
assign hc[9] = hc_9;
assign hc[10] = hc_10;

// VID.NET (126) - vc : join
assign vc[0] = vc_0;
assign vc[1] = vc_1;
assign vc[2] = vc_2;
assign vc[3] = vc_3;
assign vc[4] = vc_4;
assign vc[5] = vc_5;
assign vc[6] = vc_6;
assign vc[7] = vc_7;
assign vc[8] = vc_8;
assign vc[9] = vc_9;
assign vc[10] = vc_10;
assign vc[11] = vc_11;

// VID.NET (127) - hcu : dummy

// VID.NET (128) - vcu : dummy

// VID.NET (130) - vres : nd3
assign vres = ~(lockl & viden & resetl);

// VID.NET (131) - vresl : ivh
assign vresl = ~vres;

// VID.NET (132) - hlockl : nd2
assign hlockl = ~(vm_3 & hlock);

// VID.NET (133) - hcresi : nd4
assign hcresi = ~(resetl & hpeql & hlockl & lockl);

// VID.NET (134) - hcres : nivm
assign hcres = hcresi;

// VID.NET (135) - hmresl : nd2
assign hmres = ~(resetl & hlockl);

// VID.NET (136) - hcount : nd2
assign hcount = ~(videnl & tcountl);

// VID.NET (138) - hc[0] : upcnts
upcnts hc_index_0_inst
(
	.q /* OUT */ (hc_0),
	.co /* OUT */ (hco_0),
	.d /* IN */ (din_0),
	.clk /* IN */ (vclk),
	.ci /* IN */ (hcount),
	.ld /* IN */ (hcwr),
	.res /* IN */ (hcres),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (139) - hc[1-9] : upcnts
upcnts hc_from_1_to_9_inst_0
(
	.q /* OUT */ (hc_1),
	.co /* OUT */ (hco_1),
	.d /* IN */ (din_1),
	.clk /* IN */ (vclk),
	.ci /* IN */ (hco_0),
	.ld /* IN */ (hcwr),
	.res /* IN */ (hcres),
	.sys_clk(sys_clk) // Generated
);
upcnts hc_from_1_to_9_inst_1
(
	.q /* OUT */ (hc_2),
	.co /* OUT */ (hco_2),
	.d /* IN */ (din_2),
	.clk /* IN */ (vclk),
	.ci /* IN */ (hco_1),
	.ld /* IN */ (hcwr),
	.res /* IN */ (hcres),
	.sys_clk(sys_clk) // Generated
);
upcnts hc_from_1_to_9_inst_2
(
	.q /* OUT */ (hc_3),
	.co /* OUT */ (hco_3),
	.d /* IN */ (din_3),
	.clk /* IN */ (vclk),
	.ci /* IN */ (hco_2),
	.ld /* IN */ (hcwr),
	.res /* IN */ (hcres),
	.sys_clk(sys_clk) // Generated
);
upcnts hc_from_1_to_9_inst_3
(
	.q /* OUT */ (hc_4),
	.co /* OUT */ (hco_4),
	.d /* IN */ (din_4),
	.clk /* IN */ (vclk),
	.ci /* IN */ (hco_3),
	.ld /* IN */ (hcwr),
	.res /* IN */ (hcres),
	.sys_clk(sys_clk) // Generated
);
upcnts hc_from_1_to_9_inst_4
(
	.q /* OUT */ (hc_5),
	.co /* OUT */ (hco_5),
	.d /* IN */ (din_5),
	.clk /* IN */ (vclk),
	.ci /* IN */ (hco_4),
	.ld /* IN */ (hcwr),
	.res /* IN */ (hcres),
	.sys_clk(sys_clk) // Generated
);
upcnts hc_from_1_to_9_inst_5
(
	.q /* OUT */ (hc_6),
	.co /* OUT */ (hco_6),
	.d /* IN */ (din_6),
	.clk /* IN */ (vclk),
	.ci /* IN */ (hco_5),
	.ld /* IN */ (hcwr),
	.res /* IN */ (hcres),
	.sys_clk(sys_clk) // Generated
);
upcnts hc_from_1_to_9_inst_6
(
	.q /* OUT */ (hc_7),
	.co /* OUT */ (hco_7),
	.d /* IN */ (din_7),
	.clk /* IN */ (vclk),
	.ci /* IN */ (hco_6),
	.ld /* IN */ (hcwr),
	.res /* IN */ (hcres),
	.sys_clk(sys_clk) // Generated
);
upcnts hc_from_1_to_9_inst_7
(
	.q /* OUT */ (hc_8),
	.co /* OUT */ (hco_8),
	.d /* IN */ (din_8),
	.clk /* IN */ (vclk),
	.ci /* IN */ (hco_7),
	.ld /* IN */ (hcwr),
	.res /* IN */ (hcres),
	.sys_clk(sys_clk) // Generated
);
upcnts hc_from_1_to_9_inst_8
(
	.q /* OUT */ (hc_9),
	.co /* OUT */ (hco_9),
	.d /* IN */ (din_9),
	.clk /* IN */ (vclk),
	.ci /* IN */ (hco_8),
	.ld /* IN */ (hcwr),
	.res /* IN */ (hcres),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (141) - hc[10] : upcnts
upcnts hc_index_10_inst
(
	.q /* OUT */ (hc_10),
	.co /* OUT */ (hco_10),
	.d /* IN */ (din_10),
	.clk /* IN */ (vclk),
	.ci /* IN */ (hpeq),
	.ld /* IN */ (hcwr),
	.res /* IN */ (hmres),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (142) - hcb[0-10] : nivh
assign hcb_0 = hc_0;
assign hcb_1 = hc_1;
assign hcb_2 = hc_2;
assign hcb_3 = hc_3;
assign hcb_4 = hc_4;
assign hcb_5 = hc_5;
assign hcb_6 = hc_6;
assign hcb_7 = hc_7;
assign hcb_8 = hc_8;
assign hcb_9 = hc_9;
assign hcb_10_obuf = hc_10;

// VID.NET (144) - hcd[0-10] : ts
assign ts_pe_260_a0_out = hcb_0;
assign ts_pe_260_a0_oe = hcrd;
assign ts_pe_261_a0_out = hcb_1;
assign ts_pe_261_a0_oe = hcrd;
assign ts_pe_262_a0_out = hcb_2;
assign ts_pe_262_a0_oe = hcrd;
assign ts_pe_263_a0_out = hcb_3;
assign ts_pe_263_a0_oe = hcrd;
assign ts_pe_264_a0_out = hcb_4;
assign ts_pe_264_a0_oe = hcrd;
assign ts_pe_265_a0_out = hcb_5;
assign ts_pe_265_a0_oe = hcrd;
assign ts_pe_266_a0_out = hcb_6;
assign ts_pe_266_a0_oe = hcrd;
assign ts_pe_267_a0_out = hcb_7;
assign ts_pe_267_a0_oe = hcrd;
assign ts_pe_268_a0_out = hcb_8;
assign ts_pe_268_a0_oe = hcrd;
assign ts_pe_269_a0_out = hcb_9;
assign ts_pe_269_a0_oe = hcrd;
assign ts_pe_270_a0_out = hcb_10_obuf;
assign ts_pe_270_a0_oe = hcrd;

// VID.NET (146) - hco[9] : dummy

// VID.NET (147) - hco[10] : dummy

// VID.NET (152) - hp[0-9] : ldp1q
ldp1q hp_from_0_to_9_inst_0
(
	.q /* OUT */ (hp_0),
	.d /* IN */ (din_0),
	.g /* IN */ (hpwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q hp_from_0_to_9_inst_1
(
	.q /* OUT */ (hp_1),
	.d /* IN */ (din_1),
	.g /* IN */ (hpwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q hp_from_0_to_9_inst_2
(
	.q /* OUT */ (hp_2),
	.d /* IN */ (din_2),
	.g /* IN */ (hpwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q hp_from_0_to_9_inst_3
(
	.q /* OUT */ (hp_3),
	.d /* IN */ (din_3),
	.g /* IN */ (hpwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q hp_from_0_to_9_inst_4
(
	.q /* OUT */ (hp_4),
	.d /* IN */ (din_4),
	.g /* IN */ (hpwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q hp_from_0_to_9_inst_5
(
	.q /* OUT */ (hp_5),
	.d /* IN */ (din_5),
	.g /* IN */ (hpwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q hp_from_0_to_9_inst_6
(
	.q /* OUT */ (hp_6),
	.d /* IN */ (din_6),
	.g /* IN */ (hpwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q hp_from_0_to_9_inst_7
(
	.q /* OUT */ (hp_7),
	.d /* IN */ (din_7),
	.g /* IN */ (hpwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q hp_from_0_to_9_inst_8
(
	.q /* OUT */ (hp_8),
	.d /* IN */ (din_8),
	.g /* IN */ (hpwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q hp_from_0_to_9_inst_9
(
	.q /* OUT */ (hp_9),
	.d /* IN */ (din_9),
	.g /* IN */ (hpwr),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (156) - hpe[0-9] : en
assign hpe_0 = ~(hp_0 ^ hcb_0);
assign hpe_1 = ~(hp_1 ^ hcb_1);
assign hpe_2 = ~(hp_2 ^ hcb_2);
assign hpe_3 = ~(hp_3 ^ hcb_3);
assign hpe_4 = ~(hp_4 ^ hcb_4);
assign hpe_5 = ~(hp_5 ^ hcb_5);
assign hpe_6 = ~(hp_6 ^ hcb_6);
assign hpe_7 = ~(hp_7 ^ hcb_7);
assign hpe_8 = ~(hp_8 ^ hcb_8);
assign hpe_9 = ~(hp_9 ^ hcb_9);

// VID.NET (157) - hpeqt : and10
assign hpeqt = hpe_0 & hpe_1 & hpe_2 & hpe_3 & hpe_4 & hpe_5 & hpe_6 & hpe_7 & hpe_8 & hpe_9;

// VID.NET (158) - hpeqi : and11
assign hpeqi = hpe_0 & hpe_1 & hpe_2 & hpe_3 & hpe_4 & hpe_5 & hpe_6 & hpe_7 & hpe_8 & hpe_9 & viden;

// VID.NET (159) - hpeq : niv
assign hpeq = hpeqi;

// VID.NET (160) - hpeql : iv
assign hpeql = ~hpeq;

// VID.NET (164) - hbb : creg11
creg11 hbb_inst
(
	.creq /* OUT */ (hbbeq),
	.dout_0_out /* BUS */ (ts_pe_260_a1_out),
	.dout_0_oe /* BUS */ (ts_pe_260_a1_oe),
	.dout_0_in /* BUS */ (ts_pe_260_a1_in),
	.dout_1_out /* BUS */ (ts_pe_261_a1_out),
	.dout_1_oe /* BUS */ (ts_pe_261_a1_oe),
	.dout_1_in /* BUS */ (ts_pe_261_a1_in),
	.dout_2_out /* BUS */ (ts_pe_262_a1_out),
	.dout_2_oe /* BUS */ (ts_pe_262_a1_oe),
	.dout_2_in /* BUS */ (ts_pe_262_a1_in),
	.dout_3_out /* BUS */ (ts_pe_263_a1_out),
	.dout_3_oe /* BUS */ (ts_pe_263_a1_oe),
	.dout_3_in /* BUS */ (ts_pe_263_a1_in),
	.dout_4_out /* BUS */ (ts_pe_264_a1_out),
	.dout_4_oe /* BUS */ (ts_pe_264_a1_oe),
	.dout_4_in /* BUS */ (ts_pe_264_a1_in),
	.dout_5_out /* BUS */ (ts_pe_265_a1_out),
	.dout_5_oe /* BUS */ (ts_pe_265_a1_oe),
	.dout_5_in /* BUS */ (ts_pe_265_a1_in),
	.dout_6_out /* BUS */ (ts_pe_266_a1_out),
	.dout_6_oe /* BUS */ (ts_pe_266_a1_oe),
	.dout_6_in /* BUS */ (ts_pe_266_a1_in),
	.dout_7_out /* BUS */ (ts_pe_267_a1_out),
	.dout_7_oe /* BUS */ (ts_pe_267_a1_oe),
	.dout_7_in /* BUS */ (ts_pe_267_a1_in),
	.dout_8_out /* BUS */ (ts_pe_268_a1_out),
	.dout_8_oe /* BUS */ (ts_pe_268_a1_oe),
	.dout_8_in /* BUS */ (ts_pe_268_a1_in),
	.dout_9_out /* BUS */ (ts_pe_269_a1_out),
	.dout_9_oe /* BUS */ (ts_pe_269_a1_oe),
	.dout_9_in /* BUS */ (ts_pe_269_a1_in),
	.dout_10_out /* BUS */ (ts_pe_270_a1_out),
	.dout_10_oe /* BUS */ (ts_pe_270_a1_oe),
	.dout_10_in /* BUS */ (ts_pe_270_a1_in),
	.count_0 /* IN */ (hcb_0),
	.count_1 /* IN */ (hcb_1),
	.count_2 /* IN */ (hcb_2),
	.count_3 /* IN */ (hcb_3),
	.count_4 /* IN */ (hcb_4),
	.count_5 /* IN */ (hcb_5),
	.count_6 /* IN */ (hcb_6),
	.count_7 /* IN */ (hcb_7),
	.count_8 /* IN */ (hcb_8),
	.count_9 /* IN */ (hcb_9),
	.count_10 /* IN */ (hcb_10_obuf),
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
	.crwr /* IN */ (hbbwr),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (165) - hbe : creg11
creg11 hbe_inst
(
	.creq /* OUT */ (hbeeq),
	.dout_0_out /* BUS */ (ts_pe_260_a2_out),
	.dout_0_oe /* BUS */ (ts_pe_260_a2_oe),
	.dout_0_in /* BUS */ (ts_pe_260_a2_in),
	.dout_1_out /* BUS */ (ts_pe_261_a2_out),
	.dout_1_oe /* BUS */ (ts_pe_261_a2_oe),
	.dout_1_in /* BUS */ (ts_pe_261_a2_in),
	.dout_2_out /* BUS */ (ts_pe_262_a2_out),
	.dout_2_oe /* BUS */ (ts_pe_262_a2_oe),
	.dout_2_in /* BUS */ (ts_pe_262_a2_in),
	.dout_3_out /* BUS */ (ts_pe_263_a2_out),
	.dout_3_oe /* BUS */ (ts_pe_263_a2_oe),
	.dout_3_in /* BUS */ (ts_pe_263_a2_in),
	.dout_4_out /* BUS */ (ts_pe_264_a2_out),
	.dout_4_oe /* BUS */ (ts_pe_264_a2_oe),
	.dout_4_in /* BUS */ (ts_pe_264_a2_in),
	.dout_5_out /* BUS */ (ts_pe_265_a2_out),
	.dout_5_oe /* BUS */ (ts_pe_265_a2_oe),
	.dout_5_in /* BUS */ (ts_pe_265_a2_in),
	.dout_6_out /* BUS */ (ts_pe_266_a2_out),
	.dout_6_oe /* BUS */ (ts_pe_266_a2_oe),
	.dout_6_in /* BUS */ (ts_pe_266_a2_in),
	.dout_7_out /* BUS */ (ts_pe_267_a2_out),
	.dout_7_oe /* BUS */ (ts_pe_267_a2_oe),
	.dout_7_in /* BUS */ (ts_pe_267_a2_in),
	.dout_8_out /* BUS */ (ts_pe_268_a2_out),
	.dout_8_oe /* BUS */ (ts_pe_268_a2_oe),
	.dout_8_in /* BUS */ (ts_pe_268_a2_in),
	.dout_9_out /* BUS */ (ts_pe_269_a2_out),
	.dout_9_oe /* BUS */ (ts_pe_269_a2_oe),
	.dout_9_in /* BUS */ (ts_pe_269_a2_in),
	.dout_10_out /* BUS */ (ts_pe_270_a2_out),
	.dout_10_oe /* BUS */ (ts_pe_270_a2_oe),
	.dout_10_in /* BUS */ (ts_pe_270_a2_in),
	.count_0 /* IN */ (hcb_0),
	.count_1 /* IN */ (hcb_1),
	.count_2 /* IN */ (hcb_2),
	.count_3 /* IN */ (hcb_3),
	.count_4 /* IN */ (hcb_4),
	.count_5 /* IN */ (hcb_5),
	.count_6 /* IN */ (hcb_6),
	.count_7 /* IN */ (hcb_7),
	.count_8 /* IN */ (hcb_8),
	.count_9 /* IN */ (hcb_9),
	.count_10 /* IN */ (hcb_10_obuf),
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
	.crwr /* IN */ (hbewr),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (166) - hdb1 : creg11
creg11 hdb1_inst
(
	.creq /* OUT */ (hdb1eq),
	.dout_0_out /* BUS */ (ts_pe_260_a3_out),
	.dout_0_oe /* BUS */ (ts_pe_260_a3_oe),
	.dout_0_in /* BUS */ (ts_pe_260_a3_in),
	.dout_1_out /* BUS */ (ts_pe_261_a3_out),
	.dout_1_oe /* BUS */ (ts_pe_261_a3_oe),
	.dout_1_in /* BUS */ (ts_pe_261_a3_in),
	.dout_2_out /* BUS */ (ts_pe_262_a3_out),
	.dout_2_oe /* BUS */ (ts_pe_262_a3_oe),
	.dout_2_in /* BUS */ (ts_pe_262_a3_in),
	.dout_3_out /* BUS */ (ts_pe_263_a3_out),
	.dout_3_oe /* BUS */ (ts_pe_263_a3_oe),
	.dout_3_in /* BUS */ (ts_pe_263_a3_in),
	.dout_4_out /* BUS */ (ts_pe_264_a3_out),
	.dout_4_oe /* BUS */ (ts_pe_264_a3_oe),
	.dout_4_in /* BUS */ (ts_pe_264_a3_in),
	.dout_5_out /* BUS */ (ts_pe_265_a3_out),
	.dout_5_oe /* BUS */ (ts_pe_265_a3_oe),
	.dout_5_in /* BUS */ (ts_pe_265_a3_in),
	.dout_6_out /* BUS */ (ts_pe_266_a3_out),
	.dout_6_oe /* BUS */ (ts_pe_266_a3_oe),
	.dout_6_in /* BUS */ (ts_pe_266_a3_in),
	.dout_7_out /* BUS */ (ts_pe_267_a3_out),
	.dout_7_oe /* BUS */ (ts_pe_267_a3_oe),
	.dout_7_in /* BUS */ (ts_pe_267_a3_in),
	.dout_8_out /* BUS */ (ts_pe_268_a3_out),
	.dout_8_oe /* BUS */ (ts_pe_268_a3_oe),
	.dout_8_in /* BUS */ (ts_pe_268_a3_in),
	.dout_9_out /* BUS */ (ts_pe_269_a3_out),
	.dout_9_oe /* BUS */ (ts_pe_269_a3_oe),
	.dout_9_in /* BUS */ (ts_pe_269_a3_in),
	.dout_10_out /* BUS */ (ts_pe_270_a3_out),
	.dout_10_oe /* BUS */ (ts_pe_270_a3_oe),
	.dout_10_in /* BUS */ (ts_pe_270_a3_in),
	.count_0 /* IN */ (hcb_0),
	.count_1 /* IN */ (hcb_1),
	.count_2 /* IN */ (hcb_2),
	.count_3 /* IN */ (hcb_3),
	.count_4 /* IN */ (hcb_4),
	.count_5 /* IN */ (hcb_5),
	.count_6 /* IN */ (hcb_6),
	.count_7 /* IN */ (hcb_7),
	.count_8 /* IN */ (hcb_8),
	.count_9 /* IN */ (hcb_9),
	.count_10 /* IN */ (hcb_10_obuf),
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
	.crwr /* IN */ (hdb1wr),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (167) - hdb2 : creg11
creg11 hdb2_inst
(
	.creq /* OUT */ (hdb2eq),
	.dout_0_out /* BUS */ (ts_pe_260_a4_out),
	.dout_0_oe /* BUS */ (ts_pe_260_a4_oe),
	.dout_0_in /* BUS */ (ts_pe_260_a4_in),
	.dout_1_out /* BUS */ (ts_pe_261_a4_out),
	.dout_1_oe /* BUS */ (ts_pe_261_a4_oe),
	.dout_1_in /* BUS */ (ts_pe_261_a4_in),
	.dout_2_out /* BUS */ (ts_pe_262_a4_out),
	.dout_2_oe /* BUS */ (ts_pe_262_a4_oe),
	.dout_2_in /* BUS */ (ts_pe_262_a4_in),
	.dout_3_out /* BUS */ (ts_pe_263_a4_out),
	.dout_3_oe /* BUS */ (ts_pe_263_a4_oe),
	.dout_3_in /* BUS */ (ts_pe_263_a4_in),
	.dout_4_out /* BUS */ (ts_pe_264_a4_out),
	.dout_4_oe /* BUS */ (ts_pe_264_a4_oe),
	.dout_4_in /* BUS */ (ts_pe_264_a4_in),
	.dout_5_out /* BUS */ (ts_pe_265_a4_out),
	.dout_5_oe /* BUS */ (ts_pe_265_a4_oe),
	.dout_5_in /* BUS */ (ts_pe_265_a4_in),
	.dout_6_out /* BUS */ (ts_pe_266_a4_out),
	.dout_6_oe /* BUS */ (ts_pe_266_a4_oe),
	.dout_6_in /* BUS */ (ts_pe_266_a4_in),
	.dout_7_out /* BUS */ (ts_pe_267_a4_out),
	.dout_7_oe /* BUS */ (ts_pe_267_a4_oe),
	.dout_7_in /* BUS */ (ts_pe_267_a4_in),
	.dout_8_out /* BUS */ (ts_pe_268_a4_out),
	.dout_8_oe /* BUS */ (ts_pe_268_a4_oe),
	.dout_8_in /* BUS */ (ts_pe_268_a4_in),
	.dout_9_out /* BUS */ (ts_pe_269_a4_out),
	.dout_9_oe /* BUS */ (ts_pe_269_a4_oe),
	.dout_9_in /* BUS */ (ts_pe_269_a4_in),
	.dout_10_out /* BUS */ (ts_pe_270_a4_out),
	.dout_10_oe /* BUS */ (ts_pe_270_a4_oe),
	.dout_10_in /* BUS */ (ts_pe_270_a4_in),
	.count_0 /* IN */ (hcb_0),
	.count_1 /* IN */ (hcb_1),
	.count_2 /* IN */ (hcb_2),
	.count_3 /* IN */ (hcb_3),
	.count_4 /* IN */ (hcb_4),
	.count_5 /* IN */ (hcb_5),
	.count_6 /* IN */ (hcb_6),
	.count_7 /* IN */ (hcb_7),
	.count_8 /* IN */ (hcb_8),
	.count_9 /* IN */ (hcb_9),
	.count_10 /* IN */ (hcb_10_obuf),
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
	.crwr /* IN */ (hdb2wr),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (168) - hde : creg11
creg11 hde_inst
(
	.creq /* OUT */ (hdeeq),
	.dout_0_out /* BUS */ (ts_pe_260_a5_out),
	.dout_0_oe /* BUS */ (ts_pe_260_a5_oe),
	.dout_0_in /* BUS */ (ts_pe_260_a5_in),
	.dout_1_out /* BUS */ (ts_pe_261_a5_out),
	.dout_1_oe /* BUS */ (ts_pe_261_a5_oe),
	.dout_1_in /* BUS */ (ts_pe_261_a5_in),
	.dout_2_out /* BUS */ (ts_pe_262_a5_out),
	.dout_2_oe /* BUS */ (ts_pe_262_a5_oe),
	.dout_2_in /* BUS */ (ts_pe_262_a5_in),
	.dout_3_out /* BUS */ (ts_pe_263_a5_out),
	.dout_3_oe /* BUS */ (ts_pe_263_a5_oe),
	.dout_3_in /* BUS */ (ts_pe_263_a5_in),
	.dout_4_out /* BUS */ (ts_pe_264_a5_out),
	.dout_4_oe /* BUS */ (ts_pe_264_a5_oe),
	.dout_4_in /* BUS */ (ts_pe_264_a5_in),
	.dout_5_out /* BUS */ (ts_pe_265_a5_out),
	.dout_5_oe /* BUS */ (ts_pe_265_a5_oe),
	.dout_5_in /* BUS */ (ts_pe_265_a5_in),
	.dout_6_out /* BUS */ (ts_pe_266_a5_out),
	.dout_6_oe /* BUS */ (ts_pe_266_a5_oe),
	.dout_6_in /* BUS */ (ts_pe_266_a5_in),
	.dout_7_out /* BUS */ (ts_pe_267_a5_out),
	.dout_7_oe /* BUS */ (ts_pe_267_a5_oe),
	.dout_7_in /* BUS */ (ts_pe_267_a5_in),
	.dout_8_out /* BUS */ (ts_pe_268_a5_out),
	.dout_8_oe /* BUS */ (ts_pe_268_a5_oe),
	.dout_8_in /* BUS */ (ts_pe_268_a5_in),
	.dout_9_out /* BUS */ (ts_pe_269_a5_out),
	.dout_9_oe /* BUS */ (ts_pe_269_a5_oe),
	.dout_9_in /* BUS */ (ts_pe_269_a5_in),
	.dout_10_out /* BUS */ (ts_pe_270_a5_out),
	.dout_10_oe /* BUS */ (ts_pe_270_a5_oe),
	.dout_10_in /* BUS */ (ts_pe_270_a5_in),
	.count_0 /* IN */ (hcb_0),
	.count_1 /* IN */ (hcb_1),
	.count_2 /* IN */ (hcb_2),
	.count_3 /* IN */ (hcb_3),
	.count_4 /* IN */ (hcb_4),
	.count_5 /* IN */ (hcb_5),
	.count_6 /* IN */ (hcb_6),
	.count_7 /* IN */ (hcb_7),
	.count_8 /* IN */ (hcb_8),
	.count_9 /* IN */ (hcb_9),
	.count_10 /* IN */ (hcb_10_obuf),
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
	.crwr /* IN */ (hdewr),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (175) - hs[0-10] : ldp1q
ldp1q hs_from_0_to_10_inst_0
(
	.q /* OUT */ (hs_0),
	.d /* IN */ (din_0),
	.g /* IN */ (hswr),
	.sys_clk(sys_clk) // Generated
);
ldp1q hs_from_0_to_10_inst_1
(
	.q /* OUT */ (hs_1),
	.d /* IN */ (din_1),
	.g /* IN */ (hswr),
	.sys_clk(sys_clk) // Generated
);
ldp1q hs_from_0_to_10_inst_2
(
	.q /* OUT */ (hs_2),
	.d /* IN */ (din_2),
	.g /* IN */ (hswr),
	.sys_clk(sys_clk) // Generated
);
ldp1q hs_from_0_to_10_inst_3
(
	.q /* OUT */ (hs_3),
	.d /* IN */ (din_3),
	.g /* IN */ (hswr),
	.sys_clk(sys_clk) // Generated
);
ldp1q hs_from_0_to_10_inst_4
(
	.q /* OUT */ (hs_4),
	.d /* IN */ (din_4),
	.g /* IN */ (hswr),
	.sys_clk(sys_clk) // Generated
);
ldp1q hs_from_0_to_10_inst_5
(
	.q /* OUT */ (hs_5),
	.d /* IN */ (din_5),
	.g /* IN */ (hswr),
	.sys_clk(sys_clk) // Generated
);
ldp1q hs_from_0_to_10_inst_6
(
	.q /* OUT */ (hs_6),
	.d /* IN */ (din_6),
	.g /* IN */ (hswr),
	.sys_clk(sys_clk) // Generated
);
ldp1q hs_from_0_to_10_inst_7
(
	.q /* OUT */ (hs_7),
	.d /* IN */ (din_7),
	.g /* IN */ (hswr),
	.sys_clk(sys_clk) // Generated
);
ldp1q hs_from_0_to_10_inst_8
(
	.q /* OUT */ (hs_8),
	.d /* IN */ (din_8),
	.g /* IN */ (hswr),
	.sys_clk(sys_clk) // Generated
);
ldp1q hs_from_0_to_10_inst_9
(
	.q /* OUT */ (hs_9),
	.d /* IN */ (din_9),
	.g /* IN */ (hswr),
	.sys_clk(sys_clk) // Generated
);
ldp1q hs_from_0_to_10_inst_10
(
	.q /* OUT */ (hs_10),
	.d /* IN */ (din_10),
	.g /* IN */ (hswr),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (176) - hse[0-10] : en
assign hse_0 = ~(hs_0 ^ hcb_0);
assign hse_1 = ~(hs_1 ^ hcb_1);
assign hse_2 = ~(hs_2 ^ hcb_2);
assign hse_3 = ~(hs_3 ^ hcb_3);
assign hse_4 = ~(hs_4 ^ hcb_4);
assign hse_5 = ~(hs_5 ^ hcb_5);
assign hse_6 = ~(hs_6 ^ hcb_6);
assign hse_7 = ~(hs_7 ^ hcb_7);
assign hse_8 = ~(hs_8 ^ hcb_8);
assign hse_9 = ~(hs_9 ^ hcb_9);
assign hse_10 = ~(hs_10 ^ hcb_10_obuf);

// VID.NET (177) - hseq : and11
assign hseq = hse_0 & hse_1 & hse_2 & hse_3 & hse_4 & hse_5 & hse_6 & hse_7 & hse_8 & hse_9 & hse_10;

// VID.NET (178) - hvsb : and10
assign hvsb = hse_0 & hse_1 & hse_2 & hse_3 & hse_4 & hse_5 & hse_6 & hse_7 & hse_8 & hse_9;

// VID.NET (184) - hvs[0-9] : ldp1q
ldp1q hvs_from_0_to_9_inst_0
(
	.q /* OUT */ (hvs_0),
	.d /* IN */ (din_0),
	.g /* IN */ (hvswr),
	.sys_clk(sys_clk) // Generated
);
ldp1q hvs_from_0_to_9_inst_1
(
	.q /* OUT */ (hvs_1),
	.d /* IN */ (din_1),
	.g /* IN */ (hvswr),
	.sys_clk(sys_clk) // Generated
);
ldp1q hvs_from_0_to_9_inst_2
(
	.q /* OUT */ (hvs_2),
	.d /* IN */ (din_2),
	.g /* IN */ (hvswr),
	.sys_clk(sys_clk) // Generated
);
ldp1q hvs_from_0_to_9_inst_3
(
	.q /* OUT */ (hvs_3),
	.d /* IN */ (din_3),
	.g /* IN */ (hvswr),
	.sys_clk(sys_clk) // Generated
);
ldp1q hvs_from_0_to_9_inst_4
(
	.q /* OUT */ (hvs_4),
	.d /* IN */ (din_4),
	.g /* IN */ (hvswr),
	.sys_clk(sys_clk) // Generated
);
ldp1q hvs_from_0_to_9_inst_5
(
	.q /* OUT */ (hvs_5),
	.d /* IN */ (din_5),
	.g /* IN */ (hvswr),
	.sys_clk(sys_clk) // Generated
);
ldp1q hvs_from_0_to_9_inst_6
(
	.q /* OUT */ (hvs_6),
	.d /* IN */ (din_6),
	.g /* IN */ (hvswr),
	.sys_clk(sys_clk) // Generated
);
ldp1q hvs_from_0_to_9_inst_7
(
	.q /* OUT */ (hvs_7),
	.d /* IN */ (din_7),
	.g /* IN */ (hvswr),
	.sys_clk(sys_clk) // Generated
);
ldp1q hvs_from_0_to_9_inst_8
(
	.q /* OUT */ (hvs_8),
	.d /* IN */ (din_8),
	.g /* IN */ (hvswr),
	.sys_clk(sys_clk) // Generated
);
ldp1q hvs_from_0_to_9_inst_9
(
	.q /* OUT */ (hvs_9),
	.d /* IN */ (din_9),
	.g /* IN */ (hvswr),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (185) - hvse[0-9] : en
assign hvse_0 = ~(hvs_0 ^ hcb_0);
assign hvse_1 = ~(hvs_1 ^ hcb_1);
assign hvse_2 = ~(hvs_2 ^ hcb_2);
assign hvse_3 = ~(hvs_3 ^ hcb_3);
assign hvse_4 = ~(hvs_4 ^ hcb_4);
assign hvse_5 = ~(hvs_5 ^ hcb_5);
assign hvse_6 = ~(hvs_6 ^ hcb_6);
assign hvse_7 = ~(hvs_7 ^ hcb_7);
assign hvse_8 = ~(hvs_8 ^ hcb_8);
assign hvse_9 = ~(hvs_9 ^ hcb_9);

// VID.NET (186) - hvse : and10
assign hvse = hvse_0 & hvse_1 & hvse_2 & hvse_3 & hvse_4 & hvse_5 & hvse_6 & hvse_7 & hvse_8 & hvse_9;

// VID.NET (191) - heq[0-9] : ldp1q
ldp1q heq_from_0_to_9_inst_0
(
	.q /* OUT */ (heq_0),
	.d /* IN */ (din_0),
	.g /* IN */ (heqw),
	.sys_clk(sys_clk) // Generated
);
ldp1q heq_from_0_to_9_inst_1
(
	.q /* OUT */ (heq_1),
	.d /* IN */ (din_1),
	.g /* IN */ (heqw),
	.sys_clk(sys_clk) // Generated
);
ldp1q heq_from_0_to_9_inst_2
(
	.q /* OUT */ (heq_2),
	.d /* IN */ (din_2),
	.g /* IN */ (heqw),
	.sys_clk(sys_clk) // Generated
);
ldp1q heq_from_0_to_9_inst_3
(
	.q /* OUT */ (heq_3),
	.d /* IN */ (din_3),
	.g /* IN */ (heqw),
	.sys_clk(sys_clk) // Generated
);
ldp1q heq_from_0_to_9_inst_4
(
	.q /* OUT */ (heq_4),
	.d /* IN */ (din_4),
	.g /* IN */ (heqw),
	.sys_clk(sys_clk) // Generated
);
ldp1q heq_from_0_to_9_inst_5
(
	.q /* OUT */ (heq_5),
	.d /* IN */ (din_5),
	.g /* IN */ (heqw),
	.sys_clk(sys_clk) // Generated
);
ldp1q heq_from_0_to_9_inst_6
(
	.q /* OUT */ (heq_6),
	.d /* IN */ (din_6),
	.g /* IN */ (heqw),
	.sys_clk(sys_clk) // Generated
);
ldp1q heq_from_0_to_9_inst_7
(
	.q /* OUT */ (heq_7),
	.d /* IN */ (din_7),
	.g /* IN */ (heqw),
	.sys_clk(sys_clk) // Generated
);
ldp1q heq_from_0_to_9_inst_8
(
	.q /* OUT */ (heq_8),
	.d /* IN */ (din_8),
	.g /* IN */ (heqw),
	.sys_clk(sys_clk) // Generated
);
ldp1q heq_from_0_to_9_inst_9
(
	.q /* OUT */ (heq_9),
	.d /* IN */ (din_9),
	.g /* IN */ (heqw),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (192) - heqe[0-9] : en
assign heqe_0 = ~(heq_0 ^ hcb_0);
assign heqe_1 = ~(heq_1 ^ hcb_1);
assign heqe_2 = ~(heq_2 ^ hcb_2);
assign heqe_3 = ~(heq_3 ^ hcb_3);
assign heqe_4 = ~(heq_4 ^ hcb_4);
assign heqe_5 = ~(heq_5 ^ hcb_5);
assign heqe_6 = ~(heq_6 ^ hcb_6);
assign heqe_7 = ~(heq_7 ^ hcb_7);
assign heqe_8 = ~(heq_8 ^ hcb_8);
assign heqe_9 = ~(heq_9 ^ hcb_9);

// VID.NET (193) - heqe : and10
assign heqe = heqe_0 & heqe_1 & heqe_2 & heqe_3 & heqe_4 & heqe_5 & heqe_6 & heqe_7 & heqe_8 & heqe_9;

// VID.NET (202) - nextfieldl : nd2
assign nextfieldl = ~(vpeq & hpeq);

// VID.NET (203) - nextfield : iv
assign nextfield = ~nextfieldl;

// VID.NET (204) - vlockl : nd2
assign vlockl = ~(vm_3 & vlock);

// VID.NET (205) - vcresi : nd4
assign vcresi = ~(resetl & nextfieldl & vlockl & lockl);

// VID.NET (206) - vcres : nivm
assign vcres = vcresi;

// VID.NET (207) - res : iv
assign res = ~resetl;

// VID.NET (208) - vcount : or2
assign vcount = hpeq | tcount_obuf;

// VID.NET (210) - vc[0] : upcnts
upcnts vc_index_0_inst
(
	.q /* OUT */ (vc_0),
	.co /* OUT */ (vco_0),
	.d /* IN */ (din_0),
	.clk /* IN */ (vclk),
	.ci /* IN */ (vcount),
	.ld /* IN */ (vcwr),
	.res /* IN */ (vcres),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (211) - vc[1-10] : upcnts
upcnts vc_from_1_to_10_inst_0
(
	.q /* OUT */ (vc_1),
	.co /* OUT */ (vco_1),
	.d /* IN */ (din_1),
	.clk /* IN */ (vclk),
	.ci /* IN */ (vco_0),
	.ld /* IN */ (vcwr),
	.res /* IN */ (vcres),
	.sys_clk(sys_clk) // Generated
);
upcnts vc_from_1_to_10_inst_1
(
	.q /* OUT */ (vc_2),
	.co /* OUT */ (vco_2),
	.d /* IN */ (din_2),
	.clk /* IN */ (vclk),
	.ci /* IN */ (vco_1),
	.ld /* IN */ (vcwr),
	.res /* IN */ (vcres),
	.sys_clk(sys_clk) // Generated
);
upcnts vc_from_1_to_10_inst_2
(
	.q /* OUT */ (vc_3),
	.co /* OUT */ (vco_3),
	.d /* IN */ (din_3),
	.clk /* IN */ (vclk),
	.ci /* IN */ (vco_2),
	.ld /* IN */ (vcwr),
	.res /* IN */ (vcres),
	.sys_clk(sys_clk) // Generated
);
upcnts vc_from_1_to_10_inst_3
(
	.q /* OUT */ (vc_4),
	.co /* OUT */ (vco_4),
	.d /* IN */ (din_4),
	.clk /* IN */ (vclk),
	.ci /* IN */ (vco_3),
	.ld /* IN */ (vcwr),
	.res /* IN */ (vcres),
	.sys_clk(sys_clk) // Generated
);
upcnts vc_from_1_to_10_inst_4
(
	.q /* OUT */ (vc_5),
	.co /* OUT */ (vco_5),
	.d /* IN */ (din_5),
	.clk /* IN */ (vclk),
	.ci /* IN */ (vco_4),
	.ld /* IN */ (vcwr),
	.res /* IN */ (vcres),
	.sys_clk(sys_clk) // Generated
);
upcnts vc_from_1_to_10_inst_5
(
	.q /* OUT */ (vc_6),
	.co /* OUT */ (vco_6),
	.d /* IN */ (din_6),
	.clk /* IN */ (vclk),
	.ci /* IN */ (vco_5),
	.ld /* IN */ (vcwr),
	.res /* IN */ (vcres),
	.sys_clk(sys_clk) // Generated
);
upcnts vc_from_1_to_10_inst_6
(
	.q /* OUT */ (vc_7),
	.co /* OUT */ (vco_7),
	.d /* IN */ (din_7),
	.clk /* IN */ (vclk),
	.ci /* IN */ (vco_6),
	.ld /* IN */ (vcwr),
	.res /* IN */ (vcres),
	.sys_clk(sys_clk) // Generated
);
upcnts vc_from_1_to_10_inst_7
(
	.q /* OUT */ (vc_8),
	.co /* OUT */ (vco_8),
	.d /* IN */ (din_8),
	.clk /* IN */ (vclk),
	.ci /* IN */ (vco_7),
	.ld /* IN */ (vcwr),
	.res /* IN */ (vcres),
	.sys_clk(sys_clk) // Generated
);
upcnts vc_from_1_to_10_inst_8
(
	.q /* OUT */ (vc_9),
	.co /* OUT */ (vco_9),
	.d /* IN */ (din_9),
	.clk /* IN */ (vclk),
	.ci /* IN */ (vco_8),
	.ld /* IN */ (vcwr),
	.res /* IN */ (vcres),
	.sys_clk(sys_clk) // Generated
);
upcnts vc_from_1_to_10_inst_9
(
	.q /* OUT */ (vc_10),
	.co /* OUT */ (vco_10),
	.d /* IN */ (din_10),
	.clk /* IN */ (vclk),
	.ci /* IN */ (vco_9),
	.ld /* IN */ (vcwr),
	.res /* IN */ (vcres),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (212) - vc[11] : upcnts
upcnts vc_index_11_inst
(
	.q /* OUT */ (vc_11),
	.co /* OUT */ (vco_11),
	.d /* IN */ (din_11),
	.clk /* IN */ (vclk),
	.ci /* IN */ (nextfield),
	.ld /* IN */ (vcwr),
	.res /* IN */ (res),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (213) - vcb[0-10] : nivm
assign vcb_0 = vc_0;
assign vcb_1 = vc_1;
assign vcb_2 = vc_2;
assign vcb_3 = vc_3;
assign vcb_4 = vc_4;
assign vcb_5 = vc_5;
assign vcb_6 = vc_6;
assign vcb_7 = vc_7;
assign vcb_8 = vc_8;
assign vcb_9 = vc_9;
assign vcb_10 = vc_10;

// VID.NET (215) - vcd[0-11] : ts
assign ts_pe_260_a6_out = vc_0;
assign ts_pe_260_a6_oe = vcrd;
assign ts_pe_261_a6_out = vc_1;
assign ts_pe_261_a6_oe = vcrd;
assign ts_pe_262_a6_out = vc_2;
assign ts_pe_262_a6_oe = vcrd;
assign ts_pe_263_a6_out = vc_3;
assign ts_pe_263_a6_oe = vcrd;
assign ts_pe_264_a6_out = vc_4;
assign ts_pe_264_a6_oe = vcrd;
assign ts_pe_265_a6_out = vc_5;
assign ts_pe_265_a6_oe = vcrd;
assign ts_pe_266_a6_out = vc_6;
assign ts_pe_266_a6_oe = vcrd;
assign ts_pe_267_a6_out = vc_7;
assign ts_pe_267_a6_oe = vcrd;
assign ts_pe_268_a6_out = vc_8;
assign ts_pe_268_a6_oe = vcrd;
assign ts_pe_269_a6_out = vc_9;
assign ts_pe_269_a6_oe = vcrd;
assign ts_pe_270_a6_out = vc_10;
assign ts_pe_270_a6_oe = vcrd;
assign ts_pe_271_a0_out = vc_11;
assign ts_pe_271_a0_oe = vcrd;

// VID.NET (217) - vco[10] : dummy

// VID.NET (218) - vco[11] : dummy

// VID.NET (222) - vp[0-10] : ldp1q
ldp1q vp_from_0_to_10_inst_0
(
	.q /* OUT */ (vp_0),
	.d /* IN */ (din_0),
	.g /* IN */ (vpwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q vp_from_0_to_10_inst_1
(
	.q /* OUT */ (vp_1),
	.d /* IN */ (din_1),
	.g /* IN */ (vpwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q vp_from_0_to_10_inst_2
(
	.q /* OUT */ (vp_2),
	.d /* IN */ (din_2),
	.g /* IN */ (vpwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q vp_from_0_to_10_inst_3
(
	.q /* OUT */ (vp_3),
	.d /* IN */ (din_3),
	.g /* IN */ (vpwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q vp_from_0_to_10_inst_4
(
	.q /* OUT */ (vp_4),
	.d /* IN */ (din_4),
	.g /* IN */ (vpwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q vp_from_0_to_10_inst_5
(
	.q /* OUT */ (vp_5),
	.d /* IN */ (din_5),
	.g /* IN */ (vpwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q vp_from_0_to_10_inst_6
(
	.q /* OUT */ (vp_6),
	.d /* IN */ (din_6),
	.g /* IN */ (vpwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q vp_from_0_to_10_inst_7
(
	.q /* OUT */ (vp_7),
	.d /* IN */ (din_7),
	.g /* IN */ (vpwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q vp_from_0_to_10_inst_8
(
	.q /* OUT */ (vp_8),
	.d /* IN */ (din_8),
	.g /* IN */ (vpwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q vp_from_0_to_10_inst_9
(
	.q /* OUT */ (vp_9),
	.d /* IN */ (din_9),
	.g /* IN */ (vpwr),
	.sys_clk(sys_clk) // Generated
);
ldp1q vp_from_0_to_10_inst_10
(
	.q /* OUT */ (vp_10),
	.d /* IN */ (din_10),
	.g /* IN */ (vpwr),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (223) - vpe[0-10] : en
assign vpe_0 = ~(vp_0 ^ vcb_0);
assign vpe_1 = ~(vp_1 ^ vcb_1);
assign vpe_2 = ~(vp_2 ^ vcb_2);
assign vpe_3 = ~(vp_3 ^ vcb_3);
assign vpe_4 = ~(vp_4 ^ vcb_4);
assign vpe_5 = ~(vp_5 ^ vcb_5);
assign vpe_6 = ~(vp_6 ^ vcb_6);
assign vpe_7 = ~(vp_7 ^ vcb_7);
assign vpe_8 = ~(vp_8 ^ vcb_8);
assign vpe_9 = ~(vp_9 ^ vcb_9);
assign vpe_10 = ~(vp_10 ^ vcb_10);

// VID.NET (224) - vpeqt : and11
assign vpeqt = vpe_0 & vpe_1 & vpe_2 & vpe_3 & vpe_4 & vpe_5 & vpe_6 & vpe_7 & vpe_8 & vpe_9 & vpe_10;

// VID.NET (225) - vpeq : and12
assign vpeq = vpe_0 & vpe_1 & vpe_2 & vpe_3 & vpe_4 & vpe_5 & vpe_6 & vpe_7 & vpe_8 & vpe_9 & vpe_10 & viden;

// VID.NET (227) - vbb : creg11
creg11 vbb_inst
(
	.creq /* OUT */ (vbbeq),
	.dout_0_out /* BUS */ (ts_pe_260_a7_out),
	.dout_0_oe /* BUS */ (ts_pe_260_a7_oe),
	.dout_0_in /* BUS */ (ts_pe_260_a7_in),
	.dout_1_out /* BUS */ (ts_pe_261_a7_out),
	.dout_1_oe /* BUS */ (ts_pe_261_a7_oe),
	.dout_1_in /* BUS */ (ts_pe_261_a7_in),
	.dout_2_out /* BUS */ (ts_pe_262_a7_out),
	.dout_2_oe /* BUS */ (ts_pe_262_a7_oe),
	.dout_2_in /* BUS */ (ts_pe_262_a7_in),
	.dout_3_out /* BUS */ (ts_pe_263_a7_out),
	.dout_3_oe /* BUS */ (ts_pe_263_a7_oe),
	.dout_3_in /* BUS */ (ts_pe_263_a7_in),
	.dout_4_out /* BUS */ (ts_pe_264_a7_out),
	.dout_4_oe /* BUS */ (ts_pe_264_a7_oe),
	.dout_4_in /* BUS */ (ts_pe_264_a7_in),
	.dout_5_out /* BUS */ (ts_pe_265_a7_out),
	.dout_5_oe /* BUS */ (ts_pe_265_a7_oe),
	.dout_5_in /* BUS */ (ts_pe_265_a7_in),
	.dout_6_out /* BUS */ (ts_pe_266_a7_out),
	.dout_6_oe /* BUS */ (ts_pe_266_a7_oe),
	.dout_6_in /* BUS */ (ts_pe_266_a7_in),
	.dout_7_out /* BUS */ (ts_pe_267_a7_out),
	.dout_7_oe /* BUS */ (ts_pe_267_a7_oe),
	.dout_7_in /* BUS */ (ts_pe_267_a7_in),
	.dout_8_out /* BUS */ (ts_pe_268_a7_out),
	.dout_8_oe /* BUS */ (ts_pe_268_a7_oe),
	.dout_8_in /* BUS */ (ts_pe_268_a7_in),
	.dout_9_out /* BUS */ (ts_pe_269_a7_out),
	.dout_9_oe /* BUS */ (ts_pe_269_a7_oe),
	.dout_9_in /* BUS */ (ts_pe_269_a7_in),
	.dout_10_out /* BUS */ (ts_pe_270_a7_out),
	.dout_10_oe /* BUS */ (ts_pe_270_a7_oe),
	.dout_10_in /* BUS */ (ts_pe_270_a7_in),
	.count_0 /* IN */ (vcb_0),
	.count_1 /* IN */ (vcb_1),
	.count_2 /* IN */ (vcb_2),
	.count_3 /* IN */ (vcb_3),
	.count_4 /* IN */ (vcb_4),
	.count_5 /* IN */ (vcb_5),
	.count_6 /* IN */ (vcb_6),
	.count_7 /* IN */ (vcb_7),
	.count_8 /* IN */ (vcb_8),
	.count_9 /* IN */ (vcb_9),
	.count_10 /* IN */ (vcb_10),
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
	.crwr /* IN */ (vbbwr),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (228) - vbe : creg11
creg11 vbe_inst
(
	.creq /* OUT */ (vbeeq),
	.dout_0_out /* BUS */ (ts_pe_260_a8_out),
	.dout_0_oe /* BUS */ (ts_pe_260_a8_oe),
	.dout_0_in /* BUS */ (ts_pe_260_a8_in),
	.dout_1_out /* BUS */ (ts_pe_261_a8_out),
	.dout_1_oe /* BUS */ (ts_pe_261_a8_oe),
	.dout_1_in /* BUS */ (ts_pe_261_a8_in),
	.dout_2_out /* BUS */ (ts_pe_262_a8_out),
	.dout_2_oe /* BUS */ (ts_pe_262_a8_oe),
	.dout_2_in /* BUS */ (ts_pe_262_a8_in),
	.dout_3_out /* BUS */ (ts_pe_263_a8_out),
	.dout_3_oe /* BUS */ (ts_pe_263_a8_oe),
	.dout_3_in /* BUS */ (ts_pe_263_a8_in),
	.dout_4_out /* BUS */ (ts_pe_264_a8_out),
	.dout_4_oe /* BUS */ (ts_pe_264_a8_oe),
	.dout_4_in /* BUS */ (ts_pe_264_a8_in),
	.dout_5_out /* BUS */ (ts_pe_265_a8_out),
	.dout_5_oe /* BUS */ (ts_pe_265_a8_oe),
	.dout_5_in /* BUS */ (ts_pe_265_a8_in),
	.dout_6_out /* BUS */ (ts_pe_266_a8_out),
	.dout_6_oe /* BUS */ (ts_pe_266_a8_oe),
	.dout_6_in /* BUS */ (ts_pe_266_a8_in),
	.dout_7_out /* BUS */ (ts_pe_267_a8_out),
	.dout_7_oe /* BUS */ (ts_pe_267_a8_oe),
	.dout_7_in /* BUS */ (ts_pe_267_a8_in),
	.dout_8_out /* BUS */ (ts_pe_268_a8_out),
	.dout_8_oe /* BUS */ (ts_pe_268_a8_oe),
	.dout_8_in /* BUS */ (ts_pe_268_a8_in),
	.dout_9_out /* BUS */ (ts_pe_269_a8_out),
	.dout_9_oe /* BUS */ (ts_pe_269_a8_oe),
	.dout_9_in /* BUS */ (ts_pe_269_a8_in),
	.dout_10_out /* BUS */ (ts_pe_270_a8_out),
	.dout_10_oe /* BUS */ (ts_pe_270_a8_oe),
	.dout_10_in /* BUS */ (ts_pe_270_a8_in),
	.count_0 /* IN */ (vcb_0),
	.count_1 /* IN */ (vcb_1),
	.count_2 /* IN */ (vcb_2),
	.count_3 /* IN */ (vcb_3),
	.count_4 /* IN */ (vcb_4),
	.count_5 /* IN */ (vcb_5),
	.count_6 /* IN */ (vcb_6),
	.count_7 /* IN */ (vcb_7),
	.count_8 /* IN */ (vcb_8),
	.count_9 /* IN */ (vcb_9),
	.count_10 /* IN */ (vcb_10),
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
	.crwr /* IN */ (vbewr),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (229) - vdb : creg11
creg11 vdb_inst
(
	.creq /* OUT */ (vdbeq),
	.dout_0_out /* BUS */ (ts_pe_260_a9_out),
	.dout_0_oe /* BUS */ (ts_pe_260_a9_oe),
	.dout_0_in /* BUS */ (ts_pe_260_a9_in),
	.dout_1_out /* BUS */ (ts_pe_261_a9_out),
	.dout_1_oe /* BUS */ (ts_pe_261_a9_oe),
	.dout_1_in /* BUS */ (ts_pe_261_a9_in),
	.dout_2_out /* BUS */ (ts_pe_262_a9_out),
	.dout_2_oe /* BUS */ (ts_pe_262_a9_oe),
	.dout_2_in /* BUS */ (ts_pe_262_a9_in),
	.dout_3_out /* BUS */ (ts_pe_263_a9_out),
	.dout_3_oe /* BUS */ (ts_pe_263_a9_oe),
	.dout_3_in /* BUS */ (ts_pe_263_a9_in),
	.dout_4_out /* BUS */ (ts_pe_264_a9_out),
	.dout_4_oe /* BUS */ (ts_pe_264_a9_oe),
	.dout_4_in /* BUS */ (ts_pe_264_a9_in),
	.dout_5_out /* BUS */ (ts_pe_265_a9_out),
	.dout_5_oe /* BUS */ (ts_pe_265_a9_oe),
	.dout_5_in /* BUS */ (ts_pe_265_a9_in),
	.dout_6_out /* BUS */ (ts_pe_266_a9_out),
	.dout_6_oe /* BUS */ (ts_pe_266_a9_oe),
	.dout_6_in /* BUS */ (ts_pe_266_a9_in),
	.dout_7_out /* BUS */ (ts_pe_267_a9_out),
	.dout_7_oe /* BUS */ (ts_pe_267_a9_oe),
	.dout_7_in /* BUS */ (ts_pe_267_a9_in),
	.dout_8_out /* BUS */ (ts_pe_268_a9_out),
	.dout_8_oe /* BUS */ (ts_pe_268_a9_oe),
	.dout_8_in /* BUS */ (ts_pe_268_a9_in),
	.dout_9_out /* BUS */ (ts_pe_269_a9_out),
	.dout_9_oe /* BUS */ (ts_pe_269_a9_oe),
	.dout_9_in /* BUS */ (ts_pe_269_a9_in),
	.dout_10_out /* BUS */ (ts_pe_270_a9_out),
	.dout_10_oe /* BUS */ (ts_pe_270_a9_oe),
	.dout_10_in /* BUS */ (ts_pe_270_a9_in),
	.count_0 /* IN */ (vcb_0),
	.count_1 /* IN */ (vcb_1),
	.count_2 /* IN */ (vcb_2),
	.count_3 /* IN */ (vcb_3),
	.count_4 /* IN */ (vcb_4),
	.count_5 /* IN */ (vcb_5),
	.count_6 /* IN */ (vcb_6),
	.count_7 /* IN */ (vcb_7),
	.count_8 /* IN */ (vcb_8),
	.count_9 /* IN */ (vcb_9),
	.count_10 /* IN */ (vcb_10),
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
	.crwr /* IN */ (vdbwr),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (230) - vde : creg11
creg11 vde_inst
(
	.creq /* OUT */ (vdeeq),
	.dout_0_out /* BUS */ (ts_pe_260_a10_out),
	.dout_0_oe /* BUS */ (ts_pe_260_a10_oe),
	.dout_0_in /* BUS */ (ts_pe_260_a10_in),
	.dout_1_out /* BUS */ (ts_pe_261_a10_out),
	.dout_1_oe /* BUS */ (ts_pe_261_a10_oe),
	.dout_1_in /* BUS */ (ts_pe_261_a10_in),
	.dout_2_out /* BUS */ (ts_pe_262_a10_out),
	.dout_2_oe /* BUS */ (ts_pe_262_a10_oe),
	.dout_2_in /* BUS */ (ts_pe_262_a10_in),
	.dout_3_out /* BUS */ (ts_pe_263_a10_out),
	.dout_3_oe /* BUS */ (ts_pe_263_a10_oe),
	.dout_3_in /* BUS */ (ts_pe_263_a10_in),
	.dout_4_out /* BUS */ (ts_pe_264_a10_out),
	.dout_4_oe /* BUS */ (ts_pe_264_a10_oe),
	.dout_4_in /* BUS */ (ts_pe_264_a10_in),
	.dout_5_out /* BUS */ (ts_pe_265_a10_out),
	.dout_5_oe /* BUS */ (ts_pe_265_a10_oe),
	.dout_5_in /* BUS */ (ts_pe_265_a10_in),
	.dout_6_out /* BUS */ (ts_pe_266_a10_out),
	.dout_6_oe /* BUS */ (ts_pe_266_a10_oe),
	.dout_6_in /* BUS */ (ts_pe_266_a10_in),
	.dout_7_out /* BUS */ (ts_pe_267_a10_out),
	.dout_7_oe /* BUS */ (ts_pe_267_a10_oe),
	.dout_7_in /* BUS */ (ts_pe_267_a10_in),
	.dout_8_out /* BUS */ (ts_pe_268_a10_out),
	.dout_8_oe /* BUS */ (ts_pe_268_a10_oe),
	.dout_8_in /* BUS */ (ts_pe_268_a10_in),
	.dout_9_out /* BUS */ (ts_pe_269_a10_out),
	.dout_9_oe /* BUS */ (ts_pe_269_a10_oe),
	.dout_9_in /* BUS */ (ts_pe_269_a10_in),
	.dout_10_out /* BUS */ (ts_pe_270_a10_out),
	.dout_10_oe /* BUS */ (ts_pe_270_a10_oe),
	.dout_10_in /* BUS */ (ts_pe_270_a10_in),
	.count_0 /* IN */ (vcb_0),
	.count_1 /* IN */ (vcb_1),
	.count_2 /* IN */ (vcb_2),
	.count_3 /* IN */ (vcb_3),
	.count_4 /* IN */ (vcb_4),
	.count_5 /* IN */ (vcb_5),
	.count_6 /* IN */ (vcb_6),
	.count_7 /* IN */ (vcb_7),
	.count_8 /* IN */ (vcb_8),
	.count_9 /* IN */ (vcb_9),
	.count_10 /* IN */ (vcb_10),
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
	.crwr /* IN */ (vdewr),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (231) - veb : creg11
creg11 veb_inst
(
	.creq /* OUT */ (vebeq),
	.dout_0_out /* BUS */ (ts_pe_260_a11_out),
	.dout_0_oe /* BUS */ (ts_pe_260_a11_oe),
	.dout_0_in /* BUS */ (ts_pe_260_a11_in),
	.dout_1_out /* BUS */ (ts_pe_261_a11_out),
	.dout_1_oe /* BUS */ (ts_pe_261_a11_oe),
	.dout_1_in /* BUS */ (ts_pe_261_a11_in),
	.dout_2_out /* BUS */ (ts_pe_262_a11_out),
	.dout_2_oe /* BUS */ (ts_pe_262_a11_oe),
	.dout_2_in /* BUS */ (ts_pe_262_a11_in),
	.dout_3_out /* BUS */ (ts_pe_263_a11_out),
	.dout_3_oe /* BUS */ (ts_pe_263_a11_oe),
	.dout_3_in /* BUS */ (ts_pe_263_a11_in),
	.dout_4_out /* BUS */ (ts_pe_264_a11_out),
	.dout_4_oe /* BUS */ (ts_pe_264_a11_oe),
	.dout_4_in /* BUS */ (ts_pe_264_a11_in),
	.dout_5_out /* BUS */ (ts_pe_265_a11_out),
	.dout_5_oe /* BUS */ (ts_pe_265_a11_oe),
	.dout_5_in /* BUS */ (ts_pe_265_a11_in),
	.dout_6_out /* BUS */ (ts_pe_266_a11_out),
	.dout_6_oe /* BUS */ (ts_pe_266_a11_oe),
	.dout_6_in /* BUS */ (ts_pe_266_a11_in),
	.dout_7_out /* BUS */ (ts_pe_267_a11_out),
	.dout_7_oe /* BUS */ (ts_pe_267_a11_oe),
	.dout_7_in /* BUS */ (ts_pe_267_a11_in),
	.dout_8_out /* BUS */ (ts_pe_268_a11_out),
	.dout_8_oe /* BUS */ (ts_pe_268_a11_oe),
	.dout_8_in /* BUS */ (ts_pe_268_a11_in),
	.dout_9_out /* BUS */ (ts_pe_269_a11_out),
	.dout_9_oe /* BUS */ (ts_pe_269_a11_oe),
	.dout_9_in /* BUS */ (ts_pe_269_a11_in),
	.dout_10_out /* BUS */ (ts_pe_270_a11_out),
	.dout_10_oe /* BUS */ (ts_pe_270_a11_oe),
	.dout_10_in /* BUS */ (ts_pe_270_a11_in),
	.count_0 /* IN */ (vcb_0),
	.count_1 /* IN */ (vcb_1),
	.count_2 /* IN */ (vcb_2),
	.count_3 /* IN */ (vcb_3),
	.count_4 /* IN */ (vcb_4),
	.count_5 /* IN */ (vcb_5),
	.count_6 /* IN */ (vcb_6),
	.count_7 /* IN */ (vcb_7),
	.count_8 /* IN */ (vcb_8),
	.count_9 /* IN */ (vcb_9),
	.count_10 /* IN */ (vcb_10),
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
	.crwr /* IN */ (vebwr),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (232) - vee : creg11
creg11 vee_inst
(
	.creq /* OUT */ (veeeq),
	.dout_0_out /* BUS */ (ts_pe_260_a12_out),
	.dout_0_oe /* BUS */ (ts_pe_260_a12_oe),
	.dout_0_in /* BUS */ (ts_pe_260_a12_in),
	.dout_1_out /* BUS */ (ts_pe_261_a12_out),
	.dout_1_oe /* BUS */ (ts_pe_261_a12_oe),
	.dout_1_in /* BUS */ (ts_pe_261_a12_in),
	.dout_2_out /* BUS */ (ts_pe_262_a12_out),
	.dout_2_oe /* BUS */ (ts_pe_262_a12_oe),
	.dout_2_in /* BUS */ (ts_pe_262_a12_in),
	.dout_3_out /* BUS */ (ts_pe_263_a12_out),
	.dout_3_oe /* BUS */ (ts_pe_263_a12_oe),
	.dout_3_in /* BUS */ (ts_pe_263_a12_in),
	.dout_4_out /* BUS */ (ts_pe_264_a12_out),
	.dout_4_oe /* BUS */ (ts_pe_264_a12_oe),
	.dout_4_in /* BUS */ (ts_pe_264_a12_in),
	.dout_5_out /* BUS */ (ts_pe_265_a12_out),
	.dout_5_oe /* BUS */ (ts_pe_265_a12_oe),
	.dout_5_in /* BUS */ (ts_pe_265_a12_in),
	.dout_6_out /* BUS */ (ts_pe_266_a12_out),
	.dout_6_oe /* BUS */ (ts_pe_266_a12_oe),
	.dout_6_in /* BUS */ (ts_pe_266_a12_in),
	.dout_7_out /* BUS */ (ts_pe_267_a12_out),
	.dout_7_oe /* BUS */ (ts_pe_267_a12_oe),
	.dout_7_in /* BUS */ (ts_pe_267_a12_in),
	.dout_8_out /* BUS */ (ts_pe_268_a12_out),
	.dout_8_oe /* BUS */ (ts_pe_268_a12_oe),
	.dout_8_in /* BUS */ (ts_pe_268_a12_in),
	.dout_9_out /* BUS */ (ts_pe_269_a12_out),
	.dout_9_oe /* BUS */ (ts_pe_269_a12_oe),
	.dout_9_in /* BUS */ (ts_pe_269_a12_in),
	.dout_10_out /* BUS */ (ts_pe_270_a12_out),
	.dout_10_oe /* BUS */ (ts_pe_270_a12_oe),
	.dout_10_in /* BUS */ (ts_pe_270_a12_in),
	.count_0 /* IN */ (vcb_0),
	.count_1 /* IN */ (vcb_1),
	.count_2 /* IN */ (vcb_2),
	.count_3 /* IN */ (vcb_3),
	.count_4 /* IN */ (vcb_4),
	.count_5 /* IN */ (vcb_5),
	.count_6 /* IN */ (vcb_6),
	.count_7 /* IN */ (vcb_7),
	.count_8 /* IN */ (vcb_8),
	.count_9 /* IN */ (vcb_9),
	.count_10 /* IN */ (vcb_10),
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
	.crwr /* IN */ (veewr),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (233) - vs : creg11
creg11 vs_inst
(
	.creq /* OUT */ (vseq),
	.dout_0_out /* BUS */ (ts_pe_260_a13_out),
	.dout_0_oe /* BUS */ (ts_pe_260_a13_oe),
	.dout_0_in /* BUS */ (ts_pe_260_a13_in),
	.dout_1_out /* BUS */ (ts_pe_261_a13_out),
	.dout_1_oe /* BUS */ (ts_pe_261_a13_oe),
	.dout_1_in /* BUS */ (ts_pe_261_a13_in),
	.dout_2_out /* BUS */ (ts_pe_262_a13_out),
	.dout_2_oe /* BUS */ (ts_pe_262_a13_oe),
	.dout_2_in /* BUS */ (ts_pe_262_a13_in),
	.dout_3_out /* BUS */ (ts_pe_263_a13_out),
	.dout_3_oe /* BUS */ (ts_pe_263_a13_oe),
	.dout_3_in /* BUS */ (ts_pe_263_a13_in),
	.dout_4_out /* BUS */ (ts_pe_264_a13_out),
	.dout_4_oe /* BUS */ (ts_pe_264_a13_oe),
	.dout_4_in /* BUS */ (ts_pe_264_a13_in),
	.dout_5_out /* BUS */ (ts_pe_265_a13_out),
	.dout_5_oe /* BUS */ (ts_pe_265_a13_oe),
	.dout_5_in /* BUS */ (ts_pe_265_a13_in),
	.dout_6_out /* BUS */ (ts_pe_266_a13_out),
	.dout_6_oe /* BUS */ (ts_pe_266_a13_oe),
	.dout_6_in /* BUS */ (ts_pe_266_a13_in),
	.dout_7_out /* BUS */ (ts_pe_267_a13_out),
	.dout_7_oe /* BUS */ (ts_pe_267_a13_oe),
	.dout_7_in /* BUS */ (ts_pe_267_a13_in),
	.dout_8_out /* BUS */ (ts_pe_268_a13_out),
	.dout_8_oe /* BUS */ (ts_pe_268_a13_oe),
	.dout_8_in /* BUS */ (ts_pe_268_a13_in),
	.dout_9_out /* BUS */ (ts_pe_269_a13_out),
	.dout_9_oe /* BUS */ (ts_pe_269_a13_oe),
	.dout_9_in /* BUS */ (ts_pe_269_a13_in),
	.dout_10_out /* BUS */ (ts_pe_270_a13_out),
	.dout_10_oe /* BUS */ (ts_pe_270_a13_oe),
	.dout_10_in /* BUS */ (ts_pe_270_a13_in),
	.count_0 /* IN */ (vcb_0),
	.count_1 /* IN */ (vcb_1),
	.count_2 /* IN */ (vcb_2),
	.count_3 /* IN */ (vcb_3),
	.count_4 /* IN */ (vcb_4),
	.count_5 /* IN */ (vcb_5),
	.count_6 /* IN */ (vcb_6),
	.count_7 /* IN */ (vcb_7),
	.count_8 /* IN */ (vcb_8),
	.count_9 /* IN */ (vcb_9),
	.count_10 /* IN */ (vcb_10),
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
	.crwr /* IN */ (vswr),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (234) - vi : creg11
creg11 vi_inst
(
	.creq /* OUT */ (vieq),
	.dout_0_out /* BUS */ (ts_pe_260_a14_out),
	.dout_0_oe /* BUS */ (ts_pe_260_a14_oe),
	.dout_0_in /* BUS */ (ts_pe_260_a14_in),
	.dout_1_out /* BUS */ (ts_pe_261_a14_out),
	.dout_1_oe /* BUS */ (ts_pe_261_a14_oe),
	.dout_1_in /* BUS */ (ts_pe_261_a14_in),
	.dout_2_out /* BUS */ (ts_pe_262_a14_out),
	.dout_2_oe /* BUS */ (ts_pe_262_a14_oe),
	.dout_2_in /* BUS */ (ts_pe_262_a14_in),
	.dout_3_out /* BUS */ (ts_pe_263_a14_out),
	.dout_3_oe /* BUS */ (ts_pe_263_a14_oe),
	.dout_3_in /* BUS */ (ts_pe_263_a14_in),
	.dout_4_out /* BUS */ (ts_pe_264_a14_out),
	.dout_4_oe /* BUS */ (ts_pe_264_a14_oe),
	.dout_4_in /* BUS */ (ts_pe_264_a14_in),
	.dout_5_out /* BUS */ (ts_pe_265_a14_out),
	.dout_5_oe /* BUS */ (ts_pe_265_a14_oe),
	.dout_5_in /* BUS */ (ts_pe_265_a14_in),
	.dout_6_out /* BUS */ (ts_pe_266_a14_out),
	.dout_6_oe /* BUS */ (ts_pe_266_a14_oe),
	.dout_6_in /* BUS */ (ts_pe_266_a14_in),
	.dout_7_out /* BUS */ (ts_pe_267_a14_out),
	.dout_7_oe /* BUS */ (ts_pe_267_a14_oe),
	.dout_7_in /* BUS */ (ts_pe_267_a14_in),
	.dout_8_out /* BUS */ (ts_pe_268_a14_out),
	.dout_8_oe /* BUS */ (ts_pe_268_a14_oe),
	.dout_8_in /* BUS */ (ts_pe_268_a14_in),
	.dout_9_out /* BUS */ (ts_pe_269_a14_out),
	.dout_9_oe /* BUS */ (ts_pe_269_a14_oe),
	.dout_9_in /* BUS */ (ts_pe_269_a14_in),
	.dout_10_out /* BUS */ (ts_pe_270_a14_out),
	.dout_10_oe /* BUS */ (ts_pe_270_a14_oe),
	.dout_10_in /* BUS */ (ts_pe_270_a14_in),
	.count_0 /* IN */ (vcb_0),
	.count_1 /* IN */ (vcb_1),
	.count_2 /* IN */ (vcb_2),
	.count_3 /* IN */ (vcb_3),
	.count_4 /* IN */ (vcb_4),
	.count_5 /* IN */ (vcb_5),
	.count_6 /* IN */ (vcb_6),
	.count_7 /* IN */ (vcb_7),
	.count_8 /* IN */ (vcb_8),
	.count_9 /* IN */ (vcb_9),
	.count_10 /* IN */ (vcb_10),
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
	.crwr /* IN */ (viwr),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (238) - vvactive : fjkr
fjkr vvactive_inst
(
	.q /* OUT */ (vvactive),
	.ql /* OUT */ (notvvactive),
	.j /* IN */ (vdbeq),
	.k /* IN */ (vdeeq),
	.clk /* IN */ (vclk),
	.r /* IN */ (vresl),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (239) - nvvu : dummy

// VID.NET (255) - startd1 : nd2
assign startd1 = ~(hdb1eq & vvactive);

// VID.NET (256) - startd2 : nd2
assign startd2 = ~(hdb2eq & vvactive);

// VID.NET (257) - startd : nd3
assign startd = ~(startd1 & startd2 & startd3);

// VID.NET (258) - start : fd2q
fd2q start_inst
(
	.q /* OUT */ (start_obuf),
	.d /* IN */ (startd),
	.cp /* IN */ (vclk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (262) - vcli : nr2
assign vcli = ~(vcl | start_obuf);

// VID.NET (263) - vclb : ivh
assign vclb = ~vcli;

// VID.NET (264) - vcl[0-10] : slatch
slatch vcl_from_0_to_10_inst_0
(
	.q /* OUT */ (vcl_0),
	.d /* IN */ (vcb_0),
	.clk /* IN */ (vclk),
	.en /* IN */ (vclb),
	.sys_clk(sys_clk) // Generated
);
slatch vcl_from_0_to_10_inst_1
(
	.q /* OUT */ (vcl_1),
	.d /* IN */ (vcb_1),
	.clk /* IN */ (vclk),
	.en /* IN */ (vclb),
	.sys_clk(sys_clk) // Generated
);
slatch vcl_from_0_to_10_inst_2
(
	.q /* OUT */ (vcl_2),
	.d /* IN */ (vcb_2),
	.clk /* IN */ (vclk),
	.en /* IN */ (vclb),
	.sys_clk(sys_clk) // Generated
);
slatch vcl_from_0_to_10_inst_3
(
	.q /* OUT */ (vcl_3),
	.d /* IN */ (vcb_3),
	.clk /* IN */ (vclk),
	.en /* IN */ (vclb),
	.sys_clk(sys_clk) // Generated
);
slatch vcl_from_0_to_10_inst_4
(
	.q /* OUT */ (vcl_4),
	.d /* IN */ (vcb_4),
	.clk /* IN */ (vclk),
	.en /* IN */ (vclb),
	.sys_clk(sys_clk) // Generated
);
slatch vcl_from_0_to_10_inst_5
(
	.q /* OUT */ (vcl_5),
	.d /* IN */ (vcb_5),
	.clk /* IN */ (vclk),
	.en /* IN */ (vclb),
	.sys_clk(sys_clk) // Generated
);
slatch vcl_from_0_to_10_inst_6
(
	.q /* OUT */ (vcl_6),
	.d /* IN */ (vcb_6),
	.clk /* IN */ (vclk),
	.en /* IN */ (vclb),
	.sys_clk(sys_clk) // Generated
);
slatch vcl_from_0_to_10_inst_7
(
	.q /* OUT */ (vcl_7),
	.d /* IN */ (vcb_7),
	.clk /* IN */ (vclk),
	.en /* IN */ (vclb),
	.sys_clk(sys_clk) // Generated
);
slatch vcl_from_0_to_10_inst_8
(
	.q /* OUT */ (vcl_8),
	.d /* IN */ (vcb_8),
	.clk /* IN */ (vclk),
	.en /* IN */ (vclb),
	.sys_clk(sys_clk) // Generated
);
slatch vcl_from_0_to_10_inst_9
(
	.q /* OUT */ (vcl_9),
	.d /* IN */ (vcb_9),
	.clk /* IN */ (vclk),
	.en /* IN */ (vclb),
	.sys_clk(sys_clk) // Generated
);
slatch vcl_from_0_to_10_inst_10
(
	.q /* OUT */ (vcl_10),
	.d /* IN */ (vcb_10),
	.clk /* IN */ (vclk),
	.en /* IN */ (vclb),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (271) - startd3p : iv
assign startd3p = ~startd3;

// VID.NET (272) - hdb : or3
assign hdb = hdb1eq | hdb2eq | startd3p;

// VID.NET (273) - vdactive : slatchr
slatchr vdactive_inst
(
	.q /* OUT */ (vdactive),
	.d /* IN */ (vvactive),
	.clk /* IN */ (vclk),
	.en /* IN */ (hdb),
	.resl /* IN */ (vresl),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (274) - dd : an2
assign dd_obuf = vdactive & hdb;

// VID.NET (275) - vactive : fjkr
fjkr vactive_inst
(
	.q /* OUT */ (vactive_obuf),
	.ql /* OUT */ (notvactive),
	.j /* IN */ (dd_obuf),
	.k /* IN */ (hdeeq),
	.clk /* IN */ (vclk),
	.r /* IN */ (vresl),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (276) - nvu : dummy

// VID.NET (278) - lbufai : fdr
fdr lbufai_inst
(
	.q /* OUT */ (lbufai),
	.ql /* OUT */ (lbufbi),
	.d /* IN */ (lbufad),
	.clk /* IN */ (vclk),
	.resl /* IN */ (vresl),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (279) - lbufd : mx2
assign lbufad = (dd_obuf) ? lbufb_obuf : lbufa_obuf;

// VID.NET (280) - lbufa : nivu2
assign lbufa_obuf = lbufai;

// VID.NET (281) - lbufb : nivu2
assign lbufb_obuf = lbufbi;

// VID.NET (283) - lbaai : nd2
assign lbaai = ~(lbufai & vactive_obuf);

// VID.NET (284) - lbbai : nd2
assign lbbai = ~(lbufbi & vactive_obuf);

// VID.NET (285) - lbaactive : ivu
assign lbaactive = ~lbaai;

// VID.NET (286) - lbbactive : ivu
assign lbbactive = ~lbbai;

// VID.NET (288) - vblank : fjkr
fjkr vblank_inst
(
	.q /* OUT */ (vblank),
	.ql /* OUT */ (notvblank),
	.j /* IN */ (vbbeq),
	.k /* IN */ (vbeeq),
	.clk /* IN */ (vclk),
	.r /* IN */ (vresl),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (289) - hblank : fjkr
fjkr hblank_inst
(
	.q /* OUT */ (hblank),
	.ql /* OUT */ (nothblank),
	.j /* IN */ (hbbeq),
	.k /* IN */ (hbeeq),
	.clk /* IN */ (vclk),
	.r /* IN */ (vresl),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (290) - blank : nd2
assign blank = ~(notvblank & nothblank);

// VID.NET (292) - unused1 : dummy

// VID.NET (293) - unused2 : dummy

// VID.NET (295) - hs : fjkr
fjkr hs_inst
(
	.q /* OUT */ (hs),
	.ql /* OUT */ (noths_obuf),
	.j /* IN */ (hseq),
	.k /* IN */ (hpeq),
	.clk /* IN */ (vclk),
	.r /* IN */ (vresl),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (296) - hsu : dummy

// VID.NET (303) - vvsync : fjkr
fjkr vvsync_inst
(
	.q /* OUT */ (vvs),
	.ql /* OUT */ (notvvs),
	.j /* IN */ (vseq),
	.k /* IN */ (vpeq),
	.clk /* IN */ (vclk),
	.r /* IN */ (vresl),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (304) - nvsu : dummy

// VID.NET (305) - hvstart : an2
assign hvstart = hvsb & vvs;

// VID.NET (306) - hvsync : fjkr
fjkr hvsync_inst
(
	.q /* OUT */ (hvs),
	.ql /* OUT */ (nothvs),
	.j /* IN */ (hvstart),
	.k /* IN */ (hvse),
	.clk /* IN */ (vclk),
	.r /* IN */ (vresl),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (307) - vesync : fjkr
fjkr vesync_inst
(
	.q /* OUT */ (ves),
	.ql /* OUT */ (notves),
	.j /* IN */ (vebeq),
	.k /* IN */ (veeeq),
	.clk /* IN */ (vclk),
	.r /* IN */ (vresl),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (308) - nvesu : dummy

// VID.NET (309) - hestart : an2
assign hestart = hvsb & ves;

// VID.NET (310) - hesync : fjkr
fjkr hesync_inst
(
	.q /* OUT */ (hes),
	.ql /* OUT */ (nothes),
	.j /* IN */ (hestart),
	.k /* IN */ (heqe),
	.clk /* IN */ (vclk),
	.r /* IN */ (vresl),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (311) - vsync : an2
assign vsl = nothvs & nothes;

// VID.NET (312) - csync : mx2
assign csync = (ves) ? vsl : noths_obuf;

// VID.NET (313) - notvs : mx2
assign notvs = (csyncen) ? csync : vsl;

// VID.NET (314) - hvs : dummy

// VID.NET (315) - hes : dummy

// VID.NET (319) - vintd : an2
assign vintd = vieq & hdeeq;

// VID.NET (320) - vint : fdr
fdr vint_inst
(
	.q /* OUT */ (vint),
	.ql /* OUT */ (vintl),
	.d /* IN */ (vintd),
	.clk /* IN */ (vclk),
	.resl /* IN */ (vresl),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (321) - vintl : dummy

// VID.NET (327) - ppnz : or3
assign ppnz = ppn_0 | ppn_1 | ppn_2;

// VID.NET (328) - longpix : nr2
assign longpix = ~(cry16_obuf | rgb16_obuf);

// VID.NET (329) - wordpix : iv
assign wordpix = ~longpix;

// VID.NET (330) - sxp : or2
assign sxp = wordpix | ppnz;

// VID.NET (331) - notstartd : iv
assign notstartd = ~startd;

// VID.NET (332) - nextpixd0 : nd2
assign nextpixd0 = ~(word2_obuf & pp_obuf);

// VID.NET (333) - nextpixd1 : nd2
assign nextpixd1 = ~(longpix & pp_obuf);

// VID.NET (334) - nextpixd : nd2
assign nextpixd_obuf = ~(nextpixd0 & nextpixd1);

// VID.NET (341) - nextpixad : an2
assign nextpixad = nextpixd_obuf & notstartd;

// VID.NET (342) - nextpixaq : fd1q
fd1q nextpixaq_inst
(
	.q /* OUT */ (nextpixaq),
	.d /* IN */ (nextpixad),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (343) - nextpixa : mx2
assign nextpixa_obuf = (sxp) ? nextpixaq : nextpixd_obuf;

// VID.NET (344) - bgw : an3
assign bgw = bgwen & nextpixa_obuf & sxp;

// VID.NET (348) - lp1 : fd1q
fd1q lp1_inst
(
	.q /* OUT */ (lp1),
	.d /* IN */ (lp),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (349) - lp2 : fd1
fd1 lp2_inst
(
	.q /* OUT */ (lp2),
	.qn /* OUT */ (lp2l),
	.d /* IN */ (lp1),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (350) - lpldi : nd2
assign lpldi = ~(lp1 & lp2l);

// VID.NET (351) - lpld : ivh
assign lpld = ~lpldi;

// VID.NET (352) - unused4 : dummy

// VID.NET (354) - lph[0-10] : slatch
slatch lph_from_0_to_10_inst_0
(
	.q /* OUT */ (lph_0),
	.d /* IN */ (hcb_0),
	.clk /* IN */ (vclk),
	.en /* IN */ (lpld),
	.sys_clk(sys_clk) // Generated
);
slatch lph_from_0_to_10_inst_1
(
	.q /* OUT */ (lph_1),
	.d /* IN */ (hcb_1),
	.clk /* IN */ (vclk),
	.en /* IN */ (lpld),
	.sys_clk(sys_clk) // Generated
);
slatch lph_from_0_to_10_inst_2
(
	.q /* OUT */ (lph_2),
	.d /* IN */ (hcb_2),
	.clk /* IN */ (vclk),
	.en /* IN */ (lpld),
	.sys_clk(sys_clk) // Generated
);
slatch lph_from_0_to_10_inst_3
(
	.q /* OUT */ (lph_3),
	.d /* IN */ (hcb_3),
	.clk /* IN */ (vclk),
	.en /* IN */ (lpld),
	.sys_clk(sys_clk) // Generated
);
slatch lph_from_0_to_10_inst_4
(
	.q /* OUT */ (lph_4),
	.d /* IN */ (hcb_4),
	.clk /* IN */ (vclk),
	.en /* IN */ (lpld),
	.sys_clk(sys_clk) // Generated
);
slatch lph_from_0_to_10_inst_5
(
	.q /* OUT */ (lph_5),
	.d /* IN */ (hcb_5),
	.clk /* IN */ (vclk),
	.en /* IN */ (lpld),
	.sys_clk(sys_clk) // Generated
);
slatch lph_from_0_to_10_inst_6
(
	.q /* OUT */ (lph_6),
	.d /* IN */ (hcb_6),
	.clk /* IN */ (vclk),
	.en /* IN */ (lpld),
	.sys_clk(sys_clk) // Generated
);
slatch lph_from_0_to_10_inst_7
(
	.q /* OUT */ (lph_7),
	.d /* IN */ (hcb_7),
	.clk /* IN */ (vclk),
	.en /* IN */ (lpld),
	.sys_clk(sys_clk) // Generated
);
slatch lph_from_0_to_10_inst_8
(
	.q /* OUT */ (lph_8),
	.d /* IN */ (hcb_8),
	.clk /* IN */ (vclk),
	.en /* IN */ (lpld),
	.sys_clk(sys_clk) // Generated
);
slatch lph_from_0_to_10_inst_9
(
	.q /* OUT */ (lph_9),
	.d /* IN */ (hcb_9),
	.clk /* IN */ (vclk),
	.en /* IN */ (lpld),
	.sys_clk(sys_clk) // Generated
);
slatch lph_from_0_to_10_inst_10
(
	.q /* OUT */ (lph_10),
	.d /* IN */ (hcb_10_obuf),
	.clk /* IN */ (vclk),
	.en /* IN */ (lpld),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (355) - lpv[0-11] : slatch
slatch lpv_from_0_to_11_inst_0
(
	.q /* OUT */ (lpv_0),
	.d /* IN */ (vc_0),
	.clk /* IN */ (vclk),
	.en /* IN */ (lpld),
	.sys_clk(sys_clk) // Generated
);
slatch lpv_from_0_to_11_inst_1
(
	.q /* OUT */ (lpv_1),
	.d /* IN */ (vc_1),
	.clk /* IN */ (vclk),
	.en /* IN */ (lpld),
	.sys_clk(sys_clk) // Generated
);
slatch lpv_from_0_to_11_inst_2
(
	.q /* OUT */ (lpv_2),
	.d /* IN */ (vc_2),
	.clk /* IN */ (vclk),
	.en /* IN */ (lpld),
	.sys_clk(sys_clk) // Generated
);
slatch lpv_from_0_to_11_inst_3
(
	.q /* OUT */ (lpv_3),
	.d /* IN */ (vc_3),
	.clk /* IN */ (vclk),
	.en /* IN */ (lpld),
	.sys_clk(sys_clk) // Generated
);
slatch lpv_from_0_to_11_inst_4
(
	.q /* OUT */ (lpv_4),
	.d /* IN */ (vc_4),
	.clk /* IN */ (vclk),
	.en /* IN */ (lpld),
	.sys_clk(sys_clk) // Generated
);
slatch lpv_from_0_to_11_inst_5
(
	.q /* OUT */ (lpv_5),
	.d /* IN */ (vc_5),
	.clk /* IN */ (vclk),
	.en /* IN */ (lpld),
	.sys_clk(sys_clk) // Generated
);
slatch lpv_from_0_to_11_inst_6
(
	.q /* OUT */ (lpv_6),
	.d /* IN */ (vc_6),
	.clk /* IN */ (vclk),
	.en /* IN */ (lpld),
	.sys_clk(sys_clk) // Generated
);
slatch lpv_from_0_to_11_inst_7
(
	.q /* OUT */ (lpv_7),
	.d /* IN */ (vc_7),
	.clk /* IN */ (vclk),
	.en /* IN */ (lpld),
	.sys_clk(sys_clk) // Generated
);
slatch lpv_from_0_to_11_inst_8
(
	.q /* OUT */ (lpv_8),
	.d /* IN */ (vc_8),
	.clk /* IN */ (vclk),
	.en /* IN */ (lpld),
	.sys_clk(sys_clk) // Generated
);
slatch lpv_from_0_to_11_inst_9
(
	.q /* OUT */ (lpv_9),
	.d /* IN */ (vc_9),
	.clk /* IN */ (vclk),
	.en /* IN */ (lpld),
	.sys_clk(sys_clk) // Generated
);
slatch lpv_from_0_to_11_inst_10
(
	.q /* OUT */ (lpv_10),
	.d /* IN */ (vc_10),
	.clk /* IN */ (vclk),
	.en /* IN */ (lpld),
	.sys_clk(sys_clk) // Generated
);
slatch lpv_from_0_to_11_inst_11
(
	.q /* OUT */ (lpv_11),
	.d /* IN */ (vc_11),
	.clk /* IN */ (vclk),
	.en /* IN */ (lpld),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (356) - lphd[0-10] : ts
assign ts_pe_260_a15_out = lph_0;
assign ts_pe_260_a15_oe = lphrd;
assign ts_pe_261_a15_out = lph_1;
assign ts_pe_261_a15_oe = lphrd;
assign ts_pe_262_a15_out = lph_2;
assign ts_pe_262_a15_oe = lphrd;
assign ts_pe_263_a15_out = lph_3;
assign ts_pe_263_a15_oe = lphrd;
assign ts_pe_264_a15_out = lph_4;
assign ts_pe_264_a15_oe = lphrd;
assign ts_pe_265_a15_out = lph_5;
assign ts_pe_265_a15_oe = lphrd;
assign ts_pe_266_a15_out = lph_6;
assign ts_pe_266_a15_oe = lphrd;
assign ts_pe_267_a15_out = lph_7;
assign ts_pe_267_a15_oe = lphrd;
assign ts_pe_268_a15_out = lph_8;
assign ts_pe_268_a15_oe = lphrd;
assign ts_pe_269_a15_out = lph_9;
assign ts_pe_269_a15_oe = lphrd;
assign ts_pe_270_a15_out = lph_10;
assign ts_pe_270_a15_oe = lphrd;

// VID.NET (357) - lphd[11] : ts
assign ts_pe_271_a1_out = lpe;
assign ts_pe_271_a1_oe = lphrd;

// VID.NET (358) - lpvd[0-11] : ts
assign ts_pe_260_a16_out = lpv_0;
assign ts_pe_260_a16_oe = lpvrd;
assign ts_pe_261_a16_out = lpv_1;
assign ts_pe_261_a16_oe = lpvrd;
assign ts_pe_262_a16_out = lpv_2;
assign ts_pe_262_a16_oe = lpvrd;
assign ts_pe_263_a16_out = lpv_3;
assign ts_pe_263_a16_oe = lpvrd;
assign ts_pe_264_a16_out = lpv_4;
assign ts_pe_264_a16_oe = lpvrd;
assign ts_pe_265_a16_out = lpv_5;
assign ts_pe_265_a16_oe = lpvrd;
assign ts_pe_266_a16_out = lpv_6;
assign ts_pe_266_a16_oe = lpvrd;
assign ts_pe_267_a16_out = lpv_7;
assign ts_pe_267_a16_oe = lpvrd;
assign ts_pe_268_a16_out = lpv_8;
assign ts_pe_268_a16_oe = lpvrd;
assign ts_pe_269_a16_out = lpv_9;
assign ts_pe_269_a16_oe = lpvrd;
assign ts_pe_270_a16_out = lpv_10;
assign ts_pe_270_a16_oe = lpvrd;
assign ts_pe_271_a2_out = lpv_11;
assign ts_pe_271_a2_oe = lpvrd;

// VID.NET (360) - lp_event : fjk2
fjk2 lp_event_inst
(
	.q /* OUT */ (lpe),
	.qn /* OUT */ (notlpe),
	.j /* IN */ (lpld),
	.k /* IN */ (nextfield),
	.cp /* IN */ (vclk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// VID.NET (361) - lpeu : dummy

// VID.NET (365) - td2[0] : ts
assign ts_pe_260_a17_out = hpeqt;
assign ts_pe_260_a17_oe = test2r;

// VID.NET (366) - td2[1] : ts
assign ts_pe_261_a17_out = hbbeq;
assign ts_pe_261_a17_oe = test2r;

// VID.NET (367) - td2[2] : ts
assign ts_pe_262_a17_out = hbeeq;
assign ts_pe_262_a17_oe = test2r;

// VID.NET (368) - td2[3] : ts
assign ts_pe_263_a17_out = hdb1eq;
assign ts_pe_263_a17_oe = test2r;

// VID.NET (369) - td2[4] : ts
assign ts_pe_264_a17_out = hdb2eq;
assign ts_pe_264_a17_oe = test2r;

// VID.NET (370) - td2[5] : ts
assign ts_pe_265_a17_out = hdeeq;
assign ts_pe_265_a17_oe = test2r;

// VID.NET (371) - td2[6] : ts
assign ts_pe_266_a17_out = hseq;
assign ts_pe_266_a17_oe = test2r;

// VID.NET (372) - td2[7] : ts
assign ts_pe_267_a17_out = hvsb;
assign ts_pe_267_a17_oe = test2r;

// VID.NET (373) - td2[8] : ts
assign ts_pe_268_a17_out = hvse;
assign ts_pe_268_a17_oe = test2r;

// VID.NET (374) - td2[9] : ts
assign ts_pe_269_a17_out = heqe;
assign ts_pe_269_a17_oe = test2r;

// VID.NET (375) - td2[10] : ts
assign ts_pe_270_a17_out = gnd;
assign ts_pe_270_a17_oe = test2r;

// VID.NET (377) - td3[0] : ts
assign ts_pe_260_a18_out = vpeqt;
assign ts_pe_260_a18_oe = test3r;

// VID.NET (378) - td3[1] : ts
assign ts_pe_261_a18_out = vbbeq;
assign ts_pe_261_a18_oe = test3r;

// VID.NET (379) - td3[2] : ts
assign ts_pe_262_a18_out = vbeeq;
assign ts_pe_262_a18_oe = test3r;

// VID.NET (380) - td3[3] : ts
assign ts_pe_263_a18_out = vdbeq;
assign ts_pe_263_a18_oe = test3r;

// VID.NET (381) - td3[4] : ts
assign ts_pe_264_a18_out = vdeeq;
assign ts_pe_264_a18_oe = test3r;

// VID.NET (382) - td3[5] : ts
assign ts_pe_265_a18_out = vebeq;
assign ts_pe_265_a18_oe = test3r;

// VID.NET (383) - td3[6] : ts
assign ts_pe_266_a18_out = veeeq;
assign ts_pe_266_a18_oe = test3r;

// VID.NET (384) - td3[7] : ts
assign ts_pe_267_a18_out = vseq;
assign ts_pe_267_a18_oe = test3r;

// VID.NET (385) - td3[8] : ts
assign ts_pe_268_a18_out = vieq;
assign ts_pe_268_a18_oe = test3r;

// VID.NET (386) - td3[9] : ts
assign ts_pe_269_a18_out = vgy;
assign ts_pe_269_a18_oe = test3r;

// VID.NET (387) - td3[10] : ts
assign ts_pe_270_a18_out = vey;
assign ts_pe_270_a18_oe = test3r;

// VID.NET (388) - td3[11] : ts
assign ts_pe_271_a3_out = vly;
assign ts_pe_271_a3_oe = test3r;

// VID.NET (395) - e11 : or2
assign e11 = hcrd | test2r;

// VID.NET (396) - e1215 : or4
assign e1215 = e11 | vcrd | lpvrd | lphrd;

// VID.NET (397) - gnd : tie0
assign gnd = 1'b0;

// VID.NET (398) - dr[11] : ts
assign ts_pe_271_a4_out = gnd;
assign ts_pe_271_a4_oe = e11;

// VID.NET (399) - dr[12-15] : ts
assign dr_12_out = gnd;
assign dr_12_oe = e1215;
assign dr_13_out = gnd;
assign dr_13_oe = e1215;
assign dr_14_out = gnd;
assign dr_14_oe = e1215;
assign dr_15_out = gnd;
assign dr_15_oe = e1215;

// VID.NET (402) - hso : join
assign hs_o = hseq;

// VID.NET (403) - hhso : join
assign hhs_o = hvsb;

// VID.NET (404) - vso : join
assign vs_o = vvs;

// --- Compiler-generated PE for BUS dr[0]
assign dr_0_out = (ts_pe_260_a0_oe & ts_pe_260_a0_out ) | (ts_pe_260_a1_oe & ts_pe_260_a1_out ) | (ts_pe_260_a2_oe & ts_pe_260_a2_out ) | (ts_pe_260_a3_oe & ts_pe_260_a3_out ) | (ts_pe_260_a4_oe & ts_pe_260_a4_out ) | (ts_pe_260_a5_oe & ts_pe_260_a5_out ) | (ts_pe_260_a6_oe & ts_pe_260_a6_out ) | (ts_pe_260_a7_oe & ts_pe_260_a7_out ) | (ts_pe_260_a8_oe & ts_pe_260_a8_out ) | (ts_pe_260_a9_oe & ts_pe_260_a9_out ) | (ts_pe_260_a10_oe & ts_pe_260_a10_out ) | (ts_pe_260_a11_oe & ts_pe_260_a11_out ) | (ts_pe_260_a12_oe & ts_pe_260_a12_out ) | (ts_pe_260_a13_oe & ts_pe_260_a13_out ) | (ts_pe_260_a14_oe & ts_pe_260_a14_out ) | (ts_pe_260_a15_oe & ts_pe_260_a15_out ) | (ts_pe_260_a16_oe & ts_pe_260_a16_out ) | (ts_pe_260_a17_oe & ts_pe_260_a17_out ) | (ts_pe_260_a18_oe & ts_pe_260_a18_out ) | 1'b0;
assign dr_0_oe = ts_pe_260_a0_oe | ts_pe_260_a1_oe | ts_pe_260_a2_oe | ts_pe_260_a3_oe | ts_pe_260_a4_oe | ts_pe_260_a5_oe | ts_pe_260_a6_oe | ts_pe_260_a7_oe | ts_pe_260_a8_oe | ts_pe_260_a9_oe | ts_pe_260_a10_oe | ts_pe_260_a11_oe | ts_pe_260_a12_oe | ts_pe_260_a13_oe | ts_pe_260_a14_oe | ts_pe_260_a15_oe | ts_pe_260_a16_oe | ts_pe_260_a17_oe | ts_pe_260_a18_oe;
assign ts_pe_260_a0_in = dr_0_in;
assign ts_pe_260_a1_in = dr_0_in;
assign ts_pe_260_a2_in = dr_0_in;
assign ts_pe_260_a3_in = dr_0_in;
assign ts_pe_260_a4_in = dr_0_in;
assign ts_pe_260_a5_in = dr_0_in;
assign ts_pe_260_a6_in = dr_0_in;
assign ts_pe_260_a7_in = dr_0_in;
assign ts_pe_260_a8_in = dr_0_in;
assign ts_pe_260_a9_in = dr_0_in;
assign ts_pe_260_a10_in = dr_0_in;
assign ts_pe_260_a11_in = dr_0_in;
assign ts_pe_260_a12_in = dr_0_in;
assign ts_pe_260_a13_in = dr_0_in;
assign ts_pe_260_a14_in = dr_0_in;
assign ts_pe_260_a15_in = dr_0_in;
assign ts_pe_260_a16_in = dr_0_in;
assign ts_pe_260_a17_in = dr_0_in;
assign ts_pe_260_a18_in = dr_0_in;

// --- Compiler-generated PE for BUS dr[1]
assign dr_1_out = (ts_pe_261_a0_oe & ts_pe_261_a0_out ) | (ts_pe_261_a1_oe & ts_pe_261_a1_out ) | (ts_pe_261_a2_oe & ts_pe_261_a2_out ) | (ts_pe_261_a3_oe & ts_pe_261_a3_out ) | (ts_pe_261_a4_oe & ts_pe_261_a4_out ) | (ts_pe_261_a5_oe & ts_pe_261_a5_out ) | (ts_pe_261_a6_oe & ts_pe_261_a6_out ) | (ts_pe_261_a7_oe & ts_pe_261_a7_out ) | (ts_pe_261_a8_oe & ts_pe_261_a8_out ) | (ts_pe_261_a9_oe & ts_pe_261_a9_out ) | (ts_pe_261_a10_oe & ts_pe_261_a10_out ) | (ts_pe_261_a11_oe & ts_pe_261_a11_out ) | (ts_pe_261_a12_oe & ts_pe_261_a12_out ) | (ts_pe_261_a13_oe & ts_pe_261_a13_out ) | (ts_pe_261_a14_oe & ts_pe_261_a14_out ) | (ts_pe_261_a15_oe & ts_pe_261_a15_out ) | (ts_pe_261_a16_oe & ts_pe_261_a16_out ) | (ts_pe_261_a17_oe & ts_pe_261_a17_out ) | (ts_pe_261_a18_oe & ts_pe_261_a18_out ) | 1'b0;
assign dr_1_oe = ts_pe_261_a0_oe | ts_pe_261_a1_oe | ts_pe_261_a2_oe | ts_pe_261_a3_oe | ts_pe_261_a4_oe | ts_pe_261_a5_oe | ts_pe_261_a6_oe | ts_pe_261_a7_oe | ts_pe_261_a8_oe | ts_pe_261_a9_oe | ts_pe_261_a10_oe | ts_pe_261_a11_oe | ts_pe_261_a12_oe | ts_pe_261_a13_oe | ts_pe_261_a14_oe | ts_pe_261_a15_oe | ts_pe_261_a16_oe | ts_pe_261_a17_oe | ts_pe_261_a18_oe;
assign ts_pe_261_a0_in = dr_1_in;
assign ts_pe_261_a1_in = dr_1_in;
assign ts_pe_261_a2_in = dr_1_in;
assign ts_pe_261_a3_in = dr_1_in;
assign ts_pe_261_a4_in = dr_1_in;
assign ts_pe_261_a5_in = dr_1_in;
assign ts_pe_261_a6_in = dr_1_in;
assign ts_pe_261_a7_in = dr_1_in;
assign ts_pe_261_a8_in = dr_1_in;
assign ts_pe_261_a9_in = dr_1_in;
assign ts_pe_261_a10_in = dr_1_in;
assign ts_pe_261_a11_in = dr_1_in;
assign ts_pe_261_a12_in = dr_1_in;
assign ts_pe_261_a13_in = dr_1_in;
assign ts_pe_261_a14_in = dr_1_in;
assign ts_pe_261_a15_in = dr_1_in;
assign ts_pe_261_a16_in = dr_1_in;
assign ts_pe_261_a17_in = dr_1_in;
assign ts_pe_261_a18_in = dr_1_in;

// --- Compiler-generated PE for BUS dr[2]
assign dr_2_out = (ts_pe_262_a0_oe & ts_pe_262_a0_out ) | (ts_pe_262_a1_oe & ts_pe_262_a1_out ) | (ts_pe_262_a2_oe & ts_pe_262_a2_out ) | (ts_pe_262_a3_oe & ts_pe_262_a3_out ) | (ts_pe_262_a4_oe & ts_pe_262_a4_out ) | (ts_pe_262_a5_oe & ts_pe_262_a5_out ) | (ts_pe_262_a6_oe & ts_pe_262_a6_out ) | (ts_pe_262_a7_oe & ts_pe_262_a7_out ) | (ts_pe_262_a8_oe & ts_pe_262_a8_out ) | (ts_pe_262_a9_oe & ts_pe_262_a9_out ) | (ts_pe_262_a10_oe & ts_pe_262_a10_out ) | (ts_pe_262_a11_oe & ts_pe_262_a11_out ) | (ts_pe_262_a12_oe & ts_pe_262_a12_out ) | (ts_pe_262_a13_oe & ts_pe_262_a13_out ) | (ts_pe_262_a14_oe & ts_pe_262_a14_out ) | (ts_pe_262_a15_oe & ts_pe_262_a15_out ) | (ts_pe_262_a16_oe & ts_pe_262_a16_out ) | (ts_pe_262_a17_oe & ts_pe_262_a17_out ) | (ts_pe_262_a18_oe & ts_pe_262_a18_out ) | 1'b0;
assign dr_2_oe = ts_pe_262_a0_oe | ts_pe_262_a1_oe | ts_pe_262_a2_oe | ts_pe_262_a3_oe | ts_pe_262_a4_oe | ts_pe_262_a5_oe | ts_pe_262_a6_oe | ts_pe_262_a7_oe | ts_pe_262_a8_oe | ts_pe_262_a9_oe | ts_pe_262_a10_oe | ts_pe_262_a11_oe | ts_pe_262_a12_oe | ts_pe_262_a13_oe | ts_pe_262_a14_oe | ts_pe_262_a15_oe | ts_pe_262_a16_oe | ts_pe_262_a17_oe | ts_pe_262_a18_oe;
assign ts_pe_262_a0_in = dr_2_in;
assign ts_pe_262_a1_in = dr_2_in;
assign ts_pe_262_a2_in = dr_2_in;
assign ts_pe_262_a3_in = dr_2_in;
assign ts_pe_262_a4_in = dr_2_in;
assign ts_pe_262_a5_in = dr_2_in;
assign ts_pe_262_a6_in = dr_2_in;
assign ts_pe_262_a7_in = dr_2_in;
assign ts_pe_262_a8_in = dr_2_in;
assign ts_pe_262_a9_in = dr_2_in;
assign ts_pe_262_a10_in = dr_2_in;
assign ts_pe_262_a11_in = dr_2_in;
assign ts_pe_262_a12_in = dr_2_in;
assign ts_pe_262_a13_in = dr_2_in;
assign ts_pe_262_a14_in = dr_2_in;
assign ts_pe_262_a15_in = dr_2_in;
assign ts_pe_262_a16_in = dr_2_in;
assign ts_pe_262_a17_in = dr_2_in;
assign ts_pe_262_a18_in = dr_2_in;

// --- Compiler-generated PE for BUS dr[3]
assign dr_3_out = (ts_pe_263_a0_oe & ts_pe_263_a0_out ) | (ts_pe_263_a1_oe & ts_pe_263_a1_out ) | (ts_pe_263_a2_oe & ts_pe_263_a2_out ) | (ts_pe_263_a3_oe & ts_pe_263_a3_out ) | (ts_pe_263_a4_oe & ts_pe_263_a4_out ) | (ts_pe_263_a5_oe & ts_pe_263_a5_out ) | (ts_pe_263_a6_oe & ts_pe_263_a6_out ) | (ts_pe_263_a7_oe & ts_pe_263_a7_out ) | (ts_pe_263_a8_oe & ts_pe_263_a8_out ) | (ts_pe_263_a9_oe & ts_pe_263_a9_out ) | (ts_pe_263_a10_oe & ts_pe_263_a10_out ) | (ts_pe_263_a11_oe & ts_pe_263_a11_out ) | (ts_pe_263_a12_oe & ts_pe_263_a12_out ) | (ts_pe_263_a13_oe & ts_pe_263_a13_out ) | (ts_pe_263_a14_oe & ts_pe_263_a14_out ) | (ts_pe_263_a15_oe & ts_pe_263_a15_out ) | (ts_pe_263_a16_oe & ts_pe_263_a16_out ) | (ts_pe_263_a17_oe & ts_pe_263_a17_out ) | (ts_pe_263_a18_oe & ts_pe_263_a18_out ) | 1'b0;
assign dr_3_oe = ts_pe_263_a0_oe | ts_pe_263_a1_oe | ts_pe_263_a2_oe | ts_pe_263_a3_oe | ts_pe_263_a4_oe | ts_pe_263_a5_oe | ts_pe_263_a6_oe | ts_pe_263_a7_oe | ts_pe_263_a8_oe | ts_pe_263_a9_oe | ts_pe_263_a10_oe | ts_pe_263_a11_oe | ts_pe_263_a12_oe | ts_pe_263_a13_oe | ts_pe_263_a14_oe | ts_pe_263_a15_oe | ts_pe_263_a16_oe | ts_pe_263_a17_oe | ts_pe_263_a18_oe;
assign ts_pe_263_a0_in = dr_3_in;
assign ts_pe_263_a1_in = dr_3_in;
assign ts_pe_263_a2_in = dr_3_in;
assign ts_pe_263_a3_in = dr_3_in;
assign ts_pe_263_a4_in = dr_3_in;
assign ts_pe_263_a5_in = dr_3_in;
assign ts_pe_263_a6_in = dr_3_in;
assign ts_pe_263_a7_in = dr_3_in;
assign ts_pe_263_a8_in = dr_3_in;
assign ts_pe_263_a9_in = dr_3_in;
assign ts_pe_263_a10_in = dr_3_in;
assign ts_pe_263_a11_in = dr_3_in;
assign ts_pe_263_a12_in = dr_3_in;
assign ts_pe_263_a13_in = dr_3_in;
assign ts_pe_263_a14_in = dr_3_in;
assign ts_pe_263_a15_in = dr_3_in;
assign ts_pe_263_a16_in = dr_3_in;
assign ts_pe_263_a17_in = dr_3_in;
assign ts_pe_263_a18_in = dr_3_in;

// --- Compiler-generated PE for BUS dr[4]
assign dr_4_out = (ts_pe_264_a0_oe & ts_pe_264_a0_out ) | (ts_pe_264_a1_oe & ts_pe_264_a1_out ) | (ts_pe_264_a2_oe & ts_pe_264_a2_out ) | (ts_pe_264_a3_oe & ts_pe_264_a3_out ) | (ts_pe_264_a4_oe & ts_pe_264_a4_out ) | (ts_pe_264_a5_oe & ts_pe_264_a5_out ) | (ts_pe_264_a6_oe & ts_pe_264_a6_out ) | (ts_pe_264_a7_oe & ts_pe_264_a7_out ) | (ts_pe_264_a8_oe & ts_pe_264_a8_out ) | (ts_pe_264_a9_oe & ts_pe_264_a9_out ) | (ts_pe_264_a10_oe & ts_pe_264_a10_out ) | (ts_pe_264_a11_oe & ts_pe_264_a11_out ) | (ts_pe_264_a12_oe & ts_pe_264_a12_out ) | (ts_pe_264_a13_oe & ts_pe_264_a13_out ) | (ts_pe_264_a14_oe & ts_pe_264_a14_out ) | (ts_pe_264_a15_oe & ts_pe_264_a15_out ) | (ts_pe_264_a16_oe & ts_pe_264_a16_out ) | (ts_pe_264_a17_oe & ts_pe_264_a17_out ) | (ts_pe_264_a18_oe & ts_pe_264_a18_out ) | 1'b0;
assign dr_4_oe = ts_pe_264_a0_oe | ts_pe_264_a1_oe | ts_pe_264_a2_oe | ts_pe_264_a3_oe | ts_pe_264_a4_oe | ts_pe_264_a5_oe | ts_pe_264_a6_oe | ts_pe_264_a7_oe | ts_pe_264_a8_oe | ts_pe_264_a9_oe | ts_pe_264_a10_oe | ts_pe_264_a11_oe | ts_pe_264_a12_oe | ts_pe_264_a13_oe | ts_pe_264_a14_oe | ts_pe_264_a15_oe | ts_pe_264_a16_oe | ts_pe_264_a17_oe | ts_pe_264_a18_oe;
assign ts_pe_264_a0_in = dr_4_in;
assign ts_pe_264_a1_in = dr_4_in;
assign ts_pe_264_a2_in = dr_4_in;
assign ts_pe_264_a3_in = dr_4_in;
assign ts_pe_264_a4_in = dr_4_in;
assign ts_pe_264_a5_in = dr_4_in;
assign ts_pe_264_a6_in = dr_4_in;
assign ts_pe_264_a7_in = dr_4_in;
assign ts_pe_264_a8_in = dr_4_in;
assign ts_pe_264_a9_in = dr_4_in;
assign ts_pe_264_a10_in = dr_4_in;
assign ts_pe_264_a11_in = dr_4_in;
assign ts_pe_264_a12_in = dr_4_in;
assign ts_pe_264_a13_in = dr_4_in;
assign ts_pe_264_a14_in = dr_4_in;
assign ts_pe_264_a15_in = dr_4_in;
assign ts_pe_264_a16_in = dr_4_in;
assign ts_pe_264_a17_in = dr_4_in;
assign ts_pe_264_a18_in = dr_4_in;

// --- Compiler-generated PE for BUS dr[5]
assign dr_5_out = (ts_pe_265_a0_oe & ts_pe_265_a0_out ) | (ts_pe_265_a1_oe & ts_pe_265_a1_out ) | (ts_pe_265_a2_oe & ts_pe_265_a2_out ) | (ts_pe_265_a3_oe & ts_pe_265_a3_out ) | (ts_pe_265_a4_oe & ts_pe_265_a4_out ) | (ts_pe_265_a5_oe & ts_pe_265_a5_out ) | (ts_pe_265_a6_oe & ts_pe_265_a6_out ) | (ts_pe_265_a7_oe & ts_pe_265_a7_out ) | (ts_pe_265_a8_oe & ts_pe_265_a8_out ) | (ts_pe_265_a9_oe & ts_pe_265_a9_out ) | (ts_pe_265_a10_oe & ts_pe_265_a10_out ) | (ts_pe_265_a11_oe & ts_pe_265_a11_out ) | (ts_pe_265_a12_oe & ts_pe_265_a12_out ) | (ts_pe_265_a13_oe & ts_pe_265_a13_out ) | (ts_pe_265_a14_oe & ts_pe_265_a14_out ) | (ts_pe_265_a15_oe & ts_pe_265_a15_out ) | (ts_pe_265_a16_oe & ts_pe_265_a16_out ) | (ts_pe_265_a17_oe & ts_pe_265_a17_out ) | (ts_pe_265_a18_oe & ts_pe_265_a18_out ) | 1'b0;
assign dr_5_oe = ts_pe_265_a0_oe | ts_pe_265_a1_oe | ts_pe_265_a2_oe | ts_pe_265_a3_oe | ts_pe_265_a4_oe | ts_pe_265_a5_oe | ts_pe_265_a6_oe | ts_pe_265_a7_oe | ts_pe_265_a8_oe | ts_pe_265_a9_oe | ts_pe_265_a10_oe | ts_pe_265_a11_oe | ts_pe_265_a12_oe | ts_pe_265_a13_oe | ts_pe_265_a14_oe | ts_pe_265_a15_oe | ts_pe_265_a16_oe | ts_pe_265_a17_oe | ts_pe_265_a18_oe;
assign ts_pe_265_a0_in = dr_5_in;
assign ts_pe_265_a1_in = dr_5_in;
assign ts_pe_265_a2_in = dr_5_in;
assign ts_pe_265_a3_in = dr_5_in;
assign ts_pe_265_a4_in = dr_5_in;
assign ts_pe_265_a5_in = dr_5_in;
assign ts_pe_265_a6_in = dr_5_in;
assign ts_pe_265_a7_in = dr_5_in;
assign ts_pe_265_a8_in = dr_5_in;
assign ts_pe_265_a9_in = dr_5_in;
assign ts_pe_265_a10_in = dr_5_in;
assign ts_pe_265_a11_in = dr_5_in;
assign ts_pe_265_a12_in = dr_5_in;
assign ts_pe_265_a13_in = dr_5_in;
assign ts_pe_265_a14_in = dr_5_in;
assign ts_pe_265_a15_in = dr_5_in;
assign ts_pe_265_a16_in = dr_5_in;
assign ts_pe_265_a17_in = dr_5_in;
assign ts_pe_265_a18_in = dr_5_in;

// --- Compiler-generated PE for BUS dr[6]
assign dr_6_out = (ts_pe_266_a0_oe & ts_pe_266_a0_out ) | (ts_pe_266_a1_oe & ts_pe_266_a1_out ) | (ts_pe_266_a2_oe & ts_pe_266_a2_out ) | (ts_pe_266_a3_oe & ts_pe_266_a3_out ) | (ts_pe_266_a4_oe & ts_pe_266_a4_out ) | (ts_pe_266_a5_oe & ts_pe_266_a5_out ) | (ts_pe_266_a6_oe & ts_pe_266_a6_out ) | (ts_pe_266_a7_oe & ts_pe_266_a7_out ) | (ts_pe_266_a8_oe & ts_pe_266_a8_out ) | (ts_pe_266_a9_oe & ts_pe_266_a9_out ) | (ts_pe_266_a10_oe & ts_pe_266_a10_out ) | (ts_pe_266_a11_oe & ts_pe_266_a11_out ) | (ts_pe_266_a12_oe & ts_pe_266_a12_out ) | (ts_pe_266_a13_oe & ts_pe_266_a13_out ) | (ts_pe_266_a14_oe & ts_pe_266_a14_out ) | (ts_pe_266_a15_oe & ts_pe_266_a15_out ) | (ts_pe_266_a16_oe & ts_pe_266_a16_out ) | (ts_pe_266_a17_oe & ts_pe_266_a17_out ) | (ts_pe_266_a18_oe & ts_pe_266_a18_out ) | 1'b0;
assign dr_6_oe = ts_pe_266_a0_oe | ts_pe_266_a1_oe | ts_pe_266_a2_oe | ts_pe_266_a3_oe | ts_pe_266_a4_oe | ts_pe_266_a5_oe | ts_pe_266_a6_oe | ts_pe_266_a7_oe | ts_pe_266_a8_oe | ts_pe_266_a9_oe | ts_pe_266_a10_oe | ts_pe_266_a11_oe | ts_pe_266_a12_oe | ts_pe_266_a13_oe | ts_pe_266_a14_oe | ts_pe_266_a15_oe | ts_pe_266_a16_oe | ts_pe_266_a17_oe | ts_pe_266_a18_oe;
assign ts_pe_266_a0_in = dr_6_in;
assign ts_pe_266_a1_in = dr_6_in;
assign ts_pe_266_a2_in = dr_6_in;
assign ts_pe_266_a3_in = dr_6_in;
assign ts_pe_266_a4_in = dr_6_in;
assign ts_pe_266_a5_in = dr_6_in;
assign ts_pe_266_a6_in = dr_6_in;
assign ts_pe_266_a7_in = dr_6_in;
assign ts_pe_266_a8_in = dr_6_in;
assign ts_pe_266_a9_in = dr_6_in;
assign ts_pe_266_a10_in = dr_6_in;
assign ts_pe_266_a11_in = dr_6_in;
assign ts_pe_266_a12_in = dr_6_in;
assign ts_pe_266_a13_in = dr_6_in;
assign ts_pe_266_a14_in = dr_6_in;
assign ts_pe_266_a15_in = dr_6_in;
assign ts_pe_266_a16_in = dr_6_in;
assign ts_pe_266_a17_in = dr_6_in;
assign ts_pe_266_a18_in = dr_6_in;

// --- Compiler-generated PE for BUS dr[7]
assign dr_7_out = (ts_pe_267_a0_oe & ts_pe_267_a0_out ) | (ts_pe_267_a1_oe & ts_pe_267_a1_out ) | (ts_pe_267_a2_oe & ts_pe_267_a2_out ) | (ts_pe_267_a3_oe & ts_pe_267_a3_out ) | (ts_pe_267_a4_oe & ts_pe_267_a4_out ) | (ts_pe_267_a5_oe & ts_pe_267_a5_out ) | (ts_pe_267_a6_oe & ts_pe_267_a6_out ) | (ts_pe_267_a7_oe & ts_pe_267_a7_out ) | (ts_pe_267_a8_oe & ts_pe_267_a8_out ) | (ts_pe_267_a9_oe & ts_pe_267_a9_out ) | (ts_pe_267_a10_oe & ts_pe_267_a10_out ) | (ts_pe_267_a11_oe & ts_pe_267_a11_out ) | (ts_pe_267_a12_oe & ts_pe_267_a12_out ) | (ts_pe_267_a13_oe & ts_pe_267_a13_out ) | (ts_pe_267_a14_oe & ts_pe_267_a14_out ) | (ts_pe_267_a15_oe & ts_pe_267_a15_out ) | (ts_pe_267_a16_oe & ts_pe_267_a16_out ) | (ts_pe_267_a17_oe & ts_pe_267_a17_out ) | (ts_pe_267_a18_oe & ts_pe_267_a18_out ) | 1'b0;
assign dr_7_oe = ts_pe_267_a0_oe | ts_pe_267_a1_oe | ts_pe_267_a2_oe | ts_pe_267_a3_oe | ts_pe_267_a4_oe | ts_pe_267_a5_oe | ts_pe_267_a6_oe | ts_pe_267_a7_oe | ts_pe_267_a8_oe | ts_pe_267_a9_oe | ts_pe_267_a10_oe | ts_pe_267_a11_oe | ts_pe_267_a12_oe | ts_pe_267_a13_oe | ts_pe_267_a14_oe | ts_pe_267_a15_oe | ts_pe_267_a16_oe | ts_pe_267_a17_oe | ts_pe_267_a18_oe;
assign ts_pe_267_a0_in = dr_7_in;
assign ts_pe_267_a1_in = dr_7_in;
assign ts_pe_267_a2_in = dr_7_in;
assign ts_pe_267_a3_in = dr_7_in;
assign ts_pe_267_a4_in = dr_7_in;
assign ts_pe_267_a5_in = dr_7_in;
assign ts_pe_267_a6_in = dr_7_in;
assign ts_pe_267_a7_in = dr_7_in;
assign ts_pe_267_a8_in = dr_7_in;
assign ts_pe_267_a9_in = dr_7_in;
assign ts_pe_267_a10_in = dr_7_in;
assign ts_pe_267_a11_in = dr_7_in;
assign ts_pe_267_a12_in = dr_7_in;
assign ts_pe_267_a13_in = dr_7_in;
assign ts_pe_267_a14_in = dr_7_in;
assign ts_pe_267_a15_in = dr_7_in;
assign ts_pe_267_a16_in = dr_7_in;
assign ts_pe_267_a17_in = dr_7_in;
assign ts_pe_267_a18_in = dr_7_in;

// --- Compiler-generated PE for BUS dr[8]
assign dr_8_out = (ts_pe_268_a0_oe & ts_pe_268_a0_out ) | (ts_pe_268_a1_oe & ts_pe_268_a1_out ) | (ts_pe_268_a2_oe & ts_pe_268_a2_out ) | (ts_pe_268_a3_oe & ts_pe_268_a3_out ) | (ts_pe_268_a4_oe & ts_pe_268_a4_out ) | (ts_pe_268_a5_oe & ts_pe_268_a5_out ) | (ts_pe_268_a6_oe & ts_pe_268_a6_out ) | (ts_pe_268_a7_oe & ts_pe_268_a7_out ) | (ts_pe_268_a8_oe & ts_pe_268_a8_out ) | (ts_pe_268_a9_oe & ts_pe_268_a9_out ) | (ts_pe_268_a10_oe & ts_pe_268_a10_out ) | (ts_pe_268_a11_oe & ts_pe_268_a11_out ) | (ts_pe_268_a12_oe & ts_pe_268_a12_out ) | (ts_pe_268_a13_oe & ts_pe_268_a13_out ) | (ts_pe_268_a14_oe & ts_pe_268_a14_out ) | (ts_pe_268_a15_oe & ts_pe_268_a15_out ) | (ts_pe_268_a16_oe & ts_pe_268_a16_out ) | (ts_pe_268_a17_oe & ts_pe_268_a17_out ) | (ts_pe_268_a18_oe & ts_pe_268_a18_out ) | 1'b0;
assign dr_8_oe = ts_pe_268_a0_oe | ts_pe_268_a1_oe | ts_pe_268_a2_oe | ts_pe_268_a3_oe | ts_pe_268_a4_oe | ts_pe_268_a5_oe | ts_pe_268_a6_oe | ts_pe_268_a7_oe | ts_pe_268_a8_oe | ts_pe_268_a9_oe | ts_pe_268_a10_oe | ts_pe_268_a11_oe | ts_pe_268_a12_oe | ts_pe_268_a13_oe | ts_pe_268_a14_oe | ts_pe_268_a15_oe | ts_pe_268_a16_oe | ts_pe_268_a17_oe | ts_pe_268_a18_oe;
assign ts_pe_268_a0_in = dr_8_in;
assign ts_pe_268_a1_in = dr_8_in;
assign ts_pe_268_a2_in = dr_8_in;
assign ts_pe_268_a3_in = dr_8_in;
assign ts_pe_268_a4_in = dr_8_in;
assign ts_pe_268_a5_in = dr_8_in;
assign ts_pe_268_a6_in = dr_8_in;
assign ts_pe_268_a7_in = dr_8_in;
assign ts_pe_268_a8_in = dr_8_in;
assign ts_pe_268_a9_in = dr_8_in;
assign ts_pe_268_a10_in = dr_8_in;
assign ts_pe_268_a11_in = dr_8_in;
assign ts_pe_268_a12_in = dr_8_in;
assign ts_pe_268_a13_in = dr_8_in;
assign ts_pe_268_a14_in = dr_8_in;
assign ts_pe_268_a15_in = dr_8_in;
assign ts_pe_268_a16_in = dr_8_in;
assign ts_pe_268_a17_in = dr_8_in;
assign ts_pe_268_a18_in = dr_8_in;

// --- Compiler-generated PE for BUS dr[9]
assign dr_9_out = (ts_pe_269_a0_oe & ts_pe_269_a0_out ) | (ts_pe_269_a1_oe & ts_pe_269_a1_out ) | (ts_pe_269_a2_oe & ts_pe_269_a2_out ) | (ts_pe_269_a3_oe & ts_pe_269_a3_out ) | (ts_pe_269_a4_oe & ts_pe_269_a4_out ) | (ts_pe_269_a5_oe & ts_pe_269_a5_out ) | (ts_pe_269_a6_oe & ts_pe_269_a6_out ) | (ts_pe_269_a7_oe & ts_pe_269_a7_out ) | (ts_pe_269_a8_oe & ts_pe_269_a8_out ) | (ts_pe_269_a9_oe & ts_pe_269_a9_out ) | (ts_pe_269_a10_oe & ts_pe_269_a10_out ) | (ts_pe_269_a11_oe & ts_pe_269_a11_out ) | (ts_pe_269_a12_oe & ts_pe_269_a12_out ) | (ts_pe_269_a13_oe & ts_pe_269_a13_out ) | (ts_pe_269_a14_oe & ts_pe_269_a14_out ) | (ts_pe_269_a15_oe & ts_pe_269_a15_out ) | (ts_pe_269_a16_oe & ts_pe_269_a16_out ) | (ts_pe_269_a17_oe & ts_pe_269_a17_out ) | (ts_pe_269_a18_oe & ts_pe_269_a18_out ) | 1'b0;
assign dr_9_oe = ts_pe_269_a0_oe | ts_pe_269_a1_oe | ts_pe_269_a2_oe | ts_pe_269_a3_oe | ts_pe_269_a4_oe | ts_pe_269_a5_oe | ts_pe_269_a6_oe | ts_pe_269_a7_oe | ts_pe_269_a8_oe | ts_pe_269_a9_oe | ts_pe_269_a10_oe | ts_pe_269_a11_oe | ts_pe_269_a12_oe | ts_pe_269_a13_oe | ts_pe_269_a14_oe | ts_pe_269_a15_oe | ts_pe_269_a16_oe | ts_pe_269_a17_oe | ts_pe_269_a18_oe;
assign ts_pe_269_a0_in = dr_9_in;
assign ts_pe_269_a1_in = dr_9_in;
assign ts_pe_269_a2_in = dr_9_in;
assign ts_pe_269_a3_in = dr_9_in;
assign ts_pe_269_a4_in = dr_9_in;
assign ts_pe_269_a5_in = dr_9_in;
assign ts_pe_269_a6_in = dr_9_in;
assign ts_pe_269_a7_in = dr_9_in;
assign ts_pe_269_a8_in = dr_9_in;
assign ts_pe_269_a9_in = dr_9_in;
assign ts_pe_269_a10_in = dr_9_in;
assign ts_pe_269_a11_in = dr_9_in;
assign ts_pe_269_a12_in = dr_9_in;
assign ts_pe_269_a13_in = dr_9_in;
assign ts_pe_269_a14_in = dr_9_in;
assign ts_pe_269_a15_in = dr_9_in;
assign ts_pe_269_a16_in = dr_9_in;
assign ts_pe_269_a17_in = dr_9_in;
assign ts_pe_269_a18_in = dr_9_in;

// --- Compiler-generated PE for BUS dr[10]
assign dr_10_out = (ts_pe_270_a0_oe & ts_pe_270_a0_out ) | (ts_pe_270_a1_oe & ts_pe_270_a1_out ) | (ts_pe_270_a2_oe & ts_pe_270_a2_out ) | (ts_pe_270_a3_oe & ts_pe_270_a3_out ) | (ts_pe_270_a4_oe & ts_pe_270_a4_out ) | (ts_pe_270_a5_oe & ts_pe_270_a5_out ) | (ts_pe_270_a6_oe & ts_pe_270_a6_out ) | (ts_pe_270_a7_oe & ts_pe_270_a7_out ) | (ts_pe_270_a8_oe & ts_pe_270_a8_out ) | (ts_pe_270_a9_oe & ts_pe_270_a9_out ) | (ts_pe_270_a10_oe & ts_pe_270_a10_out ) | (ts_pe_270_a11_oe & ts_pe_270_a11_out ) | (ts_pe_270_a12_oe & ts_pe_270_a12_out ) | (ts_pe_270_a13_oe & ts_pe_270_a13_out ) | (ts_pe_270_a14_oe & ts_pe_270_a14_out ) | (ts_pe_270_a15_oe & ts_pe_270_a15_out ) | (ts_pe_270_a16_oe & ts_pe_270_a16_out ) | (ts_pe_270_a17_oe & ts_pe_270_a17_out ) | (ts_pe_270_a18_oe & ts_pe_270_a18_out ) | 1'b0;
assign dr_10_oe = ts_pe_270_a0_oe | ts_pe_270_a1_oe | ts_pe_270_a2_oe | ts_pe_270_a3_oe | ts_pe_270_a4_oe | ts_pe_270_a5_oe | ts_pe_270_a6_oe | ts_pe_270_a7_oe | ts_pe_270_a8_oe | ts_pe_270_a9_oe | ts_pe_270_a10_oe | ts_pe_270_a11_oe | ts_pe_270_a12_oe | ts_pe_270_a13_oe | ts_pe_270_a14_oe | ts_pe_270_a15_oe | ts_pe_270_a16_oe | ts_pe_270_a17_oe | ts_pe_270_a18_oe;
assign ts_pe_270_a0_in = dr_10_in;
assign ts_pe_270_a1_in = dr_10_in;
assign ts_pe_270_a2_in = dr_10_in;
assign ts_pe_270_a3_in = dr_10_in;
assign ts_pe_270_a4_in = dr_10_in;
assign ts_pe_270_a5_in = dr_10_in;
assign ts_pe_270_a6_in = dr_10_in;
assign ts_pe_270_a7_in = dr_10_in;
assign ts_pe_270_a8_in = dr_10_in;
assign ts_pe_270_a9_in = dr_10_in;
assign ts_pe_270_a10_in = dr_10_in;
assign ts_pe_270_a11_in = dr_10_in;
assign ts_pe_270_a12_in = dr_10_in;
assign ts_pe_270_a13_in = dr_10_in;
assign ts_pe_270_a14_in = dr_10_in;
assign ts_pe_270_a15_in = dr_10_in;
assign ts_pe_270_a16_in = dr_10_in;
assign ts_pe_270_a17_in = dr_10_in;
assign ts_pe_270_a18_in = dr_10_in;

// --- Compiler-generated PE for BUS dr[11]
assign dr_11_out = (ts_pe_271_a0_oe & ts_pe_271_a0_out ) | (ts_pe_271_a1_oe & ts_pe_271_a1_out ) | (ts_pe_271_a2_oe & ts_pe_271_a2_out ) | (ts_pe_271_a3_oe & ts_pe_271_a3_out ) | (ts_pe_271_a4_oe & ts_pe_271_a4_out ) | 1'b0;
assign dr_11_oe = ts_pe_271_a0_oe | ts_pe_271_a1_oe | ts_pe_271_a2_oe | ts_pe_271_a3_oe | ts_pe_271_a4_oe;
assign ts_pe_271_a0_in = dr_11_in;
assign ts_pe_271_a1_in = dr_11_in;
assign ts_pe_271_a2_in = dr_11_in;
assign ts_pe_271_a3_in = dr_11_in;
assign ts_pe_271_a4_in = dr_11_in;
endmodule
/* verilator lint_on LITENDIAN */
