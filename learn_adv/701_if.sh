#!/bin/bash

# if문 집중탐구
# 'if'와 'then'을 같은 줄에 두려면 세미콜론을 쓰세요.
# 예) if [ -x "$filename" ]; then

clear
echo

echo "\"0\" 테스트"
if [ 0 ]      # zero
then
  echo "0 은 참."
else
  echo "0 은 거짓."
fi

echo

echo "\"NULL\" 테스트"
if [ ]        # NULL (empty condition)
then
  echo "NULL 은 참."
else
  echo "NULL 은 거짓."
fi

echo

echo "\"xyz\" 테스트"
if [ xyz ]    # 문자열
then
  echo "임의의 문자열은 참."
else
  echo "임의의 문자열은 거짓."
fi

echo

echo "\"\$xyz\" 테스트"
if [ $xyz ]   # $xyz 가 널인지 테스트...
              # 하지만 단지 초기화되지 않은 변수일 때만.
then
  echo "초기화 안 된 변수는 참."
else
  echo "초기화 안 된 변수는 거짓."
fi

echo

echo "\"-n \$xyz\" 테스트"
if [ -n "$xyz" ]            # 좀 더 어렵게 보이게.
then
  echo "초기화 안 된 변수는 참."
else
  echo "초기화 안 된 변수는 거짓."
fi

echo

xyz=                        # 널 값으로 초기화.

echo "\"-n \$xyz\" 테스트"
if [ -n "$xyz" ]
then
  echo "널 변수는 참."
else
  echo "널 변수는 거짓."
fi


echo


# "false"가 참일 때.

echo "\"false\" 테스트"
if [ "false" ]              #  "false"는 그냥 문자열 같죠?
then
  echo "\"false\" 는 참."   #+ 그래서 참이 되네요.
else
  echo "\"false\" 는 거짓."
fi

echo

echo "\"\$false\" 테스트"  # 초기화 안 된 변수, 다시.
if [ "$false" ]
then
  echo "\"\$false\" 는 참."
else
  echo "\"\$false\" 는 거짓."
fi                          # 흠, 이게 우리가 원하던 거죠.


echo

exit 0
