## Minimal example demonstrating Warning fiasco re: `reorder.factor()` from gdata

## verify a fresh clean search path
search()

## tiny excerpt from some Gapminder data I teach with
foo <- data.frame(country = c("China", "Cuba", "Gambia", "Mali", "Norway"),
                  continent = c("Asia", "Americas", "Africa", "Africa", "Europe"),
                  intercept = c(47.2, 62.2, 28.4, 33.1, 72.2),
                  slope = c(0.53, 0.32, 0.58, 0.38, 0.13))
foo

## showing students about reordering
levels(foo$country) # default alphabetical order
levels(reorder(foo$country, foo$intercept)) # increasing intercept order

## load gdata
#suppressMessages(library(gdata))
library(gdata)

## verifying gdata is loaded
search()

levels(foo$country) # default alphabetical order

## now reorder.factor() from gdata gets called instead of reorder() from base

## I understand why there is no reordering, because FUN has no default in gdata's reorder.factor

## BUT why do I get these Warnings? only when processed with knitr and not in the Console?
levels(reorder(foo$country, foo$intercept)) ## does nothing AND Warnings

## Warnings persist even if I specify FUN, but I do succeed in reordering!
levels(reorder(foo$country, foo$intercept, mean))  ## works BUT Warnings

## force the use of reorder from stats
levels(stats:::reorder.default(foo$country, foo$intercept))

sessionInfo()
