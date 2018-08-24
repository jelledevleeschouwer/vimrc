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

let g:airline_theme='tomorrow'

set guifont=Hack\ Regular:h14
let g:Powerline_symbols = 'fancy'
let g:airline_powerline_fonts = 1
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
