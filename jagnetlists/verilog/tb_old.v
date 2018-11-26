/* verilator lint_off LITENDIAN */
`include "defs.v"

module tb
(
	input	xresetl,
	input xpclk,
	input xvclk,
	input sys_clk,
	input tlw,
	
	output  [0:9] 	dram_a,
	output					dram_ras_n,
	output					dram_cas_n,
	output	[0:3]		dram_oe_n,
	output 	[0:3]		dram_uw_n,
	output 	[0:3]		dram_lw_n,
	output	[0:63]	dram_d,
	input		[0:63]	dram_q,
	input		[0:3]		dram_oe,

  output        DBG_CPU_RDEN,
  output        DBG_CPU_WREN,
  output        DBG_CPU_DTACK,
  output  [1:0] DBG_CPU_BENA,
  output [31:0] DBG_CPU_ADDR,
  output [15:0] DBG_CPU_RDATA,
  output [15:0] DBG_CPU_WDATA,
  output  [3:0] DBG_REG_ADDR,
  output  [3:0] DBG_REG_WREN,
  output [15:0] DBG_REG_DATA,
  output [15:0] DBG_SR_REG,
  output [31:0] DBG_PC_REG,
  output [31:0] DBG_USP_REG,
  output [31:0] DBG_SSP_REG,
  output [31:0] DBG_CYCLES,
  output        DBG_IFETCH,

	output	[16:0]	os_rom_a,
	output					os_rom_ce_n,
	output					os_rom_oe_n,
	input		[7:0]		os_rom_q,
	input						os_rom_oe,

	output	[23:0]	cart_a,
	output					cart_ce_n,
	output	[1:0]			cart_oe_n,
	input		[31:0]		cart_q,
	input		[1:0]			cart_oe,

	output vga_vs_n,
	output vga_hs_n,
	output [7:0] vga_r,
	output [7:0] vga_g,
	output [7:0] vga_b
);

// `ifndef verilator3
// reg						xpclk;
// reg						xvclk;
// reg						xresetl;
// reg						sys_clk;

// wire 					vga_vs_n;
// wire					vga_hs_n;
// wire [7:0] 		vga_r;
// wire [7:0] 		vga_g;
// wire [7:0] 		vga_b;
// `endif

// TOM

// TOM - Inputs
wire					xbgl;
wire	[0:1]		xdbrl;
wire					xlp;
wire					xdint;
wire					xtest;
wire					xwaitl;

// TOM - Bidirs
wire	[0:63]	xd_out;
wire	[0:63]	xd_oe;
wire	[0:63]	xd_in;
wire	[0:23]	xa_out; //
wire	[0:23]	xa_oe;
wire	[0:23]	xa_in;
wire	[0:10]	xma_out; //
wire	[0:10]	xma_oe;
wire	[0:10]	xma_in;
wire					xhs_out; //
wire					xhs_oe;
wire					xhs_in;
wire					xvs_out; //
wire					xvs_oe;
wire					xvs_in;
wire	[0:1]		xsiz_out; //
wire	[0:1]		xsiz_oe;
wire	[0:1]		xsiz_in;
wire	[0:2]		xfc_out; //
wire	[0:2]		xfc_oe;
wire	[0:2]		xfc_in;
wire					xrw_out; //
wire					xrw_oe;
wire					xrw_in;
wire					xdreql_out; //
wire					xdreql_oe;
wire					xdreql_in;
wire					xba_out; //
wire					xba_oe;
wire					xba_in;
wire					xbrl_out; //
wire					xbrl_oe;
wire					xbrl_in;

// TOM - Outputs
wire	[0:7]		xr;
wire	[0:7]		xg;
wire	[0:7]		xb;
wire					xinc;
wire	[0:2]		xoel;
wire	[0:2]		xmaska;
wire	[0:1]		xromcsl;
wire	[0:1]		xcasl;
wire					xdbgl;
wire					xexpl;
wire					xdspcsl;
wire	[0:7]		xwel;
wire	[0:1]		xrasl;
wire					xdtackl;
wire					xintl;

// TOM - Extra signals
wire					hs_o;
wire					hhs_o;
wire					vs_o;

wire					fdram;
wire					blank;

// JERRY

// JERRY - Inputs
wire					j_xdspcsl;
wire					j_xpclkosc;
wire					j_xpclkin;
wire					j_xdbgl;
wire					j_xoel_0;
wire					j_xwel_0;
wire					j_xserin;
wire					j_xdtackl;
wire					j_xi2srxd;
wire	[0:1]		j_xeint;
wire					j_xtest;
wire					j_xchrin;
wire					j_xresetil;

// JERRY - Bidirs
wire	[0:31]	j_xd_out;
wire	[0:31]	j_xd_oe;
wire	[0:31]	j_xd_in;
wire	[0:23]	j_xa_out;
wire	[0:23]	j_xa_oe;
wire	[0:23]	j_xa_in;
wire	[0:3]		j_xjoy_out;
wire	[0:3]		j_xjoy_oe;
wire	[0:3]		j_xjoy_in;
wire	[0:3]		j_xgpiol_out;
wire	[0:3]		j_xgpiol_oe;
wire	[0:3]		j_xgpiol_in;
wire					j_xsck_out;
wire					j_xsck_oe;
wire					j_xsck_in;
wire					j_xws_out;
wire					j_xws_oe;
wire					j_xws_in;
wire					j_xvclk_out;
wire					j_xvclk_oe;
wire					j_xvclk_in;

wire	[0:1]		j_xsiz_out;
wire	[0:1]		j_xsiz_oe;
wire	[0:1]		j_xsiz_in;
wire					j_xrw_out;
wire					j_xrw_oe;
wire					j_xrw_in;
wire					j_xdreql_out;
wire					j_xdreql_oe;
wire					j_xdreql_in;

// JERRY - Outputs
wire	[0:1]		j_xdbrl;
wire					j_xint;
wire					j_xserout;
wire					j_xgpiol_4;
wire					j_xgpiol_5;
wire					j_xvclkdiv;
wire					j_xchrdiv;
wire					j_xpclkout;
wire					j_xpclkdiv;
wire					j_xresetl;
wire					j_xchrout;
wire	[0:1]		j_xrdac;
wire	[0:1]		j_xldac;
wire					j_xiordl;
wire					j_xiowrl;
wire					j_xi2stxd;
wire					j_xcpuclk;

// Tristates / Busses
wire					rw;
wire	[0:1]		siz;
wire					dreql;
wire	[0:23]	abus;
wire	[0:63]	dbus;


// JOYSTICK INTERFACE
wire	[0:15]	joy;
wire	[0:7]		b;
reg						u374_clk_prev = 1'b1;
reg		[0:7]		u374_reg;
wire	[0:15]	joy_bus;
wire					joy_bus_oe;

// Debug
wire	[63:0]	xd_r;
wire	[23:0]	xa_r;
wire	rasl;
wire	casl;
wire	[31:0]	j_xd_r;
wire	[23:0]	j_xa_r;

reg j68_rd_ena_prev = 1'b0;
reg j68_wr_ena_prev = 1'b0;
reg	[0:2]		xoel_prev = 3'b111;
reg	[0:7]		xwel_prev = 8'b11111111;
reg [23:0]	xa_r_prev = 24'h000000;
reg [63:0]	cycle = 64'h0000000000000000;

// J68

// Clock and reset
wire        j68_rst;          // CPU reset
wire        j68_clk;          // CPU clock
// Bus interface
wire        j68_rd_ena;       // Read strobe
wire        j68_wr_ena;       // Write strobe
wire        j68_data_ack;     // Data acknowledge
wire [1:0]  j68_byte_ena;     // Byte enable
wire [31:0] j68_address;      // Address bus
wire [15:0] j68_rd_data;      // Data bus in
wire [15:0] j68_wr_data;      // Data bus out
// 68000 control
wire [2:0]  j68_fc;           // Function code
wire [2:0]  j68_ipl_n;        // Interrupt level
// For interrupt management
wire [23:0]	j68_address_final;



// // OS ROM
// `ifndef verilator3
// wire	[16:0]	os_rom_a;
// wire					os_rom_ce_n;
// wire					os_rom_oe_n;
// wire	[7:0]		os_rom_q;
// wire					os_rom_oe;
// `endif

// // DRAM
// `ifndef verilator3
// wire  [0:9] 	dram_a;
// wire  				dram_ras_n;
// wire					dram_cas_n;
// wire	[0:3]		dram_oe_n;
// wire 	[0:3]		dram_uw_n;
// wire 	[0:3]		dram_lw_n;
// wire	[0:63]	dram_d;
// wire	[0:63]	dram_q;
// wire	[0:3]		dram_oe;
// `endif

// EEPROM
wire	ee_cs;
wire	ee_sk;
wire	ee_di;
wire	ee_do;

// Scandoubler
reg		[15:0]	vc				= 16'h0000;
reg		[15:0]	hc				= 16'h0000;
reg		[15:0]	vga_hc		= 16'h0000;
reg		hs_o_prev					= 1'b0;
reg		hhs_o_prev				= 1'b0;
reg		vs_o_prev					= 1'b0;
wire	[23:0]	lb_d;
wire					lb0_we;
wire	[9:0]		lb0_a;
wire	[23:0]	lb0_q;
wire					lb1_we;
wire	[9:0]		lb1_a;
wire	[23:0]	lb1_q;


// // Simulation with Icarus Verilog
// `ifdef ICARUS
// initial
// begin
  // $dumpfile("tb.lxt");
  // $dumpvars(0, tb);
	// #1900000
	// begin
		// $finish;
	// end
// end
// `endif

// Debug
assign rasl = xrasl[0];
assign casl = xcasl[0];

assign xa_r = { 
	xa_in[23], xa_in[22], xa_in[21], xa_in[20], xa_in[19], xa_in[18], xa_in[17], xa_in[16], 
	xa_in[15], xa_in[14], xa_in[13], xa_in[12], xa_in[11], xa_in[10], xa_in[9], xa_in[8], 
	xa_in[7], xa_in[6], xa_in[5], xa_in[4], xa_in[3], xa_in[2], xa_in[1], xa_in[0]
};
assign xd_r = { 
	xd_in[63], xd_in[62], xd_in[61], xd_in[60], xd_in[59], xd_in[58], xd_in[57], xd_in[56], 
	xd_in[55], xd_in[54], xd_in[53], xd_in[52], xd_in[51], xd_in[50], xd_in[49], xd_in[48], 
	xd_in[47], xd_in[46], xd_in[45], xd_in[44], xd_in[43], xd_in[42], xd_in[41], xd_in[40], 
	xd_in[39], xd_in[38], xd_in[37], xd_in[36], xd_in[35], xd_in[34], xd_in[33], xd_in[32], 
	xd_in[31], xd_in[30], xd_in[29], xd_in[28], xd_in[27], xd_in[26], xd_in[25], xd_in[24], 
	xd_in[23], xd_in[22], xd_in[21], xd_in[20], xd_in[19], xd_in[18], xd_in[17], xd_in[16], 
	xd_in[15], xd_in[14], xd_in[13], xd_in[12], xd_in[11], xd_in[10], xd_in[9], xd_in[8], 
	xd_in[7], xd_in[6], xd_in[5], xd_in[4], xd_in[3], xd_in[2], xd_in[1], xd_in[0]
};

assign j_xa_r = { 
	j_xa_in[23], j_xa_in[22], j_xa_in[21], j_xa_in[20], j_xa_in[19], j_xa_in[18], j_xa_in[17], j_xa_in[16], 
	j_xa_in[15], j_xa_in[14], j_xa_in[13], j_xa_in[12], j_xa_in[11], j_xa_in[10], j_xa_in[9], j_xa_in[8], 
	j_xa_in[7], j_xa_in[6], j_xa_in[5], j_xa_in[4], j_xa_in[3], j_xa_in[2], j_xa_in[1], j_xa_in[0]
};

assign j_xd_r = { 
	j_xd_in[31], j_xd_in[30], j_xd_in[29], j_xd_in[28], j_xd_in[27], j_xd_in[26], j_xd_in[25], j_xd_in[24], 
	j_xd_in[23], j_xd_in[22], j_xd_in[21], j_xd_in[20], j_xd_in[19], j_xd_in[18], j_xd_in[17], j_xd_in[16], 
	j_xd_in[15], j_xd_in[14], j_xd_in[13], j_xd_in[12], j_xd_in[11], j_xd_in[10], j_xd_in[9], j_xd_in[8], 
	j_xd_in[7], j_xd_in[6], j_xd_in[5], j_xd_in[4], j_xd_in[3], j_xd_in[2], j_xd_in[1], j_xd_in[0]
};


// `ifndef verilator3
// // Clocks
// initial
// begin
	// sys_clk   = 1'b0;
	// // sys_clk   = 1'b1;
	// forever #10 sys_clk = ~sys_clk;
// end

// initial
// begin
	// xvclk     = 1'b1;
	// forever #20 xvclk = ~xvclk;
// end

// initial
// begin
	// xpclk     = 1'b1;
	// forever #40 xpclk = ~xpclk;
// end

// // Reset
// initial
// begin
	// xresetl 	= 1'b0;
	// #80 xresetl  = 1'b1;
// end
// `endif


wire refreq;
wire obbreq;
wire [1:0] gbreq;
wire [1:0] bbreq;

always @(posedge sys_clk)
begin
	j68_rd_ena_prev <= j68_rd_ena;
	j68_wr_ena_prev <= j68_wr_ena;
	xoel_prev <= xoel;
	xwel_prev <= xwel;
	xa_r_prev <= xa_r;

	cycle <= cycle + 1;
	
	if (~j68_rd_ena_prev & j68_rd_ena) begin
		$display("%x 68K RD $%x", cycle, j68_address_final);
	end
	if (~j68_wr_ena_prev & j68_wr_ena) begin
		$display("%x 68K WR $%x #%x", cycle, j68_address_final, j68_wr_data);
	end
	
	if (~xba_in) begin
		if ((xoel != 3'b111) & ((xoel != xoel_prev) || (xa_r != xa_r_prev))) begin
			$display("%x JAG RD REF=%x OB=%x BLT=%x GPU=%x $%x", cycle, refreq, obbreq, bbreq, gbreq, xa_r);
		end
		if ((xwel != 8'b11111111) & ((xwel != xwel_prev) || (xa_r != xa_r_prev))) begin
			$display("%x JAG WR xwel=%x REF=%x OB=%x BLT=%x GPU=%x $%x #%x", cycle, xwel, refreq, obbreq, bbreq, gbreq, xa_r, xd_r);
		end
	end
end



// TOM - Inputs
assign xbgl = 1'b0;	// Bus Grant from the CPU
assign xdbrl[0] = j_xdbrl[0];	// Requests the bus for the DSP
assign xdbrl[1] = 1'b1; // Unconnected
assign xlp = 1'b0; // Light Pen
assign xdint = j_xint;
assign xtest = 1'b0;
assign xwaitl = 1'b1;

// JERRY - Inputs
assign j_xdspcsl = xdspcsl;
assign j_xpclkosc = xvclk;
assign j_xpclkin = xpclk;
assign j_xdbgl = xdbgl; 
assign j_xoel_0 = xoel[0];
assign j_xwel_0 = xwel[0];
assign j_xserin = 1'b1;
assign j_xdtackl = xdtackl; 
assign j_xi2srxd = 1'b1;
assign j_xeint[0] = 1'b1;
assign j_xeint[1] = 1'b1;
assign j_xtest = xtest;
assign j_xchrin = 1'b1;	// Not used
assign j_xresetil = xresetl;


// Tristates between TOM/JERRY/68000

// --- assign xrw_in = (xba_in) ? ~j68_wr_ena : xrw_out;
// --- assign xsiz_in[0] = (xba_in) ? ~j68_byte_ena[0] : xsiz_out[0];
// --- assign xsiz_in[1] = (xba_in) ? ~j68_byte_ena[1] : xsiz_out[1];

assign rw = 
	(xrw_oe) ? 
		xrw_out 
	: (j_xrw_oe) ? 
		j_xrw_out
	: 
		~j68_wr_ena;
assign xrw_in = rw;
assign j_xrw_in = rw;
		
assign siz[0] =
	(xsiz_oe[0]) ?
		xsiz_out[0]
	: (j_xsiz_oe[0]) ?
		j_xsiz_out[0]
	: 
		~j68_byte_ena[0];
assign siz[1] =
	(xsiz_oe[1]) ?
		xsiz_out[1]
	: (j_xsiz_oe[1]) ?
		j_xsiz_out[1]
	: 
		~j68_byte_ena[1];
assign xsiz_in = siz;
assign j_xsiz_in = siz;
		
assign dreql = 
	(xdreql_oe) ? 
		xdreql_out 
	: (j_xdreql_oe) ? 
		j_xdreql_out
	: 
		~(j68_rd_ena | j68_wr_ena);
assign xdreql_in = dreql;
assign j_xdreql_in = dreql;

// Busses between TOM/JERRY/68000

// Address bus
assign abus[0:23] =
	(xa_oe[0]) ?
		xa_out[0:23]
	: (j_xa_oe[0]) ?
		j_xa_out[0:23]
	:
		{ 
			j68_address_final[0], j68_address_final[1], j68_address_final[2], j68_address_final[3],
			j68_address_final[4], j68_address_final[5], j68_address_final[6], j68_address_final[7],
			j68_address_final[8], j68_address_final[9], j68_address_final[10], j68_address_final[11],
			j68_address_final[12], j68_address_final[13], j68_address_final[14], j68_address_final[15],
			j68_address_final[16], j68_address_final[17], j68_address_final[18], j68_address_final[19],
			j68_address_final[20], j68_address_final[21], j68_address_final[22], j68_address_final[23]
		};
assign xa_in = abus;
assign j_xa_in = abus;


// Data bus

/*assign xd_in[0:7] = 
		(j68_wr_ena & j68_byte_ena[0] & xba_in) ?
			{
				j68_wr_data[0], j68_wr_data[1], j68_wr_data[2], j68_wr_data[3], 
				j68_wr_data[4], j68_wr_data[5], j68_wr_data[6], j68_wr_data[7]
			}
		: (os_rom_oe) ?
			{
				os_rom_q[0], os_rom_q[1], os_rom_q[2], os_rom_q[3], 
				os_rom_q[4], os_rom_q[5], os_rom_q[6], os_rom_q[7]
			}	
		: (dram_oe[0]) ?
			dram_q[0:7]
		:
			xd_out[0:7];
*/
assign dbus[0] = (xd_oe[0]) ? xd_out[0] : (j_xd_oe[0]) ? j_xd_out[0] :
	(dram_oe[0]) ? dram_q[0] : (os_rom_oe) ? os_rom_q[0] : 
	(j68_wr_ena & j68_byte_ena[0] & xba_in) ? j68_wr_data[0] : (cart_oe[0]) ? cart_q[0] : (joy_bus_oe) ? joy_bus[0] : 1'bz;
assign dbus[1] = (xd_oe[1]) ? xd_out[1] : (j_xd_oe[1]) ? j_xd_out[1] :
	(dram_oe[0]) ? dram_q[1] : (os_rom_oe) ? os_rom_q[1] : 
	(j68_wr_ena & j68_byte_ena[0] & xba_in) ? j68_wr_data[1] : (cart_oe[0]) ? cart_q[1] : (joy_bus_oe) ? joy_bus[1] : 1'bz;
assign dbus[2] = (xd_oe[2]) ? xd_out[2] : (j_xd_oe[2]) ? j_xd_out[2] :
	(dram_oe[0]) ? dram_q[2] : (os_rom_oe) ? os_rom_q[2] : 
	(j68_wr_ena & j68_byte_ena[0] & xba_in) ? j68_wr_data[2] : (cart_oe[0]) ? cart_q[2] : (joy_bus_oe) ? joy_bus[2] : 1'bz;
assign dbus[3] = (xd_oe[3]) ? xd_out[3] : (j_xd_oe[3]) ? j_xd_out[3] :
	(dram_oe[0]) ? dram_q[3] : (os_rom_oe) ? os_rom_q[3] : 
	(j68_wr_ena & j68_byte_ena[0] & xba_in) ? j68_wr_data[3] : (cart_oe[0]) ? cart_q[3] : (joy_bus_oe) ? joy_bus[3] : 1'bz;
assign dbus[4] = (xd_oe[4]) ? xd_out[4] : (j_xd_oe[4]) ? j_xd_out[4] :
	(dram_oe[0]) ? dram_q[4] : (os_rom_oe) ? os_rom_q[4] : 
	(j68_wr_ena & j68_byte_ena[0] & xba_in) ? j68_wr_data[4] : (cart_oe[0]) ? cart_q[4] : (joy_bus_oe) ? joy_bus[4] : 1'bz;
assign dbus[5] = (xd_oe[5]) ? xd_out[5] : (j_xd_oe[5]) ? j_xd_out[5] :
	(dram_oe[0]) ? dram_q[5] : (os_rom_oe) ? os_rom_q[5] : 
	(j68_wr_ena & j68_byte_ena[0] & xba_in) ? j68_wr_data[5] : (cart_oe[0]) ? cart_q[5] : (joy_bus_oe) ? joy_bus[5] : 1'bz;
assign dbus[6] = (xd_oe[6]) ? xd_out[6] : (j_xd_oe[6]) ? j_xd_out[6] :
	(dram_oe[0]) ? dram_q[6] : (os_rom_oe) ? os_rom_q[6] : 
	(j68_wr_ena & j68_byte_ena[0] & xba_in) ? j68_wr_data[6] : (cart_oe[0]) ? cart_q[6] : (joy_bus_oe) ? joy_bus[6] : 1'bz;
assign dbus[7] = (xd_oe[7]) ? xd_out[7] : (j_xd_oe[7]) ? j_xd_out[7] :
	(dram_oe[0]) ? dram_q[7] : (os_rom_oe) ? os_rom_q[7] : 
	(j68_wr_ena & j68_byte_ena[0] & xba_in) ? j68_wr_data[7] : (cart_oe[0]) ? cart_q[7] : (joy_bus_oe) ? joy_bus[7] : 1'bz;

/*assign xd_in[8:15] = 
	(j68_wr_ena & j68_byte_ena[1] & xba_in) ?
		{
			j68_wr_data[8], j68_wr_data[9], j68_wr_data[10], j68_wr_data[11], 
			j68_wr_data[12], j68_wr_data[13], j68_wr_data[14], j68_wr_data[15]
		}
	: (dram_oe[0]) ?
		dram_q[8:15]
	:
		xd_out[8:15];
*/
assign dbus[8] = (xd_oe[8]) ? xd_out[8] : (j_xd_oe[8]) ? j_xd_out[8] :
	(dram_oe[0]) ? dram_q[8] : (j68_wr_ena & j68_byte_ena[1] & xba_in) ? j68_wr_data[8] : (cart_oe[0]) ? cart_q[8] : (joy_bus_oe) ? joy_bus[8] : 1'bz;
assign dbus[9] = (xd_oe[9]) ? xd_out[9] : (j_xd_oe[9]) ? j_xd_out[9] :
	(dram_oe[0]) ? dram_q[9] : (j68_wr_ena & j68_byte_ena[1] & xba_in) ? j68_wr_data[9] : (cart_oe[0]) ? cart_q[9] : (joy_bus_oe) ? joy_bus[9] : 1'bz;
assign dbus[10] = (xd_oe[10]) ? xd_out[10] : (j_xd_oe[10]) ? j_xd_out[10] :
	(dram_oe[0]) ? dram_q[10] : (j68_wr_ena & j68_byte_ena[1] & xba_in) ? j68_wr_data[10] : (cart_oe[0]) ? cart_q[10] : (joy_bus_oe) ? joy_bus[10] : 1'bz;
assign dbus[11] = (xd_oe[11]) ? xd_out[11] : (j_xd_oe[11]) ? j_xd_out[11] :
	(dram_oe[0]) ? dram_q[11] : (j68_wr_ena & j68_byte_ena[1] & xba_in) ? j68_wr_data[11] : (cart_oe[0]) ? cart_q[11] : (joy_bus_oe) ? joy_bus[11] : 1'bz;
assign dbus[12] = (xd_oe[12]) ? xd_out[12] : (j_xd_oe[12]) ? j_xd_out[12] :
	(dram_oe[0]) ? dram_q[12] : (j68_wr_ena & j68_byte_ena[1] & xba_in) ? j68_wr_data[12] : (cart_oe[0]) ? cart_q[12] : (joy_bus_oe) ? joy_bus[12] : 1'bz;
assign dbus[13] = (xd_oe[13]) ? xd_out[13] : (j_xd_oe[13]) ? j_xd_out[13] :
	(dram_oe[0]) ? dram_q[13] : (j68_wr_ena & j68_byte_ena[1] & xba_in) ? j68_wr_data[13] : (cart_oe[0]) ? cart_q[13] : (joy_bus_oe) ? joy_bus[13] : 1'bz;
assign dbus[14] = (xd_oe[14]) ? xd_out[14] : (j_xd_oe[14]) ? j_xd_out[14] :
	(dram_oe[0]) ? dram_q[14] : (j68_wr_ena & j68_byte_ena[1] & xba_in) ? j68_wr_data[14] : (cart_oe[0]) ? cart_q[14] : (joy_bus_oe) ? joy_bus[14] : 1'bz;
assign dbus[15] = (xd_oe[15]) ? xd_out[15] : (j_xd_oe[15]) ? j_xd_out[15] :
	(dram_oe[0]) ? dram_q[15] : (j68_wr_ena & j68_byte_ena[1] & xba_in) ? j68_wr_data[15] : (cart_oe[0]) ? cart_q[15] : (joy_bus_oe) ? joy_bus[15] : 1'bz;

/*assign xd_in[16:31] = 
	(dram_oe[1]) ?
		dram_q[16:31]
	:
		xd_out[16:31];
*/
assign dbus[16] = (xd_oe[16]) ? xd_out[16] : (dram_oe[1]) ? dram_q[16] : (cart_oe[1]) ? cart_q[16] : 1'bz;
assign dbus[17] = (xd_oe[17]) ? xd_out[17] : (dram_oe[1]) ? dram_q[17] : (cart_oe[1]) ? cart_q[17] : 1'bz;
assign dbus[18] = (xd_oe[18]) ? xd_out[18] : (dram_oe[1]) ? dram_q[18] : (cart_oe[1]) ? cart_q[18] : 1'bz;
assign dbus[19] = (xd_oe[19]) ? xd_out[19] : (dram_oe[1]) ? dram_q[19] : (cart_oe[1]) ? cart_q[19] : 1'bz;
assign dbus[20] = (xd_oe[20]) ? xd_out[20] : (dram_oe[1]) ? dram_q[20] : (cart_oe[1]) ? cart_q[20] : 1'bz;
assign dbus[21] = (xd_oe[21]) ? xd_out[21] : (dram_oe[1]) ? dram_q[21] : (cart_oe[1]) ? cart_q[21] : 1'bz;
assign dbus[22] = (xd_oe[22]) ? xd_out[22] : (dram_oe[1]) ? dram_q[22] : (cart_oe[1]) ? cart_q[22] : 1'bz;
assign dbus[23] = (xd_oe[23]) ? xd_out[23] : (dram_oe[1]) ? dram_q[23] : (cart_oe[1]) ? cart_q[23] : 1'bz;
assign dbus[24] = (xd_oe[24]) ? xd_out[24] : (dram_oe[1]) ? dram_q[24] : (cart_oe[1]) ? cart_q[24] : 1'bz;
assign dbus[25] = (xd_oe[25]) ? xd_out[25] : (dram_oe[1]) ? dram_q[25] : (cart_oe[1]) ? cart_q[25] : 1'bz;
assign dbus[26] = (xd_oe[26]) ? xd_out[26] : (dram_oe[1]) ? dram_q[26] : (cart_oe[1]) ? cart_q[26] : 1'bz;
assign dbus[27] = (xd_oe[27]) ? xd_out[27] : (dram_oe[1]) ? dram_q[27] : (cart_oe[1]) ? cart_q[27] : 1'bz;
assign dbus[28] = (xd_oe[28]) ? xd_out[28] : (dram_oe[1]) ? dram_q[28] : (cart_oe[1]) ? cart_q[28] : 1'bz;
assign dbus[29] = (xd_oe[29]) ? xd_out[29] : (dram_oe[1]) ? dram_q[29] : (cart_oe[1]) ? cart_q[29] : 1'bz;
assign dbus[30] = (xd_oe[30]) ? xd_out[30] : (dram_oe[1]) ? dram_q[30] : (cart_oe[1]) ? cart_q[30] : 1'bz;
assign dbus[31] = (xd_oe[31]) ? xd_out[31] : (dram_oe[1]) ? dram_q[31] : (cart_oe[1]) ? cart_q[31] : 1'bz;


/*assign xd_in[32:47] = 
	(dram_oe[2]) ?
		dram_q[32:47]
	:
		xd_out[32:47];
*/
assign dbus[32] = (xd_oe[32]) ? xd_out[32] : (dram_oe[2]) ? dram_q[32] : 1'bz;
assign dbus[33] = (xd_oe[33]) ? xd_out[33] : (dram_oe[2]) ? dram_q[33] : 1'bz;
assign dbus[34] = (xd_oe[34]) ? xd_out[34] : (dram_oe[2]) ? dram_q[34] : 1'bz;
assign dbus[35] = (xd_oe[35]) ? xd_out[35] : (dram_oe[2]) ? dram_q[35] : 1'bz;
assign dbus[36] = (xd_oe[36]) ? xd_out[36] : (dram_oe[2]) ? dram_q[36] : 1'bz;
assign dbus[37] = (xd_oe[37]) ? xd_out[37] : (dram_oe[2]) ? dram_q[37] : 1'bz;
assign dbus[38] = (xd_oe[38]) ? xd_out[38] : (dram_oe[2]) ? dram_q[38] : 1'bz;
assign dbus[39] = (xd_oe[39]) ? xd_out[39] : (dram_oe[2]) ? dram_q[39] : 1'bz;
assign dbus[40] = (xd_oe[40]) ? xd_out[40] : (dram_oe[2]) ? dram_q[40] : 1'bz;
assign dbus[41] = (xd_oe[41]) ? xd_out[41] : (dram_oe[2]) ? dram_q[41] : 1'bz;
assign dbus[42] = (xd_oe[42]) ? xd_out[42] : (dram_oe[2]) ? dram_q[42] : 1'bz;
assign dbus[43] = (xd_oe[43]) ? xd_out[43] : (dram_oe[2]) ? dram_q[43] : 1'bz;
assign dbus[44] = (xd_oe[44]) ? xd_out[44] : (dram_oe[2]) ? dram_q[44] : 1'bz;
assign dbus[45] = (xd_oe[45]) ? xd_out[45] : (dram_oe[2]) ? dram_q[45] : 1'bz;
assign dbus[46] = (xd_oe[46]) ? xd_out[46] : (dram_oe[2]) ? dram_q[46] : 1'bz;
assign dbus[47] = (xd_oe[47]) ? xd_out[47] : (dram_oe[2]) ? dram_q[47] : 1'bz;


/*assign xd_in[48:63] = 
	(dram_oe[3]) ?
		dram_q[48:63]
	:
		xd_out[48:63];
*/
assign dbus[48] = (xd_oe[48]) ? xd_out[48] : (dram_oe[3]) ? dram_q[48] : 1'bz;
assign dbus[49] = (xd_oe[49]) ? xd_out[49] : (dram_oe[3]) ? dram_q[49] : 1'bz;
assign dbus[50] = (xd_oe[50]) ? xd_out[50] : (dram_oe[3]) ? dram_q[50] : 1'bz;
assign dbus[51] = (xd_oe[51]) ? xd_out[51] : (dram_oe[3]) ? dram_q[51] : 1'bz;
assign dbus[52] = (xd_oe[52]) ? xd_out[52] : (dram_oe[3]) ? dram_q[52] : 1'bz;
assign dbus[53] = (xd_oe[53]) ? xd_out[53] : (dram_oe[3]) ? dram_q[53] : 1'bz;
assign dbus[54] = (xd_oe[54]) ? xd_out[54] : (dram_oe[3]) ? dram_q[54] : 1'bz;
assign dbus[55] = (xd_oe[55]) ? xd_out[55] : (dram_oe[3]) ? dram_q[55] : 1'bz;
assign dbus[56] = (xd_oe[56]) ? xd_out[56] : (dram_oe[3]) ? dram_q[56] : 1'bz;
assign dbus[57] = (xd_oe[57]) ? xd_out[57] : (dram_oe[3]) ? dram_q[57] : 1'bz;
assign dbus[58] = (xd_oe[58]) ? xd_out[58] : (dram_oe[3]) ? dram_q[58] : 1'bz;
assign dbus[59] = (xd_oe[59]) ? xd_out[59] : (dram_oe[3]) ? dram_q[59] : 1'bz;
assign dbus[60] = (xd_oe[60]) ? xd_out[60] : (dram_oe[3]) ? dram_q[60] : 1'bz;
assign dbus[61] = (xd_oe[61]) ? xd_out[61] : (dram_oe[3]) ? dram_q[61] : 1'bz;
assign dbus[62] = (xd_oe[62]) ? xd_out[62] : (dram_oe[3]) ? dram_q[62] : 1'bz;
assign dbus[63] = (xd_oe[63]) ? xd_out[63] : (dram_oe[3]) ? dram_q[63] : 1'bz;


assign xd_in[0:63] = dbus[0:63];
assign j_xd_in[0:31] = { dbus[0:15], j_xd_out[16:31] };

// TOM-specific tristates

// assign xfc[0:2] = { j68_fc[0], j68_fc[1], j68_fc[2] };
assign xfc_in = 3'b101; // See below
// Wire-ORed with pullup (?)
assign xba_in = xba_oe ? xba_out : 1'b1;
// Wire-ORed with pullup (?)
assign xbrl_in = xbrl_oe ? xbrl_out : 1'b1;

assign xhs_in = xhs_out;
assign xvs_in = xvs_out;

// Latching of memory configuration register on startup
assign xma_in[0] = (xma_oe[0]) ? xma_out[0] : 1'b1; // ROMHI
assign xma_in[1] = (xma_oe[1]) ? xma_out[1] : 1'b0; // ROMWID0
assign xma_in[2] = (xma_oe[2]) ? xma_out[2] : 1'b0; // ROMWID0
assign xma_in[3] = (xma_oe[3]) ? xma_out[3] : 1'b0;
assign xma_in[4] = (xma_oe[4]) ? xma_out[4] : 1'b0; // NOCPU (?)
assign xma_in[5] = (xma_oe[5]) ? xma_out[5] : 1'b0;
assign xma_in[6] = (xma_oe[6]) ? xma_out[6] : 1'b1; // BIGEND
assign xma_in[7] = (xma_oe[7]) ? xma_out[7] : 1'b0; // EXTCLK
assign xma_in[8] = (xma_oe[8]) ? xma_out[8] : 1'b1; // 68K (?)
assign xma_in[9] = (xma_oe[9]) ? xma_out[9] : 1'b0;
assign xma_in[10] = (xma_oe[10]) ? xma_out[10] : 1'b0;

// JERRY-specific tristates

assign j_xjoy_in[0] = (j_xjoy_oe[0]) ? j_xjoy_out[0] : 1'b1;
assign j_xjoy_in[1] = (j_xjoy_oe[1]) ? j_xjoy_out[1] : 1'b1;
assign j_xjoy_in[2] = (j_xjoy_oe[2]) ? j_xjoy_out[2] : 1'b1;
assign j_xjoy_in[3] = (j_xjoy_oe[3]) ? j_xjoy_out[3] : 1'b1;

assign j_xgpiol_in[0] = (j_xgpiol_oe[0]) ? j_xgpiol_out[0] : 1'b1;
assign j_xgpiol_in[1] = (j_xgpiol_oe[1]) ? j_xgpiol_out[1] : 1'b1;
assign j_xgpiol_in[2] = (j_xgpiol_oe[2]) ? j_xgpiol_out[2] : 1'b1;
assign j_xgpiol_in[3] = (j_xgpiol_oe[3]) ? j_xgpiol_out[3] : 1'b1;

assign j_xsck_in = j_xsck_oe ? j_xsck_out : 1'b1;
assign j_xws_in = j_xws_oe ? j_xws_out : 1'b1;
assign j_xvclk_in = j_xvclk_oe ? j_xvclk_out : 1'b1;


// JOYSTICK INTERFACE
assign joy[0] = ee_do;
assign joy[1:15] = 15'b111111111111111;
assign b[0:3] = 4'b1111;
assign b[4] = 1'b1;		// 0=PAL, 1=NTSC
assign b[5] = 1'b1;		// 256 (number of columns of the DRAM)
assign b[6] = 1'b1;		// Unused open
assign b[7] = 1'b0;		// Unused short

always @(posedge sys_clk)
begin
	u374_clk_prev <= j_xjoy_in[2];
	if (~u374_clk_prev & j_xjoy_in[2]) begin
		// $display("JOY LATCH %x", dbus[0:7]);
		u374_reg[0:7] <= dbus[0:7];
	end
end

assign joy_bus[0:7] = (~j_xjoy_in[0]) ? joy[0:7] : (~j_xjoy_in[1]) ? b[0:7] : (~j_xjoy_in[3]) ? u374_reg[0:7] : 8'b11111111;
assign joy_bus[8:15] = (~j_xjoy_in[0]) ? joy[8:15] : 8'b11111111;

assign joy_bus_oe = (~j_xjoy_in[0] | ~j_xjoy_in[1] | ~j_xjoy_in[3]);

// EEPROM INTERFACE
// Weird, but I don't see how it could work otherwise...
assign ee_cs = j_xgpiol_in[1];
assign ee_sk = j_xgpiol_in[0];
assign ee_di = dbus[0];

eeprom eeprom_inst
(
	.sys_clk(sys_clk),
	.cs(ee_cs),
	.sk(ee_sk),
	.din(ee_di),
	.dout(ee_do)
);

////////////////////////////////////////////////////////////////////////////////

// J68 interface
assign j68_rst = ~xresetl;
assign j68_clk = xpclk;

// assign j68_ipl_n = 3'b111;
assign j68_ipl_n = { 1'b1, xintl, 1'b1 };

// assign j68_ipl_n = 3'b111;
assign j68_ipl_n = { 1'b1, xintl, 1'b1 };

assign j68_data_ack = ~xdtackl & xba_in;
/*reg dtack = 1'b0;
reg dtackack = 1'b1;
wire j68rq;

assign j68rq = j68_rd_ena | j68_wr_ena;
assign j68_data_ack = dtack;

always @(posedge sys_clk)
begin
	if (j68rq & (~xdtackl & xba_in) & dtackack) begin
		// Previous dtack deasserted by the Jag, new one is asserted
		dtack <= 1'b1;
		dtackack <= 1'b0;
	end else if (~j68rq & dtack & ~dtackack) begin
		// J68 acknoweledged the dtack, waiting for the Jag to deassert dtack
		dtack <= 1'b0;
	end else if (~dtackack & ~(~xdtackl & xba_in)) begin
		// Jag deasserted dtack
		dtackack <= 1'b1;
	end
end*/

// --- assign xdreql_in = xdreql_oe ? xdreql_out : ~(j68_rd_ena | j68_wr_ena);

assign j68_rd_data[15:0] = { 
	dbus[15], dbus[14], dbus[13], dbus[12],
	dbus[11], dbus[10], dbus[9], dbus[8],
	dbus[7], dbus[6], dbus[5], dbus[4],
	dbus[3], dbus[2], dbus[1], dbus[0]
};

// 68k function code seems only used to check interrupt acknowledgment
//
// From ABUS.NET
// Intd0 :=	ND6 (intd0,dreqin,fc[0..2],ainen,m68k);
// Intd1 :=	ND2 (intd1,fcl[0],not68k);
// Intd :=		ND2 (intd,intd0,intd1);
// Intas :=	FD1Q (ouracki,intd,clk);
// Notourack :=	IVM (notourack,ouracki);
// Ourack :=	IVH (ourack,notourack);
// 
// "ourack" is the key signal here.
//
// The Jaguar chipset asserts the vector address on FC=111,
// unfortunately it doesn't seem properly handled by the J68,
// or there may be something I haven't found out yet.
// There seems to be only one interrupt vector used
// for all interrupt sources of the Jaguar chipset.
// Its location is $100, which corresponds to User Interrupt 0.
// Below is a quick hack to set up $100-$102 when the J68 fetchs
// the interrupt vector corresponding to Level 2 Interrupt Autovector

assign j68_address_final = 
	( (j68_fc ==  3'b111) & (j68_address[23:2] == { 20'h00006, 2'b10 }) ) ?
		{ 20'h00010, 2'b00, j68_address[1:0] }
	:
		j68_address[23:0];



// OS ROM
assign os_rom_a[16:0] = { 
	abus[16], 
	abus[15], abus[14], abus[13], abus[12],
	abus[11], abus[10], abus[9], abus[8],
	abus[7], abus[6], abus[5], abus[4],
	abus[3], xmaska[2], xmaska[1], xmaska[0]
}; 
assign os_rom_ce_n = xromcsl[0];
assign os_rom_oe_n = xoel[0];

// CART
assign cart_a[23:0] = { 
	abus[23], abus[22], abus[21], abus[20], 
	abus[19], abus[18], abus[17], abus[16], 
	abus[15], abus[14], abus[13], abus[12],
	abus[11], abus[10], abus[9], abus[8],
	abus[7], abus[6], abus[5], abus[4],
	abus[3], xmaska[2], xmaska[1], xmaska[0]
}; 
assign cart_ce_n = xromcsl[1];
assign cart_oe_n[0] = xoel[0];
assign cart_oe_n[1] = xoel[1];

// TOM
tom tom_inst
(
	.xbgl(xbgl),
	.xdbrl_0(xdbrl[0]),
	.xdbrl_1(xdbrl[1]),
	.xlp(xlp),
	.xdint(xdint),
	.xtest(xtest),
	.xpclk(xpclk),
	.xvclk(xvclk),
	.xwaitl(xwaitl),
	.xresetl(xresetl),
	.xd_0_out(xd_out[0]),
	.xd_0_oe(xd_oe[0]),
	.xd_0_in(xd_in[0]),
	.xd_1_out(xd_out[1]),
	.xd_1_oe(xd_oe[1]),
	.xd_1_in(xd_in[1]),
	.xd_2_out(xd_out[2]),
	.xd_2_oe(xd_oe[2]),
	.xd_2_in(xd_in[2]),
	.xd_3_out(xd_out[3]),
	.xd_3_oe(xd_oe[3]),
	.xd_3_in(xd_in[3]),
	.xd_4_out(xd_out[4]),
	.xd_4_oe(xd_oe[4]),
	.xd_4_in(xd_in[4]),
	.xd_5_out(xd_out[5]),
	.xd_5_oe(xd_oe[5]),
	.xd_5_in(xd_in[5]),
	.xd_6_out(xd_out[6]),
	.xd_6_oe(xd_oe[6]),
	.xd_6_in(xd_in[6]),
	.xd_7_out(xd_out[7]),
	.xd_7_oe(xd_oe[7]),
	.xd_7_in(xd_in[7]),
	.xd_8_out(xd_out[8]),
	.xd_8_oe(xd_oe[8]),
	.xd_8_in(xd_in[8]),
	.xd_9_out(xd_out[9]),
	.xd_9_oe(xd_oe[9]),
	.xd_9_in(xd_in[9]),
	.xd_10_out(xd_out[10]),
	.xd_10_oe(xd_oe[10]),
	.xd_10_in(xd_in[10]),
	.xd_11_out(xd_out[11]),
	.xd_11_oe(xd_oe[11]),
	.xd_11_in(xd_in[11]),
	.xd_12_out(xd_out[12]),
	.xd_12_oe(xd_oe[12]),
	.xd_12_in(xd_in[12]),
	.xd_13_out(xd_out[13]),
	.xd_13_oe(xd_oe[13]),
	.xd_13_in(xd_in[13]),
	.xd_14_out(xd_out[14]),
	.xd_14_oe(xd_oe[14]),
	.xd_14_in(xd_in[14]),
	.xd_15_out(xd_out[15]),
	.xd_15_oe(xd_oe[15]),
	.xd_15_in(xd_in[15]),
	.xd_16_out(xd_out[16]),
	.xd_16_oe(xd_oe[16]),
	.xd_16_in(xd_in[16]),
	.xd_17_out(xd_out[17]),
	.xd_17_oe(xd_oe[17]),
	.xd_17_in(xd_in[17]),
	.xd_18_out(xd_out[18]),
	.xd_18_oe(xd_oe[18]),
	.xd_18_in(xd_in[18]),
	.xd_19_out(xd_out[19]),
	.xd_19_oe(xd_oe[19]),
	.xd_19_in(xd_in[19]),
	.xd_20_out(xd_out[20]),
	.xd_20_oe(xd_oe[20]),
	.xd_20_in(xd_in[20]),
	.xd_21_out(xd_out[21]),
	.xd_21_oe(xd_oe[21]),
	.xd_21_in(xd_in[21]),
	.xd_22_out(xd_out[22]),
	.xd_22_oe(xd_oe[22]),
	.xd_22_in(xd_in[22]),
	.xd_23_out(xd_out[23]),
	.xd_23_oe(xd_oe[23]),
	.xd_23_in(xd_in[23]),
	.xd_24_out(xd_out[24]),
	.xd_24_oe(xd_oe[24]),
	.xd_24_in(xd_in[24]),
	.xd_25_out(xd_out[25]),
	.xd_25_oe(xd_oe[25]),
	.xd_25_in(xd_in[25]),
	.xd_26_out(xd_out[26]),
	.xd_26_oe(xd_oe[26]),
	.xd_26_in(xd_in[26]),
	.xd_27_out(xd_out[27]),
	.xd_27_oe(xd_oe[27]),
	.xd_27_in(xd_in[27]),
	.xd_28_out(xd_out[28]),
	.xd_28_oe(xd_oe[28]),
	.xd_28_in(xd_in[28]),
	.xd_29_out(xd_out[29]),
	.xd_29_oe(xd_oe[29]),
	.xd_29_in(xd_in[29]),
	.xd_30_out(xd_out[30]),
	.xd_30_oe(xd_oe[30]),
	.xd_30_in(xd_in[30]),
	.xd_31_out(xd_out[31]),
	.xd_31_oe(xd_oe[31]),
	.xd_31_in(xd_in[31]),
	.xd_32_out(xd_out[32]),
	.xd_32_oe(xd_oe[32]),
	.xd_32_in(xd_in[32]),
	.xd_33_out(xd_out[33]),
	.xd_33_oe(xd_oe[33]),
	.xd_33_in(xd_in[33]),
	.xd_34_out(xd_out[34]),
	.xd_34_oe(xd_oe[34]),
	.xd_34_in(xd_in[34]),
	.xd_35_out(xd_out[35]),
	.xd_35_oe(xd_oe[35]),
	.xd_35_in(xd_in[35]),
	.xd_36_out(xd_out[36]),
	.xd_36_oe(xd_oe[36]),
	.xd_36_in(xd_in[36]),
	.xd_37_out(xd_out[37]),
	.xd_37_oe(xd_oe[37]),
	.xd_37_in(xd_in[37]),
	.xd_38_out(xd_out[38]),
	.xd_38_oe(xd_oe[38]),
	.xd_38_in(xd_in[38]),
	.xd_39_out(xd_out[39]),
	.xd_39_oe(xd_oe[39]),
	.xd_39_in(xd_in[39]),
	.xd_40_out(xd_out[40]),
	.xd_40_oe(xd_oe[40]),
	.xd_40_in(xd_in[40]),
	.xd_41_out(xd_out[41]),
	.xd_41_oe(xd_oe[41]),
	.xd_41_in(xd_in[41]),
	.xd_42_out(xd_out[42]),
	.xd_42_oe(xd_oe[42]),
	.xd_42_in(xd_in[42]),
	.xd_43_out(xd_out[43]),
	.xd_43_oe(xd_oe[43]),
	.xd_43_in(xd_in[43]),
	.xd_44_out(xd_out[44]),
	.xd_44_oe(xd_oe[44]),
	.xd_44_in(xd_in[44]),
	.xd_45_out(xd_out[45]),
	.xd_45_oe(xd_oe[45]),
	.xd_45_in(xd_in[45]),
	.xd_46_out(xd_out[46]),
	.xd_46_oe(xd_oe[46]),
	.xd_46_in(xd_in[46]),
	.xd_47_out(xd_out[47]),
	.xd_47_oe(xd_oe[47]),
	.xd_47_in(xd_in[47]),
	.xd_48_out(xd_out[48]),
	.xd_48_oe(xd_oe[48]),
	.xd_48_in(xd_in[48]),
	.xd_49_out(xd_out[49]),
	.xd_49_oe(xd_oe[49]),
	.xd_49_in(xd_in[49]),
	.xd_50_out(xd_out[50]),
	.xd_50_oe(xd_oe[50]),
	.xd_50_in(xd_in[50]),
	.xd_51_out(xd_out[51]),
	.xd_51_oe(xd_oe[51]),
	.xd_51_in(xd_in[51]),
	.xd_52_out(xd_out[52]),
	.xd_52_oe(xd_oe[52]),
	.xd_52_in(xd_in[52]),
	.xd_53_out(xd_out[53]),
	.xd_53_oe(xd_oe[53]),
	.xd_53_in(xd_in[53]),
	.xd_54_out(xd_out[54]),
	.xd_54_oe(xd_oe[54]),
	.xd_54_in(xd_in[54]),
	.xd_55_out(xd_out[55]),
	.xd_55_oe(xd_oe[55]),
	.xd_55_in(xd_in[55]),
	.xd_56_out(xd_out[56]),
	.xd_56_oe(xd_oe[56]),
	.xd_56_in(xd_in[56]),
	.xd_57_out(xd_out[57]),
	.xd_57_oe(xd_oe[57]),
	.xd_57_in(xd_in[57]),
	.xd_58_out(xd_out[58]),
	.xd_58_oe(xd_oe[58]),
	.xd_58_in(xd_in[58]),
	.xd_59_out(xd_out[59]),
	.xd_59_oe(xd_oe[59]),
	.xd_59_in(xd_in[59]),
	.xd_60_out(xd_out[60]),
	.xd_60_oe(xd_oe[60]),
	.xd_60_in(xd_in[60]),
	.xd_61_out(xd_out[61]),
	.xd_61_oe(xd_oe[61]),
	.xd_61_in(xd_in[61]),
	.xd_62_out(xd_out[62]),
	.xd_62_oe(xd_oe[62]),
	.xd_62_in(xd_in[62]),
	.xd_63_out(xd_out[63]),
	.xd_63_oe(xd_oe[63]),
	.xd_63_in(xd_in[63]),
	.xa_0_out(xa_out[0]),
	.xa_0_oe(xa_oe[0]),
	.xa_0_in(xa_in[0]),
	.xa_1_out(xa_out[1]),
	.xa_1_oe(xa_oe[1]),
	.xa_1_in(xa_in[1]),
	.xa_2_out(xa_out[2]),
	.xa_2_oe(xa_oe[2]),
	.xa_2_in(xa_in[2]),
	.xa_3_out(xa_out[3]),
	.xa_3_oe(xa_oe[3]),
	.xa_3_in(xa_in[3]),
	.xa_4_out(xa_out[4]),
	.xa_4_oe(xa_oe[4]),
	.xa_4_in(xa_in[4]),
	.xa_5_out(xa_out[5]),
	.xa_5_oe(xa_oe[5]),
	.xa_5_in(xa_in[5]),
	.xa_6_out(xa_out[6]),
	.xa_6_oe(xa_oe[6]),
	.xa_6_in(xa_in[6]),
	.xa_7_out(xa_out[7]),
	.xa_7_oe(xa_oe[7]),
	.xa_7_in(xa_in[7]),
	.xa_8_out(xa_out[8]),
	.xa_8_oe(xa_oe[8]),
	.xa_8_in(xa_in[8]),
	.xa_9_out(xa_out[9]),
	.xa_9_oe(xa_oe[9]),
	.xa_9_in(xa_in[9]),
	.xa_10_out(xa_out[10]),
	.xa_10_oe(xa_oe[10]),
	.xa_10_in(xa_in[10]),
	.xa_11_out(xa_out[11]),
	.xa_11_oe(xa_oe[11]),
	.xa_11_in(xa_in[11]),
	.xa_12_out(xa_out[12]),
	.xa_12_oe(xa_oe[12]),
	.xa_12_in(xa_in[12]),
	.xa_13_out(xa_out[13]),
	.xa_13_oe(xa_oe[13]),
	.xa_13_in(xa_in[13]),
	.xa_14_out(xa_out[14]),
	.xa_14_oe(xa_oe[14]),
	.xa_14_in(xa_in[14]),
	.xa_15_out(xa_out[15]),
	.xa_15_oe(xa_oe[15]),
	.xa_15_in(xa_in[15]),
	.xa_16_out(xa_out[16]),
	.xa_16_oe(xa_oe[16]),
	.xa_16_in(xa_in[16]),
	.xa_17_out(xa_out[17]),
	.xa_17_oe(xa_oe[17]),
	.xa_17_in(xa_in[17]),
	.xa_18_out(xa_out[18]),
	.xa_18_oe(xa_oe[18]),
	.xa_18_in(xa_in[18]),
	.xa_19_out(xa_out[19]),
	.xa_19_oe(xa_oe[19]),
	.xa_19_in(xa_in[19]),
	.xa_20_out(xa_out[20]),
	.xa_20_oe(xa_oe[20]),
	.xa_20_in(xa_in[20]),
	.xa_21_out(xa_out[21]),
	.xa_21_oe(xa_oe[21]),
	.xa_21_in(xa_in[21]),
	.xa_22_out(xa_out[22]),
	.xa_22_oe(xa_oe[22]),
	.xa_22_in(xa_in[22]),
	.xa_23_out(xa_out[23]),
	.xa_23_oe(xa_oe[23]),
	.xa_23_in(xa_in[23]),
	.xma_0_out(xma_out[0]),
	.xma_0_oe(xma_oe[0]),
	.xma_0_in(xma_in[0]),
	.xma_1_out(xma_out[1]),
	.xma_1_oe(xma_oe[1]),
	.xma_1_in(xma_in[1]),
	.xma_2_out(xma_out[2]),
	.xma_2_oe(xma_oe[2]),
	.xma_2_in(xma_in[2]),
	.xma_3_out(xma_out[3]),
	.xma_3_oe(xma_oe[3]),
	.xma_3_in(xma_in[3]),
	.xma_4_out(xma_out[4]),
	.xma_4_oe(xma_oe[4]),
	.xma_4_in(xma_in[4]),
	.xma_5_out(xma_out[5]),
	.xma_5_oe(xma_oe[5]),
	.xma_5_in(xma_in[5]),
	.xma_6_out(xma_out[6]),
	.xma_6_oe(xma_oe[6]),
	.xma_6_in(xma_in[6]),
	.xma_7_out(xma_out[7]),
	.xma_7_oe(xma_oe[7]),
	.xma_7_in(xma_in[7]),
	.xma_8_out(xma_out[8]),
	.xma_8_oe(xma_oe[8]),
	.xma_8_in(xma_in[8]),
	.xma_9_out(xma_out[9]),
	.xma_9_oe(xma_oe[9]),
	.xma_9_in(xma_in[9]),
	.xma_10_out(xma_out[10]),
	.xma_10_oe(xma_oe[10]),
	.xma_10_in(xma_in[10]),
	.xhs_out(xhs_out),
	.xhs_oe(xhs_oe),
	.xhs_in(xhs_in),
	.xvs_out(xvs_out),
	.xvs_oe(xvs_oe),
	.xvs_in(xvs_in),
	.xsiz_0_out(xsiz_out[0]),
	.xsiz_0_oe(xsiz_oe[0]),
	.xsiz_0_in(xsiz_in[0]),
	.xsiz_1_out(xsiz_out[1]),
	.xsiz_1_oe(xsiz_oe[1]),
	.xsiz_1_in(xsiz_in[1]),
	.xfc_0_out(xfc_out[0]),
	.xfc_0_oe(xfc_oe[0]),
	.xfc_0_in(xfc_in[0]),
	.xfc_1_out(xfc_out[1]),
	.xfc_1_oe(xfc_oe[1]),
	.xfc_1_in(xfc_in[1]),
	.xfc_2_out(xfc_out[2]),
	.xfc_2_oe(xfc_oe[2]),
	.xfc_2_in(xfc_in[2]),
	.xrw_out(xrw_out),
	.xrw_oe(xrw_oe),
	.xrw_in(xrw_in),
	.xdreql_out(xdreql_out),
	.xdreql_oe(xdreql_oe),
	.xdreql_in(xdreql_in),
	.xba_out(xba_out),
	.xba_oe(xba_oe),
	.xba_in(xba_in),
	.xbrl_out(xbrl_out),
	.xbrl_oe(xbrl_oe),
	.xbrl_in(xbrl_in),
	.xr_0(xr[0]),
	.xr_1(xr[1]),
	.xr_2(xr[2]),
	.xr_3(xr[3]),
	.xr_4(xr[4]),
	.xr_5(xr[5]),
	.xr_6(xr[6]),
	.xr_7(xr[7]),
	.xg_0(xg[0]),
	.xg_1(xg[1]),
	.xg_2(xg[2]),
	.xg_3(xg[3]),
	.xg_4(xg[4]),
	.xg_5(xg[5]),
	.xg_6(xg[6]),
	.xg_7(xg[7]),
	.xb_0(xb[0]),
	.xb_1(xb[1]),
	.xb_2(xb[2]),
	.xb_3(xb[3]),
	.xb_4(xb[4]),
	.xb_5(xb[5]),
	.xb_6(xb[6]),
	.xb_7(xb[7]),
	.xinc(xinc),
	.xoel_0(xoel[0]),
	.xoel_1(xoel[1]),
	.xoel_2(xoel[2]),
	.xmaska_0(xmaska[0]),
	.xmaska_1(xmaska[1]),
	.xmaska_2(xmaska[2]),
	.xromcsl_0(xromcsl[0]),
	.xromcsl_1(xromcsl[1]),
	.xcasl_0(xcasl[0]),
	.xcasl_1(xcasl[1]),
	.xdbgl(xdbgl),
	.xexpl(xexpl),
	.xdspcsl(xdspcsl),
	.xwel_0(xwel[0]),
	.xwel_1(xwel[1]),
	.xwel_2(xwel[2]),
	.xwel_3(xwel[3]),
	.xwel_4(xwel[4]),
	.xwel_5(xwel[5]),
	.xwel_6(xwel[6]),
	.xwel_7(xwel[7]),
	.xrasl_0(xrasl[0]),
	.xrasl_1(xrasl[1]),
	.xdtackl(xdtackl),
	.xintl(xintl),
	.hs_o(hs_o),
	.hhs_o(hhs_o),
	.vs_o(vs_o),
	.refreq(refreq),
	.obbreq(obbreq),
	.bbreq_0(bbreq[0]),
	.bbreq_1(bbreq[1]),
	.gbreq_0(gbreq[0]),
	.gbreq_1(gbreq[1]),
	.dram(fdram), // /!\
	.blank(blank),
	.tlw(tlw),
	.sys_clk(sys_clk)
);

j_jerry jerry_inst
(
	.xdspcsl(j_xdspcsl),
	.xpclkosc(j_xpclkosc),
	.xpclkin(j_xpclkin),
	.xdbgl(j_xdbgl),
	.xoel_0(j_xoel_0),
	.xwel_0(j_xwel_0),
	.xserin(j_xserin),
	.xdtackl(j_xdtackl),
	.xi2srxd(j_xi2srxd),
	.xeint_0(j_xeint[0]),
	.xeint_1(j_xeint[1]),
	.xtest(j_xtest),
	.xchrin(j_xchrin),
	.xresetil(j_xresetil),
	.xd_0_out(j_xd_out[0]),
	.xd_0_oe(j_xd_oe[0]),
	.xd_0_in(j_xd_in[0]),
	.xd_1_out(j_xd_out[1]),
	.xd_1_oe(j_xd_oe[1]),
	.xd_1_in(j_xd_in[1]),
	.xd_2_out(j_xd_out[2]),
	.xd_2_oe(j_xd_oe[2]),
	.xd_2_in(j_xd_in[2]),
	.xd_3_out(j_xd_out[3]),
	.xd_3_oe(j_xd_oe[3]),
	.xd_3_in(j_xd_in[3]),
	.xd_4_out(j_xd_out[4]),
	.xd_4_oe(j_xd_oe[4]),
	.xd_4_in(j_xd_in[4]),
	.xd_5_out(j_xd_out[5]),
	.xd_5_oe(j_xd_oe[5]),
	.xd_5_in(j_xd_in[5]),
	.xd_6_out(j_xd_out[6]),
	.xd_6_oe(j_xd_oe[6]),
	.xd_6_in(j_xd_in[6]),
	.xd_7_out(j_xd_out[7]),
	.xd_7_oe(j_xd_oe[7]),
	.xd_7_in(j_xd_in[7]),
	.xd_8_out(j_xd_out[8]),
	.xd_8_oe(j_xd_oe[8]),
	.xd_8_in(j_xd_in[8]),
	.xd_9_out(j_xd_out[9]),
	.xd_9_oe(j_xd_oe[9]),
	.xd_9_in(j_xd_in[9]),
	.xd_10_out(j_xd_out[10]),
	.xd_10_oe(j_xd_oe[10]),
	.xd_10_in(j_xd_in[10]),
	.xd_11_out(j_xd_out[11]),
	.xd_11_oe(j_xd_oe[11]),
	.xd_11_in(j_xd_in[11]),
	.xd_12_out(j_xd_out[12]),
	.xd_12_oe(j_xd_oe[12]),
	.xd_12_in(j_xd_in[12]),
	.xd_13_out(j_xd_out[13]),
	.xd_13_oe(j_xd_oe[13]),
	.xd_13_in(j_xd_in[13]),
	.xd_14_out(j_xd_out[14]),
	.xd_14_oe(j_xd_oe[14]),
	.xd_14_in(j_xd_in[14]),
	.xd_15_out(j_xd_out[15]),
	.xd_15_oe(j_xd_oe[15]),
	.xd_15_in(j_xd_in[15]),
	.xd_16_out(j_xd_out[16]),
	.xd_16_oe(j_xd_oe[16]),
	.xd_16_in(j_xd_in[16]),
	.xd_17_out(j_xd_out[17]),
	.xd_17_oe(j_xd_oe[17]),
	.xd_17_in(j_xd_in[17]),
	.xd_18_out(j_xd_out[18]),
	.xd_18_oe(j_xd_oe[18]),
	.xd_18_in(j_xd_in[18]),
	.xd_19_out(j_xd_out[19]),
	.xd_19_oe(j_xd_oe[19]),
	.xd_19_in(j_xd_in[19]),
	.xd_20_out(j_xd_out[20]),
	.xd_20_oe(j_xd_oe[20]),
	.xd_20_in(j_xd_in[20]),
	.xd_21_out(j_xd_out[21]),
	.xd_21_oe(j_xd_oe[21]),
	.xd_21_in(j_xd_in[21]),
	.xd_22_out(j_xd_out[22]),
	.xd_22_oe(j_xd_oe[22]),
	.xd_22_in(j_xd_in[22]),
	.xd_23_out(j_xd_out[23]),
	.xd_23_oe(j_xd_oe[23]),
	.xd_23_in(j_xd_in[23]),
	.xd_24_out(j_xd_out[24]),
	.xd_24_oe(j_xd_oe[24]),
	.xd_24_in(j_xd_in[24]),
	.xd_25_out(j_xd_out[25]),
	.xd_25_oe(j_xd_oe[25]),
	.xd_25_in(j_xd_in[25]),
	.xd_26_out(j_xd_out[26]),
	.xd_26_oe(j_xd_oe[26]),
	.xd_26_in(j_xd_in[26]),
	.xd_27_out(j_xd_out[27]),
	.xd_27_oe(j_xd_oe[27]),
	.xd_27_in(j_xd_in[27]),
	.xd_28_out(j_xd_out[28]),
	.xd_28_oe(j_xd_oe[28]),
	.xd_28_in(j_xd_in[28]),
	.xd_29_out(j_xd_out[29]),
	.xd_29_oe(j_xd_oe[29]),
	.xd_29_in(j_xd_in[29]),
	.xd_30_out(j_xd_out[30]),
	.xd_30_oe(j_xd_oe[30]),
	.xd_30_in(j_xd_in[30]),
	.xd_31_out(j_xd_out[31]),
	.xd_31_oe(j_xd_oe[31]),
	.xd_31_in(j_xd_in[31]),
	.xa_0_out(j_xa_out[0]),
	.xa_0_oe(j_xa_oe[0]),
	.xa_0_in(j_xa_in[0]),
	.xa_1_out(j_xa_out[1]),
	.xa_1_oe(j_xa_oe[1]),
	.xa_1_in(j_xa_in[1]),
	.xa_2_out(j_xa_out[2]),
	.xa_2_oe(j_xa_oe[2]),
	.xa_2_in(j_xa_in[2]),
	.xa_3_out(j_xa_out[3]),
	.xa_3_oe(j_xa_oe[3]),
	.xa_3_in(j_xa_in[3]),
	.xa_4_out(j_xa_out[4]),
	.xa_4_oe(j_xa_oe[4]),
	.xa_4_in(j_xa_in[4]),
	.xa_5_out(j_xa_out[5]),
	.xa_5_oe(j_xa_oe[5]),
	.xa_5_in(j_xa_in[5]),
	.xa_6_out(j_xa_out[6]),
	.xa_6_oe(j_xa_oe[6]),
	.xa_6_in(j_xa_in[6]),
	.xa_7_out(j_xa_out[7]),
	.xa_7_oe(j_xa_oe[7]),
	.xa_7_in(j_xa_in[7]),
	.xa_8_out(j_xa_out[8]),
	.xa_8_oe(j_xa_oe[8]),
	.xa_8_in(j_xa_in[8]),
	.xa_9_out(j_xa_out[9]),
	.xa_9_oe(j_xa_oe[9]),
	.xa_9_in(j_xa_in[9]),
	.xa_10_out(j_xa_out[10]),
	.xa_10_oe(j_xa_oe[10]),
	.xa_10_in(j_xa_in[10]),
	.xa_11_out(j_xa_out[11]),
	.xa_11_oe(j_xa_oe[11]),
	.xa_11_in(j_xa_in[11]),
	.xa_12_out(j_xa_out[12]),
	.xa_12_oe(j_xa_oe[12]),
	.xa_12_in(j_xa_in[12]),
	.xa_13_out(j_xa_out[13]),
	.xa_13_oe(j_xa_oe[13]),
	.xa_13_in(j_xa_in[13]),
	.xa_14_out(j_xa_out[14]),
	.xa_14_oe(j_xa_oe[14]),
	.xa_14_in(j_xa_in[14]),
	.xa_15_out(j_xa_out[15]),
	.xa_15_oe(j_xa_oe[15]),
	.xa_15_in(j_xa_in[15]),
	.xa_16_out(j_xa_out[16]),
	.xa_16_oe(j_xa_oe[16]),
	.xa_16_in(j_xa_in[16]),
	.xa_17_out(j_xa_out[17]),
	.xa_17_oe(j_xa_oe[17]),
	.xa_17_in(j_xa_in[17]),
	.xa_18_out(j_xa_out[18]),
	.xa_18_oe(j_xa_oe[18]),
	.xa_18_in(j_xa_in[18]),
	.xa_19_out(j_xa_out[19]),
	.xa_19_oe(j_xa_oe[19]),
	.xa_19_in(j_xa_in[19]),
	.xa_20_out(j_xa_out[20]),
	.xa_20_oe(j_xa_oe[20]),
	.xa_20_in(j_xa_in[20]),
	.xa_21_out(j_xa_out[21]),
	.xa_21_oe(j_xa_oe[21]),
	.xa_21_in(j_xa_in[21]),
	.xa_22_out(j_xa_out[22]),
	.xa_22_oe(j_xa_oe[22]),
	.xa_22_in(j_xa_in[22]),
	.xa_23_out(j_xa_out[23]),
	.xa_23_oe(j_xa_oe[23]),
	.xa_23_in(j_xa_in[23]),
	.xjoy_0_out(j_xjoy_out[0]),
	.xjoy_0_oe(j_xjoy_oe[0]),
	.xjoy_0_in(j_xjoy_in[0]),
	.xjoy_1_out(j_xjoy_out[1]),
	.xjoy_1_oe(j_xjoy_oe[1]),
	.xjoy_1_in(j_xjoy_in[1]),
	.xjoy_2_out(j_xjoy_out[2]),
	.xjoy_2_oe(j_xjoy_oe[2]),
	.xjoy_2_in(j_xjoy_in[2]),
	.xjoy_3_out(j_xjoy_out[3]),
	.xjoy_3_oe(j_xjoy_oe[3]),
	.xjoy_3_in(j_xjoy_in[3]),
	.xgpiol_0_out(j_xgpiol_out[0]),
	.xgpiol_0_oe(j_xgpiol_oe[0]),
	.xgpiol_0_in(j_xgpiol_in[0]),
	.xgpiol_1_out(j_xgpiol_out[1]),
	.xgpiol_1_oe(j_xgpiol_oe[1]),
	.xgpiol_1_in(j_xgpiol_in[1]),
	.xgpiol_2_out(j_xgpiol_out[2]),
	.xgpiol_2_oe(j_xgpiol_oe[2]),
	.xgpiol_2_in(j_xgpiol_in[2]),
	.xgpiol_3_out(j_xgpiol_out[3]),
	.xgpiol_3_oe(j_xgpiol_oe[3]),
	.xgpiol_3_in(j_xgpiol_in[3]),
	.xsck_out(j_xsck_out),
	.xsck_oe(j_xsck_oe),
	.xsck_in(j_xsck_in),
	.xws_out(j_xws_out),
	.xws_oe(j_xws_oe),
	.xws_in(j_xws_in),
	.xvclk_out(j_xvclk_out),
	.xvclk_oe(j_xvclk_oe),
	.xvclk_in(j_xvclk_in),
	.xsiz_0_out(j_xsiz_out[0]),
	.xsiz_0_oe(j_xsiz_oe[0]),
	.xsiz_0_in(j_xsiz_in[0]),
	.xsiz_1_out(j_xsiz_out[1]),
	.xsiz_1_oe(j_xsiz_oe[1]),
	.xsiz_1_in(j_xsiz_in[1]),
	.xrw_out(j_xrw_out),
	.xrw_oe(j_xrw_oe),
	.xrw_in(j_xrw_in),
	.xdreql_out(j_xdreql_out),
	.xdreql_oe(j_xdreql_oe),
	.xdreql_in(j_xdreql_in),
	.xdbrl_0(j_xdbrl[0]),
	.xdbrl_1(j_xdbrl[1]),
	.xint(j_xint),
	.xserout(j_xserout),
	.xgpiol_4(j_xgpiol_4),
	.xgpiol_5(j_xgpiol_5),
	.xvclkdiv(j_xvclkdiv),
	.xchrdiv(j_xchrdiv),
	.xpclkout(j_xpclkout),
	.xpclkdiv(j_xpclkdiv),
	.xresetl(j_xresetl),
	.xchrout(j_xchrout),
	.xrdac_0(j_xrdac[0]),
	.xrdac_1(j_xrdac[1]),
	.xldac_0(j_xldac[0]),
	.xldac_1(j_xldac[1]),
	.xiordl(j_xiordl),
	.xiowrl(j_xiowrl),
	.xi2stxd(j_xi2stxd),
	.xcpuclk(j_xcpuclk),
	.tlw(tlw),
	.sys_clk(sys_clk)
);

  wire [3:0]  w_dbg_reg_addr;
  wire [3:0]  w_dbg_reg_wren;
  wire [15:0] w_dbg_reg_data;
  wire [15:0] w_dbg_sr_reg;
  wire [31:0] w_dbg_pc_reg;
  wire [31:0] w_dbg_usp_reg;
  wire [31:0] w_dbg_ssp_reg;
  wire [31:0] w_dbg_cycles;
  wire        w_dbg_ifetch;

// `ifdef verilator3
  assign DBG_CPU_RDEN  = j68_rd_ena;
  assign DBG_CPU_WREN  = j68_wr_ena;
  assign DBG_CPU_DTACK = j68_data_ack;
  assign DBG_CPU_BENA  = j68_byte_ena;
  assign DBG_CPU_ADDR  = j68_address;
  assign DBG_CPU_RDATA = j68_rd_data;
  assign DBG_CPU_WDATA = j68_wr_data;
  assign DBG_REG_ADDR  = w_dbg_reg_addr; 
  assign DBG_REG_WREN  = w_dbg_reg_wren; 
  assign DBG_REG_DATA  = w_dbg_reg_data; 
  assign DBG_SR_REG    = w_dbg_sr_reg; 
  assign DBG_PC_REG    = w_dbg_pc_reg; 
  assign DBG_USP_REG   = w_dbg_usp_reg; 
  assign DBG_SSP_REG   = w_dbg_ssp_reg; 
  assign DBG_CYCLES    = w_dbg_cycles; 
  assign DBG_IFETCH    = w_dbg_ifetch; 
// `endif


j68 j68_inst
(
	.rst(j68_rst),
	.clk(j68_clk),
	.rd_ena(j68_rd_ena),
	.wr_ena(j68_wr_ena),
	.data_ack(j68_data_ack),
	.byte_ena(j68_byte_ena),
	.address(j68_address),
	.rd_data(j68_rd_data),
	.wr_data(j68_wr_data),
	.fc(j68_fc),
	.ipl_n(j68_ipl_n),
	
  .dbg_reg_addr(w_dbg_reg_addr),
  .dbg_reg_wren(w_dbg_reg_wren),
  .dbg_reg_data(w_dbg_reg_data),
  .dbg_sr_reg(w_dbg_sr_reg),
  .dbg_pc_reg(w_dbg_pc_reg),
  .dbg_usp_reg(w_dbg_usp_reg),
  .dbg_ssp_reg(w_dbg_ssp_reg),
  .dbg_vbr_reg(),
  .dbg_cycles(w_dbg_cycles),
  .dbg_ifetch(w_dbg_ifetch),
	.dbg_irq_lvl()
);

// `ifndef verilator3
// os_rom os_rom_inst
// (
	// .a(os_rom_a),
	// .ce_n(os_rom_ce_n),
	// .oe_n(os_rom_oe_n),
	// .q(os_rom_q),
	// .oe(os_rom_oe)
// );
// `endif

assign dram_a = xma_in[0:9];
assign dram_ras_n = xrasl[0];
assign dram_cas_n = xcasl[0];
assign dram_uw_n = {xwel[1], xwel[3], xwel[5], xwel[7]};
assign dram_lw_n = {xwel[0], xwel[2], xwel[4], xwel[6]};
assign dram_oe_n = {xoel[0], xoel[1], xoel[2], xoel[2]}; // /!\
assign dram_d = dbus; // xd_in;

// `ifndef verilator3
// dram dram_inst
// (
	// .a(dram_a),
	// .ras_n(dram_ras_n),
	// .cas_n(dram_cas_n),
	// .uw_n(dram_uw_n),
	// .lw_n(dram_lw_n),
	// .oe_n(dram_oe_n),
	// .d(dram_d),
	// .q(dram_q),
	// .oe(dram_oe),
	// .sys_clk(sys_clk)
// );
// `endif

vgalb vgalb0
(
	.q(lb0_q),
	.d(lb_d),
	.we(lb0_we),
	.a(lb0_a),
	.sys_clk(sys_clk)
);

vgalb vgalb1
(
	.q(lb1_q),
	.d(lb_d),
	.we(lb1_we),
	.a(lb1_a),
	.sys_clk(sys_clk)
);

// vc even : vga read lb1, jag write lb0

assign vga_r = (vc[0] == 1'b0) ? lb1_q[23:16] : lb0_q[23:16];
assign vga_g = (vc[0] == 1'b0) ? lb1_q[15:8] : lb0_q[15:8];
assign vga_b = (vc[0] == 1'b0) ? lb1_q[7:0] : lb0_q[7:0];

assign lb_d = (~blank) ? { 
	xr[7], xr[6], xr[5], xr[4], xr[3], xr[2], xr[1], xr[0],
	xg[7], xg[6], xg[5], xg[4], xg[3], xg[2], xg[1], xg[0],
	xb[7], xb[6], xb[5], xb[4], xb[3], xb[2], xb[1], xb[0]
} : 24'hFF0000;

assign lb0_a = (vc[0] == 1'b0) ? hc[11:2] : vga_hc[10:1];
// assign lb0_we = (vc[0] == 1'b0) ? 1'b1 : 1'b0;
assign lb0_we = (vc[0] == 1'b0) ? hc[1] : 1'b0;

assign lb1_a = (vc[0] == 1'b0) ? vga_hc[10:1] : hc[11:2];
// assign lb1_we = (vc[0] == 1'b0) ? 1'b0 : 1'b1; 
assign lb1_we = (vc[0] == 1'b0) ? 1'b0 : hc[1]; 

always @(posedge sys_clk)
begin
	hs_o_prev <= hs_o;
	hhs_o_prev <= hhs_o;
	vs_o_prev <= vs_o;
	
	if (xresetl == 1'b0) begin
		vc <= 16'h0000;
		hc <= 16'h0000;
		vga_hc <= 16'h0000;
	end else begin
		if (vs_o == 1'b1) begin
			vc <= 16'h0000;
		end else if ( (hs_o_prev == 1'b0) & (hs_o == 1'b1) ) begin
			vc <= vc + 1;
		end
		
		if (hs_o == 1'b1) begin
			hc <= 16'h0000;
		end else begin
			hc <= hc + 1;
		end

		if (hhs_o == 1'b1) begin
			vga_hc <= 16'h0000;
		end else begin
			vga_hc <= vga_hc + 1;
		end

	end
end

assign vga_hs_n = (vga_hc < 192) ? 1'b0 : 1'b1;
assign vga_vs_n = (vc < 2) ? 1'b0 : 1'b1;


endmodule

///////////////////////////////////////////////////////////////////////
`ifdef SIMULATION
module os_rom
(
	input 	[16:0]	a,
	input						ce_n,
	input						oe_n,
	output	[7:0]		q,
	output					oe
);

reg	[7:0]	rom_blk [0:(1<<17)-1];
// reg	[7:0] r_q;

initial
begin
	$readmemh("os.mem", rom_blk);
end

// assign q = (ce_n | oe_n) ? 8'bzzzzzzzz : r_q;
// assign q = r_q;
assign oe = (~ce_n & ~oe_n);
assign q = rom_blk[a][7:0];

endmodule
`endif
///////////////////////////////////////////////////////////////////////


`ifdef SIMULATION
module dram
(
	input		[0:9] 	a,
	input						ras_n,
	input						cas_n,
	input		[0:3]		oe_n,
	input		[0:3]		uw_n,
	input		[0:3]		lw_n,
	output	[0:63]	q,
	input		[0:63]	d,
	output	[0:3]		oe,
	input sys_clk
);

reg [0:63] ram_blk[0:(1<<18)-1];

wire [9:0] a_r;
reg [17:0] ea;

wire [0:3] w_oe;

reg ras_n_prev = 1'b0;
reg cas_n_prev = 1'b0;

wire [63:0] d_r;

initial
begin
	$readmemb("dram.mem", ram_blk);
end

assign a_r = { a[9], a[8], a[7], a[6], a[5], a[4], a[3], a[2], a[1], a[0] };
assign d_r[63:0] = { 
	d[63], d[62], d[61], d[60], d[59], d[58], d[57], d[56], 
	d[55], d[54], d[53], d[52], d[51], d[50], d[49], d[48], 
	d[47], d[46], d[45], d[44], d[43], d[42], d[41], d[40], 
	d[39], d[38], d[37], d[36], d[35], d[34], d[33], d[32], 
	d[31], d[30], d[29], d[28], d[27], d[26], d[25], d[24], 
	d[23], d[22], d[21], d[20], d[19], d[18], d[17], d[16], 
	d[15], d[14], d[13], d[12], d[11], d[10], d[9], d[8], 
	d[7], d[6], d[5], d[4], d[3], d[2], d[1], d[0]
};

always @(posedge sys_clk)
begin
	ras_n_prev <= ras_n;
	cas_n_prev <= cas_n;
	if (ras_n_prev & ~ras_n) begin
		ea[17:8] <= a_r[9:0];
		$display("RAS ma=%x ma_r=%x", a, a_r );
	end
	if (cas_n_prev & ~cas_n) begin
		ea[7:0] <= a_r[7:0];
		$display("  CAS ma=%x ma_r=%x", a, a_r );
		if (~uw_n[0]) begin
			ram_blk[ { ea[17:8], a_r[7:0] } ][8:15] <= d[8:15];
			$display("  DRAM WR %x #%x", { ea[17:8], a_r[7:0], 3'b110 }, d_r[15:8] );
		end
		if (~lw_n[0]) begin
			ram_blk[ { ea[17:8], a_r[7:0] } ][0:7] <= d[0:7];
			$display("  DRAM WR %x #%x", { ea[17:8], a_r[7:0], 3'b111 }, d_r[7:0] );
		end	
		if (~uw_n[1]) begin
			ram_blk[ { ea[17:8], a_r[7:0] } ][24:31] <= d[24:31];
			$display("  DRAM WR %x #%x", { ea[17:8], a_r[7:0], 3'b100 }, d_r[31:24]);
		end
		if (~lw_n[1]) begin
			ram_blk[ { ea[17:8], a_r[7:0] } ][16:23] <= d[16:23];
			$display("  DRAM WR %x #%x", { ea[17:8], a_r[7:0], 3'b101 }, d_r[23:16] );
		end	
		if (~uw_n[2]) begin
			ram_blk[ { ea[17:8], a_r[7:0] } ][40:47] <= d[40:47];
			$display("  DRAM WR %x #%x", { ea[17:8], a_r[7:0], 3'b010 }, d_r[47:40] );
		end
		if (~lw_n[2]) begin
			ram_blk[ { ea[17:8], a_r[7:0] } ][32:39] <= d[32:39];
			$display("  DRAM WR %x #%x", { ea[17:8], a_r[7:0], 3'b011 }, d_r[39:32] );			
		end	
		if (~uw_n[3]) begin
			ram_blk[ { ea[17:8], a_r[7:0] } ][56:63] <= d[56:63];
			$display("  DRAM WR %x #%x", { ea[17:8], a_r[7:0], 3'b000 }, d_r[63:56] );
		end
		if (~lw_n[3]) begin
			ram_blk[ { ea[17:8], a_r[7:0] } ][48:55] <= d[48:55];
			$display("  DRAM WR %x #%x", { ea[17:8], a_r[7:0], 3'b001 }, d_r[55:48] );
		end
	end	
end

assign oe = w_oe;
assign w_oe[0] = (~oe_n[0] & ~cas_n & (uw_n[0] | lw_n[0]));
assign w_oe[1] = (~oe_n[1] & ~cas_n & (uw_n[1] | lw_n[1]));
assign w_oe[2] = (~oe_n[2] & ~cas_n & (uw_n[2] | lw_n[2]));
assign w_oe[3] = (~oe_n[3] & ~cas_n & (uw_n[3] | lw_n[3]));

assign q = ram_blk[ ea ][0:63];

endmodule
`endif

module eeprom
(
	input sys_clk,
	input cs,
	input	sk,
	input din,
	output dout
);
`define EE_IDLE		3'b000
`define EE_DATA		3'b001
`define EE_READ		3'b010

`define EE_WR_BEGIN		3'b100
`define EE_WR_WRITE		3'b101
`define EE_WR_LOOP		3'b110
`define EE_WR_END			3'b111



reg sk_prev = 1'b0;

reg [15:0]	mem[0:(1<<6)-1];

reg					ewen = 1'b0;

reg [2:0]		status = `EE_IDLE;

reg [3:0]		cnt = 4'd0;			// Bit counter
reg [8:0] 	ir = 9'd0;			// Instruction Register
reg [15:0]	dr = 16'd0;			// Data Register
reg 				r_dout = 1'b0;	// Data Out

assign dout = r_dout;

reg [5:0]		wraddr = 6'b000000;
reg	[15:0]	wrdata = 16'hFFFF;
reg					wrloop = 1'b0;

always @(posedge sys_clk)
begin
	sk_prev <= sk;
	if (~cs) begin
		// "Reset"
		$display("EEPROM CS LOW");
		status <= `EE_IDLE;
		cnt <= 4'd0;
		ir <= 9'd0;
		dr <= 16'd0;
		r_dout <= 1'b0;
		
		wraddr <= 6'b000000;
		wrdata <= 16'hFFFF;
		wrloop <= 1'b0;
		
	end else if (~sk_prev & sk) begin
		$display("EEPROM SK - DI=%x STATUS=%x", din, status);
		if (status == `EE_IDLE) begin
			ir <= { ir[7:0], din };
			if (ir[7]) begin // Instruction complete
				$display("EEPROM OPCODE=%x", { ir[6:0], din }); 
				if (ir[6:5] == 2'b10) begin
					// READ
					$display("EEPROM OP=READ $%x #%x", { ir[4:0], din }, mem[{ ir[4:0], din }][15:0]);
					dr[15:0] <= mem[{ ir[4:0], din }][15:0];
					r_dout <= 1'b0; // Dummy bit
					status <= `EE_READ;
				end else if (ir[6:3] == 4'b0011) begin
					// EWEN
					$display("EEPROM OP=EWEN");
					ewen <= 1'b1;
					status <= `EE_IDLE;
				end else if (ir[6:5] == 2'b11) begin
					// ERASE
					$display("EEPROM OP=ERASE");
					status <= `EE_WR_BEGIN;
				end else if (ir[6:5] == 2'b01) begin
					// WRITE
					$display("EEPROM OP=WRITE");
					status <= `EE_DATA;
				end else if (ir[6:3] == 4'b0010) begin
					// ERAL
					$display("EEPROM OP=ERAL");
					status <= `EE_WR_BEGIN;
				end else if (ir[6:3] == 4'b0001) begin
					// WRAL
					$display("EEPROM OP=WRAL");
					status <= `EE_DATA;
				end else if (ir[6:3] == 4'b0000) begin
					// EWEN
					$display("EEPROM OP=EWDS");
					ewen <= 1'b0;
					status <= `EE_IDLE;					
				end
			end // Instruction complete
		end else if (status == `EE_DATA) begin
			dr <= { dr[14:0], din };
			cnt <= cnt + 1;
			if (cnt == 4'b1111) begin
				$display("EEPROM DATA=%x", { dr[14:0], din });
				status <= `EE_WR_BEGIN;
			end
		end else if (status == `EE_READ) begin
			r_dout <= dr[15];
			dr <= { dr[14:0], 1'b0 };
		end
	end else if (status[2]) begin	// Internal processing (writes)

		if (status == `EE_WR_BEGIN) begin
			r_dout <= 1'b0;	// Busy
			status <= `EE_WR_WRITE;
			if (ir[7:6] == 2'b11) begin
				// ERASE
				wraddr <= ir[5:0];
				wrloop <= 1'b0;
				wrdata <= 16'hFFFF;
			end else if (ir[7:6] == 2'b01) begin
				// WRITE
				wraddr <= ir[5:0];
				wrloop <= 1'b0;
				wrdata <= dr;
			end else if (ir[7:4] == 4'b0010) begin
				// ERAL
				wraddr <= 6'b000000;
				wrloop <= 1'b1;
				wrdata <= 16'hFFFF;
			end else if (ir[7:4] == 4'b0001) begin
				// WRAL
				wraddr <= 6'b000000;
				wrloop <= 1'b1;
				wrdata <= dr;				
			end
		end else if (status == `EE_WR_WRITE) begin
			if (ewen) begin
				mem[ wraddr ] <= wrdata;
				$display("EEPROM WRITE $%x #%x", wraddr, wrdata);
			end
			status <= `EE_WR_LOOP;
		end else if (status == `EE_WR_LOOP) begin
			if (~wrloop) begin
				status <= `EE_WR_END;
			end else begin
				wraddr <= wraddr + 1;
				if (wraddr == 6'b111111) begin
					status <= `EE_WR_END;
				end else begin
					status <= `EE_WR_WRITE;
				end
			end
		end else if (status == `EE_WR_END) begin
			r_dout <= 1'b1;	// Ready
			status <= `EE_IDLE;
		end

	end

end

endmodule

/* verilator lint_on LITENDIAN */
