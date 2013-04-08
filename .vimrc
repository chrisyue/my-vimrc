filetype off

set runtimepath+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'

" those 4 are all for snipmate-snippets
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'chrisyue/vim-snippets'

Bundle 'gregsexton/MatchTag'
Bundle 'othree/html5.vim'
Bundle 'ChrisYip/Better-CSS-Syntax-for-Vim'
Bundle 'mutewinter/nginx.vim'
Bundle 'StanAngeloff/php.vim'
Bundle 'majutsushi/tagbar'
Bundle 'Townk/vim-autoclose'
Bundle 'vim-scripts/XDebug-DBGp-client-for-PHP'
Bundle 'arnaud-lb/vim-php-namespace'
Bundle 'docteurklein/vim-symfony'
Bundle 'basilgor/vim-autotags'

" syntax
Bundle 'evidens/vim-twig'
Bundle 'pangloss/vim-javascript'

" github vim scripts mirrors
Bundle 'vim-scripts/matchit.zip'
Bundle 'vim-scripts/L9'
Bundle 'vim-scripts/FuzzyFinder'

set foldmarker={,}
set foldmethod=marker
set number 

filetype plugin indent on

colorscheme pablo

" for vim-php-namespace
inoremap <Leader>u <C-O>:call PhpInsertUse()<CR>
noremap <Leader>u :call PhpInsertUse()<CR>
inoremap <Leader>e <C-O>:call PhpExpandClass()<CR>
noremap <Leader>e :call PhpExpandClass()<CR>

autocmd BufRead,BufNewFile *.twig setfiletype html
autocmd BufRead,BufNewFile *.yml  set foldmethod=indent

" let g:debuggerPort = 10000
