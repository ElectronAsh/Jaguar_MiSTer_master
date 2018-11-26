PATH=D:\SGDK\bin;C:\strawberry\perl\bin
D:\SGDK\bin\gcc -Wa,-a=os.lst -m68000 -Wall -O1 -fomit-frame-pointer -c os.s
D:\SGDK\bin\gcc -T md.ld -nostdlib os.o -o os.out
D:\SGDK\bin\objcopy -O binary os.out os.bin

bin2mif os.bin os.mif 8
copy os.mif ..\..\verilog\os_cart.mif

rem perl ..\bin2txt8.pl os.bin > ..\..\verilog\os.mem
rem copy os.bin ..\..\verilog\os.bin
rem perl ..\bin2mif8.pl os.bin 16384 > ..\..\verilog\os.mif

pause
