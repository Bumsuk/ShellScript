# 산술 비교문 : test 문을 쓰거나 [ expression ] 을 사용

val1=200
val2=100

echo "🤡비교값 : val1($val1), val2($val2)"

# test 명령어를 쓰는 것보다, [ expression ] 표현식을 쓰는것이 더 좋아 보인다. > 내부 공백 잊지 말것!
# ... 근데 결국 < > = != 기호를 사용할수 있는데, 어렵게 -eq -ne -ge 등을 쓸 이유가 았나?

test $val1 -eq $val2; echo "결과1(equal): $?"
[ $val1 -eq $val2 ]; echo "결과2(equal): $?"
[ $val1 = $val2 ]; echo "결과2-1(equal): $?"
[ $val1 -ne $val2 ]; echo "결과3(not equal): $?"
[ $val1 != $val2 ]; echo "결과3-1(not equal): $?"
[ $val1 -ge $val2 ]; echo "결과4(greater or equal): $?"
[ $val1 -gt $val2 ]; echo "결과5(great than): $?"
[ $val1 -lt $val2 ]; echo "결과6(less than): $?"
[ $val1 -le $val2 ]; echo "결과6(less than or equal): $?"

# zsh에선 더블 대괄호 용법으로 비교가 가능하다!
[[ 1 != 1 ]]; echo "결과 a: $?"
[[ 1 < 2 ]]; echo "결과 b: $?"

[ 1 != 1 ]; echo "결과 c: $?"
[[ 1 < 1 ]]; echo "결과 d: $?"
