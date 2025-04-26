all: $(shell ls *.gv | sed 's/gv/svg/')
	

%.svg: %.gv
	dot -Kcirco -Tsvg $< | tail -n +4 > $@

rust-%.svg: rust-%.gv
	dot -Kfdp -Tsvg $< | tail -n +4 > $@

clean:
	rm *.svg
