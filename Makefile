.PHONY: all website

website:
	rm -rf docs
	rm -rf website/_build
	cd website && rm -rf content
	# list folders with notebooks here. Notebooks must be present in _toc.yml.
	cp -r content website/
	rm -f website/content/b*/lecture_*.md
	# Build
	jupyter-book build website
	# Copy built site to docs
	cp -r website/_build/html docs
	# Remove copied folders
	rm -rf website/content
	# No Jekyll on remote server
	touch docs/.nojekyll
