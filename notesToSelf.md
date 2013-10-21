Notes to self
========================================================

Why emphasize IDE (e.g., RStudio), working directory (use an RStudio project!), etc. so early? Why not use a built-in dataset and do something cool right away? Because, like learning to ride a bike, it's the starting and the stopping that is particularly hard for newbies. If you can make that easier, they can log more hours pedalling. (Of course we could still do something cool and THEN come back down to earth.)

Things I'm undercovering:

  * reshaping
  * data cleaning
  * `ggplot2` (i.e. bringing to same level of polish as `lattice` stuff; yikes!)
  
In the tutorial for data aggregation with plyr, the example I trot out to contrast with built-in function pain should probably involve the return of something more complicated than a single number. So that `aggregate()` is not a viable alternative.

The last class meeting -- where I talked about coding style and project organization and did an "end of course" reflection -- felt rushed and disorganized, esp. nearing the end. In future, this may self-resolve because it was highly unusual to only have 11 class meetings. In past 12 is more typical and there have even been 13. It all depends on when holidays happen and whether UBC continues to suspect classes for the Truth and Reconciliation event.

But here are some notes for how to fix in future: I need a proper short introduction to `make` at least. And probably to Git, although they have absorbed some info about Git and Github by osmosis at this point. They also did want to hear about .Rprofile files and how I manage an R installaion (those would be good small topics, in terms of web content). I have decent links on how/why to install `make` at the bottom of homework 6 assignment. At this point, my own examples (offered as help for that assignment) are a very good source of simple but working examples of using `make` in the context of a small R analytical project.

For future coverage of Git, taking some notes on workflows for starting a new conceptual project, RStudio project, local Git repo, and Github repo. Example: a repo for my NSERC DG proposal from October 2013. I think you can do these things in different order, so it would be good to catalog and see if there are obvious pros/cons.

Let's try initiating from RStudio.

  * Get RStudio open but not in a project (or in a project you're willing to stop working on for the moment).
  * Project > Create Project 
  * ... Existing Directory (in my current case, I'd already created a directory and started putting files there). Use Browse to find the relevant directory. Choose. Create Project.
  * Let's make this directory into a Git repo. Project > Project Options ... Git/SVN. Set version control system to Git. Do you want to initialize a new git repository for this project? Yes. You need to restart RStudio in order for this change to take effect. Do you want to do this now? Yes.
  * If you initialize the repository from RStudio, it automatically creates a .gitignore file with these contents:
        .Rproj.user
        .Rhistory
        .RData
  * Now you need to start tracking files. I will try this from RStudio, for the first time, just to see what it's like. Click on files to Stage, then click Commit. Simple enough, though I prefer SourceTree for this.
  * Tell SourceTree about this project. In the Bookmarks window: Add Working Copy. Select the directory where you've already initialized the repo.
  * Set up the Github repo corresponding to my local one. Go to Github and specifically the page showing my repos. Click New. Give it the same name as the directory = name of the RStudio project = nickname of the local repo in SourceTree. I clicked "initialize this repository with a README" since I hadn't created one yet. I left the default "no's" for adding .gitignore (which I alread have) and a license (which is irrelevant for something I'll keep private). Create repository.
  * Go to SourceTree. Repository > Add Remote .... Remote name = origin. URL/path = take this from Github's helpful HTTPS clone URL thing-y that copies it straight to the clipboard. OK.
  * Make my local repo track the github remote: Hmmm... that already seems to be true, because the initial github commit, creating a README, shows up in SourceTree. So I merged that in.
  * Made another edit in README via the browser to verify that tracking is fully set up. And it's not. I see that commit but SourceTree is not prompting me to pull that in. Here's how to complete the set-up: in left sidebar of SourceTree, control click on master under BRANCHES. Select Track remote branch > origin/master. OK.
  * Now SourceTree is prompting  me to pull that commit I made on github. I clicked two boxes: commit changes immediately (or something like that; it was clicked by default) and use commit message of the thing you're merging (or something like that).
  * Then I pushed everything to get local and github remote completely in sync.


Study the difference between `R CMD BATCH` and `Rscript`. A student said this: 