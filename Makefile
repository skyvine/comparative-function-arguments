.PHONY: shell
shell:
	guix time-machine --channels=./channels.scm -- shell --pure --manifest=examples/manifest.scm -- bash

examples:
	echo TODO

paper:
	cd prose && ./build.sh
