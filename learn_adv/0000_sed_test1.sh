#!/bin/bash
clear

# https://linuxstory1.tistory.com/entry/SED-%EB%AA%85%EB%A0%B9%EC%96%B4-%EC%82%AC%EC%9A%A9%EB%B2%95
# https://soooprmx.com/archives/8272
# https://wiki.kldp.org/HOWTO/html/Adv-Bash-Scr-HOWTO/x12718.html
# : 기본이 중요하니 이글을 제대로 이해하고 사용하자!

#  [sed 명령어 사용법]
#
#  ----------------
#  치환(substitute)
#  ----------------

  echo "🤡 치환 테스트"
  echo -e "my address is 군포시\t산본동 ... 입니다." > list.txt
  # sed 결과는 표준출력된다. 해당 파일은 변경되지 않음. 그런 옵션도 있겠지?
  sed 's/address/주소/' list.txt # addrass를 address로 바꾼다. 단, 원본파일을 바꾸지 않고 표준출력만 한다.
  sed 's/\t/\ /' list.txt       # 탭문자를 엔터로 변환
  sed 's/\t/_/' list.txt        # 탭문자를 _로 변환
  rm -rf ./list.txt

  echo
  echo "🤡 삭제 테스트"
#  ------------
#  삭제(delete) : 여기서는 검색된 해당 라인을 삭제한다.
#  ------------
  echo -e "this text will delete! wow~\n12345\n가나다라마" > list.txt
  # cat ./list.txt
  sed '/will/d' list.txt
  sed '/12345/d' list.txt
  rm -rf ./list.txt



