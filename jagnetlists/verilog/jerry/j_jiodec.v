/* verilator lint_off LITENDIAN */
`include "defs.v"

module j_jiodec
(
	input a_0,
	input a_1,
	input a_2,
	input a_3,
	input a_4,
	input a_5,
	input a_6,
	input a_7,
	input a_8,
	input a_9,
	input a_10,
	input a_11,
	input a_12,
	input a_13,
	input a_14,
	input a_15,
	input dspcsl,
	input wel0,
	input oel0,
	input dspen,
	output pit1w,
	output pit2w,
	output pit3w,
	output pit4w,
	output clk1w,
	output clk2w,
	output clk3w,
	output int1w,
	output u2dwr,
	output u2ctwr,
	output u2psclw,
	output test1w,
	output joy1rl,
	output joy2rl,
	output joy1wl,
	output gpiol_0,
	output gpiol_1,
	output gpiol_2,
	output gpiol_3,
	output gpiol_4,
	output gpiol_5,
	output int1r,
	output u2drd,
	output u2strd,
	output u2psclr,
	output pit1r,
	output pit2r,
	output pit3r,
	output pit4r,
	output internal,
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
	input dr_15_in
);
wire [0:15] addr;
wire gnd;
wire al_1;
wire al_2;
wire al_3;
wire al_4;
wire al_5;
wire al_6;
wire al_7;
wire al_8;
wire al_9;
wire al_10;
wire al_11;
wire al_12;
wire al_13;
wire al_14;
wire al_15;
wire dspcs;
wire wet;
wire oet;
wire nota00xx;
wire i00xxi;
wire i00xx;
wire axxx0;
wire axxx2;
wire axxx4;
wire axxx6;
wire axxx8;
wire axxxa;
wire axxxc;
wire axx0x;
wire axx1x;
wire axx2x;
wire axx3x;
wire axx6x;
wire vcc;
wire notgpio;
wire float1;
wire float2;
wire float3;
wire float;

// Output buffers
wire int1r_obuf;
wire u2drd_obuf;
wire u2strd_obuf;
wire u2psclr_obuf;
wire pit1r_obuf;
wire pit2r_obuf;
wire pit3r_obuf;
wire pit4r_obuf;


// Output buffers
assign int1r = int1r_obuf;
assign u2drd = u2drd_obuf;
assign u2strd = u2strd_obuf;
assign u2psclr = u2psclr_obuf;
assign pit1r = pit1r_obuf;
assign pit2r = pit2r_obuf;
assign pit3r = pit3r_obuf;
assign pit4r = pit4r_obuf;


// JIODEC.NET (31) - addr : join
assign addr[0] = a_0;
assign addr[1] = a_1;
assign addr[2] = a_2;
assign addr[3] = a_3;
assign addr[4] = a_4;
assign addr[5] = a_5;
assign addr[6] = a_6;
assign addr[7] = a_7;
assign addr[8] = a_8;
assign addr[9] = a_9;
assign addr[10] = a_10;
assign addr[11] = a_11;
assign addr[12] = a_12;
assign addr[13] = a_13;
assign addr[14] = a_14;
assign addr[15] = a_15;

// JIODEC.NET (32) - addru : dummy

// JIODEC.NET (34) - gnd : tie0
assign gnd = 1'b0;

// JIODEC.NET (36) - al[1-14] : iv
assign al_1 = ~a_1;
assign al_2 = ~a_2;
assign al_3 = ~a_3;
assign al_4 = ~a_4;
assign al_5 = ~a_5;
assign al_6 = ~a_6;
assign al_7 = ~a_7;
assign al_8 = ~a_8;
assign al_9 = ~a_9;
assign al_10 = ~a_10;
assign al_11 = ~a_11;
assign al_12 = ~a_12;
assign al_13 = ~a_13;
assign al_14 = ~a_14;

// JIODEC.NET (37) - al[15] : ivh
assign al_15 = ~a_15;

// JIODEC.NET (38) - dspcs : ivh
assign dspcs = ~dspcsl;

// JIODEC.NET (39) - wet : ivh
assign wet = ~wel0;

// JIODEC.NET (40) - oet : ivh
assign oet = ~oel0;

// JIODEC.NET (42) - nota00xx_ : nd8
assign nota00xx = ~(al_8 & al_9 & al_10 & al_11 & al_12 & al_13 & al_14 & al_15);

// JIODEC.NET (43) - i00xxi : nr2
assign i00xxi = ~(nota00xx | dspcsl);

// JIODEC.NET (44) - i00xx : nivu
assign i00xx = i00xxi;

// JIODEC.NET (46) - axxx0 : an3h
assign axxx0 = al_3 & al_2 & al_1;

// JIODEC.NET (47) - axxx2 : an3
assign axxx2 = al_3 & al_2 & a_1;

// JIODEC.NET (48) - axxx4 : an3
assign axxx4 = al_3 & a_2 & al_1;

// JIODEC.NET (49) - axxx6 : an3
assign axxx6 = al_3 & a_2 & a_1;

// JIODEC.NET (50) - axxx8 : an3
assign axxx8 = a_3 & al_2 & al_1;

// JIODEC.NET (51) - axxxa : an3
assign axxxa = a_3 & al_2 & a_1;

// JIODEC.NET (52) - axxxc : an3
assign axxxc = a_3 & a_2 & al_1;

// JIODEC.NET (54) - axx0x : an4
assign axx0x = al_7 & al_6 & al_5 & al_4;

// JIODEC.NET (55) - axx1x : an4
assign axx1x = al_7 & al_6 & al_5 & a_4;

// JIODEC.NET (56) - axx2x : an4
assign axx2x = al_7 & al_6 & a_5 & al_4;

// JIODEC.NET (57) - axx3x : an4h
assign axx3x = al_7 & al_6 & a_5 & a_4;

// JIODEC.NET (58) - axx6x : an4
assign axx6x = al_7 & a_6 & a_5 & al_4;

// JIODEC.NET (71) - gpiol[0] : nd6
assign gpiol_0 = ~(dspcs & al_15 & a_14 & al_13 & al_12 & a_11);

// JIODEC.NET (72) - gpiol[1] : nd6
assign gpiol_1 = ~(dspcs & al_15 & a_14 & al_13 & a_12 & vcc);

// JIODEC.NET (73) - gpiol[2] : nd6
assign gpiol_2 = ~(dspcs & al_15 & a_14 & a_13 & al_12 & vcc);

// JIODEC.NET (74) - gpiol[3] : nd6
assign gpiol_3 = ~(dspcs & al_15 & a_14 & a_13 & a_12 & al_11);

// JIODEC.NET (75) - gpiol[4] : nd8
assign gpiol_4 = ~(dspcs & al_15 & a_14 & a_13 & a_12 & a_11 & al_10 & vcc);

// JIODEC.NET (76) - gpiol[5] : nd8
assign gpiol_5 = ~(dspcs & al_15 & a_14 & a_13 & a_12 & a_11 & a_10 & vcc);

// JIODEC.NET (78) - joy1r : nd8
assign joy1rl = ~(dspcs & al_15 & a_14 & al_13 & al_12 & al_11 & axxx0 & oet);

// JIODEC.NET (79) - joy2r : nd8
assign joy2rl = ~(dspcs & al_15 & a_14 & al_13 & al_12 & al_11 & axxx2 & oet);

// JIODEC.NET (80) - joy1w : nd8
assign joy1wl = ~(dspcs & al_15 & a_14 & al_13 & al_12 & al_11 & axxx0 & wet);

// JIODEC.NET (82) - gpio : nd2
assign notgpio = ~(al_15 & a_14);

// JIODEC.NET (83) - internal : an2
assign internal = dspcs & notgpio;

// JIODEC.NET (87) - int1r : an4h
assign int1r_obuf = i00xx & axx2x & axxx0 & oet;

// JIODEC.NET (88) - u2drd : an4h
assign u2drd_obuf = i00xx & axx3x & axxx0 & oet;

// JIODEC.NET (89) - u2strd : an4h
assign u2strd_obuf = i00xx & axx3x & axxx2 & oet;

// JIODEC.NET (90) - u2psclr : an4h
assign u2psclr_obuf = i00xx & axx3x & axxx4 & oet;

// JIODEC.NET (92) - pit1r : an4h
assign pit1r_obuf = i00xx & axx3x & axxx6 & oet;

// JIODEC.NET (93) - pit2r : an4h
assign pit2r_obuf = i00xx & axx3x & axxx8 & oet;

// JIODEC.NET (94) - pit3r : an4h
assign pit3r_obuf = i00xx & axx3x & axxxa & oet;

// JIODEC.NET (95) - pit4r : an4h
assign pit4r_obuf = i00xx & axx3x & axxxc & oet;

// JIODEC.NET (108) - float1 : nr6
assign float1 = ~(int1r_obuf | u2drd_obuf | u2strd_obuf | u2psclr_obuf | dspen | gnd);

// JIODEC.NET (112) - float2 : nr4
assign float2 = ~(pit1r_obuf | pit2r_obuf | pit3r_obuf | pit4r_obuf);

// JIODEC.NET (113) - float3 : an2
assign float3 = float1 & float2;

// JIODEC.NET (115) - float : nivh
assign float = float3;

// JIODEC.NET (116) - dr[0-15] : ts
assign dr_0_out = gnd;
assign dr_0_oe = float;
assign dr_1_out = gnd;
assign dr_1_oe = float;
assign dr_2_out = gnd;
assign dr_2_oe = float;
assign dr_3_out = gnd;
assign dr_3_oe = float;
assign dr_4_out = gnd;
assign dr_4_oe = float;
assign dr_5_out = gnd;
assign dr_5_oe = float;
assign dr_6_out = gnd;
assign dr_6_oe = float;
assign dr_7_out = gnd;
assign dr_7_oe = float;
assign dr_8_out = gnd;
assign dr_8_oe = float;
assign dr_9_out = gnd;
assign dr_9_oe = float;
assign dr_10_out = gnd;
assign dr_10_oe = float;
assign dr_11_out = gnd;
assign dr_11_oe = float;
assign dr_12_out = gnd;
assign dr_12_oe = float;
assign dr_13_out = gnd;
assign dr_13_oe = float;
assign dr_14_out = gnd;
assign dr_14_oe = float;
assign dr_15_out = gnd;
assign dr_15_oe = float;

// JIODEC.NET (120) - pit1w : an4h
assign pit1w = i00xx & axx0x & axxx0 & wet;

// JIODEC.NET (121) - pit2w : an4h
assign pit2w = i00xx & axx0x & axxx2 & wet;

// JIODEC.NET (122) - pit3w : an4h
assign pit3w = i00xx & axx0x & axxx4 & wet;

// JIODEC.NET (123) - pit4w : an4h
assign pit4w = i00xx & axx0x & axxx6 & wet;

// JIODEC.NET (124) - clk1w : an4h
assign clk1w = i00xx & axx1x & axxx0 & wet;

// JIODEC.NET (125) - clk2w : an4h
assign clk2w = i00xx & axx1x & axxx2 & wet;

// JIODEC.NET (126) - clk3w : an4h
assign clk3w = i00xx & axx1x & axxx4 & wet;

// JIODEC.NET (127) - int1w : an4h
assign int1w = i00xx & axx2x & axxx0 & wet;

// JIODEC.NET (128) - u2dwr : an4h
assign u2dwr = i00xx & axx3x & axxx0 & wet;

// JIODEC.NET (129) - u2ctwr : an4h
assign u2ctwr = i00xx & axx3x & axxx2 & wet;

// JIODEC.NET (130) - u2psclw : an4h
assign u2psclw = i00xx & axx3x & axxx4 & wet;

// JIODEC.NET (132) - test1w : tie0
assign test1w = 1'b0;

// JIODEC.NET (134) - vcc : tie1
assign vcc = 1'b1;
endmodule
/* verilator lint_on LITENDIAN */
