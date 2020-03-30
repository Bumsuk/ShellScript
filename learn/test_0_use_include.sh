#!/bin/bash

# source filename 명령으로 다른 스크립트 파일을 inclue / 읽어들임 가능하다.

source test_0_for_include.sh
# .sh 파일이 아니라도 변수들 등이 지정된 파일을 불러들일수 있다.

echo "source 명령으로 test_0_for_include.sh 추가"

echo "${test_val1}"
echo "${test_val2}"
