#!/bin/bash
ZIPNAME=math1040Notes.zip
KEYDIR=math1040_NoteKeys
TMPDIR=noteKeys_math1040
zip -uT $ZIPNAME briggs2_*.tex briggs3_0{1..7}.tex jit0{1..8}*.tex jit1{0,1,2,5}_?.tex math1040Notes.{pdf,tex} srcImages/fig3-40.png
zip -uT --junk-paths $ZIPNAME $TEX_FOLDER/texPreamble.sty $TEX_FOLDER/colorPalette.sty $TEX_FOLDER/texShortcutsWesterbaan.tex
zip -uT $ZIPNAME $KEYDIR/*
zip -uT $ZIPNAME filehook-scrlfile.sty
