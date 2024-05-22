# Define variables
TEXFILE = tov.tex
PDFFILE = tov.pdf

# Default target
all: $(PDFFILE)

# Rule to create PDF from LaTeX
$(PDFFILE): $(TEXFILE)
	pdflatex $(TEXFILE)

# Clean up auxiliary files
clean:
	rm -f *.aux *.log *.out *.toc

# Phony targets
.PHONY: all clean
