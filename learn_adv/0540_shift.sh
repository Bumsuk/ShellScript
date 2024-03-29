#!/bin/bash

# shift 명령어는 위치 매개변수를 왼쪽으로 한 단계씩 이동시킵니다.

# $1 <--- $2, $2 <--- $3, $3 <--- $4, 등등.

# 원래의 $1 은 없어지지만 $0 은 바뀌지 않습니다. 위치 매개변수가 많이 필요하다면 {중괄호} 표기법으로 가능하지만(예 5-5 참고),
# shift 를 써서 예전 10개를 쓸 수 있습니다.

# 예 5-7. shift 쓰기

# 'shift' 로 모든 위치 매개변수를 처리하기.

#  이 스크립트의 이름을 shft 등의 이름으로 바꾸고
#+ ./shft a b c def 23 skidoo
#+ 같은 식으로 몇 개의 인자를 넘겨서 불러 보세요.

until [ -z "$1" ]  # 모든 매개변수를 다 쓸 때까지...
do
  echo -n "$1 "
  shift
done

echo   # 여분의 한 줄.

exit 0