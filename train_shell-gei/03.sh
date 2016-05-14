#!/bin/bash
echo "パトカー\nタクシー" | sed 's/./ &/g' | tateyoko | xargs | tr -d ' '
