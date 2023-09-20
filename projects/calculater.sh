#!/bin/bash

Addition() {
    read -p "Enter your first value: " value1
    read -p "Enter your second value: " value2
    let add=$value1+$value2 
    echo "$add"
}

Subtraction() {
    read -p "Enter your first value: " value1
    read -p "Enter your second value: " value2
    let Sub=$value1-$value2 
    echo "$Sub"
}

Division() {
    read -p "Enter your first value: " value1
    read -p "Enter your second value: " value2
    let Div=$value1/$value2 
    echo "$Div"
}

Multiplication() {
    read -p "Enter your first value: " value1
    read -p "Enter your second value: " value2
    let Mul=$value1*$value2 
    echo "$Mul"
}

Addition
Subtraction
Division
Multiplication
