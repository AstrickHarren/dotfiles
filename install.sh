#!/bin/sh
# from https://github.com/chrmarti/dotfiles/blob/master/install.sh

FOLDER=$(cd `dirname $0` && pwd)

for f in `ls -a $FOLDER/links`
do
		echo Linking $f
		ln -s `basename $FOLDER`/links/$f `dirname $FOLDER`/$f
done

git config --global user.name Astrick

# HACK: installing delta pager 0.12.1
DELTA='delta-0.12.1-aarch64-unknown-linux-gnu'
curl -fLO https://github.com/dandavison/delta/releases/download/0.12.1/delta-0.12.1-aarch64-unknown-linux-gnu.tar.gz
tar -xzf 'delta-0.12.1-aarch64-unknown-linux-gnu.tar.gz'
sudo ln -s `pwd`/$DELTA/delta /usr/local/bin

# aliases
echo 'alias g=git' >> ~/.bash_aliases

echo REMOTE_CONTAINERS: $REMOTE_CONTAINERS