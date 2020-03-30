#!/bin/bash
# let 은 변수에 대한 산술연산을 해준다.
# expr 과 let 은 비슷한데, 좀더 간단한 기능은 let

clear

# 자꾸 쉘에서 let 보다 (( expr )) 를 사용하라는 에러가 난다.

let num=100
echo "num : ${num}"

let "num -= 10"
echo "num : ${num}"

let "num += 10"
echo "num : ${num}"

(( num -= 10 ))
echo "num : ${num}"

(( num += 10 ))
echo "num : ${num}"