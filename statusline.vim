" Statusline setup
set statusline=%f       "tail of the filename

" Display a warning if fileformat isnt unix
set statusline+=%#warningmsg#
set statusline+=%{&ff!='unix'?'['.&ff.']':''}
set statusline+=%*

" Display a warning if file encoding isnt utf-8
set statusline+=%#warningmsg#
set statusline+=%{(&fenc!='utf-8'&&&fenc!='')?'['.&fenc.']':''}
set statusline+=%*

" Display file flags
set statusline+=%h      "help file flag
set statusline+=%y      "filetype
set statusline+=%r      "read only flag
set statusline+=%m      "modified flag

" Display a warning if &paste is set
set statusline+=%#error#
set statusline+=%{&paste?'[paste]':''}
set statusline+=%*

" Left/right separator
set statusline+=%=

" Syntax error status from Syntastic
set statusline+=%#warningmsg#
set statusline+=%{exists('g:loaded_syntastic_plugin')?SyntasticStatuslineFlag():''}
set statusline+=%*

" Git status from fugitive
set statusline+=%{exists('g:loaded_fugitive')?fugitive#statusline():''}\ "

" Show cursor column
set statusline+=%c,

" Show line/total lines
set statusline+=%l/%L

" Show percent through files
set statusline+=\ %P

" Always show status line (ls)
set laststatus=2
