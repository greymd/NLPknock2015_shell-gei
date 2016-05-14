#!/bin/bash
echo 'Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics.' | xargs -n 1 | tr -dc 'a-zA-Z\n' | awk '{s=$0;print gsub(/./,"",s),$0}'
