#!/bin/bash

# source filename 명령으로 다른 스크립트 파일을 inclue 가능하다.

source test_0_for_include.sh

echo "source 명령으로 test_0_for_include.sh 추가"

echo "${test_val1}"
echo "${test_val2}"
