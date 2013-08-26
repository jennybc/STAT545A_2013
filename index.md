---
files.to.publish: 
  - index.md 
---

STAT 545A Exploratory Data Analysis, 1.5 credits, Sec 101  
03 September 2013 - 20 October 2013  
Mon Wed 9:30 - 11am in ESB 1042, a computing lab on the main ground floor of ESB  
[Course webpage](STAT545)

Below is an outline of STAT 545A, prepared summer 2013, based on previous runs of course.

03 September 2013 - 20 October 2013

Mon Wed 9:30 - 11am in ESB 1042, a computing lab on the main ground floor of ESB  

### DESCRIPTION.

This course has three intertwined goals;

* Introduce students to
  [R, a free software environment for statistical computing and graphics](http://www.r-project.org/),
  and put them on the fast track to becoming power useRs!

* Expose students to datasets, scientific problems, tools, and habits
  that exemplify modern statistical practice.

* Develop students' skills in exploring, visualizing, and analyzing
  datasets. Heavy emphasis on data handling, data manipulation, and
  making figures. Expose students to statistical methods ranging from
  core techniques (description and exploration, linear models) to more
  modern and flexible techniques (resampling / bootstrap, smoothing,
  robust statistics).

Knowledge and skills from this course may be useful to incoming
graduate students as preparation for Research Assistant work and for
MSc/PhD thesis projects.

AUDIENCE. This course is open to any graduate student in the
Department of Statistics.  Graduate students from other departments
are welcome, but please touch base with the instructor.

TEXTBOOK.  None. We will use online resources and eBooks available
through the UBC site licenses.

PREREQUISITE.  Sufficient statistical background or permission of the
instructor.

EVALUATION (**subject to change**)

* Homework. Three to five small assignments, usually time-limited,
marked coarsely (check minus / check / check plus). Used for minor
adjustments to final mark, which is chiefly determined by ...

* Final project. Perform an exploratory analysis of a dataset of your
  choosing, with an emphasis on figures. Facilitate
  comparisons. Identify trends. Submit a short report, data (if
  possible), code, and figures.
  
### POSSIBLE CHANGES IN 2013.

No guarantees that all of these changes will materialize but they are on the radar.  

* Move to more, smaller homework assignments, possibly leading to elimination of the final project. Peer evaluation of homework.  
* Entire course feels more like a lab, with students sitting at their own laptops or using computers in the lab in real-time.  
* Explicitly address the add-on graphics package ggplot2. Present along-side lattice ... could lead to gradual transition of emphasis?  
* Students share their work via github.  
* Increased emphasis on reproducibility and shareability, via dynamic report generation and version control.

### WHAT WE COVER AND WHEN

cm = class meeting

cm 01 | Course introduction. Course goals, requirements, marks, good
(e-)books, instructor bio and contact info, who's in the course and why.

cm 02 | Response to mini assignment 1: R Gapminder Challenge / Shock
Therapy. View some student code and figures, need-to-know-now hints
such as data import with read.table or read.delim, managing file and
pathnames, writing to PDF file, subsetting the data.frame, strategies
for tackling a difficult task, the RStudio integrated development environment and other R-aware text editors.

cm 03 | Data checking and cleaning, esp.of categorical variables in
Gapminder data. Simple view of simple R objects. Factors are
special. Simple view of data.frames, lists, and arrays. Use names,
data.frames, with() and subset().

cm 04 | Best practices for indexing or subsetting various R
objects. Data aggregation (i.e. the apply-type functions) and the plyr add-on package.

cm 05 | Exploring a quantitative variable, optionally with 1 or 2
associated categorical variables, e.g. life expectancy from
Gapminder. stripplot, jittering, reorder factor levels, dropping
factor levels, adding extra info like median, boxplot, violinplot,
histogram, densityplot. Kernel density estimation. Preferred R
assignment operator. R's formula syntax.

cm 06 | A Gapminder "solution" using base R graphics. Colors in
R. RColorbrewer. Creating color schemes and mapping a factor into
colors. *?colorspace package?*

cm 07 | A Gapminder "solution" using lattice. High volume
scatterplots. *?a ggplot2 solution?*

cm 08 | Source is real. R coding style. How to organize an analytical
project. Managing an R installation. Getting stuff out of R, safely
tucked away in a file for later use or incorporated as a table in some
other environment. Dynamic reports via the add-on package knitr. Version control and social coding via git and github.

cm 09 | Pep rally for the final project.

cm 10 | How to ask a question to elicit a timely, useful answer. Two
group tests. "Scaling up": different tests, many two group
comparisons. Using figures to convey bulk statistical results instead
of big tables of numbers. Use two group testing problem as way to
introduce the bootstrap approach.

cm 11 | Completion of the bootstrap approach to two group tests using
the yeast growth data. Demo of robust regression using life expectancy
over time for Rwanda. Data reshaping.

cm 12 | Smoothing (kernel smoothing and local polynomial regression,
e.g. loess).

