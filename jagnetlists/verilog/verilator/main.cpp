#include "Vjag_s2.h"
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
#define NUM_MS 400
#define LOG_START_MS 0
#define LOG_EVERY_MS 1

// #define CYCLES_PER_VCD ((vluint64_t)10000000 * (vluint64_t)500 / (vluint64_t)HALF_PER_PS)
#define HCYCLES_PER_MS ((vluint64_t)1000000 * (vluint64_t)1000 / (vluint64_t)HALF_PER_PS)

int main(int argc, char **argv, char **env)
{
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
  Vjag_s2* top = new Vjag_s2;
  // Init VGA output C++ model
  // VgaOut* vga = new VgaOut(1, 24, HS_POS_POL|VS_POS_POL, 0, 2000, 0, 1000, "snapshot");
	VgaOut* vga = new VgaOut(0, 24, 0, 0, 900, 0, 700, "snapshot");
  //DRAM *dram = new DRAM(1, 0x200000);
	//dram->load("dram.bin", 0x4000, 0x200000);
	SSRAM *ssram = new SSRAM(0, 0x200000);
	ssram->load("dram.bin", 0x4000, 0x200000);
	BIOS *bios = new BIOS(0, 0x100000);
	bios->load("os.bin", 0x0, 0x100000);
	//CART *cart = new CART(1 /* 16 bits */, 0, 0x800000);
	//CART *cart = new CART(0, 0, 0x800000);
	//cart->load("cart.bin", 0x0, 0x800000);
	BIOS *cart = new BIOS(0, 0x800000);
	cart->load("tempest.bin", 0x0, 0x800000);
  // Init 68000 trace
	Trace68k* trc = new Trace68k(cart->mem_array, bios->mem_array, ssram->mem_array);

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
	top->OSC_CLK0 = 1;
	top->SW = 0;

	sys_clk = 0;
	vga_clk = 0;
	
	vluint8_t hclkcnt = 0;
	
for(ms = 0; ms < NUM_MS; ms++) {
#if VM_TRACE
	if ((ms % LOG_EVERY_MS) == 0)
		tfp->openNext();
#endif
	//fprintf(stderr, "@%d ms\n", ms);
	//fprintf(stdout, "@%d ms\n", ms);
	printf("@%d ms\n", ms);
	
  // Run simulation for NUM_CYCLES clock periods
  for (hc = 0; hc < HCYCLES_PER_MS; hc++)
  {
    // Evaluate verilated model		
		top->eval ();
   
    // Dump VGA output
		// vga_clk   = top->OSC_CLK0;
		/*if (top->OSC_CLK0)
			vga_clk = vga_clk ^ 1;*/
		vga_vs    = top->vga_vs_n;
		vga_hs    = top->vga_hs_n;
		vga_r     = top->vga_r;
		vga_g     = top->vga_g;
		vga_b     = top->vga_b;
		vga->eval (hcycle / 2,
				   vga_clk, vga_vs, vga_hs,
				   vga_r, vga_g, vga_b);
			   
		// OS ROM
		bios_clk = /*top->OSC_CLK0;*/ sys_clk;
		bios_ce_n = top->os_rom_ce_n;
		bios_oe_n = top->os_rom_oe_n;
		bios_a = top->os_rom_a;
		
		bios->eval( hcycle / 2, bios_clk,
								bios_ce_n, bios_oe_n, bios_a,
								bios_q, bios_oe);
								
		top->os_rom_q = bios_q;
		top->os_rom_oe = bios_oe;
		
		// SSRAM
		ssram_clk = top->SSRAM_CLK;
		ssram_ce_n = top->SSRAM_CE1_n;
		ssram_oe_n = top->SSRAM_OE_n;

		ssram_bwe_n = top->SSRAM_BWE_n;
		ssram_adsc_n = top->SSRAM_ADSC_n;
		ssram_adsp_n = top->SSRAM_ADSP_n;
		ssram_adv_n = top->SSRAM_ADV_n;

		ssram_a = top->SSRAM_ADDR;
		ssram_be_n = top->SSRAM_BE_n;

		ssram_d = top->SSRAM_D;
	
		ssram->eval( hcycle / 2, ssram_clk, ssram_ce_n, ssram_oe_n,
			ssram_bwe_n, ssram_adsc_n, ssram_adsp_n, ssram_adv_n,
			ssram_a, ssram_be_n, ssram_d, ssram_q );
		
		top->SSRAM_Q = ssram_q;

		// FLASH (Cartridge)
		flash_clk = /*top->OSC_CLK0;*/ sys_clk;
		flash_ce_n = top->FLS_CS_n;
		flash_oe_n = top->FLS_OE_n;
		flash_a = top->FE_ADDR;
		
		cart->eval( hcycle / 2, flash_clk,
								flash_ce_n, flash_oe_n, flash_a,
								flash_q, flash_oe);
								
		top->FE_DQ = 0xffffff00 | flash_q;
		
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
		
    top->SW = (hcycle < (vluint64_t)(120000 / HALF_PER_PS)) ? 0 : 1;

		hclkcnt++;
		// top->OSC_CLK0 = top->OSC_CLK0 ^ 1;
		top->OSC_CLK0 = hclkcnt & 1;
		sys_clk = (hclkcnt & 1) == 1;
		vga_clk = (hclkcnt % 3) == 2;
		
		//sys_clk = (hclkcnt & 3) == 3;
		//vga_clk = (hclkcnt & 7) == 7;
		
    if (Verilated::gotFinish())  exit(0);
  }
} // ms
  top->final();
  
#if VM_TRACE
  if (tfp) tfp->close();
#endif

  exit(0);
}
