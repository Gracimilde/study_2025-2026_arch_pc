PANDOC = pandoc
SOURCE = report/report.md
BIBLIO = bib/references.bib
TEMPLATE = pandoc/template.yaml

all: report.pdf report.docx

report.pdf: $(SOURCE)
	$(PANDOC) $(SOURCE) \
	--filter pandoc-crossref \
	--bibliography=$(BIBLIO) \
	--template=$(TEMPLATE) \
	--pdf-engine=xelatex \
	-o report.pdf

report.docx: $(SOURCE)
	$(PANDOC) $(SOURCE) \
	--filter pandoc-crossref \
	--bibliography=$(BIBLIO) \
	-o report.docx

clean:
	rm -f report.pdf report.docx

.PHONY: all clean
