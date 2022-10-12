#!/bin/bash

### This script prints system info ###
echo "#####################################"
echo "Welcome to bash script"
echo "#####################################"
echo

# checking system uptime #
echo "#####################################"
echo "The uptime of the system is: "
echo "#####################################"
uptime
echo

# Memory Utilization #
echo "#####################################"
echo "Memory Utilization"
echo "#####################################"
free -m
echo

# Disk Utilization #
echo "#####################################"
echo "Disk Utilization"
echo "#####################################"
df -h