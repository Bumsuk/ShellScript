#!/bin/bash
clear

# 간단 배열 사용법

area[11]=23
area[13]=37
area[51]=UFOs

# 배열 멤버들은 인접해 있거나 연속적이지 않아도 됩니다. > 언어적 관점에서는 어처구니가 없지만... 쉘스크립트니까..
# 몇몇 멤버를 초기화 되지 않은 채 놔둬도 됩니다.
# 배열 중간이 비어 있어도 괜찮습니다.


echo -n "area[11] = "
echo ${area[11]}    #  {중괄호}가 필요

echo -n "area[13] = "
echo ${area[13]}

echo "area[51]의 값은 ${area[51]} 입니다."

# 초기화 안 된 배열 변수는 빈 칸으로 찍힙니다.
echo -n "area[43] = "
echo ${area[43]}
echo "(area[43]은 할당되지 않았습니다)"
echo

# 두 배열 변수의 합을 세 번째 배열 변수에 할당합니다.

area[5]=`expr ${area[11]} + ${area[13]}`
# 아래 둘다 똑같은 연산이다.
#((area[5]=$area[11] + $area[13] ))
#let "$area[5] = $area[11] + $area[13]"

echo "area[5] = area[11] + area[13]"
echo -n "area[5] = "
echo ${area[5]}
echo

area[6]=`expr ${area[11]} + ${area[51]}`
echo "area[6] = area[11] + area[51]"
echo -n "area[6] = "
echo ${area[6]}
# 문자열에 정수를 더하는 것이 허용되지 않기 때문에 동작하지 않습니다.





