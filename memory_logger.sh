#!/bin/bash

if [ -d $HOME/performance ]; then
	echo "File Exists"
else
	mkdir $HOME/performance
	echo "$HOME/performance created"
fi
free >> $HOME/performance/memory.log
