library(fileherd)

findPreview()
findPreview(remove = TRUE, verbose = TRUE)

herd(pub.dir = "/Users/jenny/web/fhWeb//publish//STAT545A", backend = "pandoc")

herd(pub.dir = "/Users/jenny/web/fhWeb//publish//STAT545A")

#cull(cull.dir = "/Users/jenny/web/fhWeb//publish//STAT545A")

knit2html("test.rmd")
herd(yaml = "test.rmd")

herd(yaml = "hw03_dataAggregation.rmd")