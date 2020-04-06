#!/bin/bash

#  16.3. 응용
#  I/O 재지향을 솜씨 좋게 쓰면 명령어 출력의 일부분(예 11-4 참고)을 파싱하고 다시 붙일 수 있습니다. 이렇게 하면 리포트와 로그 파일을 만들어 낼 수 있습니다.
#
#  예 16-8. 이벤트 로깅하기

# logevents.sh, by Stephane Chazelas.

# 파일로 이벤트 로깅하기.
# /var/log 에 쓸 권한이 필요하므로 루트로 실행시켜야 됩니다.

ROOT_UID=0     # $UID 0 인 사용자만이 루트 권한을 갖습니다.
E_NOTROOT=67   # 루트가 아닌 사용자일 경우의 종료 에러.


if [ "$UID" -ne "$ROOT_UID" ]
then
  echo "루트로 실행시켜야 됩니다."
  exit $E_NOTROOT
fi

FD_DEBUG1=3
FD_DEBUG2=4
FD_DEBUG3=5

# 이 스크립트가 동작하도록 하려면 다음 두 줄중에 한 줄의 주석을 풀기 바랍니다.
# LOG_EVENTS=1
# LOG_VARS=1


log()  # 시간과 날짜를 로그 파일로 쓰기.
{
echo "$(date)  $*" >&7     # 날짜를 파일로 *append" 시킵니다.
                              # 아래를 참조.
}



case $LOG_LEVEL in
 1) exec 3>&2         4> /dev/null 5> /dev/null;;
 2) exec 3>&2         4>&2         5> /dev/null;;
 3) exec 3>&2         4>&2         5>&2;;
 *) exec 3> /dev/null 4> /dev/null 5> /dev/null;;
esac

FD_LOGVARS=6
if [[ $LOG_VARS ]]
then exec 6>> /var/log/vars.log
else exec 6> /dev/null               # 출력 숨기기.
fi

FD_LOGEVENTS=7
if [[ $LOG_EVENTS ]]
then
  # then exec 7 >(exec gawk '{print strftime(), $0}' >> /var/log/event.log)
  # 윗 줄은 Bash 버전 2.04 에서는 동작하지 않습니다.
  exec 7>> /var/log/event.log        # "event.log" 로 append.
  log                                      # 시간과 날짜 쓰기.
else exec 7> /dev/null                  # 출력 숨기기.
fi

echo "DEBUG3: beginning" >&${FD_DEBUG3}

ls -l >&5 2>&4                       # command1 >&5 2>&4

echo "Done"                                # command2

echo "sending mail" >&${FD_LOGEVENTS}   # "sending mail" 을 7번 파일 디스크립터로 쓰기.


exit 0
