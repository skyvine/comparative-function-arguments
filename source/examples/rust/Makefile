.PHONY: all
all: $(basename $(shell ls *.rs)) $(shell ls *.rs | sed 's/.rs/.dis/')
	

%.dis: %
	objdump -M intel -d $< > $@

%: %.rs
	rustc -C linker=gcc $<

typed-value-error.dis:
	echo > typed-value-error.dis

typed-value-error: typed-value-error.rs
	-rustc -C linker=gcc $<

clean:
	rm -f $(basename $(shell ls *.rs)) *.dis
