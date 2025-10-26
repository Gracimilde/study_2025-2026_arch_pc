all: report.pdf report.docx

# Diretórios
BIB_DIR = bib
IMG_DIR = image  # Alterado de "imagem" para "image"
PANDOC_DIR = pandoc

# Gerar PDF
report.pdf: report.md
	pandoc report.md \
	--filter pandoc-crossref \
	--bibliography=$(BIB_DIR)/references.bib \
	--template=$(PANDOC_DIR)/template.yaml \
	--pdf-engine=xelatex \
	-o report.pdf

# Gerar DOCX
report.docx: report.md
	pandoc report.md \
	--filter pandoc-crossref \
	--bibliography=$(BIB_DIR)/references.bib \
	--template=$(PANDOC_DIR)/template.yaml \
	-o report.docx

clean:
	rm -f report.pdf report.docx

.PHONY: all clean
