#!/bin/bash
cat <<- EndOfText
    This is a
    multiline
    text string
EndOfText


ftp -n <<- DoneWithTheUpdate
      open mirrors.xmission.com
      user anonymous nothingthere
      ascii
      cd gutenberg
      get GUTINDEX.01
      bye
DoneWithTheUpdate
