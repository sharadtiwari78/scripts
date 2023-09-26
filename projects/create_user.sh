#!/bin/bash

# Script should be execute with sudo/root access.
if [[ "${UID}" -ne 0 ]]
then 
  echo "Please logged as root user."
  exit 1
fi

#User should provide atleast one argument as username else guide him
if [[ "${#}" -lt 1 ]]
then 
  echo "Usage: ${0} USER_NAME [COMMENT]..."
  echo "Create a user with name USER_NAME and comments field of COMMENT"
  exit 1
fi

#Store 1st argument as user name
USERNAME= "${1}"
echo $USER_NAME

# In case of more then one argument, store it as account comments
shift
COMMENT="${@}"

# Create a Password
PASSWORD=$(date +%s%N)


# Create the User
useradd -c "${COMMENT}" -m $USER_NAME

# Check if user is successfully create or not
if [[ $? -ne 0 ]]
then 
  echo "The account could not be created"
  exit 1
fi
# Set the password for the user
 echo $PASSWORD | passwd --stdin $USER_NAME

# check if password is successfullt set or not
passwd -e $USER_NAME

#Display the username, password, hostname where the user was created

echo 
echo "Username: $USER_NAME"
echo 
echo "Password: $PASSWORD"
echo 
echo $(hostname)