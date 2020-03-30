#!/bin/bash
# 제어문

clear


# 지정된 범위 안에서 반복문 필요 시 좋음
for string in "hello" "world" "..."
do
  echo ${string}
done

echo

# 수행 조건이 true 일때 실행됨 (실행 횟수 지정이 필요하지 않은 반복문 필요 시 좋음)
count=0
while [ ${count} -le 5 ]; do
  echo ${count}
  count=$(( ${count}+1 )) # 왜 이렇게 1 더하는데 복잡하게 해야하나?
done

echo

# 수행 조건이 false 일때 실행됨 (실행 횟수 지정이 필요하지 않은 반복문 필요 시 좋음)
count2=10
until [ ${count2} -le 5 ]; do
    echo ${count2}
    count2=$(( ${count2}-1 ))
done
