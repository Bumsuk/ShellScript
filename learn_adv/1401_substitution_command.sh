#!/bin/bash

# https://wiki.kldp.org/HOWTO/html/Adv-Bash-Scr-HOWTO/commandsub.html

#  14장. 명령어 치환(Command Substitution)
#  명령어 치환은 하나나 그 이상의 명령어의 출력을 재할당 해줍니다. 명령어 치환은 말그대로 한 명령어의 출력을 다른 문맥으로 연결해 줍니다.
#
#  명령어 치환의 전형적인 형태는 역따옴표(`...`)를 쓰는 것입니다. 역따옴표 안에 들어 있는 명령어는 명령어 줄에서 쓸 수 있는 텍스트를 만들어 냅니다.
  script_name=`basename $0`
  echo "이 스크립트의 이름은 $script_name 입니다."
#
#  명령어의 출력은 다른 명령어의 인자로 쓸 수 있는데, 변수를 설정하거나 for 루프에서 인자 리스트로도 쓸 수 있습니다.
#

rm `cat filename`   # "filename" 은 지울 파일 목록을 갖고 있습니다.
#
# S. C. 가 "arg list too long" 이란 에러가 나올 수도 있다고 지적했습니다.
# 더 좋은 방법             xargs rm -- < filename
# ( -- 는 "-"로 시작하는 "filename"도 처리해 줍니다. )

textfile_listing=`ls *.txt`
# 현재 디렉토리의 모든 *.txt 파일의 이름을 담고 있는 변수.
echo $textfile_listing

textfile_listing2=$(ls *.txt)   # 명령어 치환의 다른 형태.
echo $textfile_listing
# 똑같은 결과.

# 파일 목록을 하나의 문자열로 가져가면 뉴라인 문자가 중간에 들어가는
# 문제가 생길 수도 있습니다.
#
# 파일 목록을 인자로 지정하는 안전한 방법은 배열을 사용하는 것입니다.
#      shopt -s nullglob    # 일치하는게 없다면 파일명 확장은 무의미해 집니다.
#      textfile_listing=( *.txt )
#
# Thanks, S.C.

