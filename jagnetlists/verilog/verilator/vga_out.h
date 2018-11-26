#ifndef _VGA_OUT_H_
#define _VGA_OUT_H_

#include "verilated.h"
#include "EasyBMP.h"

#define HS_POS_POL (1)
#define HS_NEG_POL (0)
#define VS_POS_POL (2)
#define VS_NEG_POL (0)

class VgaOut
{
    public:
        // Constructor and destructor
        VgaOut(int debug, int depth, int polarity, int hoffset, int hactive, int voffset, int vactive, char *file);
        ~VgaOut();
        // Methods
        void eval(vluint64_t cycle, int clk, int vs, int hs, int red, int green, int blue);
    private:
        // Color depth
        int bit_mask;
        int bit_shift;
        // Synchros polarities
        int hs_pol;
        int vs_pol;
        // Image format
        int hor_offs;
        int ver_offs;
        int hor_size;
        int ver_size;
        // Debug mode
        int dbg_on;
        // BMP file
        BMP *bmp;
        // BMP file name
        char filename[256];
        // Internal variable
        int prev_clk;
        int prev_hs;
        int prev_vs;
        int hcount;
        int vcount;
        int dump_act;
        int dump_ctr;
};

#endif /* _VGA_OUT_H_ */
