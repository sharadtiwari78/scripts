#!/bin/bash

A=10

until [[ $A -eq 1 ]]
do 
   echo "value of A is $A"
   let A--
done