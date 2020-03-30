#!/bin/bash
# exit 명령어

clear

true  # 쉘 내장명령어인 "true".
echo "\"true\"의 종료 상태 = $?"     # 0

! true
echo "\"! true\"의 종료 상태 = $?"   # 1
# 조심할 점은 "!"을 쓸 때, 빈 칸이 있어야 된다는 것입니다.
# 그냥 !true 라고 쓰면 "command not found" 에러가 납니다.

# Thanks, S.C.


exit # 그냥 종료 > 실행결과값은 이전 명령어에 기반한다.

