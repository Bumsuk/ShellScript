#!/bin/bash
clear

#  ${parameter+alt_value}, ${parameter:+alt_value}
#  매개변수가 세트되어 있다면 alt_value를 쓰고 아니라면 널 스트링을 씁니다.
#
#  이 두 형태는 거의 비슷하지만 parameter가 선언되고 널일 경우에 :이 있고 없고의 차이가 나타납니다. 아래를 보세요.

echo "###### \${parameter+alt_value} ########"
echo

# param1="드럽게 헷갈리네"
a=${param1+xyz}
echo "a = $a"      # a =

param2=
a=${param2+xyz}
echo "a = $a"      # a = xyz

param3=123
a=${param3+xyz}
echo "a = $a"      # a = xyz

echo
echo "###### \${parameter:+alt_value} ########"
echo

a=${param4:+xyz}
echo "a = $a"      # a =

param5=
a=${param5:+xyz}
echo "a = $a"      # a =
# a=${param5+xyz}    와 결과가 다르죠?

param6=123
a=${param6+xyz}
echo "a = $a"      # a = xyz