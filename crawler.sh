#!/bin/bash
URL=$1
function parse()
{
curl "$URL" | sed -n 's/.*href="\([^"]*\).*/\1/p' >links.txt 
}
parse 
