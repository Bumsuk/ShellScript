# 변수 테스트
someValue # 로컬 변수 선언 > 선언만!
echo "변수값 획인해보자."
echo $someValue # 이 시점에선 Null
#echo "$PATH"

# 변수 선언시는 = 사이에 공백이 없어야 함.
name="펭수👾"
echo $name

# 백쿼트로 감싸고 명령어를 입력하면 그 결과값이 변수에 저장됨.
#dir=`ls`
date=`date`

# 사용자 정의 변수에 쉘 변수의 값을 저장
myHome=$HOME

echo "디렉토리 정보 : $dir"
echo "오늘 날짜 : $date"
echo "마이홈 : $myHome"

echo "🤡end!"