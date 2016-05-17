#!/bin/bash
cat ../data/hightemp.txt | perl -anle 's/\t/ /g and print'
