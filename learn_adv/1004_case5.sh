#!/bin/bash
clear

# 예 10-25. 간단한 문자열 매칭
# match-string.sh: 간단한 문자열 매칭

match_string ()
{
  MATCH=0
  NOMATCH=90
  PARAMS=2     # 이 함수는 2개의 인자가 필요합니다.
  BAD_PARAMS=91

  # 이런 조건식은 잘 생각해봐야 한다. >  [ $# -eq $PARAMS ] 가 참이면 || 이후는 실행안되고
  # [ $# -eq $PARAMS ]  거짓이라면 "return $BAD_PARAMS" 가 실행됨
  [ $# -eq $PARAMS ] || return $BAD_PARAMS

  case "$1" in
  "$2") return $MATCH;;
  *   ) return $NOMATCH;;
  esac

}


a=one
b=two
c=three
d=two


match_string $a     # 잘못된 인자 갯수
echo $?             # 91

match_string $a $b  # 일치하지 않음
echo $?             # 90

match_string $b $d  # 일치함
echo $?             # 0


exit 0
