#!/bin/bash

clear

# https://www.nemonein.xyz/2019/03/1818/
# IFS 값을 한줄로 사용하여 임시적으로 IFS 값을 변경해 사용하는 방법 설명.


echo "bumsuk 1234 1111 2222 ppengsu korea bash" > info.txt


while read user pw uid gid name home shell
do
  echo "$user $pw $uid $gid $name $home $shell"
done < info.txt

# read user pw uid gid name home shell <<< info.txt

echo "2번째 테스트! ================="

echo "bumsuk:1234:1111:2222:ppengsu:korea:bash" > info.txt


rm -rf info.txt
echo "종료!"