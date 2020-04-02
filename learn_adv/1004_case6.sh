#!/bin/bash
clear

args=$#

if [[ $args < 2 ]]; then echo "인수는 2개 필수!"; exit 1; fi

# 함수에서도 인수를 받아서 처리할수 있고,
# 함수내에서의 $1 $2 .. 등은 함수에 전달된 인수를 뜻한다. 쉘실행시 전달받은 인수가 아니다!!!!
function check() {
  echo "[check 함수] 인수 : $1, $2, $3"
}

check $1 $2 hoho