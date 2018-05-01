set nocompatible

scriptencoding utf-8
set encoding=utf-8

set history=256
set timeoutlen=500
set clipboard+=unnamed
set shiftround

set modeline
set modelines=5

set autowrite
set autoread

set nobackup
set nowritebackup
set noswapfile

set hidden
set hlsearch
set ignorecase
set smartcase
set tagcase=match
set incsearch

let g:is_posix=1

set nowrap
set textwidth=0

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab

set backspace+=indent,eol,start

set autoindent
set cindent
set indentkeys-=0#
set cinkeys-=0#
set cinoptions=:s,ps,ts,cs
set cinwords=if,else,while,do,for,switch,case

syntax on

set mousehide

set number
set showmatch
set matchtime=2

set wildmode=longest,list
set completeopt=menuone,longest

set laststatus=2
set shortmess=atI
set showcmd

set foldenable
set foldmethod=indent
set foldlevel=1

set virtualedit=block

set splitbelow
set splitright

set cursorline
" set cursorcolumn

set list
set listchars=tab:\ ·,eol:¬,trail:·,extends:»,precedes:«

set wildmenu
set wildignorecase

filetype off

call plug#begin('~/.vim/plugged')

" Colorscheme
Plug 'gmarik/ingretu'

" code generate
Plug 'SirVer/ultisnips'
Plug 'chrisyue/my-snips'

" expanding html abbreviations, like zencode
Plug 'mattn/emmet-vim' 

" use omni to complete method
Plug 'shawncplus/phpcomplete.vim'
let g:phpcomplete_parse_docblock_comments=1

" syntax
Plug 'othree/html5.vim'
Plug 'vim-scripts/JavaScript-Indent'
Plug 'mutewinter/nginx.vim'
Plug 'StanAngeloff/php.vim'
Plug 'groenewege/vim-less'
Plug 'hail2u/vim-css3-syntax'
Plug 'evidens/vim-twig'

let mapleader=','

" git
Plug 'tpope/vim-git'
Plug 'tpope/vim-fugitive'

" misc
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-abolish'

Plug 'scrooloose/nerdtree'
let g:NERDTreeWinSize=60
let g:NERDTreeAutoDeleteBuffer=1

Plug 'gregsexton/MatchTag'
Plug 'majutsushi/tagbar'
Plug 'machakann/vim-swap'
Plug 'Townk/vim-autoclose'
Plug '/usr/local/opt/fzf'

Plug 'arnaud-lb/vim-php-namespace'

" comment
Plug 'tomtom/tlib_vim'
Plug 'tomtom/tcomment_vim'
nnoremap // :TComment<CR>
vnoremap // :TComment<CR>

" status bar
Plug 'bling/vim-airline'
" let g:airline#extensions#tabline#enabled=1 " show buffer bar
let g:airline_powerline_fonts=1

" W to sudo save
Plug 'gmarik/sudo-gui.vim'

" undo
Plug 'sjl/gundo.vim'

" debug
Plug 'joonty/vdebug'

" editor config
Plug 'editorconfig/editorconfig-vim'

call plug#end()

colorscheme ingretu
autocmd VimEnter * NERDTree

filetype plugin indent on

" tags
set tags+=tags.vendor
autocmd BufWritePost *.php silent execute "![ -d src ] && ctags src"

" editor config
Plug 'editorconfig/editorconfig-vim'
