#!/bin/bash

# Script:   Loops 101
# Author:   Benjamin Chang   
# Date:     12/01/2023
# Purpose:  Learn about loops!


# Definte an array
names=(Bob Jane Mike Sarah)
count=4

# FOR LOOP
# Basic syntax
for name in ${names[@]}
do
    echo $name
done

# while loop   
#basic syntax
while [ $count -gt 0 ]; do
    echo "$count"
    count=$(($count -1))
done

echo "countdown complete"

# Main