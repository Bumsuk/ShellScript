#!/bin/bash
clear

# 한글로 된 설명
# https://recipes4dev.tistory.com/171

#  대부분의 리눅스 명령들이, 그 명령의 이름만으로 대략적인 기능이 예상되는 것과 다르게,
#  awk 명령은 이름에 그 기능을 의미하는 단어나 약어가 포함되어 있지 않습니다.
#  awk는 최초에 awk 기능을 디자인한 사람들의 이니셜을 조합하여 만든 이름이기 때문입니다.
#  Aho + Weinberger + Kernighan. (A:Alfred V. Aho, W:Peter J. Weinberger, K:Brian W. Kernighan)

#  awk는 파일로부터 레코드(record)를 선택하고, 선택된 레코드에 포함된 값을 조작하거나 데이터화하는 것을 목적으로 사용하는 프로그램입니다.
#  즉, awk 명령의 입력으로 지정된 파일로부터 데이터를 분류한 다음, 분류된 텍스트 데이터를 바탕으로 패턴 매칭 여부를 검사하거나
#  데이터 조작 및 연산 등의 액션을 수행하고, 그 결과를 출력하는 기능을 수행합니다.
#
#  awk에 대한 설명이 잘 이해되시나요? 패턴, 분류, 텍스트, 조작, 연산, 액션. 뭔가 복잡한 작업을 하는 프로그램인 것은 맞는 것 같은데,
#  구체적으로 어떤 기능을 수행하는지, 어떤 목적을 위해 사용해야 하는지 쉽게 떠오르지 않네요. awk를 어떻게 사용해야 하는지도...
#
#  자, 그러면, 구체적인 동작 방식과 사용법을 알아보기에 앞서, awk 명령으로 할 수 있는 일들을 간단히 나열해 보겠습니다.
#
#  텍스트 파일의 전체 내용 출력.
#  파일의 특정 필드만 출력.
#  특정 필드에 문자열을 추가해서 출력.
#  패턴이 포함된 레코드 출력.
#  특정 필드에 연산 수행 결과 출력.
#  필드 값 비교에 따라 레코드 출력.

# 자세한 내용은 위 링크에서 잘 참고하면 됨...

# 일단 더미 파일 생성
echo "this is awk text file\n나는 오늘 일찍 잘꺼다" > awk.txt

# 단순히 파일 내용 전체 출력
awk '{ print }' awk.txt
echo

# 'this' 를 포함하는 레코드 출
awk '/this/' awk.txt
echo

# '오늘' 을 포함하는 레코드 출
awk '/오늘/' awk.txt
echo

# 일 다봤으니 파일은 삭제
rm -rf awk.txt