#!/bin/zsh

# ex 1
echo "\nex1"
echo "shell scripting is fun!"

# ex 2
first_var="Shell scripting is fun"
echo "\nex2"

echo "$first_var"

# ex 3

echo "\nex3"
hn=$(hostname)
echo "This script is running on: ${hn}"

# ex 4
echo "\nex4"

if [ -e /etc/shadow ]
then
    echo "/etc/shadow exists"
else
    echo "I am sorry, that does not exist"
fi

# ex 5
echo "\nex5"
animals=('man' 'bear' 'pig' 'dog' 'cat' 'sheep')
for critter in $animals
do
    echo "$critter"
done
# could be one line less but wanted to experiment with defining variable from
# an array.

# ex 6
if [ ${#@} = 0 ]
then
echo "\nex6"

echo "Let us see what we are working with: "
cwd_contents=$(ls)
echo "${cwd_contents}"

# for zsh use read <var_name>\?<prompt text> instead of `read -p <prompt>
# <variable_name>
read TARGET\?"Even though you can see the contents above, which thing would you
like to check the status of? : "

echo "Checking the status of ${TARGET}..."

if [ -f $TARGET ]
then
    echo "${TARGET} is a regular file"
elif [ -d $TARGET ]
then
    echo "${TARGET} is a directory"
elif [ -e $TARGET ]
then
    echo "${TARGET} exists and is file other than \`regular\`"
else
    echo "\`${TARGET}\` does not seem to exist as far as I can tell."
fi
else
    echo "\nex 6 skipped due to the provided number of command line arguements"
fi

# ex 7
if [ ${#@} = 1 ]
then
echo "\nex7"
FILE=${1}

echo "Checking the status of ${FILE}..."

if [ -f $FILE ]
then
    echo "${FILE} is a regular file"
elif [ -d $FILE ]
then
    echo "${FILE} is a directory"
elif [ -e $FILE ]
then
    echo "${FILE} exists and is file other than \`regular\`"
else
    echo "\`${FILE}\` does not seem to exist as far as I can tell."
fi
else
    echo "\nex 7 skipped due to the provided number of command line arguements"
fi


# ex 8

if [ ${#@} -gt 1 ]
then
    echo "\nex8"
    for file_name in ${@}
        if [ -f $file_name ]
        then
            echo "${file_name} is a regular file"
        elif [ -d $file_name ]
        then
            echo "${file_name} is a directory"
        elif [ -e $file_name ]
        then
            echo "${file_name} exists and is file other than \`regular\`"
        else
            echo "\`${file_name}\` does not seem to exist as far as I can tell."
        fi
else
    echo "\nex 8 skipped due to the provided number of command line arguements"
fi

