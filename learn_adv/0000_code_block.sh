#!/bin/bash
# 코드 블럭 사용예

clear

# 코드 블럭 { expr } 의 결과를 외부 파일로 저장
{
  whoami
  finger
  ls
} > code_result.txt



