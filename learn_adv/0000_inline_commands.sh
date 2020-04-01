#!/bin/bash

clear
echo "=== end ==="

# 인라인으로 fpath 배열의 각 요소들을 출력
for i in "${fpath[@]}"; do echo "i : ${i}"; done

colors=(red blue white)
for i in "${colors[@]}"; do echo "[색상] ${i}"; done # bash 에서 배열 순회를 하려면 "${colors[@]}" 이렇게 해줘야 함!!

echo "=== end ==="