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
cd compressed_files
echo $PWD

for file in compressed_files/*_iso.tar.gz;
do
  current_file = ${file:17}
  echo "Extracting $current_file"
  tar -xzvf $current_file $x"_iso.txt" -C ../extracted_files
done

