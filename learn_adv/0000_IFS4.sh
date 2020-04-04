#!/bin/bash

clear

echo 1 2 3 4 5

IFS='*'
echo -n "$IFS" | hexdump -C

echo "IFS 값 확인 - ${IFS}"

numbers=( 1 2 3 4*5 )
echo "arr count : ${#numbers[@]}"
echo "${numbers[0]}"
echo "${numbers[1]}"
echo "${numbers[2]}"
echo "${numbers[3]}"
echo "${numbers[4]}"


#echo 1-2-3-4-5

