#!/bin/bash
if [ -f ~/.vimrc ]; then
	cp ~/.vimrc ~/.vimrc.orig
fi
if [ -f ~/.bash_aliases ]; then
	cp ~/.bash_aliases ~/.bash_aliases.orig
fi

cp .vimrc ~/.vimrc
cp .bash_aliases ~/.bash_aliases

echo "installing vundle & command-t for vim"
sudo apt-get update -y
sudo apt-get install ruby -y
sudo apt-get install ruby-dev -y
sudo apt-get install cmake -y
sudo apt-get install vim-nox -y
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
cd ~/.vim/bundle/command-t/ruby/command-t/
ruby extconf.rb
make
cd
