#!/bin/bash
URL=$1
function parse()
{
  while read URL;do
    echo "$URL"
    curl "$URL" | sed -n 's/.*href="\([^"]*\).*/\1/p' >links.txt
  done<feed.txt
}
parse 
