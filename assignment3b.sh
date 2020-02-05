#!/bin/bash
echo "Assignment 3 - Part B"
echo "Name: Taidgh Murray"
echo "Student ID: 15315901"

# Ping an IP address 5 times and redirects the output to a text file
# Use grep to search the text file and display the lines containing "packets"
# to stdout

# Change the mode of your script to become an executable and submit
# the script along with a screenshot of it running.

# Define IP address
IP=nuigalway.ie

# Ping the address 5 times and output it to output.txt
> output.txt ping -c 5 $IP

# Search output.txt using grep and display the lines containing package
ping_info=$(grep "packets" output.txt)

# If info is found, print it out using echo
# Some simple colour formatting has been applied
if [[ ping_info ]]; then
	echo -e "\e[32mPing information successfully retrieved:"
	echo $ping_info
else
	echo -e "\e[31mNo information found."
fi

# This code resets any colour and background to normal
echo -e "\e[39;49m"
# To turn it into a executable, we need to chmod the permissions like so
# chmod +x assignment3.sh
# Then can be run using ./assignment3b.sh
