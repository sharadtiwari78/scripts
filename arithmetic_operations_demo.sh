#!/bin/bash

#Maths Calculation
A=50
B=20

#Print the value directlly 
echo "$(($A+$B))"
echo "$(($A-$B))"
echo "$(($A*$B))"
echo "$(($A/$B))"

#Store value and then print it
let mul=$A+$B
echo "$mul"

let sum=$A*$B
echo "$sum"
