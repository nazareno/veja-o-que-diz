#!/bin/bash

tail -n +4 "$*" | grep -v '^00' | sed -e 's/<[^>]*>//g' | sed '/^ *$/d' | uniq | tr '\n' ' ' 
