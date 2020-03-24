#!/bin/bash

mkdir -p ~/.vim/pack/vendor/start
mv nerdtree ~/.vim/pack/vendor/start/
vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q

cat vimrc_add.txt >> ~/.vimrc
cat zshrc_add.txt >> ~/.zshrc
