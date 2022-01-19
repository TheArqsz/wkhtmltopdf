#!/usr/bin/env bash
set -e

HTML_FILE="test.html"
PDF_FILE="test.pdf"

echo "<html></html>" > $HTML_FILE

docker run --rm --name wkhtmltopdf -v $(pwd):/pdf thearqsz/wkhtmltopdf:$VERSION $HTML_FILE $PDF_FILE

if ! [ -f "$PDF_FILE" ]; then
	echo "File not generated"
	exit 1
else
	rm $HTML_FILE $PDF_FILE
	exit 0
fi
