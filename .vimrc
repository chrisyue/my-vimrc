filetype off

set runtimepath+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" code generate
Bundle 'SirVer/ultisnips'
Bundle 'chrisyue/vim-snippets'

" expanding html abbreviations, like zencode
Bundle 'mattn/emmet-vim' 

" use <C-O> to complete method
Bundle 'shawncplus/phpcomplete.vim'

" syntax
Bundle 'othree/html5.vim'
Bundle 'mutewinter/nginx.vim'
Bundle 'StanAngeloff/php.vim'
Bundle 'evidens/vim-twig'
Bundle 'groenewege/vim-less'
Bundle 'hail2u/vim-css3-syntax'

" git
Bundle 'tpope/vim-fugitive'

" misc
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-abolish'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'gregsexton/MatchTag'
Bundle 'majutsushi/tagbar'
Bundle 'arnaud-lb/vim-php-namespace'
Bundle 'docteurklein/vim-symfony'
Bundle 'mutewinter/swap-parameters'

Bundle 'vim-scripts/matchit.zip'

" status bar
Bundle 'bling/vim-airline'

filetype plugin indent on

" common configuration
syntax on
set backspace=indent,eol,start
set number
set cindent
set tabstop=5
set softtabstop=4
set shiftwidth=4
set expandtab
set ignorecase
set hidden
set incsearch
set wildmode=list:full
set wildignorecase
set completeopt=menuone,longest
set noswapfile
set t_Co=256
set foldmethod=indent
set foldlevel=1
set hlsearch

colorscheme morning

" for vim-php-namespace
noremap <Leader>u :call PhpInsertUse()<CR>
noremap <Leader>e :call PhpExpandClass()<CR>

" W to sudo save
command! W %!sudo tee > /dev/null %

let g:UltiSnipsDontReverseSearchPath=1

let g:PHP_vintage_case_default_indent=1

let g:NERDTreeWinSize=50
