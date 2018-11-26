/* verilator lint_off LITENDIAN */
`include "defs.v"

module vgalb
(
	output	[23:0]	q,
	input		[23:0]	d,
	input						we,
	input		[9:0]		a,
	input						sys_clk
);

`ifdef SIMULATION
reg	[23:0]	r_q_out;
reg	[23:0]	r_q_out_dly;

reg	[23:0]	ram_blk [0:(1<<10)-1];

assign q = r_q_out_dly;

always @(posedge sys_clk)
begin
	r_q_out_dly <= r_q_out;
	if (we) begin
		ram_blk[a][23:0] <= d;
	end
	r_q_out <= ram_blk[a][23:0];
end
`else

		altsyncram	altsyncram_component (
				.wren_a (we),
				.clock0 (sys_clk),
				.address_a (a),
				.data_a (d),
				.q_a (q),
				.aclr0 (1'b0),
				.aclr1 (1'b0),
				.address_b (1'b1),
				.addressstall_a (1'b0),
				.addressstall_b (1'b0),
				.byteena_a (1'b1),
				.byteena_b (1'b1),
				.clock1 (1'b1),
				.clocken0 (1'b1),
				.clocken1 (1'b1),
				.clocken2 (1'b1),
				.clocken3 (1'b1),
				.data_b (1'b1),
				.eccstatus (),
				.q_b (),
				.rden_a (1'b1),
				.rden_b (1'b1),
				.wren_b (1'b0));
	defparam
		altsyncram_component.clock_enable_input_a = "BYPASS",
		altsyncram_component.clock_enable_output_a = "BYPASS",
		altsyncram_component.intended_device_family = "Cyclone III",
		altsyncram_component.lpm_hint = "ENABLE_RUNTIME_MOD=NO",
		altsyncram_component.lpm_type = "altsyncram",
		altsyncram_component.numwords_a = 1024,
		altsyncram_component.operation_mode = "SINGLE_PORT",
		altsyncram_component.outdata_aclr_a = "NONE",
		altsyncram_component.outdata_reg_a = "CLOCK0",
		altsyncram_component.power_up_uninitialized = "FALSE",
		altsyncram_component.read_during_write_mode_port_a = "NEW_DATA_NO_NBE_READ",
		altsyncram_component.widthad_a = 10,
		altsyncram_component.width_a = 24,
		altsyncram_component.width_byteena_a = 1;

`endif
endmodule
/* verilator lint_on LITENDIAN */
