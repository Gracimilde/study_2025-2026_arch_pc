PANDOC = pandoc
SOURCE = report/report.md

all: report/report.docx

report/report.docx: $(SOURCE)
	$(PANDOC) $(SOURCE) \
	--resource-path="." \
	--extract-media="report" \
	-o report/report.docx

clean:
	rm -f report/report.docx

.PHONY: all clean
