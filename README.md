# Clemson Calculus Notes
This repository contains notes for Clemson University's calculus sequence.
The main files are `math?0?0Notes.{pdf,tex}` which inherit their styling from `mathNotesPreamble.tex`. The `subfile` package is used to import each section's source file, contained in the `subfiles` directory, into the main `math?0?0Notes.tex` file.

* [math1040Notes.pdf](https://github.com/pwesterbaan/clemsonCalculusNotes/raw/master/math1040Notes.pdf)
* [math1060Notes.pdf](https://github.com/pwesterbaan/clemsonCalculusNotes/raw/master/math1060Notes.pdf)
* [math1070Notes.pdf](https://github.com/pwesterbaan/clemsonCalculusNotes/raw/master/math1070Notes.pdf)
* [math1080Notes.pdf](https://github.com/pwesterbaan/clemsonCalculusNotes/raw/master/math1080Notes.pdf) -- *currently incomplete*
* [math2060Notes.pdf](https://github.com/pwesterbaan/clemsonCalculusNotes/raw/master/math2060Notes.pdf)

My [preamble files](https://github.com/pwesterbaan/scripts/tree/master/texmf/tex/latex/local) include the following files which contain packages and macros needed to compile:

* [texPreamble.sty](https://github.com/pwesterbaan/scripts/blob/master/texmf/tex/latex/local/texPreamble.sty)
* [texShortcutsWesterbaan.tex](https://github.com/pwesterbaan/scripts/blob/master/texmf/tex/latex/local/texShortcutsWesterbaan.tex)
* [colorPalette.sty](https://github.com/pwesterbaan/scripts/blob/master/texmf/tex/latex/local/colorPalette.sty)

Note:

* Compiling using the option ```--shell-escape``` takes advantage of the *Externalization Library* provided by Ti*k*Z which converts each image into a separate PDF (located in the ```\images``` folder).
* A standard free Overleaf account times out before this project finishes compiling, but individual sections can be compiled by including the ```mathNotesPreamble.tex``` file in the same directory/folder.