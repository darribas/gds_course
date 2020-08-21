.PHONY: all website

# Run for example as: `make slide block=A no=i`
slide:
	pandoc -t html5 --template=content/slides/html/template.revealjs --standalone --section-divs --variable theme="journal"   --variable transition="linear" content/b$(block)/slides_$(block)_$(no).md -o content/slides/html/block_$(block)_$(no).html
	decktape automatic --chrome-arg=--no-sandbox -s 1280x960 content/slides/html/block_$(block)_$(no).html content/slides/pdf/block_$(block)_$(no).pdf

website:
	rm -rf docs
	rm -rf website/_build
	cd website && rm -rf content
	# list folders with notebooks here. Notebooks must be present in _toc.yml.
	cp -r content website/
	# Build
	jupyter-book build website
	# Copy built site to docs
	cp -r website/_build/html docs
	rm -r website/_build
	# Move slides to built website
	rm -rf docs/content/slides
	mv website/content/slides docs/content
	# Remove copied folders
	rm -rf website/content
	# No Jekyll on remote server
	touch docs/.nojekyll
