#!/bin/bash

clear

echo "전달된 인수갯수 : ${#}"

# test1 - 인수들을 하나씩 출력
echo "[test1]"
for arg in ${*}; do
    echo "인수 : ${arg}" # $arg와 같다.
done

# test2 - 문자열로 ""로 감싼 인수들을 하나씩 출력 @ 사용!
echo "[test2]"
for arg in "${@}"; do
  echo "인수 : ${arg}"
done

# test3 - @를 사용하되, "" 로 감싸진 않음 > 뭔가 경고가 뜬다.
echo "[test3]"
for arg in ${@}; do
  echo "인수 : ${arg}"
done
