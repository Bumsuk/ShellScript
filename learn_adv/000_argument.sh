#!/bin/bash

clear

if [ $# = 0 ]; then
echo "인자를 입력해!"; exit;
fi


#
echo "1: $*"
echo "2: $@"

