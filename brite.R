a <- 2
b <- 7
sigSq <- 0.5
n <- 400

set.seed(1234)
x <- runif(n)
y <- a + b * x + rnorm(n, sd = sqrt(sigSq))

plot(x, y)
abline(a, b, col = "blue", lwd = 2)

dev.print(pdf, "toyline-base.pdf")

library(lattice)
xyplot(y ~ x, type = c("p", "r"), col.line = "blue", lwd = 2)

dev.print(pdf, "toyline-lattice1.pdf")

xyplot(y ~ x,
       panel = function(x, y, ...) {
         panel.xyplot(x, y, ...)
         panel.abline(a, b, col.line = "blue", lwd = 2)
       })

dev.print(pdf, "toyline-lattice2.pdf")

## get the gapminder data
gdURL <- "http://www.stat.ubc.ca/~jenny/notOcto/STAT545A/examples/gapminder/data/gapminderDataFiveYear.txt"
gDat <- read.delim(file = gdURL)

str(gDat)

xyplot(lifeExp ~ gdpPercap, gDat)

## sidebar about using names, passing a data.frame
jDat <- subset(gDat, country == "Spain")
plot(x = jDat$year, y = jDat$lifeExp)
with(jDat,
     plot(x = year, y = lifeExp))
plot(x = jDat[ , 3], y = jDat[ , 5])
plot(lifeExp ~ year, jDat)
xyplot(lifeExp ~ year, jDat)
xyplot(lifeExp ~ year, gDat, subset = country == "Spain")
## end sidebar

xyplot(lifeExp ~ gdpPercap, gDat)

xyplot(lifeExp ~ gdpPercap, gDat,
       grid = TRUE)

## log, the sub-optimal way
xyplot(lifeExp ~ log10(gdpPercap), gDat,
       grid = TRUE)

## logging, better way ... step 1
xyplot(lifeExp ~ gdpPercap, gDat,
       grid = TRUE,
       scales = list(x = list(log = 10)))
## show slides of quick tour of log axis stuff

## begin exploration of type
## first, do nothing
xyplot(lifeExp ~ gdpPercap, gDat,
       grid = TRUE,
       scales = list(x = list(log = 10)),
       type = "p")

xyplot(lifeExp ~ gdpPercap, gDat,
       grid = TRUE,
       scales = list(x = list(log = 10)),
       type = c("p", "r"))

xyplot(lifeExp ~ gdpPercap, gDat,
       grid = TRUE,
       scales = list(x = list(log = 10)),
       type = c("p", "r"), col.line = "darkorange", lwd = 3)

xyplot(lifeExp ~ gdpPercap, gDat,
       grid = TRUE,
       scales = list(x = list(log = 10)),
       type = c("p", "smooth"), col.line = "darkorange", lwd = 3)

## use the groups argument
xyplot(lifeExp ~ gdpPercap, gDat,
       grid = TRUE,
       scales = list(x = list(log = 10)),
       group = continent)

## auto.key
xyplot(lifeExp ~ gdpPercap, gDat,
       grid = TRUE,
       scales = list(x = list(log = 10)),
       group = continent, auto.key = TRUE)

## groups + type "r" or "smooth"
xyplot(lifeExp ~ gdpPercap, gDat,
       grid = TRUE,
       scales = list(x = list(log = 10)),
       group = continent, auto.key = TRUE,
       type = c("p", "smooth"), lwd = 4)

## conditioning
xyplot(lifeExp ~ gdpPercap | continent, gDat,
       grid = TRUE,
       scales = list(x = list(log = 10)))

## conditioning + type "r" or "smooth"
xyplot(lifeExp ~ gdpPercap | continent, gDat,
       grid = TRUE,
       scales = list(x = list(log = 10)),
       type = c("p", "smooth"), col.line = "darkorange", lwd = 4)

## combat overplotting
xyplot(lifeExp ~ gdpPercap | continent, gDat,
       grid = TRUE,
       scales = list(x = list(log = 10)),
       type = c("p", "smooth"), col.line = "darkorange", lwd = 4,
       pch = 16, alpha = 1/2)

xyplot(lifeExp ~ gdpPercap | continent, gDat,
       grid = TRUE,
       scales = list(x = list(log = 10)),
       panel = panel.smoothScatter)

library(hexbin)
hexbinplot(lifeExp ~ gdpPercap | continent, gDat,
           scales = list(x = list(log = 10)),
           aspect = 1, bins=50,
           type = c("p", "r"), col.line = "darkorange", lwd = 2)

## being the boss of your factors
## dropping levels
## reordering
jCountries <- c("Libya", "Rwanda",
                "Denmark", "Gabon",
                "China", "Honduras")

## this will be slow to render mess due to legend having all 142 countries
xyplot(lifeExp ~ year, gDat,
       subset = country %in% jCountries,
       group = country, auto.key = TRUE,
       grid = TRUE, type = "l")

jDat <- droplevels(subset(gDat,
                          country %in% jCountries))

xyplot(lifeExp ~ year, jDat,
       group = country, auto.key = TRUE,
       grid = TRUE, type = "l")

xyplot(lifeExp ~ year,
       data = droplevels(subset(gDat, country %in% jCountries)),
       group = country, auto.key = TRUE,
       grid = TRUE, type = "l")

levels(jDat$country)
library(plyr)
ddply(jDat, ~ country, summarise, minLifeExp = min(lifeExp))
foo <- reorder(jDat$country, jDat$lifeExp, mean)
levels(foo)

xyplot(lifeExp ~ year, jDat,
       group = foo, auto.key = TRUE,
       grid = TRUE, type = "l")

foo <- reorder(jDat$country, -1 * jDat$lifeExp, mean)
xyplot(lifeExp ~ year, jDat,
       group = foo, auto.key = TRUE,
       grid = TRUE, type = "l")

xyplot(lifeExp ~ year, jDat,
       group = reorder(country, lifeExp, mean), auto.key = TRUE,
       grid = TRUE, type = "l")

## we have built up this awesome command:
## no intermediate computations or objects!
## one call says it all
xyplot(lifeExp ~ year,
       data = droplevels(subset(gDat, country %in% jCountries)),
       group = reorder(country, lifeExp, mean), auto.key = TRUE,
       grid = TRUE, type = "l")

dev.print(pdf,
          "lifeExpVsYear-sixCountries.pdf",
          width = 9, height = 7)

#pdf("figs/lifeExpVsYear-sixCountries.pdf",
#    width = 9, height = 7)
## plot goes here
#dev.off()

xyplot(lifeExp ~ year | country, jDat,
       grid = TRUE, type = "b")

## other plot types
densityplot(~ lifeExp, gDat)

densityplot(~ lifeExp | continent, gDat)

densityplot(~ lifeExp | continent, gDat,
            plot.points = FALSE, ref = TRUE)

densityplot(~ lifeExp, gDat,
            group = continent, auto.key = TRUE)

t.test(lifeExp ~ year, gDat,
       subset = year %in% c(1952, 2007))

densityplot(~ lifeExp | factor(year), gDat,
            subset = year %in% c(1952, 2007),
            grid = TRUE)

densityplot(~ lifeExp, gDat,
            group = reorder(continent, lifeExp), auto.key = TRUE)

table(gDat$continent)
barchart(table(gDat$continent))
dotplot(table(gDat$continent), type = "h", col.line = NA)
dotplot(table(gDat$continent), type = c("p", "h"), col.line = NA)

stripplot(lifeExp ~ continent, gDat,
          subset = year == 2007)

stripplot(lifeExp ~ continent, gDat,
          subset = year == 2007,
          jitter.data = TRUE)

stripplot(lifeExp ~ continent, gDat,
          subset = year == 2007,
          jitter.data = TRUE,
          type = c("p", "a"), fun = median)

stripplot(lifeExp ~ reorder(continent, lifeExp), gDat,
          subset = year == 2007,
          jitter.data = TRUE,
          type = c("p", "a"), fun = median)

stripplot(lifeExp ~ reorder(continent, lifeExp),
          gDat, subset = year %in% c(1952, 1977, 2007),
          groups = year, auto.key = TRUE,
          jitter.data = TRUE,
          type = c("p", "a"), fun = median)
## auto.key stills shows all years ... yuck

stripplot(lifeExp ~ reorder(continent, lifeExp),
          subset(gDat, subset = year %in% c(1952, 1977, 2007)),
          groups = reorder(year, -1 * year), auto.key = TRUE,
          jitter.data = TRUE,
          type = c("p", "a"), fun = median)

stripplot(lifeExp ~ reorder(continent, lifeExp),
          subset(gDat, subset = year %in% c(1952, 1977, 2007)),
          groups = year, auto.key = list(reverse.rows = TRUE),
          jitter.data = TRUE,
          type = c("p", "a"), fun = median)

stripplot(lifeExp ~ factor(year),
          droplevels(subset(gDat, continent != "Oceania")),
          groups = reorder(continent, lifeExp),
          auto.key = list(reverse.rows = TRUE),
          jitter.data = TRUE,
          type = c("p", "a"), fun = median)

stripplot(lifeExp ~ reorder(continent, lifeExp), gDat,
          jitter.data = TRUE,
          type = c("p", "a"), fun = median)

## ggplot2
library(ggplot2)
ggplot(gDat, aes(x = gdpPercap, y = lifeExp)) + geom_point()
ggplot(gDat, aes(x = log10(gdpPercap), y = lifeExp)) + geom_point()
ggplot(gDat, aes(x = gdpPercap, y = lifeExp)) + geom_point() +
  scale_x_log10()
ggplot(gDat, aes(x = gdpPercap, y = lifeExp)) + geom_point() +
  scale_x_log10() + geom_smooth()
ggplot(gDat, aes(x = gdpPercap, y = lifeExp)) + geom_point() +
  scale_x_log10() + geom_smooth(method = "lm")
ggplot(gDat, aes(x = gdpPercap, y = lifeExp)) +
  scale_x_log10() + geom_bin2d()
ggplot(gDat, aes(x = gdpPercap, y = lifeExp, color = continent)) + geom_point() +
  scale_x_log10()
ggplot(gDat, aes(x = gdpPercap, y = lifeExp, color = continent)) + geom_point() +
  scale_x_log10() + geom_smooth()
ggplot(gDat, aes(x = gdpPercap, y = lifeExp)) + geom_point() +
  scale_x_log10() + facet_wrap(~ continent)
ggplot(gDat, aes(x = gdpPercap, y = lifeExp)) + geom_point() +
  scale_x_log10() + facet_wrap(~ continent) + geom_smooth()

ggplot(gDat, aes(x = lifeExp)) + geom_density()
ggplot(gDat, aes(x = lifeExp, color = continent)) + geom_density()
ggplot(gDat, aes(x = lifeExp)) + geom_density() +
  facet_wrap(~ continent)

ggplot(subset(gDat, subset = year == 2007),
       aes(x = continent, y = lifeExp)) + geom_point()

ggplot(subset(gDat, subset = year == 2007),
       aes(x = continent, y = lifeExp)) +
  geom_jitter(position = position_jitter(width = .2))

## below here very speculative ....

ggplot(subset(gDat, subset = year %% 10 == 2 & continent != "Oceania"),
       aes(x = gdpPercap, y = lifeExp), color = country) + geom_point() +
  scale_x_log10() + facet_grid(continent ~ year)


ggplot(subset(gDat, country == "Zimbabwe"))  +
  geom_point(aes(x = year, y = lifeExp))

)

ggplot(subset(gDat, year == 2007),
       aes(x = gdpPercap, y = lifeExp,
           colour=continent, size = sqrt(pop/pi))) + geom_point() +
  scale_x_log10()

ggplot(gDat, aes(x = lifeExp)) + geom_histogram()

ggplot2

## what's left?
## specifying one's own color palette, don't show construction but show application?, ## show par.settings()
## show writing a new panel function (main point: sizing the circles)

## import a version of the data that has country colors and is sorted
## such that little countries appear after big
cdURL <- "http://www.stat.ubc.ca/~jenny/notOcto/STAT545A/examples/gapminder/data/gapminderDataColorReady.txt"
cDat <- read.delim(file = cdURL, as.is = 7)
str(cDat)


