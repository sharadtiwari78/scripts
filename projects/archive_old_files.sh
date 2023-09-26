#!/bin/bash
#$Revision:001$
#$Thu Sep 21 20:26:36 IST 2023$

#Variables
BASE=/home/sharad/projects #lOCATION WHERE YOU WANT TO PERFORM THIS ACTION
DAYS=10 #HOW MANY DAYS OLD FILE YOU WANT TO ARCHIVE
DEPTH=1
RUN=0

#Check if the directory is present or not 
if [[ ! -d $BASE ]]
then 
  echo "directory does not exist: $BASE"
  exit 1
fi
#Create 'archive' folder if not present
if [[ -d $BASE/archive ]]
then
  mkdir $BASE/archive
fi

#Find the list of files larget than 20MB
for i in 'find $BASE -maxdepth $DEPTH -type -f -size +20M'
do
  if [[ $RUN -eq 0 ]]
  then
    echo "[$(date"+%Y-%m-%d %H:%M:%S")] $i ==> $BASE/archive"
    gzip $i || exit 1
    mv $i.gz $BASE/archive || exit 1  
  fi
done

#Create cronjob for this file run the below command
#crontab -e
#05 01 * * * /home/sharad/scripts/projects