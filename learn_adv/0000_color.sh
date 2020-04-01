#!/bin/bash

# https://misc.flogisoft.com/bash/tip_colors_and_formatting
# http://www.dreamy.pe.kr/zbxe/CodeClip/3765725
# 이 파일은 색상 정보들만 제공 > 타 sh 파일에서 source 로 include

#  In Bash, the <Esc> character can be obtained with the following syntaxes:
#  \e
#  \033
#  \x1B


# 글자는 흰식, 배경은 여러가지 색들
# 현재의 \033 부분을 \e 로 바꿀수 있는데 일단 그냥 사용
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

# 글자 및 배경
RED_YELLOW='\033[31;43m'

