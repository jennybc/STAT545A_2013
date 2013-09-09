vNames <- c("timestamp", "sNum", "lName", "fName", "goesBy",
            "snowflake", "email", "prog", "subj")
gDat <-
  read.table("courseAdmin/2013_STAT545A-students%20(Responses)%20-%20Form%20Responses.tsv",
             sep = "\t", as.is = TRUE, skip = 1, quote = "", col.names = vNames)
str(gDat)
gDat <- subset(gDat, select = -c(timestamp, snowflake))

uDat <- read.delim("courseAdmin/2013-09-07-classlist.txt", as.is = 9:11,
                   strip.white = TRUE)
str(uDat)
uDat <- subset(uDat, select = c(StudentNumber, Surname, GivenName,
                                Gender, Program, Spec1Subject))
names(uDat) <- c("sNum", "lName", "givenName", "gender", "program",
                 "ubcSubj")

ggDat <- read.csv("courseAdmin//stat545a_2013.csv", skip = 1, as.is = 1:2)
str(ggDat)
ggDat <- subset(ggDat, select = c(Email.address, Nickname))
names(ggDat) <- c("email", "ggNickname")

sDat <- merge(gDat, uDat, by = "sNum", all = TRUE)
sDat <- merge(sDat, ggDat, by = "email", all = TRUE)
str(sDat)
sDat <- with(sDat, sDat[order(ubcSubj), ])

write.table(sDat, "2013-09-07-megalist.txt", quote = FALSE, sep = "\t",
            row.names = FALSE)