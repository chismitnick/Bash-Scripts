#!/bin/bash
#Csamiselo Jun 2020
#csamiselo@github.com

#A simplpe script to demo the usage of variables equaility and assignment operations

friut=banana

#variable named coynt with a value of 5 assigned to it
count=5
echo "We have  $count ${friut}(s)"

#using the length ${#var_name} parameter to get the length of a variable
echo "The are" ${#friut} "letters" "in the word banana"
