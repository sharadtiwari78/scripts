#!/bin/bash

#Define a array
MY_DETAILS=("Sharad T" 25 100.00 "Lucknow")

echo "My name is ${MY_DETAILS[0]} and i am ${MY_DETAILS[1]} years old. I have ${MY_DETAILS[2]} rupees and I am going to ${MY_DETAILS[3]}"

#print the all value of array 
echo "All value of the array:- ${MY_DETAILS[*]}"

#print lenght of the array
echo "Lenght of the array is:- ${#MY_DETAILS[*]}"

#print renge of value from array
echo "value from index 1-2:- ${MY_DETAILS[*]:1:2}"

#Updating the value of array
MY_DETAILS+=(30 40 "NEW")

echo "update the value of array:- ${MY_DETAILS[*]}"

#Array with key-value pair

declare -A NEW_DETAILS  
NEW_DETAILS=( [name]="Shivam T" [age]=28 [city]=lucknow)

echo "My name is ${NEW_DETAILS[name]} and my age is ${NEW_DETAILS[age]}. i am leaving in ${NEW_DETAILS[city]}."
