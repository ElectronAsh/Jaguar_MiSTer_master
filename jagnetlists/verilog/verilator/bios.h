#ifndef _BIOS_H_
#define _BIOS_H_

#include "verilated.h"

class BIOS
{
    public:
        // Constructor and destructor
        BIOS(bool debug, int size);
        ~BIOS();
        // Methods
        void load(const char *name, vluint32_t begin,  vluint32_t end);
        void eval(vluint64_t cycle,    vluint8_t clk,    vluint8_t ce_n,
									vluint8_t oe_n,   vluint32_t a,
									vluint8_t &q,		vluint8_t &oe);
        // Memory array
        vluint8_t *mem_array;
    private:
        // Internal variables
				vluint32_t	mask;
				bool				dbg;
};

#endif /* _BIOS_H_ */
