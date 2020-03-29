#!/bin/bash

# 각각의 if 문엔 then 이 붙어야 함.
# 세미콘론 사용오 싫다면 다음 라인에 then을 위치시킨다.

clear

if [ $# = 0 ]; then
  echo "인수가 필수임!"
  exit 1
fi

# 숫자와 문자열을 어떻게 구분하냐?? 쉘은 타입이 없다.
echo "인수값 확인"
if [ $1 = 1234 ]; then
  echo "숫자 1234"
elif [ $1 = "1234" ]; then
  echo "문자열 1234"
fi


if [ $1 = 1 ]; then
  echo "입력인수값 : $1"
elif [ $1 = 2 ]; then
  echo "입력인수값 : $1"
else
  echo "그외의 인수값!"
fi