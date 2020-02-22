#!/bin/bash
ZIPNAME=math1070Notes.zip
KEYDIR=math1070_NoteKeys
TMPDIR=noteKeys_math1070
zip -uT $ZIPNAME jit{9,13}*.tex briggs3_{08,09,10,11}.tex briggs{4,5}_*.tex math1070Notes.{pdf,tex} review1040.tex impFunc?.pdf
zip -uT --junk-paths $ZIPNAME $TEX_FOLDER/texPreamble.sty $TEX_FOLDER/colorPalette.sty $TEX_FOLDER/texShortcutsWesterbaan.tex
zip -uT $ZIPNAME $KEYDIR/*
zip -uT $ZIPNAME filehook-scrlfile.sty
