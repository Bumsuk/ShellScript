#!/bin/bash

clear

# 제어문
#
## 명령어 라인에 입력된 인수의 갯수
#echo "인수갯수: $#"
#
## 명령어 라인에 입력된 인수들이 저장됨
#echo "입력인수들: $*"
#
## 현재 실행중 프로그램 이름 저장
#echo 프로그램이름:  $0
#
## 이전 명령의 종료시 상태값
#echo 이전 프로그램 종료상태값: $?
#
## 현재 실행중인 프로세스 PID
#echo "현재 프로세스 PID: $$"
#
## 직전에 백그라운드로 실행된 프로세스 PID
#echo 직전 백그라운드 PID: $!

echo "인수갯수: $#, $@"

# if-then-if : if를 사용했다면 무조건 fi 가 따라와야 한다!
# 해당 경로에 first.sh 와 if.sh 파일을 준비할것!

#more if.sh
echo "this if if content" > if.sh
cat if.sh

if test -f $1; then
  echo "$1 is file"
fi

echo "end"