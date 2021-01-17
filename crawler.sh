#!/bin/bash
URL=$1
function parse()
{
  while read URL;do
    curl "$URL" | grep -E 'title>|link>' |\
    sed -e 's/<title>//' -e 's/<\/title>//' -e 's/<link>/   /' -e 's/<\/link>//' 
  done<feed.txt
}
parse 
