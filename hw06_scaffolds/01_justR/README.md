Toy example for [STAT 545A Homework 6](http://www.stat.ubc.ca/~jenny/STAT545A/hw06_puttingAllTogether.html).

Shows how to create a small-but-automated analytical pipline using R alone or R plus the shell.

Demonstration data: the number of words spoken by various characters in the Lord of the Rings trilogy. JB will document general cleaning, analyses, etc. of that data [here](https://github.com/jennybc/lotr).

How to replicate my analysis

  * (Clone the repo! Ha! OK I'm pretending the analyst doesn't use github.)
  * Download into an empty directory:
    - Input data: [`lotr_raw.tsv`](https://raw.github.com/jennybc/STAT545A/master/hw06_scaffolds/01_justR/lotr_raw.tsv)
    - Scripts: [`01_filterReorder.R`](https://raw.github.com/jennybc/STAT545A/master/hw06_scaffolds/01_justR/01_filterReorder.R) and [`02_aggregatePlot.R`](https://raw.github.com/jennybc/STAT545A/master/hw06_scaffolds/01_justR/02_aggregatePlot.R)
    - Makefile-like script: [`Makefile.R`](https://raw.github.com/jennybc/STAT545A/master/hw06_scaffolds/01_justR/Makefile.R)
  * Start a fresh RStudio session, make the above directory is the working directory, open `Makefile.R`, and click on "Source".
  * Alternatively, in a shell: `Rscript Makefile.R`.
  * When you run the pipeline the first time, you will get warnings about `file.remove()` trying to remove files that don't exist. That's OK. They will exist and will be removed and remade on subsequent runs.
