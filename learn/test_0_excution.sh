# 스크립트 실행

# 일단 temp.sh 파일 생성
echo "date
pwd
who
#ls -al
exit 1
" > temp.sh

#1 그냥 실행 > permission denied: ./temp.sh 에러 남! 실행권한 줘야함.
#chmod +x ./temp.sh
#./temp.sh

#2 sh 명령어로 스크립트 실행
sh temp.sh

# 위의 2가지 방법을 택일해 사용가능!