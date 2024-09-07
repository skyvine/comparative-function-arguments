#!/bin/sh
MAIN_DOCUMENT_NAME=main
OUTPUT_DIR=build
PDFLATEX_CMD="pdflatex -output-directory=$OUTPUT_DIR"

PACKAGES="make texlive texlive-biber python python-pygments coreutils bash"

guix time-machine --channels=../channels.scm -- shell --pure $PACKAGES -- bash <<EOF
	set -e
	mkdir -p "$OUTPUT_DIR"
	$PDFLATEX_CMD "$MAIN_DOCUMENT_NAME".tex
	biber "$MAIN_DOCUMENT_NAME" --input-directory="$OUTPUT_DIR" --output-directory="$OUTPUT_DIR"
	pygmentex build/"$MAIN_DOCUMENT_NAME".snippets
	$PDFLATEX_CMD "$MAIN_DOCUMENT_NAME".tex
	$PDFLATEX_CMD "$MAIN_DOCUMENT_NAME".tex
EOF
