all:
	xelatex thesis.tex && bibtex thesis.aux && xelatex thesis.tex && xelatex thesis.tex

clean:
	find . -type f -iregex '.*\.\(aux\|log\|toc\|backup\|acr\|brf\|gz\|acn\|xdy\|alg\)$$'  -delete

clean_macos:
	find -E . -type f -iregex '.*\.(aux|log|toc|backup|acr|brf|gz|acn|xdy|alg|fdb_latexmk|fls|out|xdv|bbl|blg|pdf)$$'  -delete
