all: $(shell ls *.gv | sed 's/gv/svg/')
	

%.svg: %.gv
	dot -Kcirco -Tsvg $< | tail -n +4 > $@
	sed -i 's/fill="white"/fill="none"/' $@

rust-%.svg: rust-%.gv
	dot -Kfdp -Tsvg $< | tail -n +4 > $@
	sed -i 's/fill="white"/fill="none"/' $@

clean:
	rm *.svg
