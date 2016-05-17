#!/bin/bash
seq $(awk 'END{print NR}' ../data/hightemp.txt) | slit $1 | awk '{print "sed -n "$1","$NF"p ../data/hightemp.txt > ../data/split_hightemp."NR}' | sh
