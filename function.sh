#!/bin/bash

#To make a funtion
function welcomeNote {
    echo "------------"
    echo "Welcome"
    echo "------------"
}

#To call our function
welcomeNote
welcomeNote
welcomeNote

#2nd way to make a funtion
welcomeNote() {
    echo "------------"
    echo "2nd way of Welcome funtion"
    echo "------------"
}

#To call our function
welcomeNote
welcomeNote
welcomeNote
