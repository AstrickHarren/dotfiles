#!/bin/sh
# from https://github.com/chrmarti/dotfiles/blob/master/install.sh

FOLDER=$(cd `dirname $0` && pwd)

for f in `ls -a $FOLDER/links`
do
		echo Linking $f
		ln -s `basename $FOLDER`/links/$f `dirname $FOLDER`/$f
done

echo REMOTE_CONTAINERS: $REMOTE_CONTAINERS