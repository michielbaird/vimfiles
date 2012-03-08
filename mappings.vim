" Map semicolon to start command-line mode just like colon
nmap ; :
vmap ; :

" Use comma as <leader> key
let mapleader = ","

"Fix visual paste to not overwrite default register with deleted text
vnoremap p "_dP

"Map single-char deletes to null register instead of overwriting last yank
noremap x "_x

" Map Q to format selection instead of ex-mode
noremap Q gq

" Make Y consistent with C and D by yanking to end
nnoremap Y y$

" Make down/up behave as expected with lines of different length
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

" Map key to toggle search highlighting
nmap <silent> <leader>n :silent :set hlsearch!<CR>

" Map key to toggle showing whitespace characters
nmap <silent> <leader>s :set nolist!<CR>

" Map key to toggle line numbers
nmap <silent> <leader># :silent :set number!<CR>

" Map keys to scroll the viewport faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" Key for NERDTree
silent! nmap <silent> <Leader>d :NERDTreeToggle<CR>

" Make <c-l> to clear the highlight as well as redraw
nnoremap <C-L> :noh<CR><C-L>
inoremap <C-L> <C-O>:noh<CR>

" Map ,b to start bufexplorer
nnoremap <leader>b :BufExplorer<cr>

" Map ,t to do CommandT TextMate-style finder
nnoremap <leader>t :CommandT<CR>

" Map F4 to use Gundo
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

" Map meta-[] to quick indent like textmate
nmap <M-[> <<
nmap <M-]> >>
vmap <M-[> <gv
vmap <M-]> >gv
