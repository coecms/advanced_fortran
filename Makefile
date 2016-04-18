TEXFILES=$(wildcard *.tex)

master.pdf : $(TEXFILES)
	pdflatex master.tex
	pdflatex master.tex

debug:
	@echo "TEXFILES = $(TEXFILES)"

clean:
	@rm *.log *.aux master.pdf *.nav *.toc *.out *.snm

.PHONY: debug clean
