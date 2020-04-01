#!/bin/bash
clear

# https://wiki.kldp.org/HOWTO/html/Adv-Bash-Scr-HOWTO/declareref.html

#  9.4. 변수 타입 지정: declare 나 typeset
#  declare나 typeset 내장 명령(이 둘은 동의어입니다.) 키워드는 변수의 특성을 제한할 수 있습니다.
#  이것은 몇몇 프로그래밍 언어에서 볼 수 있는 불완전한 형태의 타입 지정입니다.
#  declare 명령어는 bash 버전 2 이후부터 가능합니다. typeset 명령어는 ksh 스크립트에서도 가능합니다.

# 1. 읽기전용 변수
declare -r var1="변수1"
echo "var1 : ${var1}"
# var1="변수1 - change" #  read-only variable: var1 에러 발생함!

# 2. 읽기전용 변수(위와 똑같음)
readonly var2="변수2"
echo "var2 : ${var2}"
# var2="변수2 - change" # 2> /dev/null # ead-only variable: var2

# 3. 정수 선언
declare -i number
# 이 스크립트는 이후 나오는 모든 "number"를 정수로 취급할 것입니다.

number=3
echo "number = $number" # number = 3

number=three
echo "number = $number" # number = 0
# "three"를 정수로 계산하려는 시도.
# expr 이나 let 이 없이 정수로 선언된 변수에 대한 연산을 허용하는 몇몇 산술 연산이 있습니다.

# 4. 배열 선언
declare -a indices
# indices 변수는 배열로 취급됩니다.

# 5. 함수 선언
declare -f
# 스크립트에서 인자 없이 declare -f 가 나오는 줄에서는 스크립트안에서 정의된 모든 함수들의 목록을 보여줍니다.

declare -f function_name
# 스크립트 안에서 declare -f function_name 라고 하면 그냥 그 함수 이름을 보여줍니다.
# ex) declare -f urlglobber

# 6. export 선언
# -x export
declare -x var3
#이 선언은 스크립트 외부 환경에서도 이 변수를 쓸 수 있게 해 줍니다.

# 7. 선언과 동시에 값 할당
# var=$value
declare -x var3=373
# declare 명령어는 한 문장 안에서 선언과 동시에 그 값을 할당할 수 있게 해 줍니다.

