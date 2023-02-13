set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  Plugin 'VundleVim/Vundle.vim'
  Plugin 'ericbn/vim-solarized'
  Plugin 'scrooloose/syntastic'
  Plugin 'fatih/vim-go'
  Plugin 'tpope/vim-fugitive'
  Plugin 'tpope/vim-surround'
  Plugin 'tpope/vim-commentary'
  Plugin 'rust-lang/rust.vim'
  Plugin 'ollykel/v-vim'
  Plugin 'lervag/vimtex'
call vundle#end()
filetype plugin indent on

syntax off
set background=light
colorscheme solarized

set number
set tabstop=2
set shiftwidth=2
set expandtab "to spaces
set textwidth=79
set encoding=utf-8
set hidden
set showmatch
set autochdir
set autowrite
set shortmess+=I
set clipboard=unnamedplus

set nobackup
set nohlsearch
set nojoinspaces
set noswapfile
set nowritebackup
set noerrorbells
set visualbell t_vb=

set mouse=a
" set ttymouse=xterm2

set list listchars=tab:‣\ ,trail:•

set statusline+=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]
set statusline+=%h%m%r%y%=%c,%l/%L
set laststatus=2

au Filetype text setlocal spl=en_gb,de_ch,fr,es nolist fo+=awq tw=72
au Filetype mail setlocal spl=en_gb,de_ch,fr,es com=n:> fo+=awq tw=72
au Filetype go setlocal nolist

hi SpellBad cterm=underline

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0

let g:tex_flavor='latex' 
let g:vimtex_view_method = 'skim'
let g:vimtex_view_skim_sync = 1
let g:vimtex_view_skim_activate = 1
