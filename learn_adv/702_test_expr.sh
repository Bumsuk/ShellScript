#!/bin/bash
# 예 7-2. [ ] 와 test 의 동일함

echo

if test -z "$1"
then
  echo "명령어줄 인자가 없습니다."
else
  echo "첫번째 명령어줄 인자는 $1 입니다."
fi


if [ -z "$1" ]    # 위의 코드 블럭과 기능적으로 동일합니다.
#   if [ -z "$1"   라고 해도 동작하겠지만...
#+  Bash 는 오른쪽 대괄호가 빠졌다고 에러 메세지를 냅니다.
then
  echo "명령어줄 인자가 없습니다."
else
  echo "첫번째 명령어줄 인자는 $1 입니다."
fi

echo

exit 0
