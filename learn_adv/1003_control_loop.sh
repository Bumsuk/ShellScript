#!/bin/bash

#  10.3. 루프 제어
#  루프의 동작에 영향을 미치는 명령어들
#
#  break, continue
#  break와 continue 루프 제어 명령어 [1] 는 다른 프로그래밍 언어들과 정확히 같은 동작을 합니다. break 명령어는 자신이 속해 있는 루프를 끝내고, continue는 해당 루프 사이클 내에 남아 있는 나머지 명령어들을 건너 뛰고 다음 단계의 루프를 수행합니다.
#
#  예 10-19. 루프에서 break와 continue의 영향

LIMIT=19  # 상한선

echo
echo "3,11을 제외하고 1부터 20까지 출력."

a=0

while [ $a -le "$LIMIT" ]
do
 a=$(($a+1))

 if [ "$a" -eq 3 ] || [ "$a" -eq 11 ]  # 3,11을 제외
 then
   continue  # 이번 루프의 나머지 부분을 건너뜀.
 fi

 echo -n "$a "
done 

# 독자들을 위한 연습문제:
# 루프가 왜 20까지 찍을까요?

echo; echo

echo 1부터 20까지 찍지만 2다음에 무슨 일인가가 일어납니다.

##################################################################

# 똑같은 루프지만 'continue'를 'break'로 바꿨습니다.

a=0

while [ "$a" -le "$LIMIT" ]
do
 a=$(($a+1))

 if [ "$a" -gt 2 ]
 then
   break  # 루프 나머지를 모두 건너뜀.
 fi

 echo -n "$a "
done

echo; echo; echo

exit 0
