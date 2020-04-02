#!/bin/bash
clear

# 예 10-6. for 문의 [list]에 명령어 치환 쓰기
# for 루프의 [list]에 명령어 치환을 쓰기.

NUMBERS="9 7 3 8 37.53"

for number in `echo $NUMBERS`  # for number in 9 7 3 8 37.53
do
  echo -n "$number "
done

echo
exit 0
