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
Bundle 'chrisyue/snipmate-snippets'
Bundle 'garbas/vim-snipmate'

Bundle 'gregsexton/MatchTag'
Bundle 'othree/html5.vim'
Bundle 'ChrisYip/Better-CSS-Syntax-for-Vim'
Bundle 'mutewinter/nginx.vim'
Bundle 'StanAngeloff/php.vim'
Bundle 'majutsushi/tagbar'
Bundle 'Townk/vim-autoclose'
Bundle 'vim-scripts/XDebug-DBGp-client-for-PHP'

" syntax
Bundle 'evidens/vim-twig'
Bundle 'pangloss/vim-javascript'

" github vim scripts mirrors
Bundle 'vim-scripts/matchit.zip'
Bundle 'vim-scripts/L9'
Bundle 'vim-scripts/FuzzyFinder'

filetype plugin indent on

colorscheme pablo

set number 

autocmd BufRead,BufNewFile *.twig setfiletype html

" let g:debuggerPort = 10000
