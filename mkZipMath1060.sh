#!/bin/bash
ZIPNAME=math1060Notes.zip
KEYDIR=math1060_NoteKeys
TMPDIR=noteKeys_math1060
zip -uT $ZIPNAME subfiles/briggs*.tex math1060Notes.{pdf,tex} images/fig3-40.png impFunc?.pdf
zip -uT --junk-paths $ZIPNAME $TEX_HOME/{texPreamble.sty,colorPalette.sty,texShortcutsWesterbaan.tex}
zip -uT $ZIPNAME $KEYDIR/* images/briggs_{03,04,05}_0?/*
zip -uT $ZIPNAME filehook-scrlfile.sty
