#!/usr/bin/env bash

jekyll build

pandoc _site/index.html -t html5 -o  terry-bui-cv.pdf --css=media/terrybui-print.css -V title:""

