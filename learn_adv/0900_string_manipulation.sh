# https://wiki.kldp.org/HOWTO/html/Adv-Bash-Scr-HOWTO/string-manipulation.html

#  9.2. 문자열 조작
#
#  Bash 는 놀랍도록 많은 문자열 조작 연산을 제공합니다. 하지만 불행하게도 이 도구들은 하나로 통합되어 있지 않습니다. 몇 개는 매개변수 치환의 서브셋이고 다른 것은 유닉스의 expr 명령어의 기능에 해당합니다. 이렇기 때문에 이런 혼동스러움에 대한 언급도 없이 명령어 문법에 일관성이 없고 기능이 중복되어 있습니다.
#
#  문자열 길이
#
#  ${#string}
#  expr length $string
#  expr "$string" : '.*'
#  stringZ=abcABC123ABCabc
#
#  echo ${#stringZ}                 # 15
#  echo `expr length $stringZ`      # 15
#  echo `expr "$stringZ" : '.*'`    # 15
#  문자열 시작에서부터 매칭되는 문자열조각(substring)의 길이
#
#  expr match "$string" '$substring'
#  $substring 은 정규 표현식입니다.
#
#  expr "$string" : '$substring'
#  $substring 은 정규 표현식입니다.
#
#  stringZ=abcABC123ABCabc
#  #       |------|
#
#  echo `expr match "$stringZ" 'abc[A-Z]*.2'`   # 8
#  echo `expr "$stringZ" : 'abc[A-Z]*.2'`       # 8
#  인덱스
#
#  expr index $string $substring
#  $string 에서 일치하는 $substring 의 첫 문자의 위치.
#
#  stringZ=abcABC123ABCabc
#  echo `expr index "$stringZ" C12`             # 6
#                                               # C 의 위치.
#
#  echo `expr index "$stringZ" 1c`              # 3
#  # 'c' (3번째 위치에 있는) 가 '1' 보다 먼저 일치됨.
#
#  C 의 strchr()와 거의 비슷합니다.
#
#  문자열조각 추출(Substring Extraction)
#
#  ${string:position}
#  $string 의 $position 부터의 문자열조각을 추출.
#
#  string 매개변수가 "*" 이거나 "@" 라면 position에서 시작하는 위치 매개변수 [1] 를 추출해 냅니다.
#
#  ${string:position:length}
#  $string의 $position부터 $length만큼의 문자를 추출해 냅니다.
#
#  stringZ=abcABC123ABCabc
#  #       0123456789.....
#  #       0 부터 시작하는 인덱싱.
#
#  echo ${stringZ:0}                            # abcABC123ABCabc
#  echo ${stringZ:1}                            # bcABC123ABCabc
#  echo ${stringZ:7}                            # 23ABCabc
#
#  echo ${stringZ:7:3}                          # 23A
#                                               # 3글자짜리 문자열조각.
#  string 매개변수가 "*" 나 "@" 라면 위치 position에서 시작하는 매개변수의 최대 length를 추출해 냅니다.
#
#  echo ${*:2}          # 두번째 이후의 위치 매개변수를 에코.
#  echo ${@:2}          # 위와 같음.
#
#  echo ${*:2:3}        # 2,3,4번(3개) 위치 매개변수를 에코.
#  expr substr $string $position $length
#  $string의 $position부터 $length만큼의 문자를 추출해 냅니다.
#
#  stringZ=abcABC123ABCabc
#  #       123456789......
#  #       1 부터 시작하는 인덱싱.
#
#  echo `expr substr $stringZ 1 2`              # ab
#  echo `expr substr $stringZ 4 3`              # ABC
#  expr match "$string" '\($substring\)'
#  $string의 처음에서부터 정규 표현식인 $substring을 추출해 냅니다.
#
#  expr "$string" : '\($substring\)'
#  $string의 처음에서부터 정규 표현식인 $substring을 추출해 냅니다.
#
#  stringZ=abcABC123ABCabc
#
#  echo `expr match "$stringZ" '\(.[b-c]*[A-Z]..[0-9]\)'`   # abcABC1
#  echo `expr "$stringZ" : '\(.[b-c]*[A-Z]..[0-9]\)'`       # abcABC1
#  # 위의 두 가지 형태는 동일합니다.
#  문자열조각 삭제(Substring Removal)
#
#  ${string#substring}
#  $string의 앞 부분에서부터 가장 짧게 일치하는 $substring을 삭제.
#
#  ${string##substring}
#  $string의 앞 부분에서부터 가장 길게 일치하는 $substring을 삭제.
#
#  stringZ=abcABC123ABCabc
#  #       |----|
#  #       |----------|
#
#  echo ${stringZ#a*C}      # 123ABCabc
#  # 'a'와 'C' 사이에서 가장 짧게 일치되는 부분을 삭제.
#
#  echo ${stringZ##a*C}     # abc
#  # 'a'와 'C' 사이에서 가장 길게 일치되는 부분을 삭제.
#  ${string%substring}
#  $string의 뒷 부분에서부터 가장 짧게 일치하는 $substring을 삭제.
#
#  ${string%%substring}
#  $string의 뒷 부분에서부터 가장 길게 일치하는 $substring을 삭제.
#
#  stringZ=abcABC123ABCabc
#  #                    ||
#  #        |------------|
#
#  echo ${stringZ%b*c}      # abcABC123ABCa
#  # $stringZ의 뒷 부분부터 계산해서 'b'와 'c' 사이에서 가장 짧게 일치하는 부분을 삭제.
#
#  echo ${stringZ%%b*c}     # a
#  # $stringZ의 뒷 부분부터 계산해서 'b'와 'c' 사이에서 가장 길게 일치하는 부분을 삭제.
#  예 9-9. 그래픽 파일을 다른 포맷 확장자로 이름을 바꾸면서 변환
#
#  #!/bin/bash
#  #  cvt.sh:
#  #  특정 디렉토리의 모든 MacPaint 이미지 파일을 "pbm" 포맷으로 변환.
#
#  #  Brian Henderson(bryanh@giraffe-data.com)이 관리하고 있는 "netpbm" 패키지의
#  #+ "macptopbm" 을 사용함.
#  #  Netpbm 은 거의 대부분의 리눅스 배포판에 포함되어 있습니다.
#
#  OPERATION=macptopbm
#  SUFFIX=pbm          # 새 파일이름 확장자.
#
#  if [ -n "$1" ]
#  then
#    directory=$1      # 디렉토리 이름이 인자로 주어질 경우...
#  else
#    directory=$PWD    # 아니면 현재 디렉토리에 대해서.
#  fi
#
#  # 대상 디렉토리의 모든 파일을 ".mac" 확장자의 MacPaint 이미지 파일이라고 가정.
#
#  for file in $directory/*    # 파일이름 globbing.
#  do
#    filename=${file%.*c}      #  파일이름에서 ".mac" 확장자를 떼어냄
#                              #+ ('.*c' 는 '.' 과 'c'를 포함해서 둘 사이의
#                              #+ 모든 것과 일치함).
#    $OPERATION $file > $filename.$SUFFIX
#                              # 변환된 파일을 새 파일이름으로 재지향.
#    rm -f $file               # 변환후 원래 파일 삭제.
#    echo "$filename.$SUFFIX"  # 결과를 표준출력으로 로깅.
#  done
#
#  exit 0
#  문자열 조각 대치(Substring Replacement)
#
#  ${string/substring/replacement}
#  처음 일치하는 $substring을 $replacement로 대치.
#
#  ${string//substring/replacement}
#  일치하는 모든 $substring을 $replacement로 대치.
#
#  stringZ=abcABC123ABCabc
#
#  echo ${stringZ/abc/xyz}           # xyzABC123ABCabc
#                                    # 처음 일치하는 'abc'를 'xyz'로 대치.
#
#  echo ${stringZ//abc/xyz}          # xyzABC123ABCxyz
#                                    # 일치하는 모든 'abc'를 'xyz'로 대치.
#  ${string/#substring/replacement}
#  $substring이 $string의 맨 앞에서 일치하면 $replacement로 대치.
#
#  ${string/%substring/replacement}
#  $substring이 $string의 맨 뒤에서 일치하면 $replacement로 대치.
#
#  stringZ=abcABC123ABCabc
#
#  echo ${stringZ/#abc/XYZ}          # XYZABC123ABCabc
#                                    # 맨 앞에서 일치하는 'abc'를 'xyz'로 대치.
#
#  echo ${stringZ/%abc/XYZ}          # abcABC123ABCXYZ
#                                    # 맨 뒤에서 일치하는 'abc'를 'xyz'로 대치.
#  스크립트에서 문자열 조작에 대한 더 자세한 사항은 9.3절와 expr 명령어에서 문자열 조작과 관련된 부분을 참고하세요. 스크립트 예제는 다음을 참고하세요.
#
#  예 12-6
#
#  예 9-11
#
#  예 9-12
#
#  예 9-13
#
#  예 9-15
#
#  주석
#  [1]
#  이 규칙은 명령어줄 인자나 함수로 넘겨지는 매개변수에도 적용됩니다.
#
