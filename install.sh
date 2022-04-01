# locate the folder of this repo
FOLDER=$(cd `dirname $0` && pwd)

case $1 in 
  alpine)
    ./installs/alpine.sh
    ;;
  *)
    echo "unknown img name, skipping img prefered installs"
esac

# link files
./link.sh $FOLDER
