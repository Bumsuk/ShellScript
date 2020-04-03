#!/bin/bash

clear

# 기존 IFS(내부 필드 구분자 : 기본값 공백 / 탭 / 줄바꿈)는 백업하고 진행
#IFS_BAK=$IFS
#IFS=':'

echo "현재 IFS값 : `echo -n $IFS | hexdump -C`"
echo "입력 인자들 확인 - 갯수: ${#}"
echo "============"

echo -n "$*" | hexdump -C
echo -n "$@" | hexdump -C

#