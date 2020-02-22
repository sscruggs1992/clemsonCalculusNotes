#!/bin/bash
ZIPNAME=math1060Notes.zip
KEYDIR=math1060_NoteKeys
TMPDIR=noteKeys_math1060
zip -uT $ZIPNAME briggs*.tex math1060Notes.{pdf,tex} srcImages/fig3-40.png impFunc?.pdf
zip -uT --junk-paths $ZIPNAME $TEX_FOLDER/texPreamble.sty $TEX_FOLDER/colorPalette.sty $TEX_FOLDER/texShortcutsWesterbaan.tex
zip -uT $ZIPNAME $KEYDIR/* images/briggs_*/*
zip -uT $ZIPNAME filehook-scrlfile.sty
