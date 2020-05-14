pdflatex -interaction nonstopmode -halt-on-error -file-line-error main.tex | grep "Label(s) may have changed"
bibtex main.aux
pdflatex -interaction nonstopmode -halt-on-error -file-line-error main.tex | grep "Label(s) may have changed"
while [ $? -eq 0 ]
do
	pdflatex -interaction nonstopmode -halt-on-error -file-line-error main.tex | grep "Label(s) may have changed"
done
