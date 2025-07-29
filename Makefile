.PHONY: shell

paper:
	rm -f build
	if [ -e paper-root ]; then unlink paper-root; fi
	guix time-machine --channels=./channels.scm -- shell --pure guix --root=paper-root -- guix build -f package.scm -r build

shell:
	if [ -e shell-root ]; then unlink shell-root; fi
	guix time-machine --channels=./channels.scm -- shell --pure --manifest=manifest.scm --root=shell-root -- bash

examples:
	echo TODO

clean:
	rm build
