# https://wiki.kldp.org/HOWTO/html/Adv-Bash-Scr-HOWTO/special-chars.html

#  널 명령어(null command). 쉘의 "NOP"(no op, 아무 동작도 않함)에 해당합니다.
#  쉘 내장 명령인 true의 동의어라고도 볼 수 있습니다. 주의할 점은 :은 bash 내장 명령이기 때문에 종료 상태는 0이라는 것입니다.
#
#  :
#  echo $?   # 0
#
#  무한 루프:
#
#  while :
#  do
#     첫번째 연산
#     두번째 연산
#     ...
#     n번째 연산
#  done
#
#  # 이는 다음과 같습니다:
#  #    while true
#  #    do
#  #      ...
#  #    done
#  if/then 테스트 문의 Placeholder:
#
#  if condition
#  then :   # 아무것도 안 하고 계속 진행
#  else
#     어떤 작업
#  fi
#  이진 연산의 placeholder 제공, 예 8-1 와 디폴트 매개변수 참고.
#
#  : ${username=`whoami`}
#  # "username"이 명령어나 내장 명령어가 아닌 경우에
#  # ${username=`whoami`}   에 : 없이 쓰면 에러가 납니다.
#
#  here document가 나올 곳의 placeholder를 제공. 예 17-8 참고.
#
#  매개변수 치환을 써서 변수의 문자열 평가(예 9-10 참고).
#  : ${HOSTNAME?} ${USER?} ${MAIL?}
#  # 필수적인 환경변수중 하나라도 세트가 안 돼 있다면 에러를 출력.
#
#  변수 확장/문자열 조각 대치(Variable expansion / substring replacement).
#
#  재지향 연산자인 >과 같이 써서 특정 파일의 퍼미션 변경 없이 크기를 0으로 만들어 줍니다. 파일이 없었다면 새로 만들어 냅니다.
#  : > data.xxx   # "data.xxx"은 이제 빈 파일입니다.
#
#  # cat /dev/null >data.xxx 라고 한 것과 동일하지만
#  # ":"가 내장 명령어이기 때문에 새 프로세스를 포크(fork) 시키지 않습니다.
#  예 12-11 참고.
#
#  역시 재지향 연산자인 >>과 같이 쓰면 파일의 억세스/변경 시간을 업데이트 해 줍니다(: >> new_file). 파일이 없었다면 새로 만들어 냅니다. touch와 같습니다.
#
#  참고: 보통 파일에만 사용하고 파이프나 심볼릭 링크, 특수 파일에는 사용하지 마세요.
#
#  권장하는 방법은 아닙니다만, 주석의 시작을 나타낼 때 쓸 수도 있습니다. 주석에 #을 쓰게 되면 그 줄의 나머지 부분에 대해서 에러 확인을 안 하기 때문에 어떤 문장도 올 수 있지만 :의 경우는 다릅니다.
#  : 이 주석은 에러를 발생시킵니다, ( if [ $x -eq 3] ).
#  ":"는 또한 /etc/passwd와 $PATH 변수에서 필드 구분자로도 쓰입니다.
#  bash$ echo $PATH
#  /usr/local/bin:/bin:/usr/bin:/usr/X11R6/bin:/sbin:/usr/sbin:/usr/games