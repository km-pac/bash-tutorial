#!/bin/bash

rm -f *_iso.txt
rm -rf compressed_files
rm -rf extracted_files

echo "Generating random text files"
sleep 1

mkdir compressed_files
mkdir extracted_files

for x in $( cat generated_numbers.txt );
do
  echo "Created $x ISO file" >> $x"_iso.txt"
  tar -czvf $x"_iso.tar.gz" $x"_iso.txt"
  mv $x"_iso.tar.gz" compressed_files
done

rm -f *_iso.txt

for x in /*_iso.tar.gz;
do
  echo ${x:1}
  #echo $x >> $x"_iso.txt"
  #tar -xzvf $(*_iso.tar.gz) $x"_iso.txt"
done

