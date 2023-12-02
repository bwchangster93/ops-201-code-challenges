#!/bin/bash

# Script Name :                     Arrays 101
# Author:                           Benjamin Chang
# date of latest revision:          11/30/2023
# Purpose:                          Learn arrays

# Define variables
PRICE_PER_APPLE=5


# Define array
grocery_list=(apple bannanas orange onion)

# prints out the entire grocery list

# echo ${grocery_list[*]}
# echo ${grocery_list[@]} also works

# THIS IS A FUNDAMENTAL IDEA OF COMPUTING
# Print out a specific index in the array (position starts with 0)
# echo ${grocery_list[0]} lists first item
# echo ${grocery_list[2]} lists 3rd item

# Prints out the total number of items on the list
# echo ${#grocery_list[@]}

# append a new item at the end of the list
new_snack="monster"
grocery_list+=($new_snack)
# echo ${grocery_list[@]}

# add monster as the 2nd item
grocery_list[1]=$new_snack
echo ${grocery_list[*]}

#print out the last item on the list
echo ${grocery_list[${#grocery_list[@]}-1]}
# Main

# echo ${grocery_list[0]}


# End
