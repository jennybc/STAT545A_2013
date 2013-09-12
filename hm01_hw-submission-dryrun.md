Go back to [STAT545A home](current.html)

Homework
========================================================

Filename convention:  
```
STAT545A-2013-hw<XX>_<lastnameFir>.<suffix>
```

The `XX` above is `01` for homework #1 and `02` for homework #2.  
`lastnameFir` means your lastname, in lowercase, concatenated with the first 3 letters of your first name, first letter capitalized. Example: `bryanJen`.  
The suffix will be one of .R, .Rmd, .rmd, .html.

The four files Jenny Bryan would produce are:

  * STAT545A-2013-hw01_bryanJen.R
  * STAT545A-2013-hw01_bryanJen.html
  * STAT545A-2013-hw02_bryanJen.Rmd
  * STAT545A-2013-hw02_bryanJen.html

The surest way to get a check minus is to NOT follow this convention. You can do this!

### Homework #1: Write an R script, compile an HTML notebook, publish, and share the link

  * Write a short R script. You can use the `toyline.R` script we've already written or a similar small *self-contained* exercise, i.e. generate any data needed in the script itself. If you repurpose `toyline.R`, don't forget to rename it.
  * Compile into an HTML report, using the "Compile notebook" feature of RStudio (easiest!) or by direct usage of the [`stitch()` function](http://yihui.name/knitr/demo/stitch/) from the `knitr` package. Follow the naming convention.
  * Check that the HTML report would fit on 1 printed page. If longer, go back and make your script shorter. Content is not that important.
  * Publish the HTML report on the web somewhere, such as on RPubs. Make the slug follow the naming convention.
  * Publish the R script as a Gist. Instructions below. Follow the naming convention.
  * Add a line to the Markdown file that generates this page with links to your two published items. Instructions below.
  * DUE: As soon as possible.
  
Please add links to your Homework #1 in this bulleted list:

  * JUST AN EXAMPLE Jenny Bryan: toyline [script](https://gist.github.com/jennybc/6520226) | [report](http://rpubs.com/jennybc/toyline)
  * Wooyong Lee: [script](https://gist.github.com/folias/6537277) | [report](http://rpubs.com/folias/STAT545A-2013-hw01_leeWoo)  

### Homework #2: Perform intake of the Gapminder data in an R Markdown document, compile to HTML, publish, and link

  * Write an R Markdown file that does what's described below and includes some narrative text, walking the reader through basic features of the dataset. Find ways to explore what's possible with Markdown, e.g. make links, use headings or bullet points or blockquotes, use inline R code, include an equation, etc. Follow the naming convention.
  * Import the Gapminder data as provided in [`gapminderDataFiveYear.txt`](http://www.stat.ubc.ca/~jenny/notOcto/STAT545A/examples/gapminder/data/gapminderDataFiveYear.txt).
  * Determine and report basic facts like the number of observations and which variables are there. Make at least one figure. Report some very basic descriptive statistics, such as results from `summary()`. There is no need to go beyond what we've presented in class/tutorials. There will be other homework assignments soon for that!
  * Compile into an HTML report, using the "Knit HTML" feature of RStudio (easiest!) or by direct usage of the functions in the `knitr` and `markdown` packages. Follow the naming convention.
  * Check that the HTML report is no longer than a couple of printed pages. If longer, go back and make your script shorter. Content is not that important.
  * Publish the HTML report on the web somewhere, such as on RPubs. Make the slug follow the naming convention.
  * Publish the R Markdown file as a Gist. Instructions below. Follow the naming convention.
  * Add a line to the Markdown file that generates this page with links to your two published items. Instructions below.
  * DUE: Before class begins 9:30am Monday September 15.
  
Please add links to your Homework #2 in this bulleted list:

  * JUST AN EXAMPLE Jenny Bryan: toyline [script](https://gist.github.com/jennybc/6520226) | [report](http://rpubs.com/jennybc/toyline)
  
### How to submit homework

The 3 steps that involve the outside world:

  * Publish the HTML report. Use RPubs or, if you wish and know how, publish elsewhere. One advantage of RPubs is the commenting feature, so I think that's preferred. Capture the URL. Example: JB published a report based on `toyline.R`  and got this URL <http://rpubs.com/jennybc/toyline>.
  * Publish the R script or the R Markdown file -- the "source" -- as a [Gist](https://gist.github.com).
    - You will need to sign in to [github](https://github.com) (?I assume?).
    - Go to <https://gist.github.com>.
    - In the "name this file..." box, enter the __exact name__ of the R script or the R Markdown file, which, in turn, should __conform to the convention given above__.
    - Copy the entire file to the clipboard, paste into the Gist box, and click the "Create Public Gist" button.
    - Click on the "Permalink" button, in the upper right corner of the box containing your Gist (it looks like two links of a chain). 
    - Capture the URL. Example: JB published her `toyline.R` script as a Gist and got a permalink URL of <https://gist.github.com/jennybc/6520226#file-toyline-r>.
  * Add or edit a line in the Markdown file generating this page to include links to your published items
    - If you want to do this properly with git and github and you know how, carry on. But for everyone else ...
    - You will need to sign in to [github](https://github.com).
    - Visit this Markdown file in the course repository: <https://github.com/jennybc/STAT545A/blob/master/hm01_hw-submission-dryrun.md>
    - Click "Edit".
    - Make your edit. DO NOT GET CREATIVE OR SLOPPY. Look around at what everyone else is doing and make your entry follow the pattern, with only the minimal changes needed to customize for *your* homework.
    - At the bottom of the page, fill in the description, e.g. "Homework #1 submission by Jenny Bryan" and click on "Propose file change" button. (Under the hood, this will fork the course repository and create a branch for your change, by default called "patch-1").
    - A page will open that informs you whether there are any merge issues with the change. I'm not sure what you will see here -- all of these changes at once do cause merge issues for me, but that is my problem.
    - Assuming you are allowed to, click on "Send pull request".
    - Don't expect any immediate result in the repository or on the course webpage. JB has to do various things behind the scenes to accept the edit and push an update to the course webpage.
    - That's it! We may discuss "tidying up" your github account later.
    - Contact JB or post on the Google Group if you have problems.
    
Resources for developing the homework submission process:

  * Inspired by this [browser-based workflow](https://github.com/blog/1557-github-flow-in-the-browser)
  * Existing notes and thoughts about student "tidy up": Post submission, a student will have a fork of the course repo, with 2 branches (master and patch-1). Should we help them tidy up? Deleting the patch-1 branch seems very desirable. Is this blog post about [tidying up after pull requests](https://github.com/blog/1335-tidying-up-after-pull-requests) relevant? I wonder if leaving the student's fork and master branch is good for future edits, but I don't know how to make it actually track the course repo, so these steps might need to be repeated every time. Here are more links that look relevant: [Fork A Repo](https://help.github.com/articles/fork-a-repo) and [Syncing a fork](https://help.github.com/articles/syncing-a-fork). I note that the instructions about syncing a fork only show command line git, whereas I want all this happening in a broswer.



  
