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
Bundle 'vim-scripts/matrix.vim--Yang'
Bundle 'vim-scripts/XDebug-DBGp-client-for-PHP'

" github vim scripts mirrors
Bundle 'vim-scripts/matchit.zip'

filetype plugin indent on

colorscheme pablo

autocmd BufRead,BufNewFile *.twig setfiletype html

" let g:debuggerPort = 10000
