#!/bin/bash

# 예 10-24. case용 변수를 만들기 위해서 명령어 치환 쓰기
# "case"용 변수를 만들기 위해서 명령어 치환 쓰기..

case $( arch ) in   # "arch" 는 머신 아키텍쳐를 리턴합니다.
i386 ) echo "80386 기반의 머신";;
i486 ) echo "80486 기반의 머신";;
i586 ) echo "Pentium 기반의 머신";;
i686 ) echo "Pentium2+ 기반의 머신";;
*    ) echo "다른 형태의 머신";;
esac

exit 0
# case는 globbing용 패턴으로 문자열을 필터링 할 수 있습니다.

