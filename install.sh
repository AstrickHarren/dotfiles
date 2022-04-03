# locate the folder of this repo
FOLDER=$(cd `dirname $0` && pwd)

case $1 in 
  alpine)
    $FOLDER/installs/alpine.sh
    ;;
  ubuntu)
    $FOLDER/installs/ubuntu.sh
    ;;
  *)
    echo "unknown img name, skipping img prefered installs"
esac

# link files
$FOLDER/link.sh $FOLDER


# installing astro vim
rm -r ~/.config/nvim
git clone https://github.com/kabinspace/AstroVim ~/.config/nvim
