#!/bin/bash

# 중첩된 if/then 문

if [[ 1 == 1 ]]; then
    echo "1 == 1"
    if [[ 2 == 2 ]]; then
        echo "2 == 2"
    fi
fi

# 간단 체크
if [[ -f ./README.md ]]
then
  echo "README.md 파일 존재!"
fi