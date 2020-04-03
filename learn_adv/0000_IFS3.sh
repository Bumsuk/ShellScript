#!/bin/bash

clear

# https://www.nemonein.xyz/2019/03/1818/
# IFS 값을 한줄로 사용하여 임시적으로 IFS 값을 변경해 사용하는 방법 설명.

IFS=":" read user pw uid gid name home shell <<< "$file_info"