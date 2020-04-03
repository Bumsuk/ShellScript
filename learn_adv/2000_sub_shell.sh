#!/bin/bash

# https://jupiny.com/2017/07/10/shell-script-basic-4/
# https://migom.tistory.com/20 : iconv 사용법 및 참조 가능한 스크립트

# 간단 서브쉘 예제

will_make_dirs=( dir1 dir2 dir3 dir4 dir5 )
root_make_dir="subshell_test"
is_delete_dir=false

if [[ -n $1 ]]; then
  is_delete_dir="$1";
  echo "👺 실행파라메터 확인! > ${1}, ${is_delete_dir}"
fi

function job_in_dir() {
  # 작업할 폴더가 이미 존재한다면 삭제
  if [[ -d ${root_make_dir} ]] && [[ $is_delete_dir == true ]]; then
    rm -rf ${root_make_dir}
    echo "🤡 존재하는 root_make_dir 삭제!"
  fi

  echo "🤡 현재 디렉토리 : `pwd`"
  mkdir subshell_test; cd subshell_test;
  echo "🤡 현재 작업 디렉토리 : `pwd`"

    for dir in "${will_make_dirs[@]}"; do
      # 중괄호를 사용해 서브쉘을 통해 디렉토리 작업을 실시
      (
        mkdir $dir; cd $dir;
        echo "$dir의 더미파일 내용...at `date '+%Y-%m-%d_%H%:%M:%S'`" >> file.txt
        echo "file 정보 : `file -I file.txt`"
      )
    done
}

function iconv_test() {
  local
}


job_in_dir
wait

echo "🤡 작업완료!"