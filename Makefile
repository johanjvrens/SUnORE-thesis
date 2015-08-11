# LaTeX Makefile
# Usually, only these lines need changing
filename  := "main"
rdir      := "./code"
rfile     := "example"
figpath   := "./fig"
docfile   := "docCheckOutput"
#===============================================================================
LATEXFILES = 	*.acn\
	*.acr\
	*.alg\
	*.aux\
	*.bbl\
	*.bcf\
	*.blg\
	*.dvi\
	*.fdb_latexmk\
	*.glg\
	*.glo\
	*.gls\
	*.idx\
	*.ilg\
	*.ind\
	*.ist\
	*.loa\
	*.lof\
	*.log\
	*.lot\
	*.maf\
	*.mtc\
	*.mtc*\
	*.nav\
	*.nlo\
	*.out\
	*.pdfsync\
	*.run.xml\
	*.snm\
	*.synctex.gz\
	*.toc\
	*.vrb\
	*.xdy\
	*.tdo\

RFILES = 	.Rout\
	.RData\
	$(rdir)/*.Rout\

# list R files
rfiles   := $(wildcard $(rdir)/*.R)
# Indicator files to show R file has run
OUT_FILES:= $(rfiles:.R=.Rout)

all:
	make clean
	make check
	make code
	make pdf
	make show

build:
	make clean
	make code
	make pdf
	make show

clean:
	rm -f $(LATEXFILES)
	rm -f ${filename}.pdf
	rm -f ${docfile}.csv
	rm -f $(RFILES)

check:
	java -jar docCheck.jar chapter
	open ${docfile}.csv

# RUN Example R FILE
code:
	Rscript $(rdir)/$(rfile).R

pdf:
	pdflatex -synctex=1 -interaction=nonstopmode ${filename}.tex
	biber ${filename}
	pdflatex -synctex=1 -interaction=nonstopmode ${filename}.tex
	pdflatex -synctex=1 -interaction=nonstopmode ${filename}.tex

show:
	open ${filename}.pdf

.PHONY: all build clean check code pdf show
