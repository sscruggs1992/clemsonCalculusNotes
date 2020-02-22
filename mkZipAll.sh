#!/bin/bash

for file in math10?0Notes.tex;
  do pdflatex --shell-escape $file;
     pdflatex --shell-escape $file;
  done

for file in mkZipMath10?0.sh;
  do ./$file;
  done
