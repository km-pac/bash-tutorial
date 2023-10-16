#!/bin/bash

# Creates a file from list.txt
echo "Generating random text files"
sleep 1

mkdir compressed_files

for x in $( cat list.txt );
do
  echo $x >> "$x.txt"
  mv "$x.txt" compressed_files
done
