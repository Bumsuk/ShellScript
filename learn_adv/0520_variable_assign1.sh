#!/bin/bash

# 예 5-3. 평범하고 재미있는 변수 할당
clear

#set -x

a=23              # 평범한 경우
echo $a
b=$a
echo $b

# 이제 약간 재밌게 해 봅니다...

a=`echo Hello!`   # 'echo' 명령어의 결과를 'a' 로 할당
echo $a

a=`ls -l`         # 'ls -l' 명령어의 결과를 'a' 로 할당
echo $a

exit 0
