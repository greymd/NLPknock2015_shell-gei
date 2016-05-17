#!/bin/bash
cat ../data/hightemp.txt | awk 'END{print NR}'
