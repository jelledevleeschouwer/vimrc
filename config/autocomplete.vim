let g:completor_racer_binary = '/home/jelle/.cargo/bin/racer'
let g:completor_clang_binary = '/usr/bin/clang'
let g:completor_python_binary = '/usr/bin/python3.5'
let g:clang_library_path = '/usr/lib/llvm-4.0/lib/'

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>\<cr>" : "\<cr>"

" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
" imap <C-k>     <Plug>(neosnippet_expand_or_jump)
" smap <C-k>     <Plug>(neosnippet_expand_or_jump)
" xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <expr><TAB>
\ neosnippet#expandable_or_jumpable() ?
\    "\<Plug>(neosnippet_expand_or_jump)" :
\ 	  pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

set conceallevel=2
set concealcursor=vin
let g:clang_snippets=1
autocmd BufRead,BufNewFile   *.c let g:clang_snippets_engine='clang_complete'
autocmd BufRead,BufNewFile   *.cpp let g:clang_snippets_engine='clang_complete'

nnoremap <leader>dc :Dox<CR>

let g:syntastic_c_checkers=['clang_check', 'cppcheck', 'gcc', 'make', 'splint']
let g:syntastic_c_config_file='.clang_complete'
