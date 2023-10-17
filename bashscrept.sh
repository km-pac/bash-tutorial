#!/bin/bash

# Creates a file from list.txt
echo "Generating random text files"
sleep 1

mkdir compressed_files
mkdir extracted_files

for x in $( cat list.txt );
do
  echo "Created and compressed $x"
  echo $x >> "$x.txt"
  tar -czvf $x.txt.tar.gz compressed_files
done

