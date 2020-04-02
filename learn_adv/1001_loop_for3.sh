#!/bin/bash
clear

# 예 10-3. Fileinfo: 변수에 들어 있는 파일 목록에 대해 동작
# fileinfo.sh
FILES="/usr/sbin/privatepw
/usr/sbin/pwck
/usr/sbin/go500gw
/usr/bin/fakefile
/sbin/mkreiserfs
/sbin/ypbind"     # 여러분이 궁금해하는 파일들 목록.
                  # 더미 파일인 /usr/bin/fakefile 을 그냥 넣었습니다.

echo

for file in $FILES
do

  if [ ! -e "$file" ]       # 파일이 존재하는지 확인.
  then
    echo "$file 은 존재하지 않는 파일입니다."; echo
    continue                # 다음 파일을 확인.
   fi

  ls -l $file | awk '{ print $9 "         파일 크기: " $5 }'  # 2개의 필드를 출력.
  whatis `basename $file`   # 파일에 대한 정보.
  echo
done

exit 0
