#!/bin/bash
clear
#    테스트 연산자인 =

if [ "$string1" = "$string2" ]
# if [ "Xstring1" = "Xstring2" ] 라고 해야 변수 값이 비어 있을 경우에
# 발생할지도 모를 에러를 막아주기 때문에 더 안전합니다.
# "X"는 상쇄되어 없어집니다.
then
   echo "결과는 참!"
fi

# 누승 테스트 2의 10승
echo $(( 2**10 ))

# 나머지 연산 > 둘다 같은 결과
echo $(( 5 % 3 ))
echo `expr 5 % 3`

