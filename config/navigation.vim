" Navigation configurations

noremap H ^
noremap L lg_
noremap cL c$
noremap cH c0

inoremap <A-h> <C-o>h
inoremap <A-j> <C-o>j
inoremap <A-k> <C-o>k
inoremap <A-l> <C-o>l

noremap <S-Enter> o<Esc>

noremap <leader>l <C-w><C-l>
noremap <leader>h <C-w><C-h>
noremap <leader>j <C-w><C-j>
noremap <leader>k <C-w><C-k>

" Wrap around at beginning or ending of line
set whichwrap+=<,>,h,l,[,]

noremap <silent> <ScrollWheelUp> :call smooth_scroll#up(&scroll/3, 0, 2)<CR>
noremap <silent> <ScrollWheelDown> :call smooth_scroll#down(&scroll/3, 0, 2)<CR>
