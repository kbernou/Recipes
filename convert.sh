#!/bin/bash
for file in *.md; do
	if [ "$file" != "README.md" ]; then
		pandoc "$file" -f markdown -t html -o "./html/${file::-3}.ejs"
	fi
done
