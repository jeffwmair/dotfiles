#!/bin/bash
if [ -f ~/.vimrc ]; then
	cp ~/.vimrc ~/.vimrc.orig
fi
if [ -f ~/.bash_aliases ]; then
	cp ~/.bash_aliases ~/.bash_aliases.orig
fi

cp .vimrc ~/.vimrc
cp .bash_aliases ~/.bash_aliases

echo "installing vundle"
sudo apt-get update -y
sudo apt-get install vim-nox -y
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
