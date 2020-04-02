#!/bin/bash

#  until
#  until은 루프 최상단에서 특정 조건을 확인하면서 그 조건이 거짓일 동안 루프를 계속 돌도록 해 줍니다(while과 반대).
#
#  until [condition-is-true]
#  do
#  command...
#  done
#
#  주의할 점은 until이 몇몇 프로그래밍 언어에서 비슷한 형태와는 다르게 루프 처음에서 끝내는 조건을 검사한다는 것 입니다.
#
#  for/in 경우처럼 do를 조건문과 한 줄에 같이 쓰려면 세미콜론을 적어줘야 합니다.
#
#  until [condition-is-true] ; do
#
#  예 10-17. until 루프

until [ "$var1" = end ] # 테스트 조건이 루프 최상단에 들어갑니다.
do
  echo "변수값을 넣으세요 #1 "
  echo "(끝내려면 end)"
  read var1
  echo "변수 #1 = $var1"
done

exit 0
