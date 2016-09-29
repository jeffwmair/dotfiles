#!/bin/bash
if [ -f ~/.vimrc ]; then
	cp ~/.vimrc ~/.vimrc.orig
fi
if [ -f ~/.bash_aliases ]; then
	cp ~/.bash_aliases ~/.bash_aliases.orig
fi

cp .vimrc ~/.vimrc
cp .bash_aliases ~/.bash_aliases
