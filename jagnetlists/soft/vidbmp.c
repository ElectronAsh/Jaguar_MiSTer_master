#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "types.h"

/*****************************************************************************
 BMP Output
 
 Code to write BMP files
*****************************************************************************/

/*
 * struct bmp_header:
 *
 * BMP file header. Must be initialized properly.
 *
 * NOTE: Each line of the image data must be padded out to 4 byte boundaries.
 * Therefore, the image data size is not simply xres * yres.
 */

struct bmp_header
{
	UINT8	sig[2]			PACKED;	// set to 'BM'
	UINT32	file_size		PACKED;	// size of entire BMP file: 54 + palette_entries * 4 + image data size
	UINT32	reserved		PACKED;	// unused, set to 0
	UINT32	img_offset		PACKED;	// offset of beginning of image data: 54 + palette_entries * 4
	UINT32	info_size		PACKED;	// size of BMP info header (40 bytes)
	UINT32	width			PACKED;	// image width in pixels
	UINT32	height			PACKED;	// height
	UINT16	planes			PACKED;	// number of planes (must be 1)
	UINT16	bpp				PACKED;	// bits per pixel (8 or 24)
	UINT32	compression		PACKED;	// compression type (set to 0)
	UINT32	img_size		PACKED;	// image data size (if not compressed, leave it 0)
	UINT32	xpelspermeter	PACKED;	// horizontal pixels per meter (leave it 0)
	UINT32	ypelspermeter	PACKED;	// vertical pixels per meter (0)
	UINT32	num_colors		PACKED;	// number of palette entries 
	UINT32	imp_colors		PACKED;	// number of important colors (set to 0)
};

/*
 * InitBMPHeader():
 *
 * Initializes a BMP header structure. The number of palette entries is
 * calculated based on the bpp (1, 4, 8 or 24 only.)
 */
 
static void InitBMPHeader(struct bmp_header *bmp_header, INT xres, INT yres, int *line_size)
{
	UINT	img_size;
	
	*line_size = xres * 3;
	*line_size = ((*line_size) + 3) & (~3);	// align to 4 byte boundaries
	
	img_size = *line_size * yres;
	
	memset(bmp_header, 0, sizeof(struct bmp_header));	
	bmp_header->sig[0] = 'B';
	bmp_header->sig[1] = 'M';
	bmp_header->file_size = 54 + img_size;
	bmp_header->img_offset = 54;
	bmp_header->info_size = 40;
	bmp_header->width = xres;
	bmp_header->height = yres;
	bmp_header->planes = 1;
	bmp_header->bpp = 24;
	bmp_header->num_colors = 0;
}
	 
/*
 * WriteBMP8():
 *
 * Writes a BMP image to an output file.
 */
 
static BOOL WriteBMP8(const CHAR *fname, const UINT8 *img, INT xres, INT yres)
{
	struct bmp_header	bmp_header;
	FILE				*fp;
	INT					i, line_size, x;
	UINT8				pad[4] = { 0, 0, 0, 0 };
		
	/*
	 * Open the BMP file and write the header
	 */
	 
	fp = fopen(fname, "wb");
	if (fp == NULL)
		return 1;		
	
	InitBMPHeader(&bmp_header, xres, yres, &line_size);
	fwrite(&bmp_header, sizeof(struct bmp_header), 1, fp);
	
	/*
	 * Write the image data bottom-up
	 */
	 
	
	for (i = yres - 1; i >= 0; i--)
	{
		for(x = 0; x < xres; x++) {
			fwrite(&img[i * (xres*3) + x*3 + 0], sizeof(UINT8), 1, fp);
			fwrite(&img[i * (xres*3) + x*3 + 1], sizeof(UINT8), 1, fp);
			fwrite(&img[i * (xres*3) + x*3 + 2], sizeof(UINT8), 1, fp);			
		}
		fwrite(pad, sizeof(UINT8), (line_size - xres*3), fp);	// pad to 4 byte boundaries
	}
	
	fclose(fp);
	
	return 0;
}

#define X_MAX 500
#define Y_MAX 300

int main(int argc, char *argv[]) {
	UINT8 *img,*p;
	INT xres, yres;
	char line[200];
	FILE *f;
	int r,g,b;
	
	int x,y;
	char file[30];
	int frame;
	
	if (argc < 2) {
		printf("usage : vid2bmp file\n");
		return 1;
	}

	f = fopen(argv[1], "r");
	if (f == NULL) {
		printf("can't open file\n");
		return 1;
	}
	
	img = (UINT8 *)calloc(X_MAX * Y_MAX * 3, sizeof(UINT8));
	p = img;
	y = 0;
	frame = -1;
	while(!feof(f)) {
		fgets(line, 30, f);
		if (line[0] == '#') {
			if (frame >= 0) {
				y++;
				sprintf(file,"vdp%05d.bmp", frame);
				WriteBMP8(file, img, X_MAX, y );
			}
			memset(img, 0, X_MAX * Y_MAX * 3);
			p = img;
			y = 0;
			frame++;
		}
		else if (line[0] == '-') {
			//printf("%d\n", p-img);
			y++;
			p = &img[X_MAX * 3 * y];
		}
		else if (strlen(line) >= 6) {
			if (sscanf(line, "%2x%2x%2x", &r, &g, &b) == 3) {
				/*r = (r<<4) | (r<<1);
				g = (g<<4) | (g<<1);
				b = (b<<4) | (b<<1);*/
				*p++ = b;
				*p++ = g;
				*p++ = r;				
			}
		}
	}	
	fclose(f);

	if (y > 0) {
		y++;
		sprintf(file,"vid%05d.bmp", frame);
		WriteBMP8(file, img, X_MAX, y );
	}
	return 0;
}
