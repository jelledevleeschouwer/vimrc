" Layout configurations for Vim

set showtabline=2               " Display tabbar on top
set laststatus=2                " Display status bar
set textwidth=99                " Restrict lines to N columns
set colorcolumn=+1              " Show vertical bar @ Nth columns
set number                      " Show line numbers by default
set nuw=5

" Let + and - increase and decrease the width of panes
if bufwinnr(1)
    map + 4<C-W>>
    map - 4<C-W><
endif

set splitright
set splitbelow

let g:airline_theme='tomorrow'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#syntastic#enabled = 0

set guifont=Monospace:h11
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
