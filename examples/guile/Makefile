.PHONY: all
all: disassembly.scm

disassembly.scm: example.scm generate-disassembly.scm
	guile generate-disassembly.scm > disassembly.scm

clean:
	rm disassembly.scm
