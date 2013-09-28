Go back to [STAT545A home](current.html)

Homework #4 Visualize a quantitative variable with `lattice` 
========================================================

> Follow the [existing homework submission instructions](hw00_instructions.html). By 9:30am Monday September 30, be prepared to share your links via a Google doc.

  * Start with the Gapminder data as provided in [`gapminderDataFiveYear.txt`](http://www.stat.ubc.ca/~jenny/notOcto/STAT545A/examples/gapminder/data/gapminderDataFiveYear.txt).
  * Pick at least two data aggregation tasks inspired by [homework 3](hw03_dataAggregation.html), recapped below. __You decide what to work on__ but spend ~2 hours on this. Of course you are welcome to do more if you wish.
  * Try to pick tasks that you did not do and modify (or at least read) data aggregation code from a fellow student (best!) or JB.
    - If applicable, state and link to the student's code and report.
    - Comment on their HW 3 report and/or code if you wish. Be kind but constructive.
    - Notice what makes code hard vs. easy to understand and re-use. This foretells what revisiting your own code will feel like 6 months from now.
  * Use the `lattice` package to create "companion" graphics, at least one per data aggregation task. So make at least two good figures.
    - Your figure does not have to depict every last number from the data aggregation result. Use your judgement.
    - The figure can illustrate things that are hard/impossible to see in the data aggregation result.
    - Goal: the table and the figure complement each other!
    - Notice which data formats make better inputs for plotting functions vs. for human-friendly tables.
  * Write up with R Markdown.
    - Include a narrative, written in English prose. Don't *just* show code and results.
    - Expose your code, i.e. use `echo = FALSE` very sparingly.
  * DUE: Before class begins 9:30am Monday September 30.
    - Compile into an HTML report. Follow the naming convention. Publish the HTML report on the web somewhere, such as on RPubs. Make the slug follow the naming convention.
    - Publish the R Markdown file as a Gist. Follow the naming convention.
    - Share your links by editing the Google doc mentioned above.
 
Tips

  * Perform a superficial check that data import went OK.
  * Give informative, short variable names, so you don't need to fiddle with `xlab =` etc. Table headings and axis labels don't need to be "publication ready", just transparent.
  * Attend to the order of your factor levels.
  * Feel free to use `lattice` functions we haven't explicitly covered yet. In particular, `xyplot()` might be handy and basic use is pretty easy. 
  * You are __encouraged__ to drop Oceania right from the start.
  
### Menu of data aggregation tasks to explore with a figure.

<!---
#### Disclaimer

This homework and my solutions are about the *figures*. I include companion tables of numbers from performing data aggregation to model real world behavior. I mostly expose my figure-making code here and mostly hide the data aggregation code. Why? Because I did lots of fiddling with reshaping and changing factor level order and it's probably overkill for people new to R. I am probably not making the best use of, e.g., the `reshape2` package. If you want gory details, look at the [source](https://github.com/jennybc/STAT545A/blob/master/hw04_univariateLattice.rmd).
--->

#### Choose your own adventure.

You are welcome to improvise. Wherever I say "life expectancy", you could substitute "GDP per capita". When I say "max", feel free to look at the 0.9 quantile. You get the idea.




<!---
#### Load the Gapminder data and the `plyr`, `xtable`, `lattice`, `latticeExtra`, and `reshape2` packages
--->










#### Examine "typical" life expectancy for different years.

Report what your measure of typical life expectancy is. If you use something like a trimmed mean, report the trim level properly somewhere close by or in figure.




<!---Life expectancy, trimmed mean, trim = ??:--->






#### How is life expectancy changing over time on different continents?




<!---Life expectancy, trimmed mean, trim = ??:---> 



#### Depict the maximum and minimum of GDP per capita for all continents.

It is awkward to ignore the year here, since there are strong temporal trends in GDP per capita. You are encouraged to address that in some way. Easy: consider only one year. Harder but better: work the year variable into your visual display.







<!---Wow, what's up with extremely high GDP/capita in Asia prior to 1980? O.I.L.

 Too bad it's not easy to display this in a transposed fashion without actually transposing the object. `xtable` does not support that. Wonder if another package does? The hard part is that data.frame variables -- so table columns -- can have different flavors but data.frame or matrix rows -- table rows -- cannot. Therein lies the fiddliness. --->









#### Look at the spread of GDP per capita within the continents.

Ditto above re: using one year only or incorporating the year properly.

<!---First I ignore year, which is a little sketchy....--->











<!---Then I account for year. This shows why robust statistics, like the median, MAD, and IQR, are more handy in real life than your intro stats course may have indicated. Watch the sd chase the oil-rich Arab GDP/per capita outliers, which do not really characterize the entire set of countries in Asia.--->



<!---

> Wish I knew how to make table shrink to fit the width available. Probably not possible with the technology I am using. --->






#### Depict the number and/or proportion of countries with low life expectancy over time by continent.

Make sure to give your definition of "low life expectancy".




<!---
> This table will be truly huge if I transpose, as I've done elsewhere. Leaving as is.--->




#### Find countries with extremely low or high life expectancy in 1952 or that exhibit extremely rapid or slow life expectancy gains.

Find them and then plot their data.

> Tip. The hard part here is finding the interesting countries in an elegant manner. If you don't / can't do that, you can hard-wire the interesting countries, just so you get to make the plots! (Nice demo of why it's EVIL to have commas in the country names.) Here you go:

  * Africa, intercepts
    - low: Gambia | Sierra Leone | Guinea
    - high: Reunion | Zimbabwe | Mauritius
  * Asia, intercepts
    - low: Afghanistan | Yemen, Rep. | Nepal
    - high: Hong Kong, China | Japan | Israel
  * Americas, intercepts
    - low: Bolivia | Haiti | Guatemala
    - high: Puerto Rico | United States | Canada
  * Europe, intercepts
    - low: Turkey | Bosnia and Herzegovina | Albania
    - high: Netherlands | Iceland | Norway
  * Africa, slopes
    - low: Zimbabwe | Zambia | Rwanda
    - high: Gambia | Tunisia | Libya
  * Asia, slopes
    - low: Iraq | Sri Lanka | Lebanon
    - high: Saudi Arabia | Vietnam | Oman
  * Americas, slopes
    - low: Paraguay | Trinidad and Tobago | Uruguay
    - high: Guatemala | Honduras | Nicaragua
  * Europe, slopes
    - low: Denmark | Hungary | Norway
    - high: Portugal | Bosnia and Herzegovina | Turkey







#### Find countries with sudden, substantial departures from the temporal trend in one of the quantitative measures.

Find them and then plot their data.








### Student work on HW 3 for ease of access. We'll replace these links w/ HW 4 later.

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
  * mohd abul basher-abd [source](https://gist.github.com/atante/6666678#file-stat545a-2013-hw03_mohd-abul-basher-abd-rmd) | [report](http://rpubs.com/meitantei/stat545a-2013-hw03_mohdabulbasher-abd) 
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
