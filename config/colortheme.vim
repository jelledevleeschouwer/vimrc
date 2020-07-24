" Settings regarding the Vim colorscheme
"
set termguicolors     " enable true colors support

" " let ayucolor="light"  " for light version of theme
" let ayucolor="mirage" " for mirage version of theme
" " let ayucolor="dark"   " for dark version of theme
" colorscheme ayu

let base16colorspace=256
colorscheme base16-eighties

nnoremap <silent> <F5> :exec "colorscheme " .
    \ ((g:colors_name == "base16-eighties") ? "base16-solarized-light" : "base16-eighties")<CR>

" Interesting light schemes:
" - base16-mexico-light

if filereadable(expand("~/.vimrc_background"))
  source ~/.vimrc_background
endif

