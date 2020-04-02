
# https://wiki.kldp.org/HOWTO/html/Adv-Bash-Scr-HOWTO/internal.html#FTN.AEN4809

#  11장. 내부 명령어(Internal Commands and Builtins)
#  내부 명령(builtin) 은 Bash 툴 셋에 포함된 명령어로 말 그대로 bulit in(고유의, 붙박이의)된 명령어입니다.
#  내부 명령은 시스템 명령어와 이름이 같을 수도 있지만 이런 경우는 Bash가 내부적으로 다시 구현해 놓은 것입니다.
#  [1] 예를 들어, 하는 일이 거의 동일한 bash의 echo는 /bin/echo와 다릅니다.
#
#  키워드(keyword)는 예약된 낱말, 토큰, 연산자를 말합니다. 키워드는 쉘에서 특별한 의미를 가지면서, 쉘 문법을 형성해 줍니다.
#  예를 들면, "for", "while", "!"가 키워드입니다. 내부 명령(builtin)과 비슷하게 키워드도 Bash 내부에 하드코드(hard-coded)되어 있습니다.

# 한번 훑어봐라...

