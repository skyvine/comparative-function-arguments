.PHONY: all
all: $(basename $(shell ls *.rs)) $(shell ls *.rs | sed 's/.rs/.dis/')
	

%.dis: %
	objdump -M intel -d $< > $@

%: %.rs
	rustc -C linker=gcc $<

clean:
	rm -f $(basename $(shell ls *.rs)) *.dis
