#!/bin/bash
# escaped.sh: 이스케이프된 문자들

clear
echo; echo

echo "\v\v\v\v"      # \v\v\v\v 라고 출력
# 'echo'가 이스케이프된 문자들을 출력하게 하려면 -e 옵션을 써야 됩니다.
echo -e "\v\v\v\v"   # 4 개의 수직탭 출력
echo -e "\042"       # " 출력(따옴표, 8진수 아스키 문자 42).

# Bash 버전 2 이후에서는 $'\xxx' 도 허용됩니다.
echo $'\n'
echo $'\a'
echo $'\t \042 \t'   # 탭으로 둘려쌓인 따옴표(").

# 변수에 아스키 문자를 할당하기.
# ------------------------------
quote=$'\042'        # " 를 변수로 할당.
echo "$quote 여기는 쿼우트된 부분이고, $quote 여기는 안 된 부분입니다."

echo

# 변수에 아스키 문자를 여러개 쓰기.
triple_underline=$'\137\137\137'  # 137 은 "_"의 8진수 아스키 코드.
echo "$triple_underline 밑줄 $triple_underline"

ABC=$'\101\102\103\010'           # 101, 102, 103 은 각각 8진수 A, B, C.
echo "🤡" $ABC

echo; echo

escape=$'\033'                    # 033 은 이스케이프의 8진수.
echo "\"escape\" echoes as $escape"

echo; echo

exit 0

