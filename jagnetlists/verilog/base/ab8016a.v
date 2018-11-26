/* verilator lint_off LITENDIAN */
`include "defs.v"

module ab8016a
(
	output	[0:15]	z_out,
	output	[0:15]	z_oe,
	input		[0:15]	z_in,
	input						cen,
	input						rw,
	input		[0:7]		a,
	input						sys_clk
);

wire [7:0]	a_r;
wire [15:0]	z_out_r;
wire	[15:0]	z_in_r;

assign a_r[7:0] = {a[7], a[6], a[5], a[4], a[3], a[2], a[1], a[0]};

assign z_out[0:15] = {z_out_r[0], z_out_r[1], z_out_r[2], z_out_r[3], z_out_r[4], z_out_r[5], z_out_r[6], z_out_r[7],
		z_out_r[8], z_out_r[9], z_out_r[10], z_out_r[11], z_out_r[12], z_out_r[13], z_out_r[14], z_out_r[15]};

assign z_in_r[15:0] = {z_in[15], z_in[14], z_in[13], z_in[12], z_in[11], z_in[10], z_in[9], z_in[8],
		z_in[7], z_in[6], z_in[5], z_in[4], z_in[3], z_in[2], z_in[1], z_in[0]};

`ifdef SIMULATION
	reg [15:0]	r_z_out_r;
	// reg	[15:0]	r_z_out_r_dly;
	reg	[0:15]	r_z_oe = 16'h0000;
	// reg	[0:15]	r_z_oe_dly = 16'h0000;

	reg	[15:0]	ram_blk [0:(1<<8)-1];

	// assign z_oe = r_z_oe_dly;
	assign z_out_r = r_z_out_r;
	assign z_oe = r_z_oe;

	always @(posedge sys_clk)
	begin
		// r_z_out_r_dly <= r_z_out_r;
		// r_z_oe_dly <= r_z_oe;	

		if (~cen) begin
			if (~rw) begin
				ram_blk[a_r][15:0] <= z_in_r;
			end
			r_z_out_r <= ram_blk[a_r][15:0];
		end
		r_z_oe <= (~cen & rw) ? 16'hffff : 16'h0000;
	end
`else
	wire	wren;
	reg	[0:15]	r_z_oe = 16'h0000;
	// reg	[0:15]	r_z_oe_dly = 16'h0000;
	
	assign z_oe = r_z_oe;

	always @(posedge sys_clk)
	begin
		r_z_oe <= (~cen & rw) ? 16'hffff : 16'h0000;
	end

	assign wren = (~cen & ~rw);
	
		altsyncram	altsyncram_component (
				.wren_a (wren),
				.clock0 (sys_clk),
				.address_a (a_r),
				.data_a (z_in_r),
				.q_a (z_out_r),
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
		altsyncram_component.numwords_a = 256,
		altsyncram_component.operation_mode = "SINGLE_PORT",
		altsyncram_component.outdata_aclr_a = "NONE",
		altsyncram_component.outdata_reg_a = "CLOCK0",
		altsyncram_component.power_up_uninitialized = "FALSE",
		altsyncram_component.read_during_write_mode_port_a = "NEW_DATA_NO_NBE_READ",
		altsyncram_component.widthad_a = 8,
		altsyncram_component.width_a = 16,
		altsyncram_component.width_byteena_a = 1;

`endif

endmodule
/* verilator lint_on LITENDIAN */