#!/bin/bash

clear

name=kimbumsuk
comp=kimbumsu?

if [[ $name == $comp ]]; then
  echo "이름 매칭!!!"
else
  echo "이름 NOT 매칭!!!"
fi

if (( 1 < 2 )); then
  echo "참!!!"
else
  echo "거짓!!!"
fi

value=kim bum suk
