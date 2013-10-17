## one Makefile to make them all

all: totalWordsByFilmRace.tsv

lotr_clean.tsv barchart*.png 01_filterReorder.html: lotr_raw.tsv 01_filterReorder.R
	Rscript -e "knitr::stitch('01_filterReorder.R', template = system.file('misc', 'knitr-template.Rmd', package = 'knitr'))"

stripplot_wordsByRace_*.png totalWordsByFilmRace.tsv: lotr_clean.tsv 02_aggregatePlot.R
	Rscript 02_aggregatePlot.R

clean:
	rm -f lotr_clean.tsv totalWordsByFilmRace.tsv *.png *.md *.html
