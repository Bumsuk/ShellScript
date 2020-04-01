#!/bin/bash
clear

arr=(하나 둘 셋 넷 다섯)

echo ${arr}

# 아래 표현들은 전부 배열의 갯수를 출력한다.
echo "결과1 : " ${#arr}
echo "결과2 : " ${#arr[@]}
echo "결과3 : " ${#arr[*]}

# 왜 arr[0] 은 값이 없냐????
# bash 과 달리, zsh 은 배열의 첫번째 요소에 접근시, 0 이 아닌 1 로 접근!! 해야 한다.
# 헐..... 실습시 intelliJ를 사용할때, 첫번재 라인의 #!/bin/bash를 인식하지 않고 zsh 로 실행하니 주의해야 한다!
# 참고 : https://unix.stackexchange.com/questions/252368/is-there-a-reason-why-the-first-element-of-a-zsh-array-is-indexed-by-1-instead-o
echo "결과4 : " ${arr[1]}

# 배열값 순회
for i in "${arr[@]}"; do
  echo "[배열값] ${i}"
done





