#!/bin/bash

read -p "Please enter a number: " number
case "$number" in
	[0-9]) echo "You have entered a single digit number";;
	[0-9][0-9]) echo "You have entered a double digit number";;
	[0-9][0-9][0-9]) echo "You have entered a three digit number";;
	*) echo "You have entered more than three digit number";;
esac
