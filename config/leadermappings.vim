" All leader mappings

" Quick vimrc editing <L>ve and reloading <L>vr
noremap <Leader>ve :edit $HOME/.vimrc<CR>
noremap <Leader>vr :source $HOME/.vimrc<CR>

" Toggle relative line numbers on <ctrl>t
noremap <leader>r :set invrelativenumber<cr>

" Run ctags when pressing <leader>ct
noremap <leader>ct :!ctags -R<cr>

" Jump to tag under cursor
noremap <leader>j <c-]>
noremap <leader>b <c-T>
noremap <leader>n :tnext<cr>
noremap <leader>n :tprevious<cr>
