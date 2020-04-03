#!/bin/bash

# 배열에 대해
# https://unix.stackexchange.com/questions/328882/how-to-add-remove-an-element-to-from-the-array-in-bash
# : 이 내용이 참고하기 좋다. 배열 조작 관련내용!

clear

array=(111 222 333)

echo "array : ${array[@]}"

for item in "${array[@]}"
do
  echo "[item] ${item}"
done

array+=(444 555 666)
echo "배열 추가 후 : ${array[@]}"