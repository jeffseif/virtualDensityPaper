.PHONY: all clean

TARGET = virtualDensity
JUNK = \
	$(TARGET).aux \
	$(TARGET).bbl \
	$(TARGET).blg \
	$(TARGET).log \
	$(TARGET).out

all: $(TARGET).pdf

%.pdf : %.tex %.bib
	pdflatex $*
	bibtex $*
	@pdflatex $*
	@bibtex $*
	@pdflatex $*
	@rm -f $(JUNK)

clean:
	@rm -f $(TARGET).pdf
