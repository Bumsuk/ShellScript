#!/bin/bash
# 배열에 대해

clear

array=(item1 item2 item3)

echo "array : ${array}"

# 생각한대로 안됨 > 추후에 다시 보자.
for item in array
do
  echo "[item] ${item}"
done
