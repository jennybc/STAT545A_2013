all: kp web

web:
	Rscript -e "fileherd::herd(pub.dir = '/Users/jenny/web/fhWeb/publish/STAT545A', backend = 'pandoc')"

kp:
	Rscript -e "fileherd::findPreview(remove = TRUE, verbose = TRUE)"

sync:
	rsync -rlv --checksum --perms --chmod=Du=rwx,Dg=rx,Do=rx,Fu=rw,Fg=r,Fo=r --exclude-from=./.rsync/exclude /Users/jenny/web/fhWeb/publish/STAT545A/ stat.ubc.ca:public_html/STAT545A/

# WARNING! WARNING!

# this is an unholy kludge that makes it easy for me to sync via
# RStudio's Clean All entry from the More menu in the Build tab
clean: sync

nuke:
	rm -rf /Users/jenny/web/fhWeb/publish/STAT545A/
