#!/bin/bash
cat ../data/hightemp.txt| awk '$0=$1' | awk '{a[$1]} END{for (k in a){print k}}'
