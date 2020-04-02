#!/bin/bash

#  select
#  select는 Korn 쉘에서 따온 것인데 메뉴를 만들때 쓸 수 있습니다.
#
#  select variable [in list]
#  do
#  command...
#  break
#  done
#
#  사용자가 list에 있는 것중 하나를 고를 수 있게 해 줍니다. 기본적으로 PS3(#? ) 프롬프트를 쓰고 이 값은 바꿀 수 있다는 것에 주의하기 바랍니다.
#
#  예 10-27. select로 메뉴 만들기

# $PS3
# 3차 프롬프트로 select 루프문에서 표시됩니다(예 10-27 참고).
PS3='제일 좋아하는 야채를 고르세요: ' # 프롬프트 문자열 세트.

echo

select vegetable in "콩" "당근" "감자" "양파" "순무"
do
  echo
  echo "제일 좋아하는 야채가 $vegetable 이네요."
  echo "깔깔~~"
  echo
  break  # 여기에 'break'가 없으면 무한 루프를 돕니다.
done

exit 0

#  in list를 안 쓰면 select는 스크립트나 select를 포함하고 있는 함수로 넘어온 명령어 줄 인자($@)을 사용합니다.
#  in list가 빠졌을 경우를
#  for variable [in list]
#  의 경우와 비교해 보세요.
