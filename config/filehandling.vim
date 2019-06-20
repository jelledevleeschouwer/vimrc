" Configuration for how files are handled on opening and closing

fun! <SID>SetupTrailingWhitespaces()
    let curline = line('.')
    let b:insert_top = curline
    let b:insert_bottom = curline
endfun

fun! <SID>UpdateTrailingWhitespace()
    let curline = line('.')
    if b:insert_top > curline
        let b:insert_top = curline
    elseif b:insert_bottom < curline
        let b:insert_bottom = curline
    endif
endfun

fun! <SID>StripTrailingWhitespaces()
    let original_cursor = getpos('.')
    exe b:insert_top ',' b:insert_bottom 's/\s\+$//e'
    call setpos('.', original_cursor)
endfun

autocmd InsertEnter * :call <SID>SetupTrailingWhitespaces()
autocmd InsertLeave * :call <SID>StripTrailingWhitespaces()
autocmd CursorMovedI * :call <SID>UpdateTrailingWhitespace()
