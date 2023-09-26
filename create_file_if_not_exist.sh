#!/bin/bash

FILENAME="/home/sharad/scripts/Loops/demo.txt"

if [[ -f $FILENAME ]]
then 
  echo "File exits"
else 
  echo "File does not exist"
  echo "Createing file"
  touch $FILENAME
  sleep 2s
  echo "File created"
fi