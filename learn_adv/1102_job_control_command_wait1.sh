#!/bin/bash

# wait 명령 참고
# http://theeye.pe.kr/archives/980

#  wait
#  백그라운드로 실행중인 모든 작업이나 옵션으로 주어진 특정 작업 번호나 프로세스 아이디가 끝날 때까지 스크립트 실행을 중단 시킵니다.
#  자신이 기다리고 있던 명령어의 종료 상태를 리턴합니다.
#
#  백그라운드 작업이 끝나기 전에 스크립트가 끝나는 것(무서운 고아 프로세스를 만들어 낼 수 있습니다)을 피하기 위해 wait 명령어를 쓸 수도 있습니다.


date &

who &

ls -al &

curl https://wttr.in

# 정확히 언제 wait를 써야하는지? 이 상황과 같은 연속적인 (처리시간이 짧은) 명령들의 순차적 실행에서는 필요없어 보이긴 함.
wait

echo "종료!"