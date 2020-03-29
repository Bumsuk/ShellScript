# test 명령어의 사용 - 조건문
# 결과가 참이면 0 반환

# Shell Script는 참이 0 이라는 것을 잊지 말것!!!!

# test expression
# or
# [ expression ] # 대괄호 안에 앞뒤 공백이 꼭 있어야 함!

str1="aaa"
str2="aaa"

# 비교(= or !=) 할때 좌우로 공백이 꼭 필요함!
test str1 = str2
echo 결과1: $?

test str1 != str2
echo 결과2: $?

str3="UNIX"
str4="Window"

test "$str3" = "$str4"
echo 결과3: $?

# test 명령과 동일한 구문 > [ expression ]
[ $str3 = $str4 ]
echo 결과4: $?

str5=Null
[ $str5 ]
echo 결과5: $?

# test 로 파일 존재여부 체크
test -f good.txt; echo 결과6: $?        # 에러가 나던 말던 echo 실행!
test -f good.txt && echo 결과6: $?      # 에러가 나면 echo 실행 안함!





