#!/bin/bash
clear

# 예 10-5. in [list]가 빠진 for 문
# 인자를 줘서 실행시켜도 보고 안 줘서 실행시켜 본 다음, 어떻게 되는지 보세요.

for a
do
 echo -n "$a "
done

# 'in list' 가 없기 때문에 '$@'에 대해서 동작합니다.
# ('$@'는 공백문자를 포함하는 명령어줄 인자 리스트).

echo

exit 0

