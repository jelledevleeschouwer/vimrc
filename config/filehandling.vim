" Configuration for how files are handled on opening and closing

" Remove trailing whitespaces on save
match ErrorMsg '\s\+$'
autocmd BufWritePre * :%s/\s\+$//e
