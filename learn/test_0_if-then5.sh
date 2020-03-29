#!/bin/bash

# 각각의 if 문엔 then 이 붙어야 함.
# 세미콘론 사용오 싫다면 다음 라인에 then을 위치시킨다.

clear

if [ $# = 0 ]; then
  echo "인수가 필수임!"
  exit 1
fi

if [ -f $1 ]; then
  echo "$1 is file"
elif [ -d $1 ]; then
  echo "$1 is directory"
else
  echo "$1 no exist"
fi

echo "실행끗!"