" Jump to last cursor position when opening a file
" Dont do it when writing a commit log entry
autocmd BufReadPost * call SetCursorPosition()
function! SetCursorPosition()
    if &filetype !~ 'commit\c'
        if line("'\"") > 0 && line("'\"") <= line("$")
            exe "normal! g`\""
            normal! zz
        endif
    end
endfunction

" Strip trailing whitespace on save
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" Python smartindent settings
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with

" Set LessCSS indentation (bundle/vim-less)
autocmd BufNewFile,BufRead *.less set filetype=less softtabstop=4 tabstop=4 shiftwidth=4

" Set HTML indentation
autocmd BufRead *.html set softtabstop=1 tabstop=1 shiftwidth=1

" Set CoffeeScript indentation
autocmd BufRead *.coffee set softtabstop=4 tabstop=4 shiftwidth=4

" Set Markdown indentation
autocmd BufRead *.markdown set softtabstop=4 tabstop=4 shiftwidth=4

" Compile CoffeeScript on save (fails silently if coffee not found)
autocmd BufWritePost,FileWritePost *.coffee :silent !coffee -c <afile>

" Compile LessCSS on save (fails silently if lessc not found)
autocmd BufWritePost,FileWritePost *.less :silent !lessc <afile> <afile>:r.css

" Start NERDTree for vim with no args
autocmd vimenter * if !argc() | NERDTree | endif

