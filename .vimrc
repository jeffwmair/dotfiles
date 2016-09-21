set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'git://git.wincent.com/command-t.git'
call vundle#end()
filetype plugin indent on
set number
syntax on
set tabstop=4
set shiftwidth=4
set omnifunc=syntaxcomplete#Complete
" http://vim.wikia.com/wiki/Auto_closing_an_HTML_tag
:iabbrev </ </<C-X><C-O>

" open another tabe/file more easily
:nnoremap tt :tabe<Space>

" switch back and forth among tabs more easily
:nnoremap H gT
:nnoremap L gt

" go from insert to normal mode with quick shortcut
:inoremap jk <esc>
