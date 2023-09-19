#!/bin/bash
read -p "Enter your age:- " age

if [[ $age -gt 18 ]]
then
      echo "you are adult"
else
       echo "you are minor"
fi
