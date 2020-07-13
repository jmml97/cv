.PHONY: all

all: cv cv.es cv-s cv-s.es

cv: cv.tex
	lualatex $<
	lualatex $<

cv.es: cv.es.tex
	lualatex $<
	lualatex $<

cv-s: cv.tex
	lualatex -jobname="$@" "\def\emailphone{1} \input{$<}"
	lualatex -jobname="$@" "\def\emailphone{1} \input{$<}"

cv-s.es: cv.es.tex
	lualatex -jobname="$@" "\def\emailphone{1} \input{$<}"
	lualatex -jobname="$@" "\def\emailphone{1} \input{$<}"

clean:
	rm *.aux *.log *.out

cleanall: clean
	rm *.pdf