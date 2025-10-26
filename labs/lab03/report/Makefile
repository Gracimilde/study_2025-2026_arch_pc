all: report.pdf report.docx

report.pdf: report.md
	pandoc report.md -o report.pdf --pdf-engine=xelatex

report.docx: report.md
	pandoc report.md -o report.docx

clean:
	rm -f report.pdf report.docx

.PHONY: all clean
