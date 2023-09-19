#!/bin/bash

FILE="*/names.txt"
for name in $(cat $FILE)
do
  echo "User created for $name"
done
