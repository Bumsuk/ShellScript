#!/bin/bash
clear

# 간단 배열 사용법

# -----------------------------------------------------------------
# 다른 배열인 "area2"를 봅시다.
# 배열 변수에 값을 할당하는 다른 방법을 보여줍니다...
# array_name=( XXX YYY ZZZ ... )

area2=( zero one two three four )

echo -n "area2[0] = "
echo ${area2[0]}
# 아하, 배열 인덱스가 0부터 시작하는군요(배열의 첫번째 요소는 [0]이지 [1]이 아닙니다).
# bash 과 달리, zsh 은 배열의 첫번째 요소에 접근시, 0 이 아닌 1 로 접근!! 해야 한다.
# 헐..... 실습시 intelliJ를 사용할때, 첫번재 라인의 #!/bin/bash를 인식하지 않고 zsh 로 실행하니 주의해야 한다!
# 참고 : https://unix.stackexchange.com/questions/252368/is-there-a-reason-why-the-first-element-of-a-zsh-array-is-indexed-by-1-instead-o

echo -n "area2[1] = "
echo ${area2[1]}    # [1]은 배열의 두번째 요소입니다.
# -----------------------------------------------------------------





