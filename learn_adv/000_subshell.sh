#!/bin/bash
# 서브쉘 연산 ( expr )

clear

a=123

( a=321; echo "[in subshell - a : ${a}]" ) # 서브쉘에서 값은 접근 불가능

echo "a : ${a}"

