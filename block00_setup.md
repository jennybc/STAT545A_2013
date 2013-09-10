R and RStudio Set Up
========================================================

## R and RStudio

* Download and install [R, a free software environment for statistical computing and graphics](http://www.r-project.org) from [CRAN](http://cran.rstudio.com), the Comprehensive R Archive Network. It is _highly recommended_ to install a precompiled binary distribution for your operating system -- use the links up at the top of the CRAN page linked to above!

* Install RStudio's IDE (stands for _integrated development environment_), a powerful user interface for R: <http://www.rstudio.com/ide/download/>

## Testing testing

* Do whatever is appropriate for your OS to launch RStudio. You should get a window similar to the screenshot you see [here](http://www.rstudio.com/ide/), but yours will be more boring because you haven't written any code or made any figures yet!

* Put your cursor in the pane labelled Console, which is where you interact with the live R process. Create a simple object with code like `x <- 2 * 4` (followed by enter or return). Then inspect the `x` object by typing `x` followed by enter or return. Obviously you should see the value 8 print to screen. If yes, you are good to go.

## Add-on packages

R is an extensible system and many people share useful code they have developed as a _package_ via CRAN and github. To install a package from CRAN, for example the [`plyr`](http://plyr.had.co.nz)  package for data aggregation, here is one way to do it in the R console (there are others).

```
  install.packages("plyr", dependencies = TRUE)
```
We will use this package soon, so go ahead and install it!

Another package we will use soon is [`knitr`](http://yihui.name/knitr/), which facilitates the creation of dynamic reports. You can install it in the same way.
```
  install.packages("knitr", dependencies = TRUE)
```

## Further resources

The above will get your basic setup ready but here are some links if you are interested in reading a bit further.

* How to Use RStudio:
    - <http://www.rstudio.com/ide/docs/>
* RStudio Public Discussion & Troubleshooting Guide:
  - <http://support.rstudio.org/help/>
* R Installation and Administration
    - <http://cran.r-project.org/doc/manuals/R-admin.html>
* R FAQ:
    - <http://cran.r-project.org/doc/FAQ/R-FAQ.html>
* More about add-on packages in the R Installation and Administration Manual
     - <http://cran.r-project.org/doc/manuals/R-admin.html#Add_002don-packages>

<div class="footer">
This work is licensed under the  <a href="http://creativecommons.org/licenses/by-nc/3.0/">CC BY-NC 3.0 Creative Commons License</a>.
</div>