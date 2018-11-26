#include <stdlib.h>
#include <stdio.h>

typedef unsigned char uint8;

#include "cry2rgb.h"

void write_mem(const char *fname, uint8 tab[16][16]) {
	int Cr,Y;
	FILE *f = fopen(fname, "wb");

	for(Y = 0; Y < 16; Y++) {
		for(Cr = 0; Cr < 16; Cr++) {
			fprintf(f, "%02X\n", tab[Y][Cr]);
		}
	}	
	fclose(f);

}

void write_mif(const char *fname, uint8 tab[16][16]) {
	int Cr,Y;
	FILE *f = fopen(fname, "wb");

	int addr = 0;
	fprintf(f, "WIDTH = 8;\nDEPTH = 256;\n\nADDRESS_RADIX = HEX;\nDATA_RADIX = HEX;\n\nCONTENT\nBEGIN\n");
	for(Y = 0; Y < 16; Y++) {
		for(Cr = 0; Cr < 16; Cr++) {
			fprintf(f, " %2X : %02X;\n", addr++, tab[Y][Cr]);
		}
	}	
	fprintf(f,"END;\n");
	fclose(f);

}

int main(void) {
	
	write_mem("cry_r.mem", redcv);
	write_mem("cry_g.mem", greencv);
	write_mem("cry_b.mem", bluecv);

	write_mif("cry_r.mif", redcv);
	write_mif("cry_g.mif", greencv);
	write_mif("cry_b.mif", bluecv);
	
	return 0;
}
