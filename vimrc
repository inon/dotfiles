set nocompatible " Required by vundle
filetype off     " Required by vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
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
Plugin 'tpope/vim-haml'
Plugin 'vim-ruby/vim-ruby'
Plugin 'wincent/Command-T'
Plugin 'flazz/vim-colorschemes'
Plugin 'mileszs/ack.vim'
Plugin 'bling/vim-airline'
Plugin 'The-NERD-Commenter'
Plugin 'groenewege/vim-less'
Plugin 'scrooloose/nerdtree'
Plugin 'evidens/vim-twig'
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'Raimondi/delimitMate'
Plugin 'Valloric/YouCompleteMe'
Plugin 'kien/ctrlp.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'scrooloose/syntastic'
Plugin 'Yggdroot/indentLine'
call vundle#end()
filetype plugin indent on

set background=dark
let base16colorspace=256  " Access colors present in 256 colorspace
" Use the colorscheme from above
colorscheme Tomorrow-Night-Eighties
"GVim
let g:indentLine_color_gui = '#A4E57E'
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)
let g:indentLine_char = '┆'

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


"augroup myvimrc
    "au!
    "au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
"augroup END

" ================
let mapleader = ","

" This does what it says on the tin. It will check your file on open too, not just on save.
" You might not want this, so just leave it out if you don't.
let g:syntastic_check_on_open=1

" Normal mode mappings
map <C-s> :w<CR>
"map <leader>ev :vs $MYVIMRC<CR>
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
nmap <leader>h :nohlsearch<cr>

" Tabs mapping
map <D-S-]> gt
map <D-S-[> gT
map <D-1> 1gt
map <D-2> 2gt
map <D-3> 3gt
map <D-4> 4gt
map <D-5> 5gt
map <D-6> 6gt
map <D-7> 7gt
map <D-8> 8gt
map <D-9> 9gt
map <D-0> :tablast<CR>
imap <C-c> <CR><Esc>O

set conceallevel=0 "json double quotes issue"
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set history=500 " keep 500 lines of command line history
set ruler "show the cursor position all the time
set showcmd "display incomplete commands
set autoindent
set showmatch
set nowrap
set autoread
set wmh=0
set viminfo+=!
set et
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set noincsearch
set ignorecase
set smartcase
set laststatus=2  " Always show status line.
set relativenumber
set gdefault " assume the /g flag on :s substitutions to replace all matches in a line
set guioptions-=r  "scrollbar
set guioptions-=L  "scrolbar
set wrap
"set textwidth=50
"set wrapmargin=0
set incsearch
set hlsearch
set t_Co=8
set noerrorbells 
set novisualbell
set t_vb=
set lines=999 columns=9999
set directory=/tmp

let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview

syntax on
autocmd! GUIEnter * set vb t_vb=

" NerdTree stuff
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

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

" MacVim GUI mode
if has("gui_macvim")
  set guifont=Monaco:h12
  set guioptions=aAce
  set fuoptions=maxvert,maxhorz
  set noballooneval

  " resize current buffer by +/- 5
  nnoremap <M-Right> :vertical resize +5<CR>
  nnoremap <M-Left>  :vertical resize -5<CR>
  nnoremap <M-Up>    :resize -5<CR>
  nnoremap <M-Down>  :resize +5<CR>

  " Command+Option+Right for next
  map <D-M-Right> :tabn<CR>
  " Command+Option+Left for previous
  map <D-M-Left> :tabp<CR>

  " Automatically resize splits
  " when resizing MacVim window
  autocmd VimResized * wincmd =
endif
