cd "${0%/*}"
cur=$PWD
export LC_ALL=C

now=`TZ=Asia/Kolkata date "+%Y-%m-%d %H:%M:%S"`

git add .
git commit -m "Automatic commit on $now"
git push
