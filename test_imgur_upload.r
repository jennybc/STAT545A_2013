library(knitr)

png("jennyTest.png")
plot(rnorm(100), main = R.version.string)
dev.off()

png("jennyTest2.png")
plot(cars, main = "just a test")
dev.off()

res  <- imgur_upload("jennyTest.png")
res  # link to original URL of the image
# http://i.imgur.com/XPnYnSl.png
#if (interactive()) 
#    browseURL(res)

res  <- imgur_upload("jennyTest2.png")
res  # link to original URL of the image
# http://i.imgur.com/FA0rnqY.png
#    browseURL(res)

file.remove(list.files(pattern = "^jennyTest*"))