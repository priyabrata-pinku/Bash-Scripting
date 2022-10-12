#!/bin/bash

echo "Welcome $USER on $HOSTNAME"
echo "#####################################################"
echo

FREERAM=$(free -m | grep Mem | awk '{print $4}')
LOAD=`uptime | awk '{print $9}'`
ROOTFREE=$(df -h | grep '/dev/sda1' | awk '{print $4}')

echo "Available free RAM is $FREERAM MB"
echo "#####################################################"
echo "Current Load Avarage is $LOAD"
echo "#####################################################"
echo "Free ROOT partiotionsize is $ROOTFREE MB"
