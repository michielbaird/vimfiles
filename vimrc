set nocompatible

filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

" From http://items.sjbach.com/319/configuring-vim-right
set hidden

" Preferred keys
nnoremap ' `
nnoremap ` '
nmap ; :
let mapleader = ","

" Remember more
set history=1000

" Provide better options on tab of commands
set wildmenu
set wildmode=list:longest

" Ignore case for search ...
set ignorecase
" ... unless a case is used in the search
set smartcase

" show whitespace characters
set listchars=tab:>-,trail:·,eol:$
" toggle showing whitespace characters
nmap <silent> <leader>s :set nolist!<CR>

" Set terminal title if not using gvim
set title

" Maintain 5 lines of context around current line
set scrolloff=5

" Use a local temporary directory
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" Show row/column details in status line
set ruler

" Make backspace behave well
set backspace=indent,eol,start

" Highlight search terms
set hlsearch
" Move dynamically to search terms as they are typed
set incsearch 

" Try to avoid all hit-enter prompts
set shortmess=atI

" Don't make a noise when mistakes happen
set visualbell

syntax on

runtime local.vim
