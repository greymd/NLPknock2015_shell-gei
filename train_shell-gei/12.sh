#!/bin/bash
cat ../data/hightemp.txt | awk '$0=$1' > ../col1.txt && cat ../data/hightemp.txt | awk '$0=$2' > ../col2.txt
