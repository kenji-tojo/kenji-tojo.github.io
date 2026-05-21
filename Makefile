SRC      := latex/cv.tex
BUILDDIR := build
OUTPDF   := cv/KenjiTojoCV.pdf
JOBNAME  := KenjiTojoCV

.PHONY: cv clean

cv:
	mkdir -p $(BUILDDIR)
	latexmk -pdf -interaction=nonstopmode -halt-on-error \
		-jobname=$(JOBNAME) -output-directory=$(BUILDDIR) $(SRC)
	cp $(BUILDDIR)/$(JOBNAME).pdf $(OUTPDF)

clean:
	rm -rf $(BUILDDIR)
