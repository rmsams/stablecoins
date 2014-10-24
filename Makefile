MAIN = 00-main

default: tex

tex: $(MAIN).tex
	pdflatex $(MAIN).tex
	pdflatex $(MAIN).tex

R: $(MAIN).tex
	R CMD BATCH chart1.R

clean: 
	rm *~ *.log *.toc *.aux *.dvi *.log *.out vc.tex *.Rout $(MAIN).pdf .Rhistory Rplots.pdf
