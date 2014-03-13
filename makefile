TEXFLAGS = -e '$$pdflatex=q/pdflatex %O %S/' -pdf
LATEXMK  = latexmk
RM       = rm -f
PKGNAME  = matlab-prettifier
PACKAGE  = $(PKGNAME).dtx \
           $(PKGNAME).ins \
           $(PKGNAME).pdf \
           README         \
           makefile

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

dist: $(PACKAGE)
	$(RM) $(PKGNAME).zip
	zip $(PKGNAME).zip $(PACKAGE)

clean:
	$(RM) *.aux *.fdb_latexmk *.fls *.ind *.idx *.ilg *.glo *.gls \
          *.log *.lol *.m *.out *.tmp *.toc

cleanall: clean
	$(RM) $(PKGNAME).pdf $(PKGNAME).zip

.PHONY: all doc dist clean cleanall

