# 산술 비교문

val1=200
val2=100

echo "🤡비교값 : val1($val1), val2($val2)"

# test 명령어를 쓰는 것보다, [ expression ] 표현식을 쓰는것이 더 좋아 보인다.
test $val1 -eq $val2; echo "결과1(equal): $?"
[ $val1 -eq $val2 ]; echo "결과2(equal): $?"
[ $val1 -ne $val2 ]; echo "결과3(not equal): $?"
[ $val1 -ge $val2 ]; echo "결과4(greater or equal): $?"
[ $val1 -gt $val2 ]; echo "결과5(great than): $?"
[ $val1 -lt $val2 ]; echo "결과6(less than): $?"
[ $val1 -le $val2 ]; echo "결과6(less than or equal): $?"



