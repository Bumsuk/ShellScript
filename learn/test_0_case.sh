#!/bin/bash
# case 문
#

# ;;    - break 와 같다.
# *     - default 와 같다.
# esac  - case문 종료후 다음 문자 분

clear

echo "************************************"
echo " 1.who    2.date    3.pwd   4.ls -l "
echo "************************************"

echo "명령어를 입력하세요."

read cmd

echo "입력된 명령어 : ${cmd}" # $cmd 를 쓰던, ${cmd} 를 쓰던 똑같네.

fail() {
  echo "fail함수 실행됨"
  echo "문법이 낮익어서 힘드네."
}

case "$cmd" in
  # 각각의 항목은 ) 로 시작해, ;; 로 끝난다. 그리고 | 를 사용해 양자택일 가능!
  1|a) who echo "🤡" ;;
  2|b) date;;
  3|c) pwd;;
  4|d) ls -1;;
  *) echo "입력범위 초과"; fail ;;
esac # case 문 종료 예약어(case 철자의 역순!)