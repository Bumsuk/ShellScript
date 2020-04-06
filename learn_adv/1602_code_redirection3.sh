#!/bin/bash

# 예 16-6. 재지향된 for 루프(표준입력, 표준출력 모두 재지향됨)

if [ -z "$1" ]
then
  Filename=names.data          # 파일이름이 지정되지 않을 경우의 기본값.
else
  Filename=$1
fi

Savefile=$Filename.new         # 결과를 저장할 파일이름.
FinalName=Jonah                # "read" 시에 마지막 입력이 될 이름.

line_count=`wc $Filename | awk '{ print $1 }'`  # 대상 파일의 줄 수.

for name in `seq $line_count`
do
  read name
  echo "$name"
  if [ "$name" = "$FinalName" ]
  then
    break
  fi
done < "$Filename" > "$Savefile"     # 표준입력을 $Filename으로 재지향하고,
#    ^^^^^^^^^^^^^^^^^^^^^^^^^^^       그 결과를 백업 파일로 저장.

exit 0
