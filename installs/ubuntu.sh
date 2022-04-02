# apt origins
apt update

# install neovim
apt install -y software-properties-common
add-apt-repository -y ppa:neovim-ppa/stable
apt-get update
apt-get install -y neovim

# HACK: installing delta pager 0.12.1
DELTA='delta-0.12.1-aarch64-unknown-linux-gnu'
curl -fLO https://github.com/dandavison/delta/releases/download/0.12.1/delta-0.12.1-aarch64-unknown-linux-gnu.tar.gz
tar -xzf 'delta-0.12.1-aarch64-unknown-linux-gnu.tar.gz'
sudo ln -s `pwd`/$DELTA/delta /usr/local/bin

# aliases
echo 'alias g=git' >> ~/.bash_aliases
