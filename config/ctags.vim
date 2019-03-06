" ctags configuration

set tags=./tags,tags,~/.vim/tags;

" Follow tag on double-click
nnoremap <2-LeftMouse> :exe "tag ". expand("<cword>")<CR>
set mouse=a

nnoremap ,s <Esc>:exe "tag ". expand("%:t:r").".c"<CR>
nnoremap ,S <Esc>:exe "vertical ptag ". expand("%:t:r").".c"<CR>
" nnoremap ,h <Esc>:exe "tag ". expand("%:t:r").".h"<CR>
" nnoremap ,H <Esc>:exe "vertical ptag ". expand("%:t:r").".h"<CR>
