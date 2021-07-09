set t_Co=256
if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  "   " render properly when inside 256-color tmux and GNU screen.
  "     " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif

" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

" Turn on syntax highlighting
syntax enable

" For plugins to load correctly
filetype plugin indent on

" Security
set modelines=0

" Show line numbers
set rnu
set nu rnu

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=120
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

call plug#begin('~/.vim/plugged')

" Temas
" Plug 'morhetz/gruvbox'
 Plug 'dracula/vim', { 'as': 'dracula' } 
" Plug 'bluz71/vim-nightfly-guicolors'

" IDE
Plug 'tpope/vim-commentary' " Comment code
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'noahfrederick/vim-laravel'  " Laravel syntax
Plug 'tpope/vim-projectionist'    
Plug 'noahfrederick/vim-composer'
Plug 'easymotion/vim-easymotion'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'

call plug#end()

" Themes
colorscheme dracula

" Airline
let g:airline_theme="bubblegum"

" basic config 
let mapleader=" "

noremap <leader>fs :Files<cr>
noremap <leader>nt :NERDTreeToggle<cr>
noremap <leader>w :w<cr>
noremap <leader>q :q<cr>
nnoremap <leader>c :Commentary<CR>
vnoremap <leader>c :Commentary<CR>
