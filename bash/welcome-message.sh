#!/bin/bash
#
# This script produces the dynamic welcome message
# it should look like
# Welcome to planet hostname, title name!

# Improve this script by using the value in the automatic variable $USER for the name
# Improve this script by adding some time and day of the week information to the welcome message
# Use a format like this:
# It is HH:MM AM on weekday.

###############
# Variables #
###############
name="$USER"
date=$(date +'%I:%M %p')
hostname=$(hostname)
day=$(date +%A)
###############
# Main #
###############
cat <<EOF
if [ "$day" = "Monday" ]
then
Welcome to Earth $hostname, Sudoers $name!
else
if [ "$day" = "Tuesday" ]
then
Welcome to Earth $hostname, Admins $name!
else
if [ "$day" = "Wednesday" ]
then
Welcome to Earth $hostname, Sysadmins $name!
else
if [ "$day" = "Thursday" ]
then
Welcome to Earth $hostname, Aliens $name!
else
if [ "$day" = "Friday" ]
then
Welcome to Earth $hostname, Alchoholic $name!
else
if [ "$day" = "Saturday" ]
then
Welcome to Earth $hostname, Motivated $name!
else
Welcome to Earth $hostname, Pessionist $name!
fi
fi
fi
fi
fi
EOF
echo "It is $date on $day ."
