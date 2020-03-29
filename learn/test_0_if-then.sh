#!/bin/bash
# 제어문
#
# if-then-if : if를 사용했다면 무조건 fi 가 따라와야 한다!

# 계속 문제가 됐던 부분은 자꾸 에러가 난다는 점이다.
#if 구문을 사용할때, if ...; then
#혹은
#if ...
#then
#fi
#이렇게 해야만 한다@@


clear

if [[ 1 = 2 ]]; then
  echo "조건이 참!"
else
  echo "조건이 거짓!"
fi

if [[ 2 > 1 ]]; then
  echo "맞지 맞아"
else
  echo "틀리네"
fi


file="some.txt"
touch $file
if test -f $file; then
  echo "파일 존재!!"
fi

echo "🤡실행 완료!"

