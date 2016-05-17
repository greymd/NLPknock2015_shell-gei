#!/bin/bash
cat <(nl ../col1.txt) <(nl ../col2.txt) | sort -s -k1,1 | awk '$1=$1' | yarr num=1 | awk '$0=$2"\t"$3'
