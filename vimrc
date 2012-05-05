" Give up vi compatibility (nocp)
set nocompatible

filetype off
silent! call pathogen#infect()
silent! call pathogen#helptags()
filetype plugin indent on
filetype plugin on

" From http://items.sjbach.com/319/configuring-vim-right

" Hide buffers when not displayed - better for buffer management (hid)
set hidden

" Remember more (hi)
set history=1000

" Provide better options on tab of commands (wmnu, wim)
set wildmenu
set wildmode=list:longest

" Ignore patterns for globs (wig)
set wildignore=*.o,*.lo,*.la,#*#,.*.rej,*.rej,.*~,*~,.#*,*.class,*.pyc

" Ignore case for search ... (ic)
set ignorecase
" ... unless a case is used in the search (scs)
set smartcase

" Show whitespace characters (lcs)
set listchars=tab:>-,trail:·,eol:$

" Set terminal title if not using gvim
set title

" Maintain 5 lines of context around current line (so)
set scrolloff=5
set sidescrolloff=7
set sidescroll=1

" Use a local temporary directory (bdir)
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" Show row/column details in status line (ru)
set ruler

" Make backspace behave well (bs)
set backspace=indent,eol,start

" Highlight search terms (hls)
set hlsearch

" Move dynamically to search terms as they are typed (is)
set incsearch

" Try to avoid all hit-enter prompts (shm)
set shortmess=atI

" Don't make a noise when mistakes happen (vb)
set visualbell

" Turn of bell entirely (noeb)
set t_vb=
set noerrorbells

" Syntax highlighting
syntax on

" Show last command (sc)
set showcmd

" Show matching parenthesis (sm)
set showmatch

" Show me when mode is insert, replace or visual (smd)
set showmode

" Don't reformat on paste (like paste on) (fo)
set formatoptions=1

" Only fold one level deep by default (fdn)
set foldnestmax=1

" Expand tabs to spaces (et)
set expandtab

" Do 4-space indent by default (sts,ts,sw)
set softtabstop=4
set tabstop=4
set shiftwidth=4

" Have mouse enabled by default
set mouse=a

" Map keys
runtime mappings.vim

" Define status line
runtime statusline.vim

" Autocmds on load
runtime autocommand.vim

" Configure plugins
runtime plugins.vim

" Local overrides
runtime local.vim
