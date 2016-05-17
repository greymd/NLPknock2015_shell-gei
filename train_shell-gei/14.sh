#!/bin/bash
myfunc () { cat ../data/hightemp.txt | sed -n "1,$1p"; }; myfunc 4
