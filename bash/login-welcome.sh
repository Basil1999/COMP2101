#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############

myname="USER"
hostname="$(hostname)"

day=$(date +%A)
hour=$(date +%I)
minute=$(date +%M)
meridian=$(date +%P)
echo "it is $day at $hour:$minute $meridian"

if [ $day == "Monday" ]
then
  title="monday might be optimisti"
elif [ $day == "Tuesday" ]
then
  title="tuesday might be realistic"
elif [ $day == "Wednesday" ]
then
  title="wednesday might be optimistic"
elif [ $day == "Thursday" ]
then
  title="thursday is the day after Wednesday"
elif [ $day == "Friday" ]
then
  title="friday is the day after thursday"
elif [ $day == "Saturday" ]
then
  title="saturday is the day after friday"
elif [ $day == "Sunday" ]
then
  title="sunday is the day after saturday"

fi
  ###############
# Main        #
###############
message="Welcome to planet $hostname, $title $myname"

cowsay $message
