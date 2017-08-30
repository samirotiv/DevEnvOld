cd "${0%/*}"
cur=$PWD
export LC_ALL=C

sudo pip install -r ycm-req.txt --upgrade
bash ../home/.vim/bundle/install.sh
