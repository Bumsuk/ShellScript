#!/bin/bash

clear

name1="bumsuk"
name2="ppensgu"

echo "name1 : ${name1}"
echo "name2 : ${name2}"

echo "문제는 컴마 연사자의 사용인데 이해가 쉽지 않네."

# OK let "t1=((1+2))"
# OK let "t1=1+2"
let t1=10*3
echo "t1 : ${t1}"

# 가급적이면 let 을 사용하기보다는, (( expr )) 산술연산식을 사용할 것!
# 근데 아래와 같은 t2에 결과값을 할당할때는 어떻게 하냐??
let "t2 = ((a = 9, 15 / 3))"  # "a"를 세트하고 "t2"를 계산.
echo "t2 : ${t2}"
echo "a : ${a}"

let "name3 = (( ${a} * 2 ))"
echo "name3 : ${name3}"

whoami=`whoami`
echo "whoami : ${whoami}"

number=10
(( number++ ))
echo "number : ${number}"
(( number++ ))
echo "number : ${number}"