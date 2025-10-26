all: report.pdf report.docx

# Gerar PDF a partir do DOCX
report.pdf: report.docx
	libreoffice --headless --convert-to pdf report.docx

# Gerar DOCX a partir do MD (se necessário)
report.docx: report.md
	pandoc report.md -o report.docx

clean:
	rm -f report.pdf report.docx

.PHONY: all clean
