# 암 생각없이 remote repo에 반영하고 싶을때 사용

defaultMsg="update files"

if [ $# = 0 ]; then
  echo "커밋 커멘트 없이 진행합니다."
else
  defaultMsg=$1
fi

echo "확정된 msg : $defaultMsg"

git add .
git commit -m "$defaultMsg"
git push
