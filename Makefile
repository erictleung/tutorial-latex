all: latex.pdf

clean:
	rm -f latex.pdf

.PHONY: all clean
.DELETE_ON_ERROR:
.SECONDARY:

# Compiles tutorial guide
%.pdf: %.md
	pandoc -t latex --smart --latex-engine=pdflatex -s $< -o $@
