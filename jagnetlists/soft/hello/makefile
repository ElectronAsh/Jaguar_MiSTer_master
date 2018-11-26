LINKEROPT = -LC:/jaguar/lib -lvbcc
OFILES = \
startup.o \
jag.o

jag : $(OFILES)
	vlink -brawbin1 -Ttext 0x4000 $(OFILES) $(LINKEROPT) -o jag.bin


GAS2OBJ = smac -fb $? -l$?.lst
C2OBJ = vc -DJAGUAR -O2 -c -o $@ $?

#
# 68k jaguar specific asm files
#

startup.o : startup.s
	$(GAS2OBJ)

#
# 68k jaguar specific C files
#	
jag.o : jag.c
	$(C2OBJ)

clean :
	rm *.o
	rm *.bin
