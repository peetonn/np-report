PAPER=paper

all:
	pdflatex $(PAPER).tex
	bibtex $(PAPER)
	pdflatex $(PAPER).tex
	pdflatex $(PAPER).tex

open:
	open $(PAPER).pdf

.PHONY: clean
clean:
	rm -f *.aux *.log *.blg *.dvi *.bbl

pdf: all
