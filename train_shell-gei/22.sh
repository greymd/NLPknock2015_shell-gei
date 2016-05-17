#!/bin/bash
cat ../data/jawiki-country.json | jq -r 'select(.title == "イギリス") | .text' | awk -F'[:|*\\]]' '/Category/{print $2}'
