set encoding=utf8
set autowriteall
set nocp
set hidden
set rnu
set splitbelow splitright
set showcmd
"set nohlsearch
set tabstop=4 shiftwidth=4 expandtab
set listchars=space:ᵕ,eol:¬,tab:»-
set wildmenu
set path=.,,**
set timeoutlen=2000
set cursorline
set mouse=nvi
set incsearch
set scrolloff=3
syntax on
colorscheme slate
"map <Space> <leader>
let mapleader =' '
let maplocalleader = "\<cr>"
nnoremap <leader>h Qset list!<cr>visual<cr>
nnoremap <leader>j m`O<esc>``
nnoremap <leader>k m`o<esc>``
nnoremap <leader>q :q!<return>
"nnoremap <leader>q :qa!<Return>
nnoremap <leader>r :set rnu!<return>
nnoremap <leader>n :set nu!<return>
nnoremap <leader>b :bn<return>
nnoremap <leader>ev :tabedit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
"inoremap jj <ESC>

no <left> <nop>
no <right> <nop>
no <up> <nop>
no <down> <nop>
ino <left> <nop>
ino <right> <nop>
ino <up> <nop>
ino <down> <nop>

call plug#begin('~/.vim/plugged')

"    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'vifm/vifm.vim'

call plug#end()
