#ifndef _DRAM_H_
#define _DRAM_H_

#include "verilated.h"

class DRAM
{
    public:
        // Constructor and destructor
        DRAM(bool debug, int size);
        ~DRAM();
        // Methods
        void load(const char *name, vluint32_t begin,  vluint32_t end);
        void eval(vluint64_t cycle,    vluint8_t clk,    vluint8_t ras_n,
									vluint8_t cas_n,    vluint8_t oe_n,    vluint8_t uw_n,
									vluint8_t lw_n,    vluint16_t a,    vluint64_t d,
									vluint64_t &q,		vluint8_t &oe);
        // Memory array
        vluint8_t *mem_array[8];
    private:
        // Internal variables
				vluint8_t	 	ras_n_prev;
				vluint8_t		cas_n_prev;
				vluint32_t	ea;
				bool				dbg;
};

#endif /* _DRAM_H_ */
