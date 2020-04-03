#!/bin/bash

# https://mug896.github.io/bash-shell/exp_and_sub/filename_expansion.html

#  Filename Expansion ( Globbing )
#  디렉토리 에서 파일을 조회할 때 * 문자를 사용해본 적이 있을 겁니다. 프롬프트 에서 ls *.sh 명령을 실행하면 확장자가 .sh 인 파일들을 모두 볼 수 있습니다.
#  여기서 사용된 * 문자를 glob 문자라 하고 glob 문자에 의해 매칭된 파일들로 치환되는 것을 globbing 이라고 합니다.
#
#  glob 문자는 * 외에 ? [ ] 도 사용할 수 있으며 사실 shell 에서 제공하는 pattern matching 과 동일하게 동작합니다.
#  globbing 은 꼭 파일이름을 다룰 때만 적용되는 것은 아니며 어떤 스트링이나 변수값에라도 glob 문자가 있으면 발생하므로 주의해야 합니다.
#
#  파일이름 앞에 . 이 붙은 경우는 hidden 파일이라고 해서 기본적으로 매칭이 되지 않는데 이때는 직접 . 을 써주거나 아니면 dotglob 옵션 설정을 통하여 매칭할 수 있습니다.
#
#  Quote 을 하면 단어분리, globbing 둘 다 일어나지 않습니다. >> 이 언급을 확실히 100% 이해하고, 기억해야 함!
#
