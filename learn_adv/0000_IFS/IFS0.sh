#!/bin/bash

clear

# IFS 란?
# Internal Field Seperator : 내부 필드 구분자를 뜻한다.
# 따라서 한줄을 배열 원소 하나에 대응시키려면 구분자를 줄바꿈(newline) 하나로 제한시켜야 한다.
# 구분자는 변수 IFS에 설정되어 있다. 기본값으로 공백 / 탭 / 줄바꿈으로 설정되어 있음.

# 문제는 이 IFS 에 관련하여 쉘특성(bash / zsh 등간의 차이), 이해하기 힘든것들이 있어
# 처음부터 정리해봤음.

# https://unix.stackexchange.com/questions/26784/understanding-ifs
# 위 질문들을 정독!

# 1
# IFS는 "필드값 분리(field splitting)라고 논해지는데, 이건 단어 분리(word splitting)과 같은 의미인가?"
# > 같음

# 2
# POSIX 명세에서 IFS 값이 null로 설정되어 있으면, 필드 분리는 동작하지 않는다/ 라고 되어 있는데 맞는지?
# IFS= $ 이렇게 선언만 하고 null 값을 설정한 경우를 말함
# > 맞음

# 3
# 만약 IFS 값이 셋팅이 안되어 있으면(아예 unset시켜버리면, unset IFS), IFS 기본동작으로 동작한다.
# > 맟음. 공백/탭/뉴라인 의 구분으로 동작함!!!

# 4



