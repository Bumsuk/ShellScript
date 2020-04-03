#!/bin/bash

# 배열에 대해
# https://unix.stackexchange.com/questions/328882/how-to-add-remove-an-element-to-from-the-array-in-bash
# : 이 내용이 참고하기 좋다. 배열 조작 관련내용!

clear

# 이런 미친 문법을 봤나......
array=( [10]=100 [11]=200 [12]=300 ) # 인덱스 10 11 12에 값을 셋팅한 배열
echo ${array[10]}
echo ${array[11]}
echo ${array[12]}

echo ${array[13]} # 에러는 나지 않지만, 아무값도 출력하지 않는다!



