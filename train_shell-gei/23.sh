#!/bin/bash
cat ../data/jawiki-country.json | jq -r 'select(.title == "イギリス") | .text' | perl -anle '/===[^=]*===/ and print $_,2 or /==[^=]*==/ and print $_,1'
