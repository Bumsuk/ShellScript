#!/bin/bash

# $(...) 기법을 써서 변수 할당하기(역따옴표(backquotes)보다 새로운 방법)

# /etc/rc.d/rc.local 에서 발췌

# 이 코드는 동작 안하므로 밑에서 새로 짠다.
# R=$(cat /etc/redhat-release)
# arch=$(uname -m)

info=$( who )
echo "who명령 결과"
echo $info


weather=$( curl https://wttr.in )
echo "날씨 정보"
echo ${weather}

echo weather | pbcopy