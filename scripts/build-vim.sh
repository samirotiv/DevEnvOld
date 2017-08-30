cd "${0%/*}"
cur=$PWD
export LC_ALL=C

cd ../packages/vim
sudo apt-get install libncurses5-dev python-dev python3-dev ruby-dev lua5.1 liblua5.1-dev libperl-dev git
./configure --with-features=huge --enable-multibyte --enable-rubyinterp=yes --enable-python3interp=yes --with-python3-config-dir=/usr/lib/python3.5/config --enable-perlinterp=yes --enable-luainterp=yes --enable-cscope --prefix=/usr
