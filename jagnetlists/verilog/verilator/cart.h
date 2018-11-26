#ifndef _CART_H_
#define _CART_H_

#include "verilated.h"

class CART
{
    public:
        // Constructor and destructor
        CART(int width, bool debug, int size);
        ~CART();
        // Methods
        void load(const char *name, vluint32_t begin,  vluint32_t end);
        void eval(vluint64_t cycle,    vluint8_t clk,    vluint8_t ce_n,
									vluint8_t oe_n,   vluint32_t a,
									vluint32_t &q,		vluint8_t &oe);
        // Memory array
        vluint8_t *mem_array;
    private:
        // Internal variables
				bool				dbg;
				int					width;
};

#endif /* _CART_H_ */
