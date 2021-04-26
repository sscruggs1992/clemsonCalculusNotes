#!/bin/bash
ZIPNAME=math1040Notes.zip
KEYDIR=math1040_NoteKeys
TMPDIR=noteKeys_math1040
zip -uT $ZIPNAME subfiles/briggs02_*.tex subfiles/briggs03_0{1..7}.tex subfiles/jit0{1..8}*.tex subfiles/jit1{0,1,2,5}_?.tex math1040Notes.{pdf,tex} images/fig3-40.png
zip -uT --junk-paths $ZIPNAME $TEX_HOME/{texPreamble.sty,colorPalette.sty,texShortcutsWesterbaan.tex}
zip -uT $ZIPNAME $KEYDIR/*
zip -uT $ZIPNAME filehook-scrlfile.sty
