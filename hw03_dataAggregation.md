Go back to [STAT545A home](current.html)

Homework #3 Data aggregation 
========================================================

> Follow the [existing homework submission instructions](hw00_instructions.html) UP TO THE LINK SUBMISSION PART. Submit your links by editing this Google doc -- WARNING: I turned off sharing ~3pm Mon Sept 23 because almost everyone had submitted their links. Contact JB if you need to submit or edit a link.

  * Start with the Gapminder data as provided in [`gapminderDataFiveYear.txt`](http://www.stat.ubc.ca/~jenny/notOcto/STAT545A/examples/gapminder/data/gapminderDataFiveYear.txt).
  * Use the `plyr` package to tackle __some, not all,__ tasks from the list below. __You decide what to work on__ but spend ~2 hours on this. Of course you are welcome to do more if you wish.
  * Write up with R Markdown.
    - Include a narrative, written in English prose, i.e. don't just show code and results
    - Expose your code, i.e. use `echo = FALSE` very sparingly
    - If you tackle a tricky one, first give a clean account of your data aggregation results. You can describe your pain and suffering at the end.
    - Don't use figures! It's an artificial constraint, I know. Why hold back? Focus on data aggregation, we'll talk figures next week and revisit in the next homework. Plus you will get a visceral understanding of how ridiculous it is to do exploration *without* making lots of figures.
  * DUE: Before class begins 9:30am Monday September 23.
    - Compile into an HTML report. Follow the naming convention. Publish the HTML report on the web somewhere, such as on RPubs. Make the slug follow the naming convention.
    - Publish the R Markdown file as a Gist. Follow the naming convention.
    - Share your links by editing the Google doc mentioned above.
 
Tips

  * Perform a superficial check that data import went OK.
  * Give informative, short variable names.
  * Attend to row and column order in reported results.
  * Don't be satisfied merely with correct results; examine your code and see if it can be simpler, more readable, more general.
  
### Menu of data aggregation tasks.







#### Create your own adventure.

You are welcome to create your own exercises by riffing on what you see below. In fact, that's great -- you won't be copying from your office mate and it emulates real life where you first need to think up interesting questions, then solve them. The easiest sort of variation is to do what I ask below but with a different variable, different summary statistic, different tuning parameter, etc.

#### Get the maximum and minimum of GDP per capita for all continents in a "wide" format. Easy.

Produce a data.frame with 3 variables: a continent factor, the minimum GDP per capita, the maximum GDP per capita. There will be one row per continent. Sort on either the minimum or the maximum and assess whether the continents rank similarly w/r/t the other extreme. Discuss.




#### Get the maximum and minimum of GDP per capita for all continents in a "tall" format. Medium/hard.

Produce a data.frame with 3 variables: a continent factor, a GDP per capita summary statistic, a factor that describes the statistic (i.e. "min" vs "max"). There will be one row per continent * statistic combination. *Don't use reshaping -- get this directly with data aggregation.*



#### Look at the spread of GDP per capita within the continents. Easy.

Measures of spread (we will discuss in class soon, just try them out!):

  * standard deviation or variance -- see `sd()` and `var()`
  * median absolute deviation -- see `mad()`
  * interquartile range -- see `IQR()`
  
Produce a data.frame with one row per continent and variables containing the different measures of spread for GDP/capita. Sort on one of those and assess whether the continents rank similarly w/r/t heterogeneity of GDP/capita by the other measures. Discuss.
 



#### Compute a trimmed mean of life expectancy for different years. Easy/medium.

Compute the average life expectancy by year, as a warm-up exercise. Then consider an alternative: a [*trimmed mean*](http://en.wikipedia.org/wiki/Truncated_mean). There is a `trim` argument in the built-in function `mean()`. Pick a modest trim fraction that is greater than 0. Report your sorted results. Make sure your trim level is well-documented.




#### How is life expectancy changing over time on different continents? "Tall" format. Easy/medium.

Get a data.frame with 3 variables: continent, year, and mean or median life expectancy. What are the trends over time? Are they same or different across the continents? Is this easy to assess from this data.frame?




#### How is life expectancy changing over time on different continents? "Wide" format. Hard (or possibly silly).

Get a data.frame with 1 + 5 = 6 variables: year and then one variable per continent, giving mean or median life expectancy. Is there a natural way to do this in `plyr` without hard-wiring the continent-specific variables and without reshaping an intermediate result? Since I am new-ish to `plyr`, I don't know yet if this is possible and/or a totally stupid way to go about this. So this one is for people who are happy to play around a bit. *Hint: I've made some progress here and advise you look into `daply()`.*




#### Count the number of countries with low life expectancy over time by continent. "Tall" format. Medium/hard.

Compute some measure of worldwide life expectancy -- you decide -- a mean or median or some other quantile or perhaps your current age. The determine how many countries on each continent have a life expectancy less than this benchmark, for each year. Produce a data.frame with 3 variables: continent, year, and a country count. What's the trend over time? Is that trend the same for all continents? How much fun is it to assess this from this tall table?




#### Compute the proportion of countries with low life expectancy over time by continent. Medium extension of another task.

The continents have very different numbers of countries. Maybe the proportion of "low life expectancy" countries is more relevant than the raw count. Or maybe the final table should report both? Work on that.




#### Report the absolute and/or relative abundance of countries with low life expectancy over time by continent. "Wide" format. Extension of another task of unknown difficulty / value.

Create a table with one row per year and one column -- at least conceptually -- per continent. In that "column" report the absolute and/or relative abundance of "low life expectancy" countries. Is there a natural way to do this in `plyr` without hard-wiring the continent-specific variables and without reshaping an intermediate result? Since I am new-ish to `plyr`, I don't know yet if this is possible and/or a totally stupid way to go about this. So this one is for people who are happy to play around a bit. *Hint: I've made some progress here and advise you look into `daply()`. I ended up skipping straight to character output versus an object appropriate for further computation or graphing. Sometimes it's better to approach these ill-defined tasks from a different angle.*
 



#### Find countries with interesting stories. Open-ended and, therefore, hard. Realistic!

It was easy (see above) to get the minimum life expectancy seen on each continent by year. Now try to report the year, the continent, the minimum (or max or whatever) life expectancy AND the country it pertains to. You could do something similar with GDP per capita or population (though result likely to be boring with population). *Hint: read up on `which.min()` and `which.max()`.*

Consider the linear regression we fit in tutorial of life expectancy vs. time. Find the min (and/or max) of the slope (and/or the intercept) within each continent. Report these interesting countries and some info about them in a data.frame. This might work for other variables too.

Sudden, substantial departures from the temporal trend is interesting. This goes for life expectancy, GDP per capita, or population. How might one operationalize this notion of "interesting"?

  * Fit a regression of the response vs. time. Consider the residuals. Determine if there are 1 or more freakishly large residuals, in an absolute sense or relative to some estimate of background variability. If there are, consider that country "interesting".
  * Fit a regression using ordinary least squares and a robust technique. Determine the difference in estimated parameters under the two approaches. If it is large, consider that country "interesting".

Make a data.frame of interesting countries, reporting their continent affiliation, and summary statistics on life expectancy (or GDP/capita or whatever you were looking at). Won't it be interesting to start to graphically explore them ... next week.




### Student work

  * attali-dea [source](https://gist.github.com/daattali/6673361#file-stat545a-2013-hw03_attali-dea-rmd) | [report](http://rpubs.com/daattali/stat545a-2013-hw03_attali-dea) 
  * baik-jon [source](https://gist.github.com/jonnybaik/6667437#file-stat545a-2013-hw03_baik-jon-rmd) | [report](http://rpubs.com/jonnybaik/stat545a-2013-hw03_baik-jon)
  * bolandnazar-moh [source](https://gist.github.com/ArephB/6667983#file-stat545a-2013-hw03_bolandnazar-moh-rmd) | [report](http://rpubs.com/aref/stat545a-2013-hw03_bolandnazar-moh)
  * brueckman-chr EDIT HERE
  * chu-jus [source](https://gist.github.com/JustinChu/6667252#file-stat545a-2013-hw03_chu-jus-rmd) | [report](http://rpubs.com/cjustin/stat545a-2013-hw03_chu-jus)
  * Zachary Daly: 
[source](https://gist.github.com/ZDaly/6666365#file-stat545a-2013-hw03_daly-zac-rmd)
[report](http://rpubs.com/Zdaly/stat545a-2013-hw03_daly-zac)
  * dinsdale-dan [source](https://gist.github.com/danieldinsdale/6665986#file-stat545a-2013-hw03_dinsdale-dan-rmd) | [report](http://rpubs.com/danieldinsdale/stat545a-2013-hw03_dinsdale-dan)
  * gao-wen [source](https://gist.github.com/sibyl229/6668047#file-stat545a-2013-hw03_gao-wen-rmd) | [report](http://rpubs.com/less/stat545a-2013-hw03_gao-wen)
  * Matthew Gingerich: [source](https://gist.github.com/MattGingerich/6667676#file-stat545a-2013-hw03_gingerich-mat-rmd) | [report](http://rpubs.com/majugi/stat545a-2013-hw03_gingerich-mat)
  * hu-yum [source](https://gist.github.com/smilecat/6666754#file-stat545a-2013-hw03_hu-yum-rmd) | [report](http://rpubs.com/smilecat/stat545a-2013-hw03_hu-yum)
  * jewell-sea [source](https://gist.github.com/jewellsean/bf3c28b63e6f99953153#file-stat545a-2013-hw03_jewell-sea-rmd) | [report](http://rpubs.com/jewellsean/stat545a-2013-hw03_jewell-sea)
  * johnston-reb [source](https://gist.github.com/rebjoh/6667299#file-stat545a-2013-hw03_johnston-reb-rmd) | [report](http://rpubs.com/rljohn/stat545a-2013-hw03_johnston-reb)
  * mahdiar khosravi [source](https://gist.github.com/Mahdiark/6671508#file-stat545a-2013-hw03_khosravi-mah-rmd) | [report](http://rpubs.com/mahdiar/stat545a-2013-hw03_khosravi-mah)
  * Wooyong Lee: 
[source](https://gist.github.com/folias/6661622#file-stat545a-2013-hw03_lee-woo) | [report](http://rpubs.com/folias/stat545a-2013-hw03_lee-woo)
  * liao-wei: [source](https://gist.github.com/feiba/6674299#file-stat545a-2013-hw03_liao_wei-rmd) | [report](http://rpubs.com/winson/stat545a-2013-hw03_liao_wei)
  * ma-hui [source](https://gist.github.com/horsehuiting/6673172#file-stat545a-2013-hw03_ma-hui-rmd) | [report](http://rpubs.com/Huiting/stat545a-2013-hw03_ma-hui)
  * meng-viv [source](https://gist.github.com/vmeng321/6667418#file-stat545a-2013-hw03_meng-viv-rmd) | [report](http://rpubs.com/vmeng321/stat545a-2013-hw03_meng-viv)
  * mohd abul basher-abd [source](https://gist.github.com/atante/6568521#file-stat545a-2013-hw02_mohd-abul-basher-abd-rmd) | [report](http://rpubs.com/meitantei/stat545a-2013-hw02_mohdabulbasher-abd) STILL REFLECTS HW02
  * ni-jac [source](https://gist.github.com/jacknii/6663292#file-stat545a-2013-hw03_ni-jac-rmd) | [report](http://rpubs.com/jackni/stat545a-2013-hw03_ni-jac)
  * Christian Okkels [source](https://gist.github.com/cbokkels/6654193#file-stat545a-2013-hw03_okkels-chr-rmd) | [report](http://rpubs.com/cbokkels/stat545a-2013-hw03_okkels-chr)
  * Greg Owens: [source](https://gist.github.com/opsin/6666283#file-stat545a-2013-hw03_owens-greg-rmd) | [report](http://rpubs.com/opsin/stat545a-2013-hw03_owens-greg)
  * Mina Park: [source](https://gist.github.com/parkm87/6665438#file-stat545a-2013-hw03_park-min-rmd) | [report](http://rpubs.com/parkm87/stat545a-2013-hw03_park-min)
  * spencer-nei [source](https://gist.github.com/neilspencer/6558151#file-stat545a-2013-hw03_spencer-neil-rmd) | [report](http://rpubs.com/neil_spencer/stat545a-2013-hw03_spencer-nei)
  * wang-ton [source](https://gist.github.com/yzhxh/6670081#file-stat545a-2013-hw03_wang-ton-rmd) | 
[report](http://rpubs.com/yzhxh/stat545a-2013-hw03_wang-ton)
  * Leah Weber: [source](https://gist.github.com/lweber21/6667096#file-stat545a-2013-hw03_weber-lea-rmd) | [report](http://rpubs.com/lweber21/stat545a-2013-hw03_weber-lea)
  * woollard-geo [source](https://gist.github.com/geoffwoollard/6666457#file-stat545a-2013-hw03_woollard-geo-rmd) | [report](http://rpubs.com/gwoollard/stat545a-2013-hw03_woollard-geo)
  * xue-xinxin [source](https://gist.github.com/xxue/6663673#file-stat545a-2013-hw03_xue-xinxin-rmd) | [report](http://rpubs.com/xxue/8829) 
  * yuen-ama [source](https://gist.github.com/amandammor/6666007#file-stat545a-2013-hw03_yuen-ama-rmd) | [report](http://rpubs.com/amandammor/stat545a-2013-hw03_yuen-ama)
  * zhang-yim [source](https://gist.github.com/zym268/6667601#file-stat545a-2013-hw03_zhang-yim-rmd)| [report](http://rpubs.com/zym268/STAT545A-2013-hw03_zhang-yim)
  * zhang-jon [source](https://gist.github.com/jzhang722/6665486#file-stat545a-2013-hw03_zhang-jon-rmd) | [report](http://rpubs.com/jzhang722/stat545a-2013-hw03_zhang-jon)
  * zhang-yif 
[source](https://gist.github.com/dora7870/6630819#file-stat545a-2013-hw03_zhang-yif-rmd) | [report](http://rpubs.com/dora7870/stat545a-2013-hw03_zhang-yif)
  * zhang-jin [source](https://gist.github.com/0527zhangjinyuan/6673340#file-stat545a-2013-hw03_zhang-jin-rmd) | [report](http://rpubs.com/zhangjinyuan/stat545a-2013-hw03_zhang-jin)
  * inskip-jes [source](https://gist.github.com/jinskip/6665098#file-stat545a-2013-hw03_inskip-jes-rmd) | [report](http://rpubs.com/jinskip/stat545a-2013-hw03_inskip-jes)
  * liu-yan [source](https://gist.github.com/swallow0001/6673645#file-stat545a-2013-hw3_liu) | [report](http://rpubs.com/swallow0001/STAT545a-2013-hw3_Liu)
  * haraty-mon EDIT HERE
  * yuen-mac [source](https://gist.github.com/myuen/6672095#file-stat545a-2013-hw03_yuen-mac-rmd) | [report](http://rpubs.com/myuen/stat545a-2013-hw03_yuen-mac)


<div class="footer">
This work is licensed under the  <a href="http://creativecommons.org/licenses/by-nc/3.0/">CC BY-NC 3.0 Creative Commons License</a>.
</div>
