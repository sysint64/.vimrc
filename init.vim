:set relativenumber

if &compatible
  set nocompatible
endif

" Add the dein installation directory into runtimepath
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'davidhalter/jedi-vim'
Plug 'git@github.com:Valloric/YouCompleteMe.git'

call plug#end()

filetype plugin indent on
syntax enable

inoremap <C-j> <ESC>
autocmd BufWritePre * :%s/\s\+$//e

set nowrap
set colorcolumn=80
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

let g:python2_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

colorscheme gruvbox

