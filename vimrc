" Give up vi compatibility (nocp)
set nocompatible

filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin indent on

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

" Turn of bell entirely
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

" Don't format on paste (like paste on) (fo)
set formatoptions=1

" Fold based on indent
set foldmethod=indent

" Deepest fold is 3 level
set foldnestmax=3

" Don't fold by default
set nofoldenable

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
