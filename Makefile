all: dissertation.pdf

dissertation.pdf: dissertation.tex dissertation.bib
	pdflatex dissertation
	bibtex dissertation
	pdflatex dissertation
	pdflatex dissertation

clean:
	rm -f *.aux *.bbl *.blg *.fdb_latexmk *.lof *.lot *.toc *.ilg *.idx *.fls *.ind *.log *.out dissertation.pdf chapters/*.aux chapters/appendices/*.aux

