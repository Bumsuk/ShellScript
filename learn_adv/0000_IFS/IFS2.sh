#!/bin/bash

# 기존 IFS(내부 필드 구분자 : 기본값 공백 / 탭 / 줄바꿈)는 백업하고 진행
# IFS_BAK=$IFS
# IFS=':'

echo "현재 IFS값"
echo -n $IFS | hexdump -C

echo "간단 배열 초기화 테스트(IFS 변경)"

# IFS 재지정시, 이렇게 여러개를 지정해 사용할수 있다!
IFS=' :*\n'
echo -n "$IFS" | hexdump -C

arr=(1 2 3:4 5:6\n7\n8*9)
#arr=( 1 2 3 4 )
# arr=(`echo 1:2:3*4`) # 이렇게 해야 원하는 결과를 얻을수 있다!
arr=(`echo 1 2 3:4 5:6\n7\n8*9`)

echo "arr[0] : ${arr[0]}"
echo "arr[1] : ${arr[1]}"
echo "arr[2] : ${arr[2]}"
echo "arr[3] : ${arr[3]}"
echo "arr[4] : ${arr[4]}"
echo "arr[5] : ${arr[5]}"
echo "arr[6] : ${arr[6]}"
echo "arr[7] : ${arr[7]}"
echo "arr[8] : ${arr[8]}"
echo "arr[9] : ${arr[9]}"

# 배열을 값을 하나로 뱉어내서 for 문에서 하나씩 나누는 것(IFS 값 영향을 받지만)
# 착각하기 쉬운데, 배열이 요소가 의도된대로 저장되어 있는지 확인을 해야 하는데
# 이 루프문은 배열를 다시 재분해하는 코드라서 위의 코드처럼 arr[0], arr[1] 으로 확인해야 한다.
for item in ${arr[*]}; do
  echo "item : ${item}"
done
