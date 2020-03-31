#!/bin/bash

clear

# [ expr ] 은 test 와 같은 기능
# if test $# = 0; then
if [ $# = 0 ]; then
echo "인자를 입력해!"; exit;
fi

# 이 둘의 차이는 $* 는 하나의 통째로 인자값, $@는 각각의 별개의 인자들 값
# 000_argument1.sh 를 통해 확인!
echo "1: $*"
echo "2: $@"

# 상세설
# https://ss64.com/bas명h/syntax-parameters.html