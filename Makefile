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
	*.log\
	*.lot\
	*.maf\
	*.mtc\
	*.mtc*\
	*.nav\
	*.nlo\
	*.out\
	*.pdfsync\
	*.ps\
	*.pdf\
	*.run.xml\
	*.snm\
	*.synctex.gz\
	*.toc\
	*.vrb\
	*.xdy\
	*.tdo\

# Usually, only these lines need changing
filename := "main"
rdir     := "./code"
figpath  := "./fig"
pdfpath  := "C:/Program Files (x86)/Adobe/Reader 11.0/Reader/AcroRd32.exe"
# list R files
rfiles   := $(wildcard $(rdir)/*.R)
# Indicator files to show R file has run
OUT_FILES:= $(rfiles:.R=.Rout)

all:
	make clean
	make check
	make pdf
	make view

pdf:
	pdflatex -synctex=1 -interaction=nonstopmode ${filename}.tex
	biber ${filename}
	pdflatex -synctex=1 -interaction=nonstopmode ${filename}.tex
	pdflatex -synctex=1 -interaction=nonstopmode ${filename}.tex

view:
	${pdfpath} ${filename}.pdf

check:
	java -jar docCheck.jar chapter

.PHONY: clean all pdf view check

clean:
	rm -f $(LATEXFILES)
	rm -f SunoreDocCheckOutput.txt

# RUN EVERY R FILE
r:
	$(rdir)/rfiles.Rout: $(rdir)/$(rfiles).R
	R CMD BATCH $(rdir)/$(rfiles).R
# Check the output
	cat ${rpath}.Rout
# Run R files
tex:
	R --no-save --no-restore < $(rdir)/example.R
r2:
	Rscript ${rpath}.R
