## one Makefile to make them all

all: totalWordsByFilmRace.tsv

lotr_clean.tsv barchart*.png 01_filterReorder.html: lotr_raw.tsv 01_filterReorder.R
	Rscript -e "knitr::stitch_rmd('01_filterReorder.R')";	rm -r 01_filterReorder.md figure

stripplot_wordsByRace_*.png totalWordsByFilmRace.tsv: lotr_clean.tsv 02_aggregatePlot.R
	Rscript 02_aggregatePlot.R

clean:
	rm -rf lotr_clean.tsv totalWordsByFilmRace.tsv *.png *.md *.html figure
