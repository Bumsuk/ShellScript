#!/bin/bash
clear

# !!!!! 함수 사용에 있어서 매우 중요한 내용이니 잘 보자. 문법은 일단 잘 익혀야.....

# 예 10-26. 입력이 알파벳인지 확인하기
# 문자열을 필터링하기 위해서 "case" 구문 쓰기.

SUCCESS=0
FAILURE=-1

isalpha ()  # 입력 문자열의 "첫번째 문자"가 알파벳인지 아닌지 확인.
{
  if [ -z "$1" ]                # 인자 없이 넘어왔군.
  then
    return $FAILURE
  fi

  case "$1" in
  [a-zA-Z]*) return $SUCCESS;;  # 문자로 시작하는지.
  *        ) return $FAILURE;;
  esac
}             # C 의 "isalpha()" 함수와 비교해 보세요.


isalpha2 ()   # "문자열 전체"가 알파벳인지 확인.
{
  [ $# -eq 1 ] || return $FAILURE

  case $1 in
  *[!a-zA-Z]*|"") return $FAILURE;;
               *) return $SUCCESS;;
  esac
}



check_var ()  # isalpha() 의 프론트엔드(front-end)
{
if isalpha "$@"
then
  echo "$* = 알파벳"
else
  echo "$* = 알파벳 아님"  # 인자가 없어도 "알파벳 아님"임.
fi
}

a=23skidoo
b=H3llo
c=-What?
d=`echo $b`   # 명령어 치환.

check_var $a
check_var $b
check_var $c
check_var $d
check_var     # 인자없이 부르면 어떻게 될까요?


# S.C. 가 더 좋게 고침.

exit 0
