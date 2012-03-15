colorscheme vividchalk

set number
set guioptions-=T

" Map key to add lines from normal mode
nnoremap <S-CR> O<Esc>
nnoremap <C-CR> o<Esc>

" Map key for quick save from each mode
nmap <C-s> :w<CR>
imap <C-s> <ESC>:w<CR>
vmap <C-s> <ESC>:w<CR>

runtime glocal.vim
