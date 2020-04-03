#!/bin/bash
clear
enc_list=( `iconv --list` )


enc_list=(111 222 333)
echo ${enc_list[@]}

echo "======="



#for item in "${enc_list[@]}"; do
#  read -a arrItem <<< $item
#  echo "arrItem 개수 : ${#arrItem[@]}"
#  echo "arrItem[0] : ${arrItem[0]}"
#done

#string="ANSI_X3.4-1968 ANSI_X3.4-1986 ASCII CP367 IBM367 ISO-IR-6 ISO646-US ISO_646.IRV:1991 US US-ASCII CSASCII"
##arr=($string)
#read -a arr <<< $string
#echo "arr 갯수 : ${#arr[@]}"
#
#for item in "${arr[@]}"; do
#  echo "배열요소 : ${item}"
#done