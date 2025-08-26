PDF=cv.pdf
TEX=cv.tex

.PHONY: all clean

all: $(PDF)

$(PDF): $(TEX)
	@echo "Building $(PDF) from $(TEX)"
	pdflatex -interaction=nonstopmode -halt-on-error $(TEX) > /dev/null
	pdflatex -interaction=nonstopmode -halt-on-error $(TEX) > /dev/null

clean:
	rm -f *.aux *.log *.out *.toc *.fls *.fdb_latexmk *.synctex.gz $(PDF)
