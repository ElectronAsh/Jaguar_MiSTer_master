#include "verilated.h"
#include "cart.h"
#include <stdlib.h>
#include <stdio.h>
#include <time.h>

// Constructor
CART::CART(int w, bool debug, int size)
{
		int n;
		
		dbg = debug;
		width = w;
		mem_array = new vluint8_t[size];
    
    // fill the arrays with random numbers
    srand (time (NULL));
		for(n = 0; n < size; n++) {
        mem_array[n] = (vluint8_t)0xFF; //rand() & 0xFF;
		}
}

// Destructor
CART::~CART()
{
    // free the memory
		delete mem_array;
}

// Binary file loading
void CART::load(const char *name, vluint32_t begin, vluint32_t end)
{
    FILE *fh;
    vluint8_t b[1];
		
		vluint32_t addr = begin;
		
    fh = fopen(name, "rb");
    if (fh)
    {
			while(addr < end) {
				b[0] = 0xFF;
				fread(b, 1, 1, fh);
				mem_array[addr] = b[0];
				addr += 1;
			}
			fclose(fh);
    }
    else
    {
      printf("Cannot load binary file \"%s\" !!\n", name);
    }
}

// Cycle evaluate
void CART::eval
(
    vluint64_t cycle,

    vluint8_t clk,
		
    vluint8_t ce_n,
    vluint8_t oe_n,

    vluint32_t a,

    vluint32_t &q,
		vluint8_t &oe )
{	
	if (!clk) return;
	
	a &= 0x7fffff;
	
	q = 0;
	switch(width) {
		case 1:	// 16 bits
			a &= ~1;
			q = (mem_array[a] << 8) | mem_array[a + 1];
			break;
		case 2: // 32 bits
			a &= ~3;
			q = (mem_array[a] << 24) | (mem_array[a + 1] << 16)
				| (mem_array[a + 2] << 8) | (mem_array[a + 3] << 0);
			break;
		default:
			q = mem_array[a];
	}
	
	oe = (!ce_n && !(oe_n & 1)) ? 1 : 0;
	oe |= (!ce_n && !(oe_n & 2)) ? 2 : 0;
}
