#!/bin/bash

# https://kldp.org/node/20487
# 참고글로, 쉘스크립트안에서 환경변수를 바꿔도 실제로 적용이 안되니, .bashrc or .zshrc에 함수를 만들어 이를 제어하는 것을 보여줌!

echo "[parent.sh]"

# export를 해줘야 자식 스크립트에서
export name1="펭수"
export name2="길동"
echo "name1 : $name1, name2 : $name2"

# 자식 스크립트 실행!
# ./child.sh
# 같은 명령어 source ./child.sh

