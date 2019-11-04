//#include "Vjag_s2.h"
#include "Vemu.h"

#include "verilated.h"
#include "vga_out.h"
#include "bios.h"
#include "ssram.h"
#include "trace_68k.h"

#if VM_TRACE
#include "verilated_vcd_c.h"
#endif

// #define HALF_PER_PS 4500
// #define HALF_PER_PS 9400
// #define HALF_PER_PS 4700
#define HALF_PER_PS 6250
// Number of simulation cycles
//                                 ns
// #define NUM_CYCLES  ((vluint64_t)1599000000 * (vluint64_t)500 / (vluint64_t)HALF_PER_PS)
#define NUM_MS 5
#define LOG_START_MS 0
#define LOG_EVERY_MS 1

// #define CYCLES_PER_VCD ((vluint64_t)10000000 * (vluint64_t)500 / (vluint64_t)HALF_PER_PS)
#define HCYCLES_PER_MS ((vluint64_t)1000000 * (vluint64_t)1000 / (vluint64_t)HALF_PER_PS)

unsigned int osrom_size = 1024*128;	// 128KB.
uint8_t *osrom_ptr = (uint8_t *) malloc(osrom_size);


unsigned int rom_size = 1024*2048;	// 2MBytes (16-bit wide).
//unsigned int rom_size = 1024*4096;	// 4MBytes (16-bit wide).
uint16_t *rom_ptr = (uint16_t *) malloc(rom_size);

unsigned int ram_size = 1024*4096*4;	// 4MBytes. (64-bit wide).
uint64_t *ram_ptr = (uint64_t *) malloc(ram_size);


int main_time = 0;


int main(int argc, char **argv, char **env)
{
	unsigned int file_size;
	unsigned int cart_file_size;
	
	// Half cycles
	vluint64_t hcycle = 0;
	vluint64_t hc;
	int ms;
	
	// VGA output
	int vga_clk;
	int vga_hs;
	int vga_vs;
	int vga_r;
	int vga_g;
	int vga_b;
	
	int sys_clk;
	
	vluint8_t bios_clk;
	vluint8_t bios_ce_n;
	vluint8_t bios_oe_n;
	vluint32_t bios_a;
	vluint8_t bios_q;
	vluint8_t bios_oe;
	
	vluint8_t ssram_clk;
	vluint8_t ssram_ce_n;
	vluint8_t ssram_oe_n;

	vluint8_t ssram_bwe_n;
	vluint8_t ssram_adsc_n;
	vluint8_t ssram_adsp_n;
	vluint8_t ssram_adv_n;

	vluint32_t ssram_a;
	vluint8_t ssram_be_n;

	vluint32_t ssram_d;
	vluint32_t ssram_q;
	
	
	vluint8_t flash_clk;
	vluint8_t flash_ce_n;
	vluint8_t flash_oe_n;
	vluint32_t flash_a;
	vluint8_t flash_q;
	vluint8_t flash_oe;
	
	Verilated::commandArgs(argc, argv);
	// Init top verilog instance
	//Vjag_s2* top = new Vjag_s2;
	Vemu* top = new Vemu;
  
  /*
  	FILE *osromfile;
	osromfile = fopen("os_cart_fastrom.bin","r");
	if (osromfile!=NULL) {
		printf("\nOS ROM file loaded OK.\n");
	}
	else {
		printf("\nOS ROM file not found!\n");
		return 0;
	};
	fseek(osromfile, 0L, SEEK_END);
	file_size = ftell(osromfile);
	fseek(osromfile, 0L, SEEK_SET);
	fread(osrom_ptr, 1, file_size, osromfile);	// Read the whole OS ROM file into RAM.
  */
  
  	FILE *romfile;
	romfile = fopen("tempest.bin","r");
	//romfile = fopen("alien.bin","r");
	if (romfile!=NULL) {
		printf("\nCart ROM file loaded OK.\n");
	}
	else {
		printf("\nCart ROM file not found!\n");
		return 0;
	};
	fseek(romfile, 0L, SEEK_END);
	cart_file_size = ftell(romfile);
	fseek(romfile, 0L, SEEK_SET);
	fread(rom_ptr, 1, cart_file_size, romfile);	// Read the whole CART ROM file into RAM.
	
  
  // Init VGA output C++ model
   //VgaOut* vga = new VgaOut(1, 24, HS_POS_POL|VS_POS_POL, 0, 2000, 0, 1000, "snapshot");
	VgaOut* vga = new VgaOut(1, 24, 0, 0, 900, 0, 700, "snapshot");
  //DRAM *dram = new DRAM(1, 0x200000);
	//dram->load("dram.bin", 0x4000, 0x200000);
	//SSRAM *ssram = new SSRAM(0, 0x200000);
	//ssram->load("dram.bin", 0x4000, 0x200000);
	
	BIOS *bios = new BIOS(0, 0x100000);
	//bios->load("os.bin", 0x0, 0x100000);
	//bios->load("os_cart_fastrom.bin", 0x0, 0x100000);
	bios->load("jagboot.rom", 0x0, 0x100000);
	
	//CART *cart = new CART(1 /* 16 bits */, 0, 0x800000);
	//CART *cart = new CART(0, 0, 0x800000);
	//cart->load("cart.bin", 0x0, 0x800000);
	//BIOS *cart = new BIOS(0, 0x800000);
	//cart->load("tempest.bin", 0x0, 0x800000);
  // Init 68000 trace
	//Trace68k* trc = new Trace68k(cart->mem_array, bios->mem_array, ssram->mem_array);

#if VM_TRACE
  // Init VCD trace dump
  Verilated::traceEverOn(true);
  VerilatedVcdC* tfp = new VerilatedVcdC;
  top->trace (tfp, 99);
  tfp->spTrace()->set_time_resolution ("1 ps");
  tfp->open ("verilator_tb.vcd");
  // tfp->openNext();
#endif
  
  // Initialize simulation inputs
	top->CLK_50M = 0;
	//top->SW = 0;

	top->RESET = 1;
	
	sys_clk = 0;
	vga_clk = 0;
	
	int cart_index = 0;
	
	vluint8_t hclkcnt = 0;
	
for(ms = 0; ms < NUM_MS; ms++) {
#if VM_TRACE
	if ((ms % LOG_EVERY_MS) == 0)
		tfp->openNext();
#endif
	//fprintf(stderr, "@%d ms\n", ms);
	//fprintf(stdout, "@%d ms\n", ms);
	printf("@%d ms\n", ms);
	
	bool cart_load_done = 0;
	
	top->DDRAM_DOUT_READY = 0;
	char ram_ready_count = 0;
	
	while (!Verilated::gotFinish()) {
	//while ( main_time < 200 ) {	// Only run for a short time.
		if (main_time < 8) {
			top->RESET = 1;		// Assert reset
		}
		if (main_time == 20) {
			top->RESET = 0;   	// Deassert reset
		}
		
		if ((main_time & 1) == 1) {
			top->CLK_50M = 1;
			//top->pix_clk = 1;       // Toggle clock
			//top->sys_clk = 1;
		}
		if ((main_time & 1) == 0) {
			top->CLK_50M = 0;
			//top->pix_clk = 0;
			//top->sys_clk = 0; 
		  
		// Dump VGA output
		// vga_clk   = top->OSC_CLK0;
		/*if (top->OSC_CLK0)
			vga_clk = vga_clk ^ 1;*/
		vga_vs    = top->VGA_VS;
		vga_hs    = top->VGA_HS;
		vga_r     = top->VGA_R;
		vga_g     = top->VGA_G;
		vga_b     = top->VGA_B;
		vga->eval (hcycle / 2,
				   vga_clk, vga_vs, vga_hs,
				   vga_r, vga_g, vga_b);
			   
		// OS ROM
		bios_clk = sys_clk;
		bios_ce_n = top->os_rom_ce_n;
		bios_oe_n = top->os_rom_oe_n;
		bios_a = top->os_rom_a;
		
		bios->eval( hcycle / 2, bios_clk,
								bios_ce_n, bios_oe_n, bios_a,
								bios_q, bios_oe);
								
		top->os_rom_q = bios_q;
		top->os_rom_oe = bios_oe;
		
		
		//top->os_rom_oe = (!top->os_rom_ce_n && !top->os_rom_oe_n) ? 1 : 0;
		//top->os_rom_q = osrom_ptr[ top->os_rom_a ];
		
/*
	output        DDRAM_CLK,
	input         DDRAM_BUSY,
	output  [7:0] DDRAM_BURSTCNT,
	output [28:0] DDRAM_ADDR,
	input  [63:0] DDRAM_DOUT,
	input         DDRAM_DOUT_READY,
	output        DDRAM_RD,
	output [63:0] DDRAM_DIN,
	output  [7:0] DDRAM_BE,
	output        DDRAM_WE,
	
	input wire        ioctl_download,
	input wire        ioctl_wr,
	//input wire [24:0] ioctl_addr,
	input wire [15:0] ioctl_data,
	input wire  [7:0] ioctl_index,
	output reg         ioctl_wait,
	
	output	[16:0]	os_rom_a,
	output					os_rom_ce_n,
	output					os_rom_oe_n,
	input		[7:0]		os_rom_q,
	input						os_rom_oe,
*/	
	
	if (main_time > 20) {
		top->ioctl_download = 1;
		
		if (cart_index<cart_file_size/2) {
			if (top->ioctl_wait==0 && (main_time&3)==0) {
				
				top->ioctl_index = 1;
				top->ioctl_wr = 1;
				//uint16_t cart_data = rom_ptr[cart_index];
				//top->ioctl_data = (cart_data&0xFF00)>>8 | (cart_data&0x00FF)<<8;	// Byteswap.
					
				top->ioctl_data = rom_ptr[cart_index];
				
				if (top->loader_addr>=0x800000) {
					if ( (top->loader_addr&0xFFFF) == 0) printf("loader_addr: %08x  Cart ROM Data: %04x\n", top->loader_addr, rom_ptr[cart_index]);
					cart_index++;
				}
			}
			else top->ioctl_wr = 0;
			
			if (top->ioctl_wait==1) printf("ioctl_wait!\n");
		}
		else {
			top->ioctl_download = 0;
			top->ioctl_wr = 0;
			top->ioctl_index = 0;
			if (cart_load_done==0) {
				printf("Cart load done!\n");
				cart_load_done = 1;
			}
		}
	}
	
	if (top->cart_a < cart_file_size) top->SDRAM_DQ = rom_ptr[top->cart_a>>1];
	
	uint64_t ramdata;
		
		top->DDRAM_BUSY = 0;

		if (top->DDRAM_WE) {
			ramdata = ram_ptr[top->DDRAM_ADDR];	// Read the existing data from our RAM.
			
			// Check the BE bits, to mask which bytes get written to our RAM value (using the existing data as well).
			bool BE7 = top->DDRAM_BE&0x80;
			bool BE6 = top->DDRAM_BE&0x40;
			bool BE5 = top->DDRAM_BE&0x20;
			bool BE4 = top->DDRAM_BE&0x10;
			bool BE3 = top->DDRAM_BE&0x08;
			bool BE2 = top->DDRAM_BE&0x04;
			bool BE1 = top->DDRAM_BE&0x02;
			bool BE0 = top->DDRAM_BE&0x01;
			if ( BE7 ) ramdata = ramdata&0x00FFFFFFFFFFFFFF | top->DDRAM_DIN&0xFF00000000000000;
			if ( BE6 ) ramdata = ramdata&0xFF00FFFFFFFFFFFF | top->DDRAM_DIN&0x00FF000000000000;
			if ( BE5 ) ramdata = ramdata&0xFFFF00FFFFFFFFFF | top->DDRAM_DIN&0x0000FF0000000000;
			if ( BE4 ) ramdata = ramdata&0xFFFFFF00FFFFFFFF | top->DDRAM_DIN&0x000000FF00000000;
			if ( BE3 ) ramdata = ramdata&0xFFFFFFFF00FFFFFF | top->DDRAM_DIN&0x00000000FF000000;
			if ( BE2 ) ramdata = ramdata&0xFFFFFFFFFF00FFFF | top->DDRAM_DIN&0x0000000000FF0000;
			if ( BE1 ) ramdata = ramdata&0xFFFFFFFFFFFF00FF | top->DDRAM_DIN&0x000000000000FF00;
			if ( BE0 ) ramdata = ramdata&0xFFFFFFFFFFFFFF00 | top->DDRAM_DIN&0x00000000000000FF;
			
			ram_ptr[top->DDRAM_ADDR] = ramdata;	// Write the modifed value back to our RAM!

			//if (cart_load_done == 1) printf("DDR WRITE  BCNT=%d  DDR_ADDR=%08x  BYTE_ADDR=%08x  DOUT=%016lx  BE=%d%d%d%d%d%d%d%d  NEWDATA=%016lx\n", top->DDRAM_BURSTCNT, top->DDRAM_ADDR, top->DDRAM_ADDR<<3, top->DDRAM_DIN, BE7,BE6,BE5,BE4,BE3,BE2,BE1,BE0, ramdata);
		}
		
		if (top->DDRAM_RD) {
			//printf("DDR READ   BCNT=%d  DDR_ADDR=%08x  BYTE_ADDR=%08x  DATA=%016lx\n", top->DDRAM_BURSTCNT, top->DDRAM_ADDR, top->DDRAM_ADDR<<3, ramdata);
			ram_ready_count = 6;	// Simulate the DDR latency. Sort of.
		}
		
		if (ram_ready_count>0) {
			top->DDRAM_DOUT_READY = 0;
			ram_ready_count--;
		}
		else {
			ramdata = ram_ptr[top->DDRAM_ADDR];
			top->DDRAM_DOUT = ramdata;
			top->DDRAM_DOUT_READY = 1;
		}
			
		if (top->cart_oe > 0) {
			//printf("j_xd_in: %08x\n", top->j_xd_in);
			//printf("cart_oe: b%d%d  cart_a: %08x  cart_q: %08x\n", top->cart_oe>>1,top->cart_oe&1, top->cart_a, top->cart_q);
		}
		
		
		
		// SSRAM
		//ssram_clk = top->SSRAM_CLK;
		//ssram_ce_n = top->SSRAM_CE1_n;
		//ssram_oe_n = top->SSRAM_OE_n;

		//ssram_bwe_n = top->SSRAM_BWE_n;
		//ssram_adsc_n = top->SSRAM_ADSC_n;
		//ssram_adsp_n = top->SSRAM_ADSP_n;
		//ssram_adv_n = top->SSRAM_ADV_n;

		//ssram_a = top->SSRAM_ADDR;
		//ssram_be_n = top->SSRAM_BE_n;

		//ssram_d = top->SSRAM_D;
		/*
		ssram->eval( hcycle / 2, ssram_clk, ssram_ce_n, ssram_oe_n,
			ssram_bwe_n, ssram_adsc_n, ssram_adsp_n, ssram_adv_n,
			ssram_a, ssram_be_n, ssram_d, ssram_q );
		*/
		//top->SSRAM_Q = ssram_q;

		// FLASH (Cartridge)
		//flash_clk = /*top->OSC_CLK0;*/ sys_clk;
		/*
		flash_ce_n = top->FLS_CS_n;
		flash_oe_n = top->FLS_OE_n;
		flash_a = top->FE_ADDR;
		
		cart->eval( hcycle / 2, flash_clk,
								flash_ce_n, flash_oe_n, flash_a,
								flash_q, flash_oe);
								
		top->FE_DQ = 0xffffff00 | flash_q;
		*/
		
		// 68000 dissasembly
//    trc->dump (hcycle / 2,        /*top->OSC_CLK0*/ sys_clk,     top->DBG_IFETCH,
//               top->DBG_REG_WREN, top->DBG_REG_ADDR, top->DBG_REG_DATA,
//               top->DBG_SR_REG,   top->DBG_PC_REG,   top->DBG_USP_REG,  top->DBG_SSP_REG);
		
#if VM_TRACE
    // Dump signals into VCD file
    if (tfp) {
			if (ms >= LOG_START_MS) {
				tfp->dump (hcycle * HALF_PER_PS);
			}
		}
#endif
    // Next half cycle
    hcycle++;
		
    //top->SW = (hcycle < (vluint64_t)(120000 / HALF_PER_PS)) ? 0 : 1;

		hclkcnt++;
		// top->OSC_CLK0 = top->OSC_CLK0 ^ 1;
		//top->CLK_50M = hclkcnt & 1;
		sys_clk = (hclkcnt & 1) == 1;
		vga_clk = (hclkcnt % 3) == 2;
		
		//sys_clk = (hclkcnt & 3) == 3;
		//vga_clk = (hclkcnt & 7) == 7;
		
		
	} // if ((main_time & 1) == 0)		
		
		top->eval();            // Evaluate model!
		main_time++;            // Time passes...
		
		if (Verilated::gotFinish())  exit(0);
	} // while ( main_time < 200 ) {
} // ms
	
	  top->final();
	  
	#if VM_TRACE
	  if (tfp) tfp->close();
	#endif

	  exit(0);
}
