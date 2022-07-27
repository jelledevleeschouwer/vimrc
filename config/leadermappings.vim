" All leader mappings

noremap <cr> i<cr><esc>
noremap <Leader><space> f<space>w

" Quick vimrc editing <L>ve and reloading <L>vr
noremap <Leader>ve :edit $HOME/.vimrc<CR>
noremap <Leader>vr :source $HOME/.vimrc<CR>

" Toggle relative line numbers on <ctrl>t
noremap <leader>r :set invrelativenumber<cr>

" Run ctags when pressing <leader>ct
noremap <leader>ct :!~/.vim/scripts/tags.sh tags COMPILED_SOURCE=1<cr><cr>

" Substitute all occurances of word under cursor
noremap <leader>s :%s/\<<C-r><C-w>\>/

" Comment #if (Requires matchit plugin)
nmap <Leader>clf v<Leader>%k$<Leader>cs
nmap <Leader>cif v<Leader>g%<Leader>cs<Leader>g%
nmap <Leader>cef v<Leader>%<Leader>cs

" FZF
nnoremap <leader>f :Files<CR>
nnoremap <leader>F :GFiles<CR>
nnoremap <silent> <Leader>ag :Ag<CR>
vnoremap <Leader>ag y:Ag <C-R>=escape(@",'/\\(\)')<CR><CR>

" Clangd
nnoremap <leader>h :CocCommand clangd.switchSourceHeader<CR>
nnoremap <leader>s :CocCommand clangd.switchSourceHeader<CR>

" Shortcuts
noremap <F8> :!make -j8<CR>
noremap <F7> :!make -j8 clean all<CR>
noremap <F6> :!make menuconfig<CR>

