" All leader mappings

" Quick vimrc editing <L>ve and reloading <L>vr
noremap <Leader>ve :edit $HOME/.vimrc<CR>
noremap <Leader>vr :source $HOME/.vimrc<CR>

" Toggle relative line numbers on <ctrl>t
noremap <leader>r :set invrelativenumber<cr>

" Run ctags when pressing <leader>ct
noremap <leader>ct :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q --extra=+f .<cr><cr>

" Substitute all occurances of word under cursor
noremap <leader>s :%s/\<<C-r><C-w>\>/

" Re-indent
noremap <F7> gg=G

" Comment #if (Requires matchit plugin)
nmap <Leader>clf v<Leader>%k$<Leader>cs
nmap <Leader>cif v<Leader>g%<Leader>cs<Leader>g%
nmap <Leader>cef v<Leader>%<Leader>cs
