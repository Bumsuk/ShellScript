#!/bin/bash
clear

# 간단 배열 사용법

# -----------------------------------------------
# 또 다른 배열 "area3".
# 배열 변수에 값을 할당하는 또 다른 방법...
# array_name=([xx]=XXX [yy]=YYY ...)

area3=([17]=seventeen [24]=twenty-four)

echo -n "area3[17] = "
echo ${area3[17]}

echo -n "area3[24] = "
echo ${area3[24]}
# -----------------------------------------------

echo "======"

# 배열 변수는 독특한 문법을 갖고 있고 표준 Bash 연산자들도 배열에 쓸 수 있는 특별한 옵션을 갖고 있습니다.
array=(zero one two three four five)

echo "🤡" ${array[0]} #  zero
echo ${array:0}  #  zero

#  첫번째 요소의 매개변수 확장.
echo ${array:1} #  ero > 잘생각해보면 쉽다. array 자체가 첫번째 요소(zero)로 치환되고, 그 문자열의 1번째 문자부터 표시
#  첫번째 요소의 두 번째 문자에서부터 매개변수 확장.

echo ${#array} #  4
#  배열 첫번째 요소의 길이.
