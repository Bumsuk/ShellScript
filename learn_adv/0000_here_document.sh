#!/bin/bash

# https://ko.wikipedia.org/wiki/%ED%9E%88%EC%96%B4_%EB%8F%84%ED%81%90%EB%A8%BC%ED%8A%B8#cite_note-EOF-4
# https://huammmm1.tistory.com/m/517 >> 이 내용도 이해하기 쉽다.
# https://mug896.github.io/bash-shell/here_document.html : 이건 아주 자세한 예제...

#  컴퓨팅에서 히어 도큐먼트(here document, here-document), 히어 텍스트(here-text), 히어독(heredoc), 히어이즈(hereis), 히어 스트링(here-string),
#  히어 스크립트(here-script)는 파일 리터럴 또는 스트림 리터럴이다. 마치 별도의 파일인 것처럼 취급하는 소스 코드의 한 부분이다.
#  이 용어는 비슷한 문법을 사용하는 여러 줄의 스트링 리터럴을 구성하기 위해서도 사용되며 텍스트 안의 줄 바꾸기와 기타 공백(들여쓰기 포함)을 보존한다.
#
#  히어 도큐먼트는 유닉스 셸에서 기원하였으며,[1] sh, csh,[2] Tcsh,[3] ksh, bash, zsh 등에서 볼 수 있다.
#  히어 도큐먼트 스타일의 스트링 리터럴은 다양한 고급 프로그래밍 언어, 특히 펄 프로그래밍 언어(유닉스 셸의 영향을 받은 문법)와
#  펄에 영향을 받은 언어(예: PHP, 루비)에서 볼 수 있다. 파이썬, Tcl 등의 그 밖의 고급 언어들은 다중 라인 스트링을 위한 다른 기능을 제공한다.
#
#  히어 도큐먼트는 파일 또는 문자열로 취급이 가능하다. 일부 셸은 이것들을 Printf 리터럴로 취급하며 이로써 리터럴 내에서 변수 치환과 명령어 치환을 가능케 한다.
#
#  유닉스 셸에서 기원한 가장 일반적인 히어 도큐먼트 문법은 <<와 그 뒤에 붙는 구분 문자 식별자(종종 EOF 또는 END[4]),
#  그리고 다음 줄에 인용 텍스트가 시작되며 인용 텍스트를 닫을 때에는 똑같은 구분 문자 식별자가 위치하게 된다.
#  이러한 문법은 히어 도큐먼트가 스트림 리터럴임을 의미하며 문서의 내용은 선행 명령dml stdin(표준 스트림)으로 리다이렉트된다.
#  히어 도큐먼트 문법은 "다음 파일로부터 입력을 받는" <인 입력 리다이렉션 문법과 유사하다.
#
#  다른 언어들은 종종 비슷한 문법을 사용하지만 문법과 실제 기능의 세부 사항은 상당히 다를 수 있다.
#  단순히 스트링 리터럴을 사용할 때 <<는 인다이렉션(indirection)을 지시하지 않고 시작 구분자를 의미할 수 있다.
#  루비 등 일부 언어에서 <<는 입력 리다이렉션을 위해 사용되므로 히어 도큐먼트 스트링 리터럴로부터 리다이렉트하고 싶으면 <<를 두 번 사용해야 한다.

# <<< 는 here string 이다.
# [요약]
# << : here document
# <<< : here string

clear

echo "== sample #1 =="
# << EOF # 이렇게 하면 bash에서는 동작안하네.
<< EOF
나랏말싸미
어쩌고 저쩌고..
EOF

echo "== sample #2 =="
cat << EOF
히어 도큐먼트는 로고나 대량의 문자열을 표시할때 사용하는것갑다?
나중에 더 알아보면 되겠지.
EOF

echo  "== sample #3 =="
# 일단 사용할 색상값 정의해놓고..
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e $GREEN
cat << "EOF"
[note] 시작과 끝의 EOF 는 구분식별자 문자로, 시작과 끝에 입력해줘야 제대로 출력됨!(이 식별자는 임의의 문자열이어도 됨)
▓▓▓▓▓▓▓▓▓▓▄▄
▓▓▓▓▓▓▓▓▓▓▓▓▓██▄▄
▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▌
▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▌                     ▓
▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓                    ▄▓▓
▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▀                    ▄▓▓▓
▓▓▓▓▓▓▓▓▓▓▓▓▓▀                     ▄▓▓▓▓
▓▓▓▓▓▓▓▓▓█▀                       ▓▓▓▓▓▓
▓▓▓▓▓▓▓▓▓▌                      ▄▓▓▓▓▓▓▓
▓▓▓▓▓▓▓▓▓▓▌         ▓          ▄▓▓▓▓▓▓▓▓
▓▓▓▓▓▓▓▓▓▓▓▌      ▄▓▓▓▄       ▄▓▓▓▓▓▓▓▓▓
▓▓▓▓▓▓▓▓▓▓▓▓▄    ▓▓▓▓▓▓▓     ▓▓▓▓▓▓▓▓▓▓▓
▓▓▓▓▓▓▓▓▓▓▓▓▓▄  ▓▓▓▓▓▓▓▓▓  ▄▓▓▓▓▓▓▓▓▓▓▓▓
▓▓▓▓▓▓▓▓▓▓▓▓▓▓▄▓▓▓▓▓▓▓▓▓▓▓▄▓▓▓▓▓▓▓▓▓▓▓▓▓
▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
EOF
echo -e $NC

echo  "== sample #4 =="
# tr (치환) 명령어를 사용해 소문자를 대문자로 바꾸는데, heredoc으로 입력된 내용을 변경한다.

#  $ tr a-z A-Z << END_TEXT
#  > one two three
#  > four five six
#  > END_TEXT

# [결과]
# ONE TWO THREE
# FOUR FIVE SIX

echo  "== sample #5 =="
# 변수값 출력도 가능하다!
hello="안녕하세요!"
cat << myTest
(지역변수값 출력) hello : ${hello}
(parameter expansion) user name : $USER
(command substitution) pwd's output : $(pwd)
(arithmetic expansion) 1+2 result : $((1+2))
myTest

echo  "== sample #6 =="
# heredoc 사용시 탭등을 무시하려면 <<- 이렇게 - 를 붙혀주면 무시된다.
#   💡  ~/Documents/GitHub/ShellScript   master ●  cat << check
#  heredoc>                탭이 두번 들어갔음.
#  heredoc>        탭이 한번 들어갔음.
#  heredoc> check
#      탭이 두번 들어갔음.
#    탭이 한번 들어갔음.
#   💡  ~/Documents/GitHub/ShellScript   master ●  cat <<- check
#  heredocd>               탭이 두번 들어갔음.
#  heredocd>       탭이 한번 들어갔음.
#  heredocd> check
#  탭이 두번 들어갔음.
#  탭이 한번 들어갔음.
#   💡  ~/Documents/GitHub/ShellScript   master ● 

