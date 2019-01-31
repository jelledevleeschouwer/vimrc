" General configurations for Vim

set nocompatible                " Enable super cool features of Vi IMproved

" ===========
"  RENDERING
" ===========
syntax on                       " Enable syntax highlighting
set lazyredraw                  " Don't update while executing macro's
set ttyfast                     " Faster redraws
set cursorline                  " Highlight cursor line
set showcmd                     " Show commands being typed
set scrolloff=7                 " Lines below/above cursor when scrolling
set showmatch                   " Highlight matching braces
set matchtime=2                 " Show for 0.2 seconds
set title                       " Show window title
set hidden                      " Allow hidden buffers

" =============
"  TABS/SPACES
" =============
set autoindent                  " Enable auto-indentation
set tabstop=4                   " Tab is 4 spaces
set softtabstop=4               " Backspace
set shiftwidth=4                " Indentation is also 4 spaces
set expandtab                   " Expand tab to spaces
set smarttab                    " Tab to 2^n
set shiftround                  " Smart tabs
set cinkeys-=0#                 " Dont't force # indentation
set cino+=(0                    " Break line to first bracket
set backspace=indent,eol,start  " Smart backspace
set linebreak                   " Don't cut words on wrap
set wrap!                       " Actually, do not wrap at all
