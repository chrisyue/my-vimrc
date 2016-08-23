set nocompatible

scriptencoding utf-8
set encoding=utf-8

set history=256
set timeoutlen=500
"set clipboard+=unnamed " this is for windows
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

" set mouse=a
set mousehide

set number
set showmatch
set matchtime=2

set wildmode=longest,list
set completeopt=menuone,longest

set novisualbell
set noerrorbells
set vb t_vb=

set laststatus=2
set shortmess=atI
set showcmd

set foldenable
set foldmethod=indent
set foldlevel=1

set virtualedit=block

set splitbelow
set splitright

"they'll slow vim down
" set cursorline
" set cursorcolumn

set list
set listchars=tab:\ ·,eol:¬,trail:·,extends:»,precedes:«

if has('gui_running')
    set guioptions=cMg
    set guifont=DejaVu\ Sans\ Mono\ 8
endif

set wildmenu
set wildignorecase
set t_Co=256

filetype off

set runtimepath+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'

" Colorscheme
Plugin 'gmarik/ingretu'
colorscheme ingretu

" code generate
Plugin 'SirVer/ultisnips'
Plugin 'chrisyue/my-snips'

" expanding html abbreviations, like zencode
Plugin 'mattn/emmet-vim' 

" use <C-O> to complete method
Plugin 'shawncplus/phpcomplete.vim'

" syntax
Plugin 'othree/html5.vim'
Plugin 'mutewinter/nginx.vim'
Plugin 'StanAngeloff/php.vim'
Plugin 'groenewege/vim-less'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'evidens/vim-twig'

let mapleader=','

" git
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-fugitive'

" misc
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-abolish'
Plugin 'scrooloose/nerdtree'
Plugin 'gregsexton/MatchTag'
Plugin 'majutsushi/tagbar'
Plugin 'arnaud-lb/vim-php-namespace'
Plugin 'mutewinter/swap-parameters'
Plugin 'Townk/vim-autoclose'
Plugin 'kien/ctrlp.vim'

" comment
Plugin 'tomtom/tlib_vim'
Plugin 'tomtom/tcomment_vim'
nnoremap // :TComment<CR>
vnoremap // :TComment<CR>

Plugin 'vim-scripts/matchit.zip'

" status bar
Plugin 'bling/vim-airline'
" let g:airline#extensions#tabline#enabled=1 " show buffer bar
let g:airline_powerline_fonts=1

" W to sudo save
Bundle 'gmarik/sudo-gui.vim'

" undo
Plugin 'sjl/gundo.vim'

" debug
Plugin 'joonty/vdebug'

filetype plugin indent on

" for vim-php-namespace
noremap <Leader>u :call PhpInsertUse()<CR>
noremap <Leader>e :call PhpExpandClass()<CR>

let g:UltiSnipsDontReverseSearchPath=1

let g:PHP_vintage_case_default_indent=1

let g:NERDTreeWinSize=60
let g:NERDTreeAutoDeleteBuffer=1
