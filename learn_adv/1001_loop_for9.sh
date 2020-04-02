#!/bin/bash

# 예 10-9. 디렉토리에 들어 있는 심볼릭 링크들을 나열하기

# symlinks.sh: 디렉토리의 심볼릭 링크 파일들을 나열하기.

ARGS=1                 # 명령어줄 인자는 한 개만 필요.

if [ $# -ne "$ARGS" ]  # 인자가 1 개가 아니면...
then
  directory=`pwd`      # 현재 작업 디렉토리
else
  directory=$1
fi


GREEN='\033[0;32m'
DEFAULT='\033[0m'

echo "${GREEN}\"$directory\" 디렉토리의 심볼릭 링크들${DEFAULT}"

for file in "$( find $directory -type l )"   # -type l = 심볼릭 링크
do
  echo "$file"
done | sort                                  # 파일 목록을 정렬.

#  Dominik 'Aeneas' Schnitzer 가 지적한대로,
#+ $( find $directory -type l ) 을 쿼우트 안 해주면
#+ 파일이름에 공백문자가 들어있는 파일에 대해서는 제대로 동작하지 않습니다.

exit 0
