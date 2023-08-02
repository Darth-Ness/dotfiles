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
Plugin 'cheat/vim-so'
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

let g:so_browser = "librewolf"
command -nargs=1 So call so#search(<q-args>)
command SoView call so#view()
nnoremap <C-N> :call so#next()<CR>
nnoremap <C-P> :call so#prev()<CR>
