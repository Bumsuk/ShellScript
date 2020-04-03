#!/bin/bash
clear

# 이 스크립트는 bash 로 실행!! 그렇지 않으면 read -a 에서 에러남!

# 크기 지정없이 배열을 선언하게 해줍니다.
declare -a colors
# colors=() # 동일한 배열 선언

echo "좋아하는 색깔을 넣으세요(빈 칸으로 구분해 주세요)."

read -a colors    # 아래서 설명할 특징들 때문에, 최소한 3개의 색깔을 넣으세요.
#  'read'의 특별한 옵션으로 배열에 읽은 값을 넣어 줍니다.

echo

element_count=${#colors[@]}
# 배열 요소의 총 갯수를 알아내기 위한 특별한 문법.
#     element_count=${#colors[*]} 라고 해도 됩니다.
#
#  "@" 변수는 쿼우트 안에서의 낱말 조각남(word splitting)을 허용해 줍니다.
#+ (공백문자에 의해 나눠져 있는 변수들을 추출해 냄).

index=0

while [ "$index" -lt "$element_count" ]
do    # 배열의 모든 요소를 나열해 줍니다.
  echo ${colors[$index]}
  let "index = $index + 1"
done
# 각 배열 요소는 한 줄에 하나씩 찍히는데,
# 이게 싫다면  echo -n "${colors[$index]} " 라고 하면 됩니다.
#
# 대신 "for" 루트를 쓰면:
#   for i in "${colors[@]}"
#   do
#     echo "$i"
#   done
# (Thanks, S.C.)

echo

# 좀 더 우아한 방법으로 모든 배열 요소를 다시 나열.
  echo "우아한 버전 > " ${colors[@]}          # echo ${colors[*]}   라고 해도 됩니다.

echo

# "unset" 명령어는 배열 요소를 지우거나 배열 전체를 지워줍니다.
# >> 여기서 중요!!! colors[12] 라고 했으면, globbing([12]는 1이 선택!)이 되어, colors[1] 이 삭제된다!!!
# 따라서 여기서 제대로 처리하려면 unset 'colors[1]' 해야 한다!!!!
unset 'colors[1]'            # 배열의 두번째 요소를 삭제.

                             # colors[1]=    라고 해도 됩니다.
echo  ${colors[@]}           # 배열을 다시 나열하는데 이번에는 두 번째 요소가 빠져있습니다.

unset colors                 # 배열 전체를 삭제.
                             #  unset colors[*] 나r
                             #+ unset colors[@] 라고 해도 됩니다.
echo; echo -n "색깔이 없어졌어요."
echo ${colors[@]}            # 배열을 다시 나열해 보지만 비어있죠.

exit 0
