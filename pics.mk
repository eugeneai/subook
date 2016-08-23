.PHONY: clean all debug

SRC=$(wildcard *.svg)
NAMES=$(basename $(SRC))
TARGETS=$(addsuffix .pdf,$(NAMES))

all: $(TARGETS)

%.pdf %.pdf_tex: %.svg
	inkscape -z -D --file=$< --export-pdf=$@ --export-latex

clean:
	rm -f $(TARGETS)

debug:
	echo SRC: $(SRC)
	echo SRC: $(NAMES)
	echo SRC: $(TARGETS)
