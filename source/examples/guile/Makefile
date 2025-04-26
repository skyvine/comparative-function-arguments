# Output files are named with the scm suffix because they includes scheme-style comments
# and are annotated with s-expressions, so the syntax highlighting is useful

.PRECIOUS: %.bytecode.scm %.cps.scm %.tree-il.scm c-%.so

.PHONY: all
all: $(basename $(shell ls *.scm | ag -v '\.(tree-il|cps|bytecode)\.')) method-dispatch.bytecode.scm
	

%: %.tree-il.scm %.cps.scm %.bytecode.scm
	

c-%: c-%.so c-%.tree-il.scm c-%.cps.scm c-%.bytecode.scm
	

GUILE_REALPATH=$(shell dirname $(shell dirname $(shell realpath $(shell type -p guile))))
GUILE_INCLUDE_PATH=$(GUILE_REALPATH)/include/guile/3.0
c-%.so: c-%.c
	gcc -shared $< -fPIC -o $@ -I$(GUILE_INCLUDE_PATH)

c-%.bytecode.scm: %.scm aux/compile-to-bytecode.scm
	guile aux/compile-to-bytecode.scm $< > $@

c-%.cps.scm: %.scm aux/compile-to-cps.scm
	guile aux/compile-to-cps.scm $< > $@

c-%.tree-il.scm: %.scm aux/compile-to-tree-il.scm
	guile aux/compile-to-tree-il.scm $< > $@

%.bytecode.scm: %.scm aux/compile-to-bytecode.scm
	guile aux/compile-to-bytecode.scm $< > $@

%.cps.scm: %.scm aux/compile-to-cps.scm
	guile aux/compile-to-cps.scm $< > $@

%.tree-il.scm: %.scm aux/compile-to-tree-il.scm
	guile aux/compile-to-tree-il.scm $< > $@

method-dispatch.bytecode.scm: typed-value.scm
	guile -c "(begin\
		(use-modules (system vm disassembler))\
		\
		(load \"typed-value.scm\")\
		(disassemble-program (slot-ref add-values 'procedure)))" > $@

clean:
	rm *.tree-il.scm *.cps.scm *.bytecode.scm *.so
