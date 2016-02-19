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
" set ignorecase " because it effects definition jump
set smartcase
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
set completeopt+=preview

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

set cursorline
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

" FuzzyFinder
Plugin 'L9'
Plugin 'FuzzyFinder'
let g:fuf_modesDisable = []
nnoremap <leader>h :FufHelp<CR>
nnoremap <leader>1 :FufTagWithCursorWord<CR>
nnoremap <leader>11 :FufTag<CR>
nnoremap <leader>2 :FufFileWithCurrentBufferDir<CR>
nnoremap <leader>22 :FufFile<CR>
nnoremap <leader>3 :FufBuffer<CR>
nnoremap <leader>4 :FufDirWithCurrentBufferDir<CR>
nnoremap <leader>44 :FufDir<CR>
nnoremap <leader>5 :FufBufferTag<CR>
nnoremap <leader>55 :FufBufferTagAll<CR>
nnoremap <leader>6 :FufMruFile<CR>
nnoremap <leader>7 :FufLine<CR>
nnoremap <leader>8 :FufChangeList<CR>
nnoremap <leader>9 :FufTaggedFile<CR>
nnoremap <leader>p :FufDir ~/src/<CR>
nnoremap <leader>ge :FufDir ~/.rvm/gems/<CR>
nnoremap <leader>gn :vnew \| :FufFile ~/src/notes/<CR>

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
Plugin 'vim-scripts/lastpos.vim'
Plugin 'Townk/vim-autoclose'
Plugin 'kien/ctrlp.vim'

" comment
Plugin 'tomtom/tlib_vim'
Plugin 'tomtom/tcomment_vim'
nnoremap // :TComment<CR>
vnoremap // :TComment<CR>

Plugin 'vim-scripts/matchit.zip'
Plugin 'tpope/vim-unimpaired'

" status bar
Plugin 'bling/vim-airline'
let g:airline_left_sep=''
let g:airline_right_sep=''

" W to sudo save
Bundle 'gmarik/sudo-gui.vim'

" undo
Plugin 'sjl/gundo.vim'

filetype plugin indent on

" for vim-php-namespace
noremap <Leader>u :call PhpInsertUse()<CR>
noremap <Leader>e :call PhpExpandClass()<CR>

let g:UltiSnipsDontReverseSearchPath=1

let g:PHP_vintage_case_default_indent=1

let g:NERDTreeWinSize=60
let g:NERDTreeAutoDeleteBuffer=1
