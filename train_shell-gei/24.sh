#!/bin/bash
cat ../data/jawiki-country.json | jq -r 'select(.title == "イギリス") | .text' | perl -nle '/.*\Kファイル:.*/ and print $&'
