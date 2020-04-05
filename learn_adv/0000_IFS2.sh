#!/bin/bash

# 기존 IFS(내부 필드 구분자 : 기본값 공백 / 탭 / 줄바꿈)는 백업하고 진행
# IFS_BAK=$IFS
# IFS=':'

echo "현재 IFS값"
echo -n $IFS | hexdump -C

echo "입력 인자들 확인 - 갯수: ${#}"
echo "============"

echo "간단 배열 초기화 테스트(IFS 변경)"

# IFS 재지정시, 이렇게 여러개를 지정해 사용할수 있다!
IFS='\n : *'
echo -n "$IFS" | hexdump -C


#arr=(1:2:3)
# 이 배열 생성시 \n : *는 필드 구분자로 인식된다!!!
arr=(1 2 3:4 5:6\n7\n8*9)
# 결과
#  item : 1
#  item : 2
#  item : 3
#  item : 4
#  item : 5
#  item : 6
#  item : 7
#  item : 8
#  item : 9

echo "arr 요소갯수 : ${#arr[*]}"
for item in ${arr[*]}; do
  echo "item : ${item}"
done
