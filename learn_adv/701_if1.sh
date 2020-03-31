#!/bin/bash

# if문 집중탐구
# Else if 와 elif

clear
# elif 사용 > else if 의 단축형이다!
# if [ condition1 ]
# then
#   command1
#   command2
#   command3
# elif [ condition2 ] # else if 와 같습니다.
# then
#    command4
#    command5
# else
#    default-command
# fi

# if test condition-true와 if [ condition-true ] 은 완전히 똑같은 표현입니다.
# [ 는 test 명령어를 부르는 토큰이기 때문에 ] 가 꼭 필요하진 않지만 새 버전의 bash 에서는 그래도 있어야 됩니다.

#bash$ type test
#test is a shell builtin
#bash$ type '['
#[ is a shell builtin
#bash$ type '[['
#[[ is a shell keyword
#bash$ type ']]'
#]] is a shell keyword
#bash$ type ']'
#bash: type: ]: not found


echo "\"0\" 테스트"
if [ 0 ]; then # zero
  echo "0 은 참."
else
  echo "0 은 거짓."
fi

echo

echo "\"NULL\" 테스트"
if [ ]; then # NULL (empty condition)
  echo "NULL 은 참."
else
  echo "NULL 은 거짓."
fi

echo

echo "\"xyz\" 테스트"
if [ xyz ]; then # 문자열
  echo "임의의 문자열은 참."
else
  echo "임의의 문자열은 거짓."
fi

echo

echo "\"\$xyz\" 테스트"
if [ $xyz ]; then # $xyz 가 널인지 테스트...
  # 하지만 단지 초기화되지 않은 변수일 때만.
  echo "초기화 안 된 변수는 참."
else
  echo "초기화 안 된 변수는 거짓."
fi

echo

echo "\"-n \$xyz\" 테스트"
if [ -n "$xyz" ]; then # 좀 더 어렵게 보이게.
  echo "초기화 안 된 변수는 참."
else
  echo "초기화 안 된 변수는 거짓."
fi

echo

xyz= # 널 값으로 초기화.

echo "\"-n \$xyz\" 테스트"
if [ -n "$xyz" ]; then
  echo "널 변수는 참."
else
  echo "널 변수는 거짓."
fi

echo

# "false"가 참일 때.

echo "\"false\" 테스트"
if [ "false" ]; then #  "false"는 그냥 문자열 같죠?
  echo "\"false\" 는 참." #+ 그래서 참이 되네요.
else
  echo "\"false\" 는 거짓."
fi

echo

echo "\"\$false\" 테스트" # 초기화 안 된 변수, 다시.
if [ "$false" ]; then
  echo "\"\$false\" 는 참."
else
  echo "\"\$false\" 는 거짓."
fi # 흠, 이게 우리가 원하던 거죠.

echo

exit 0
