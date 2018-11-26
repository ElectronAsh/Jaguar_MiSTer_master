smac -fb -u test.s
sln -o test.bin -n -rq -a 4000 x x test.o
perl ../bin2mif.pl test.bin > ../../gpu_ram.mif
