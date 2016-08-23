NAME=$(TARGET)
CNAME=$(TARGET)-with-cover
# BIBROOT=$(PWD)/../..
#	BIBINPUTS=$(BIBROOT) latexmk -pdfps -dvi- -ps- $(NAME)

.PHONY: FORCE_MAKE clean view all emacs edit pics cover

all: $(NAME).pdf 

cover: $(CNAME).pdf

%.pdf: %.tex pics FORCE_MAKE
	BIBINPUTS=$(BIBROOT) latexmk $<

clean:
	BIBINPUTS=$(BIBROOT) latexmk -C
	rm -f *.{bbl,aux,ps,dvi,log,toc,out} *~ ~* *.bak *.synctex.* *.thm *-joined.pdf *.wbk *_latexmk *.fls
	cd pics && make clean

view: all
	evince $(NAME).pdf

edit: emacs

emacs:
	emacsclient -c $(NAME).tex --alternate-editor emacs  &

$(CNAME).pdf: $(NAME).pdf cover.jpg
	convert cover.jpg cover.pdf
	pdfunite $(NAME).pdf cover.pdf $(CNAME).pdf
	rm cover.pdf

pics:
	cd pics && make
