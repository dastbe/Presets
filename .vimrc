" Use Pathogen
call pathogen#infect()
syntax on
filetype plugin indent on
filetype plugin on

" Default Color Scheme
colorscheme molokai

" vi compatability/security
set nocompatible
set modelines=0

" Tabs
set tabstop=3
set shiftwidth=3
set softtabstop=3
set expandtab

" Sane-itization
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile

" Leader key
let mapleader = ","

" Search
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

" Line length handling
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

" Invisibles
set list
set listchars=tab:▸\ ,eol:¬

" Unmap arrows in insert/normal mode
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" Lose focus -> Save
au FocusLost * :wa

" Strip trailing whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" Fold tag
nnoremap <leader>ft Vatzf

" Quickly open .vimrc
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

" New escape 
inoremap jj <ESC>

" Quick split window
nnoremap <leader>w <C-w>v<C-w>l

" Moving around splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" New filetype for Pro*C
au BufRead,BufNewFile *.pc set filetype=esqlc
nnoremap ; :