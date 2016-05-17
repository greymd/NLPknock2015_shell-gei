#!/bin/bash
myfunc() { cat ../data/hightemp.txt| sed -n $(( $(cat ../data/hightemp.txt | wc -l | awk '$1=$1') - $1 + 1 ))',$p'; } ; myfunc 4
