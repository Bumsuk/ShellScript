#!/bin/bash

clear

# http://bahndal.egloos.com/m/583019
# 이 링크의 자료가 이해하기 쉽다. good!

# IFS 란?
# Internal Field Seperator : 내부 필드 구분자를 뜻한다.
# 따라서 한줄을 배열 원소 하나에 대응시키려면 구분자를 줄바꿈(newline) 하나로 제한시켜야 한다.
# 구분자는 변수 IFS에 설정되어 있다. 기본값으로 공백 / 탭 / 줄바꿈으로 설정되어 있음.
# [확인 방법]
#  echo -n "$IFS" | hexdump -C
#  00000000  20 09 0a 00                                       | ...|
#  00000004
# 그리고 당연히 echo $IFS 해도 제어문자들이라 화면에 표시가 안된다.

# https://shaeod.tistory.com/228 : 여기서 아스키코표 참고


# 임의 파일 생성(bash 에서 echo 사용시 -e 옵션은 백슬래시를 인식하게 만든다. 아래의 개행문자 인식 등을 위해 필요!)
echo -e "my name is john\nyour name is jane\nhis name is thomas" > test.txt

# 위 값을 배열에 할당
# [주의!] cat 명령을 이용해서 파일 내용을 출력하고 이것을 그대로 배열 변수에 할당할 경우, 한 줄씩 할당되는 것이 아니라 한 단어씩 할당된다
hello=`cat test.txt`
echo ${hello}

# 즉, 여기서 배열 선언을 할때 기존은 공백문자로 배열요소를 구분하는게 아니라, 개행문자로 하길 원하는 경우가 있다.
# 여기서는 IFS 변경전이므로 arr의 요소는 my name is john .. 이렇게 공백별로 인식되어 저장됨
arr=(`cat test.txt`)
echo "arr 요소들 확인"
echo ${arr[0]}
echo ${arr[1]}
echo ${arr[2]}
echo ${arr[3]}
echo ${arr[4]}
echo ${arr[5]}

echo "========="

echo "🤡IFS 확인1🤡"
echo $IFS | hexdump -C


# 기존 IFS 값 백업 > 이 방법보다 간단하게 한줄로 임시 변경도 가능(IFS3.sh 참고)
IFS_BAK="${IFS}"
IFS=$'\n'

echo "🤡IFS 확인2🤡"
echo $IFS | hexdump -C

# 배열 생성
arr=(`cat test.txt`)

# 개행문자로 배열 요소가 저장됨을 확인
echo ${arr[0]}
echo ${arr[1]}
echo ${arr[2]}

echo "> 개행문자를 기준으로 배열의 요소가 저장됨을 확인!"

# IFS 복구
IFS="${IFS_BAK}"

# test.txt 파일 삭제
rm -rf test.txt

