#!/bin/bash
$ cat ../data/hightemp.txt | egison -F1,2s -s '1#(sort/fn 2#(compare (6#(round (* 10.0 %3)) %2) (6#(round (* 10.0 %3)) %1)) %1)'
