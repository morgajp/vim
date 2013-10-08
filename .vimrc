set nocompatible

source $VIMRUNTIME/vimrc_example.vim

filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'jwhitley/vim-matchit'
Bundle 'SirVer/ultisnips'
Bundle 'wincent/Command-T'

filetype plugin indent on

set cindent
set tabstop=2
set sw=2
set expandtab
set ic
syntax on
set mouse-=a
set guioptions-=m
set guioptions-=T
set guioptions-=r

set nu
colo evening

set autochdir
set smartcase


nnoremap <Space> :
nnoremap D "_d
vnoremap D "_d
nnoremap e $
vnoremap e $
"nnoremap & :grep <C-R><C-W> *<CR>
nnoremap & :execute "vimgrep /" . expand("<cword>") . "/j **/*.cpp **/*.c **/*.h **/*.py **/*.html" <Bar> cw<CR><CR>

nnoremap s <c-w>
inoremap jk <c-[>

iab _log #if DEBUG_ON<CR><TAB>logMsg(<CR>#endif<UP><END>

"set columns=85
"set lines=50

set is
set hls
