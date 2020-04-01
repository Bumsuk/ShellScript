#!/bin/bash
clear

E_NO_ARGS=65

if [ $# -eq 0 ]  # 이 스크립트에서는 명령어줄 인자가 필요합니다.
then
  echo "하나 이상의 명령어줄 인자가 필요합니다."
  exit $E_NO_ARGS
fi

var01=abcdEFGH28ij

echo "var01 = ${var01}"
echo "var01 의 길이 = ${#var01}"

echo "스크립트로 넘어온 명령어줄 인자 갯수 = ${#@}"
echo "스크립트로 넘어온 명령어줄 인자 갯수 = ${#*}"


echo `basename $PWD`        # 현재 디렉토리의 basename.
echo "${PWD##*/}"           # 현재 디렉토리의 basename.
echo
echo `basename $0`          # 스크립트 이름.
echo $0                     # 스크립트 이름.
echo "${0##*/}"             # 스크립트 이름.
echo
filename=test.data
echo "${filename##*.}"      # 데이타
                            # 전체 파일이름에서 확장자.

exit 0
