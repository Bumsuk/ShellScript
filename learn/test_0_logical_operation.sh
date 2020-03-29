# 논리 연산 테스트( ! -a -o () )

file="somefile.sh"

clear
echo "check file: " > $file
cat $file

# 파일이 존재하면 true(0)
test -e ${dir}; echo "결과0(test -e): $?"


test -r $file; echo "결과1(test -r):" $?

# -o 옵션 : 하나라도 참이면 true(0)
# expression1 -o expression2
test -r $file -o -x $file; echo "결과2(test -r $file -0 -x $file):" $?

# -a 옵션 : 모두 참이면 true(0)
# expression1 -a expression2
chmod +x $file
test -r $file -a -x $file; echo "결과3(test -r $file -a -x $file):" $?




# 리소스 정리
rm -rf $file
