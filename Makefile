SRC = af1-1/af1-1.tex
DOCS = af1-1.pdf

af1-1.pdf: af1-1/af1-1.tex
	latexmk $(PV) -use-make -pdf $< --auxdir=aux

clean:
	rm -rf aux ${DOCS}

.PHONY: clean watch
