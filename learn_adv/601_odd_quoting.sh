#!/bin/bash
# weirdvars.sh: 이상한 변수 에코하기.

var="'(]\\{}\$\""
echo $var        # '(]\{}$"
echo "$var"      # '(]\{}$"     차이가 없죠?

echo

IFS='\'
echo $var        # '(] {}$"     \ 가 빈 칸으로 바뀌었네요.
echo "$var"      # '(]\{}$"

# S.C. 제공

echo "=========="

echo "Why can't I write 's between single quotes"
echo
# 간접적인 방법
echo 'Why can'\''t I write '"'"'s between single quotes'
#    |-------|  |----------|   |-----------------------|
# 이스케이프와 큰 따옴표로 쿼우트된 작은 따옴표에 의해 3개의 문자열로 나뉘어져 있습니다.

# Stephane Chazelas 제공.

exit 0

