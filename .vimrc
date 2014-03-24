filetype off

set runtimepath+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" code generate
Bundle 'SirVer/ultisnips'
Bundle 'chrisyue/vim-snippets'
" Bundle 'garbas/vim-snipmate'
" Bundle 'Valloric/YouCompleteMe'

"expanding html abbreviations, like zencode
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

" syntax check
"Bundle 'scrooloose/syntastic'

" themes
Bundle 'chriskempson/vim-tomorrow-theme'

" git
"Bundle 'tpope/vim-fugitive'

" other things
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-abolish'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'gregsexton/MatchTag'
Bundle 'majutsushi/tagbar'
" Bundle 'vim-scripts/XDebug-DBGp-client-for-PHP'
Bundle 'arnaud-lb/vim-php-namespace'
Bundle 'docteurklein/vim-symfony'
Bundle 'junegunn/vim-easy-align'
Bundle 'mutewinter/swap-parameters'

Bundle 'vim-scripts/matchit.zip'
Bundle 'vim-scripts/L9'
Bundle 'vim-scripts/FuzzyFinder'

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
set scrolloff=16
set scrolljump=4
set t_Co=256
" set foldmarker={,}
set foldmethod=indent
set foldlevel=1
set hlsearch

colorscheme Tomorrow-Night

" for vim-php-namespace
noremap <Leader>u :call PhpInsertUse()<CR>
noremap <Leader>e :call PhpExpandClass()<CR>

vnoremap <silent> <Enter> :EasyAlign<cr>

" W to sudo save
command! W %!sudo tee > /dev/null %

"autocmd BufWritePost *.php,*.twig,*.yml execute 'silent !php-cs-fixer fix % --level=all > /dev/null'
"autocmd BufWritePost *.php,*.twig,*.yml execute 'e'
"autocmd BufWritePost *.php,*.twig,*.yml execute 'syntax on'

let g:UltiSnipsDontReverseSearchPath=1

"let g:syntastic_php_checkers=['php', 'phpmd']

let g:PHP_vintage_case_default_indent=1

let g:NERDTreeWinSize=50

" let g:debuggerPort = 10000
