#!/bin/bash

#  continue 명령어도 break와 비슷하게 매개변수를 받아 들일수 있습니다.
#  매개변수 없는 continue는 자신이 속한 루프의 현재 작업을 끝내고 다음번으로 건너 뛰지만
#  continue N은 자신이 속한 루프 레벨의 모든 단계를 건너 뛰고 N 레벨 위에 속하는 루프의 다음 단계로 건너 뜁니다.
#
#  예 10-21. 더 상위 루프 레벨에서 계속하기(continue)

# "continue N" 명령어, N 번째 루프에서 계속하기(continue).

for outer in I II III IV V           # 바깥쪽 루프
do
  echo; echo -n "Group $outer: "

  for inner in 1 2 3 4 5 6 7 8 9 10  # 안쪽 루프
  do

    if [ "$inner" -eq 7 ]
    then
      continue 2  # "바깥쪽 루프"인 2번째 레벨의 루프에서 계속 진행합니다.
                  # 윗줄을 그냥 "continue"라고 하면 보통의 루프 동작이 일어납니다.
    fi  

    echo -n "$inner "  # 8 9 10 은 절대 에코되지 않습니다.
  done  

done

echo; echo

# 독자들을 위한 연습문제:
# "continue N"을 쓰는 쓸모있는 스크립트를 짜 보세요.

exit 0
#  경고
#  continue N은 아무리 의미 있는 상황에서 썼더라도 이해하기 어렵고 쓰기 까다롭기 때문에 안 쓰는게 제일 좋습니다.