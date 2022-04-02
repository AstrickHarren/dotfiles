# updating apk
echo 'https://dl-cdn.alpinelinux.org/alpine/edge/community/' >> /etc/apk/repositories

# update apk
apk update

# installing nvim latest
apk add neovim fzf less delta ripgrep lazygit
