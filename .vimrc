set nocompatible

source $VIMRUNTIME/vimrc_example.vim

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
":PluginInstall

Bundle 'gmarik/vundle'

Bundle 'jwhitley/vim-matchit'
Bundle 'SirVer/ultisnips'
Bundle 'wincent/Command-T'

call vundle#end()

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

let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
set pastetoggle=<F2>

set colorcolumn=80
