#!/bin/bash

# 환경변수 LANG 에 대해

# 이 값은 쉘의 언어설정값을 가지고 있다.
# 가장쉽게 date 명령의 결과가 한글로 나오면 LANG 설정이 한글(ko_KR.UTF-8) 로 되어 있다는 뜻.

# locale 명령어로 현재 여러 설정들을 확인가능
locale
# [결과]
#  LANG=""
#  LC_COLLATE="C"
#  LC_CTYPE="en_US.UTF-8"
#  LC_MESSAGES="C"
#  LC_MONETARY="C"
#  LC_NUMERIC="C"
#  LC_TIME="C"
#  LC_ALL=

# 여기서 LANG 값을 바꾸면(export 로 해야함!)
export LANG="ko_KR.UTF-8"

date

