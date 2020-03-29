# 파일에 대한 다양한 형식 검사

file="somefile.txt"
dir="someDirectory"

echo "dummy text" > $file
cat $file

# 파일이 존재하면 true(0)
test -e ${dir}; echo "결과0(test -e): $?"

# 디렉토리면 true(0)
mkdir $dir
test -d $dir; echo "결과1(test -d): $?"
rm -rf $dir

# 파일에 대해 읽기가 가능하면 0
test -r $file; echo "결과2(test -r): $?"

# 파일에 대해 읽기가 가능하면 0
test -x $file; echo "결과3(test -x): $?"

# 파일에 대해 쓰기가 가능하면 0
chmod -w $file
test -w $file; echo "결과4(test -w): $?"
ls -al | grep -i $file

# 파일이 심볼릭 링크이면 true(0)
test -L $file; echo "결과5(test -l): $?"


# 그외에도 test [-n] 명령이 많으니까 man test 에서 찾아봐라.
# 파일을 검사할 때 r, w, x의 접근 권한과 관련해서는 검사 명령을 실행한 사용자를 기준으로 한다.
# 예를 들면, 파일 검사를 하는 사용자가 파일의 소유주이면, 쓰기 권한에 대한 검사를 실행할 경우에
# 오직 소유주에 부여되어 있는 쓰기 권한에 대해서만 검사하고, 다른 사용자에 대한 쓰기 권한은 검사하지않는다.


# 사용된 리소스 flush
rm -rf $file
ls -al | grep -i $file