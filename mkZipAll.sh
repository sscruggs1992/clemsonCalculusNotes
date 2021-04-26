#!/bin/bash

for file in math?0?0Notes.tex;
  do pdflatex --shell-escape $file;
     pdflatex --shell-escape $file;
  done

for file in mkZipMath?0?0.sh;
  do ./$file;
  done
