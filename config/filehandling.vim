" Configuration for how files are handled on opening and closing

function! StripTrailingWhitespace()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " do the business:
    %s/\s\+$//e
    " clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

" Remove trailing whitespaces on save
let noStripWhiteSpaceTypes = ['markdown']
" autocmd BufWritePre * if index(noStripWhiteSpaceTypes, &ft) < 0 | call StripTrailingWhitespace() | endif
