#!/bin/bash
clear

# 예 10-2. 각 [list] 항목이 인자를 두 개씩 갖는 for 문
# 떠돌이별 재검토.
# 각 떠돌이별의 이름과 해(sun)까지 거리를 한 쌍으로 묶음.

# !! bash 쉘에서만 제대로 출력된다!

for planet in "Mercury 36" "Venus 67" "Earth 93"  "Mars 142" "Jupiter 483"
do
  set -- $planet  # "planet" 변수를 파싱해서 위치 매개변수로 세팅.
  # "--" 를 쓰면 $planet 이 널이거나 대쉬 문자로 시작하는 등의 까다로운 상황을 처리해 줍니다.

  # 원래의 위치 매개변수는 덮어써지기 때문에 다른 곳에 저장해 놓아야 할지도 모릅니다.
  # 배열을 써서 해 볼 수 있겠네요.
  #        original_params=("$@")

  echo "$1		해까지 거리 $2,000,000 마일"
done

# (S.C. 가 확실한 설명을 더 해 줬습니다.)

exit 0
