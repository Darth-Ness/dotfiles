set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vimwiki/vimwiki'
Plugin 'arcticicestudio/nord-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'preservim/nerdtree'
Plugin 'voldikss/vim-floaterm'
call vundle#end()            " required
filetype plugin indent on    " required

set number
syntax on
set autoindent
set cursorline
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
colorscheme nord

map <F4> :NERDTreeToggle<CR>
map <F5> :FloatermToggle<CR>

let g:vimwiki_list = [{
  \ 'path': '/home/pi/vimwiki',
  \ 'template_path': '/home/pi/vimwiki/templates',
  \ 'template_default': 'default',
  \ 'template_ext': '.html'}]

