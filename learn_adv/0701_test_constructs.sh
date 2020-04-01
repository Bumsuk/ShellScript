#!/bin/bash

# if/then 은 명령어 목록의 종료 상태가 0 (유닉스 관례상 0은 "성공"을 나타내므로)인지 테스트를 해보고 맞다면 다음 명령어들을 실행시킵니다.

# 테스트 전용 명령어로 [ (왼쪽 대괄호 특수 문자)란 것이 있습니다. test 명령어와 동의어이고, 효율적인 이유로 내장 명령입니다.
# 이 명령어는 자신의 인자를 비교식이나 파일 테스트로 인식해 해당 연산의 결과에 따른 종료 상태(참은 0, 거짓은 1)를 리턴합니다.

# 또한, 다른 언어를 쓰던 프로그래머에게 어느 정도 더 친숙한 비교 연산을 제공해 주는 [[ ... ]]를 Bash 2.02 버전부터 제공합니다.
# 주의할 점은 [[가 명령어가 아닌 키워드라는 것입니다.

# Bash 는 [[ $a -lt $b ]] 를 종료 상태를 리턴하는 하나의 요소로 이해합니다.

# (( ... )) 와 let ... 은 자신이 계산한 산술식이 0이 아닌 값을 가질 경우에 종료 상태 0을 리턴합니다.
# 따라서, 이런 산술 확장은 산술 비교를 할 때 쓸 수 있습니다.

# let "1<2" 는 0 을 리턴("1<2" 가 "1" 로 확장되므로)
# (( 0 && 1 )) 은 1 을 리턴("0 && 1" 이 "0" 으로 확장되므로)

clear

val1=10
val2=2

if [[ val1 < val2 ]]; then
  echo "${val1}은 ${val2}보다 작다!"
else
  echo "${val1}은 ${val2}보다 작지 않다!"
fi

echo "======"

# if 는 대괄호로 조건을 묶지 않고도 아무 명령어나 테스트 할 수 있습니다.
# cmp - compare two files byte by byte
# 이건 밑에서 사용한 더미 파일 생성
makeFiles() {
    echo "dummy text" > a
    echo "dummy text" > b
}
deleteFiles() {
  rm a; rm b
}

makeFiles
if cmp a b > /dev/null  # 결과를 무시.
then echo "파일 a 와 b 는 같습니다."
else echo "파일 a 와 b 는 다릅니다."
fi
deleteFiles
echo



# if/then 은 중첩된 비교나 테스트가 가능합니다.
if echo "다음에 나오는 *if* 는 첫번째 *if* 의 비교 대상에 포함됩니다."

  if [[ $comparison = "integer" ]]
    then (( a < b ))
  else
    [[ $a < $b ]]
  fi

then
  echo '$a 는 $b 보다 적습니다.'
fi


