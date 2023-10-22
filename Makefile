SRC = af1-1/af1-1.tex
DOCS = af1-1.pdf

af1-1.pdf: af1-1/af1-1.tex
	latexmk $(PREVIEW_CONTINUOUSLY) -use-make -pdf $< --auxdir=aux

clean:
	rm -rf aux

.PHONY: clean watch ${DOCS}
