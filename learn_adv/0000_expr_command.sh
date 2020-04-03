#!/bin/bash

# 예 12-6. expr 쓰기

# 'expr'의 몇가지 사용법 보여주기
# ===============================

echo

# 산술 연산자
# ---- ------

echo "산술 연산자"
echo
a=`expr 5 + 3`
echo "5 + 3 = $a"

a=`expr $a + 1`
echo
echo "a + 1 = $a"
echo "(변수 증가)"

a=`expr 5 % 3`
# 나머지(modulo)
echo
echo "5 mod 3 = $a"

echo
echo

# 논리 연산자
# ---- ------

#  참이면 1, 거짓이면 0 리턴.
#  Bash 관례와 반대입니다.

echo "논리 연산자"
echo

x=24
y=25
b=`expr $x = $y`         # 같은 값인지 확인하기.
echo "b = $b"            # 0  ( $x -ne $y )
echo

a=3
b=`expr $a \> 10`
echo 'b=`expr $a \> 10`, 즉...'
echo "If a > 10, b = 0 (거짓)"
echo "b = $b"            # 0  ( 3 ! -gt 10 )
echo

b=`expr $a \< 10`
echo "If a < 10, b = 1 (참)"
echo "b = $b"            # 1  ( 3 -lt 10 )
echo
# 연산자를 이스케이프 시킨것에 주의.

b=`expr $a \<= 3`
echo "If a <= 3, b = 1 (참)"
echo "b = $b"            # 1  ( 3 -le 3 )
# "\>=" 연산자도 있어요(크거나 같음).


echo
echo

# 비교 연산자
# ---- ------

echo "비교 연산자"
echo
a=zipper
echo "a 는 $a"
if [ `expr $a = snap` ]
# 변수 'a'를 강제로 재평가(re-evaluation)
then
   echo "a 는 zipper 가 아님"
fi

echo
echo



# 문자열 연산자
# ------ ------

echo "문자열 연산자"
echo

a=1234zipper43231
echo "\"$a\" 를 가지고 조작해 보겠습니다."

# length: 문자열 길이
b=`expr length $a`
echo "\"$a\" 의 길이는 $b."

# index: 문자열에서 문자열조각(substring)이 일치하는 첫번째 문자의 위치
b=`expr index $a 23`
echo "\"$a\" 에서 \"2\" 가 첫번째로 나오는 위치는 \"$b\" 입니다."

# substr: 문자열조각 추출, 추출할 시작 위치와 추출할 길이 지정
b=`expr substr $a 2 6`
echo "시작위치는 2이고 길이가 6인 \"$a\" 의 문자열조각은 \"$b\" 입니다."


# 'match' 연산은 정규표현식을 쓰는 'grep'과 비슷합니다.
b=`expr match "$a" '[0-9]*'`
echo \"$a\" 에서 앞쪽에 나오는 숫자의 갯수는 $b 입니다.
b=`expr match "$a" '\([0-9]*\)'`        # 중괄호가 이스케이프된 것에 주의하세요.
echo "\"$a\" 에서 앞쪽에 나오는 숫자는 \"$b\" 입니다."

echo

exit 0
