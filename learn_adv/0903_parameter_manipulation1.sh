#!/bin/bash
clear
#  ${parameter?err_msg}, ${parameter:?err_msg}
#  매개변수가 세트되어 있으면 그 값을 쓰고 아니라면 err_msg를 출력.
#
#  두 형태도 역시 비슷하지만 :은 parameter가 선언만 되고 널일 경우에만 차이점이 나타납니다.
#
#  예 9-10. 매개변수 치환과 : 쓰기
#
#  몇개의 시스템 환경 변수 확인
#  예를 들어, 콘솔 사용자의 이름을 나타내는 $USER 가 세트 돼 있지 않다면,
#+ 시스템은 여러분을 인식하지 못합니다.

# 이건 스크립트 에러가 나서 스크립트 안에서 직접 변수값 지정
HOSTNAME="host!"
MAIL="mail!"

# : ${HOSTNAME-""} ${USER-""} ${HOME-""} ${MAIL-""} # 이렇게 디폴트 값을 지정해도 된다.

: ${HOSTNAME?} ${USER?} ${HOME?} ${MAIL?}
  echo
  echo "시스템 이름은 $HOSTNAME 입니다."
  echo "여러분의 이름은 $USER 입니다."
  echo "여러분의 홈디렉토리는 $HOME 입니다."
  echo "여러분의 메일 INBOX는 $MAIL 에 있습니다."
  echo
  echo "이 메세지를 읽고 있다면,"
  echo "중요한 환경 변수가 세트 되어 있다는 뜻입니다."
  echo
  echo

# ------------------------------------------------------

#  ${variablename?} 도 스크립트에서 변수가 세트 되어 있는지를
#  확인할 수 있습니다.

ThisVariable=Value-of-ThisVariable
#  문자열 변수는 변수 이름에 쓸 수 없는 문자가
#+ 세트될 수도 있으니 주의하세요.
: ${ThisVariable?}
echo "ThisVariable 의 값은 $ThisVariable."
echo
echo


: ${ZZXy23AB?"ZZXy23AB 는 세트되지 않았습니다."}
#  ZZXy23AB 에 값이 세트되어 있지 않다면,
#+ 에러 메세지를 뿌리고 종료할 것입니다.

# 에러 메세지를 지정할 수 있습니다.
# : ${ZZXy23AB?"ZZXy23AB 는 세트되지 않았습니다."}


# 다음과 똑같은 결과:  dummy_variable=${ZZXy23AB?}
#                      dummy_variable=${ZZXy23AB?"ZXy23AB 는 세트되지 않았습니다."}
#
#                      echo ${ZZXy23AB?} >/dev/null



echo "위에서 스크립트가 종료됐기 때문에 이 메세지는 안 보입니다."

HERE=0
exit $HERE   # 여기서 종료되지 *않습니다*.
