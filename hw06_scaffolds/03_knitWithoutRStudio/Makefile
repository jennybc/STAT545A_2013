## one Makefile to make them all

all: totalWordsByFilmRace.tsv 03_doStuff.html

lotr_clean.tsv barchart*.png 01_filterReorder.html: lotr_raw.tsv 01_filterReorder.R
	Rscript -e "knitr::stitch_rmd('01_filterReorder.R')";	rm -r 01_filterReorder.md figure

stripplot_wordsByRace_*.png totalWordsByFilmRace.tsv: lotr_clean.tsv 02_aggregatePlot.R
	Rscript 02_aggregatePlot.R

03_doStuff.html: 03_doStuff.Rmd
	Rscript -e "knitr::knit2html('03_doStuff.Rmd')"; rm -r 03_doStuff.md figure

clean:
	rm -rf lotr_clean.tsv totalWordsByFilmRace.tsv *.png 0*.md *.html figure
