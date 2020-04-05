#!/bin/bash

echo "[child.sh]"

# 이 스크립트를 호출하는 parent.sh 에서 name1, name2 변수를 export로 선언해야 여기서 제대로 출력됨!
echo "name1 : $name1, name2 : $name2"
