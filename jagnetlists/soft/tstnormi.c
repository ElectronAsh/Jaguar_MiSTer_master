#include <stdlib.h>
#include <stdio.h>

#define uint32 unsigned long

uint32 RN;
uint32 RM;
static void gpu_opcode_normi()
{
	uint32 _RM = RM;
	uint32 res = 0;

	if (_RM)
	{
		while ((_RM & 0xFFC00000) == 0)
		{
			_RM <<= 1;
			res--;
		}
		while ((_RM & 0xFF800000) != 0)
		{
			_RM >>= 1;
			res++;
		}
	}
	RN = res;
}


void main() {
	int i;
	
	uint32 n;
	
	// printf("%d\n", sizeof(float));
	
	for(i = 31; i >= 0; i--) {
		RM = (1 << i);
		gpu_opcode_normi();
		printf("%d -> %d\n", i, RN);
		
		float f = (float)RM;
		*(float *)(&n) = f;
		
		
		printf("%08X = %08x : Sign=%d Exp=%02x (Exp-127=%d) %06x\n",
			RM,
			n,
			(n>>31),
			(n>>(31-8)) & 0xff,
			( (n>>(31-8)) & 0xff ) - 127,
			(n & ~0xFF800000)
			);
		
	}
}