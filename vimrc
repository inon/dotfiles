" ========================================================================
" Vundle stuff
" ========================================================================
set nocompatible " Required by vundle
filetype off     " Required by vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'


" My bundles
Plugin 'ervandew/supertab'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-cucumber'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'vim-ruby/vim-ruby'
Plugin 'wincent/Command-T'
Plugin 'flazz/vim-colorschemes'
Plugin 'mileszs/ack.vim'
Plugin 'bling/vim-airline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Use the colorscheme from above
colorscheme grb256

" ========================================================================
" Ruby stuff
" ========================================================================
syntax on                 " Enable syntax highlighting
filetype plugin indent on " Enable filetype-specific indenting and plugins

augroup myfiletypes
  " Clear old autocmds in group
  autocmd!
  " autoindent with two spaces, always expand tabs
  autocmd FileType ruby,eruby,yaml setlocal ai sw=2 sts=2 et
  autocmd FileType ruby,eruby,yaml setlocal path+=lib
  autocmd FileType ruby,eruby,yaml setlocal colorcolumn=80
  " Make ?s part of words
  autocmd FileType ruby,eruby,yaml setlocal iskeyword+=?

augroup END
" ================
let mapleader = ","

" Normal mode mappings
map <C-s> :w<CR>
map <leader>ev :vs $MYVIMRC<CR>
map <leader>gs :Gstatus<CR><C-W>15+
map <leader>rs :!clear;rspec --color spec<CR>
map <leader>a :Ack
map <leader>d :bd<CR>
map <leader>w :w<CR>
map <leader><cr> :noh<CR>
map <leader>l :ls<CR>:b
nnoremap <leader>t :CommandT<CR>
nnoremap <leader>b :CommandTBuffer<CR>
map <D-r> :CommandT<CR>
map <D-e> :CommandTBuffer<CR>
noremap <F4> :set hlsearch! hlsearch?<CR>

set backspace=indent,eol,start " allow backspacing over everything in insert mode
set history=500		" keep 500 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set autoindent
set showmatch
set nowrap
set autoread
set wmh=0
set viminfo+=!
set et
set sw=2
set smarttab
set noincsearch
set ignorecase smartcase
set laststatus=2  " Always show status line.
set relativenumber
set gdefault " assume the /g flag on :s substitutions to replace all matches in a line
set autoindent " always set autoindenting on
set guioptions-=r  "scrollbar
set incsearch
set hlsearch
set t_Co=8
set noerrorbells 
set novisualbell
set t_vb=
syntax on
autocmd! GUIEnter * set vb t_vb=

" PowerLine and AirLine stuff
set encoding=utf-8
let g:airline_powerline_fonts = 1
set guifont=Monaco\ for\ Powerline:h10
set bg=dark

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

  " unicode symbols
  let g:airline_left_sep = '»'
  let g:airline_left_sep = '▶'
  let g:airline_right_sep = '«'
  let g:airline_right_sep = '◀'
  let g:airline_symbols.linenr = '␊'
  let g:airline_symbols.linenr = '␤'
  let g:airline_symbols.linenr = '¶'
  let g:airline_symbols.branch = '⎇'
  let g:airline_symbols.paste = 'ρ'
  let g:airline_symbols.paste = 'Þ'
  let g:airline_symbols.paste = '∥'
  let g:airline_symbols.whitespace = 'Ξ'

" Fuzzy finder: ignore stuff that can't be opened, and generated files
let g:fuzzy_ignore = "*.png;*.PNG;*.JPG;*.jpg;*.GIF;*.gif;vendor/**;coverage/**;tmp/**;rdoc/**"

set nofoldenable " Say no to code folding...

" (Hopefully) removes the delay when hitting esc in insert mode
set noesckeys
set ttimeout
set ttimeoutlen=1

" Turn on spell-checking in markdown and text.
" au BufRead,BufNewFile *.md,*.txt setlocal spell

" Don't wait so long for the next keypress (particularly in ambigious Leader
" situations.
set timeoutlen=500

" Don't go past 100 chars on levelup:
autocmd BufNewFile,BufRead /Users/ben/code/levelup/*.rb set colorcolumn=100

" Remove trailing whitespace on save for ruby files.
au BufWritePre *.rb :%s/\s\+$//e

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
