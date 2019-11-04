/* verilator lint_off LITENDIAN */
`include "defs.v"

module clk
(
	input resetl,
	
	input pclk,
	input vxclk,
	
	input ndtest,
	input cfg_7,
	
	output cfgw,
	output cfgen,
	
	output clk,		// Direct from pclk.
	output vclk,	// Direct from vxclk (xvclk).
	output tlw,		// Inverted pclk.
	
	input sys_clk // Generated
);
wire clk1;
wire clk2;
wire vclk1;
wire cfgwl;
wire cfgend;
wire nottest;
wire cfgeni;
wire external;
wire internal;

// Output buffers
wire cfgw_obuf;


// Output buffers
assign cfgw = cfgw_obuf;


// CLK.NET (35) - clk1 : niv
assign clk1 = pclk;

// CLK.NET (36) - clk2 : nivu
assign clk2 = clk1;

// CLK.NET (37) - clk : bniv310
assign clk = clk2;

// CLK.NET (42) - tlw : ivu
assign tlw = ~clk1;

// CLK.NET (58) - vclk1 : nivh
assign vclk1 = vxclk;

// CLK.NET (59) - vclk : bniv34
assign vclk = vclk1;

// CLK.NET (80) - cfgwl : fd1q
fd1q cfgwl_inst
(
	.q /* OUT */ (cfgwl),
	.d /* IN */ (resetl),
	.cp /* IN */ (pclk),
	.sys_clk(sys_clk) // Generated
);

// CLK.NET (81) - cfgw : iv
assign cfgw_obuf = ~cfgwl;

// CLK.NET (82) - cfgend : fd2q
fd2q cfgend_inst
(
	.q /* OUT */ (cfgend),
	.d /* IN */ (cfgwl),
	.cp /* IN */ (pclk),
	.cd /* IN */ (resetl),
	.sys_clk(sys_clk) // Generated
);

// CLK.NET (83) - nottest : iv
assign nottest = ~ndtest;

// CLK.NET (84) - cfgeni : nd2
assign cfgeni = ~(cfgend & nottest);

// CLK.NET (85) - cfgen : ivh
assign cfgen = ~cfgeni;

// CLK.NET (87) - external : ldp1q
ldp1q external_inst
(
	.q /* OUT */ (external),
	.d /* IN */ (cfg_7),
	.g /* IN */ (cfgw_obuf),
	.sys_clk(sys_clk) // Generated
);

// CLK.NET (88) - internal : iv
assign internal = ~external;
endmodule
/* verilator lint_on LITENDIAN */
