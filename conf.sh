#!/bin/bash

# git clone ssh://git@116.196.65.235:8822/csh/config.git
tar -xzvf conf.tar.gz

# vim config
cp -r vimrc ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# zsh config
apt install zsh
chsh -s $(which zsh)
cp -r oh-my-zsh ~/.oh-my-zsh
cp ~/.zshrc ~/.zshrc.orig
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

# tmux config
apt install tmux
cp -r tmux-config ~/.tmux
ln -s ~/.tmux/.tmux.conf ~/.tmux.conf

# docker install
sh docker.sh

# nextcloud install
sh nextcloud.sh

# delete
cd ~
rm -rf config

