#!/bin/bash

while IFS= read -r line; do
  DATASTREAM=`printf '%s\n' "$line"`
  STRING_DATA=`echo "$STRING_DATA\n$DATASTREAM"`
done

echo -e `echo $STRING_DATA | xxd -p | sed 's/3d0a//g' | xxd -p -r`
