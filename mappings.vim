" Jump to mark
nnoremap ' `
nnoremap ` '

" Don't require shift to start ex mode
nmap ; :

" Use comma as <leader> key
let mapleader = ","

" Key to toggle search highlighting
nmap <silent> <leader>n :silent :set hlsearch!<CR>

" Key to toggle showing whitespace characters
nmap <silent> <leader>s :set nolist!<CR>

" Key to toggle line numbers
nmap <silent> <leader># :silent :set number!<CR>

" Scroll the viewport faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" Make down/up behave as expected with lines of different length
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

" Key for NERDTree
silent! nmap <silent> <Leader>p :NERDTreeToggle<CR>

" Make <c-l> clear the highlight as well as redraw
nnoremap <C-L> :nohls<CR><C-L>
inoremap <C-L> <C-O>:nohls<CR>

" Key mapping for bufexplorer
nnoremap <leader>b :BufExplorer<cr>

" Key mapping for CommandT TextMate-style finder
nnoremap <leader>t :CommandT<CR>

" Map Q to something useful (format selection)
noremap Q gq

" Make Y consistent with C and D (yank to end)
nnoremap Y y$

" Key mapping for Gundo
nnoremap <F4> :GundoToggle<CR>

" Key mapping for window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Key mapping for saving file
nmap <C-s> :w<CR>

" Key mapping for tab navigation
nmap <Tab> gt
nmap <S-Tab> gT

" Key mapping for textmate-like indentation
nmap <D-[> <<
nmap <D-]> >>
vmap <D-[> <gv
vmap <D-]> >gv
