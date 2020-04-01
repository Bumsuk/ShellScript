#!/bin/bash
clear

# 빈 배열과 빈 요소를 갖는 배열은 다릅니다.

array0=( first second third )
array1=( '' )   # "array1" 은 한 개의 요소를 갖고 있습니다.
array2=( )      # 요소가 없죠... "array2"는 비어 있습니다.

echo

echo "array0 의 요소들:  ${array0[@]}"
echo "array1 의 요소들:  ${array1[@]}"
echo "array2 의 요소들:  ${array2[@]}"
echo
echo "array0 의 첫번째 요소 길이 = ${#array0}"
echo "array1 의 첫번째 요소 길이 = ${#array1}"
echo "array2 의 첫번째 요소 길이 = ${#array2}"
echo
echo "array0 의 요소 갯수 = ${#array0[*]}"  # 3
echo "array1 의 요소 갯수 = ${#array1[*]}"  # 1  (놀랍죠!)
echo "array2 의 요소 갯수 = ${#array2[*]}"  # 0

echo

# 배열 복사.
array1=(1 2 3)
array2=( "${array1[@]}" )
echo "배열체크1 : ${array2[@]}"

# 배열에 원소 추가.
array1=(1 2 3)
array1=( "${array1[@]}" "4" )
echo "배열체크2 : ${array1[@]}"

# 혹은
array1=(1 2 3)
array1[${#array1[*]}]=4
echo "배열체크3 : ${array1[@]}"


exit 0  # Thanks, S.C.
