#!/bin/bash

# eval 명령 사용 : 문자열로된 명령어를 실행
# 인라인 명령으로 지정된 횟수만큰 작업 실행

job="curl https://miro.medium.com/max/1460/1\*xEsJmQB59kkKDsCaRGw_RA.png -o ~/hahahahahahahaha.png"

# 5번 반복 > 쉽지만 코드가 길다.
for i in 1 2 3 4 5; do echo "반복[${i}]"; eval ${job}; done

# 2000번 반복 > 짧다.
for i in {1..2000}; do echo "반복[${i}]"; eval ${job}; done