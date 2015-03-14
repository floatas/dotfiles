set nocompatible " we're using Vim, not Vi

" ===============================================
" NeoBundle setup
" ===============================================
if has('vim_starting')
   set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'kien/ctrlp.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'mhinz/vim-startify'
NeoBundle 'KevinGoodsell/vim-csexact'
NeoBundleLazy 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}
NeoBundle 'marijnh/tern_for_vim'
NeoBundle 'Lokaltog/vim-easymotion'

call neobundle#end()
filetype plugin indent on
NeoBundleCheck
" ===============================================

filetype plugin on

inoremap jk <Esc>


let mapleader=","

map <C-l> :NERDTreeToggle<CR>
map <leader>r :NERDTreeFind<cr> "sync with current file

map <Leader> <Plug>(easymotion-prefix)

set guifont=Consolas:h10
set number
set tabstop=4

" syntax highlighting fix for terminal
syntax enable

set term=xterm
set t_Co=256
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"

" syntax highlighting
syntax on
color monokai





