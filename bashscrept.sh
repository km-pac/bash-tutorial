#!/bin/bash

# Creates a file from list.txt

for x in $( cat list.txt );
do 
  echo $x
done
