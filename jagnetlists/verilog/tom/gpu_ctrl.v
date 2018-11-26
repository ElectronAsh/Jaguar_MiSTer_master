/* verilator lint_off LITENDIAN */
`include "defs.v"

module gpu_ctrl
(
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
	output bus_hog,
	output cpu_int,
	output go,
	output gpu_irq_0,
	output single_go,
	output single_step,
	input clk,
	input ctrlwr,
	input ctrlwrgo,
	input [0:31] gpu_din,
	input reset_n,
	input single_stop,
	input statrd,
	input sys_clk // Generated
);
wire one;
wire zero;
wire goi;
wire got;
wire cpu_intt;
wire gpu_intt;
wire single_got;

// Output buffers
wire bus_hog_obuf;
wire go_obuf;


// Output buffers
assign bus_hog = bus_hog_obuf;
assign go = go_obuf;


// GPU_CTRL.NET (34) - one : tie1
assign one = 1'b1;

// GPU_CTRL.NET (35) - zero : tie0
assign zero = 1'b0;

// GPU_CTRL.NET (39) - goi : mx2
assign goi = (ctrlwrgo) ? gpu_din[0] : go_obuf;

// GPU_CTRL.NET (40) - got : fd2q
fd2q got_inst
(
	.q /* OUT */ (got),
	.d /* IN */ (goi),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// GPU_CTRL.NET (41) - go : nivh
assign go_obuf = got;

// GPU_CTRL.NET (43) - cpu_intt : an2
assign cpu_intt = ctrlwr & gpu_din[1];

// GPU_CTRL.NET (44) - cpu_int : fd1q
fd1q cpu_int_inst
(
	.q /* OUT */ (cpu_int),
	.d /* IN */ (cpu_intt),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// GPU_CTRL.NET (46) - gpu_intt : an2
assign gpu_intt = ctrlwr & gpu_din[2];

// GPU_CTRL.NET (47) - gpu_int : fd1q
fd1q gpu_int_inst
(
	.q /* OUT */ (gpu_irq_0),
	.d /* IN */ (gpu_intt),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// GPU_CTRL.NET (49) - single_step : fdsyncr
fdsyncr single_step_inst
(
	.q /* OUT */ (single_step),
	.d /* IN */ (gpu_din[3]),
	.ld /* IN */ (ctrlwr),
	.clk /* IN */ (clk),
	.rst_n /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// GPU_CTRL.NET (52) - single_got : an2
assign single_got = ctrlwr & gpu_din[4];

// GPU_CTRL.NET (53) - single_go : fd1q
fd1q single_go_inst
(
	.q /* OUT */ (single_go),
	.d /* IN */ (single_got),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// GPU_CTRL.NET (55) - bus_hog : fdsyncr
fdsyncr bus_hog_inst
(
	.q /* OUT */ (bus_hog_obuf),
	.d /* IN */ (gpu_din[11]),
	.ld /* IN */ (ctrlwr),
	.clk /* IN */ (clk),
	.rst_n /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// GPU_CTRL.NET (60) - stat[0] : ts
assign gpu_dout_0_out = go_obuf;
assign gpu_dout_0_oe = statrd;

// GPU_CTRL.NET (61) - stat[1-2] : ts
assign gpu_dout_1_out = zero;
assign gpu_dout_1_oe = statrd;
assign gpu_dout_2_out = zero;
assign gpu_dout_2_oe = statrd;

// GPU_CTRL.NET (62) - stat[3] : ts
assign gpu_dout_3_out = single_stop;
assign gpu_dout_3_oe = statrd;

// GPU_CTRL.NET (63) - stat[4] : ts
assign gpu_dout_4_out = zero;
assign gpu_dout_4_oe = statrd;

// GPU_CTRL.NET (64) - stat[5] : ts
assign gpu_dout_5_out = zero;
assign gpu_dout_5_oe = statrd;

// GPU_CTRL.NET (65) - stat[11] : ts
assign gpu_dout_11_out = bus_hog_obuf;
assign gpu_dout_11_oe = statrd;

// GPU_CTRL.NET (72) - stat[12] : ts
assign gpu_dout_12_out = zero;
assign gpu_dout_12_oe = statrd;

// GPU_CTRL.NET (73) - stat[13] : ts
assign gpu_dout_13_out = one;
assign gpu_dout_13_oe = statrd;

// GPU_CTRL.NET (74) - stat[14] : ts
assign gpu_dout_14_out = zero;
assign gpu_dout_14_oe = statrd;

// GPU_CTRL.NET (75) - stat[15] : ts
assign gpu_dout_15_out = zero;
assign gpu_dout_15_oe = statrd;
endmodule
/* verilator lint_on LITENDIAN */
