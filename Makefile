all: proposal thesis
	xelatex tutorial.tex && bibtex tutorial.aux && texindy tutorial.idx && makeglossaries tutorial && xelatex tutorial.tex && xelatex tutorial.tex

proposal:
	xelatex proposal.tex && bibtex proposal.aux && xelatex proposal.tex && xelatex proposal.tex

thesis:
	xelatex thesis.tex && bibtex thesis.aux && xelatex thesis.tex && xelatex thesis.tex

thesis_docx:
	pandoc -s thesis.tex -o thesis.docx

thesis:
	xelatex beamer.tex && bibtex beamer.aux && xelatex beamer.tex && xelatex beamer.tex

clean:
	find . -type f -iregex '.*\.\(aux\|log\|toc\|backup\|acr\|brf\|gz\|acn\|xdy\|alg\)$$'  -delete

clean_macos:
	find -E . -type f -iregex '.*\.(aux|log|toc|backup|acr|brf|gz|acn|xdy|alg|fdb_latexmk|fls|out|xdv|blg|bbl)$$'  -delete
