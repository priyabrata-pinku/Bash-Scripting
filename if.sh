#!/bin/bash

if [[ 2 -lt 1 ]]; then
	echo "first test passed"
elif [[ 2 -eq 2 ]]; then
	echo "second test passed"
else
	echo "Test failed"
fi
