#include <stdlib.h>
#include <stdio.h>

unsigned int a = 0;

void expand(unsigned char c) {
	int i;
	for( i = 0; i < 8; i++ ) {
		if (c & (1 << i)) {
			putchar('1');
		} else {
			putchar('0');
		}
	}
	a++;
	if (!(a & 0x7))
		putchar('\n');
}

int main(int argc, char *argv[]) {
	FILE *f;
	unsigned char b[8];
	int k;
	
	if (argc < 2) {
		fprintf(stderr, "usage: %s <homebrew rom file>\n", argv[0]);
		exit(1);
	}
	f = fopen(argv[1], "rb");
	if (f == NULL) {
		fprintf(stderr, "%s: unable to open %s for reading\n", argv[0], argv[1]);
		exit(2);	
	}
	
	// Zeroes from 0x0 to 0x4000
	while(a < 0x4000) {
		expand(0);
	}
	// Contents of ROM file
	while(a < 0x200000) {
		for(k = 0; k < 8; k++) {
			b[k] = 0;
		}
		fread(b, 1, 8, f);
		for(k = 0; k < 8; k++) {
			expand(b[(7-k)]);
		}
	}
	
	fclose(f);

	return 0;
}
