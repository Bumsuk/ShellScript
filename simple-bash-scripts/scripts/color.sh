#!/bin/bash

# 이렇게 컬러로 echo 출력을 하려면, echo -e 옵션이 필요! (zsh 에서는 없어도 됨)

DARKGRAY='\033[1;30m'
RED='\033[0;31m'
LIGHTRED='\033[1;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
LIGHTPURPLE='\033[1;35m'
CYAN='\033[0;36m'
WHITE='\033[1;37m'
DEFAULT='\033[0m'

COLORS=($DARKGRAY $RED $LIGHTRED $GREEN $YELLOW $BLUE $PURPLE $LIGHTPURPLE $CYAN $WHITE )

for c in "${COLORS[@]}";do
    printf "\r $c LOVE $DEFAULT "
    sleep 1
done