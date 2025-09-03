# Find all .tex files and generate corresponding .pdf targets
TEXFILES := $(wildcard *.tex)
PDFS := $(TEXFILES:.tex=.pdf)

.PHONY: all clean

all: $(PDFS)

# Pattern rule to build any PDF from its corresponding TEX file
%.pdf: %.tex
	@echo "Building $@ from $<"
	@if pdflatex -interaction=nonstopmode -halt-on-error $< > $<.log 2>&1; then \
		pdflatex -interaction=nonstopmode -halt-on-error $< > $<.log 2>&1; \
		echo "✓ Successfully built $@"; \
	else \
		echo "✗ Error building $@ - check $<.log for details"; \
		exit 1; \
	fi

# Individual targets for convenience
cv: cv.pdf
academic: academic_cv.pdf

clean:
	rm -f *.aux *.log *.out *.toc *.fls *.fdb_latexmk *.synctex.gz $(PDFS)
