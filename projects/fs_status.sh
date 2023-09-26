#!/bin/bash

#monitoring the free fs space disk
FU=$(df -H | egrep -V "Filesyaytem|tmpfs" | grep "sd2" | aws '{print $5}' tr -d %)

if [[ $FU -ge 80 ]]
then 
  echo "Warning, disk space is low"
else
  echo "All good"
fi