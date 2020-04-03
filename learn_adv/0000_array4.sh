#!/bin/bash

# 배열에 대해
# https://unix.stackexchange.com/questions/328882/how-to-add-remove-an-element-to-from-the-array-in-bash
# : 이 내용이 참고하기 좋다. 배열 조작 관련내용!

clear

array=(111 222 333)

#1 - * 사용시
for i in "${array[*]}"
do
  echo "[1] $i"
done

#2 - @ 사용시
for i in "${array[@]}"
do
  echo "[2] $i"
done

``