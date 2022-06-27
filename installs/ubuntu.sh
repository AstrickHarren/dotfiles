# apt origins
apt update
apt install -y curl

# install neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage --appimage-extract
./squashfs-root/AppRun --version

# Optional: exposing nvim globally.
mv squashfs-root /
ln -s /squashfs-root/AppRun /usr/bin/nvim

# HACK: installing delta pager 0.13.0
STUCTURE=$(arch)
DELTA_VERSION='0.13.0'
DELTA=delta-$DELTA_VERSION-$STUCTURE-unknown-linux-gnu
DELTA_PKG=$DELTA.tar.gz
DELTA_URL=https://github.com/dandavison/delta/releases/download/$DELTA_VERSION/$DELTA_PKG
echo $DELTA_URL

curl -fLO $DELTA_URL
tar -xzf $DELTA_PKG
sudo ln -s `pwd`/$DELTA/delta /usr/local/bin

# aliases
echo 'alias g=git' >> ~/.bash_aliases
