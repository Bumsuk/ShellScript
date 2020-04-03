#!/bin/bash

if [[ ! -n $1 ]]; then
  echo "🤡 파일명을 꼭 입력하세요!"; exit 1;
fi

search=$1

# 현재 폴더의 스크립트 파일들 중에서, 07로 시작하는 파일들 검색 및 출력!
results=()
for file in *; do
  echo "[list] $file"
  if [[ $file == ${search}* ]]; then
    echo "🤡 ${file}"
    results=("${results[@]}" $file)
  fi
done

echo "결과 : results count : ${#results[@]}"
echo "results : ${results[@]}"
