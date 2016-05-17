#!/bin/bash
cat ../data/jawiki-country.json | jq -r 'select(.title == "イギリス") | .text' | sed -n '/{{基礎情報/,/^}}/{p}' | perl -pe 's/\n/\\n/g;' | perl -pe 's/\\n\|/\n/g' | perl -anle '/^(.*?) = (.*)/ and print "{".$1." : ".$2."}"'
