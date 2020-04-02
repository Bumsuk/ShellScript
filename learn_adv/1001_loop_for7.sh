#!/bin/bash

# bin-grep.sh: 이진 파일에서 일치하는 문자열 찾아내기.

# "grep"을 이진 파일에 걸기.
# "grep -a"라고 해도 비슷합니다.

E_BADARGS=65
E_NOFILE=66

if [ $# -ne 2 ]
then
  echo "사용법: `basename $0` string filename"
  exit $E_BADARGS
fi

if [ ! -f "$2" ]
then
  echo "\"$2\" 은 존재하지 않는 파일입니다."
  exit $E_NOFILE
fi


for word in $( strings "$2" | grep "$1" )
# "strings" 명령어는 이진 파일에 들어 있는 문자열들을 보여주고,
# 그 출력을 "grep"에 파이프로 걸어 원하는 문자열을 찾아냅니다.
do
  echo $word
done

# S.C. 가 위의 for 루프는 다음과 같이 더 간단하게 할 수 있다고 지적해 주었습니다.
#    strings "$2" | grep "$1" | tr -s "$IFS" '[\n*]'


# "./bin-grep.sh mem /bin/ls"  같은 식으로 해서 이 스크립트를 연습해 보세요.

exit 0
