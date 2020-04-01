#!/bin/bash
# escaped.sh: 이스케이프된 문자들

clear

# 이렇게 이스케이프 시켜서 처리 가능!
echo abcde \
abcde

echo "====="

echo "foo
bar"
echo

echo 'foo
bar'    # 아직은 다른점이 없죠.
echo

echo foo\
bar     # 뉴라인이 이스케이프 됐습니다.
#foobar
echo

echo "foo\
bar"     # 약한 쿼우트 안에서는 \ 가 이스케이프 문자로 해석되기 때문에 똑같습니다.
#foobar
echo

echo 'foo\
bar'     # 강한 쿼우팅 안에서 \ 는 아무 의미 없이 그냥 \ 입니다.
#foor\
#bar

# Stephane Chazelas 제공.

