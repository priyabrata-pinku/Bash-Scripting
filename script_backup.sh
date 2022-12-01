#!/bin/bash

# Author: Priyabrata Sahoo
# Date Created: 29/11/2022
# Date Modified: 29/11/2022

# Description
# Backup my Script Folder

# Usages
# backup_script

# Instruction message befote backup
echo "Hi there, ${USER^}"
echo "I'll now backup your home directory, $HOME/bash_course"

currentdir=$(pwd)
# compress scripts file directory to take it as a backup
tar -cf "$HOME/my_backup_$(date +%d-%m-%Y_%H-%M-%s).tar" $currentdir 2> /dev/null

# Backup complete message
echo "Backup completed successfully"
