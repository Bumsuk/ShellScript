#!/bin/bash
# 예 10-28. 함수에서 select를 써서 메뉴 만들기

# $PS3
# 3차 프롬프트로 select 루프문에서 표시됩니다(예 10-27 참고).
PS3='제일 좋아하는 야채를 고르세요: '

echo

choice_of() {
  select vegetable; do # select 에 [in list] 가 빠져있기 때문에, 함수로 넘어온 인자를 씁니다.
    echo
    echo "제일 좋아하는 야채가 $vegetable 군요."
    echo "껄껄~~"
    echo
    break
  done
}

# 이렇게 변경도 가능할까? > 가능함!
# select_list=(애플 구글 MS 삼성 LG)
# choice_of "${select_list[@]}"

choice_of 콩 쌀 당근 무 토마토 시금치
#         $1  $2  $3    $4  $5      $6
#         choice_of() 함수로 넘어갑니다.

exit 0
