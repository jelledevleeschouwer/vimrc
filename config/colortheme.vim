" Settings regarding the Vim colorscheme

set termguicolors
let base16colorspace=256
colorscheme base16-eighties

nnoremap <silent> <F5> :exec "colorscheme " .
    \ ((g:colors_name == "base16-eighties") ? "base16-mexico-light" : "base16-eighties")<CR>
