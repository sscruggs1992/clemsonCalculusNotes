#!/bin/bash
ZIPNAME=math2060Notes.zip
KEYDIR=math2060_NoteKeys
TMPDIR=noteKeys_math2060
zip -uT $ZIPNAME subfiles/briggs{13,14,15,16,17}*.tex math2060Notes.{pdf,tex}
zip -uT --junk-paths $ZIPNAME $TEX_HOME/{texPreamble.sty,colorPalette.sty,texShortcutsWesterbaan.tex}
zip -uT $ZIPNAME $KEYDIR/*
zip -uT $ZIPNAME filehook-scrlfile.sty
