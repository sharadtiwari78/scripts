#!/bin/bash

<<comment
Condition1 && condition2
If Both conditions are true then true else false
comment

read -p "Enter your age: " age
read -p "Enter your country: " country

if [[ $age -ge 18 ]] && [[ $country == "India" ]]
then 
      echo "You can Vote"
else
      echo "You con't Vote"
fi


<<com
Condition1 || condition2
If any of the condition true then true
com

sleep 3
echo "Enter value for "OR" condition"

read -p "Enter your age: " age
read -p "Enter your country: " country

if [[ $age -ge 18 ]] || [[ $country == "India" ]]
then 
      echo "You can Vote"
else
      echo "You con't Vote"
fi

<<com
Condition1 && condition2
Condition1 || condition2
Execute condition2 only when condition1 is true else execute condition3
com

sleep 3
echo "Enter Value for 3rd Condition"
read -p "Enter your age: " age
[[ $age -ge 18 ]] && echo "Adult" || echo "Minor"
