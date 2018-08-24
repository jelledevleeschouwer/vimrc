set completeopt=longest,menuone

let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

let g:jedi#completions_command = "<C-N>"

let g:clang_library_path='/usr/lib/llvm-4.0/lib'
let g:clang_user_options = '-I/usr/include'
let g:clang_user_options .= ' -I/usr/local/include'
let g:clang_user_options .= ' -I/usr/lib/gcc/arm-none-eabi/7.2.1/include'
let g:clang_user_options .= ' -I/usr/lib/gcc/x86_64-linux-gnu/6.3.0/include'
let g:clang_user_options .= ' -I/usr/lib/gcc/x86_64-linux-gnu/6/include'"
let g:clang_auto_select = 1
let g:clang_complete_auto = 1
let g:clang_complete_copen = 1
let g:clang_complete_macros = 1
let g:clang_complete_patterns = 1
let g:clang_snippets = 1
let g:clang_snippets_engine = 'ultisnips'
let g:clang_use_library = 1

inoremap <C-j>  <C-n>
inoremap <C-k>  <C-p>

nnoremap <leader>dc :Dox<CR>

let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextDefaultCompletionType = "<c-p>"
let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
let g:SuperTabContextDiscoverDiscovery = ["&omnifunc:<c-x><c-o>"]
autocmd FileType *
      \if &omnifunc != '' |
      \call SuperTabChain(&omnifunc, "<c-p>") |
      \call SuperTabSetDefaultCompletionType("<c-x><c-u>") |
      \endif

let g:syntastic_c_checkers=['clang_check', 'cppcheck', 'gcc', 'make', 'splint']
let g:syntastic_c_config_file='.clang_complete'
