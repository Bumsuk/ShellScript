#!/bin/bash
clear

# 0 : 표준입력
# 1 : 표준출력
# 2 : 표준에러

# 존재하지 않는 디렉토리
dir="~/haha/hoho"

# 잘못된 명령을 실행하는 2번(표준에러)에서 에러가 표시됨!
rm "${dir}"

# 이렇게 null 기기에 리다이렉션 하면 표준입력에 한해! 출력을 무시한다.
echo "wow~~~" > /dev/null

# 하지만 표준에러(2)는 이렇게 해도 출력된다!
rm "${dir}" > /dev/null

# 따라서 에러도 표시안할려면 이렇게 하면 됨.
rm "${dir}" 2> /dev/null

# 표준출력(1)도 표준에러(2)도  둘다 표시안하려면 아래와 같이한다.
rm "${dir}" > /dev/null 2>&1

# 비슷한 다른 예
# 정상명령인 who 표준출력 무시, jdk는 명령어가 아니니 에러발생! 그걸 무시!
( who; jdk; ) > /dev/null 2>&1

# 또 다른 예
$ foo.sh 1>output.log 2>error.log
