#!/bin/bash

#!/bin/sh

AA="My name is oops"
BB="name"

# 이렇게 단순하게 문자열 패턴 매칭을 사용하거나...
if [[ "$AA" == *"name"* ]];then
    echo "1st find it"
fi


# =~ 연산자를 사용해도 된다.
if [[ "$AA" =~ $BB ]];then
    echo "2nd find it"
fi
