if !exists("autocommands_loaded")
  let autocommands_loaded = 1

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

" Set Apache indentation
autocmd FileType apache setlocal softtabstop=4 tabstop=4 shiftwidth=4 expandtab

" Set CoffeeScript indentation
autocmd FileType coffee setlocal softtabstop=4 tabstop=4 shiftwidth=4 expandtab

" Set HTML indentation
autocmd FileType html setlocal softtabstop=1 tabstop=1 shiftwidth=1 expandtab |let syntastic_quiet_warnings=1

" Set LessCSS indentation (bundle/vim-less)
autocmd FileType less setlocal softtabstop=4 tabstop=4 shiftwidth=4 expandtab

" Set Markdown indentation
autocmd FileType markdown setlocal softtabstop=4 tabstop=4 shiftwidth=4 expandtab

" Python smartindent settings
autocmd FileType python setlocal smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with softtabstop=4 tabstop=4 shiftwidth=4 expandtab

" Set Ruby indentation
autocmd FileType ruby setlocal softtabstop=2 tabstop=2 shiftwidth=2 expandtab

" Set Shell indentation
autocmd FileType sh setlocal softtabstop=4 tabstop=4 shiftwidth=4 expandtab

" Set Vim indentation
autocmd FileType vim setlocal softtabstop=2 tabstop=2 shiftwidth=2 expandtab

" Set XML indentation
autocmd FileType xml setlocal softtabstop=2 tabstop=2 shiftwidth=2 expandtab

" Compile CoffeeScript on save (fails silently if coffee not found)
autocmd BufWritePost,FileWritePost *.coffee :silent !coffee -c <afile>

" Compile IcedCoffeeScript on save, places runtime on window object
autocmd BufWritePost,FileWritePost *.iced :silent !iced -I window -c <afile>

" Compile LessCSS on save (fails silently if lessc not found)
autocmd BufWritePost,FileWritePost *.less :silent !lessc <afile> <afile>:r.css

endif

" vim:sts=0:ts=2:sw=2
