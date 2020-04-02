#!/bin/bash
# findstring.sh: 주어진 디렉토리의 이진 파일에서 특정한 문자열 찾아내기.
# 예 10-8. 특정 디렉토리의 모든 바이너리 파일에 대해 원저작자(authorship)를 확인 하기

directory=/usr/bin/
fstring="Free Software Foundation"  # FSF에서 만든 파일에는 어떤 것이 있나 알아볼까요?

for file in $( find $directory -type f -name '*' | sort )
do
  strings -f $file | grep "$fstring" | sed -e "s%$directory%%"
  # 여기서는 "sed" 표현식의 $directory 가 원래 구분자인 "/"를 포함하고 있기 때문에
  # "/" 구분자를 다른 것(%)으로 바꿔줘야 합니다.
  # 이렇게 하지 않으면 에러 메세지가 납니다(sed -e "s/$directory//" 라고 한 번 해보세요).
done

exit 0

# 쉬운 연습문제 하나 내겠습니다:
# $directory 와 $fstring 을 명령어줄에서 받아 들일 수 있도록 수정해 보세요.
