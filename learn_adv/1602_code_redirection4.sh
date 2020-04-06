#!/bin/bash

# 예 16-7. 재지향된 if/then 테스트

if [ -z "$1" ]
then
  Filename=names.data   # 파일이름이 지정되지 않을 경우의 기본값.
else
  Filename=$1
fi

TRUE=1

if [ "$TRUE" ]          # if true    와   if :   도 동작합니다.
then
 read name
 echo $name
fi <"$Filename"
#  ^^^^^^^^^^^^

# 파일의 첫번째 줄만 읽어 들임.
# "if/then" 테스트문은 루프안에서 쓰이지 않는 한, 반복해서 비교할 방법이 없습니다.

#  exit 0
#  코드 블럭의 표준출력을 재지향하는 것은 그 출력을 파일로 저장하는 효과를 가져옵니다. 예 4-2를 참고하세요.
#  참고: Here documents는 특별한 종류의 재지향된 코드 블럭입니다.

