Plugin 'terryma/vim-smooth-scroll'

noremap <silent> <ScrollWheelUp> :call smooth_scroll#up(&scroll/3, 0, 2)<CR>
noremap <silent> <ScrollWheelDown> :call smooth_scroll#down(&scroll/3, 0, 2)<CR>

