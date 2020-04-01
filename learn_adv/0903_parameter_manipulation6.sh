#!/bin/bash
clear

# ${!varprefix*}, ${!varprefix@}
# 이미 선언된 변수들 중에 varprefix로 시작하는 변수들.
# 이 예제는 bash에서만 잘 동작함.

xyz23=whatever
xyz24=

a=${!xyz*}      # 선언된 변수중 "xyz"로 시작하는 변수로 확장.
echo "a = $a"   # a = xyz23 xyz24
a=${!xyz@}      # 위와 같음.
echo "a = $a"   # a = xyz23 xyz24

# Bash 2.04 버전에서 이 기능이 추가됨.
