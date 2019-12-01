#! /bin/sh

# git clone ssh://git@116.196.65.235:8822/csh/config.git
cd config
tar -xzvf conf/conf.tar.gz

# vim config
cp -r conf/vimrc ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# zsh config
apt install zsh
chsh -s $(which zsh)
cp -r config/conf/oh-my-zsh ~/.oh-my-zsh
cp ~/.zshrc ~/.zshrc.orig
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

# tmux config
apt install tmux
cp -r config/conf/tmux-config ~/.tmux
ln -s ~/.tmux/.tmux.conf ~/.tmux.conf

cd ~
rm -rf config
