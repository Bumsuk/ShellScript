#!/bin/bash

# 예 10-23. case로 메뉴 만들기
# 조잡한 주소 데이타베이스

clear # 화면을 정리하고

echo "          주소록"
echo "          ------"
echo "다음중 한 명을 고르세요:"
echo
echo "[E]vans, Roland"
echo "[J]ones, Mildred"
echo "[S]mith, Julie"
echo "[Z]ane, Morris"
echo

read person

case "$person" in
# 변수가 쿼우트 된 것에 주의하세요.

  "E" | "e" )
  # 대소문자 모두 인식.
  echo
  echo "Roland Evans"
  echo "4321 Floppy Dr."
  echo "Hardscrabble, CO 80753"
  echo "(303) 734-9874"
  echo "(303) 734-9892 fax"
  echo "revans@zzy.net"
  echo "Business partner & old friend"
  ;;
# 이중 세미콜론이 각 옵션을 끝내게 해 주는 것을 눈여겨 봐두세요.

  "J" | "j" )
  echo
  echo "Mildred Jones"
  echo "249 E. 7th St., Apt. 19"
  echo "New York, NY 10009"
  echo "(212) 533-2814"
  echo "(212) 533-9972 fax"
  echo "milliej@loisaida.com"
  echo "Girlfriend"
  echo "Birthday: Feb. 11"
  ;;

# Smith & Zane 은 나중에 추가.

          * )
   # 디폴트 옵션.
   # 그냥 리턴을 쳐도 여기로 옵니다.
   echo
   echo "아직 등록이 안 돼 있습니다."
  ;;

esac

echo

# 독자용 연습문제:
# 입력을 한 번만 받고 끝내지 말고 계속 받을 수 있게 고쳐보세요.

exit 0
