#!/bin/bash

# [여기 설명 잘되어 있다!]
# https://www.joinc.co.kr/w/Site/Tip/Signal_trap

function finish() {
	# your cleanup here.
	echo "CTL+C pressed"
	echo "clean ..."
	sleep 1
}
trap finish EXIT

echo 'runing ...'
until false; do
	sleep 1
done
