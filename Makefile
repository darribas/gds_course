.PHONY: all website
leftparen:=(
rightparen:=)

# Run for example as: `make slide block=A no=i`
slide:
	pandoc -t html5 --template=content/slides/template.revealjs --standalone --section-divs --variable theme="journal"   --variable transition="linear" content/b$(block)/slides_$(block)_$(no).md -o content/slides/block_$(block)_$(no).html
	decktape automatic --chrome-arg=--no-sandbox -s 1280x960 content/slides/block_$(block)_$(no).html content/slides/pdf/block_$(block)_$(no).pdf

pack: html pdf
html:
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
	# Move data to built website
	mv website/content/data/* docs/content/data/
	# Move figs to built website
	rm -rf docs/content/figs
	mv website/content/figs docs/content
	# Remove copied folders
	rm -rf website/content
	# No Jekyll on remote server
	touch docs/.nojekyll
pdf:
	rm -rf website/_build
	cd website && rm -rf content
	# list folders with notebooks here. Notebooks must be present in _toc.yml.
	cp -r content website/
	# Build
    ## Trick from: https://github.com/executablebooks/jupyter-book/issues/593#issuecomment-737770758
	sed -i "s/self._defaultNavigationTimeout = 30000/self._defaultNavigationTimeout = 30000000000/" \
        /opt/conda/lib/python3.10/site-packages/pyppeteer/page.py
	jupyter-book build website/ --builder pdfhtml
	# Move over to docs
	mv website/_build/pdf/book.pdf content/gds_course.pdf
	# Clean
	rm -rf website/content
	rm -r website/_build
test:
	rm -rf tests
	mkdir tests
	jupyter nbconvert --to notebook \
                      --execute \
                      --output-dir tests \
                      --ExecutePreprocessor.timeout=600 \
                      --ExecutePreprocessor.ipython_hist_file='' \
                      content/b*/*.ipynb 
	jupyter nbconvert --to notebook \
                      --execute \
                      --output-dir tests \
                      --ExecutePreprocessor.timeout=600 \
                      --ExecutePreprocessor.ipython_hist_file='' \
                      content/assessment.ipynb                      
	rm -rf tests
	echo "###########################\n\nAll blocks passed\n\n###########################"
reset_docs:
	rm -r docs/*
	git checkout HEAD docs/
    
pack_site: pack
	rm -f gds_course_site.zip
	cd docs && zip -r ../gds_course_site.zip ./

pack_content:
	rm -f gds_course_content.zip
	rm -rf gds_course_content
	cp -r content gds_course_content
	cd gds_course_content && zip -r ../gds_course_content.zip ./
	rm -r gds_course_content
