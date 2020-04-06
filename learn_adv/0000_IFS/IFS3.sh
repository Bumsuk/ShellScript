#!/bin/bash

clear

# https://www.nemonein.xyz/2019/03/1818/
# IFS 값을 한줄로 사용하여 임시적으로 IFS 값을 변경해 사용하는 방법 설명.

echo "bumsuk 1234 1111 2222 ppengsu korea bash" > info.txt

# IFS 값을 null 로 초기화 해버리면 필드 구분이 없어져 버린다.
# 따라서 밑의 코드에서 user 변수에 모든 문자열 값이 들어가버린다.
#IFS=

# 아예 unset 해버리면, 오히려 기본동작 IFS 값(스페이스, 탭, 라인피드)으로 동작한다. (매우중요!)
#unset IFS

echo "1번째 테스트! ================="
while read user pw uid gid name home shell
do
  echo "user값 : $user"
  echo "pw값 : $pw"
  echo "uid값 : $uid"
  echo "gid값 : $gid"
  echo "name값 : $name"
  echo "home값 : $home"
  echo "shell값 : $shell"
done < info.txt


# read user pw uid gid name home shell <<< info.txt

echo "2번째 테스트! ================="

# 콜론 문자로 IFS를 설정!
IFS=':'
echo "bumsuk:1234:1111:2222:ppengsu:korea:bash" > info.txt
while read user pw uid gid name home shell
do
  echo "user값 : $user"
  echo "pw값 : $pw"
  echo "uid값 : $uid"
  echo "gid값 : $gid"
  echo "name값 : $name"
  echo "home값 : $home"
  echo "shell값 : $shell"
done < info.txt



rm -rf info.txt
echo "종료!"