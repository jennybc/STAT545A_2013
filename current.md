Go back to [STAT545A home](index.html)

# STAT 545A Exploratory Data Analysis

1.5 credits  
04 September 2013 - 16 October 2013  
Mon Wed 9:30 - 11am in ESB 1042, a computing lab on the main ground floor of the [Earth Sciences Building (ESB)](http://www.maps.ubc.ca/?225) at 2207 Main Mall
Instructor: Jennifer (Jenny) Bryan <jenny@stat.ubc.ca>  
TA: Song Cai <scai@stat.ubc.ca>  
Google Group for Q & A: [STAT545A_2013](https://groups.google.com/forum/#!forum/stat545a_2013)  
github repository for course materials: <https://github.com/jennybc/STAT545A>


cm = class meeting

Monday Sept 02 is a statutory holiday. No class.

### cm 01 | Wednesday Sept 04 | Introduction to the course ([slides as PDF](2013-lectures/cm01_intro-to-course.pdf)) 

  * Complete the Google form. JB sent a link to all registered students. If you need the link, contact her by email.
  
  * Ask to join the [STAT545A_2013 Google Group](https://groups.google.com/forum/#!forum/stat545a_2013) or play hard to get and wait for us to invite you.

  * Follow some of the links that interest you in the cm01 lecture slides (link to PDF above). Would be great if people started a thread on the Google group suggesting more or better blogs or articles hitting the same topics or pointing out broken links.
  
  * Work through
    - [Get R, RStudio, and some add-on packages set up](block00_setup.html)
    - [Basics of R/RStudio, workspaces, and projects](block01_basicsWorkspaceWorkingDirProject.html) <-- Really important that you show up Monday having completed this tutorial. Have that `toyline.R` script ready to work with.
    
  * Sign up for an account at [Rpubs.com](http://rpubs.com). We will try this as the first and gentlest method of generating finished work for this course. JB has [conducted a test](http://rpubs.com/jennybc) and it's dead easy. We'll get you started on Monday.

### cm 02 | Monday Sept 09 | Create first report, Deep Thoughts, Basic care and feeding of data in R ([slides as PDF](2013-lectures/cm02_compileNotebook-publishRpubs-deepThoughts.pdf))

  * Sign up for an educational account at [github.com/edu](https://github.com/edu). **Take advantage of their special deal for students, where you can get something like 5 private repositories for two years for free.** We will experiment with students modifying [the course repository](https://github.com/jennybc/STAT545A) via a [browser-based workflow](https://github.com/blog/1557-github-flow-in-the-browser) for those who do not wish to take the git plunge yet. I will not require you to create or share your own repositories -- you just need a github account in order to edit mine, e.g. the course repository. Usage cases I have in mind:
    - Submitting coursework by adding a link to work you've published on [Rpubs.com](http://rpubs.com)
    - Suggesting a dataset to work on later in the class or commenting on suggestions made by others
    
  * Work through
    - [Basic care and feeding of data in R](block02_careFeedingData.html)
    
  * Feel free to start thinking about some datasets we could work with later in the class
    - [Early draft of a "dataset ideas" page](dataset-ideas.html)

### cm 03 | Wednesday Sept 11 | R objects (beyond data.frames) and R Markdown ([slides as PDF](2013-lectures/cm03_workModes-flavorsCollections-RMarkdown.pdf))

  * [How to submit homework](hw00_instructions.html)

  * Submit [homework 1](hw01_compileNotebook.html) ASAP.
  
  * Submit [homework 2](hw02_rmarkdownGapminder.html) before class starts @ 9:30am Monday Sept. 16.
  
  * Work through
    - [R objects (beyond data.frames) and indexing](block03_basicObjects.html). Note: you should be able to do the homework before completing this tutorial.

### cm 04 | Monday Sept 16 | Data aggregation ([slides as PDF](2013-lectures/cm04_dataAggregation.pdf))

  * Note that on Wednesday Sept 18 UBC will observe [National Reconciliation Week](http://irsi.aboriginal.ubc.ca). No class.

  * Study
    - a tutorial on [data aggregation](block04_dataAggregation.html)
    - a [note on CSS](topic10_tablesCSS.html), triggered by making attractive HTML tables in the data aggregation tutorial

  * Submit [homework 3](hw03_dataAggregation.html) before class starts @ 9:30am Monday Sept. 23.
  
  * Post a serious proposal for a dataset and/or make a thoughtful contribution to the discussion of an existing proposal. We need to start fleshing these out. The time needed for data assembly and cleaning is going to break your heart. Here are two places for these discussions
    - Start or contribution to threads on the [Google Group](https://groups.google.com/forum/#!forum/stat545a_2013)
    - [Edit the "dataset ideas" page](dataset-ideas.html), now that you all know how to propose changes to the course web materials!
  
  * Spend ~1 hr (or more if you are new to the command line and scripting) reading these resources about how to ask for help. Don't be paranoid, this is not specifically about you and that question you asked the other day! This material has been in the course for a couple of years. This is another aspect of the culture that one has to actually learn.
  
    - The 9th circle of R hell in [The R Inferno](http://www.burns-stat.com/documents/books/the-r-inferno/) by Patrick Burns.
    - [How To Ask Questions The Smart Way](http://www.catb.org/~esr/faqs/smart-questions.html) by Eric Raymond.
    - The [posting guide](http://www.r-project.org/posting-guide.html) for [the R-help mailing list](https://stat.ethz.ch/mailman/listinfo/r-help), which I recommend you NOT post to any time soon. (But by all means, search for answers to your questions there!) Turn to Jenny, Song, and the Google Group first for now.
    
### cm 05 | Monday Sept 23 | Explore a quantitative variable, visuals via `lattice` ([slides as PDF](2013-lectures/cm05_univariateStatsVisuals.pdf))

  * Work through
    - [Getting data out of R](block05_getNumbersOut.html)
    - An [external resource on writing your own functions](block06_functions.html). Pick one (or more) for yourself.
    - [Exploring a quantitative variable with `lattice`](block07_univariatePlotsLattice.html). We did the stripplot material. We'll do the rest in class on Wednesday.
    
  * Reading on the `lattice` package in the book *Lattice: Multivariate Data Visualization with R* by Deepayan Sarkar (2008). Links to the eBook and other resources can be found [on my resources page](../resources.html).
  
    - Ch. 1 Introduction (short! totally worth it)
    - Ch. 2 A Technical Overview of lattice (skimming is OK; at least you'll know where to come back to when you're confused)
    - Ch. 3 Visualizing Univariate Distributions (great companion to our work in class this week)

### cm 06 | Wednesday Sept 25 | Explore a quantitative variable, visuals via `lattice`, cont'd ([slides as PDF](2013-lectures/cm05_univariateStatsVisuals.pdf))

  * Work through
    - [Exploring a quantitative variable with `lattice`](block07_univariatePlotsLattice.html). We finished with densityplots, boxplots, histograms, etc.
    - UNDER DEVELOPMENT! Curious about managing factors? [Draft topic on factors](block08_bossYourFactors.html)
    - Why are we using `lattice` and `ggplot2`? Read about the [R graphics landscape](block90_baseLatticeGgplot2.html)
    - Revisit [homework 3](hw03_dataAggregation.html) to see Jenny's solutions and access links to work of fellow students.
    - [To tidy or not to tidy?](topic11_tidyCode.html) re: code tidying in `knitr`  
    
  * Reading on the `lattice` package in the book *Lattice: Multivariate Data Visualization with R* by Deepayan Sarkar (2008). Links to the eBook and other resources can be found [on my resources page](../resources.html).
  
    - Ch. 5 Scatter Plots and Extensions. Most important sections (skim the rest?):
      - 5.1 The standard scatter plot
      - 5.3 Variants using the type argument
      - 5.4 Scatter-plot variants for large data

  * Submit [homework 4](hw04_univariateLattice.html) before class starts @ 9:30am Monday Sept. 30. Make graphical companions to data aggregation output from [homework 3](hw03_dataAggregation.html).
  
### cm 07 | Monday Sept 30 | Two quantitative variables + `lattice` details + writing figures to file ([slides as PDF](2013-lectures/cm07_xyplot-formalLattice-figuresToFile.pdf))

  * Work through

    - [A quick tour of `xyplot()](block09_xyplotLattice.html)
    - [Gateway to more advanced `lattice` usage](block10_latticeNittyGritty.html)
    - [Writing a figure to file](topic12_writeFigureToFile.html)
    - Revisit [homework 4](hw04_univariateLattice.html) to see JB's solutions and access links to work of fellow students.

  * Reading on the `ggplot2` package in the book *ggplot2: Elegant Graphics for Data Analysis*.  Links to the eBook and much more can be found [on my resources page](../resources.html).
  
    - Ch. 1 Introduction
    - Ch. 2 Getting started with `qplot()` (although I think we will not use `qplot()`)
  
### cm 08 | Wednesday Oct 02 | `ggplot2`
  
  * Submit [homework 5](hw05_anythingGgplot2.html) before class starts @ 9:30am Monday Oct. 07.
  
  * Reading on the `ggplot2` package in the book *ggplot2: Elegant Graphics for Data Analysis*.  Links to the eBook and much more can be found [on my resources page](../resources.html).
  
    - Ch. 3 Mastering the grammar

### cm 09 | Monday Oct 07 | Colors

* Work through

    - [Using colors in R](block14_colors.html)
    - [Mapping a factor into a color in base graphics](block15_colorMappingBase.html) (this is also nice demonstration of `match()` and `merge()`)
    - [Taking control of colors in `lattice`](block16_colorsLattice.html)

### cm 10 | Wednesday Oct 09 | More `ggplot2`

Monday Oct 14 is a statutory holiday. No class.

### cm 11 | Wednesday Oct 16 | Coding style, project organization, version control

<div class="footer">
This work is licensed under the  <a href="http://creativecommons.org/licenses/by-nc/3.0/">CC BY-NC 3.0 Creative Commons License</a>.
</div>