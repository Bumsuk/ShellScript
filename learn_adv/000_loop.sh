#!/bin/bash
# loop 및 (:) 널 명령어

clear

echo $?

: # 아무것도 안함
while :     # while true 와 똑같음.
do
  sleep 1
  echo "무한루프 출력 라인!"
done


# 여기서의 sleep 명령어의 예
# sleep .5 # Waits 0.5 second.
# sleep 5  # Waits 5 seconds.
# sleep 5s # Waits 5 seconds.
# sleep 5m # Waits 5 minutes.
# sleep 5h # Waits 5 hours.
# sleep 5d # Waits 5 days.
