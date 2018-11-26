/******************************************************************
mcodegen.c
7/2/91

Graphics Processor Microword generator
--------------------------------------
This program generates the GPU microwords for the ROM.

******************************************************************/

#include	<stdio.h>

struct	mcode	{

/* ALU control */

unsigned	ressel 	: 3; /* select result	
				0 = ALU
				1 = Barrel shifter
				2 = Saturater
				3 = Multiplier
				4 = Mantissa
				5 = Normaliser 
				6 = pack
				7 = unpack
			alternatively invert top bit of
			source (bit 0) or dest (bit 1)
			address when dstrwr is set */
unsigned	brm_mlt : 2; /* if ressel is 1 barrel shift mux 
				0 = logical shift
				2 = rotate
				3 = arithmetic shift
			or multiply signed in high bit
			or memory transfer size	
				0 = byte
				1 = word
				2 = long-word
				3 = phrase */
unsigned	satsz	: 2; /*	0 = SAT8, 
				1 = SAT16, 
				2 = SAT24 */

unsigned	mac	: 1; /* multiply/accumulate - one tick after the 
				multiply operation, perform the following:
				-	select result on alua
				-	select pipe-lined product on alub
				-	load result one tick later */

unsigned	alufunc : 3; /* ALU function	
				0 = add
				1 = add with carry
				2 = subtract
				3 = sub with carry
				4 = and
				5 = or
				6 = xor 
				7 = sub if dst neg, add if dst pos
*/
unsigned	indsel	: 1; /* If precomp is set, supplants
				dsta with 14 if 0, or 15 if 1,
				for the first tick of execution.*/
unsigned	flagld	: 1; /* Flags register loaded */
unsigned	resld	: 1; /* Result register loaded */
unsigned	srcdat	: 4; /* Source type
				 0 = register data
				 1 = operand field 0-31
				 2 = operand field 0-31 * 4
				 3 = operand field negative
				 4 = constant 0
				 5 = operand field signed -16 - 15
				 6 = constant -1
				 7 = program count
				 8 = operand field 1-32
				 9 = operand field selects one bit set
				10 = operand field selects one bit clear
*/

/* Execution control */

unsigned 	reswr	: 1; /* set pending result write */
unsigned	dstrrd	: 1; /* current instruction reads dest*/
unsigned	memrw	: 1; /* initiate memory cycle */
unsigned	memwe	: 1; /* true if cycle is a write */
unsigned	precomp : 1; /* pre-compute address for indexes */
unsigned	immld	: 1; /* immediate data load enable */
unsigned	jumprel : 1; /* load PC from source operand + PC */
unsigned	jumpabs : 1; /* load PC from source operand */
unsigned	dstrwr	: 1; /* load dest from source operand */

} microcode[] =
{
/*
     b        a                          p     j  j  
  r  r        l  i  f     s     d        r     u  u  d
  e  m  s     u  n  l  r  r  r  s  m  m  e  i  m  m  s
  s  _  a     f  d  a  e  c  e  t  e  e  c  m  p  p  t
  s  m  t  m  u  s  g  s  d  s  r  m  m  o  m  r  a  r
  e  l  s  a  n  e  l  l  a  w  r  r  w  m  l  e  b  w
  l  t  z  c  c  l  d  d  t  r  d  w  e  p  d  l  s  r          */
{ 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0}, /*  0 ADD	 000000 */
{ 0, 0, 0, 0, 1, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0}, /*  1 ADDC	 000001	*/
{ 0, 0, 0, 0, 0, 0, 1, 1, 8, 1, 1, 0, 0, 0, 0, 0, 0, 0}, /*  2 ADDQ	 000010	*/
{ 0, 0, 0, 0, 0, 0, 0, 1, 8, 1, 1, 0, 0, 0, 0, 0, 0, 0}, /*  3 ADDQT	 000011	*/
{ 0, 0, 0, 0, 2, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0}, /*  4 SUB	 000100	*/
{ 0, 0, 0, 0, 3, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0}, /*  5 SUBC	 000101	*/
{ 0, 0, 0, 0, 2, 0, 1, 1, 8, 1, 1, 0, 0, 0, 0, 0, 0, 0}, /*  6 SUBQ	 000110	*/
{ 0, 0, 0, 0, 2, 0, 0, 1, 8, 1, 1, 0, 0, 0, 0, 0, 0, 0}, /*  7 SUBQT	 000111	*/
{ 0, 0, 0, 0, 2, 0, 1, 1, 4, 1, 1, 0, 0, 0, 0, 0, 0, 0}, /*  8 NEG	 001000	*/
{ 0, 0, 0, 0, 4, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0}, /*  9 AND	 001001	*/
{ 0, 0, 0, 0, 5, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0}, /* 10 OR	 001010	*/
{ 0, 0, 0, 0, 6, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0}, /* 11 XOR	 001011	*/
{ 0, 0, 0, 0, 6, 0, 1, 1, 6, 1, 1, 0, 0, 0, 0, 0, 0, 0}, /* 12 NOT	 001100	*/
{ 0, 0, 0, 0, 4, 0, 1, 1, 9, 0, 1, 0, 0, 0, 0, 0, 0, 0}, /* 13 BTST	 001101	*/
{ 0, 0, 0, 0, 5, 0, 1, 1, 9, 1, 1, 0, 0, 0, 0, 0, 0, 0}, /* 14 BSET	 001110	*/
{ 0, 0, 0, 0, 4, 0, 1, 1, 10,1, 1, 0, 0, 0, 0, 0, 0, 0}, /* 15 BCLR	 001111	*/
{ 3, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0}, /* 16 MULT	 010000	*/
{ 3, 2, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0}, /* 17 IMULT	 010001	*/
{ 3, 2, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0}, /* 18 IMULTN	 010010	*/
{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0}, /* 19 RESMAC	 010011	*/
{ 0, 2, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0}, /* 20 IMACN 	 010100	*/
{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0}, /* 21 DIV	 010101	*/
{ 0, 0, 0, 0, 7, 0, 1, 1, 4, 1, 1, 0, 0, 0, 0, 0, 0, 0}, /* 22 ABS	 010110	*/
{ 1, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0}, /* 23 SH	 010111	*/
{ 1, 0, 0, 0, 0, 0, 1, 1, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0}, /* 24 SHLQ	 011000	*/
{ 1, 0, 0, 0, 0, 0, 1, 1, 8, 1, 1, 0, 0, 0, 0, 0, 0, 0}, /* 25 SHRQ	 011001	*/
{ 1, 3, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0}, /* 26 SHA	 011010	*/
{ 1, 3, 0, 0, 0, 0, 1, 1, 8, 1, 1, 0, 0, 0, 0, 0, 0, 0}, /* 27 SHARQ	 011011	*/
{ 1, 2, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0}, /* 28 ROR	 011100	*/
{ 1, 2, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0}, /* 29 RORQ	 011101	*/
{ 0, 0, 0, 0, 2, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0}, /* 30 CMP	 011110	*/
{ 0, 0, 0, 0, 2, 0, 1, 1, 5, 0, 1, 0, 0, 0, 0, 0, 0, 0}, /* 31 CMPQ	 011111	*/
{ 2, 0, 0, 0, 0, 0, 1, 1, 4, 1, 1, 0, 0, 0, 0, 0, 0, 0}, /* 32 SAT8	 100000	*/
{ 2, 0, 1, 0, 0, 0, 1, 1, 4, 1, 1, 0, 0, 0, 0, 0, 0, 0}, /* 33 SAT16	 100001	*/
{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, /* 34 MOVE	 100010	*/
{ 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1}, /* 35 MOVEQ	 100011	*/
{ 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, /* 36 MOVETA	 100100	*/
{ 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, /* 37 MOVEFA	 100101	*/
{ 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0}, /* 38 MOVEI	 100110	*/
{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0}, /* 39 LOADB	 100111	*/
{ 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0}, /* 40 LOADW	 101000	*/
{ 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0}, /* 41 LOAD	 101001	*/
{ 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0}, /* 42 LOADP	 101010	*/
{ 0, 2, 0, 0, 0, 0, 0, 1, 2, 0, 1, 1, 0, 1, 0, 0, 0, 0}, /* 43 LD14	 101011	*/
{ 0, 2, 0, 0, 0, 1, 0, 1, 2, 0, 1, 1, 0, 1, 0, 0, 0, 0}, /* 44 LD15	 101100	*/
{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0}, /* 45 STOREB	 101101	*/
{ 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0}, /* 46 STOREW	 101110	*/
{ 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0}, /* 47 STORE	 101111	*/
{ 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0}, /* 48 STOREP	 110000	*/
{ 0, 2, 0, 0, 0, 0, 0, 1, 2, 0, 1, 1, 1, 1, 0, 0, 0, 0}, /* 49 ST14	 110001	*/
{ 0, 2, 0, 0, 0, 1, 0, 1, 2, 0, 1, 1, 1, 1, 0, 0, 0, 0}, /* 50 ST15	 110010	*/
{ 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 1}, /* 51 LDPC	 110011	*/
{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0}, /* 52 JUMP	 110100	*/
{ 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0}, /* 53 JR	 110101	*/
{ 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0}, /* 54 MMLT	 110110	*/
{ 4, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0}, /* 55 MTOI	 110111	*/
{ 5, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0}, /* 56 NORM	 111000	*/
{ 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0}, /* 57 NOP	 111001	*/
{ 0, 2, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0}, /* 58 LD14R	 101011	*/
{ 0, 2, 0, 0, 0, 1, 0, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0}, /* 59 LD15R	 101100	*/
{ 0, 2, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0}, /* 60 ST14R	 110001	*/
{ 0, 2, 0, 0, 0, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0}, /* 61 ST15R	 110010	*/
{ 2, 0, 2, 0, 0, 0, 1, 1, 4, 1, 1, 0, 0, 0, 0, 0, 0, 0}, /* 62 SAT24	 111101	*/
{ 6, 0, 0, 0, 0, 0, 1, 1, 4, 1, 1, 0, 0, 0, 0, 0, 0, 0}, /* 63 PACK      111111 */
};															
															
															
															
main ()														
															
{
int n;
FILE *file;
long codeword;

if ((file = fopen ("Mcode.rom", "wt")) == NULL)
	{
	printf ("Cannot open Mcode.rom for write\n");
	exit (-1);
	}
for (n=0; n<64; n++)
	{
	codeword = 0;
	codeword += microcode[n].ressel;
	codeword += microcode[n].brm_mlt	<< 3;
	codeword +=(microcode[n].satsz & 1)	<< 5;
	codeword += microcode[n].mac		<< 6;
	codeword += microcode[n].alufunc	<< 7;
	codeword += microcode[n].indsel		<< 10;
	codeword += microcode[n].flagld		<< 11;
	codeword += microcode[n].resld		<< 12;
	codeword += microcode[n].srcdat		<< 13;
	codeword += microcode[n].reswr		<< 17;
	codeword += microcode[n].dstrrd		<< 18;
	codeword += microcode[n].memrw		<< 19;
	codeword += microcode[n].memwe		<< 20;
	codeword += microcode[n].precomp	<< 21;
	codeword += microcode[n].immld		<< 22;
	codeword += microcode[n].jumprel	<< 23;
	codeword += microcode[n].jumpabs	<< 24;
	codeword += microcode[n].dstrwr 	<< 25;
	codeword +=(microcode[n].satsz & 2)	<<(26 - 1);
	fprintf (file, "%08X\n", codeword);
	}
fclose (file);

if ((file = fopen ("JAG.rom", "wt")) == NULL)
	{
	printf ("Cannot open jag.rom for write\n");
	exit (-1);
	}
fprintf (file, "MODULE GPU_/GRAPHICS_/GPU_/INS_EXEC_/MCODE_;\n");
fprintf (file, "WORD 64, HEX;\n");
fprintf (file, "BIT  32, HEX;\n");
fprintf (file, "DATA : \n");

for (n=0; n<64; n++)
	{
	codeword = 0;
	codeword += microcode[n].ressel;
	codeword += microcode[n].brm_mlt	<< 3;
	codeword +=(microcode[n].satsz & 1)	<< 5;
	codeword += microcode[n].mac		<< 6;
	codeword += microcode[n].alufunc	<< 7;
	codeword += microcode[n].indsel		<< 10;
	codeword += microcode[n].flagld		<< 11;
	codeword += microcode[n].resld		<< 12;
	codeword += microcode[n].srcdat		<< 13;
	codeword += microcode[n].reswr		<< 17;
	codeword += microcode[n].dstrrd		<< 18;
	codeword += microcode[n].memrw		<< 19;
	codeword += microcode[n].memwe		<< 20;
	codeword += microcode[n].precomp	<< 21;
	codeword += microcode[n].immld		<< 22;
	codeword += microcode[n].jumprel	<< 23;
	codeword += microcode[n].jumpabs	<< 24;
	codeword += microcode[n].dstrwr 	<< 25;
	codeword +=(microcode[n].satsz & 2)	<<(26 - 1);
	fprintf (file, "%02X/%08X;\n", n, codeword);
	}
fprintf (file, "END MODULE;\n");
fprintf (file, "END;\n");
fclose (file);



exit (0);
}
