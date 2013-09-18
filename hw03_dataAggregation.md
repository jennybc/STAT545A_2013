Go back to [STAT545A home](current.html)

Homework #3
========================================================

> Follow the [existing home submission instructions](hw00_instructions.html) UP TO THE LINK SUBMISSION PART. JB will decide soon how to get your links -- probably via email or a Gist. Just keep them to yourselves for now.

  * Import the Gapminder data as provided in [`gapminderDataFiveYear.txt`](http://www.stat.ubc.ca/~jenny/notOcto/STAT545A/examples/gapminder/data/gapminderDataFiveYear.txt). Perform a superficial check that import went OK.
  * Pick some tasks from the *menu of data aggregation given below.*
  * Write up with R Markdown.
    - Include a narrative, written in English prose, i.e. don't just show code and results
    - Expose your code, i.e. use `echo = FALSE` very sparingly
    - If you tackle a tricky one, first give a clean account of your data aggregation results. You can describe your pain and suffering at the end.
    - Don't use figures! It's an artificial constraint, I know. Why hold back? Focus on data aggregation, we'll talk figures next week and revisit in the next homework. Plus you will get a visceral understanding of how ridiculous it is to do exploration *without* making lots of figures.
  * DUE: Before class begins 9:30am Monday September 23.
    - Compile into an HTML report. Follow the naming convention. Publish the HTML report on the web somewhere, such as on RPubs. Make the slug follow the naming convention.
    - Publish the R Markdown file as a Gist. Follow the naming convention.
    - Share your links. DETAILS OF THIS YET TO BE DETERMINED.

In due course, links to student work will appear below.

Menu of data aggregation tasks.

> Still under development. You won't have to do all of these. I'll give some direction on how much you must do. But some of you want to get started, so pick something and work on it!

#### Get the maximum and minimum of GDP per capita for all continents. Easy.

Get and display the information like so: a data.frame with 3 variables: a continent factor, the minimum GDP per capita, the maximum GDP per capita. Sort on one of those and assess whether the continents rank similarly w/r/t the other extreme. Discuss.

#### Look at the spread of GDP per capita within the continents. Easy.

Measures of spread (we will discuss in class soon, just try them out!):

  * standard deviation or variance -- see `sd()` and `var()`
  * median absolute deviation -- see `mad()`
  * interquartile range -- see `IQR()`
  
Get a data.frame with one row per continent and variables containing the different measures of spread for life expectancy. Sort on one of those and assess whether the continents rank similarly w/r/t heterogeneity of GDP/capita by the other measures. Discuss.
 
#### Compute a trimmed mean of life expectancy for different years. Easy/medium.

Consider how worldwide life expectancy is changing over time, specifically over the years in our Gapminder dataset. Compute the average life expectancy by year, as a warm-up exercise. Then consider an alternative: a [*trimmed mean*](http://en.wikipedia.org/wiki/Truncated_mean). There is a `trim` argument in the built-in function `mean()`. Pick a modest trim fraction that is greater than 0. Report your sorted results. Make sure your trim level is well-documented.

#### Get the maximum and minimum of GDP per capita for all continents. Medium/hard.

Get and display the information like so: a data.frame with 3 variables: a continent factor, a GDP per capita summary statistic, a factor that describes the statistic (i.e. "min" vs "max"). Don't use reshaping -- get this directly with data aggregation.

#### How is life expectancy changing over time on different continents? Easy/medium.

Get a data.frame with 3 variables: continent, year, mean or median life expectancy. What are the trends over time? Are they same or different across the continents?

#### How is life expectancy changing over time on different continents? ?Hard?.

Get a data.frame with 6 variables: year and then one variable per continent, giving mean or median life expectancy. Do this without reshaping your output -- try to get directly from data aggreation. Since I'm new-ish to `plyr`, I don't know if it's just stupid to NOT reshape the easier result obtained above. So this one is for people who are happy to play around a bit.

#### Understanding the number of countries with low life expectancy by continent. Medium/hard.

Compute some measure of worldwide life expectancy -- you decide -- a mean or median or some other quantile. Then determine how many countries on each continent have a life expectancy less than this benchmark. Produce a data.frame with 3 variables: continent, year, and a country count. What's the trend over time? Is that trend the same for all continents?

<div class="footer">
This work is licensed under the  <a href="http://creativecommons.org/licenses/by-nc/3.0/">CC BY-NC 3.0 Creative Commons License</a>.
</div>
