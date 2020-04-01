#!/bin/bash

# 5.3. Bash 변수는 타입이 없다(untyped)
# Bash 는 다른 프로그래밍 언어들과는 달리, 변수를 "타입"으로 구분하지 않습니다.
# Bash 변수는 본질적으로 문자열이지만 Bash 가 문맥에 따라서 정수 연산이나 변수를 비교해 줍니다.
# 이 동작을 결정짓는 요소는 그 변수값이 숫자로만 되어 있는냐 아니냐 입니다.

# int-or-string.sh
# 정수? 문자열?
clear

a=2334                   # 정수.
let "a += 1"
echo "a = $a "           # 여전히 정수죠.
echo

b=${a/23/BB}             # 문자열로 변환. >  잘 이해가 안가네. > ! 서브스트링 대치하는 거였다!
echo "b = $b"            # BB35
# declare -i b             # 정수로 선언해도 도움이 되질 않죠. > 이 코드로 0이 된다.
echo "🤡b = $b"            # 여전히 BB35.

let "b += 1"             # BB35 + 1 =
echo "😃b = $b"            # 1
echo

c=BB34
echo "c = $c"            # BB34
d=${c/BB/23}             # 정수로 변환.
echo "d = $d"            # 2334
let "d += 1"             # 2334 + 1 =
echo "d = $d"            # 2335

# Bash 의 변수는 본질적으로 타입이 없습니다(untyped).

exit 0

