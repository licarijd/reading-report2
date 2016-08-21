#!/bin/bash

if [ $# -eq 0 ]
then
    echo "Usage: chkargs argument..." 1>&2
    exit 1
fi

for term in $@
do
    search="$search+$term"
done

url="http://www.google.com/search?q=$search&tbm=nws"
#echo $url
open "$url"
