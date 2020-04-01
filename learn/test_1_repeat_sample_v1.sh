#!/bin/bash

# 인수는 2회를 입력받고,
# 첫번쨰 인수는 명령어 문자열
# 두번째 인수는 반복 횟수
# 반복시에는 1초의 딜레이를 줌

if [[ $# != 2 ]]; then
  echo "🚫 명령어는 인수 2개가 필수임! > ex) `basename $0` 명령어 count"
  exit 0
fi

command="${1}" # 쿼테이션을 해주지 않으면 명령에 공백이 있을때 sh 관련 호환성 문제가 있을수 있다.
repeatCnt=$2

# for i in {0..${repeatCnt}}; do # 아래 라인과 완전히 동일한 표현!
for (( i = 0; i < repeatCnt; i++ )); do
  echo "🦊 [반복] $(( $i + 1 ))회"
  eval "${command}" # eval은 문자열을 명령어로 실행!
  sleep 2
done



#echo "이제 실행하자!"