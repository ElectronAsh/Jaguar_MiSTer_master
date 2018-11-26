#include "verilated.h"
#include "vga_out.h"
#include "EasyBMP.h"
#include <stdlib.h>
#include <stdio.h>
#include <time.h>

// Constructor
VgaOut::VgaOut(int debug, int depth, int polarity, int hoffset, int hactive, int voffset, int vactive, char *file)
{
    // memory size
    int s = hactive * vactive;
    
    // color depth
    if (depth <= 8)
    {
        bit_mask  = (1 << depth) - 1;
        bit_shift = 8 - depth;
    }
    else
    {
        bit_mask  = 0xFF;
        bit_shift = 0;
    }
    // synchros polarities
    hs_pol      = (polarity & HS_POS_POL) ? 1 : 0;
    vs_pol      = (polarity & VS_POS_POL) ? 1 : 0;
    // screen format initialized
    hor_offs    = hoffset;
    hor_size    = hactive;
    ver_offs    = voffset;
    ver_size    = vactive;
    // debug mode
    dbg_on      = debug;
    // create a BMP with EasyBMP class
    bmp         = new BMP;
    bmp->SetBitDepth(24);
    bmp->SetSize(hactive,vactive);
    // copy the filename
    strncpy(filename, file, 255);
    // internal variables cleared
    prev_clk    = 0;
    prev_hs     = 0;
    prev_vs     = 0;
    hcount      = 0;
    vcount      = 0;
    dump_act    = 0;
    dump_ctr    = 0;
}

// Destructor
VgaOut::~VgaOut()
{
}

// Cycle evaluate
void VgaOut::eval
(
    vluint64_t cycle,
    // Clock
    int clk,
    // Synchros
    int vs,
    int hs,
    // Colors
    int red,
    int green,
    int blue
)
{
    // Rising edge on clock
    if (clk && !prev_clk)
    {
				// Grab active area
        if ((vcount >= ver_offs) && (vcount < (ver_offs + ver_size)))
        {
            if ((hcount >= hor_offs) && (hcount < (hor_offs + hor_size)))
            {
                RGBApixel pixel;
                
                pixel.Red   = (red   & bit_mask) << bit_shift;
                pixel.Green = (green & bit_mask) << bit_shift;
                pixel.Blue  = (blue  & bit_mask) << bit_shift;
                
                bmp->SetPixel(hcount - hor_offs, vcount - ver_offs, pixel);
            }
        }
        
        // Rising edge on VS
        if ((vs == vs_pol) && (prev_vs != vs_pol))
        {
            if (dbg_on) printf("Rising edge on VS @ cycle #%llu\n", cycle);
            hcount = 0;
            vcount = 0;
            if (dump_act)
            {
                char tmp[264];
                
                sprintf(tmp, "%s%04d.bmp", filename, dump_ctr);
                if (dbg_on) printf("Save snapshot in file \"%s\"\n", tmp);
                bmp->WriteToFile(tmp);
                dump_ctr++;
            }
            if (filename[0]) dump_act = 1;
        }
        
        // Rising edge on HS
        if ((hs == hs_pol) && (prev_hs != hs_pol))
        {
            if (dbg_on) printf("Rising edge on HS @ cycle #%llu (vcount = %d) (hcount = %d)\n", cycle, vcount, hcount);
            if (hcount > 4) vcount++;
            hcount = 0;
        }
        else
        {
            hcount++;
        }
        
        prev_vs = vs;
        prev_hs = hs;
    }
    prev_clk = clk;
}
