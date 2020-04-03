#!/bin/bash
clear

# 색상정보 변수들은 타 파일에서 가져옴.
source ./0000_color.sh

# 이렇게 컬러로 echo 출력을 하려면, echo -e 옵션이 필요! 이스케이프 인식위해 (zsh 에서는 없어도 됨)
echo -e "${DARKGRAY}다크그레이!"
echo -e "${RED}빨간색!"
echo -e "${LIGHTRED}볼드 빨간색!"
echo -e "${GREEN}그린색!!"
echo -e "${YELLOW}노란색!"
echo -e "${BLUE}파란색!"
echo -e "${PURPLE}보라색!"
echo -e "${LIGHTPURPLE}볼드 보라색!"
echo -e "${CYAN}청록색"

# echo "${RED_YELLOW} 경고! 이건 경고입니다!\033[0;0m"
echo -e "${RED} 🚫 경고! 이건 경고입니다!"
echo -e "\033[40;37m Hello World\033[0m"
echo -e "\033[40;37;7m Hello World\033[0m"

echo -e "\033[33;44mYellow text on blue background\033[0m"
echo -e "\033[1;33;44mBold yellow text on blue background\033[0m"
echo -e "\033[1;4;33;44mBold yellow underlined text on blue background\033[0m"

echo -e "\033[43;31m나랏말싸미\033[0m"

# 이걸로 하얀색으로 원복!
echo -e "\033[0m"


