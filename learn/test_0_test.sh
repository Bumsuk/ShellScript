# test 명령어의 사용
# 결과가 참이면 0 반환

echo "hahahah" > hello_fail.sh
chmod +x hello_fail.sh
test hello_fail.sh | echo "test 결과는 `$?`"

#./hello_fail.sh | echo "test 결과는 `$?`"

echo $? # 이전 명령의 결과값 확인

# 이거 예상대로 안되는 이유는 잘 모르겠다. 원래는 127번(command not found) 에러가 출력되어야 함.