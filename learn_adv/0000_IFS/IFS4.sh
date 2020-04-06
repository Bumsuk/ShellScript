#!/bin/bash

clear

IFS='/'
echo -n "$IFS" | hexdump -C

#numbers=( '1*2*3*4*5' )
numbers=( 1 2/3 )

# echo "arr count : ${#numbers[@]}"
echo "${numbers[0]}"
echo "${numbers[1]}"
echo "${numbers[2]}"
