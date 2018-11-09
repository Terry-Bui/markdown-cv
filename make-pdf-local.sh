#!/usr/bin/env sh

# This script build the site to _site directory. Then using pandoc take in the resume in html
# format and output it as a pdf file.

# This is the relative path from the root of this project to the html file.
input_file="_site/index.html"

# This is the full name of the output file.
output_file="terry-bui-cv.pdf"

jekyll build
# The title:"" is to prevent pandoc from adding the title.
pandoc $input_file -t html5 -o  $output_file --css=media/terrybui-print.css -V title:""
