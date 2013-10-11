library(ggplot2)
library(plyr)

lotrDat <- read.delim("lotr_raw.tsv")

## drop some observations and unused factor levels
lotrDat <-
  droplevels(subset(lotrDat,
                    !(Race %in% c("Gollum", "Ent", "Dead", "Nazgul"))))

## reorder Race factor based on median words spoken
lotrDat <- within(lotrDat, Race <- reorder(Race, Words, median))

## reorder Film factor based on story
oldLevels <- levels(lotrDat$Film)
jOrder <- sapply(c("Fellowship", "Towers", "Return"),
                 function(x) grep(x, oldLevels))
lotrDat <- within(lotrDat,
                  Film <- factor(as.character(lotrDat$Film),
                                 oldLevels[jOrder]))

## make a plot
p <- ggplot(lotrDat, aes(x = Race, y = Words)) + scale_y_log10() +
  geom_jitter(alpha = 1/2, position = position_jitter(width = 0.1))
p + stat_summary(fun.y = median, pch = 21, fill = "orange",
                 geom = "point", size = 6)
ggsave("stripplot_wordsSpoken.png")

## reorder data itself
lotrDat <- arrange(lotrDat, Race, Film, Words)

## write data to file
write.table(lotrDat, "lotr_clean.tsv", quote = FALSE,
            sep = "\t", row.names = FALSE)