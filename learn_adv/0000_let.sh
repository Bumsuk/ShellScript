#!/bin/bash
# let 은 변수에 대한 산술연산을 해준다.
# expr 과 let 은 비슷한데, 좀더 간단한 기능은 let

clear

# 디버깅 옵션
set -x

let "t2 = ((a = 9, 15 / 3))"  # "a"를 세트하고 "t2"를 계산.

echo $t2, $a

echo "이 이후는 약간 고급예"; echo;

let a=11          # 'a=11' 과 똑같습니다.
let a=a+5         # let "a = a + 5" 와 똑같습니다.
                  # (큰따옴표와 빈 칸을 쓰면 좀 더 읽기가 편하죠)
echo "11 + 5 = $a"

let "a <<= 3"     # let "a = a << 3" 과 똑같습니다.
echo "\"\$a\" (=16) 를 3 번 왼쪽 쉬프트 = $a"

let "a /= 4"      # let "a = a / 4" 와 똑같습니다.
echo "128 / 4 = $a"

let "a -= 5"      # let "a = a - 5" 와 똑같습니다.
echo "32 - 5 = $a"

let "a = a * 10"  # let "a = a * 10" 과 똑같습니다.
echo "27 * 10 = $a"

let "a %= 8"      # let "a = a % 8" 과 똑같습니다.
echo "270 modulo 8 = $a  (270 / 8 = 33, 나머지는 $a)"

echo

exit 0





