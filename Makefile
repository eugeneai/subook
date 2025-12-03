.PHONY: run pres all vpres

TARGET=cw.tex
LUAL=lualatex -shell-escape
PRES=pres
PREST=$(PRES).tex
PRESP=$(PRES).pdf

all: run pres

run: $(TARGET)
	$(LUAL) $(TARGET)
	$(LUAL) $(TARGET)

view: run
	evince cw.pdf

pres: $(PRESP)

$(PRESP): $(PREST)
	$(LUAL) $(PREST)
	$(LUAL) $(PREST)

vpres: $(PRESP)
	evince $(PRESP)
