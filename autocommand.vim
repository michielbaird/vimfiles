" Python smartindent settings
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with

" Less CSS settings (uses ~/.vimrc/syntax/less.vim)
autocmd BufNewFile,BufRead *.less set filetype=less softtabstop=4 tabstop=4 shiftwidth=4

" HTML indent settings
autocmd BufRead *.html set softtabstop=1 tabstop=1 shiftwidth=1

" CoffeeScript indent settings
autocmd BufRead *.coffee set softtabstop=4 tabstop=4 shiftwidth=4

" CoffeeScript indent settings
autocmd BufRead *.markdown set softtabstop=4 tabstop=4 shiftwidth=4

" Compile CoffeeScript on save (fails silently if coffee not found)
autocmd BufWritePost,FileWritePost *.coffee :silent !coffee -c <afile>

" Compile LessCSS on save (fails silently if lessc not found)
autocmd BufWritePost,FileWritePost *.less :silent !lessc <afile> <afile>:r.css

" Jump to last position when re-opening a file
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Single-space indent in zencoding
let g:user_zen_settings = { 'indentation' : ' ' }

