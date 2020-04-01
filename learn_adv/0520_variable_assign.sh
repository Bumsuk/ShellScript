#!/bin/bash
clear

echo

# When is a variable "naked", i.e., lacking the '$' in front?
# When it is being assigned, rather than referenced.

# 할당할 때
a=879
echo "\"a\" 의 값은 $a 입니다."

# 'let'으로 할당할 때
let a=16+5
echo "\"a\" 의 값은 이제 $a 입니다."

(( b=7272, a+=10 )) # let 연산은 안쓰는게...
echo "\"a\" 의 값은 이제 $a 입니다. 그리고 \"b\"의 값은 ${b}입니다."

echo

# 'for' 루프에서(실제로는, 일종의 속임수 할당)
# for do done 형식!! 외워라!!
echo -n "루프에서 \"a\" 의 값은 "   # echo -n >> 뉴라인 처리 안함!
for a in 7 8 9 11
do
  echo -n "🤡$a 입니다."
done

echo

# 'read' 문에서(역시 일종의 할당임)
echo -n "\"a\" 를 넣으세요."
read a
echo "\"a\" 의 값은 이제 $a 입니다."

echo

arr=(a b c d e)
echo "arr값은 ${arr}"

for item in ${arr}; do
    echo "items 값은 ${item} 입니다."
done

exit 0