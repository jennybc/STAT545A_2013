## one Makefile to make them all

all: totalWordsByFilmRace.tsv

lotr_clean.tsv: lotr_raw.tsv 01_filterReorder.R
	Rscript 01_filterReorder.R

stripplot_wordsByRace_*.png totalWordsByFilmRace.tsv: lotr_clean.tsv 02_aggregatePlot.R
	Rscript 02_aggregatePlot.R

clean:
	rm -f lotr_clean.tsv totalWordsByFilmRace.tsv *.png
