#!/bin/bash

clear

array_name=("value 1" "value 2" "value 3")
 
echo "array = ${array_name[@]}"
# 출력 결과
# array = value 1 value 2 value 3
 
printf "value = %s\n" "${array_name[@]}"
# 출력 결과
# value = value 1
# value = value 2
# value = value 3

 # @ 의 기능을 잘 생각해보자.
 # for 문을 작성시 "" 로 랩핑해서 아이템 하나씩 순회하려면 @ 가 필요!
for value in "${array_name[@]}"; do
    echo "🤡$value"
done
# 출력 결과
# value 1
# value 2
# value 3
 
for (( i = 0 ; i < ${#array_name[@]} ; i++ )) ; do
    echo "value[$i] = ${array_name[$i]}"
done
# 출력 결과
# value[0] = value 1
# value[1] = value 2
# value[2] = value 3



for index in ${!array_name[*]}; do
    printf "%4d: %s\n" "$index" "${array_name[$index]}"
done
# 출력 결과
#   0: value 1
#   1: value 2
#   2: value 3
