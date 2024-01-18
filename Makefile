all: build/example_ML.pdf

texoptions = \
	     --lualatex \
	     --interaction=nonstopmode \
	     --halt-on-error \
	     --output-directory=build

build/example_ML.pdf: FORCE | build
	latexmk $(texoptions) example_maria_laach.tex

preview: FORCE | build
	latexmk $(texoptions) -pvc example_maria_laach.tex

FORCE:

build:
	mkdir -p build

clean:
	rm -r build
