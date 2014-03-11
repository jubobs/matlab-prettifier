TEXFLAGS = -e '$$pdflatex=q/pdflatex %O %S/' -pdf
LATEXMK  = latexmk
RM = rm -f

PKGNAME = matlab-prettifier
PACKAGE = $(PKGNAME).dtx \
          $(PKGNAME).ins \
          $(PKGNAME).pdf \
          README.txt     \
          makefile

.PHONY: $(PKGNAME) all doc dist clean cleanall

doc: $(PKGNAME).pdf

all: doc

$(PKGNAME).pdf: $(PKGNAME).sty \
                $(PKGNAME).gls \
                $(PKGNAME).ind \
                $(PKGNAME).dtx
	$(LATEXMK) $(TEXFLAGS) $(PKGNAME).dtx
	open -a Preview $(PKGNAME).pdf

$(PKGNAME).gls: $(PKGNAME).glo 
	makeindex -s gglo.ist -o $(PKGNAME).gls $(PKGNAME).glo

$(PKGNAME).ind: $(PKGNAME).idx 
	makeindex -s gind.ist -o $(PKGNAME).ind $(PKGNAME).idx

$(PKGNAME).glo: $(PKGNAME).dtx $(PKGNAME).sty
	$(LATEXMK) $(TEXFLAGS) $(PKGNAME).dtx

clean:
	$(RM) *.aux *.fdb_latexmk *.fls *.ind *.idx *.ilg *.glo *.gls \
          *.log *.lol *.m *.out *.tmp *.toc
