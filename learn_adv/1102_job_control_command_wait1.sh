#!/bin/bash

# wait 명령 참고
# http://theeye.pe.kr/archives/980

date &

who &

ls -al &

curl https://wttr.in

# 정확히 언제 wait를 써야하는지? 이 상황과 같은 연속적인 (처리시간이 짧은) 명령들의 순차적 실행에서는 필요없어 보이긴 함.
wait

echo "종료!"