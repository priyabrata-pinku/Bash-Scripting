#!/bin/bash

read -s -t 15 -p "What is your first name?: " fn
echo
read -s -t 15 -p "What is your surname/family name?: " sn
echo
read -s -t 15 -N 4 -p "What is your extension number?: " en 
echo
read -s -t 15 -p "What access code would you like to use when dialing in?: " ac
echo
echo "My name is $fn $sn"
echo "My extension code number is $en"
echo "My access code is $ac"
