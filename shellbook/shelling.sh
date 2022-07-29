#!/bin/bash
MY_SHELL="bash"
echo "I am ${MY_SHELL}ing on my keyboard."
echo "$MY_SHELL"
echo "$(ls)"
echo "you looked at expanded output of ls"
for each in $(ls)
do
    echo "$each"
done


SERVER_NAME=$(hostname)
echo "You are running this script on ${SERVER_NAME}."

