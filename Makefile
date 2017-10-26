RESUME_YML?=resume.yml

all: pdf html txt md

pdf: resume.pdf
resume.pdf: $(RESUME_YML) resume.pandoc.tex
	pandoc --template resume.pandoc.tex $(PDF_ARGS) --latex-engine=xelatex -o resume.pdf $(RESUME_YML)

html: resume.html
resume.html: $(RESUME_YML) resume.pandoc.html
	pandoc --template resume.pandoc.html --self-contained --css resume.css -o resume.html $(RESUME_YML)

txt: resume.txt
resume.txt: $(RESUME_YML) resume.pandoc.plain
	pandoc -t plain --template resume.pandoc.plain -o resume.txt $(RESUME_YML)

md: resume.md
resume.md: $(RESUME_YML) resume.pandoc.markdown
	pandoc -t markdown  --template resume.pandoc.markdown -o resume.md $(RESUME_YML)

clean:
	rm -f resume.pdf resume.html resume.txt resume.md
