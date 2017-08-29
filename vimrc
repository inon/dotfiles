filetype indent on
set number
set backspace=indent,eol,start

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'altercation/vim-colors-solarized'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'valloric/youcompleteme'
Plug 'tpope/vim-rails'
Plug 'pangloss/vim-javascript'
Plug 'godlygeek/tabular'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-commentary'
Plug 'mxw/vim-jsx'
Plug 'isruslan/vim-es6'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'fatih/vim-go'
Plug 'slashmili/alchemist.vim'
Plug 'elixir-lang/vim-elixir'
Plug 'scrooloose/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/gv.vim'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/seoul256.vim'
Plug 'rking/ag.vim'
Plug 'prettier/vim-prettier', { 
      \ 'do': 'yarn install', 
      \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql'] }
call plug#end()

let g:seoul256_background = 233
" Color Scheme
syntax enable
" set background=dark
set ts=2 sw=2 et
set laststatus=2
set ruler
set cursorcolumn
set cursorline
set backup
set backup
set backupdir=/private/tmp
set dir=/private/tmp
set hlsearch
set ignorecase
" yank to clipboard
set clipboard=unnamed
colo seoul256
colorscheme seoul256

let g:indent_guide_start_level=2
let g:airline_powerline_fonts = 1
let g:airline_theme='luna'
let g:gitgutter_sign_column_always = 1
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
" let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
" let g:ctrlp_map = '<c-p>'
" let g:ctrlp_cmd = 'CtrlP'
noremap <C-P> :FZF<CR>
let g:fzf_layout = { 'down': '~20%' }
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'

"nerd tree
map <C-n> :NERDTreeToggle<CR>

" remove unwanted white space
autocmd BufWritePre *.py :%s/\s\+$//e

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
"
" " Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
