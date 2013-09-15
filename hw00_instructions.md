Go back to [STAT545A home](current.html)

How to submit homework, Take 1
========================================================

> NOTE: new filename convention! Since Gist and RPubs mess with capitalization, let's go lowercase. Sorry to inconvenience the people who tried already.

### Filename convention

```
stat545a-2013-hw<XX>_<lastname-fir>.<suffix>
```

The `XX` above is `01` for homework #1, `02` for homework #2 and so on.  
`lastname-fir` means your lastname concatenated with a dash `-` and the first 3 letters of your first name, all lowercase. Example: `bryan-jen`.  
The suffix will be one of .r, .R, .rmd, .Rmd, .html.

The four files Jenny Bryan would produce for homeworks 1 and 2 might be:

  * stat545a-2013-hw01_bryan-jen.r
  * stat545a-2013-hw01_bryan-jen.html
  * stat545a-2013-hw02_bryan-jen.rmd
  * stat545a-2013-hw02_bryan-jen.html

The surest way to get a check minus is to NOT follow this convention. You can do this! You can have do overs, so don't stress out.

### How to submit homework

The 3 steps that involve the outside world:

  * Publish the HTML report. Use RPubs or, if you wish and know how, publish elsewhere. One advantage of RPubs is the commenting feature, so I think that's preferred. Capture the URL. Example: a student published her homework #1 report at <http://rpubs.com/parkm87/stat545a-2013-hw01_park-min>
  * Publish the R script or the R Markdown file -- the "source" -- as a [Gist](https://gist.github.com).
    - You will need to sign in to [github](https://github.com) (?I assume?).
    - Go to <https://gist.github.com>.
    - In the "name this file..." box, enter the __exact name__ of the R script or the R Markdown file, which, in turn, should __conform to the convention given above__.
    - Copy the entire file to the clipboard, paste into the Gist box, and click the "Create Public Gist" button.
    - Click on the "Permalink" button, in the upper right corner of the box containing your Gist (it looks like two links of a chain). 
    - Capture the URL. Example: a student published her homework #1 script as a Gist and got a permalink URL of <https://gist.github.com/parkm87/6541659#file-stat545a-2013-hw01_park-min-r>.
  * Add or edit a line in the appropriate Markdown file to include links to your published items
    - If you want to do this properly with git and github and you know how, carry on. But for everyone else ...
    - Sign in to [github](https://github.com).
    - Visit the appropriate Markdown file in the course repository. Example for homework #1: <https://github.com/jennybc/STAT545A/blob/master/hw01_compileNotebook.md>. Isn't it nice when filenames are informative?
    - Click "Edit".
    - Make your edit, using the placeholder built for you if at all possible. DO NOT GET CREATIVE OR SLOPPY. Look around at what everyone else is doing and make your entry follow the pattern, with only the minimal changes needed to customize for *your* homework.
    - At the bottom of the page, fill in the description, e.g. "Homework #1 submission by Jenny Bryan" and click on "Propose file change" button. (Under the hood, this will fork the course repository and create a branch for your change, by default called "patch-1").
    - A page will open that informs you whether there are any merge issues with the change. I'm not sure what you will see here -- all of these changes at once do cause merge issues for me, but that is my problem.
    - Assuming you are allowed to, click on "Send pull request".
    - Don't expect any immediate result in the repository or on the course webpage. JB has to do various things behind the scenes to accept the edit and push an update to the course webpage.
    - That's it! We may discuss "tidying up" your github account later.
    - Contact JB or post on the Google Group if you have problems.
    
Resources for developing the homework submission process:

  * Notes for JB, but anyone's welcome to read.
  * Inspired by this [browser-based workflow](https://github.com/blog/1557-github-flow-in-the-browser)
  * Existing notes and thoughts about student "tidy up": Post submission, a student will have a fork of the course repo, with 2 branches (master and patch-1). Should we help them tidy up? Deleting the patch-1 branch seems very desirable. Is this blog post about [tidying up after pull requests](https://github.com/blog/1335-tidying-up-after-pull-requests) relevant? I wonder if leaving the student's fork and master branch is good for future edits, but I don't know how to make it actually track the course repo, so these steps might need to be repeated every time. Here are more links that look relevant: [Fork A Repo](https://help.github.com/articles/fork-a-repo) and [Syncing a fork](https://help.github.com/articles/syncing-a-fork). I note that the instructions about syncing a fork only show command line git, whereas I want all this happening in a browser.
  * The pain inflicted by all those merge requests:
    - They conflict, of course, so cannot be automatically merged. I have to work at the command line. github does provide some instructions for this. Sort of.
    - I was working with Jess's pull request and will use as an example.
    - First, I add the student's fork as a remote of my repo. The github help described above provides the HTTP bit for this. SourceTree makes it easy to add a remote. I called it `jess`.
    - Do a fetch from all remotes. I can now see `jess/patch-1`. Control click and I can ...
    - Checkout `jess/patch-1`, giving it a local branch name `jess-patch-1`. I keep "Local branch should track remote branch" checked. FAIL. Local changes would be overwritten by checkout. Please commit or stash before swtiching branches. Aborting.
    - Let's try using placeholders ..... yikes.
  * http://stackoverflow.com/questions/5340724/get-changes-in-master-into-branch-in-git
  * http://gun.io/blog/how-to-github-fork-branch-and-pull-request/ This one's especially helpful because it gives exact commands for dealing with a pull request that you want, i.e. it doesn't clobber anything, but that (inexplicably!) cannot be automatically merged from the browser.
  * http://bradlyfeeley.com/2008/09/03/update-a-github-fork-from-the-original-repo/
  * https://www.openshift.com/wiki/github-workflow-for-submitting-pull-requests
  * http://stackoverflow.com/questions/2014914/how-do-you-merge-changes-on-non-master-branches-from-a-forked-github-repository
  * http://www.eqqon.com/index.php/Collaborative_Github_Workflow  
