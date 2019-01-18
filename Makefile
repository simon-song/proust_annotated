#LATEX = pdflatex
LATEX = xelatex
SOURCES = *.tex # chapters/*.tex FrontBackmatter/*.tex

all: proust_annotated.pdf

proust_annotated.pdf: $(SOURCES)
	$(LATEX) proust_annotated.tex
	$(LATEX) proust_annotated.tex

clean:
	rm -f *~ *.aux *.bib *.idx *.ilg *.ind *.log *.out *.toc *.xml proust_annotated.pdf .pdf
