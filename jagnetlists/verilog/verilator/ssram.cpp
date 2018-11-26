#include "verilated.h"
#include "ssram.h"
#include <stdlib.h>
#include <stdio.h>
#include <time.h>

// Constructor
SSRAM::SSRAM(bool debug, int size)
{		
		ea = 0;
		ram_q = 0;
		ram_q_dly = 0;
		dbg = debug;
		
		mem_array = new vluint8_t[size];
    
		// fill the arrays with random numbers
    srand (time (NULL));
		for (int i = 0; i < size; i++) {
			mem_array[i] = (vluint8_t)0; //rand() & 0xFF;
		}
}

// Destructor
SSRAM::~SSRAM()
{
			delete mem_array;
}

// Binary file loading
void SSRAM::load(const char *name, vluint32_t begin, vluint32_t end)
{
    FILE *fh;
		vluint32_t size;
		fh = fopen(name, "rb");
    if (fh)
    {
			size = fread(mem_array + begin, 1, end - begin, fh);
			printf("Loaded %ld bytes from \"%s\"\n", size, name);
			fclose(fh);
    }
    else
    {
      printf("Cannot load binary file \"%s\" !!\n", name);
    }		
    /*FILE *fh;
    vluint8_t b[1];
		
		vluint32_t addr = begin;
		
    fh = fopen(name, "rb");
    if (fh)
    {
			while(addr < end) {
				if (!fread(b, 1, 1, fh))
					break;
				mem_array[addr] = b[0];
				addr += 1;
			}
			fclose(fh);
    }
    else
    {
      printf("Cannot load binary file \"%s\" !!\n", name);
    }*/
}

// Cycle evaluate
void SSRAM::eval
(
    vluint64_t cycle,

    vluint8_t clk,

    vluint8_t ce_n,
    vluint8_t oe_n,

    vluint8_t bwe_n,
    vluint8_t adsc_n,
		vluint8_t adsp_n,
		vluint8_t adv_n,

    vluint32_t a,
		vluint8_t be_n,

    vluint32_t d,
    vluint32_t &q )
{
	if (!clk) return;
	
	ram_q_dly = ram_q;
	ram_q = ((vluint32_t)mem_array[ea] << 24)
		| ((vluint32_t)mem_array[ea + 1] << 16)
		| ((vluint32_t)mem_array[ea + 2] << 8)
		| ((vluint32_t)mem_array[ea + 3] << 0);
	
	if (!ce_n && (!adsp_n || !adsc_n))
		ea = a & 0x1ffff8;
	if (!adv_n)
		ea |= 4;
	
	if (!bwe_n) {
		if (!(be_n & 1)) {
			mem_array[ea + 3] = (d >> 0) & 0xff;
			if (dbg)
				printf("SSRAM WR %06X [      %02X]\n", ea, mem_array[ea + 3]);
		}
		if (!(be_n & 2)) {
			mem_array[ea + 2] = (d >> 8) & 0xff;
			if (dbg)
				printf("SSRAM WR %06X [    %02X  ]\n", ea, mem_array[ea + 2]);
		}
		if (!(be_n & 4)) {
			mem_array[ea + 1] = (d >> 16) & 0xff;
			if (dbg)
				printf("SSRAM WR %06X [  %02X    ]\n", ea, mem_array[ea + 1]);
		}
		if (!(be_n & 8)) {
			mem_array[ea + 0] = (d >> 24) & 0xff;
			if (dbg)
				printf("SSRAM WR %06X [%02X      ]\n", ea, mem_array[ea + 0]);			
		}
	}
	
	if (oe_n) {
		q = d;
	} else {
		q = ram_q_dly;
		if (dbg)
			printf("SSRAM RD %06X [%08X]\n", ea, q);
	}
}
