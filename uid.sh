#!/bin/bash

if [[ $UID -eq 0 ]]
then 
   touch file.txt
else 
  echo "Please logged as root user"
fi