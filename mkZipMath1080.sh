#!/bin/bash
ZIPNAME=math1080Notes.zip
KEYDIR=math1080_NoteKeys
TMPDIR=noteKeys_math1080
zip -uT $ZIPNAME subfiles/briggs05_05.tex subfiles/briggs{06,08,10,11,12}*.tex math1080Notes.{pdf,tex}
zip -uT --junk-paths $ZIPNAME $TEX_HOME/{texPreamble.sty,colorPalette.sty,texShortcutsWesterbaan.tex}
zip -uT $ZIPNAME $KEYDIR/*
zip -uT $ZIPNAME filehook-scrlfile.sty
