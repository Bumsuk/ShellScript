# ShellScript > bash > zsh > macOS > 🤡

1. [learn](learn): 실습한 코드들, 추후 참고도 하자.
2. [learn_adv](learn_adv): 상세한 레퍼런스(고급 Bash 스크립팅 가이드: Bash를 이용한 쉘 스크립팅 완전 가이드) 기반 레퍼런스 코드들
3. [sample](sample): 테스트 코드들
4. [simple-bash-scripts](simple-bash-scripts): 참고 코드!
5. [git_push.sh](git_push.sh) : repo push 슈가 스크립트

###### *. IntelliJ에서 스크립트 작성시 편하므로, 그걸 사용하자. 

## 주의사항
1. bash과 zsh은 스크립트 작성시 문법이 상이한 것들이 존재(배열 인덱스 및 test 문/비교문 등)하니, 
   무조건 bash 기반으로 스크립트를 작성할 것! > 스크립트의 호환성 때문이라도 무조건 bash를 사용!
2. 조건문 작성시 [ .. ] 형식이 아닌 [[ .. ]] 형식으로 작성할 것!
   (후자의 경우 패턴매칭 등이 지원되니 그게 편함)
