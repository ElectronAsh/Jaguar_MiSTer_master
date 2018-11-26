#ifndef _SSRAM_H_
#define _SSRAM_H_

#include "verilated.h"

class SSRAM
{
    public:
        // Constructor and destructor
        SSRAM(bool debug, int size);
        ~SSRAM();
        // Methods
        void load(const char *name, vluint32_t begin,  vluint32_t end);
        void eval(vluint64_t cycle,    vluint8_t clk,    vluint8_t ce_n,
									vluint8_t oe_n,    vluint8_t bwe_n,    vluint8_t adsc_n,
									vluint8_t adsp_n, vluint8_t adv_n,   vluint32_t a, vluint8_t be_n,
									vluint32_t d, vluint32_t &q);
        // Memory array
        vluint8_t *mem_array;
    private:
        // Internal variables
				vluint32_t	ea;
				vluint32_t	ram_q;
				vluint32_t	ram_q_dly;
				bool				dbg;
};

#endif /* _SSRAM_H_ */
