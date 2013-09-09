vNames <- c("timestamp", "sNum", "lName", "fName", "goesBy",
            "snowflake", "email", "prog", "subj")
sDat <-
  read.table("2013_STAT545A-students%20(Responses)%20-%20Form%20Responses.tsv",
             sep = "\t", as.is = TRUE, skip = 1, quote = "", col.names = vNames)
## note: I had to remove my usual .Rprofile for this str() to give reasonable
## results; see end of file for notes
str(sDat)

## helpful! http://www.stat.berkeley.edu/classes/s133/dates.html
sDat$timestamp <- strptime(sDat$timestamp, format = "%m/%d/%Y %H:%M:%S")

write(paste(sDat$email, collapse = ","), file = "email.txt")






## note to think about later:

## I encountered some bizarre behavior from str(sDat) immediately after import

## before I specified variable names, the information for V2 was repeated for
## each of the 9 variables

## after I specified variable names, I got this warning:
# In str.default(sDat, give.length = FALSE) :
#   number of items to replace is not a multiple of replacement length

## this made those errors go away: str(sDat, vec.len = 1) but upon further
## inspection the results still don't make sense

## since I set the vec.len option for str() in .Rprofile, I checked if the
## problems go away if I remove my .Rprofile and they do. evidence that simply
## setting vec.len to 4 in such a crude way is not a good idea

