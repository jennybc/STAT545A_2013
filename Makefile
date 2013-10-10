all: web sync

web:
	Rscript -e "fileherd::herd(pub.dir = '/Users/jenny/web/fhWeb/publish/STAT545A', backend = 'pandoc')"

clean:
	Rscript -e "fileherd::findPreview(remove = TRUE, verbose = TRUE)"

sync:
	rsync -rlv --checksum --chmod=ugo=rwX --exclude-from=./.rsync/exclude /Users/jenny/web/fhWeb/publish/STAT545A/ stat.ubc.ca:public_html/STAT545A/

nuke:
	rm -rf /Users/jenny/web/fhWeb/publish/STAT545A/
