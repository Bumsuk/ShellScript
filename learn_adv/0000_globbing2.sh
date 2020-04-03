#!/bin/bash

# https://mug896.github.io/bash-shell/exp_and_sub/filename_expansion.html

array=( [10]=100 [11]=200 [12]=300 )
echo ${array[12]} # 300 출력!

touch array1               # 현재 디렉토리에 임의로 array1 파일생성

# 주의 주의 주의 주의 주의 주의 주의!!!!!!
# unset 을 실행하였으나 globbing 에의해 array[12] 이 array1 파일과 매칭이되어
# 실질적으로 unset array1 명령과 같게되어 unset 이 되지 않고 있습니다.
unset array[12]            # globbing 에 의해 array1 이 unset 됨 > 결국 여기서는 원래 없는값이니 아무 의미가 없게
echo ${array[12]}          # 실제로는 값이 없어야 하는데, 300이 출력된다!!!!
unset 'array[12]'          # globbing 을 disable 하기위해 quote.
echo ${array[12]}          # 이제 정상적으로 unset 이됨




됨

# 임의 파일 삭제
rm -rf array1
