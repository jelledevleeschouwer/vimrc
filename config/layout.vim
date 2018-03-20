" Layout configurations for Vim

set showtabline=2               " Display tabbar on top
set laststatus=2                " Display status bar
set textwidth=81                " Restrict lines to N columns
set colorcolumn=+1              " Show vertical bar @ Nth columns
set number                      " Show line numbers by default

" Let + and - increase and decrease the width of panes
if bufwinnr(1)
    map + <C-W>>
    map - <C-W><
endif

set splitright
set splitbelow
