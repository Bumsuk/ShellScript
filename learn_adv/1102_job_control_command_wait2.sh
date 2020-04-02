#!/bin/bash

# wait 명령 참고
# http://theeye.pe.kr/archives/980

echo "예제를 시작합니다"

sleep 5 &
sleep 10 &

echo "모든 명령이 병렬로 실행되었습니다"

# 이런 명령을 활용하여 복잡한 여러 스크립트들의 수행속도를 꽤 많이 단축시킬 수 있었습니다.
WORK_PID=$(jobs -l | awk '{print $2}')
wait $WORK_PID

echo "모든 명령이 종료되었습니다"
