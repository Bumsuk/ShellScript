#! /bin/bash

## Written by Shai Mishali (c) RayWenderlich.com Oct 30th, 2018
##
## This script installs all needed dependencies and prebuilds the project
## so the playground loads as quickly as possible when the project is opened.

## RxSwift release
# RXSWIFT_VERSION="4.4.1"
RXSWIFT_VERSION="5.0.1"

## Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

## Some helper methods
fatalError() {
    echo -e "${RED}(!!) $1${NC}"
    exit 1
}

info() {
    echo -e "${GREEN}▶ $1${NC}"
}

# 신기하게 구현되어 있다.  rxswift clone 작업시
# 또 주의할것은 함수 내부의 $1 인자는 스크립트의 인자가 아니라, 함수로 전달된 첫번째 인자를 뜻한다.
loader() {
    printf "${BLUE}"
    # kill -0 명령은 해당 백그라운드 프로세서를 죽이는 것이 아니라, 살아있는지를 체크하는 것!
    # https://imdsoho.tistory.com/entry/kill-%EB%AA%85%EB%A0%B9%EC%96%B4-%EC%8B%9C%EA%B7%B8%EB%84%90
    while kill -0 $1 2>/dev/null; do
        printf  "▓"
        sleep 1
    done
    printf "${NC}\n"
}

## Make sure we have everything needed
if ! git --version > /dev/null 2>&1; then
    fatalError "git is not installed"
fi

if ! xcodebuild -usage > /dev/null 2>&1; then
    fatalError "Xcode is not installed"
fi

## Clear screen before starting up
clear


# Print out RW logo
echo -e $GREEN
cat << "EOF"
▓▓▓▓▓▓▓▓▓▓▄▄                           
▓▓▓▓▓▓▓▓▓▓▓▓▓██▄▄                       
▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▌                      
▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▌                     ▓
▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓                    ▄▓▓
▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▀                    ▄▓▓▓
▓▓▓▓▓▓▓▓▓▓▓▓▓▀                     ▄▓▓▓▓
▓▓▓▓▓▓▓▓▓█▀                       ▓▓▓▓▓▓
▓▓▓▓▓▓▓▓▓▌                      ▄▓▓▓▓▓▓▓
▓▓▓▓▓▓▓▓▓▓▌         ▓          ▄▓▓▓▓▓▓▓▓
▓▓▓▓▓▓▓▓▓▓▓▌      ▄▓▓▓▄       ▄▓▓▓▓▓▓▓▓▓
▓▓▓▓▓▓▓▓▓▓▓▓▄    ▓▓▓▓▓▓▓     ▓▓▓▓▓▓▓▓▓▓▓
▓▓▓▓▓▓▓▓▓▓▓▓▓▄  ▓▓▓▓▓▓▓▓▓  ▄▓▓▓▓▓▓▓▓▓▓▓▓
▓▓▓▓▓▓▓▓▓▓▓▓▓▓▄▓▓▓▓▓▓▓▓▓▓▓▄▓▓▓▓▓▓▓▓▓▓▓▓▓
▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
EOF
echo -e $NC

## Clear caches
info "🗑️  Cleaning artifacts"
rm -rf build.log
rm -rf ~/Library/Developer/Xcode/DerivedData/RxSwiftPlayground-* 2> /dev/null
rm -rf RxSwiftPlayground.xcworkspace/xcuserdata
rm -rf Libs

if [ "$1" == "clean" ] || [ "$1" == "reset" ]; then
    info "💥 Clearing RxSwift Cache"
    rm -rf /tmp/RW
fi
if [ "$1" == "reset" ]; then
	info "📕 All done!"
	## We're done, this is purely for book maintenance
	exit 0
fi

## Get RxSwift
RXSWIFT_CACHE="/tmp/RW/RxSwift/${RXSWIFT_VERSION}"

if [ -d $RXSWIFT_CACHE ]; then
    info "👻 Using cached copy of RxSwift v${RXSWIFT_VERSION} ..."
else
    info "🌍 Fetching RxSwift v${RXSWIFT_VERSION} ..."

    ## Get RxSwift & Nuke .git folder
    git clone --recurse-submodules -j8 -b ${RXSWIFT_VERSION} https://github.com/ReactiveX/RxSwift ${RXSWIFT_CACHE} &> build.log & CLONEPID=$!
    loader $CLONEPID
fi

mkdir -p ./Libs
cp -R $RXSWIFT_CACHE ./Libs/RxSwift
rm -rf ./Libs/RxSwift/.git

## Remove Rx.playground to avoid confusing readers. Its reference ID is C8D2C1501D4F3CD6006E2431.
rm -rf ./libs/RxSwift/Rx.playground
sed -i '' '/^.*C8D2C1501D4F3CD6006E2431.*$/d' Libs/RxSwift/Rx.xcodeproj/project.pbxproj

## Force RxSwift's Swift Version to 4.2
sed -i '' 's/SWIFT_VERSION = 4.0;/SWIFT_VERSION = 4.2;/g' Libs/RxSwift/Rx.xcodeproj/project.pbxproj

## Remove code signing from project. See: https://github.com/ReactiveX/RxSwift/pull/1822
sed -i '' '/^.*783T66X79Y;$/d' Libs/RxSwift/Rx.xcodeproj/project.pbxproj

## Build RxSwift
info "🚧 Building RxSwift ..."
xcodebuild build -scheme RxSwift -workspace RxSwiftPlayground.xcworkspace -sdk iphonesimulator -destination "name=iPhone 8" &> build.log & BUILDPID=$!
loader $BUILDPID

info "🎁 Wrapping up ..."

XCUSERDATA="Libs/RxSwift/Rx.xcodeproj/xcuserdata/${USER}.xcuserdatad/xcschemes"
mkdir -p $XCUSERDATA

cat > "$XCUSERDATA/xcschememanagement.plist" <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>SchemeUserState</key>
	<dict>
		<key>AllTests-iOS.xcscheme_^#shared#^_</key>
		<dict>
			<key>isShown</key>
			<false/>
			<key>orderHint</key>
			<integer>2</integer>
		</dict>
		<key>AllTests-macOS.xcscheme_^#shared#^_</key>
		<dict>
			<key>isShown</key>
			<false/>
			<key>orderHint</key>
			<integer>3</integer>
		</dict>
		<key>AllTests-tvOS.xcscheme_^#shared#^_</key>
		<dict>
			<key>isShown</key>
			<false/>
			<key>orderHint</key>
			<integer>4</integer>
		</dict>
		<key>Benchmarks.xcscheme_^#shared#^_</key>
		<dict>
			<key>isShown</key>
			<false/>
			<key>orderHint</key>
			<integer>9</integer>
		</dict>
		<key>Microoptimizations.xcscheme_^#shared#^_</key>
		<dict>
			<key>isShown</key>
			<false/>
			<key>orderHint</key>
			<integer>8</integer>
		</dict>
		<key>RxAtomic.xcscheme_^#shared#^_</key>
		<dict>
			<key>isShown</key>
			<false/>
			<key>orderHint</key>
			<integer>5</integer>
		</dict>
		<key>RxBlocking.xcscheme_^#shared#^_</key>
		<dict>
			<key>isShown</key>
			<false/>
			<key>orderHint</key>
			<integer>6</integer>
		</dict>
		<key>RxCocoa.xcscheme_^#shared#^_</key>
		<dict>
			<key>isShown</key>
			<false/>
			<key>orderHint</key>
			<integer>1</integer>
		</dict>
		<key>RxSwift.xcscheme_^#shared#^_</key>
		<dict>
			<key>isShown</key>
			<true/>
			<key>orderHint</key>
			<integer>0</integer>
		</dict>
		<key>RxTest.xcscheme_^#shared#^_</key>
		<dict>
			<key>isShown</key>
			<false/>
			<key>orderHint</key>
			<integer>7</integer>
		</dict>
	</dict>
	<key>SuppressBuildableAutocreation</key>
	<dict>
		<key>C85BA04A1C3878740075D68E</key>
		<dict>
			<key>primary</key>
			<true/>
		</dict>
		<key>C8E8BA541E2C181A00A4AC2C</key>
		<dict>
			<key>primary</key>
			<true/>
		</dict>
	</dict>
</dict>
</plist>
EOF

info "🎉 Let's get started!"
open RxSwiftPlayground.xcworkspace

