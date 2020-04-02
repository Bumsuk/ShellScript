#!/bin/bash
clear

#  while 문은 다중 조건을 가질 수 있습니다만 "오직 마지막 조건"이 루프를 끝낼 조건을 결정합니다. 그렇기 때문에 이럴 경우에는 문법이 약간 달라집니다.
#  예 10-15. 다중 조건 while 루프

var1=unset
previous=$var1

while echo "이전 변수 = $previous"
      echo
      previous=$var1
      [ "$var1" != end ] # 바로 전의 "var1"이 무엇이었는지 계속 확인.
      # "while"에는 4가지 조건이 있지만 오직 마지막 조건이 루프를 제어합니다.
      # *마지막* 종료 상태가 중요하다는 말씀.
do
  echo "변수값을 넣으세요 #1 (끝내려면 end) "
  read var1
  echo "변수 #1 = $var1"
done

# 이 스크립트가 어떻게 돌아가는지 알아내 보세요.
# 약간 미묘한(tricky) 부분이 있습니다.

exit 0
