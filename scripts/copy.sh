cd "${0%/*}"
cur=$PWD
export LC_ALL=C
cd ..

cp -R home/. ~/
cat ~/dev_exports >> ~/.bashrc
