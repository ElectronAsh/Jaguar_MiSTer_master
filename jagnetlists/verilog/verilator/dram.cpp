#include "verilated.h"
#include "dram.h"
#include <stdlib.h>
#include <stdio.h>
#include <time.h>

// Constructor
DRAM::DRAM(bool debug, int size)
{
		int s = size >> 3;
		int n;
		
		cas_n_prev = (vluint8_t)0;
		ras_n_prev = (vluint8_t)0;
		ea = 0;
		dbg = debug;
		
    // one array per byte lane
		for(n = 0; n < 8; n++) {
			mem_array[n] = new vluint8_t[s];
		}
    
    // fill the arrays with random numbers
    srand (time (NULL));
		for(n = 0; n < 8; n++) {
			for (int i = 0; i < s; i++) {
        mem_array[n][i] = (vluint8_t)0; //rand() & 0xFF;
			}
		}
		
		
}

// Destructor
DRAM::~DRAM()
{
		int n;
    // free the memory
		for(n = 0; n < 8; n++) {
			delete mem_array[n];
		}
}

// Binary file loading
void DRAM::load(const char *name, vluint32_t begin, vluint32_t end)
{
    FILE *fh;
    vluint8_t b[8];
		int k;
		
		vluint32_t addr = begin;
		
    fh = fopen(name, "rb");
    if (fh)
    {
			while(addr < end) {
				for(k = 0; k < 8; k++) {
					b[k] = 0;
				}
				fread(b, 1, 8, fh);
				for(k = 0; k < 8; k++) {
					// mem_array[k][addr >> 3] = b[7 - (k^1)] /*b[7-k]*/;
					mem_array[k][addr >> 3] = b[k];
				}
				if (dbg & (addr < begin + 8*8)) {
					printf("%06X: %02X %02X %02X %02X %02X %02X %02X %02X\n", addr >> 3,
						mem_array[0][addr >> 3], mem_array[1][addr >> 3],
						mem_array[2][addr >> 3], mem_array[3][addr >> 3],
						mem_array[4][addr >> 3], mem_array[5][addr >> 3],
						mem_array[6][addr >> 3], mem_array[7][addr >> 3]);
				}
				addr += 8;
			}
			fclose(fh);
    }
    else
    {
      printf("Cannot load binary file \"%s\" !!\n", name);
    }
}

// Cycle evaluate
void DRAM::eval
(
    vluint64_t cycle,

    vluint8_t clk,

    vluint8_t ras_n,
    vluint8_t cas_n,

    vluint8_t oe_n,
    vluint8_t uw_n,
		vluint8_t lw_n,

    vluint16_t a,

    vluint64_t d,
    vluint64_t &q,
		vluint8_t &oe )
{
	int k;
	vluint64_t q_r, d_r;
	
	if (!clk) return;
	
	if (!ras_n && ras_n_prev) {
		ea = 0;
		for(k = 0; k < 10; k++)
			ea |= ((a >> (9 - k)) & 1) << (k + 8);
		if (dbg) printf("DRAM RAS ma=%x ea=%x\n", a, (ea << 3));
	} else if (!cas_n && cas_n_prev) {
		ea &= ~0xff;
		for(k = 0; k < 8; k++)
			ea |= ((a >> (9 - k)) & 1) << (k);
		if (dbg) printf("DRAM  CAS ma=%x ea=%x\n", a, (ea << 3));
	}
	
	if (!cas_n && cas_n_prev) {
		if ((~uw_n & 0xf) | (~lw_n & 0xf)) {
			// U3 L3 U2 L2 U1 L1 U0 L0
		
			d_r = 0;
			for (k = 0; k < 64; k++)
				d_r |= (vluint64_t)(((vluint64_t)d >> (63 - k)) & 1) << k;
			
			if (dbg) printf("DRAM   WR %06X uw_n=%X lw_n=%X %016llX R=%016llX", ea << 3, uw_n, lw_n, d, d_r);
			if (~lw_n & 8) {
				mem_array[7][ea] = (vluint8_t)((d_r >> (0*8)) & 0xff);
				if (dbg) printf(" L0=%02X", mem_array[7][ea]);
			}
			if (~uw_n & 8) {
				mem_array[6][ea] = (vluint8_t)((d_r >> (1*8)) & 0xff);
				if (dbg) printf(" U0=%02X", mem_array[6][ea]);
			}
			if (~lw_n & 4) {
				mem_array[5][ea] = (vluint8_t)((d_r >> (2*8)) & 0xff);
				if (dbg) printf(" L1=%02X", mem_array[5][ea]);
			}
			if (~uw_n & 4) {
				mem_array[4][ea] = (vluint8_t)((d_r >> (3*8)) & 0xff);
				if (dbg) printf(" U1=%02X", mem_array[4][ea]);
			}
			if (~lw_n & 2) {
				mem_array[3][ea] = (vluint8_t)((d_r >> (4*8)) & 0xff);
				if (dbg) printf(" L2=%02X", mem_array[3][ea]);
			}
			if (~uw_n & 2) {
				mem_array[2][ea] = (vluint8_t)((d_r >> (5*8)) & 0xff);
				if (dbg) printf(" U2=%02X", mem_array[2][ea]);
			}
			if (~lw_n & 1) {
				mem_array[1][ea] = (vluint8_t)((d_r >> (6*8)) & 0xff);
				if (dbg) printf(" L3=%02X", mem_array[1][ea]);
			}
			if (~uw_n & 1) {
				mem_array[0][ea] = (vluint8_t)((d_r >> (7*8)) & 0xff);
				if (dbg) printf(" U3=%02X", mem_array[0][ea]);
			}
			if (dbg) printf("\n");
		}
		
		q = 0; q_r = 0;
		
		if (~oe_n & 0xf) {
			/*for (k = 0; k < 64; k++)
				q |= (vluint64_t)(((mem_array[(7 - (k >> 3)) ^ 1][ea]) >> (7-(k&0x7))) & 1) << k;
			for (k = 0; k < 64; k++)
				q_r |= (vluint64_t)(((vluint64_t)q >> (63 - k)) & 1) << k;*/
			for(k = 0; k < 8; k++)
				q_r = (q_r << 8) | mem_array[k][ea];
			for (k = 0; k < 64; k++)
				q |= (vluint64_t)(((vluint64_t)q_r >> (63 - k)) & 1) << k;

			if (dbg) printf("DRAM   RD %06X oe_n=%X %016llX R=%016llX\n", (ea << 3), oe_n, q, q_r);
		}
	}
	
	// printf("Q=%ullx\n", q);
	oe = 0;
	for(k = 0; k < 4; k++)
		oe |= ((~oe_n & (1<<k)) && !cas_n) ? (1<<k) : 0;
	/*if (oe) {
		printf("oe=%x rd=%llx rd_r=%x%x%x%x%x%x%x%x\n", oe, q, 
			mem_array[0][ea], mem_array[1][ea], mem_array[2][ea], mem_array[3][ea],
			mem_array[4][ea], mem_array[5][ea], mem_array[6][ea], mem_array[7][ea]);
	}*/
	
	
	ras_n_prev = ras_n;
	cas_n_prev = cas_n;
	
}
