#!/bin/bash

# https://wiki.kldp.org/HOWTO/html/Adv-Bash-Scr-HOWTO/x10307.html

#  16.1. exec 쓰기
#  exec <filename 명령어는 표준입력을 파일로 재지향 시켜줍니다. 이때부터는, 주로 키보드에서 받던 모든 표준입력이 그 파일에서 들어 오게 됩니다.
#  이렇게 하면 파일을 줄 단위로 읽을 수가 있게 되고 sed나 awk를 이용해서 입력되는 각 줄을 파싱할 수 있게 됩니다.
#
#  예 16-1. exec으로 표준입력을 재지향 하기

# 'exec'로 표준입력 재지향 하기.

exec 6<&0          # 표준입력을 6번 파일 디스크립터로 링크.

echo -e "1111\n2222\n3333\n4444\n5555" > data-file # 이건 내가 만들어준 파일

exec < data-file   # 표준입력을 "data-file"에서.

read a1            # "data-file"의 첫번째 줄을 읽음.
read a2            # "data-file"의 두번째 줄을 읽음.

echo
echo "다음은 파일에서 읽어 들인 것입니다."
echo "-----------------------------------"
echo $a1
echo $a2

echo; echo; echo

exec 0<&6 6<&-
# 6번 파일 디스크립터에 저장되어 있던 표준입력을 복구시키고,
# 다른 프로세스가 쓸 수 있도록 6번 파일 디스크립터를 프리( 6<&- )시킴.
# <&6 6<&-    라고 해도 됩니다.

echo -n "데이타를 넣으세요  "
read b1  # "read"는 이제 원래 자신의 동작인 표준입력에서 입력을 받습니다.
echo "표준입력에서 읽은 값."
echo "---------------------"
echo "b1 = $b1"

echo

rm -rf data-file

exit 0
