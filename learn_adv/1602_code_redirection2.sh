#!/bin/bash

# 예 16-3. 다른 형태의 재지향된 while 루프

# 이 스크립트는 앞서 소개해 드렸던 스크립트의 다른 형태입니다.

# Heiner Steven 이 제공해 준 것으로,
# 재지향 루프가 서브쉘로 돌 경우에 루프 안의 변수값이
# 루프 종료후 그 값을 잃어 버리는 것에 대한 해결책입니다.


if [ -z "$1" ]
then
  Filename=names.data     # 파일이름이 지정되지 않았을 경우의 기본값.
else
  Filename=$1
fi


exec 3<&0                 # 표준입력을 3번 파일 디스크립터로 저장.
exec 0<"$Filename"        # 표준입력을 재지향.

count=0
echo


while read name
do
  echo $name
  let "count += 1"
done <"$Filename"         # 루프는 $Filename 파일에서 입력을 받음.
#    ^^^^^^^^^^^^


exec 0<&3                 # 원래 표준입력을 복구.
exec 3<&-                 # 임시 파일 디스크립터 3번을 닫음.

echo; echo "$count 개의 이름을 읽었습니다."; echo

exit 0
