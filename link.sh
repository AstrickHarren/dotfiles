FOLDER=$1
HOME=`dirname $FOLDER`

for f in `cd $FOLDER/links && find  . -type f`
do
		echo Linking $f to $HOME/$f

    if [ ! -d `dirname $HOME/$f` ]; then
      mkdir -p `dirname $HOME/$f`
    fi
      
		ln -s $HOME/`basename $FOLDER`/links/$f `dirname $FOLDER`/$f
done
