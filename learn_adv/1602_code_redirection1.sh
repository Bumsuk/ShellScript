#!/bin/bash

# https://wiki.kldp.org/HOWTO/html/Adv-Bash-Scr-HOWTO/redircb.html

#  16.2. 코드 블럭 재지향
#  while, until, for 루프의 코드 블럭, 심지어는 if/then 테스트문 블럭도 표준입력의 재지향을 받아 들일 수 있습니다.
#  함수조차도 이런 형태의 재지향을 할 수 있습니다(예 23-7 참고). 이렇게 하려면, 해당 코드 블럭의 제일 끝에 < 연산자를 두면 됩니다.
#
#  예 16-2. 재지향된 while 루프


if [ -z "$1" ]
then
  Filename=names.data  # 파일이름이 지정되지 않을 경우의 기본값.
else
  Filename=$1
fi
# Filename=${1:-names.data}
# 라고 해도 됩니다(매개변수 치환).

echo "확정된 파일이름 : ${Filename}"

count=0

# while [ "$name" != "Smith" ]  # $name 을 왜 쿼우트 했을까요?
while read name
do
  echo $name
  let "count += 1"
done  < "$Filename"           # 표준입력을 $Filename 파일로 재지향.

echo; echo "$count 개의 이름을 읽었습니다."; echo

# 몇몇 오래된 쉘 스크립트 언어에서는 재지향된 루프가 서브쉘로 돕니다.
# 그렇기 때문에, $count 가 루프 밖에서 초기화되어 0 을 리턴합니다.
# Bash 와 ksh 은 가능한한 서브쉘을 안 띄우려고 하기 때문에
# 이 스크립트는 제대로 동작합니다.
# Heiner Steven 이 이 점을 지적해 주었습니다.

exit 0
