library(fileherd)

findPreview()
findPreview(remove = TRUE, verbose = TRUE)

cull(cull.dir = "/Users/jenny/web/fhWeb//publish//STAT545A")

herd(pub.dir = "/Users/jenny/web/fhWeb//publish//STAT545A", backend = "pandoc")

herd(pub.dir = "/Users/jenny/web/fhWeb//publish//STAT545A")