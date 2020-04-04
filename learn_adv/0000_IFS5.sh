#!/bin/bash

clear

# read 명령어를 파일재지향과 같이 쓰기


read var1 < data-file
echo "var1 = $var1"
# "data-file"의 첫번째 줄 전체가 var1으로 세팅

read var2 var3 < data-file
echo "var2 = $var2   var3 = $var3"
# "read"의 직관적이지 않은 행동에 주의하세요.
# 1) 입력 파일의 제일 처음으로 돌아가서,
# 2) 각 변수는 줄 전체가 아닌 공백문자로 나누어진 문자열로 세트됨.
# 3) 마지막 변수는 그 줄의 나머지로 세트.
# 4) 변수 갯수가 공백문자로 나누어진 문자열보다 많다면 나머지 변수들은 세트되지 않음.

echo "------------------------------------------------"

# 위의 문제를 루프로 해결해 보겠습니다.
while read line
do
  echo "$line"
done <data-file
# Heiner Steven 이 이 부분을 지적해 주었습니다.

echo "------------------------------------------------"

# "read"가 읽어 들이는 줄이 공백문자가 아닌 다른 문자로 구분되도록 하려면
# $IFS(내부 필드 구분자, Internal Field Separator)를 쓰면 됩니다.

echo "모든 사용자 목록:"
OIFS=$IFS; IFS=:       # /etc/passwd 는 필드 구분자로 ":"를 씁니다.
while read name passwd uid gid fullname ignore
do
  echo "$name ($fullname)"
done </etc/passwd   # I/O 재지향.
IFS=$OIFS              # 원래 $IFS 를 복구시킴.
# 이 코드도 Heiner Steven 이 제공해 주었습니다.

exit 0
