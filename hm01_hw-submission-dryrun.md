Homework
========================================================

I am testing a [browser-based workflow](https://github.com/blog/1557-github-flow-in-the-browser) for students to "turn in" the homework they have posted on RPubs (or elsewhere).

I'm asking keeners / existing githubbers to try it first. I've done some testing in another repo with a cooperative friend, which yielded these draft instructions. Please help me refine them further before we inflict them on the whole class!

How to add a link to your published homework:

  1. Go to [github](https://github.com) and sign in.
  1. Go to the repository for this course: <https://github.com/jennybc/STAT545A>
  1. Go to the Markdown file (e.g. hm01_hw-submission-dryrun.md) you need to edit. Your browser will be pointed at something like `https://github.com/jennybc/STAT545A/blob/master/hm01_hw-submission-dryrun.md`.
  1. Click "Edit" to put file into an editing environment.
  1. Make your edit. DO NOT GET CREATIVE OR SLOPPY. Follow the instructions. Look around at what everyone else is doing and make your entry follow the pattern, with only the minimal changes needed to customize for *your* homework.
  1. At the bottom of the page, fill in the description and click on "Propose file change" button. (Under the hood, this will fork the course repository and create a branch for your change, by default called "patch-1").
  1. A page will open that informs you whether there are any merge issues with the change. __Here's where I am interested to see if all hell breaks loose when multiple people edit the same bulleted list.__
  1. (Assuming the previous issue is survivable,) click on "Send pull request".
  1. Tidy up. __This is where I have more uncertainty.__ A student should now have a fork of the course repo, with 2 branches (master and patch-1). Should we help them tidy up? Deleting the patch-1 branch seems very desirable. I think this blog post about [tidying up after pull requests](https://github.com/blog/1335-tidying-up-after-pull-requests) deals with what I, the repo owner, can do, not the student / repo forker? I wonder if leaving the student's fork and master branch is good for future edits, but I don't know of any way to make it actually track the course repo, so these steps might need to be repeated every time. Here are more links that look relevant: [Fork A Repo](https://help.github.com/articles/fork-a-repo) and [Syncing a fork](https://help.github.com/articles/syncing-a-fork). I note that the instructions about syncing a fork only show command line git, whereas I want all this happening in a broswer.


Please add your link in this bulleted list:

  * Jenny Bryan: [toyline](http://rpubs.com/jennybc/toyline)
  * Matthew Gingerich: [script](https://gist.github.com/MattGingerich/6527184) | [report](http://rpubs.com/majugi/TestFile)
  * Justin Chu: [toylineTest](http://rpubs.com/cjustin/8316)
  
