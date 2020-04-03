#!/bin/bash
# 쉽게 remote repo에 반영하고 싶을때 사용

GREEN='\033[0;32m'
RED='\033[1;31m'
NC='\033[0m'

defaultMsg="update files"

if [ $# = 0 ]; then
  echo -e "${GREEN}➡️  커밋 커멘트를 입력하세요.${NC}"
  read comment
  defaultMsg=$comment
else
  defaultMsg=$1
fi

E_BADARGS=65

if [ ! -n "$defaultMsg" ]; then
	echo -e "${RED}🚫 명령을 제대로 입력하세요. 공백은 허용안됨!${NC}"; exit
fi

echo -e "$확정된 msg : $defaultMsg"

function process() {
  git add .
  git commit -m "$defaultMsg"
  git push
}

process
