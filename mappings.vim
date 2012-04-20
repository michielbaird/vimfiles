" Map semicolon to start command-line mode just like colon
nnoremap ; :
vnoremap ; :

" Map apostrophe to repeate f/F/t/T since we took semicolon
nnoremap ' ;

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
" inoremap <Down> <C-o>g<Down>
" inoremap <Up> <C-o>g<Up>

" Map return to break line after character
nnoremap <CR> a<CR><Esc>

" Map key to toggle search highlighting
nmap <silent> <leader>h :silent :set hlsearch!<CR>

" Map key to toggle showing whitespace characters
nmap <silent> <leader>s :set nolist!<CR>

" Map key to toggle line numbers
nmap <silent> <leader># :silent :set number!<CR>

" Map keys to scroll viewport and take cursor with it
nnoremap <C-e> 3<C-e>3<Down>
nnoremap <C-y> 3<C-y>3<Up>

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
nnoremap <leader>f :CommandTBuffer<CR>

" Map key to use Gundo
nnoremap <F4> :GundoToggle<CR>

" Map key to replace word under cursor
nnoremap <leader>e :%s/\<<C-r><C-w>\>//gcI<Left><Left><Left><Left>
" Map key to replace yanked text in selection
vnoremap <leader>e :s/\<<C-r>"\>//gcI<Left><Left><Left><Left>

" Toggle relative numbers
function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc
nnoremap <Leader>n :call NumberToggle()<CR>
autocmd FocusLost * :set number
autocmd FocusGained * :set relativenumber
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

" Map keys for quick window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Map arrow keys for quick window navigation
map <M-Left> <C-w><Left>
map <M-Down> <C-w><Down>
map <M-Up> <C-w><Up>
map <M-Right> <C-w><Right>

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

" Go to defn of tag under the cursor, forcing noignorecase
fun! MatchCaseTag()
    let ignorecase = &ignorecase
    set noignorecase
    try
        execute 'tjump ' . expand('<cword>')
    finally
       let &ignorecase = ignorecase
    endtry
endfun
nnoremap <silent> <C-]> :call MatchCaseTag()<CR>
nnoremap <silent> <leader>c :!ctags -R . &<CR>

" Map key to make vim convenient on Colemak (set lmap)
nmap <leader>C :set langmap=jekn;eknj,JEKN;EKNJ<CR>
nmap <leader>Q :set langmap=<CR>

" Map auto complete
inoremap <Nul> <C-x><C-o>
