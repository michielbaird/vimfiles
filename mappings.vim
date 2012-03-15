" Map semicolon to start command-line mode just like colon
nmap ; :
vmap ; :

" Use comma as <leader> key
let mapleader = ","

" Map double-leader to exit insert mode
imap <Leader><Leader> <Esc>

" Fix visual paste to not overwrite default register with deleted text
vnoremap p "_dP

" Map single-char deletes to null register instead of overwriting last yank
noremap x "_x

" Map Q to format selection instead of ex-mode
noremap Q gq

" Make Y consistent with C and D by yanking to end
nnoremap Y y$

" Make down/up behave as expected with lines of different length
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

" Map Enter to break line and insert text
nnoremap <CR> i<CR><Esc>|

" Map key to toggle search highlighting
nmap <silent> <leader>n :silent :set hlsearch!<CR>

" Map key to toggle showing whitespace characters
nmap <silent> <leader>s :set nolist!<CR>

" Map key to toggle line numbers
nmap <silent> <leader># :silent :set number!<CR>

" Map keys to scroll viewport and take cursor with it
nnoremap <C-e> 3<C-e>3j
nnoremap <C-y> 3<C-y>3k

" Make insert-mode key to clear highlight and redraw
inoremap <C-l> <C-o>:noh<CR><C-o>:redraw<CR>

" Map normal-mode key to clear highlight and redraw
nnoremap \ :noh<CR>:redraw<CR>

" Map key to start NERDTree
nnoremap <Leader>d :NERDTreeToggle<CR>

" Map key to start bufexplorer
nnoremap <leader>x :BufExplorer<cr>

" Map key to do CommandT TextMate-style finder
nnoremap <leader>t :CommandT<CR>

" Map key to do CommandT buffer finder
nnoremap <leader>b :CommandTBuffer<CR>

" Map key to use Gundo
nnoremap <F4> :GundoToggle<CR>

" Map keys for quick window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Map arrow keys for quick window navigation
map <M-Left> <C-w>h
map <M-Down> <C-w>j
map <M-Up> <C-w>k
map <M-Right> <C-w>l

" Map key to change tabs
nmap <Tab> gt
nmap <S-Tab> gT

" Map keys to quick indent like textmate
nmap <M-[> <<
nmap <M-]> >>
vmap <M-[> <gv
vmap <M-]> >gv

" Map key for Session Save
nmap SS <ESC>:mksession! ~/.vim/session.vim<CR>
" Map key for Session Save & Quit
nmap SQ <ESC>:mksession! ~/.vim/session.vim<CR>:wqa<CR>
" Map key for Session Restore
nmap SR <ESC>:source ~/.vim/session.vim<CR>

" Map key to open URL under cursor in chrome
nnoremap <leader>w :silent !google-chrome <C-R>=escape("<C-R><C-F>", "#?&;\|%")<CR><CR>

" :call Colemak() to swap keys for Colemak convenience
function! Colemak()
  " Don't use e in nerdtree, need it for lines upward Colemak
  let g:NERDTreeMapOpenExpl = "x"

  " Colemak swap j with n and k with e
  noremap j n
  noremap n j
  noremap k e
  noremap e k
  noremap J N
  noremap N J
  noremap K E
  noremap E K
endfunction

