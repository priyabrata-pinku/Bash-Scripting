#!/bin/bash

PS3="What kind of phone is this: "
select phone in headset handheld
do
echo "My phone is kind of $phone"
break
done
