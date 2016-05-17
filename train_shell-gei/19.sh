#!/bin/bash
cat ../data/hightemp.txt | awk '{a[$1]++}END{for (k in a){print a[k],k}}' | egison -s '1#(sort/fn 2#(compare (2#%1 %2) (2#%1 %1)) %1)'
