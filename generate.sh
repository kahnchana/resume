#!/usr/bin/env bash
pdflatex -jobname=KR_resume KR_academic_cv.tex

pdflatex -jobname=KR_cv "\AtBeginDocument{\toggletrue{medium}} \input{KR_academic_cv.tex}"

pdflatex -jobname=KR_cv_full "\AtBeginDocument{\toggletrue{long}} \input{KR_academic_cv.tex}"

if [[ ! -d "output" ]]; then
  mkdir "output"
fi

mv *.pdf output/

rm *.aux *.log *.out
