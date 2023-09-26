#!/bin/bash

FREE_SPACE=$(free -mt | grep "Total" | awk '{print $4}')
TH=5000

if [[ $FREE_SPACE -lt $TH ]]
then
  echo "WARNING, RAM is running low - $FREE_SPACE M"
else 
  echo "RAM is ok - $FREE_SPACE M"
fi