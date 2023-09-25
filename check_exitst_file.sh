#!bin/bash

FILENAME="/home/sharad/scripts/Loops/test.csv"

if [[ -f $FILENAME ]]
then 
  echo "File Exist"
else
  echo "file does not exist"
  exit 1
fi