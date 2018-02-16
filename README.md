#https://github.com/AlecTaggart/ARM-Single-Cycle.git 


single-cycle implementation of a subset of the ARMv7 instruction set using digital logic in Logisim.




USAGE:

To create ROM run:
$ objdump -d file.o | python makerom.py > file_rom.txt

Then load ROM into CPU on Logisim.

FUNCTION:

Function as a single cycle CPU capable of running basic programs like 
 fib_iter, fib_rec, sum_array, find_max.
