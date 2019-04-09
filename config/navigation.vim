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

nnoremap <A-l> <C-w><C-l>
nnoremap <A-h> <C-w><C-h>
nnoremap <A-j> <C-w><C-j>
nnoremap <A-k> <C-w><C-k>

" Wrap around at beginning or ending of line
set whichwrap+=<,>,h,l,[,]

" Navigating through tabs
nnoremap <F1> gT
nnoremap <F2> gt

" Jumping lands on middle of screen
nnoremap n nzz
nnoremap { {zz
nnoremap } }zz
