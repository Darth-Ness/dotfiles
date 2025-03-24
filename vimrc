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
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
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
set clipboard+=unnamedplus
colorscheme nord

map <F4> :NERDTreeToggle<CR>
map <F5> :FloatermToggle<CR>

let g:so_browser = "librewolf"
command -nargs=1 So call so#search(<q-args>)
command SoView call so#view()
nnoremap <C-N> :call so#next()<CR>
nnoremap <C-P> :call so#prev()<CR>

highlight Normal guibg=none
highlight NonText guibg=none
highlight Normal ctermbg=none
highlight NonText ctermbg=none

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

