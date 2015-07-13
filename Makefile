# LaTeX Makefile
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
	.log\
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
	./code/*.Rout\

# Usually, only these lines need changing
filename  := "main"
rdir      := "./code"
figpath   := "./fig"

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

pdf:
	pdflatex -synctex=1 -interaction=nonstopmode ${filename}.tex
	biber ${filename}
	pdflatex -synctex=1 -interaction=nonstopmode ${filename}.tex
	pdflatex -synctex=1 -interaction=nonstopmode ${filename}.tex

show:
	open ${filename}.pdf

check:
	java -jar docCheck.jar chapter
	open docCheckOutput.csv

clean:
	rm -f $(LATEXFILES)
	rm -f ${filename}.pdf
	rm -f docCheckOutput.csv
	rm -f $(RFILES)

# RUN Example R FILE
code:
	R CMD BATCH ./code/example.R
# Check the output
	cat ./code/example.Rout
.PHONY: all pdf show check clean code
