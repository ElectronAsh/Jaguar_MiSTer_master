/* verilator lint_off LITENDIAN */
`include "defs.v"

module blit
(
	output [0:23] blit_addr_out,
	output [0:23] blit_addr_oe,
	input [0:23] blit_addr_in,
	output wdata_0_out,
	output wdata_0_oe,
	input wdata_0_in,
	output wdata_1_out,
	output wdata_1_oe,
	input wdata_1_in,
	output wdata_2_out,
	output wdata_2_oe,
	input wdata_2_in,
	output wdata_3_out,
	output wdata_3_oe,
	input wdata_3_in,
	output wdata_4_out,
	output wdata_4_oe,
	input wdata_4_in,
	output wdata_5_out,
	output wdata_5_oe,
	input wdata_5_in,
	output wdata_6_out,
	output wdata_6_oe,
	input wdata_6_in,
	output wdata_7_out,
	output wdata_7_oe,
	input wdata_7_in,
	output wdata_8_out,
	output wdata_8_oe,
	input wdata_8_in,
	output wdata_9_out,
	output wdata_9_oe,
	input wdata_9_in,
	output wdata_10_out,
	output wdata_10_oe,
	input wdata_10_in,
	output wdata_11_out,
	output wdata_11_oe,
	input wdata_11_in,
	output wdata_12_out,
	output wdata_12_oe,
	input wdata_12_in,
	output wdata_13_out,
	output wdata_13_oe,
	input wdata_13_in,
	output wdata_14_out,
	output wdata_14_oe,
	input wdata_14_in,
	output wdata_15_out,
	output wdata_15_oe,
	input wdata_15_in,
	output wdata_16_out,
	output wdata_16_oe,
	input wdata_16_in,
	output wdata_17_out,
	output wdata_17_oe,
	input wdata_17_in,
	output wdata_18_out,
	output wdata_18_oe,
	input wdata_18_in,
	output wdata_19_out,
	output wdata_19_oe,
	input wdata_19_in,
	output wdata_20_out,
	output wdata_20_oe,
	input wdata_20_in,
	output wdata_21_out,
	output wdata_21_oe,
	input wdata_21_in,
	output wdata_22_out,
	output wdata_22_oe,
	input wdata_22_in,
	output wdata_23_out,
	output wdata_23_oe,
	input wdata_23_in,
	output wdata_24_out,
	output wdata_24_oe,
	input wdata_24_in,
	output wdata_25_out,
	output wdata_25_oe,
	input wdata_25_in,
	output wdata_26_out,
	output wdata_26_oe,
	input wdata_26_in,
	output wdata_27_out,
	output wdata_27_oe,
	input wdata_27_in,
	output wdata_28_out,
	output wdata_28_oe,
	input wdata_28_in,
	output wdata_29_out,
	output wdata_29_oe,
	input wdata_29_in,
	output wdata_30_out,
	output wdata_30_oe,
	input wdata_30_in,
	output wdata_31_out,
	output wdata_31_oe,
	input wdata_31_in,
	output wdata_32_out,
	output wdata_32_oe,
	input wdata_32_in,
	output wdata_33_out,
	output wdata_33_oe,
	input wdata_33_in,
	output wdata_34_out,
	output wdata_34_oe,
	input wdata_34_in,
	output wdata_35_out,
	output wdata_35_oe,
	input wdata_35_in,
	output wdata_36_out,
	output wdata_36_oe,
	input wdata_36_in,
	output wdata_37_out,
	output wdata_37_oe,
	input wdata_37_in,
	output wdata_38_out,
	output wdata_38_oe,
	input wdata_38_in,
	output wdata_39_out,
	output wdata_39_oe,
	input wdata_39_in,
	output wdata_40_out,
	output wdata_40_oe,
	input wdata_40_in,
	output wdata_41_out,
	output wdata_41_oe,
	input wdata_41_in,
	output wdata_42_out,
	output wdata_42_oe,
	input wdata_42_in,
	output wdata_43_out,
	output wdata_43_oe,
	input wdata_43_in,
	output wdata_44_out,
	output wdata_44_oe,
	input wdata_44_in,
	output wdata_45_out,
	output wdata_45_oe,
	input wdata_45_in,
	output wdata_46_out,
	output wdata_46_oe,
	input wdata_46_in,
	output wdata_47_out,
	output wdata_47_oe,
	input wdata_47_in,
	output wdata_48_out,
	output wdata_48_oe,
	input wdata_48_in,
	output wdata_49_out,
	output wdata_49_oe,
	input wdata_49_in,
	output wdata_50_out,
	output wdata_50_oe,
	input wdata_50_in,
	output wdata_51_out,
	output wdata_51_oe,
	input wdata_51_in,
	output wdata_52_out,
	output wdata_52_oe,
	input wdata_52_in,
	output wdata_53_out,
	output wdata_53_oe,
	input wdata_53_in,
	output wdata_54_out,
	output wdata_54_oe,
	input wdata_54_in,
	output wdata_55_out,
	output wdata_55_oe,
	input wdata_55_in,
	output wdata_56_out,
	output wdata_56_oe,
	input wdata_56_in,
	output wdata_57_out,
	output wdata_57_oe,
	input wdata_57_in,
	output wdata_58_out,
	output wdata_58_oe,
	input wdata_58_in,
	output wdata_59_out,
	output wdata_59_oe,
	input wdata_59_in,
	output wdata_60_out,
	output wdata_60_oe,
	input wdata_60_in,
	output wdata_61_out,
	output wdata_61_oe,
	input wdata_61_in,
	output wdata_62_out,
	output wdata_62_oe,
	input wdata_62_in,
	output wdata_63_out,
	output wdata_63_oe,
	input wdata_63_in,
	output justify_out,
	output justify_oe,
	input justify_in,
	output mreq_out,
	output mreq_oe,
	input mreq_in,
	output read_out,
	output read_oe,
	input read_in,
	output width_0_out,
	output width_0_oe,
	input width_0_in,
	output width_1_out,
	output width_1_oe,
	input width_1_in,
	output width_2_out,
	output width_2_oe,
	input width_2_in,
	output width_3_out,
	output width_3_oe,
	input width_3_in,
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
	output blit_breq_0,
	output blit_breq_1,
	output blit_int,
	input ack,
	input big_pix,
	input blit_back,
	input bliten,
	input clk,
	input tlw,
	input data_0,
	input data_1,
	input data_2,
	input data_3,
	input data_4,
	input data_5,
	input data_6,
	input data_7,
	input data_8,
	input data_9,
	input data_10,
	input data_11,
	input data_12,
	input data_13,
	input data_14,
	input data_15,
	input data_16,
	input data_17,
	input data_18,
	input data_19,
	input data_20,
	input data_21,
	input data_22,
	input data_23,
	input data_24,
	input data_25,
	input data_26,
	input data_27,
	input data_28,
	input data_29,
	input data_30,
	input data_31,
	input data_32,
	input data_33,
	input data_34,
	input data_35,
	input data_36,
	input data_37,
	input data_38,
	input data_39,
	input data_40,
	input data_41,
	input data_42,
	input data_43,
	input data_44,
	input data_45,
	input data_46,
	input data_47,
	input data_48,
	input data_49,
	input data_50,
	input data_51,
	input data_52,
	input data_53,
	input data_54,
	input data_55,
	input data_56,
	input data_57,
	input data_58,
	input data_59,
	input data_60,
	input data_61,
	input data_62,
	input data_63,
	input [0:23] gpu_addr,
	input [0:31] gpu_din,
	input gpu_memw,
	input xreset_n,
	input sys_clk // Generated
);
wire [0:23] address;
wire [0:14] a1_win_x;
wire [0:15] a1_x;
wire [0:15] a2_x;
wire loadstrt;
wire load_strobe;
wire clk_16;
wire clk_17;
wire clk_18;
wire dcomp_0;
wire dcomp_1;
wire dcomp_2;
wire dcomp_3;
wire dcomp_4;
wire dcomp_5;
wire dcomp_6;
wire dcomp_7;
wire srcd_0;
wire srcd_1;
wire srcd_2;
wire srcd_3;
wire srcd_4;
wire srcd_5;
wire srcd_6;
wire srcd_7;
wire zcomp_0;
wire zcomp_1;
wire zcomp_2;
wire zcomp_3;
wire cmpdst;
wire daddasel_0;
wire daddasel_1;
wire daddasel_2;
wire daddbsel_0;
wire daddbsel_1;
wire daddbsel_2;
wire daddmode_0;
wire daddmode_1;
wire daddmode_2;
wire daddq_sel;
wire data_ena;
wire data_sel_0;
wire data_sel_1;
wire dbinh_n_0;
wire dbinh_n_1;
wire dbinh_n_2;
wire dbinh_n_3;
wire dbinh_n_4;
wire dbinh_n_5;
wire dbinh_n_6;
wire dbinh_n_7;
wire dend_0;
wire dend_1;
wire dend_2;
wire dend_3;
wire dend_4;
wire dend_5;
wire dpipe_0;
wire dpipe_1;
wire dstart_0;
wire dstart_1;
wire dstart_2;
wire dstart_3;
wire dstart_4;
wire dstart_5;
wire dstdld_0;
wire dstdld_1;
wire dstzld_0;
wire dstzld_1;
wire iincld;
wire intld_0;
wire intld_1;
wire intld_2;
wire intld_3;
wire lfu_func_0;
wire lfu_func_1;
wire lfu_func_2;
wire lfu_func_3;
wire patdld_0;
wire patdld_1;
wire phrase_mode;
wire reset_n;
wire srcd1ld_0;
wire srcd1ld_1;
wire srcdread;
wire srczread;
wire srcshift_0;
wire srcshift_1;
wire srcshift_2;
wire srcshift_3;
wire srcshift_4;
wire srcshift_5;
wire srcz1ld_0;
wire srcz1ld_1;
wire srcz2add;
wire srcz2ld_0;
wire srcz2ld_1;
wire zedld_0;
wire zedld_1;
wire zedld_2;
wire zedld_3;
wire zincld;
wire zmode_0;
wire zmode_1;
wire zmode_2;
wire zpipe_0;
wire zpipe_1;
wire a1_outside;
wire a1_pixsize_0;
wire a1_pixsize_1;
wire a1_pixsize_2;
wire a1addx_0;
wire a1addx_1;
wire a1addy;
wire a1xsign;
wire a1ysign;
wire a2_pixsize_0;
wire a2_pixsize_1;
wire a2_pixsize_2;
wire a2addx_0;
wire a2addx_1;
wire a2addy;
wire a2xsign;
wire a2ysign;
wire pixa_0;
wire pixa_1;
wire pixa_2;
wire addasel_0;
wire addasel_1;
wire addasel_2;
wire addbsel_0;
wire addbsel_1;
wire addqsel;
wire adda_xconst_0;
wire adda_xconst_1;
wire adda_xconst_2;
wire adda_yconst;
wire addareg;
wire a1baseld;
wire a1flagld;
wire a1fracld;
wire a1incld;
wire a1incfld;
wire a1posrd;
wire a1posfrd;
wire a1ptrld;
wire a1stepld;
wire a1stepfld;
wire a1winld;
wire a2baseld;
wire a2flagld;
wire a2posrd;
wire a2ptrld;
wire a2stepld;
wire a2winld;
wire apipe;
wire gena2;
wire modx_0;
wire modx_1;
wire modx_2;
wire suba_x;
wire suba_y;
wire zaddr;
wire a1fracldi;
wire a1ptrldi;
wire a2ptrldi;
wire dstdread;
wire dstzread;
wire patdadd;
wire patfadd;
wire srcz1add;
wire cmdld;
wire countld;
wire statrd;
wire stopld;
wire ts_pe_37_a0_out;
wire ts_pe_37_a0_oe;
wire ts_pe_37_a0_in;
wire ts_pe_37_a1_out;
wire ts_pe_37_a1_oe;
wire ts_pe_37_a1_in;
wire ts_pe_38_a0_out;
wire ts_pe_38_a0_oe;
wire ts_pe_38_a0_in;
wire ts_pe_38_a1_out;
wire ts_pe_38_a1_oe;
wire ts_pe_38_a1_in;
wire ts_pe_39_a0_out;
wire ts_pe_39_a0_oe;
wire ts_pe_39_a0_in;
wire ts_pe_39_a1_out;
wire ts_pe_39_a1_oe;
wire ts_pe_39_a1_in;
wire ts_pe_40_a0_out;
wire ts_pe_40_a0_oe;
wire ts_pe_40_a0_in;
wire ts_pe_40_a1_out;
wire ts_pe_40_a1_oe;
wire ts_pe_40_a1_in;
wire ts_pe_41_a0_out;
wire ts_pe_41_a0_oe;
wire ts_pe_41_a0_in;
wire ts_pe_41_a1_out;
wire ts_pe_41_a1_oe;
wire ts_pe_41_a1_in;
wire ts_pe_42_a0_out;
wire ts_pe_42_a0_oe;
wire ts_pe_42_a0_in;
wire ts_pe_42_a1_out;
wire ts_pe_42_a1_oe;
wire ts_pe_42_a1_in;
wire ts_pe_43_a0_out;
wire ts_pe_43_a0_oe;
wire ts_pe_43_a0_in;
wire ts_pe_43_a1_out;
wire ts_pe_43_a1_oe;
wire ts_pe_43_a1_in;
wire ts_pe_44_a0_out;
wire ts_pe_44_a0_oe;
wire ts_pe_44_a0_in;
wire ts_pe_44_a1_out;
wire ts_pe_44_a1_oe;
wire ts_pe_44_a1_in;
wire ts_pe_45_a0_out;
wire ts_pe_45_a0_oe;
wire ts_pe_45_a0_in;
wire ts_pe_45_a1_out;
wire ts_pe_45_a1_oe;
wire ts_pe_45_a1_in;
wire ts_pe_46_a0_out;
wire ts_pe_46_a0_oe;
wire ts_pe_46_a0_in;
wire ts_pe_46_a1_out;
wire ts_pe_46_a1_oe;
wire ts_pe_46_a1_in;
wire ts_pe_47_a0_out;
wire ts_pe_47_a0_oe;
wire ts_pe_47_a0_in;
wire ts_pe_47_a1_out;
wire ts_pe_47_a1_oe;
wire ts_pe_47_a1_in;
wire ts_pe_48_a0_out;
wire ts_pe_48_a0_oe;
wire ts_pe_48_a0_in;
wire ts_pe_48_a1_out;
wire ts_pe_48_a1_oe;
wire ts_pe_48_a1_in;
wire ts_pe_49_a0_out;
wire ts_pe_49_a0_oe;
wire ts_pe_49_a0_in;
wire ts_pe_49_a1_out;
wire ts_pe_49_a1_oe;
wire ts_pe_49_a1_in;
wire ts_pe_50_a0_out;
wire ts_pe_50_a0_oe;
wire ts_pe_50_a0_in;
wire ts_pe_50_a1_out;
wire ts_pe_50_a1_oe;
wire ts_pe_50_a1_in;
wire ts_pe_51_a0_out;
wire ts_pe_51_a0_oe;
wire ts_pe_51_a0_in;
wire ts_pe_51_a1_out;
wire ts_pe_51_a1_oe;
wire ts_pe_51_a1_in;
wire ts_pe_52_a0_out;
wire ts_pe_52_a0_oe;
wire ts_pe_52_a0_in;
wire ts_pe_52_a1_out;
wire ts_pe_52_a1_oe;
wire ts_pe_52_a1_in;
wire ts_pe_53_a0_out;
wire ts_pe_53_a0_oe;
wire ts_pe_53_a0_in;
wire ts_pe_53_a1_out;
wire ts_pe_53_a1_oe;
wire ts_pe_53_a1_in;
wire ts_pe_54_a0_out;
wire ts_pe_54_a0_oe;
wire ts_pe_54_a0_in;
wire ts_pe_54_a1_out;
wire ts_pe_54_a1_oe;
wire ts_pe_54_a1_in;
wire ts_pe_55_a0_out;
wire ts_pe_55_a0_oe;
wire ts_pe_55_a0_in;
wire ts_pe_55_a1_out;
wire ts_pe_55_a1_oe;
wire ts_pe_55_a1_in;
wire ts_pe_56_a0_out;
wire ts_pe_56_a0_oe;
wire ts_pe_56_a0_in;
wire ts_pe_56_a1_out;
wire ts_pe_56_a1_oe;
wire ts_pe_56_a1_in;
wire ts_pe_57_a0_out;
wire ts_pe_57_a0_oe;
wire ts_pe_57_a0_in;
wire ts_pe_57_a1_out;
wire ts_pe_57_a1_oe;
wire ts_pe_57_a1_in;
wire ts_pe_58_a0_out;
wire ts_pe_58_a0_oe;
wire ts_pe_58_a0_in;
wire ts_pe_58_a1_out;
wire ts_pe_58_a1_oe;
wire ts_pe_58_a1_in;
wire ts_pe_59_a0_out;
wire ts_pe_59_a0_oe;
wire ts_pe_59_a0_in;
wire ts_pe_59_a1_out;
wire ts_pe_59_a1_oe;
wire ts_pe_59_a1_in;
wire ts_pe_60_a0_out;
wire ts_pe_60_a0_oe;
wire ts_pe_60_a0_in;
wire ts_pe_60_a1_out;
wire ts_pe_60_a1_oe;
wire ts_pe_60_a1_in;
wire ts_pe_61_a0_out;
wire ts_pe_61_a0_oe;
wire ts_pe_61_a0_in;
wire ts_pe_61_a1_out;
wire ts_pe_61_a1_oe;
wire ts_pe_61_a1_in;
wire ts_pe_62_a0_out;
wire ts_pe_62_a0_oe;
wire ts_pe_62_a0_in;
wire ts_pe_62_a1_out;
wire ts_pe_62_a1_oe;
wire ts_pe_62_a1_in;
wire ts_pe_63_a0_out;
wire ts_pe_63_a0_oe;
wire ts_pe_63_a0_in;
wire ts_pe_63_a1_out;
wire ts_pe_63_a1_oe;
wire ts_pe_63_a1_in;
wire ts_pe_64_a0_out;
wire ts_pe_64_a0_oe;
wire ts_pe_64_a0_in;
wire ts_pe_64_a1_out;
wire ts_pe_64_a1_oe;
wire ts_pe_64_a1_in;
wire ts_pe_65_a0_out;
wire ts_pe_65_a0_oe;
wire ts_pe_65_a0_in;
wire ts_pe_65_a1_out;
wire ts_pe_65_a1_oe;
wire ts_pe_65_a1_in;
wire ts_pe_66_a0_out;
wire ts_pe_66_a0_oe;
wire ts_pe_66_a0_in;
wire ts_pe_66_a1_out;
wire ts_pe_66_a1_oe;
wire ts_pe_66_a1_in;
wire ts_pe_67_a0_out;
wire ts_pe_67_a0_oe;
wire ts_pe_67_a0_in;
wire ts_pe_67_a1_out;
wire ts_pe_67_a1_oe;
wire ts_pe_67_a1_in;
wire ts_pe_68_a0_out;
wire ts_pe_68_a0_oe;
wire ts_pe_68_a0_in;
wire ts_pe_68_a1_out;
wire ts_pe_68_a1_oe;
wire ts_pe_68_a1_in;

// Output buffers
wire blit_breq_0_obuf;
wire blit_breq_1_obuf;


// Output buffers
assign blit_breq_0 = blit_breq_0_obuf;
assign blit_breq_1 = blit_breq_1_obuf;


// BLIT.NET (50) - loadstrt : niv
assign loadstrt = tlw;

// BLIT.NET (51) - load_strobe : nivu
assign load_strobe = loadstrt;

// BLIT.NET (53) - clk[16] : buf128
assign clk_16 = clk;

// BLIT.NET (54) - clk[17] : buf32
assign clk_17 = clk;

// BLIT.NET (55) - clk[18] : buf64
assign clk_18 = clk;

// BLIT.NET (59) - data : data
data data_inst
(
	.wdata_0_out /* BUS */ (wdata_0_out),
	.wdata_0_oe /* BUS */ (wdata_0_oe),
	.wdata_0_in /* BUS */ (wdata_0_in),
	.wdata_1_out /* BUS */ (wdata_1_out),
	.wdata_1_oe /* BUS */ (wdata_1_oe),
	.wdata_1_in /* BUS */ (wdata_1_in),
	.wdata_2_out /* BUS */ (wdata_2_out),
	.wdata_2_oe /* BUS */ (wdata_2_oe),
	.wdata_2_in /* BUS */ (wdata_2_in),
	.wdata_3_out /* BUS */ (wdata_3_out),
	.wdata_3_oe /* BUS */ (wdata_3_oe),
	.wdata_3_in /* BUS */ (wdata_3_in),
	.wdata_4_out /* BUS */ (wdata_4_out),
	.wdata_4_oe /* BUS */ (wdata_4_oe),
	.wdata_4_in /* BUS */ (wdata_4_in),
	.wdata_5_out /* BUS */ (wdata_5_out),
	.wdata_5_oe /* BUS */ (wdata_5_oe),
	.wdata_5_in /* BUS */ (wdata_5_in),
	.wdata_6_out /* BUS */ (wdata_6_out),
	.wdata_6_oe /* BUS */ (wdata_6_oe),
	.wdata_6_in /* BUS */ (wdata_6_in),
	.wdata_7_out /* BUS */ (wdata_7_out),
	.wdata_7_oe /* BUS */ (wdata_7_oe),
	.wdata_7_in /* BUS */ (wdata_7_in),
	.wdata_8_out /* BUS */ (wdata_8_out),
	.wdata_8_oe /* BUS */ (wdata_8_oe),
	.wdata_8_in /* BUS */ (wdata_8_in),
	.wdata_9_out /* BUS */ (wdata_9_out),
	.wdata_9_oe /* BUS */ (wdata_9_oe),
	.wdata_9_in /* BUS */ (wdata_9_in),
	.wdata_10_out /* BUS */ (wdata_10_out),
	.wdata_10_oe /* BUS */ (wdata_10_oe),
	.wdata_10_in /* BUS */ (wdata_10_in),
	.wdata_11_out /* BUS */ (wdata_11_out),
	.wdata_11_oe /* BUS */ (wdata_11_oe),
	.wdata_11_in /* BUS */ (wdata_11_in),
	.wdata_12_out /* BUS */ (wdata_12_out),
	.wdata_12_oe /* BUS */ (wdata_12_oe),
	.wdata_12_in /* BUS */ (wdata_12_in),
	.wdata_13_out /* BUS */ (wdata_13_out),
	.wdata_13_oe /* BUS */ (wdata_13_oe),
	.wdata_13_in /* BUS */ (wdata_13_in),
	.wdata_14_out /* BUS */ (wdata_14_out),
	.wdata_14_oe /* BUS */ (wdata_14_oe),
	.wdata_14_in /* BUS */ (wdata_14_in),
	.wdata_15_out /* BUS */ (wdata_15_out),
	.wdata_15_oe /* BUS */ (wdata_15_oe),
	.wdata_15_in /* BUS */ (wdata_15_in),
	.wdata_16_out /* BUS */ (wdata_16_out),
	.wdata_16_oe /* BUS */ (wdata_16_oe),
	.wdata_16_in /* BUS */ (wdata_16_in),
	.wdata_17_out /* BUS */ (wdata_17_out),
	.wdata_17_oe /* BUS */ (wdata_17_oe),
	.wdata_17_in /* BUS */ (wdata_17_in),
	.wdata_18_out /* BUS */ (wdata_18_out),
	.wdata_18_oe /* BUS */ (wdata_18_oe),
	.wdata_18_in /* BUS */ (wdata_18_in),
	.wdata_19_out /* BUS */ (wdata_19_out),
	.wdata_19_oe /* BUS */ (wdata_19_oe),
	.wdata_19_in /* BUS */ (wdata_19_in),
	.wdata_20_out /* BUS */ (wdata_20_out),
	.wdata_20_oe /* BUS */ (wdata_20_oe),
	.wdata_20_in /* BUS */ (wdata_20_in),
	.wdata_21_out /* BUS */ (wdata_21_out),
	.wdata_21_oe /* BUS */ (wdata_21_oe),
	.wdata_21_in /* BUS */ (wdata_21_in),
	.wdata_22_out /* BUS */ (wdata_22_out),
	.wdata_22_oe /* BUS */ (wdata_22_oe),
	.wdata_22_in /* BUS */ (wdata_22_in),
	.wdata_23_out /* BUS */ (wdata_23_out),
	.wdata_23_oe /* BUS */ (wdata_23_oe),
	.wdata_23_in /* BUS */ (wdata_23_in),
	.wdata_24_out /* BUS */ (wdata_24_out),
	.wdata_24_oe /* BUS */ (wdata_24_oe),
	.wdata_24_in /* BUS */ (wdata_24_in),
	.wdata_25_out /* BUS */ (wdata_25_out),
	.wdata_25_oe /* BUS */ (wdata_25_oe),
	.wdata_25_in /* BUS */ (wdata_25_in),
	.wdata_26_out /* BUS */ (wdata_26_out),
	.wdata_26_oe /* BUS */ (wdata_26_oe),
	.wdata_26_in /* BUS */ (wdata_26_in),
	.wdata_27_out /* BUS */ (wdata_27_out),
	.wdata_27_oe /* BUS */ (wdata_27_oe),
	.wdata_27_in /* BUS */ (wdata_27_in),
	.wdata_28_out /* BUS */ (wdata_28_out),
	.wdata_28_oe /* BUS */ (wdata_28_oe),
	.wdata_28_in /* BUS */ (wdata_28_in),
	.wdata_29_out /* BUS */ (wdata_29_out),
	.wdata_29_oe /* BUS */ (wdata_29_oe),
	.wdata_29_in /* BUS */ (wdata_29_in),
	.wdata_30_out /* BUS */ (wdata_30_out),
	.wdata_30_oe /* BUS */ (wdata_30_oe),
	.wdata_30_in /* BUS */ (wdata_30_in),
	.wdata_31_out /* BUS */ (wdata_31_out),
	.wdata_31_oe /* BUS */ (wdata_31_oe),
	.wdata_31_in /* BUS */ (wdata_31_in),
	.wdata_32_out /* BUS */ (wdata_32_out),
	.wdata_32_oe /* BUS */ (wdata_32_oe),
	.wdata_32_in /* BUS */ (wdata_32_in),
	.wdata_33_out /* BUS */ (wdata_33_out),
	.wdata_33_oe /* BUS */ (wdata_33_oe),
	.wdata_33_in /* BUS */ (wdata_33_in),
	.wdata_34_out /* BUS */ (wdata_34_out),
	.wdata_34_oe /* BUS */ (wdata_34_oe),
	.wdata_34_in /* BUS */ (wdata_34_in),
	.wdata_35_out /* BUS */ (wdata_35_out),
	.wdata_35_oe /* BUS */ (wdata_35_oe),
	.wdata_35_in /* BUS */ (wdata_35_in),
	.wdata_36_out /* BUS */ (wdata_36_out),
	.wdata_36_oe /* BUS */ (wdata_36_oe),
	.wdata_36_in /* BUS */ (wdata_36_in),
	.wdata_37_out /* BUS */ (wdata_37_out),
	.wdata_37_oe /* BUS */ (wdata_37_oe),
	.wdata_37_in /* BUS */ (wdata_37_in),
	.wdata_38_out /* BUS */ (wdata_38_out),
	.wdata_38_oe /* BUS */ (wdata_38_oe),
	.wdata_38_in /* BUS */ (wdata_38_in),
	.wdata_39_out /* BUS */ (wdata_39_out),
	.wdata_39_oe /* BUS */ (wdata_39_oe),
	.wdata_39_in /* BUS */ (wdata_39_in),
	.wdata_40_out /* BUS */ (wdata_40_out),
	.wdata_40_oe /* BUS */ (wdata_40_oe),
	.wdata_40_in /* BUS */ (wdata_40_in),
	.wdata_41_out /* BUS */ (wdata_41_out),
	.wdata_41_oe /* BUS */ (wdata_41_oe),
	.wdata_41_in /* BUS */ (wdata_41_in),
	.wdata_42_out /* BUS */ (wdata_42_out),
	.wdata_42_oe /* BUS */ (wdata_42_oe),
	.wdata_42_in /* BUS */ (wdata_42_in),
	.wdata_43_out /* BUS */ (wdata_43_out),
	.wdata_43_oe /* BUS */ (wdata_43_oe),
	.wdata_43_in /* BUS */ (wdata_43_in),
	.wdata_44_out /* BUS */ (wdata_44_out),
	.wdata_44_oe /* BUS */ (wdata_44_oe),
	.wdata_44_in /* BUS */ (wdata_44_in),
	.wdata_45_out /* BUS */ (wdata_45_out),
	.wdata_45_oe /* BUS */ (wdata_45_oe),
	.wdata_45_in /* BUS */ (wdata_45_in),
	.wdata_46_out /* BUS */ (wdata_46_out),
	.wdata_46_oe /* BUS */ (wdata_46_oe),
	.wdata_46_in /* BUS */ (wdata_46_in),
	.wdata_47_out /* BUS */ (wdata_47_out),
	.wdata_47_oe /* BUS */ (wdata_47_oe),
	.wdata_47_in /* BUS */ (wdata_47_in),
	.wdata_48_out /* BUS */ (wdata_48_out),
	.wdata_48_oe /* BUS */ (wdata_48_oe),
	.wdata_48_in /* BUS */ (wdata_48_in),
	.wdata_49_out /* BUS */ (wdata_49_out),
	.wdata_49_oe /* BUS */ (wdata_49_oe),
	.wdata_49_in /* BUS */ (wdata_49_in),
	.wdata_50_out /* BUS */ (wdata_50_out),
	.wdata_50_oe /* BUS */ (wdata_50_oe),
	.wdata_50_in /* BUS */ (wdata_50_in),
	.wdata_51_out /* BUS */ (wdata_51_out),
	.wdata_51_oe /* BUS */ (wdata_51_oe),
	.wdata_51_in /* BUS */ (wdata_51_in),
	.wdata_52_out /* BUS */ (wdata_52_out),
	.wdata_52_oe /* BUS */ (wdata_52_oe),
	.wdata_52_in /* BUS */ (wdata_52_in),
	.wdata_53_out /* BUS */ (wdata_53_out),
	.wdata_53_oe /* BUS */ (wdata_53_oe),
	.wdata_53_in /* BUS */ (wdata_53_in),
	.wdata_54_out /* BUS */ (wdata_54_out),
	.wdata_54_oe /* BUS */ (wdata_54_oe),
	.wdata_54_in /* BUS */ (wdata_54_in),
	.wdata_55_out /* BUS */ (wdata_55_out),
	.wdata_55_oe /* BUS */ (wdata_55_oe),
	.wdata_55_in /* BUS */ (wdata_55_in),
	.wdata_56_out /* BUS */ (wdata_56_out),
	.wdata_56_oe /* BUS */ (wdata_56_oe),
	.wdata_56_in /* BUS */ (wdata_56_in),
	.wdata_57_out /* BUS */ (wdata_57_out),
	.wdata_57_oe /* BUS */ (wdata_57_oe),
	.wdata_57_in /* BUS */ (wdata_57_in),
	.wdata_58_out /* BUS */ (wdata_58_out),
	.wdata_58_oe /* BUS */ (wdata_58_oe),
	.wdata_58_in /* BUS */ (wdata_58_in),
	.wdata_59_out /* BUS */ (wdata_59_out),
	.wdata_59_oe /* BUS */ (wdata_59_oe),
	.wdata_59_in /* BUS */ (wdata_59_in),
	.wdata_60_out /* BUS */ (wdata_60_out),
	.wdata_60_oe /* BUS */ (wdata_60_oe),
	.wdata_60_in /* BUS */ (wdata_60_in),
	.wdata_61_out /* BUS */ (wdata_61_out),
	.wdata_61_oe /* BUS */ (wdata_61_oe),
	.wdata_61_in /* BUS */ (wdata_61_in),
	.wdata_62_out /* BUS */ (wdata_62_out),
	.wdata_62_oe /* BUS */ (wdata_62_oe),
	.wdata_62_in /* BUS */ (wdata_62_in),
	.wdata_63_out /* BUS */ (wdata_63_out),
	.wdata_63_oe /* BUS */ (wdata_63_oe),
	.wdata_63_in /* BUS */ (wdata_63_in),
	.dcomp_0 /* OUT */ (dcomp_0),
	.dcomp_1 /* OUT */ (dcomp_1),
	.dcomp_2 /* OUT */ (dcomp_2),
	.dcomp_3 /* OUT */ (dcomp_3),
	.dcomp_4 /* OUT */ (dcomp_4),
	.dcomp_5 /* OUT */ (dcomp_5),
	.dcomp_6 /* OUT */ (dcomp_6),
	.dcomp_7 /* OUT */ (dcomp_7),
	.srcd_0 /* OUT */ (srcd_0),
	.srcd_1 /* OUT */ (srcd_1),
	.srcd_2 /* OUT */ (srcd_2),
	.srcd_3 /* OUT */ (srcd_3),
	.srcd_4 /* OUT */ (srcd_4),
	.srcd_5 /* OUT */ (srcd_5),
	.srcd_6 /* OUT */ (srcd_6),
	.srcd_7 /* OUT */ (srcd_7),
	.zcomp_0 /* OUT */ (zcomp_0),
	.zcomp_1 /* OUT */ (zcomp_1),
	.zcomp_2 /* OUT */ (zcomp_2),
	.zcomp_3 /* OUT */ (zcomp_3),
	.big_pix /* IN */ (big_pix),
	.blit_back /* IN */ (blit_back),
	.blit_breq_0 /* IN */ (blit_breq_0_obuf),
	.blit_breq_1 /* IN */ (blit_breq_1_obuf),
	.clk /* IN */ (clk_16),
	.clk2 /* IN */ (tlw),
	.cmpdst /* IN */ (cmpdst),
	.daddasel_0 /* IN */ (daddasel_0),
	.daddasel_1 /* IN */ (daddasel_1),
	.daddasel_2 /* IN */ (daddasel_2),
	.daddbsel_0 /* IN */ (daddbsel_0),
	.daddbsel_1 /* IN */ (daddbsel_1),
	.daddbsel_2 /* IN */ (daddbsel_2),
	.daddmode_0 /* IN */ (daddmode_0),
	.daddmode_1 /* IN */ (daddmode_1),
	.daddmode_2 /* IN */ (daddmode_2),
	.daddq_sel /* IN */ (daddq_sel),
	.data_0 /* IN */ (data_0),
	.data_1 /* IN */ (data_1),
	.data_2 /* IN */ (data_2),
	.data_3 /* IN */ (data_3),
	.data_4 /* IN */ (data_4),
	.data_5 /* IN */ (data_5),
	.data_6 /* IN */ (data_6),
	.data_7 /* IN */ (data_7),
	.data_8 /* IN */ (data_8),
	.data_9 /* IN */ (data_9),
	.data_10 /* IN */ (data_10),
	.data_11 /* IN */ (data_11),
	.data_12 /* IN */ (data_12),
	.data_13 /* IN */ (data_13),
	.data_14 /* IN */ (data_14),
	.data_15 /* IN */ (data_15),
	.data_16 /* IN */ (data_16),
	.data_17 /* IN */ (data_17),
	.data_18 /* IN */ (data_18),
	.data_19 /* IN */ (data_19),
	.data_20 /* IN */ (data_20),
	.data_21 /* IN */ (data_21),
	.data_22 /* IN */ (data_22),
	.data_23 /* IN */ (data_23),
	.data_24 /* IN */ (data_24),
	.data_25 /* IN */ (data_25),
	.data_26 /* IN */ (data_26),
	.data_27 /* IN */ (data_27),
	.data_28 /* IN */ (data_28),
	.data_29 /* IN */ (data_29),
	.data_30 /* IN */ (data_30),
	.data_31 /* IN */ (data_31),
	.data_32 /* IN */ (data_32),
	.data_33 /* IN */ (data_33),
	.data_34 /* IN */ (data_34),
	.data_35 /* IN */ (data_35),
	.data_36 /* IN */ (data_36),
	.data_37 /* IN */ (data_37),
	.data_38 /* IN */ (data_38),
	.data_39 /* IN */ (data_39),
	.data_40 /* IN */ (data_40),
	.data_41 /* IN */ (data_41),
	.data_42 /* IN */ (data_42),
	.data_43 /* IN */ (data_43),
	.data_44 /* IN */ (data_44),
	.data_45 /* IN */ (data_45),
	.data_46 /* IN */ (data_46),
	.data_47 /* IN */ (data_47),
	.data_48 /* IN */ (data_48),
	.data_49 /* IN */ (data_49),
	.data_50 /* IN */ (data_50),
	.data_51 /* IN */ (data_51),
	.data_52 /* IN */ (data_52),
	.data_53 /* IN */ (data_53),
	.data_54 /* IN */ (data_54),
	.data_55 /* IN */ (data_55),
	.data_56 /* IN */ (data_56),
	.data_57 /* IN */ (data_57),
	.data_58 /* IN */ (data_58),
	.data_59 /* IN */ (data_59),
	.data_60 /* IN */ (data_60),
	.data_61 /* IN */ (data_61),
	.data_62 /* IN */ (data_62),
	.data_63 /* IN */ (data_63),
	.data_ena /* IN */ (data_ena),
	.data_sel_0 /* IN */ (data_sel_0),
	.data_sel_1 /* IN */ (data_sel_1),
	.dbinh_n_0 /* IN */ (dbinh_n_0),
	.dbinh_n_1 /* IN */ (dbinh_n_1),
	.dbinh_n_2 /* IN */ (dbinh_n_2),
	.dbinh_n_3 /* IN */ (dbinh_n_3),
	.dbinh_n_4 /* IN */ (dbinh_n_4),
	.dbinh_n_5 /* IN */ (dbinh_n_5),
	.dbinh_n_6 /* IN */ (dbinh_n_6),
	.dbinh_n_7 /* IN */ (dbinh_n_7),
	.dend_0 /* IN */ (dend_0),
	.dend_1 /* IN */ (dend_1),
	.dend_2 /* IN */ (dend_2),
	.dend_3 /* IN */ (dend_3),
	.dend_4 /* IN */ (dend_4),
	.dend_5 /* IN */ (dend_5),
	.dpipe_0 /* IN */ (dpipe_0),
	.dpipe_1 /* IN */ (dpipe_1),
	.dstart_0 /* IN */ (dstart_0),
	.dstart_1 /* IN */ (dstart_1),
	.dstart_2 /* IN */ (dstart_2),
	.dstart_3 /* IN */ (dstart_3),
	.dstart_4 /* IN */ (dstart_4),
	.dstart_5 /* IN */ (dstart_5),
	.dstdld_0 /* IN */ (dstdld_0),
	.dstdld_1 /* IN */ (dstdld_1),
	.dstzld_0 /* IN */ (dstzld_0),
	.dstzld_1 /* IN */ (dstzld_1),
	.gpu_din /* IN */ ({gpu_din[0],gpu_din[1],gpu_din[2],gpu_din[3],gpu_din[4],gpu_din[5],gpu_din[6],gpu_din[7],gpu_din[8],gpu_din[9],gpu_din[10],gpu_din[11],gpu_din[12],gpu_din[13],gpu_din[14],gpu_din[15],gpu_din[16],gpu_din[17],gpu_din[18],gpu_din[19],gpu_din[20],gpu_din[21],gpu_din[22],gpu_din[23],gpu_din[24],gpu_din[25],gpu_din[26],gpu_din[27],gpu_din[28],gpu_din[29],gpu_din[30],gpu_din[31]}),
	.iincld /* IN */ (iincld),
	.intld_0 /* IN */ (intld_0),
	.intld_1 /* IN */ (intld_1),
	.intld_2 /* IN */ (intld_2),
	.intld_3 /* IN */ (intld_3),
	.lfu_func_0 /* IN */ (lfu_func_0),
	.lfu_func_1 /* IN */ (lfu_func_1),
	.lfu_func_2 /* IN */ (lfu_func_2),
	.lfu_func_3 /* IN */ (lfu_func_3),
	.load_strobe /* IN */ (load_strobe),
	.patdld_0 /* IN */ (patdld_0),
	.patdld_1 /* IN */ (patdld_1),
	.phrase_mode /* IN */ (phrase_mode),
	.reset_n /* IN */ (reset_n),
	.srcd1ld_0 /* IN */ (srcd1ld_0),
	.srcd1ld_1 /* IN */ (srcd1ld_1),
	.srcdread /* IN */ (srcdread),
	.srczread /* IN */ (srczread),
	.srcshift_0 /* IN */ (srcshift_0),
	.srcshift_1 /* IN */ (srcshift_1),
	.srcshift_2 /* IN */ (srcshift_2),
	.srcshift_3 /* IN */ (srcshift_3),
	.srcshift_4 /* IN */ (srcshift_4),
	.srcshift_5 /* IN */ (srcshift_5),
	.srcz1ld_0 /* IN */ (srcz1ld_0),
	.srcz1ld_1 /* IN */ (srcz1ld_1),
	.srcz2add /* IN */ (srcz2add),
	.srcz2ld_0 /* IN */ (srcz2ld_0),
	.srcz2ld_1 /* IN */ (srcz2ld_1),
	.zedld_0 /* IN */ (zedld_0),
	.zedld_1 /* IN */ (zedld_1),
	.zedld_2 /* IN */ (zedld_2),
	.zedld_3 /* IN */ (zedld_3),
	.zincld /* IN */ (zincld),
	.zmode_0 /* IN */ (zmode_0),
	.zmode_1 /* IN */ (zmode_1),
	.zmode_2 /* IN */ (zmode_2),
	.zpipe_0 /* IN */ (zpipe_0),
	.zpipe_1 /* IN */ (zpipe_1),
	.sys_clk(sys_clk) // Generated
);

// BLIT.NET (74) - address : address
address address_inst
(
	.gpu_dout_0_out /* BUS */ (ts_pe_37_a0_out),
	.gpu_dout_0_oe /* BUS */ (ts_pe_37_a0_oe),
	.gpu_dout_0_in /* BUS */ (ts_pe_37_a0_in),
	.gpu_dout_1_out /* BUS */ (ts_pe_38_a0_out),
	.gpu_dout_1_oe /* BUS */ (ts_pe_38_a0_oe),
	.gpu_dout_1_in /* BUS */ (ts_pe_38_a0_in),
	.gpu_dout_2_out /* BUS */ (ts_pe_39_a0_out),
	.gpu_dout_2_oe /* BUS */ (ts_pe_39_a0_oe),
	.gpu_dout_2_in /* BUS */ (ts_pe_39_a0_in),
	.gpu_dout_3_out /* BUS */ (ts_pe_40_a0_out),
	.gpu_dout_3_oe /* BUS */ (ts_pe_40_a0_oe),
	.gpu_dout_3_in /* BUS */ (ts_pe_40_a0_in),
	.gpu_dout_4_out /* BUS */ (ts_pe_41_a0_out),
	.gpu_dout_4_oe /* BUS */ (ts_pe_41_a0_oe),
	.gpu_dout_4_in /* BUS */ (ts_pe_41_a0_in),
	.gpu_dout_5_out /* BUS */ (ts_pe_42_a0_out),
	.gpu_dout_5_oe /* BUS */ (ts_pe_42_a0_oe),
	.gpu_dout_5_in /* BUS */ (ts_pe_42_a0_in),
	.gpu_dout_6_out /* BUS */ (ts_pe_43_a0_out),
	.gpu_dout_6_oe /* BUS */ (ts_pe_43_a0_oe),
	.gpu_dout_6_in /* BUS */ (ts_pe_43_a0_in),
	.gpu_dout_7_out /* BUS */ (ts_pe_44_a0_out),
	.gpu_dout_7_oe /* BUS */ (ts_pe_44_a0_oe),
	.gpu_dout_7_in /* BUS */ (ts_pe_44_a0_in),
	.gpu_dout_8_out /* BUS */ (ts_pe_45_a0_out),
	.gpu_dout_8_oe /* BUS */ (ts_pe_45_a0_oe),
	.gpu_dout_8_in /* BUS */ (ts_pe_45_a0_in),
	.gpu_dout_9_out /* BUS */ (ts_pe_46_a0_out),
	.gpu_dout_9_oe /* BUS */ (ts_pe_46_a0_oe),
	.gpu_dout_9_in /* BUS */ (ts_pe_46_a0_in),
	.gpu_dout_10_out /* BUS */ (ts_pe_47_a0_out),
	.gpu_dout_10_oe /* BUS */ (ts_pe_47_a0_oe),
	.gpu_dout_10_in /* BUS */ (ts_pe_47_a0_in),
	.gpu_dout_11_out /* BUS */ (ts_pe_48_a0_out),
	.gpu_dout_11_oe /* BUS */ (ts_pe_48_a0_oe),
	.gpu_dout_11_in /* BUS */ (ts_pe_48_a0_in),
	.gpu_dout_12_out /* BUS */ (ts_pe_49_a0_out),
	.gpu_dout_12_oe /* BUS */ (ts_pe_49_a0_oe),
	.gpu_dout_12_in /* BUS */ (ts_pe_49_a0_in),
	.gpu_dout_13_out /* BUS */ (ts_pe_50_a0_out),
	.gpu_dout_13_oe /* BUS */ (ts_pe_50_a0_oe),
	.gpu_dout_13_in /* BUS */ (ts_pe_50_a0_in),
	.gpu_dout_14_out /* BUS */ (ts_pe_51_a0_out),
	.gpu_dout_14_oe /* BUS */ (ts_pe_51_a0_oe),
	.gpu_dout_14_in /* BUS */ (ts_pe_51_a0_in),
	.gpu_dout_15_out /* BUS */ (ts_pe_52_a0_out),
	.gpu_dout_15_oe /* BUS */ (ts_pe_52_a0_oe),
	.gpu_dout_15_in /* BUS */ (ts_pe_52_a0_in),
	.gpu_dout_16_out /* BUS */ (ts_pe_53_a0_out),
	.gpu_dout_16_oe /* BUS */ (ts_pe_53_a0_oe),
	.gpu_dout_16_in /* BUS */ (ts_pe_53_a0_in),
	.gpu_dout_17_out /* BUS */ (ts_pe_54_a0_out),
	.gpu_dout_17_oe /* BUS */ (ts_pe_54_a0_oe),
	.gpu_dout_17_in /* BUS */ (ts_pe_54_a0_in),
	.gpu_dout_18_out /* BUS */ (ts_pe_55_a0_out),
	.gpu_dout_18_oe /* BUS */ (ts_pe_55_a0_oe),
	.gpu_dout_18_in /* BUS */ (ts_pe_55_a0_in),
	.gpu_dout_19_out /* BUS */ (ts_pe_56_a0_out),
	.gpu_dout_19_oe /* BUS */ (ts_pe_56_a0_oe),
	.gpu_dout_19_in /* BUS */ (ts_pe_56_a0_in),
	.gpu_dout_20_out /* BUS */ (ts_pe_57_a0_out),
	.gpu_dout_20_oe /* BUS */ (ts_pe_57_a0_oe),
	.gpu_dout_20_in /* BUS */ (ts_pe_57_a0_in),
	.gpu_dout_21_out /* BUS */ (ts_pe_58_a0_out),
	.gpu_dout_21_oe /* BUS */ (ts_pe_58_a0_oe),
	.gpu_dout_21_in /* BUS */ (ts_pe_58_a0_in),
	.gpu_dout_22_out /* BUS */ (ts_pe_59_a0_out),
	.gpu_dout_22_oe /* BUS */ (ts_pe_59_a0_oe),
	.gpu_dout_22_in /* BUS */ (ts_pe_59_a0_in),
	.gpu_dout_23_out /* BUS */ (ts_pe_60_a0_out),
	.gpu_dout_23_oe /* BUS */ (ts_pe_60_a0_oe),
	.gpu_dout_23_in /* BUS */ (ts_pe_60_a0_in),
	.gpu_dout_24_out /* BUS */ (ts_pe_61_a0_out),
	.gpu_dout_24_oe /* BUS */ (ts_pe_61_a0_oe),
	.gpu_dout_24_in /* BUS */ (ts_pe_61_a0_in),
	.gpu_dout_25_out /* BUS */ (ts_pe_62_a0_out),
	.gpu_dout_25_oe /* BUS */ (ts_pe_62_a0_oe),
	.gpu_dout_25_in /* BUS */ (ts_pe_62_a0_in),
	.gpu_dout_26_out /* BUS */ (ts_pe_63_a0_out),
	.gpu_dout_26_oe /* BUS */ (ts_pe_63_a0_oe),
	.gpu_dout_26_in /* BUS */ (ts_pe_63_a0_in),
	.gpu_dout_27_out /* BUS */ (ts_pe_64_a0_out),
	.gpu_dout_27_oe /* BUS */ (ts_pe_64_a0_oe),
	.gpu_dout_27_in /* BUS */ (ts_pe_64_a0_in),
	.gpu_dout_28_out /* BUS */ (ts_pe_65_a0_out),
	.gpu_dout_28_oe /* BUS */ (ts_pe_65_a0_oe),
	.gpu_dout_28_in /* BUS */ (ts_pe_65_a0_in),
	.gpu_dout_29_out /* BUS */ (ts_pe_66_a0_out),
	.gpu_dout_29_oe /* BUS */ (ts_pe_66_a0_oe),
	.gpu_dout_29_in /* BUS */ (ts_pe_66_a0_in),
	.gpu_dout_30_out /* BUS */ (ts_pe_67_a0_out),
	.gpu_dout_30_oe /* BUS */ (ts_pe_67_a0_oe),
	.gpu_dout_30_in /* BUS */ (ts_pe_67_a0_in),
	.gpu_dout_31_out /* BUS */ (ts_pe_68_a0_out),
	.gpu_dout_31_oe /* BUS */ (ts_pe_68_a0_oe),
	.gpu_dout_31_in /* BUS */ (ts_pe_68_a0_in),
	.a1_outside /* OUT */ (a1_outside),
	.a1_pixsize_0 /* OUT */ (a1_pixsize_0),
	.a1_pixsize_1 /* OUT */ (a1_pixsize_1),
	.a1_pixsize_2 /* OUT */ (a1_pixsize_2),
	.a1_win_x /* OUT */ ({a1_win_x[0],a1_win_x[1],a1_win_x[2],a1_win_x[3],a1_win_x[4],a1_win_x[5],a1_win_x[6],a1_win_x[7],a1_win_x[8],a1_win_x[9],a1_win_x[10],a1_win_x[11],a1_win_x[12],a1_win_x[13],a1_win_x[14]}),
	.a1_x /* OUT */ ({a1_x[0],a1_x[1],a1_x[2],a1_x[3],a1_x[4],a1_x[5],a1_x[6],a1_x[7],a1_x[8],a1_x[9],a1_x[10],a1_x[11],a1_x[12],a1_x[13],a1_x[14],a1_x[15]}),
	.a1addx_0 /* OUT */ (a1addx_0),
	.a1addx_1 /* OUT */ (a1addx_1),
	.a1addy /* OUT */ (a1addy),
	.a1xsign /* OUT */ (a1xsign),
	.a1ysign /* OUT */ (a1ysign),
	.a2_pixsize_0 /* OUT */ (a2_pixsize_0),
	.a2_pixsize_1 /* OUT */ (a2_pixsize_1),
	.a2_pixsize_2 /* OUT */ (a2_pixsize_2),
	.a2_x /* OUT */ ({a2_x[0],a2_x[1],a2_x[2],a2_x[3],a2_x[4],a2_x[5],a2_x[6],a2_x[7],a2_x[8],a2_x[9],a2_x[10],a2_x[11],a2_x[12],a2_x[13],a2_x[14],a2_x[15]}),
	.a2addx_0 /* OUT */ (a2addx_0),
	.a2addx_1 /* OUT */ (a2addx_1),
	.a2addy /* OUT */ (a2addy),
	.a2xsign /* OUT */ (a2xsign),
	.a2ysign /* OUT */ (a2ysign),
	.address /* OUT */ ({address[0],address[1],address[2],address[3],address[4],address[5],address[6],address[7],address[8],address[9],address[10],address[11],address[12],address[13],address[14],address[15],address[16],address[17],address[18],address[19],address[20],address[21],address[22],address[23]}),
	.pixa_0 /* OUT */ (pixa_0),
	.pixa_1 /* OUT */ (pixa_1),
	.pixa_2 /* OUT */ (pixa_2),
	.addasel_0 /* IN */ (addasel_0),
	.addasel_1 /* IN */ (addasel_1),
	.addasel_2 /* IN */ (addasel_2),
	.addbsel_0 /* IN */ (addbsel_0),
	.addbsel_1 /* IN */ (addbsel_1),
	.addqsel /* IN */ (addqsel),
	.adda_xconst_0 /* IN */ (adda_xconst_0),
	.adda_xconst_1 /* IN */ (adda_xconst_1),
	.adda_xconst_2 /* IN */ (adda_xconst_2),
	.adda_yconst /* IN */ (adda_yconst),
	.addareg /* IN */ (addareg),
	.a1baseld /* IN */ (a1baseld),
	.a1flagld /* IN */ (a1flagld),
	.a1fracld /* IN */ (a1fracld),
	.a1incld /* IN */ (a1incld),
	.a1incfld /* IN */ (a1incfld),
	.a1posrd /* IN */ (a1posrd),
	.a1posfrd /* IN */ (a1posfrd),
	.a1ptrld /* IN */ (a1ptrld),
	.a1stepld /* IN */ (a1stepld),
	.a1stepfld /* IN */ (a1stepfld),
	.a1winld /* IN */ (a1winld),
	.a2baseld /* IN */ (a2baseld),
	.a2flagld /* IN */ (a2flagld),
	.a2posrd /* IN */ (a2posrd),
	.a2ptrld /* IN */ (a2ptrld),
	.a2stepld /* IN */ (a2stepld),
	.a2winld /* IN */ (a2winld),
	.apipe /* IN */ (apipe),
	.clk /* IN */ (clk_17),
	.gena2 /* IN */ (gena2),
	.gpu_din /* IN */ ({gpu_din[0],gpu_din[1],gpu_din[2],gpu_din[3],gpu_din[4],gpu_din[5],gpu_din[6],gpu_din[7],gpu_din[8],gpu_din[9],gpu_din[10],gpu_din[11],gpu_din[12],gpu_din[13],gpu_din[14],gpu_din[15],gpu_din[16],gpu_din[17],gpu_din[18],gpu_din[19],gpu_din[20],gpu_din[21],gpu_din[22],gpu_din[23],gpu_din[24],gpu_din[25],gpu_din[26],gpu_din[27],gpu_din[28],gpu_din[29],gpu_din[30],gpu_din[31]}),
	.load_strobe /* IN */ (load_strobe),
	.modx_0 /* IN */ (modx_0),
	.modx_1 /* IN */ (modx_1),
	.modx_2 /* IN */ (modx_2),
	.suba_x /* IN */ (suba_x),
	.suba_y /* IN */ (suba_y),
	.zaddr /* IN */ (zaddr),
	.sys_clk(sys_clk) // Generated
);

// BLIT.NET (89) - state : state
state state_inst
(
	.blit_addr_out /* BUS */ ({blit_addr_out[0],blit_addr_out[1],blit_addr_out[2],blit_addr_out[3],blit_addr_out[4],blit_addr_out[5],blit_addr_out[6],blit_addr_out[7],blit_addr_out[8],blit_addr_out[9],blit_addr_out[10],blit_addr_out[11],blit_addr_out[12],blit_addr_out[13],blit_addr_out[14],blit_addr_out[15],blit_addr_out[16],blit_addr_out[17],blit_addr_out[18],blit_addr_out[19],blit_addr_out[20],blit_addr_out[21],blit_addr_out[22],blit_addr_out[23]}),
	.blit_addr_oe /* BUS */ ({blit_addr_oe[0],blit_addr_oe[1],blit_addr_oe[2],blit_addr_oe[3],blit_addr_oe[4],blit_addr_oe[5],blit_addr_oe[6],blit_addr_oe[7],blit_addr_oe[8],blit_addr_oe[9],blit_addr_oe[10],blit_addr_oe[11],blit_addr_oe[12],blit_addr_oe[13],blit_addr_oe[14],blit_addr_oe[15],blit_addr_oe[16],blit_addr_oe[17],blit_addr_oe[18],blit_addr_oe[19],blit_addr_oe[20],blit_addr_oe[21],blit_addr_oe[22],blit_addr_oe[23]}),
	.blit_addr_in /* BUS */ ({blit_addr_in[0],blit_addr_in[1],blit_addr_in[2],blit_addr_in[3],blit_addr_in[4],blit_addr_in[5],blit_addr_in[6],blit_addr_in[7],blit_addr_in[8],blit_addr_in[9],blit_addr_in[10],blit_addr_in[11],blit_addr_in[12],blit_addr_in[13],blit_addr_in[14],blit_addr_in[15],blit_addr_in[16],blit_addr_in[17],blit_addr_in[18],blit_addr_in[19],blit_addr_in[20],blit_addr_in[21],blit_addr_in[22],blit_addr_in[23]}),
	.justify_out /* BUS */ (justify_out),
	.justify_oe /* BUS */ (justify_oe),
	.justify_in /* BUS */ (justify_in),
	.mreq_out /* BUS */ (mreq_out),
	.mreq_oe /* BUS */ (mreq_oe),
	.mreq_in /* BUS */ (mreq_in),
	.width_0_out /* BUS */ (width_0_out),
	.width_0_oe /* BUS */ (width_0_oe),
	.width_0_in /* BUS */ (width_0_in),
	.width_1_out /* BUS */ (width_1_out),
	.width_1_oe /* BUS */ (width_1_oe),
	.width_1_in /* BUS */ (width_1_in),
	.width_2_out /* BUS */ (width_2_out),
	.width_2_oe /* BUS */ (width_2_oe),
	.width_2_in /* BUS */ (width_2_in),
	.width_3_out /* BUS */ (width_3_out),
	.width_3_oe /* BUS */ (width_3_oe),
	.width_3_in /* BUS */ (width_3_in),
	.read_out /* BUS */ (read_out),
	.read_oe /* BUS */ (read_oe),
	.read_in /* BUS */ (read_in),
	.gpu_dout_0_out /* BUS */ (ts_pe_37_a1_out),
	.gpu_dout_0_oe /* BUS */ (ts_pe_37_a1_oe),
	.gpu_dout_0_in /* BUS */ (ts_pe_37_a1_in),
	.gpu_dout_1_out /* BUS */ (ts_pe_38_a1_out),
	.gpu_dout_1_oe /* BUS */ (ts_pe_38_a1_oe),
	.gpu_dout_1_in /* BUS */ (ts_pe_38_a1_in),
	.gpu_dout_2_out /* BUS */ (ts_pe_39_a1_out),
	.gpu_dout_2_oe /* BUS */ (ts_pe_39_a1_oe),
	.gpu_dout_2_in /* BUS */ (ts_pe_39_a1_in),
	.gpu_dout_3_out /* BUS */ (ts_pe_40_a1_out),
	.gpu_dout_3_oe /* BUS */ (ts_pe_40_a1_oe),
	.gpu_dout_3_in /* BUS */ (ts_pe_40_a1_in),
	.gpu_dout_4_out /* BUS */ (ts_pe_41_a1_out),
	.gpu_dout_4_oe /* BUS */ (ts_pe_41_a1_oe),
	.gpu_dout_4_in /* BUS */ (ts_pe_41_a1_in),
	.gpu_dout_5_out /* BUS */ (ts_pe_42_a1_out),
	.gpu_dout_5_oe /* BUS */ (ts_pe_42_a1_oe),
	.gpu_dout_5_in /* BUS */ (ts_pe_42_a1_in),
	.gpu_dout_6_out /* BUS */ (ts_pe_43_a1_out),
	.gpu_dout_6_oe /* BUS */ (ts_pe_43_a1_oe),
	.gpu_dout_6_in /* BUS */ (ts_pe_43_a1_in),
	.gpu_dout_7_out /* BUS */ (ts_pe_44_a1_out),
	.gpu_dout_7_oe /* BUS */ (ts_pe_44_a1_oe),
	.gpu_dout_7_in /* BUS */ (ts_pe_44_a1_in),
	.gpu_dout_8_out /* BUS */ (ts_pe_45_a1_out),
	.gpu_dout_8_oe /* BUS */ (ts_pe_45_a1_oe),
	.gpu_dout_8_in /* BUS */ (ts_pe_45_a1_in),
	.gpu_dout_9_out /* BUS */ (ts_pe_46_a1_out),
	.gpu_dout_9_oe /* BUS */ (ts_pe_46_a1_oe),
	.gpu_dout_9_in /* BUS */ (ts_pe_46_a1_in),
	.gpu_dout_10_out /* BUS */ (ts_pe_47_a1_out),
	.gpu_dout_10_oe /* BUS */ (ts_pe_47_a1_oe),
	.gpu_dout_10_in /* BUS */ (ts_pe_47_a1_in),
	.gpu_dout_11_out /* BUS */ (ts_pe_48_a1_out),
	.gpu_dout_11_oe /* BUS */ (ts_pe_48_a1_oe),
	.gpu_dout_11_in /* BUS */ (ts_pe_48_a1_in),
	.gpu_dout_12_out /* BUS */ (ts_pe_49_a1_out),
	.gpu_dout_12_oe /* BUS */ (ts_pe_49_a1_oe),
	.gpu_dout_12_in /* BUS */ (ts_pe_49_a1_in),
	.gpu_dout_13_out /* BUS */ (ts_pe_50_a1_out),
	.gpu_dout_13_oe /* BUS */ (ts_pe_50_a1_oe),
	.gpu_dout_13_in /* BUS */ (ts_pe_50_a1_in),
	.gpu_dout_14_out /* BUS */ (ts_pe_51_a1_out),
	.gpu_dout_14_oe /* BUS */ (ts_pe_51_a1_oe),
	.gpu_dout_14_in /* BUS */ (ts_pe_51_a1_in),
	.gpu_dout_15_out /* BUS */ (ts_pe_52_a1_out),
	.gpu_dout_15_oe /* BUS */ (ts_pe_52_a1_oe),
	.gpu_dout_15_in /* BUS */ (ts_pe_52_a1_in),
	.gpu_dout_16_out /* BUS */ (ts_pe_53_a1_out),
	.gpu_dout_16_oe /* BUS */ (ts_pe_53_a1_oe),
	.gpu_dout_16_in /* BUS */ (ts_pe_53_a1_in),
	.gpu_dout_17_out /* BUS */ (ts_pe_54_a1_out),
	.gpu_dout_17_oe /* BUS */ (ts_pe_54_a1_oe),
	.gpu_dout_17_in /* BUS */ (ts_pe_54_a1_in),
	.gpu_dout_18_out /* BUS */ (ts_pe_55_a1_out),
	.gpu_dout_18_oe /* BUS */ (ts_pe_55_a1_oe),
	.gpu_dout_18_in /* BUS */ (ts_pe_55_a1_in),
	.gpu_dout_19_out /* BUS */ (ts_pe_56_a1_out),
	.gpu_dout_19_oe /* BUS */ (ts_pe_56_a1_oe),
	.gpu_dout_19_in /* BUS */ (ts_pe_56_a1_in),
	.gpu_dout_20_out /* BUS */ (ts_pe_57_a1_out),
	.gpu_dout_20_oe /* BUS */ (ts_pe_57_a1_oe),
	.gpu_dout_20_in /* BUS */ (ts_pe_57_a1_in),
	.gpu_dout_21_out /* BUS */ (ts_pe_58_a1_out),
	.gpu_dout_21_oe /* BUS */ (ts_pe_58_a1_oe),
	.gpu_dout_21_in /* BUS */ (ts_pe_58_a1_in),
	.gpu_dout_22_out /* BUS */ (ts_pe_59_a1_out),
	.gpu_dout_22_oe /* BUS */ (ts_pe_59_a1_oe),
	.gpu_dout_22_in /* BUS */ (ts_pe_59_a1_in),
	.gpu_dout_23_out /* BUS */ (ts_pe_60_a1_out),
	.gpu_dout_23_oe /* BUS */ (ts_pe_60_a1_oe),
	.gpu_dout_23_in /* BUS */ (ts_pe_60_a1_in),
	.gpu_dout_24_out /* BUS */ (ts_pe_61_a1_out),
	.gpu_dout_24_oe /* BUS */ (ts_pe_61_a1_oe),
	.gpu_dout_24_in /* BUS */ (ts_pe_61_a1_in),
	.gpu_dout_25_out /* BUS */ (ts_pe_62_a1_out),
	.gpu_dout_25_oe /* BUS */ (ts_pe_62_a1_oe),
	.gpu_dout_25_in /* BUS */ (ts_pe_62_a1_in),
	.gpu_dout_26_out /* BUS */ (ts_pe_63_a1_out),
	.gpu_dout_26_oe /* BUS */ (ts_pe_63_a1_oe),
	.gpu_dout_26_in /* BUS */ (ts_pe_63_a1_in),
	.gpu_dout_27_out /* BUS */ (ts_pe_64_a1_out),
	.gpu_dout_27_oe /* BUS */ (ts_pe_64_a1_oe),
	.gpu_dout_27_in /* BUS */ (ts_pe_64_a1_in),
	.gpu_dout_28_out /* BUS */ (ts_pe_65_a1_out),
	.gpu_dout_28_oe /* BUS */ (ts_pe_65_a1_oe),
	.gpu_dout_28_in /* BUS */ (ts_pe_65_a1_in),
	.gpu_dout_29_out /* BUS */ (ts_pe_66_a1_out),
	.gpu_dout_29_oe /* BUS */ (ts_pe_66_a1_oe),
	.gpu_dout_29_in /* BUS */ (ts_pe_66_a1_in),
	.gpu_dout_30_out /* BUS */ (ts_pe_67_a1_out),
	.gpu_dout_30_oe /* BUS */ (ts_pe_67_a1_oe),
	.gpu_dout_30_in /* BUS */ (ts_pe_67_a1_in),
	.gpu_dout_31_out /* BUS */ (ts_pe_68_a1_out),
	.gpu_dout_31_oe /* BUS */ (ts_pe_68_a1_oe),
	.gpu_dout_31_in /* BUS */ (ts_pe_68_a1_in),
	.a1fracldi /* OUT */ (a1fracldi),
	.a1ptrldi /* OUT */ (a1ptrldi),
	.a2ptrldi /* OUT */ (a2ptrldi),
	.addasel_0 /* OUT */ (addasel_0),
	.addasel_1 /* OUT */ (addasel_1),
	.addasel_2 /* OUT */ (addasel_2),
	.addbsel_0 /* OUT */ (addbsel_0),
	.addbsel_1 /* OUT */ (addbsel_1),
	.addqsel /* OUT */ (addqsel),
	.adda_xconst_0 /* OUT */ (adda_xconst_0),
	.adda_xconst_1 /* OUT */ (adda_xconst_1),
	.adda_xconst_2 /* OUT */ (adda_xconst_2),
	.adda_yconst /* OUT */ (adda_yconst),
	.addareg /* OUT */ (addareg),
	.apipe /* OUT */ (apipe),
	.blit_breq_0 /* OUT */ (blit_breq_0_obuf),
	.blit_breq_1 /* OUT */ (blit_breq_1_obuf),
	.blit_int /* OUT */ (blit_int),
	.cmpdst /* OUT */ (cmpdst),
	.daddasel_0 /* OUT */ (daddasel_0),
	.daddasel_1 /* OUT */ (daddasel_1),
	.daddasel_2 /* OUT */ (daddasel_2),
	.daddbsel_0 /* OUT */ (daddbsel_0),
	.daddbsel_1 /* OUT */ (daddbsel_1),
	.daddbsel_2 /* OUT */ (daddbsel_2),
	.daddmode_0 /* OUT */ (daddmode_0),
	.daddmode_1 /* OUT */ (daddmode_1),
	.daddmode_2 /* OUT */ (daddmode_2),
	.data_ena /* OUT */ (data_ena),
	.data_sel_0 /* OUT */ (data_sel_0),
	.data_sel_1 /* OUT */ (data_sel_1),
	.dbinh_n_0 /* OUT */ (dbinh_n_0),
	.dbinh_n_1 /* OUT */ (dbinh_n_1),
	.dbinh_n_2 /* OUT */ (dbinh_n_2),
	.dbinh_n_3 /* OUT */ (dbinh_n_3),
	.dbinh_n_4 /* OUT */ (dbinh_n_4),
	.dbinh_n_5 /* OUT */ (dbinh_n_5),
	.dbinh_n_6 /* OUT */ (dbinh_n_6),
	.dbinh_n_7 /* OUT */ (dbinh_n_7),
	.dend_0 /* OUT */ (dend_0),
	.dend_1 /* OUT */ (dend_1),
	.dend_2 /* OUT */ (dend_2),
	.dend_3 /* OUT */ (dend_3),
	.dend_4 /* OUT */ (dend_4),
	.dend_5 /* OUT */ (dend_5),
	.dpipe_0 /* OUT */ (dpipe_0),
	.dpipe_1 /* OUT */ (dpipe_1),
	.dstart_0 /* OUT */ (dstart_0),
	.dstart_1 /* OUT */ (dstart_1),
	.dstart_2 /* OUT */ (dstart_2),
	.dstart_3 /* OUT */ (dstart_3),
	.dstart_4 /* OUT */ (dstart_4),
	.dstart_5 /* OUT */ (dstart_5),
	.dstdread /* OUT */ (dstdread),
	.dstzread /* OUT */ (dstzread),
	.gena2 /* OUT */ (gena2),
	.lfu_func_0 /* OUT */ (lfu_func_0),
	.lfu_func_1 /* OUT */ (lfu_func_1),
	.lfu_func_2 /* OUT */ (lfu_func_2),
	.lfu_func_3 /* OUT */ (lfu_func_3),
	.daddq_sel /* OUT */ (daddq_sel),
	.modx_0 /* OUT */ (modx_0),
	.modx_1 /* OUT */ (modx_1),
	.modx_2 /* OUT */ (modx_2),
	.patdadd /* OUT */ (patdadd),
	.patfadd /* OUT */ (patfadd),
	.phrase_mode /* OUT */ (phrase_mode),
	.reset_n /* OUT */ (reset_n),
	.srcdread /* OUT */ (srcdread),
	.srcshift_0 /* OUT */ (srcshift_0),
	.srcshift_1 /* OUT */ (srcshift_1),
	.srcshift_2 /* OUT */ (srcshift_2),
	.srcshift_3 /* OUT */ (srcshift_3),
	.srcshift_4 /* OUT */ (srcshift_4),
	.srcshift_5 /* OUT */ (srcshift_5),
	.srcz1add /* OUT */ (srcz1add),
	.srcz2add /* OUT */ (srcz2add),
	.srczread /* OUT */ (srczread),
	.suba_x /* OUT */ (suba_x),
	.suba_y /* OUT */ (suba_y),
	.zaddr /* OUT */ (zaddr),
	.zmode_0 /* OUT */ (zmode_0),
	.zmode_1 /* OUT */ (zmode_1),
	.zmode_2 /* OUT */ (zmode_2),
	.zpipe_0 /* OUT */ (zpipe_0),
	.zpipe_1 /* OUT */ (zpipe_1),
	.a1_outside /* IN */ (a1_outside),
	.a1_pixsize_0 /* IN */ (a1_pixsize_0),
	.a1_pixsize_1 /* IN */ (a1_pixsize_1),
	.a1_pixsize_2 /* IN */ (a1_pixsize_2),
	.a1_win_x /* IN */ ({a1_win_x[0],a1_win_x[1],a1_win_x[2],a1_win_x[3],a1_win_x[4],a1_win_x[5],a1_win_x[6],a1_win_x[7],a1_win_x[8],a1_win_x[9],a1_win_x[10],a1_win_x[11],a1_win_x[12],a1_win_x[13],a1_win_x[14]}),
	.a1_x /* IN */ ({a1_x[0],a1_x[1],a1_x[2],a1_x[3],a1_x[4],a1_x[5],a1_x[6],a1_x[7],a1_x[8],a1_x[9],a1_x[10],a1_x[11],a1_x[12],a1_x[13],a1_x[14],a1_x[15]}),
	.a1addx_0 /* IN */ (a1addx_0),
	.a1addx_1 /* IN */ (a1addx_1),
	.a1addy /* IN */ (a1addy),
	.a1xsign /* IN */ (a1xsign),
	.a1ysign /* IN */ (a1ysign),
	.a2_pixsize_0 /* IN */ (a2_pixsize_0),
	.a2_pixsize_1 /* IN */ (a2_pixsize_1),
	.a2_pixsize_2 /* IN */ (a2_pixsize_2),
	.a2_x /* IN */ ({a2_x[0],a2_x[1],a2_x[2],a2_x[3],a2_x[4],a2_x[5],a2_x[6],a2_x[7],a2_x[8],a2_x[9],a2_x[10],a2_x[11],a2_x[12],a2_x[13],a2_x[14],a2_x[15]}),
	.a2addx_0 /* IN */ (a2addx_0),
	.a2addx_1 /* IN */ (a2addx_1),
	.a2addy /* IN */ (a2addy),
	.a2xsign /* IN */ (a2xsign),
	.a2ysign /* IN */ (a2ysign),
	.ack /* IN */ (ack),
	.address /* IN */ ({address[0],address[1],address[2],address[3],address[4],address[5],address[6],address[7],address[8],address[9],address[10],address[11],address[12],address[13],address[14],address[15],address[16],address[17],address[18],address[19],address[20],address[21],address[22],address[23]}),
	.big_pix /* IN */ (big_pix),
	.blit_back /* IN */ (blit_back),
	.clk /* IN */ (clk_18),
	.cmdld /* IN */ (cmdld),
	.countld /* IN */ (countld),
	.dcomp_0 /* IN */ (dcomp_0),
	.dcomp_1 /* IN */ (dcomp_1),
	.dcomp_2 /* IN */ (dcomp_2),
	.dcomp_3 /* IN */ (dcomp_3),
	.dcomp_4 /* IN */ (dcomp_4),
	.dcomp_5 /* IN */ (dcomp_5),
	.dcomp_6 /* IN */ (dcomp_6),
	.dcomp_7 /* IN */ (dcomp_7),
	.gpu_din /* IN */ ({gpu_din[0],gpu_din[1],gpu_din[2],gpu_din[3],gpu_din[4],gpu_din[5],gpu_din[6],gpu_din[7],gpu_din[8],gpu_din[9],gpu_din[10],gpu_din[11],gpu_din[12],gpu_din[13],gpu_din[14],gpu_din[15],gpu_din[16],gpu_din[17],gpu_din[18],gpu_din[19],gpu_din[20],gpu_din[21],gpu_din[22],gpu_din[23],gpu_din[24],gpu_din[25],gpu_din[26],gpu_din[27],gpu_din[28],gpu_din[29],gpu_din[30],gpu_din[31]}),
	.pixa_0 /* IN */ (pixa_0),
	.pixa_1 /* IN */ (pixa_1),
	.pixa_2 /* IN */ (pixa_2),
	.srcd_0 /* IN */ (srcd_0),
	.srcd_1 /* IN */ (srcd_1),
	.srcd_2 /* IN */ (srcd_2),
	.srcd_3 /* IN */ (srcd_3),
	.srcd_4 /* IN */ (srcd_4),
	.srcd_5 /* IN */ (srcd_5),
	.srcd_6 /* IN */ (srcd_6),
	.srcd_7 /* IN */ (srcd_7),
	.statrd /* IN */ (statrd),
	.stopld /* IN */ (stopld),
	.xreset_n /* IN */ (xreset_n),
	.zcomp_0 /* IN */ (zcomp_0),
	.zcomp_1 /* IN */ (zcomp_1),
	.zcomp_2 /* IN */ (zcomp_2),
	.zcomp_3 /* IN */ (zcomp_3),
	.sys_clk(sys_clk) // Generated
);

// BLIT.NET (111) - blitgpu : blitgpu
blitgpu blitgpu_inst
(
	.a1baseld /* OUT */ (a1baseld),
	.a1flagld /* OUT */ (a1flagld),
	.a1fracld /* OUT */ (a1fracld),
	.a1incld /* OUT */ (a1incld),
	.a1incfld /* OUT */ (a1incfld),
	.a1posrd /* OUT */ (a1posrd),
	.a1posfrd /* OUT */ (a1posfrd),
	.a1ptrld /* OUT */ (a1ptrld),
	.a1stepld /* OUT */ (a1stepld),
	.a1stepfld /* OUT */ (a1stepfld),
	.a1winld /* OUT */ (a1winld),
	.a2baseld /* OUT */ (a2baseld),
	.a2flagld /* OUT */ (a2flagld),
	.a2posrd /* OUT */ (a2posrd),
	.a2ptrld /* OUT */ (a2ptrld),
	.a2stepld /* OUT */ (a2stepld),
	.a2winld /* OUT */ (a2winld),
	.cmdld /* OUT */ (cmdld),
	.countld /* OUT */ (countld),
	.dstdld_0 /* OUT */ (dstdld_0),
	.dstdld_1 /* OUT */ (dstdld_1),
	.dstzld_0 /* OUT */ (dstzld_0),
	.dstzld_1 /* OUT */ (dstzld_1),
	.iincld /* OUT */ (iincld),
	.intld_0 /* OUT */ (intld_0),
	.intld_1 /* OUT */ (intld_1),
	.intld_2 /* OUT */ (intld_2),
	.intld_3 /* OUT */ (intld_3),
	.patdld_0 /* OUT */ (patdld_0),
	.patdld_1 /* OUT */ (patdld_1),
	.srcd1ld_0 /* OUT */ (srcd1ld_0),
	.srcd1ld_1 /* OUT */ (srcd1ld_1),
	.srcz1ld_0 /* OUT */ (srcz1ld_0),
	.srcz1ld_1 /* OUT */ (srcz1ld_1),
	.srcz2ld_0 /* OUT */ (srcz2ld_0),
	.srcz2ld_1 /* OUT */ (srcz2ld_1),
	.statrd /* OUT */ (statrd),
	.stopld /* OUT */ (stopld),
	.zedld_0 /* OUT */ (zedld_0),
	.zedld_1 /* OUT */ (zedld_1),
	.zedld_2 /* OUT */ (zedld_2),
	.zedld_3 /* OUT */ (zedld_3),
	.zincld /* OUT */ (zincld),
	.a1fracldi /* IN */ (a1fracldi),
	.a1ptrldi /* IN */ (a1ptrldi),
	.a2ptrldi /* IN */ (a2ptrldi),
	.blit_back /* IN */ (blit_back),
	.bliten /* IN */ (bliten),
	.dstdread /* IN */ (dstdread),
	.dstzread /* IN */ (dstzread),
	.gpu_addr /* IN */ ({gpu_addr[0],gpu_addr[1],gpu_addr[2],gpu_addr[3],gpu_addr[4],gpu_addr[5],gpu_addr[6],gpu_addr[7],gpu_addr[8],gpu_addr[9],gpu_addr[10],gpu_addr[11],gpu_addr[12],gpu_addr[13],gpu_addr[14],gpu_addr[15],gpu_addr[16],gpu_addr[17],gpu_addr[18],gpu_addr[19],gpu_addr[20],gpu_addr[21],gpu_addr[22],gpu_addr[23]}),
	.gpu_memw /* IN */ (gpu_memw),
	.patdadd /* IN */ (patdadd),
	.patfadd /* IN */ (patfadd),
	.srcdread /* IN */ (srcdread),
	.srcz1add /* IN */ (srcz1add),
	.srczread /* IN */ (srczread)
);

// --- Compiler-generated PE for BUS gpu_dout[0]
assign gpu_dout_0_out = (ts_pe_37_a0_oe & ts_pe_37_a0_out ) | (ts_pe_37_a1_oe & ts_pe_37_a1_out ) | 1'b0;
assign gpu_dout_0_oe = ts_pe_37_a0_oe | ts_pe_37_a1_oe;
assign ts_pe_37_a0_in = gpu_dout_0_in;
assign ts_pe_37_a1_in = gpu_dout_0_in;

// --- Compiler-generated PE for BUS gpu_dout[1]
assign gpu_dout_1_out = (ts_pe_38_a0_oe & ts_pe_38_a0_out ) | (ts_pe_38_a1_oe & ts_pe_38_a1_out ) | 1'b0;
assign gpu_dout_1_oe = ts_pe_38_a0_oe | ts_pe_38_a1_oe;
assign ts_pe_38_a0_in = gpu_dout_1_in;
assign ts_pe_38_a1_in = gpu_dout_1_in;

// --- Compiler-generated PE for BUS gpu_dout[2]
assign gpu_dout_2_out = (ts_pe_39_a0_oe & ts_pe_39_a0_out ) | (ts_pe_39_a1_oe & ts_pe_39_a1_out ) | 1'b0;
assign gpu_dout_2_oe = ts_pe_39_a0_oe | ts_pe_39_a1_oe;
assign ts_pe_39_a0_in = gpu_dout_2_in;
assign ts_pe_39_a1_in = gpu_dout_2_in;

// --- Compiler-generated PE for BUS gpu_dout[3]
assign gpu_dout_3_out = (ts_pe_40_a0_oe & ts_pe_40_a0_out ) | (ts_pe_40_a1_oe & ts_pe_40_a1_out ) | 1'b0;
assign gpu_dout_3_oe = ts_pe_40_a0_oe | ts_pe_40_a1_oe;
assign ts_pe_40_a0_in = gpu_dout_3_in;
assign ts_pe_40_a1_in = gpu_dout_3_in;

// --- Compiler-generated PE for BUS gpu_dout[4]
assign gpu_dout_4_out = (ts_pe_41_a0_oe & ts_pe_41_a0_out ) | (ts_pe_41_a1_oe & ts_pe_41_a1_out ) | 1'b0;
assign gpu_dout_4_oe = ts_pe_41_a0_oe | ts_pe_41_a1_oe;
assign ts_pe_41_a0_in = gpu_dout_4_in;
assign ts_pe_41_a1_in = gpu_dout_4_in;

// --- Compiler-generated PE for BUS gpu_dout[5]
assign gpu_dout_5_out = (ts_pe_42_a0_oe & ts_pe_42_a0_out ) | (ts_pe_42_a1_oe & ts_pe_42_a1_out ) | 1'b0;
assign gpu_dout_5_oe = ts_pe_42_a0_oe | ts_pe_42_a1_oe;
assign ts_pe_42_a0_in = gpu_dout_5_in;
assign ts_pe_42_a1_in = gpu_dout_5_in;

// --- Compiler-generated PE for BUS gpu_dout[6]
assign gpu_dout_6_out = (ts_pe_43_a0_oe & ts_pe_43_a0_out ) | (ts_pe_43_a1_oe & ts_pe_43_a1_out ) | 1'b0;
assign gpu_dout_6_oe = ts_pe_43_a0_oe | ts_pe_43_a1_oe;
assign ts_pe_43_a0_in = gpu_dout_6_in;
assign ts_pe_43_a1_in = gpu_dout_6_in;

// --- Compiler-generated PE for BUS gpu_dout[7]
assign gpu_dout_7_out = (ts_pe_44_a0_oe & ts_pe_44_a0_out ) | (ts_pe_44_a1_oe & ts_pe_44_a1_out ) | 1'b0;
assign gpu_dout_7_oe = ts_pe_44_a0_oe | ts_pe_44_a1_oe;
assign ts_pe_44_a0_in = gpu_dout_7_in;
assign ts_pe_44_a1_in = gpu_dout_7_in;

// --- Compiler-generated PE for BUS gpu_dout[8]
assign gpu_dout_8_out = (ts_pe_45_a0_oe & ts_pe_45_a0_out ) | (ts_pe_45_a1_oe & ts_pe_45_a1_out ) | 1'b0;
assign gpu_dout_8_oe = ts_pe_45_a0_oe | ts_pe_45_a1_oe;
assign ts_pe_45_a0_in = gpu_dout_8_in;
assign ts_pe_45_a1_in = gpu_dout_8_in;

// --- Compiler-generated PE for BUS gpu_dout[9]
assign gpu_dout_9_out = (ts_pe_46_a0_oe & ts_pe_46_a0_out ) | (ts_pe_46_a1_oe & ts_pe_46_a1_out ) | 1'b0;
assign gpu_dout_9_oe = ts_pe_46_a0_oe | ts_pe_46_a1_oe;
assign ts_pe_46_a0_in = gpu_dout_9_in;
assign ts_pe_46_a1_in = gpu_dout_9_in;

// --- Compiler-generated PE for BUS gpu_dout[10]
assign gpu_dout_10_out = (ts_pe_47_a0_oe & ts_pe_47_a0_out ) | (ts_pe_47_a1_oe & ts_pe_47_a1_out ) | 1'b0;
assign gpu_dout_10_oe = ts_pe_47_a0_oe | ts_pe_47_a1_oe;
assign ts_pe_47_a0_in = gpu_dout_10_in;
assign ts_pe_47_a1_in = gpu_dout_10_in;

// --- Compiler-generated PE for BUS gpu_dout[11]
assign gpu_dout_11_out = (ts_pe_48_a0_oe & ts_pe_48_a0_out ) | (ts_pe_48_a1_oe & ts_pe_48_a1_out ) | 1'b0;
assign gpu_dout_11_oe = ts_pe_48_a0_oe | ts_pe_48_a1_oe;
assign ts_pe_48_a0_in = gpu_dout_11_in;
assign ts_pe_48_a1_in = gpu_dout_11_in;

// --- Compiler-generated PE for BUS gpu_dout[12]
assign gpu_dout_12_out = (ts_pe_49_a0_oe & ts_pe_49_a0_out ) | (ts_pe_49_a1_oe & ts_pe_49_a1_out ) | 1'b0;
assign gpu_dout_12_oe = ts_pe_49_a0_oe | ts_pe_49_a1_oe;
assign ts_pe_49_a0_in = gpu_dout_12_in;
assign ts_pe_49_a1_in = gpu_dout_12_in;

// --- Compiler-generated PE for BUS gpu_dout[13]
assign gpu_dout_13_out = (ts_pe_50_a0_oe & ts_pe_50_a0_out ) | (ts_pe_50_a1_oe & ts_pe_50_a1_out ) | 1'b0;
assign gpu_dout_13_oe = ts_pe_50_a0_oe | ts_pe_50_a1_oe;
assign ts_pe_50_a0_in = gpu_dout_13_in;
assign ts_pe_50_a1_in = gpu_dout_13_in;

// --- Compiler-generated PE for BUS gpu_dout[14]
assign gpu_dout_14_out = (ts_pe_51_a0_oe & ts_pe_51_a0_out ) | (ts_pe_51_a1_oe & ts_pe_51_a1_out ) | 1'b0;
assign gpu_dout_14_oe = ts_pe_51_a0_oe | ts_pe_51_a1_oe;
assign ts_pe_51_a0_in = gpu_dout_14_in;
assign ts_pe_51_a1_in = gpu_dout_14_in;

// --- Compiler-generated PE for BUS gpu_dout[15]
assign gpu_dout_15_out = (ts_pe_52_a0_oe & ts_pe_52_a0_out ) | (ts_pe_52_a1_oe & ts_pe_52_a1_out ) | 1'b0;
assign gpu_dout_15_oe = ts_pe_52_a0_oe | ts_pe_52_a1_oe;
assign ts_pe_52_a0_in = gpu_dout_15_in;
assign ts_pe_52_a1_in = gpu_dout_15_in;

// --- Compiler-generated PE for BUS gpu_dout[16]
assign gpu_dout_16_out = (ts_pe_53_a0_oe & ts_pe_53_a0_out ) | (ts_pe_53_a1_oe & ts_pe_53_a1_out ) | 1'b0;
assign gpu_dout_16_oe = ts_pe_53_a0_oe | ts_pe_53_a1_oe;
assign ts_pe_53_a0_in = gpu_dout_16_in;
assign ts_pe_53_a1_in = gpu_dout_16_in;

// --- Compiler-generated PE for BUS gpu_dout[17]
assign gpu_dout_17_out = (ts_pe_54_a0_oe & ts_pe_54_a0_out ) | (ts_pe_54_a1_oe & ts_pe_54_a1_out ) | 1'b0;
assign gpu_dout_17_oe = ts_pe_54_a0_oe | ts_pe_54_a1_oe;
assign ts_pe_54_a0_in = gpu_dout_17_in;
assign ts_pe_54_a1_in = gpu_dout_17_in;

// --- Compiler-generated PE for BUS gpu_dout[18]
assign gpu_dout_18_out = (ts_pe_55_a0_oe & ts_pe_55_a0_out ) | (ts_pe_55_a1_oe & ts_pe_55_a1_out ) | 1'b0;
assign gpu_dout_18_oe = ts_pe_55_a0_oe | ts_pe_55_a1_oe;
assign ts_pe_55_a0_in = gpu_dout_18_in;
assign ts_pe_55_a1_in = gpu_dout_18_in;

// --- Compiler-generated PE for BUS gpu_dout[19]
assign gpu_dout_19_out = (ts_pe_56_a0_oe & ts_pe_56_a0_out ) | (ts_pe_56_a1_oe & ts_pe_56_a1_out ) | 1'b0;
assign gpu_dout_19_oe = ts_pe_56_a0_oe | ts_pe_56_a1_oe;
assign ts_pe_56_a0_in = gpu_dout_19_in;
assign ts_pe_56_a1_in = gpu_dout_19_in;

// --- Compiler-generated PE for BUS gpu_dout[20]
assign gpu_dout_20_out = (ts_pe_57_a0_oe & ts_pe_57_a0_out ) | (ts_pe_57_a1_oe & ts_pe_57_a1_out ) | 1'b0;
assign gpu_dout_20_oe = ts_pe_57_a0_oe | ts_pe_57_a1_oe;
assign ts_pe_57_a0_in = gpu_dout_20_in;
assign ts_pe_57_a1_in = gpu_dout_20_in;

// --- Compiler-generated PE for BUS gpu_dout[21]
assign gpu_dout_21_out = (ts_pe_58_a0_oe & ts_pe_58_a0_out ) | (ts_pe_58_a1_oe & ts_pe_58_a1_out ) | 1'b0;
assign gpu_dout_21_oe = ts_pe_58_a0_oe | ts_pe_58_a1_oe;
assign ts_pe_58_a0_in = gpu_dout_21_in;
assign ts_pe_58_a1_in = gpu_dout_21_in;

// --- Compiler-generated PE for BUS gpu_dout[22]
assign gpu_dout_22_out = (ts_pe_59_a0_oe & ts_pe_59_a0_out ) | (ts_pe_59_a1_oe & ts_pe_59_a1_out ) | 1'b0;
assign gpu_dout_22_oe = ts_pe_59_a0_oe | ts_pe_59_a1_oe;
assign ts_pe_59_a0_in = gpu_dout_22_in;
assign ts_pe_59_a1_in = gpu_dout_22_in;

// --- Compiler-generated PE for BUS gpu_dout[23]
assign gpu_dout_23_out = (ts_pe_60_a0_oe & ts_pe_60_a0_out ) | (ts_pe_60_a1_oe & ts_pe_60_a1_out ) | 1'b0;
assign gpu_dout_23_oe = ts_pe_60_a0_oe | ts_pe_60_a1_oe;
assign ts_pe_60_a0_in = gpu_dout_23_in;
assign ts_pe_60_a1_in = gpu_dout_23_in;

// --- Compiler-generated PE for BUS gpu_dout[24]
assign gpu_dout_24_out = (ts_pe_61_a0_oe & ts_pe_61_a0_out ) | (ts_pe_61_a1_oe & ts_pe_61_a1_out ) | 1'b0;
assign gpu_dout_24_oe = ts_pe_61_a0_oe | ts_pe_61_a1_oe;
assign ts_pe_61_a0_in = gpu_dout_24_in;
assign ts_pe_61_a1_in = gpu_dout_24_in;

// --- Compiler-generated PE for BUS gpu_dout[25]
assign gpu_dout_25_out = (ts_pe_62_a0_oe & ts_pe_62_a0_out ) | (ts_pe_62_a1_oe & ts_pe_62_a1_out ) | 1'b0;
assign gpu_dout_25_oe = ts_pe_62_a0_oe | ts_pe_62_a1_oe;
assign ts_pe_62_a0_in = gpu_dout_25_in;
assign ts_pe_62_a1_in = gpu_dout_25_in;

// --- Compiler-generated PE for BUS gpu_dout[26]
assign gpu_dout_26_out = (ts_pe_63_a0_oe & ts_pe_63_a0_out ) | (ts_pe_63_a1_oe & ts_pe_63_a1_out ) | 1'b0;
assign gpu_dout_26_oe = ts_pe_63_a0_oe | ts_pe_63_a1_oe;
assign ts_pe_63_a0_in = gpu_dout_26_in;
assign ts_pe_63_a1_in = gpu_dout_26_in;

// --- Compiler-generated PE for BUS gpu_dout[27]
assign gpu_dout_27_out = (ts_pe_64_a0_oe & ts_pe_64_a0_out ) | (ts_pe_64_a1_oe & ts_pe_64_a1_out ) | 1'b0;
assign gpu_dout_27_oe = ts_pe_64_a0_oe | ts_pe_64_a1_oe;
assign ts_pe_64_a0_in = gpu_dout_27_in;
assign ts_pe_64_a1_in = gpu_dout_27_in;

// --- Compiler-generated PE for BUS gpu_dout[28]
assign gpu_dout_28_out = (ts_pe_65_a0_oe & ts_pe_65_a0_out ) | (ts_pe_65_a1_oe & ts_pe_65_a1_out ) | 1'b0;
assign gpu_dout_28_oe = ts_pe_65_a0_oe | ts_pe_65_a1_oe;
assign ts_pe_65_a0_in = gpu_dout_28_in;
assign ts_pe_65_a1_in = gpu_dout_28_in;

// --- Compiler-generated PE for BUS gpu_dout[29]
assign gpu_dout_29_out = (ts_pe_66_a0_oe & ts_pe_66_a0_out ) | (ts_pe_66_a1_oe & ts_pe_66_a1_out ) | 1'b0;
assign gpu_dout_29_oe = ts_pe_66_a0_oe | ts_pe_66_a1_oe;
assign ts_pe_66_a0_in = gpu_dout_29_in;
assign ts_pe_66_a1_in = gpu_dout_29_in;

// --- Compiler-generated PE for BUS gpu_dout[30]
assign gpu_dout_30_out = (ts_pe_67_a0_oe & ts_pe_67_a0_out ) | (ts_pe_67_a1_oe & ts_pe_67_a1_out ) | 1'b0;
assign gpu_dout_30_oe = ts_pe_67_a0_oe | ts_pe_67_a1_oe;
assign ts_pe_67_a0_in = gpu_dout_30_in;
assign ts_pe_67_a1_in = gpu_dout_30_in;

// --- Compiler-generated PE for BUS gpu_dout[31]
assign gpu_dout_31_out = (ts_pe_68_a0_oe & ts_pe_68_a0_out ) | (ts_pe_68_a1_oe & ts_pe_68_a1_out ) | 1'b0;
assign gpu_dout_31_oe = ts_pe_68_a0_oe | ts_pe_68_a1_oe;
assign ts_pe_68_a0_in = gpu_dout_31_in;
assign ts_pe_68_a1_in = gpu_dout_31_in;
endmodule
/* verilator lint_on LITENDIAN */
