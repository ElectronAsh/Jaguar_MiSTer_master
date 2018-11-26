/* verilator lint_off LITENDIAN */
`include "defs.v"

module blitgpu
(
	output a1baseld,
	output a1flagld,
	output a1fracld,
	output a1incld,
	output a1incfld,
	output a1posrd,
	output a1posfrd,
	output a1ptrld,
	output a1stepld,
	output a1stepfld,
	output a1winld,
	output a2baseld,
	output a2flagld,
	output a2posrd,
	output a2ptrld,
	output a2stepld,
	output a2winld,
	output cmdld,
	output countld,
	output dstdld_0,
	output dstdld_1,
	output dstzld_0,
	output dstzld_1,
	output iincld,
	output intld_0,
	output intld_1,
	output intld_2,
	output intld_3,
	output patdld_0,
	output patdld_1,
	output srcd1ld_0,
	output srcd1ld_1,
	output srcz1ld_0,
	output srcz1ld_1,
	output srcz2ld_0,
	output srcz2ld_1,
	output statrd,
	output stopld,
	output zedld_0,
	output zedld_1,
	output zedld_2,
	output zedld_3,
	output zincld,
	input a1fracldi,
	input a1ptrldi,
	input a2ptrldi,
	input blit_back,
	input bliten,
	input dstdread,
	input dstzread,
	input [0:23] gpu_addr,
	input gpu_memw,
	input patdadd,
	input patfadd,
	input srcdread,
	input srcz1add,
	input srczread
);
wire blit_back_n;
wire gpua_2;
wire gpua_3;
wire gpua_4;
wire gpua_5;
wire gpua_6;
wire gpua_7;
wire gpua_n_2;
wire gpua_n_3;
wire gpua_n_4;
wire gpua_n_5;
wire gpua_n_6;
wire gpua_n_7;
wire wren_n_0;
wire wren_n_1;
wire wren_n_2;
wire wren_n_3;
wire wren_n_4;
wire a1ptrldg;
wire a1fracldg;
wire a2ptrldg;
wire cmdldt;
wire countldt;
wire srcd1ldg_0;
wire srcd1ldg_1;
wire dstdldg_0;
wire dstdldg_1;
wire dstzldg_0;
wire dstzldg_1;
wire srcz1ldg_0;
wire srcz1ldg_1;
wire patdldg_0;
wire patdldg_1;
wire unused_0;
wire gpu_memw_n;
wire brd;

// BLITGPU.NET (67) - blit_back\ : iv
assign blit_back_n = ~blit_back;

// BLITGPU.NET (73) - gpua[2-4] : nivm
assign gpua_2 = gpu_addr[2];
assign gpua_3 = gpu_addr[3];
assign gpua_4 = gpu_addr[4];

// BLITGPU.NET (74) - gpua[5-7] : niv
assign gpua_5 = gpu_addr[5];
assign gpua_6 = gpu_addr[6];
assign gpua_7 = gpu_addr[7];

// BLITGPU.NET (75) - gpua\[2-7] : iv
assign gpua_n_2 = ~gpua_2;
assign gpua_n_3 = ~gpua_3;
assign gpua_n_4 = ~gpua_4;
assign gpua_n_5 = ~gpua_5;
assign gpua_n_6 = ~gpua_6;
assign gpua_n_7 = ~gpua_7;

// BLITGPU.NET (77) - wren0 : nd5
assign wren_n_0 = ~(gpua_n_5 & gpua_n_6 & gpua_n_7 & bliten & gpu_memw);

// BLITGPU.NET (79) - wren1 : nd5
assign wren_n_1 = ~(gpua_5 & gpua_n_6 & gpua_n_7 & bliten & gpu_memw);

// BLITGPU.NET (81) - wren2 : nd6
assign wren_n_2 = ~(gpua_n_5 & gpua_6 & gpua_n_7 & bliten & gpu_memw & blit_back_n);

// BLITGPU.NET (83) - wren3 : nd6
assign wren_n_3 = ~(gpua_5 & gpua_6 & gpua_n_7 & bliten & gpu_memw & blit_back_n);

// BLITGPU.NET (85) - wren4 : nd6
assign wren_n_4 = ~(gpua_n_5 & gpua_n_6 & gpua_7 & bliten & gpu_memw & blit_back_n);

// BLITGPU.NET (88) - dec0 : d38gh
d38gh dec0_inst
(
	.z0 /* OUT */ (a1baseld),
	.z1 /* OUT */ (a1flagld),
	.z2 /* OUT */ (a1winld),
	.z3 /* OUT */ (a1ptrldg),
	.z4 /* OUT */ (a1stepld),
	.z5 /* OUT */ (a1stepfld),
	.z6 /* OUT */ (a1fracldg),
	.z7 /* OUT */ (a1incld),
	.a0 /* IN */ (gpua_2),
	.a1 /* IN */ (gpua_3),
	.a2 /* IN */ (gpua_4),
	.gn /* IN */ (wren_n_0)
);

// BLITGPU.NET (91) - dec1 : d38gh
d38gh dec1_inst
(
	.z0 /* OUT */ (a1incfld),
	.z1 /* OUT */ (a2baseld),
	.z2 /* OUT */ (a2flagld),
	.z3 /* OUT */ (a2winld),
	.z4 /* OUT */ (a2ptrldg),
	.z5 /* OUT */ (a2stepld),
	.z6 /* OUT */ (cmdldt),
	.z7 /* OUT */ (countldt),
	.a0 /* IN */ (gpua_2),
	.a1 /* IN */ (gpua_3),
	.a2 /* IN */ (gpua_4),
	.gn /* IN */ (wren_n_1)
);

// BLITGPU.NET (94) - dec2 : d38gh
d38gh dec2_inst
(
	.z0 /* OUT */ (srcd1ldg_0),
	.z1 /* OUT */ (srcd1ldg_1),
	.z2 /* OUT */ (dstdldg_0),
	.z3 /* OUT */ (dstdldg_1),
	.z4 /* OUT */ (dstzldg_0),
	.z5 /* OUT */ (dstzldg_1),
	.z6 /* OUT */ (srcz1ldg_0),
	.z7 /* OUT */ (srcz1ldg_1),
	.a0 /* IN */ (gpua_2),
	.a1 /* IN */ (gpua_3),
	.a2 /* IN */ (gpua_4),
	.gn /* IN */ (wren_n_2)
);

// BLITGPU.NET (97) - dec3 : d38gh
d38gh dec3_inst
(
	.z0 /* OUT */ (srcz2ld_0),
	.z1 /* OUT */ (srcz2ld_1),
	.z2 /* OUT */ (patdldg_0),
	.z3 /* OUT */ (patdldg_1),
	.z4 /* OUT */ (iincld),
	.z5 /* OUT */ (zincld),
	.z6 /* OUT */ (stopld),
	.z7 /* OUT */ (intld_0),
	.a0 /* IN */ (gpua_2),
	.a1 /* IN */ (gpua_3),
	.a2 /* IN */ (gpua_4),
	.gn /* IN */ (wren_n_3)
);

// BLITGPU.NET (100) - dec4 : d38gh
d38gh dec4_inst
(
	.z0 /* OUT */ (intld_1),
	.z1 /* OUT */ (intld_2),
	.z2 /* OUT */ (intld_3),
	.z3 /* OUT */ (zedld_0),
	.z4 /* OUT */ (zedld_1),
	.z5 /* OUT */ (zedld_2),
	.z6 /* OUT */ (zedld_3),
	.z7 /* OUT */ (unused_0),
	.a0 /* IN */ (gpua_2),
	.a1 /* IN */ (gpua_3),
	.a2 /* IN */ (gpua_4),
	.gn /* IN */ (wren_n_4)
);

// BLITGPU.NET (103) - cmdld : nivu
assign cmdld = cmdldt;

// BLITGPU.NET (104) - countld : nivu
assign countld = countldt;

// BLITGPU.NET (108) - a1ptrld : or2u
assign a1ptrld = a1ptrldi | a1ptrldg;

// BLITGPU.NET (109) - a1fracld : or2u
assign a1fracld = a1fracldi | a1fracldg;

// BLITGPU.NET (110) - a2ptrld : or2u
assign a2ptrld = a2ptrldi | a2ptrldg;

// BLITGPU.NET (111) - dstdld[0-1] : or2
assign dstdld_0 = dstdldg_0 | dstdread;
assign dstdld_1 = dstdldg_1 | dstdread;

// BLITGPU.NET (112) - dstzld[0-1] : or2
assign dstzld_0 = dstzldg_0 | dstzread;
assign dstzld_1 = dstzldg_1 | dstzread;

// BLITGPU.NET (113) - srcd1ld[0-1] : or3u
assign srcd1ld_0 = srcd1ldg_0 | srcdread | patfadd;
assign srcd1ld_1 = srcd1ldg_1 | srcdread | patfadd;

// BLITGPU.NET (115) - srcz1ld[0-1] : or3u
assign srcz1ld_0 = srcz1ldg_0 | srczread | srcz1add;
assign srcz1ld_1 = srcz1ldg_1 | srczread | srcz1add;

// BLITGPU.NET (121) - patdld[0-1] : or2u
assign patdld_0 = patdldg_0 | patdadd;
assign patdld_1 = patdldg_1 | patdadd;

// BLITGPU.NET (125) - gpu_memw\ : iv
assign gpu_memw_n = ~gpu_memw;

// BLITGPU.NET (126) - brd : an2
assign brd = bliten & gpu_memw_n;

// BLITGPU.NET (128) - statrd : an6u
assign statrd = brd & gpua_n_2 & gpua_3 & gpua_4 & gpua_5 & gpua_n_6;

// BLITGPU.NET (130) - a1posrd : an6u
assign a1posrd = brd & gpua_2 & gpua_n_3 & gpua_n_4 & gpua_n_5 & gpua_n_6;

// BLITGPU.NET (132) - a1posfrd : an6u
assign a1posfrd = brd & gpua_n_2 & gpua_3 & gpua_4 & gpua_n_5 & gpua_n_6;

// BLITGPU.NET (134) - a2posrd : an6u
assign a2posrd = brd & gpua_2 & gpua_3 & gpua_n_4 & gpua_5 & gpua_n_6;

// BLITGPU.NET (137) - unused[0] : dummy
endmodule
/* verilator lint_on LITENDIAN */
