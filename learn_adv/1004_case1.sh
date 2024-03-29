#!/bin/bash

#  10.4. 테스트와 분기(Testing and Branching)
#  case와 select는 코드 블럭을 반복해서 수행하지 않기 때문에 기술적으로 루프가 아닙니다.
#  하지만 루프가 하는 것처럼 특정 블럭의 위나 아래에서 주어진 조건에 따라 프로그램 흐름을 조정해 줍니다.
#
#  코드 블럭에서 프로그램 흐름을 조절하기
#
#  case (in) / esac
#  case는 C/C++의 switch와 동일합니다. 조건에 따라 여러개의 코드 블럭중 하나로 분기할 수 있게 해주는데,
#  여러개의 if/then/else의 간단한 표기법처럼 동작하기 때문에 메뉴같은 것을 만들 때 적당합니다.
#
#  case "$variable" in
#
#  "$condition1" )
#  command...
#  ;;
#
#  "$condition2" )
#  command...
#  ;;
#
#  esac
#
#  참고:
#  낱말 조각남(word splitting)이 일어나지 않기 때문에 꼭 variable을 쿼우팅 하지 않아도 됩니다.
#  각 조건들은 오른쪽 괄호, )로 끝납니다.
#  각 조건 블럭은 이중 세미콜론, ;;.
#  전체 case 블럭은 esac로 끝납니다(case를 거꾸로 스펠링).
#  예 10-22. case 쓰기

echo; echo "아무키나 누른 다음 리턴을 치세요."
read Keypress

case "$Keypress" in
  [a-z]   ) echo "소문자";;
  [A-Z]   ) echo "대문자";;
  [0-9]   ) echo "숫자";;
  *       ) echo "구두점이나, 공백문자 등등";;
esac  # [대괄호]속 범위의 문자들을 받아 들입니다.

# 독자들용 연습문제:
# 이 스크립트는 한개의 키누름만 받아들이고 종료합니다.
# 이를 키가 눌릴때마다 무슨 키인지 계속 보여주면서
# 키가 "X"일 경우에만 종료하도록 고쳐보세요.
# 힌트: "while"루프로 다 감싸면?

exit 0
