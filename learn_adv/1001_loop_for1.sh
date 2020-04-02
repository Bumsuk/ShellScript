#!/bin/bash
clear

# for 문은 크게 2가지로 나뉨.
#  for (( i = 0; i < n; i++ )); do
#    expr
#  done
#
#  for i in {1..5} ; do
#    expr
#  done

# 떠돌이별 목록.
for planet in Mercury Venus Earth Mars Jupiter Saturn Uranus Neptune Pluto
do
  echo "⭐️별 : $planet"
done

echo

# 따옴표로 묶인 전체 '목록'은 한 개의 변수를 만들어 냅니다.
planets="Mercury Venus Earth Mars Jupiter Saturn Uranus Neptune Pluto"
for planet in $planets
do
  echo "🪐행성 : $planet"
done

exit 0