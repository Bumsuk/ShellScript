#!/bin/bash
# 논리 연산 테스트( ! -a -o () )

file="somefile.sh"

clear
echo "check file: " > $file
cat $file

# 파일이 존재하면 true(0)
test -e ${dir}; echo "결과0(test -e): $?"


test -r $file; echo "결과1(test -r):" $?

# -o 옵션 : 하나라도 참이면 true(0)
# expression1 -o expression2
test -r $file -o -x $file; echo "결과2(test -r $file -0 -x $file):" $?
[ -r $file -o -x $file ]; echo "결과2([ -r $file -o -x $file ]):" $?


# -a 옵션 : 모두 참이면 true(0)
# expression1 -a expression2
chmod +x $file
test -r $file -a -x $file; echo "결과3(test -r $file -a -x $file):" $?
[ -r $file -a -x $file ]; echo "결과3([ -r $file -a -x $file ]):" $?

# 역시 test 대신 [  ] 형식으로 비고가능!
[ -x $file ]; echo $?

# 괄호를 씌워서 비교 우선순위를 바꿀수 있다.
test \( -r $file \) -a \( -x $file \); echo $?


# 리소스 정리
rm -rf $file
