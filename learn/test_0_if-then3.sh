#!/bin/bash

# 각각의 if 문엔 then 이 붙어야 함.
# 세미콘론 사용오 싫다면 다음 라인에 then을 위치시킨다.

if [ $# -lt 2 ]; then
  echo "인수는 2개 이상 입력해라."
  exit 1
elif [ $1 -gt 5 ]; then
  echo "인수 1번은 5보다 크다."
else
  echo "입력 인수값은 $1, $2"
fi