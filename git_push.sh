#!/bin/bash
# 암 생각없이 remote repo에 반영하고 싶을때 사용

defaultMsg="update files"

if [ $# = 0 ]; then
  echo "➡️커밋 커멘트를 입력하세요."
  read comment
  defaultMsg=$comment
else
  defaultMsg=$1
fi

E_BADARGS=65

if [ ! -n "$defaultMsg" ]; then
	echo "🚫명령을 제대로 입력하세요. 공백은 허용안됨!"; exit
fi

echo "확정된 msg : $defaultMsg"

function process() {
  git add .
  git commit -m "$defaultMsg"
  git push
}

process
