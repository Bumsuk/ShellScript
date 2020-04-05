#!/bin/bash

clear

# 함수 안에서 변수 생성시 local 로 선언하면 함수안에서만 접근가능하고
# local 없이 변수 생성하면 쉘스크립트 내에서 전역적으로! 사용이 된다!
function test() {
  local name1="펭수"
  name2="펭수2"
  echo "[함수안] name1 : $name1"
  echo "[함수안] name2 : $name2"
}

test

echo "===="

echo "[함수밖] name1 : $name1"
echo "[함수밖] name2 : $name2"

