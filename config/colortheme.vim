" Settings regarding the Vim colorscheme
"
set termguicolors     " enable true colors support

let ayucolor="dark"   " for dark version of theme
colorscheme ayu

nnoremap <silent> <F5> :exec "let ayucolor=" . ((g:ayucolor == "dark") ? "\"mirage\"" : ((g:ayucolor == "mirage") ? "\"light\"" : "\"dark\"")) . " \| colorscheme ayu"<CR>

