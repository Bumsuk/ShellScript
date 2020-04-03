#!/bin/bash

clear

# [ expr ] 은 test 와 같은 기능
# if test $# = 0; then
if [ $# == 0 ]; then
echo "인자를 입력해!"; exit;
fi


