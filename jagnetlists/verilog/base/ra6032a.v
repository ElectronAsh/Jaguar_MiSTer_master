/* verilator lint_off LITENDIAN */
`include "defs.v"

module ra6032a
(
	output	[0:26]	z,
	input						clk,
	input		[0:5]		a,
	input	sys_clk
);

wire [5:0]	a_r;

assign a_r[5:0] = {a[5], a[4], a[3], a[2], a[1], a[0]};

`ifdef SIMULATION
reg	[26:0]	r_z;
`else
wire [31:0] r_z;
`endif

assign z[0:26] = {
	r_z[0], r_z[1], r_z[2], r_z[3], r_z[4], r_z[5], r_z[6], r_z[7], r_z[8], r_z[9], 
	r_z[10], r_z[11], r_z[12], r_z[13], r_z[14], r_z[15], r_z[16], r_z[17], r_z[18], r_z[19],
	r_z[20], r_z[21], r_z[22], r_z[23], r_z[24], r_z[25], r_z[26]
};

`ifdef SIMULATION
	reg	[31:0]	rom_blk [0:(1<<6)-1];
	initial
	begin
		$readmemh("mcode.rom", rom_blk);
	end

	always@(posedge sys_clk)
	begin
		r_z <= rom_blk[a_r][26:0];
	end
`else

	altsyncram	altsyncram_component (
				.clock0 (sys_clk),
				.address_a (a_r),
				.q_a (r_z),
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
				.data_a ({32{1'b1}}),
				.data_b (1'b1),
				.eccstatus (),
				.q_b (),
				.rden_a (1'b1),
				.rden_b (1'b1),
				.wren_a (1'b0),
				.wren_b (1'b0));
	defparam
		altsyncram_component.clock_enable_input_a = "BYPASS",
		altsyncram_component.clock_enable_output_a = "BYPASS",
		altsyncram_component.init_file = "mcode.mif",
		altsyncram_component.intended_device_family = "Cyclone II",
		altsyncram_component.lpm_hint = "ENABLE_RUNTIME_MOD=NO",
		altsyncram_component.lpm_type = "altsyncram",
		altsyncram_component.numwords_a = 64,
		altsyncram_component.operation_mode = "ROM",
		altsyncram_component.outdata_aclr_a = "NONE",
		altsyncram_component.outdata_reg_a = "CLOCK0",
		altsyncram_component.widthad_a = 6,
		altsyncram_component.width_a = 32,
		altsyncram_component.width_byteena_a = 1;
	
`endif

endmodule
/* verilator lint_on LITENDIAN */