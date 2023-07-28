#!/bin/bash

helpFunction()
{
   echo ""
   echo "Usage: $0 -k key_file_name -c email_address -f file_path -p passphrase"
   echo -e "\t-k The key file name that is going to be generated"
   echo -e "\t-c Email address that is going to be added as a comment but it is a github requirement"
   echo -e "\t-f generated key location"
   echo -e "\t-p passphrase"
   exit 1 # Exit script after printing help
}

while getopts "k:c:f:p:" opt
do
   case "$opt" in
      k ) KEY_FILE_NAME="$OPTARG" ;;
      c ) EMAIL_ADDRESS="$OPTARG" ;;
      f ) FILE_PATH="$OPTARG" ;;
      p ) PASSPHRASE="$OPTARG" ;;
      ? ) helpFunction ;; # Print helpFunction in case parameter is non-existent
   esac
done

# Print helpFunction in case parameters are empty
if [ -z "$KEY_FILE_NAME" ] || [ -z "$EMAIL_ADDRESS" ]
then
   echo "Some or all of the parameters are empty";
   helpFunction
fi

if [ -z "$FILE_PATH" ]
then
    FILE_PATH="~/.ssh/"
fi

if [ -z "$PASSPHRASE" ]
then
    PASSPHRASE='""'
fi


# Begin script in case all parameters are correct
echo "key file name: $KEY_FILE_NAME"
echo "email address: $EMAIL_ADDRESS"
echo "generated key location: $FILE_PATH$KEY_FILE_NAME"
echo "passphrase: $PASSPHRASE"


ssh-keygen -t rsa -b 4096 -f $KEY_FILE_NAME -C $EMAIL_ADDRESS -N $PASSPHRASE && \

echo "This is your key that you can copy/paste to github" && \
echo "" && \
echo "" && \

cat $FILE_PATH$KEY_FILE_NAME.pub