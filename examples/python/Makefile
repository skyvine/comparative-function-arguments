.PHONY: all
all: $(patsubst %.py,%.dis,$(wildcard *.py))

%.dis: %.py
	python3 -m dis $< > $@

.PHONY: clean
clean:
	rm *.dis
