#!/bin/bash
file="$1"
while read LINE; do
  curl -o /dev/null --silent --head --write-out '%{http_code}' "$LINE"
  echo " $LINE"
done < "$file"
