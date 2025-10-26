all: report.pdf

# Gerar PDF a partir do DOCX (sem alterar DOCX/MD)
report.pdf: report.docx
	@echo "Convertendo DOCX para PDF..."
	libreoffice --headless --convert-to pdf report.docx
	@echo "PDF gerado a partir do DOCX"

clean:
	rm -f report.pdf

.PHONY: all clean
