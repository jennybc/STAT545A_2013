



This report was automatically generated with the R package **knitr**
(version 1.4.1).


```r
library(ggplot2)
```

```
## Loading required package: methods
```

```r
library(plyr)

lotrDat <- read.delim("lotr_raw.tsv")
str(lotrDat)
```

```
## 'data.frame':	731 obs. of  5 variables:
##  $ Film     : Factor w/ 3 levels "The Fellowship Of The Ring",..: 1 1 1 1..
##  $ Chapter  : Factor w/ 188 levels "01: Prologue",..: 1 1 1 1 4 8 8 8 8 8..
##  $ Character: Factor w/ 74 levels "Aragorn","Arwen",..: 3 11 21 26 3 3 19..
##  $ Race     : Factor w/ 10 levels "Ainur","Dead",..: 7 4 4 6 7 7 7 1 7 7 ..
##  $ Words    : int  4 5 460 20 214 70 128 197 10 12 ...
```

```r
tail(lotrDat)
```

```
##                       Film             Chapter Character   Race Words
## 726 The Return Of The King 76: The Grey Havens     Bilbo Hobbit    56
## 727 The Return Of The King 76: The Grey Havens    Elrond    Elf     6
## 728 The Return Of The King 76: The Grey Havens     Frodo Hobbit   132
## 729 The Return Of The King 76: The Grey Havens Galadriel    Elf    17
## 730 The Return Of The King 76: The Grey Havens   Gandalf  Ainur    42
## 731 The Return Of The King 76: The Grey Havens       Sam Hobbit    14
```

```r

## reorder Film factor based on story
oldFilm <- levels(lotrDat$Film)
foo <- data.frame(oldFilm = oldFilm)
jOrder <- sapply(c("Fellowship", "Towers", "Return"), function(x) grep(x, oldFilm))
lotrDat <- within(lotrDat, Film <- factor(as.character(lotrDat$Film), oldFilm[jOrder]))
foo$newFilm <- levels(lotrDat$Film)
foo
```

```
##                      oldFilm                    newFilm
## 1 The Fellowship Of The Ring The Fellowship Of The Ring
## 2     The Return Of The King             The Two Towers
## 3             The Two Towers     The Return Of The King
```

```r

## no one knows that the Ainur are the wizards Men should be Man, for
## consistency
foo <- data.frame(oldRace = levels(lotrDat$Race))
lotrDat <- within(lotrDat, Race <- revalue(Race, c(Ainur = "Wizard", Men = "Man")))
foo$newRace <- levels(lotrDat$Race)
foo
```

```
##    oldRace newRace
## 1    Ainur  Wizard
## 2     Dead    Dead
## 3    Dwarf   Dwarf
## 4      Elf     Elf
## 5      Ent     Ent
## 6   Gollum  Gollum
## 7   Hobbit  Hobbit
## 8      Men     Man
## 9   Nazgul  Nazgul
## 10     Orc     Orc
```

```r

## drop some observations and unused factor levels
lotrDat <- droplevels(subset(lotrDat, !(Race %in% c("Gollum", "Ent", "Dead", 
    "Nazgul"))))

## reorder Race based on words spoken
lotrDat <- within(lotrDat, Race <- reorder(Race, Words, sum))
levels(lotrDat$Race)
```

```
## [1] "Orc"    "Dwarf"  "Elf"    "Wizard" "Man"    "Hobbit"
```

```r

## make a plot
p <- ggplot(lotrDat, aes(x = Race, weight = Words))
png("barchart_totalWords.png")
p + geom_bar()
dev.off()
```

```
## pdf 
##   2
```

```r
## using ggsave() led to the undesirable automatic writing of my figures to
## Rplots.pdf this thread seemed helpful ... but did not work for me
## http://stackoverflow.com/questions/17348359/how-to-stop-r-from-creating-empty-rplots-png-file-when-using-ggsave-and-rscript

png("barchart_totalWordsFilmDodge.png")
p + geom_bar(aes(fill = Film), position = position_dodge(width = 0.7))
dev.off()
```

```
## pdf 
##   2
```

```r

## reorder data itself
lotrDat <- arrange(lotrDat, Race, Film, Words)
tail(lotrDat)
```

```
##                       Film                        Chapter Character   Race
## 677 The Return Of The King  58: The Tower Of Cirith Ungol       Sam Hobbit
## 678 The Return Of The King             75: Homeward Bound     Frodo Hobbit
## 679 The Return Of The King               08: The Palantir    Pippin Hobbit
## 680 The Return Of The King            76: The Grey Havens     Frodo Hobbit
## 681 The Return Of The King               08: The Palantir     Merry Hobbit
## 682 The Return Of The King 27: The Parting Of Sam & Frodo       Sam Hobbit
##     Words
## 677    96
## 678    98
## 679   104
## 680   132
## 681   135
## 682   184
```

```r

## write data to file
write.table(lotrDat, "lotr_clean.tsv", quote = FALSE, sep = "\t", row.names = FALSE)
```


The R session information (including the OS info, R version and all
packages used):


```r
sessionInfo()
```

```
## R version 3.0.1 (2013-05-16)
## Platform: x86_64-apple-darwin10.8.0 (64-bit)
## 
## locale:
## [1] C
## 
## attached base packages:
## [1] methods   stats     graphics  grDevices utils     datasets  base     
## 
## other attached packages:
## [1] plyr_1.8        ggplot2_0.9.3.1 roxygen2_2.2.2  digest_0.6.3   
## [5] lattice_0.20-15
## 
## loaded via a namespace (and not attached):
##  [1] MASS_7.3-28        RColorBrewer_1.0-5 brew_1.0-6        
##  [4] colorspace_1.2-2   dichromat_2.0-0    evaluate_0.4.7    
##  [7] formatR_0.9        grid_3.0.1         gtable_0.1.2      
## [10] knitr_1.4.1        labeling_0.2       munsell_0.4.2     
## [13] proto_0.3-10       reshape2_1.2.2     scales_0.2.3      
## [16] stringr_0.6.2      tools_3.0.1
```

```r
Sys.time()
```

```
## [1] "2013-10-17 12:31:35 PDT"
```


