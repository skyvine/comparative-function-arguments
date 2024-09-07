.PHONY: all
all: int.asm complex.asm

%.asm: %-func.c ../channels.scm ../manifest.scm
	gcc -O0 -Wall -Werror $(basename $@)-func.c -o $(basename $@)-func
	gdb $(basename $@)-func -batch -x disassemble.gdb > $@

.PHONY: clean
clean:
	rm -f int-func struct-func int.asm struct.asm
