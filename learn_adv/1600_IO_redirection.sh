#!/bin/bash

# https://wiki.kldp.org/HOWTO/html/Adv-Bash-Scr-HOWTO/io-redirection.html

#  16장. I/O 재지향
#  차례
#  16.1. exec 쓰기
#  16.2. 코드 블럭 재지향
#  16.3. 응용
#
#  쉘은 항상 기본적으로 표준입력(stdin, 키보드), 표준출력(stdout, 스크린), 표준에러(stderr, 스크린에 뿌려질 에러 메세지) "파일들"을 열어 놓습니다.
#  이 파일들을 포함해서 열려 있는 어떤 파일이라도 재지향 될 수 있습니다.
#  재지향이란 간단히 말해서 파일, 명령어, 프로그램, 스크립트, 심지어는 스크립트 속의 코드 블럭(예 4-1, 예 4-2 참고)의 출력을 낚아 채서
#  다른 파일, 명령어, 프로그램, 스크립트의 입력으로 보내는 것입니다.
#
#  열려 있는 파일 각각은 파일 디스크립터(file descriptor)를 할당 받습니다.
#  [1] 표준입력, 표준출력, 표준에러에 해당하는 파일 디스크립터는 각각 0, 1, 2 입니다. 추가적으로 열리는
#  파일을 위해서 3부터 9까지의 파일 디스크립터가 남겨져 있습니다. 종종, 이 추가적인 파일 디스크립터들중의 하나를 표준입력, 표준출력, 표준에러로 할당해서
#  임시적인 중복된 링크로 쓰는 것이 유용할 때가 있습니다.
#  [2] 이런 방법을 쓰면 아주 복잡한 재지향이나 파일 디스크립터를 뒤죽 박죽 사용했을 때, 아주 간단하게 원래대로 복구시켜 줍니다(예 16-1 참고).

#   >
      # 표준출력을 파일로 재지향.
      # 파일이 없으면 새로 만들고, 있다면 덮어 씁니다.

#      ls -lR > dir-tree.list
      # 디렉토리 트리 목록을 파일로 저장해 줍니다.

#   : > filename
      # > 는 "filename"의 길이가 0 이 되도록 잘라줍니다.
      # : 는 아무 출력도 안 하는 더미 플레이스홀더(placeholder)로 동작합니다.

#   >>
      # 표준출력을 파일로 재지향.
      # 파일이 없으면 새로 만들고, 있으면 파일 끝에 덧붙입니다.

#   2>&1
      # 표준에러를 표준출력으로 재지향.
      # 에러 메세지는 표준 출력의 자격으로 스크린에 보내집니다.

#   i>&j
      # i번 파일 디스크립터를 j번 파일디스크립터로 재지향.
      # i가 가르키는 파일의 모든 출력은 j가 가르키는 파일로 보내집니다.

#   >&j
      # 기본적으로 1번 파일 디스크립터(표준출력)를 j번 파일 디스크립터로 재지향.
      # 모든 표준출력은 j가 가르키는 파일로 보내집니다.

#   0<
#    <
      # 파일에서 입력을 받도록 해줍니다.
      # ">"와 짝을 이루는 명령어로, 종종 같이 쓰입니다.
      #
      # grep search-word < filename

#   [j]<>filename
      # "filename"을 읽고 쓰기용으로 열고 "j"번 파일 디스크립터를 할당합니다.
      # "filename"이 없다면 새로 만듭니다.
      # "filename"이 주어지지 않으면 기본적으로 표준입력인 0번이 할당됩니다.
      #
      # 이를 응용하면 파일의 특정한 위치에 쓰기를 할 수 있습니다.
#        echo 1234567890 > File    # "File"에 문자열을 씁니다.
#        exec 3<> File             # "File"을 열고 3번 파일 디스크립터를 할당합니다.
#        read -n 4 <&3             # 문자 4개만 읽은 다음,
#        echo -n . >&3             # 소수점을 쓰고,
#        exec 3>&-                 # 3번 파일 디스크립터를 닫습니다.
#        cat File                  # ==> 1234.67890
      # 어라, 랜덤 억세스네.

#   |
      # 파이프.
      # 프로세스와 명령어를 엮어 주는 일반적인 목적의 툴.
      # ">"와 비슷하지만, 실제로는 좀 더 일반적으로 쓰입니다.
      # 명령어, 스크립트, 파일, 프로그램들을 함께 묶는데 유용하게 쓰입니다.

      # cat *.txt | sort | uniq > result-file
      # 모든 *.txt 파일의 출력을 정렬한 다음, 중복되는 줄을 제거하고
      # 마지막으로 그 결과를 "result-file"에 저장.

#  여러개의 입출력 재지향과 파이프를 하나의 명령어 줄에서 같이 쓸 수 있습니다.
#  command < input-file > output-file
#  command1 | command2 | command3 > output-file
#  예 12-23 와 예 A-10 를 참고.

#  여러개의 출력 스트림이 한 파일로 재지향 될 수도 있습니다.
#  ls -yz >> command.log 2>&1
  # "ls"의 잘못된 옵션인 "yz"의 결과를 "command.log"로 저장합니다.
  # 표준에러가 파일로 재지향 됐기 때문에 어떤 에러 메세지라도 그 파일에 저장됩니다.

#  파일 디스크립터 닫기
#
#  n<&-
#  n번 입력 파일 디스크립터를 닫아 줍니다.
#
#  0<&-, <&-
#  표준입력을 닫아 줍니다.
#
#  n>&-
#  n번 출력 파일 디스크립터를 닫아 줍니다.
#
#  1>&-, >&-
#  표준출력을 닫아 줍니다.
#
#  자식 프로세스는 열려 있는 파일 디스크립터를 상속 받는데 이것 때문에 파이프가 동작합니다.
#  파일 디스크립터가 상속되길 바라지 않는다면 그 파일 디스크립터를 닫으면 됩니다.

# 파이프로 표준에러만 재지향 하기.

#  exec 3>&1                              # 표준출력의 현재 "값"을 저장.
#  ls -l 2>&1 >&3 3>&- | grep bad 3>&-    # 'ls'와 'grep'을 위해 3번 파일 디스크립터를 닫고,
#  exec 3>&-                              # 이제, 스크립트 나머지 부분을 위해 닫습니다.

# Thanks, S.C.
# I/O 재지향에 대한 더 자세한 소개는 부록 D를 참고하세요.

#  파일 디스크립터란 운영체제가 계속 추적할 수 있도록 열려 있는 파일에 할당해 주는 간단한 숫자입니다. 파일 포인터의 간단한 버전이라고 생각하면 됩니다.
#  C 의 파일 핸들(file handle)과 유사한 개념입니다.
#
#  [2]
#  5번 파일 디스크립터를 쓰면 문제가 생길 수 있습니다. Bash가 exec으로 자식 프로세스를 만들 때,
#  그 자식은 5번 파일 디스크립터를 상속받습니다(Chet Ramey의 이메일 아카이브, SUBJECT: RE: File descriptor 5 is held open을 참고하세요).
#  이 특별한 파일 디스크립터는 건드리지 않는게 좋습니다.

