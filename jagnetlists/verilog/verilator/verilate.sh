#cp ..\tom\blit_void.v ..\tom\blit.v
#rm -r obj_dir
#verilator ../jag_s2.v -I.. -I../base -I../tom -I../jerry -cc -O3 -Wno-fatal --threads 8 -Mdir out -top-module jag_s2 -exe main.cpp vga_out.cpp EasyBMP.cpp bios.cpp ssram.cpp trace_68k.cpp

verilator -Wno-WIDTH -Wno-LITENDIAN -Wno-UNOPTFLAT -Wno-INITIALDLY ../jaguar.sv -I.. -I../base -I../tom -I../jerry -cc -O3 -Wno-fatal --threads 8 -Mdir out -top-module emu -exe main.cpp vga_out.cpp EasyBMP.cpp bios.cpp ssram.cpp trace_68k.cpp

cd out
make -f Vemu.mk
