#!/bin/bash

clear

# IFS 를 체크하는 과정에서, bash 과 zsh 의 echo 동작도 다르고
# '\n' 를 IFS에 할당할때 bash 과 zsh 에서의 처리가 다르다!
# 쉘스크립트 작성시 호환성 측면에서 bash 으로 작성해야 하므로 이런 부분에 항상 유념해야 함.

# 이렇게 IFS 초기화만 할수 있다.
# IFS=

unset IFS

echo -n $IFS | hexdump -C
# zsh 결과 : 스페이스(20) 수평탭(09) 라인피드(뉴라인, 0a) 널문자(00)
#  00000000  20 09 0a 00                                       | ...|
#  00000004

# bash 결과 : 아무것도 출력되지 않음! IFS 설정이 안되어 있다?






echo "= end ="