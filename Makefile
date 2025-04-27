.PHONY: shell

paper:
	rm -f build
	guix time-machine --channels=./channels.scm -- shell --pure guix -- guix build -f package.scm -r build

shell:
	guix time-machine --channels=./channels.scm -- shell --pure --manifest=manifest.scm -- bash

examples:
	echo TODO

clean:
	rm build
