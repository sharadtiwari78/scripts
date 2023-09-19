#!/bin/bash

#Define variable
name="Sharad T"
age=25

echo "my name is $name and age is $age"

#Change variable value, mentioned above "name"

name="Shivam T"

echo "my name is $name and age is $age"

#Define a linux command output into variable

HOSTNAME=$(hostname)

echo "Name of this machine is $HOSTNAME"

#Define Constant Variable

readonly EYE="two"

echo "my name is $name and age is $age. I have $EYE eyes"