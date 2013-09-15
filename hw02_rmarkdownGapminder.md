Go back to [STAT545A home](current.html)

Homework #2
========================================================

> See instructions on how to submit homework [here](hw00_instructions.html)

Perform intake of the Gapminder data in an R Markdown document, compile to HTML, publish, and link

  * Write an R Markdown file that does what's described below and includes some narrative text, walking the reader through basic features of the dataset. Find ways to explore what's possible with Markdown, e.g. make links, use headings or bullet points or blockquotes, use inline R code, include an equation, etc. Follow the naming convention.
  * Import the Gapminder data as provided in [`gapminderDataFiveYear.txt`](http://www.stat.ubc.ca/~jenny/notOcto/STAT545A/examples/gapminder/data/gapminderDataFiveYear.txt).
  * Determine and report basic facts like the number of observations and which variables are there. Make at least one figure. Report some very basic descriptive statistics, such as results from `summary()`. There is no need to go beyond what we've presented in class/tutorials. There will be other homework assignments soon for that!
  * Compile into an HTML report, using the "Knit HTML" feature of RStudio (easiest!) or by direct usage of the functions in the `knitr` and `markdown` packages. Follow the naming convention.
  * Check that the HTML report is no longer than a couple of printed pages. If longer, go back and make your script shorter. Content is not that important.
  * Publish the HTML report on the web somewhere, such as on RPubs. Make the slug follow the naming convention.
  * Publish the R Markdown file as a Gist. See instructions for help. Follow the naming convention.
  * Add or edit a line in the Markdown file that generates this page with links to your two published items. See instructions for help.
  * DUE: Before class begins 9:30am Monday September 15.
  
Please add links to your Homework #2 in this bulleted list. __Find the placeholder created for you and edit that line only, if at all possible.__

  * GOOD EXAMPLE COPIED FROM BELOW Matthew Gingerich: [source](https://gist.github.com/MattGingerich/6544485#file-stat545a-2013-hw02_gingerich-mat-rmd) | [report](http://rpubs.com/majugi/stat545a-2013-hw02_gingerich-mat)
  * attali-dea [source](https://gist.github.com/daattali/6547430#file-stat545a-2013-hw02_attali-dea-rmd) | [report](http://rpubs.com/daattali/stat545a-2013-hw02_attali-dea) 
  * baik-jon EDIT HERE
  * bolandnazar-moh EDIT HERE
  * brueckman-chr EDIT HERE
  * chu-jus EDIT HERE
  * Zachary Daly: [source](https://gist.github.com/ZDaly/6558864#file-tat545a-2013-hw02_daly-zac-rmd) | [report](http://rpubs.com/Zdaly/stat545a-2013-hw02_daly-zac)
  * dinsdale-dan [source](https://gist.github.com/danieldinsdale/6554514#file-stat545a-2013-hw02_dinsdale-dan-rmd) | [report](http://rpubs.com/danieldinsdale/stat545a-2013-hw02_dinsdale-dan)
  * gao-wen EDIT HERE
  * Matthew Gingerich: [source](https://gist.github.com/MattGingerich/6544485#file-stat545a-2013-hw02_gingerich-mat-rmd) | [report](http://rpubs.com/majugi/stat545a-2013-hw02_gingerich-mat)
  * hu-yum [source](https://gist.github.com/smilecat/6556150#file-stat545a-2013-hw02_hu-yum-rmd) | [report](http://rpubs.com/smilecat/stat545a-2013-hw02_hu-yum)
  * jewell-sea [source](https://gist.github.com/jewellsean/d5d9ae6cf9ff9da193db#file-stat545a-2013-hw02_jewell-sea-rmd) [report](http://rpubs.com/jewellsean/stat545a-2013-hw02_jewell-sea)
  * johnston-reb EDIT HERE
  * khosravi-mah EDIT HERE
  * Wooyong Lee: [source](https://gist.github.com/folias/6558563#file-stat545a-2013-hw02_lee-woo) | [report](http://rpubs.com/folias/stat545a-2013-hw02_lee-woo)
  * liao-wei: [source](https://gist.github.com/feiba/6546717#file-stat545a-2013-hw02_liao_wei-rmd) | [report](http://rpubs.com/winson/stat545a-2013-hw02_liao_wei)
  * ma-hui [source](https://gist.github.com/horsehuiting/6566267#file-stat545a-2013-hw02_ma-hui-rmd) | [report](http://rpubs.com/Huiting/stat545a-2013-hw02_ma-hui)
  * meng-viv EDIT HERE
  * mohd abul basher-abd [source](https://gist.github.com/atante/6568521#file-stat545a-2013-hw02_mohd-abul-basher-abd-rmd) | [report](http://rpubs.com/meitantei/stat545a-2013-hw02_mohdabulbasher-abd)
  * ni-jac [source](https://gist.github.com/jacknii/6546326#file-stat545a-2013-hw02_ni-jac-rmd) | [report](http://rpubs.com/jackni/stat545a-2013-hw02_ni-jac)
  * okkels-chr EDIT HERE
  * Mina Park: [source](https://gist.github.com/parkm87/6567386#file-stat545a-2013-hw02_park-min-rmd) | [report](http://rpubs.com/parkm87/stat545a-2013-hw02_park-min)
  * spencer-nei [source](https://gist.github.com/neilspencer/6558151#file-stat545a-2013-hw02_spencer-neil-rmd) | [report](http://rpubs.com/neil_spencer/stat545a-2013-hw02_spencer-nei)
  * wang-ton EDIT HERE
  * Leah Weber: [source] (https://gist.github.com/lweber21/6564433#file-stat545a-2013-hw02_weber-lea-rmd) | [report] (http://rpubs.com/lweber21/stat545a-2013-hw02_weber-lea)
  * woollard-geo [source](https://gist.github.com/geoffwoollard/6545701#file-stat545a-2013-hw02_woollard-geo-rmd) | [report](http://rpubs.com/gwoollard/stat545a-2013-hw02_woollard-geo)
  * xue-xin EDIT HERE
  * yuen-ama [source](https://gist.github.com/amandammor/6557207#file-stat545a-2013-hw02_yuen-ama-rmd) | [report](http://rpubs.com/amandammor/stat545a-2013-hw02_yuen-ama)
  * zhang-yim EDIT HERE
  * zhang-jon EDIT HERE
  * zhang-yif [source](https://gist.github.com/dora7870/6566076#file-stat545a-2013-hw02_zhang-yif-rmd) | [report](http://rpubs.com/dora7870/stat545a-2013-hw02_zhang-yif)
  * zhang-jin [source](https://gist.github.com/0527zhangjinyuan/6546926#file-stat545a-2013-hw02_zhang-jin-rmd) | [report](http://rpubs.com/zhangjinyuan/stat545a-2013-hw02_zhang-jin)
  * inskip-jes [source](https://gist.github.com/jinskip/6567244#file-stat545a-2013-hw02_inskip-jes-rmd) | [report](http://rpubs.com/jinskip/stat545a-2013-hw02_inskip-jes)
  * liu-yan EDIT HERE
  * haraty-mon EDIT HERE
  * yuen-mac [source](https://gist.github.com/myuen/6558828#file-stat545a-2013-hw02_yuen-mac-rmd) | [report](http://rpubs.com/myuen/stat545a-2013-hw02_yuen-mac)
