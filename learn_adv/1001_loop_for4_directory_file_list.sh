#!/bin/bash
clear
#!/bin/bash
# list-glob.sh: "globbing"으로 for 루트의 [list] 만들어내기.

echo

for file in *
do
  ls -l "$file"  # $PWD(현재 디렉토리)의 모든 파일을 나열.
  # 와일드 카드 문자인 "*"는 모든 문자와 일치합니다. 기억나죠?
  # 하지만 "globbing"에서는 점(dot) 파일은 일치하지 않습니다.

  #  만약에 패턴이 아무 파일과 일치하지 않는다면 그냥 자기 자신으로 확장되는데,
  #+ 이걸 피하려면 nullglob 옵션을 주면 됩니다.
  #  (shopt -s nullglob).
  #  S.C.의 지적 사항.
done

echo; echo

for file in [jx]*
do
  # 괜히 지워지면 곤란하니 일단 막아놓는다.
  # rm -f $file    # $PWD에서 "j"나 "x"로만 시작하는 모든 파일을 지움.
  echo "\"$file\" 이 지워졌습니다."
done

echo

exit 0
