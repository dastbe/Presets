set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'flazz/vim-colorschemes'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdtree'
Bundle 'mbbill/undotree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-fugitive'
Bundle 'majutsushi/tagbar'
Bundle 'derekwyatt/vim-scala'
Bundle 'travitch/hasksyn'
Bundle 'Tabular'
Bundle 'go.vim'
"Bundle 'vim-jp/cpp-vim'

syntax on
filetype plugin indent on

colorscheme molokai

" Tabs
set expandtab

" No swap
set noswapfile

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

if version >= 703
   set relativenumber
   set undofile
   autocmd InsertEnter * :set number
   autocmd InsertLeave * :set relativenumber
endif

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

" Line length handling
set wrap
set textwidth=79
set formatoptions=qrn1

set colorcolumn=80

" Tagbar settings
let g:tagbar_autoclose = 0
let g:tagbar_autofocus = 1

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

" set foldcolumn=3
set foldmethod=syntax
set foldlevelstart=8
nnoremap <space> za
au FocusLost * :wa

" Strip trailing whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" Fold tag
nnoremap <leader>ft Vatzf

" NERDTree
nnoremap <silent> <leader>v :NERDTreeToggle<CR>
let g:NERDTreeQuitOnOpen=1

" Quickly open .vimrc
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

" New escape 
inoremap jj <ESC>

" Quick split window
nnoremap <leader>w <C-w>v<C-w>l

" semicolon -> colon
nnoremap ; :
vnoremap ; :

" tagbar command
nnoremap <silent> <leader>t :TagbarOpenAutoClose<CR>

" Moving around splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

au BufRead,BufNewFile *.* set tabstop=3
au BufRead,BufNewFile *.* set shiftwidth=3
au BufRead,BufNewFile *.* set softtabstop=3

" New filetype for Pro*C
au BufRead,BufNewFile *.pc set filetype=esqlc

au BufRead,BufNewFile *.ypp set filetype=yacc

au BufRead,BufNewFile *.hs set tabstop=4
au BufRead,BufNewFile *.hs set shiftwidth=4
au BufRead,BufNewFile *.hs set softtabstop=4

